Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F6312077
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 18:44:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHM2d1vJNe8rBPSzpysKgxZCyPTPRh2scZ7q5sOIwRM=; b=guyFqdGV8eIVUM
	u+myKqu4DDzB6r25fivubKb+bpoBIdGtnjB/ZUHDXN5/BRS8GcD6aYaPsL744ryvtM2lh0UN559lt
	wEuHUIa5JpCtSDm528r5wvtkKDXOl6W0llmdUBYufo+HE9dhGPiupbEAaKMbOYSu7ngqR8KldLQD0
	2449cDZ/Mh4ZtmWsxEHzfZEso3vpmeC0w3J+z/9O5pM72Pc+P7w86a+W6wHVRLIMgi6aMp6DbYmVd
	7Zh/YqWYu/0huEXBSKzyLMOXy2kr/R+5SwOM7OW/u9IHY5s3z9KX6hN08pTjQS7BnAfaJiuu/Ll/e
	PLtfxAw06/SjMrReGxTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMEog-0007vs-L6; Thu, 02 May 2019 16:44:14 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMEoa-0007vU-4I
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 16:44:09 +0000
Received: by mail-qk1-x743.google.com with SMTP id b7so1861793qkl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 09:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f4ibFJXvRn07AkRB9EEIU1REKuJjQVK60zzVIafbvUE=;
 b=JRr0iAoI+MM91RQu5rsmPJAedIzsKoYF4oA8RlnAKMvuuZ/R7kd7D6jWop+wCSo/IH
 sjZx/RTzm7bEAImU5BPlvdZbDYOxetIu5lUNjH5SUzMUueOLgxdNIsotblxkSYsuH8ei
 4yHzKCAOujHbiE3xq6PVq6FXLockojf1RGomAuLlXggsW53AGTifnYmEtSoW8KmW7JdL
 LLsjuiCApF6aWjynaZsPnWsROBXNZ+qRnDz5+PC9NqiBLGHLoKhOqQrnPeuKY1HCRv7h
 CnH3bK+ums2L6nLw1ajGrG0FjkZTT0C4HhS4ulTaF76wO/tyj+pBabQ0TdHsK9mP+VLq
 jFHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f4ibFJXvRn07AkRB9EEIU1REKuJjQVK60zzVIafbvUE=;
 b=Q5Rql0R+spMSX+xpl3DcPRpeML5esguU0R+joU4fUnnUs/jBxFgAYzuIaSaz39UcKi
 fRFmHcd7VRIbXYltyatyJl6rVwS9f14TSBZmFPf6n25kQJ3W2qJVmZIiBcWFRrEAC3cs
 wNyE12K9biqfeNVDjfdtKFtLUiSWQSqhcXBtmSRoHPRHLDgTuzBGMQePHUSdllnDH0k6
 tBn9pQ6Xjw/jzTMOxQnjszJ0cvnbg/sUfzpX4+r0ya61QP4XF9SuvfsLPPKeT2smC2on
 6We4BfwZmxpVn/vEsxMxOBUmS6cPdJdpbJTEE/Q7+fb53AOM9mZlMGV4ZLR02Th0H3gS
 zrww==
X-Gm-Message-State: APjAAAXkCkytxp2+0BTK7gf784BUUvo2R1nQqRDRQ+VKhNtZ7adxwQA9
 PUF4SbDNHyIhN4NxxW55ZhCX4HeKqZytRNNcyCdX2w==
X-Google-Smtp-Source: APXvYqxYG/ata7SfkJHe93kUfj6sEEF1lUSMwcEiOOO+swPuj+74SX/aaBFPAxBXFOQaVg003EcEY/DtPNywIAO+hBk=
X-Received: by 2002:a37:508a:: with SMTP id e132mr3689247qkb.281.1556815446374; 
 Thu, 02 May 2019 09:44:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190502110247.681-1-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20190502110247.681-1-manivannan.sadhasivam@linaro.org>
From: Amit Kucheria <amit.kucheria@linaro.org>
Date: Thu, 2 May 2019 22:13:55 +0530
Message-ID: <CAP245DUZ9PWoCWvcB8zP_zTEANqo++FCmmJhKESVW=LrBdfyGQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: multi_v7_defconfig: Enable panic and disk LED
 triggers
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_094408_195150_53F07C80 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux@armlinux.org.uk,
 Lists LAKML <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 4:33 PM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> Most development boards and devices have one or more LEDs. It is
> useful during debugging if they can be wired to show different
> behaviours such as disk or cpu activity or a load-average dependent
> heartbeat. Enable panic and disk activity triggers so they can be tied
> to LED activity during debugging as well.
>
> There was a similar patch which added these triggers for ARM64 as well:
> https://patchwork.kernel.org/patch/10042681/
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
>  arch/arm/configs/multi_v7_defconfig | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> index 2e9fa5312616..466ccc305a05 100644
> --- a/arch/arm/configs/multi_v7_defconfig
> +++ b/arch/arm/configs/multi_v7_defconfig
> @@ -821,6 +821,8 @@ CONFIG_LEDS_TRIGGER_GPIO=y
>  CONFIG_LEDS_TRIGGER_DEFAULT_ON=y
>  CONFIG_LEDS_TRIGGER_TRANSIENT=y
>  CONFIG_LEDS_TRIGGER_CAMERA=y
> +CONFIG_LEDS_TRIGGER_PANIC=y
> +CONFIG_LEDS_TRIGGER_DISK=y
>  CONFIG_EDAC=y
>  CONFIG_EDAC_HIGHBANK_MC=y
>  CONFIG_EDAC_HIGHBANK_L2=y
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
