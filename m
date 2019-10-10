Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84145D33BD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 00:04:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cqdv0RqpwHPxjO1P+kzxhl2c3g4Iqa5OIv12Oy+XGiA=; b=YZXJQ8O+G6I1GnVCblVOyZ8KM
	5YezBKuqWIPDSeSihdgCAG2vBwhT9DUaelKSw3P+7VDqyv8GlTCocCgTaFaFQwY7yJFLsDUXtm0ds
	Gzh72lUW7bjnP9WpsQpvlaIefckqVEZSW7DXnflcgqbaC3Hdt0C2cqHr4GJRkpEMb+JCWExTqhmJz
	wgdo8l/+GySyxEFoVPzyemzIBT9Whb/GGY9dNIvAzW8eEKr12uBvEF3q8PO62D1RF7rid4W7ms09B
	CczPN1I+oXrEst+A2cQGm1YHgwZXiVSb/1/3Y/9BbC+RkQCNkkLVKXKMahiWXK+Unidpqc4OExFVn
	a+FUZM46w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIgXZ-0007Id-Tn; Thu, 10 Oct 2019 22:04:09 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIgXS-0007I3-I9
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 22:04:03 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 15:04:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,281,1566889200"; d="scan'208";a="184560498"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.148])
 ([10.7.153.148])
 by orsmga007.jf.intel.com with ESMTP; 10 Oct 2019 15:04:00 -0700
Subject: Re: [PATCH] i2c: aspeed: fix master pending state handling
To: Tao Ren <taoren@fb.com>, Brendan Higgins <brendanhiggins@google.com>,
 Wolfram Sang <wsa@the-dreams.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Joel Stanley <joel@jms.id.au>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Andrew Jeffery <andrew@aj.id.au>,
 Cedric Le Goater <clg@kaod.org>
References: <20191009212034.20325-1-jae.hyun.yoo@linux.intel.com>
 <3ea1c0d5-47f1-bf8c-6b2d-2ea8d3f93471@fb.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <637d4b8b-5113-b07b-f99f-ce66dbe6948c@linux.intel.com>
Date: Thu, 10 Oct 2019 15:04:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <3ea1c0d5-47f1-bf8c-6b2d-2ea8d3f93471@fb.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_150402_643843_252E30C3 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On 10/10/2019 2:20 PM, Tao Ren wrote:
> On 10/9/19 2:20 PM, Jae Hyun Yoo wrote:
[...]
>>   		/*
>>   		 * If a peer master starts a xfer immediately after it queues a
>> -		 * master command, change its state to 'pending' then H/W will
>> -		 * continue the queued master xfer just after completing the
>> -		 * slave mode session.
>> +		 * master command, clear the queued master command and change
>> +		 * its state to 'pending'. To simplify handling of pending
>> +		 * cases, it uses S/W solution instead of H/W command queue
>> +		 * handling.
>>   		 */
>>   		if (unlikely(irq_status & ASPEED_I2CD_INTR_SLAVE_MATCH)) {
>> +			writel(readl(bus->base + ASPEED_I2C_CMD_REG) &
>> +				~ASPEED_I2CD_MASTER_CMDS_MASK,
>> +			       bus->base + ASPEED_I2C_CMD_REG);
> 
> Sorry for the late comments (just noticed this line while testing the patch):
> 
> I assume this line is aimed at stopping the running master commands, but as per
> AST2500 datasheet, it's NOP to write 0 to MASTER_STOP/MASTER_RX/MASTER_TX bits.
> Maybe all we need is writing 1 to MASTER_STOP field?

There could be two pending cases:
1. Master goes to pending before it triggers a command if a slave
    operation is already initiated.
2. Master goes to pending after it triggered a command if a peer
    master immediately sends something just after the master command
    triggering.

Above code is for the latter case. H/W handles the case priority based
so the slave event will be handled first, and then the master command
will be handled when the slave operation is completed. Problem is,
this H/W shares the same buffer for master and slave operations so
it's unreliable. Above code just removes the master command from the
command register to prevent this H/W command handling of pending events.
Instead, it restarts the master command using a call of 
aspeed_i2c_do_start when the slave operation is completed.

Thanks,

Jae

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
