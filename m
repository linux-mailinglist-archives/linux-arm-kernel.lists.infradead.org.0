Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B00EFCCF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 17:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OPqGIF/sDnQ52mWqFaNYxPmJ3uorV7cYMEs7tZl9biY=; b=Zxl47kHU6oTZ20m56WYtpI82vv
	h+WtQIPgBOgdo1jaklbvpjjW0kUYi7GjDvQmXThUvGFL0DT8t7x4QcwV32J7vZgcRkIZ7XKu8htEw
	z2oGpYLNFf3qEr1sGjrpHP5aZ71vc/2kktfFEOWr/rsx2tr8RAmXwCfDrXogZfP15dbkoIf1vJTcc
	4wfjPV1KtP09eFy5yhMQQhC7pkpVn/YcQ5qSEmZi82e0ViU6pB090Uo0fDx+i0Vx/4+eXDt234PiY
	vGW6sA8fHeIQufyYNTp6HwYNF9CFswbNDV6UbgkMDpfnD6txz8bVJinNKnnZjtxwTNLyTzXaB/lVF
	ZvYf5/Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLUdx-00053b-Ah; Tue, 30 Apr 2019 15:26:05 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLUdp-00052h-Gt
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 15:25:59 +0000
Received: from tarshish (unknown [10.0.8.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 9C46B44005B;
 Tue, 30 Apr 2019 18:25:52 +0300 (IDT)
References: <20190430093212.28425-1-alexandre.belloni@bootlin.com>
 <20190430093212.28425-2-alexandre.belloni@bootlin.com>
 <877ebbu3lz.fsf@tarshish> <20190430114702.GD11339@piout.net>
 <875zqvu1l3.fsf@tarshish> <20190430130544.GF11339@piout.net>
User-agent: mu4e 1.0; emacs 26.1
From: Baruch Siach <baruch@tkos.co.il>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 2/4] rtc: digicolor: set range
In-reply-to: <20190430130544.GF11339@piout.net>
Date: Tue, 30 Apr 2019 18:25:52 +0300
Message-ID: <87y33rsef3.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_082557_800592_AD826941 
X-CRM114-Status: GOOD (  23.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-rtc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alexandre,

On Tue, Apr 30 2019, Alexandre Belloni wrote:
> On 30/04/2019 15:20:08+0300, Baruch Siach wrote:
>> On Tue, Apr 30 2019, Alexandre Belloni wrote:
>> > On 30/04/2019 14:36:24+0300, Baruch Siach wrote:
>> >> Hi Alexandre,
>> >>
>> >> On Tue, Apr 30 2019, Alexandre Belloni wrote:
>> >>
>> >> > While the range of REFERENCE + TIME is actually 33 bits, the counter
>> >> > itself (TIME) is a 32-bits seconds counter.
>> >> >
>> >> > Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
>> >> > ---
>> >> >  drivers/rtc/rtc-digicolor.c | 1 +
>> >> >  1 file changed, 1 insertion(+)
>> >> >
>> >> > diff --git a/drivers/rtc/rtc-digicolor.c b/drivers/rtc/rtc-digicolor.c
>> >> > index 5bb14c56bc9a..e6e16aaac254 100644
>> >> > --- a/drivers/rtc/rtc-digicolor.c
>> >> > +++ b/drivers/rtc/rtc-digicolor.c
>> >> > @@ -206,6 +206,7 @@ static int __init dc_rtc_probe(struct platform_device *pdev)
>> >> >  	platform_set_drvdata(pdev, rtc);
>> >> >
>> >> >  	rtc->rtc_dev->ops = &dc_rtc_ops;
>> >> > +	rtc->rtc_dev->range_max = U32_MAX;
>> >>
>> >> Where can I find documentation on the meaning and usage of the range_max
>> >> value? I could not find anything in the kernel source.
>> >
>> > It should be set to the maximum UNIX timestamp the RTC can be set to
>> > while keeping range_min to range_max contiguous.
>> >
>> > In the digicolor case, you could go up to 8589934590 (Wed Mar 16
>> > 12:56:30 UTC 2242) but the driver only writes DC_RTC_REFERENCE and I'm
>> > not sure it can also update DC_RTC_TIME safely.
>> 
>> DC_RTC_TIME resets to zero whenever dc_rtc_write writes CMD_RESET to the
>> DC_RTC_CONTROL register. DC_RTC_REFERENCE keeps the value that
>> dc_rtc_write stores there. So the driver will return values larger than
>> U32_MAX if you happen to cross this point in time between dc_rtc_write
>> and dc_rtc_read. But you can't store a value larger than U32_MAX in
>> DC_RTC_REFERENCE.
>> 
>> Will the core RTC code handle the U32_MAX cross correctly?
>
> Yes, this is ok to return a valid value that is higher than range_max.
> However, at that time, you will not be able to set any alarms anymore as
> the core doesn't allow to set alarms after range_max.
>
> I would think that this is fine because this will happen in 2106 and we
> have a way to offset the time (the whole goal of setting the range)
> using device tree.

That's the sort of documentation that I'm missing. The 'start-year'
property is mentioned in the DT binding documentation. But I don't see
where range_max is documented as a facility for the time offset feature.

Anyway,

Acked-by: Baruch Siach <baruch@tkos.co.il>

Thanks,
baruch

-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
