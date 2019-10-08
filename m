Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F83D0389
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 00:45:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fnmY1PR/fLnxmrffSZedzvqYtXRN1hlS5QsZwxFNsyM=; b=JevblMKGgMSRLcQsS4lgHGee8
	ToOjHrUw20OTNPOi8MWNIzfQcJ5jAog0460uV2A7GcNdvqiwqOBjeHRm7Ju0zeLhHhu2A5TnVBwXj
	Hc0hzv5v1IS6O3Y6Wgw0GrOt7h4aNllwjsYYqy0ZjPaskx9Q4aQPInbbuu/TalNnECpBWyPEWs2kw
	ahEIqhZ8lAMGcmy07TndohFvELHGLLzwCQDH7auj5MD6rSUR2Tegj5GXv3y5zo+Otzt3uvhD8lrP/
	k53lVByN2oqinerQ3w0PP6YIr6yA86Gvl/1VrHl2nmHHQF+FaDv7FJDqSGPLCXZVDPx2vM/5kPMET
	W/o8rZcrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHyEj-0005oS-BB; Tue, 08 Oct 2019 22:45:45 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHyEY-0005nx-CG
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 22:45:39 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 15:45:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,272,1566889200"; d="scan'208";a="187447543"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.148])
 ([10.7.153.148])
 by orsmga008.jf.intel.com with ESMTP; 08 Oct 2019 15:45:33 -0700
Subject: Re: [PATCH 3/5] i2c: aspeed: fix master pending state handling
To: Tao Ren <taoren@fb.com>, Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Joel Stanley <joel@jms.id.au>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Andrew Jeffery <andrew@aj.id.au>
References: <20191007231313.4700-1-jae.hyun.yoo@linux.intel.com>
 <20191007231313.4700-4-jae.hyun.yoo@linux.intel.com>
 <422eea61-7cb9-e471-83fb-3f554ff5e079@fb.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <6f280195-eef7-1fe7-ac42-ad6879ca9838@linux.intel.com>
Date: Tue, 8 Oct 2019 15:45:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <422eea61-7cb9-e471-83fb-3f554ff5e079@fb.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_154537_327694_03C5D5C6 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tao,

On 10/8/2019 3:00 PM, Tao Ren wrote:
> On 10/7/19 4:13 PM, Jae Hyun Yoo wrote:
>> In case of master pending state, it should not trigger the master
>> command because this H/W is sharing the same data buffer for slave
>> and master operations, so this commit fixes the issue with making
>> the master command triggering happen when the state goes to active
>> state.
>>
>> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>> ---
>>   drivers/i2c/busses/i2c-aspeed.c | 9 +++++----
>>   1 file changed, 5 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/i2c/busses/i2c-aspeed.c b/drivers/i2c/busses/i2c-aspeed.c
>> index fa66951b05d0..40f6cf98d32e 100644
>> --- a/drivers/i2c/busses/i2c-aspeed.c
>> +++ b/drivers/i2c/busses/i2c-aspeed.c
>> @@ -336,18 +336,19 @@ static void aspeed_i2c_do_start(struct aspeed_i2c_bus *bus)
>>   	struct i2c_msg *msg = &bus->msgs[bus->msgs_index];
>>   	u8 slave_addr = i2c_8bit_addr_from_msg(msg);
>>   
>> -	bus->master_state = ASPEED_I2C_MASTER_START;
>> -
>>   #if IS_ENABLED(CONFIG_I2C_SLAVE)
>>   	/*
>>   	 * If it's requested in the middle of a slave session, set the master
>>   	 * state to 'pending' then H/W will continue handling this master
>>   	 * command when the bus comes back to the idle state.
>>   	 */
>> -	if (bus->slave_state != ASPEED_I2C_SLAVE_INACTIVE)
>> +	if (bus->slave_state != ASPEED_I2C_SLAVE_INACTIVE) {
>>   		bus->master_state = ASPEED_I2C_MASTER_PENDING;
>> +		return;
>> +	}
>>   #endif /* CONFIG_I2C_SLAVE */
>>   
>> +	bus->master_state = ASPEED_I2C_MASTER_START;
>>   	bus->buf_index = 0;
>>   
>>   	if (msg->flags & I2C_M_RD) {
>> @@ -432,7 +433,7 @@ static u32 aspeed_i2c_master_irq(struct aspeed_i2c_bus *bus, u32 irq_status)
>>   		if (bus->slave_state != ASPEED_I2C_SLAVE_INACTIVE)
>>   			goto out_no_complete;
>>   
>> -		bus->master_state = ASPEED_I2C_MASTER_START;
>> +		aspeed_i2c_do_start(bus);
>>   	}
> 
> Shall we move the restart-master logic from master_irq to bus_irq? The reason being:
> master transaction cannot be restarted when aspeed-i2c is running in slave state and
> receives STOP interrupt, because aspeed_i2c_master_irq won't be called in this case.

Even in that case, master can be restarted properly because slave_irq
will be called first because master is in MASTER_PENDING state, so the
slave_irq handles the STOP interrupt as well, and then master_irq will
be called with SLAVE_INACTIVE state so the aspeed_i2c_do_start can be
called eventually.

Also, this is right point to call the aspeed_i2c_do_start
because master state will be changed to MASTER_START by the
aspeed_i2c_do_start and we have to do remaining handling for the
MASTER_START in the master_irq by falling through after the call.

Thanks,

Jae

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
