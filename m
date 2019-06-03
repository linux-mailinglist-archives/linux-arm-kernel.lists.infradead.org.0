Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7217132EE6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 13:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQ/tcUG1nRZUZVquarGhSBu7fU1OnDYrLFgemqHlo2c=; b=j+i8kRD1jhSwMA
	gxONOajlMiLCh/jt1UFMbNuSlIygizqLvdSq+UZfNmjFK8BFnR1PL2tm1qraeeQ9b7dE33M0mKdMi
	ecMlsu3845iYmwSG2gLKpC5fwua9Ygapfu0zUgjJlt6nSZA5GdaUBiSadsdaS8NGrGWJUtGMF1Fug
	yHaPrQSvziXE4gJVJgjHvsSuMUG4jjS/G2WOWkGuHb9snpEWz0kqenpm7pxzFxvtBfBBSQCsL5PTC
	NoMs02vihBj2t/jn8sL0riT7B5jlUy/W+0N1XibI+GHxaR0CmLMuhdgs+31NDjealjLWqS38tOIUL
	Selm88VCrdJDcOWGMKDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXlPR-0007KN-0p; Mon, 03 Jun 2019 11:45:49 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXlPJ-0007JD-Ii
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 11:45:43 +0000
Received: from [192.168.2.10] ([46.9.252.75])
 by smtp-cloud9.xs4all.net with ESMTPA
 id XlP5hL7kAsDWyXlP8hsryq; Mon, 03 Jun 2019 13:45:31 +0200
Subject: Re: [PATCH] media: stm32-dcmi: fix irq = 0 case
To: Fabien Dessenne <fabien.dessenne@st.com>,
 Hugues Fruchet <hugues.fruchet@st.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Pavel Machek <pavel@denx.de>,
 linux-media@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1559294295-20573-1-git-send-email-fabien.dessenne@st.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <46944972-1f88-ef3b-fef9-8e37753c0ffe@xs4all.nl>
Date: Mon, 3 Jun 2019 13:45:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1559294295-20573-1-git-send-email-fabien.dessenne@st.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfCN0MWjkjUyGzp6RpvMIZ2ZANeW2kYEP03Lpq3iqxfDwME2NkMqcJ+4u8wJA/QHfTb1eUz+uisc7OqX0O7kndwdR0ZVW6uYMPcB/P15b1VaJn538Lf+x
 NpoGEuGPiPtkBx9DsS6X0tLYlnRiI7z09uP0CoCsy8Xjtn42bpslVuei6PSli3eMoap5saASbpiDX6XpET+OFtD9B3RPXBwVdY8s8ZorQPRjKWBS+iFs5tU5
 JcyHlEgjEwFC3lQWFrLx7IKttSJSdQhzLTcFNI4C/GGkE2trkxzNun+9+Ruulo+8qY9ak+/SmKIQ+kgTg7xKgQBhwcWRnLRBWT55TpNhtogX6wNgZDrHA6R+
 DP8O8sDZLy5bkdDBxfik+WTTyrM7PXg/048e9w11h0IqIIlGhif1381FUXcLSGcLziyMd6bFNfwfgVfEUgK16hHn9FgCB4acy5ykhFHypGJ47adWQgK/dE6G
 9TJhkrGyPEBntvMjPZ9BgUNRVSNLdIIqLJzmuyPjIYgbtaRxjKOprgUXnCZ2Mg+Lh4zk3jdL6wiFvQH6IqSYwOZc/HHUQ3Mu+pq0ncGcj1p4oBZbHedZLcz6
 1ZXK7+Aa9y7T7q16w8DCGy61
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_044541_818546_C79E6EDC 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.30 listed in list.dnswl.org]
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

On 5/31/19 11:18 AM, Fabien Dessenne wrote:
> Manage the irq = 0 case, where we shall return an error.
> 
> Fixes: b5b5a27bee58 ("media: stm32-dcmi: return appropriate error codes during probe")
> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
> ---
>  drivers/media/platform/stm32/stm32-dcmi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
> index b9dad0a..d855e9c 100644
> --- a/drivers/media/platform/stm32/stm32-dcmi.c
> +++ b/drivers/media/platform/stm32/stm32-dcmi.c
> @@ -1702,7 +1702,7 @@ static int dcmi_probe(struct platform_device *pdev)
>  	if (irq <= 0) {

Shouldn't this be 'irq < 0' instead of '<=' ?

AFAICT irq == 0 can be a valid irq and isn't an error.

Regards,

	Hans

>  		if (irq != -EPROBE_DEFER)
>  			dev_err(&pdev->dev, "Could not get irq\n");
> -		return irq;
> +		return irq ? irq : -ENXIO;
>  	}
>  
>  	dcmi->res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
