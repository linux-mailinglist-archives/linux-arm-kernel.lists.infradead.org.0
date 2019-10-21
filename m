Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0235DDF7CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 23:57:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K9By5SYYIKeqFo1/XwqjEG+2TTWDTAPN5q34d3SifVo=; b=T2wyL4zn0BNpM09DMvqQB7Jy/
	33E049gCSDOJAN+KNxT20cTW+MNtOp82m/4lvu4rWAt9CQFd+55VQJq+pWARK5K+cguGtv4hqi/pX
	ybRcRcdTrGPpP4XLr/INj/QJkxRdN5C7OItkPyxSc3aCONO1+Y9Xr8dfhTL8+pNWbpRHtOf8SDXoI
	QqLH/23+Z9cwUu9Z86Zf3CX5obw7feK009eqqJ5Jfr6xoQgHFkQrJBZM2Og349TtCf12wlNhGcFu4
	h7KLE+T0uyZMzbvLjGTkz0cXksDVNQLReZBJAHz4E3GaJoEoRkqdCthynLZrM+K40DW6JpyyDeKOQ
	nD1DOYI8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMfgX-0006Ih-Qc; Mon, 21 Oct 2019 21:57:53 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMfgP-0006Hy-He
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 21:57:46 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 14:57:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,325,1566889200"; d="scan'208";a="209472729"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.143])
 ([10.7.153.143])
 by orsmga002.jf.intel.com with ESMTP; 21 Oct 2019 14:57:43 -0700
Subject: Re: [PATCH i2c-next 1/2] dt-bindings: i2c: aspeed: add hardware
 timeout support
To: Peter Rosin <peda@axentia.se>, Brendan Higgins
 <brendanhiggins@google.com>, Wolfram Sang <wsa@the-dreams.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Joel Stanley <joel@jms.id.au>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Andrew Jeffery <andrew@aj.id.au>,
 Tao Ren <taoren@fb.com>, Cedric Le Goater <clg@kaod.org>
References: <20191021202414.17484-1-jae.hyun.yoo@linux.intel.com>
 <20191021202414.17484-2-jae.hyun.yoo@linux.intel.com>
 <0a629f7b-b829-c332-27d8-dc825205ff72@axentia.se>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <7abf933b-cb18-10af-9c1b-163ec65ffae5@linux.intel.com>
Date: Mon, 21 Oct 2019 14:57:43 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <0a629f7b-b829-c332-27d8-dc825205ff72@axentia.se>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_145745_624149_F47A9C2F 
X-CRM114-Status: GOOD (  24.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

On 10/21/2019 2:05 PM, Peter Rosin wrote:
> On 2019-10-21 22:24, Jae Hyun Yoo wrote:
>> Append a binding to support hardware timeout feature.
>>
>> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>> ---
>>   Documentation/devicetree/bindings/i2c/i2c-aspeed.txt | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt b/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
>> index b47f6ccb196a..133bfedf4cdd 100644
>> --- a/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
>> +++ b/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
>> @@ -17,6 +17,8 @@ Optional Properties:
>>   - bus-frequency	: frequency of the bus clock in Hz defaults to 100 kHz when not
>>   		  specified
>>   - multi-master	: states that there is another master active on this bus.
>> +- aspeed,hw-timeout-ms	: Hardware timeout in milliseconds. If it's not
>> +			  specified, the H/W timeout feature will be disabled.
>>   
>>   Example:
>>   
>>
> 
> Some SMBus clients support a smbus-timeout-disable binding for disabling
> timeouts like this, for cases where the I2C adapter in question on occasion
> is unable to keep the pace. Adding that property thus avoids undesired
> timeouts when the client is SMBus conformant without it. Your new binding
> is the reverse situation, where you want to add a timeout where one is
> otherwise missing.
> 
> Anyway, since I2C does not have a specified lowest possible frequency, this
> feels like something that is more in the SMBus arena. Should the property
> perhaps be a generic property named smbus-timeout-ms, or something like
> that?

Well, I tried upstreaming of the generic timeout property a year ago but
I agreed that the generic bus timeout property can be set by an ioctl
command so it didn't need to be added into device tree at that time. Not
sure if any need has come recently but I haven't heard that. This driver
still uses the generic timeout property which is provided by i2c core
for handling command timeouts, and it's out of scope from this patch
series.

> If the above is not wanted or appropriate, then I would personally prefer
> aspeed,bus-timeout-ms over aspeed,hw-timeout-ms. To me, hw-timeout-ms sounds
> like a (more serious) timeout between the CPU and the I2C peripheral unit
> or something like that. But I don't care deeply...

Changes I submitted in this patch set is for a different purpose which
is very Aspeed H/W specific, and actually it's a more serious timeout
setting indeed. If this H/W is used in multi-master environment, it
could meet a H/W hang that freezes itself in slave mode and it can't
escape from the state. To resolve the specific case, this H/W provides
self-recovery feature which monitors abnormal state of SDA, SCL and its
H/W state machine using the timeout setting to determine the escape
condition.

Generally, this H/W timeout value is smaller than the generic bus
timeout value (I'm using 300ms for the H/W timeout while I'm using 1
second for the generic bus timeout) so I think it should be
distinguished from the generic bus timeout.

Thanks,

Jae

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
