Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F363309F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 15:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dXKqIBXVmxP8kEpSuM9SVVSHhFDGFIv7otuqn61rcuk=; b=CLxPxp7RgGkcN+
	PjFfRmuYNycTaimMIla32njaS/830x0fj1186z8cZ3a+Fs0tpJ0DZhngyyqcXnvxpjfnNlf3t+aer
	9YoHxtRpFobf3LyHDqba3xCcl9xMVr1/lSVucgx5/Boz+qmedIPEdwSB0mFxgNpxYyj2mDe33q92Y
	WIuNbl+KzlRUt8amDFep2wipeQuUt36uVtQwbSthZ4JQcByWDJuRKl/R4Y39BQzCpwDWWgHEnq39R
	mJtfI09srfd185zN9p8kZBU5q7nQER+OtQ2cYXVpEJmGDlbe4OYZ7gt8ShYYdjL8vWeQB3C3PTAjV
	rJ79jSUsMb2EwYj3vvhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXmhd-0008V5-9a; Mon, 03 Jun 2019 13:08:41 +0000
Received: from lb2-smtp-cloud9.xs4all.net ([194.109.24.26])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXmhI-0008Sx-0V
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 13:08:21 +0000
Received: from [192.168.2.10] ([46.9.252.75])
 by smtp-cloud9.xs4all.net with ESMTPA
 id Xmh9hLfvDsDWyXmhChtE4r; Mon, 03 Jun 2019 15:08:15 +0200
Subject: Re: [PATCH] media: stm32-dcmi: fix irq = 0 case
To: Fabien DESSENNE <fabien.dessenne@st.com>,
 Hugues FRUCHET <hugues.fruchet@st.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>, Pavel Machek <pavel@denx.de>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <1559294295-20573-1-git-send-email-fabien.dessenne@st.com>
 <46944972-1f88-ef3b-fef9-8e37753c0ffe@xs4all.nl>
 <dd4ca76b-9f93-5ddc-e878-25b9905e0cd2@st.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <aa40a88d-9995-8cfc-682a-3c33445199e9@xs4all.nl>
Date: Mon, 3 Jun 2019 15:08:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <dd4ca76b-9f93-5ddc-e878-25b9905e0cd2@st.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfHHih37cLk8I5B7UWMg29h9+t3yjqMdqAeL1cmDBDScWB9AhtcP4c+T5U0qPVbKT00KNHg2pVihXau+13MBWQo78rkablFd9Va3TEOo3lq/b7D8ShVTF
 1dk4Y9ghkLFLuzutb6p9jfN9EHM64jfRmG2XDMxMoR0sERAPgWcj2QJPAwcYV1fumSqr2UC31Vq4upPPihDg+OqFHyln4/equHH8gk3y/Ujgi0qK7loUwmEF
 7asWsoHB8XPXfs6gm4n3EHg183Q59pXsQS+QUtZnschVSFFBaKXZz/ckdMk2s816Ue1bmf8tO88FyypzoXOnmb8ikzZXWbHSxEP0dEYoKvTBrqoK91jFyYUA
 w9FYP35FitxsSSem7++x3S1uZT9HudDm6CP3T8KhEQ4rt1JSiWwe6X0Z3FdItW1VjYaEWJE+9PRORGpuPElzXCj5jgTkgit1dZENMV+fPrgi4bxrg+7mDUjv
 Y/x1bkC2MF2lT4Vs9vgiFP45BgKgv/boSIWysJfkOzTTc4tuZuXebciu/EP7Nay9quMrDHLVMdCQVaVqykwwNBqJy4lumr8x9l3mUwE1ROoI0XSoPBCPuGKO
 SAbecdcZ05HgiEQau1DOk57w
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_060820_212100_0D4EB81D 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/3/19 3:03 PM, Fabien DESSENNE wrote:
> Hi Hans
> 
> 
> "platform_get_irq() = 0" shall be considered as an error. See these 
> discussions:
> https://patchwork.kernel.org/patch/10006651/
> https://yarchive.net/comp/linux/zero.html

Hmm, then many media drivers are wrong since most check for < 0.

In any case, I'll pick up this patch whenever I make a next pull request
for fixes like this.

Regards,

	Hans

> 
> BR
> 
> Fabien
> 
> On 03/06/2019 1:45 PM, Hans Verkuil wrote:
>> On 5/31/19 11:18 AM, Fabien Dessenne wrote:
>>> Manage the irq = 0 case, where we shall return an error.
>>>
>>> Fixes: b5b5a27bee58 ("media: stm32-dcmi: return appropriate error codes during probe")
>>> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
>>> ---
>>>   drivers/media/platform/stm32/stm32-dcmi.c | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
>>> index b9dad0a..d855e9c 100644
>>> --- a/drivers/media/platform/stm32/stm32-dcmi.c
>>> +++ b/drivers/media/platform/stm32/stm32-dcmi.c
>>> @@ -1702,7 +1702,7 @@ static int dcmi_probe(struct platform_device *pdev)
>>>   	if (irq <= 0) {
>> Shouldn't this be 'irq < 0' instead of '<=' ?
>>
>> AFAICT irq == 0 can be a valid irq and isn't an error.
>>
>> Regards,
>>
>> 	Hans
>>
>>>   		if (irq != -EPROBE_DEFER)
>>>   			dev_err(&pdev->dev, "Could not get irq\n");
>>> -		return irq;
>>> +		return irq ? irq : -ENXIO;
>>>   	}
>>>   
>>>   	dcmi->res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>> >


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
