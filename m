Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C94FC848
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 15:01:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=diUBK/MLn1RhkbBVKQgwS4wqYh8fMvBx8LdRcrc9IF8=; b=G+EAZcZeQKn+kB
	k43DKuGnCRmtGpbql0j2lnM+jZ+i434Bfe7XSi8+lj67tXywobKK0iayDVEYmGMQvQ6OlKnqCeuzr
	qFdS8BA+87OQalJpYp9RZWzFt7MnjYYbq875aKnB0EzLLJsFFoZaD6kijEHTTUqRaCb3czQAzESZB
	caQYuxMMhATEcZOvfLieeS2CpJL82Pym9R9ZYjewdYBejk/Di5QRfyobXajmdR1YgcvVG2NfWl2bp
	C05ibhug9OtmoR8ZMaJVGM8tPbj+kG0rEgYdVsN8LYpQUnArtTb8ikH4T7eyCAJZgzdLYv4dQ4n0J
	ipD4MUKThyDphFYOdKIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVFg5-0007zD-L9; Thu, 14 Nov 2019 14:00:53 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVFfw-0007y6-HI
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 14:00:45 +0000
Received: by mail-vk1-xa44.google.com with SMTP id t184so1491480vka.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 06:00:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kJUZgKfy2YSWGNuA2+MgdU+Nr8ygHAVvjPLQAD+YtDs=;
 b=Um9OcmrFedBxkdzVXkY2EtsXLNyskuS4YLklz4fMGWFnU+aiTFGvjT8HDml+M1ErlU
 fsS2HvnmMPNZaNx6nyozf0V53f0VFp6xcqjCO4j/SyTSgEV9iAZTihxeQ7PGyd40EuHI
 OGz9A8awTDEhr1M6aH8bcBqUsMGiHgm5h+0V1RUhWC11o6vNM9h2zQrntTdVYVL1M3Bi
 hGaYX+MdnaFWX2GO5NxAwLqTuwWz0rIophmlgo4k9FYQyL4ySZg8VtdTMLPk4AS4wTA6
 3AnLRIeEb6T64QF23YubjnKP0+NtmPoxHR7Du0y3xfiCBv8QQcETgLbxDir5/+in1E5+
 f+UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kJUZgKfy2YSWGNuA2+MgdU+Nr8ygHAVvjPLQAD+YtDs=;
 b=M9yInZy4nhNFvXxgSWLa0/6vz5jeJHTllVPc5+mpjFkU19WzUNX3M1E0m5xaWC1PUa
 nDcjR1cOVyClOzZiRBL/rOjswPuRKiF519j5LNr1xc50vVP4PsFaMqzI4HCSXu927GBA
 Ogn8wGfXintgNKyGd30kga0O0zAr8zhwv0X3SExBvOfGpEyyKaws9HlDqUF0h8NiB+uT
 9HdNRqYia7i36gJln0KM/EOnWkzqcy3S8vvXQBRybVlMCOypAHhRju9ahTqxJquGBBVy
 wf6smD5I1PamPYMJr4lhlJJtKme0igFKVjCKp12NWwZjokmmgHsk93DO0467LvEhfE6z
 4BeA==
X-Gm-Message-State: APjAAAXUllpLKcai8X/ClXCaCiqdM+nZY+y/WeBJt0/taLE7yeq/aEGl
 +5Ee95QnPaCRngXfc4zlOFM1MOcb+lvdEzE8L8Bzhw==
X-Google-Smtp-Source: APXvYqxglOLg8xzv1EZ/UOAGOFLRVXU+F1KB1IDk6i8iCyI7W7PmXp6Hxwdfvs1NSaryF11w4xB1Cg/GYOTyEXWRt/c=
X-Received: by 2002:a1f:fe0a:: with SMTP id l10mr5151920vki.59.1573740043247; 
 Thu, 14 Nov 2019 06:00:43 -0800 (PST)
MIME-Version: 1.0
References: <1573736352-3597-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1573736352-3597-1-git-send-email-eugen.hristev@microchip.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 14 Nov 2019 15:00:07 +0100
Message-ID: <CAPDyKFrrzNXxYywPW8cAZN86jBPoOFWt295o9ANm+0BrF4dehg@mail.gmail.com>
Subject: Re: [PATCH] mmc: sdhci-of-at91: fix quirk2 overwrite
To: Eugen.Hristev@microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_060044_583180_CA4DA97C 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ludovic Desroches <Ludovic.Desroches@microchip.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 Nov 2019 at 13:59, <Eugen.Hristev@microchip.com> wrote:
>
> From: Eugen Hristev <eugen.hristev@microchip.com>
>
> The quirks2 are parsed and set (e.g. from DT) before the quirk for broken
> HS200 is set in the driver.
> The driver needs to enable just this flag, not rewrite the whole quirk set.
>
> Fixes: 7871aa60ae00 ("mmc: sdhci-of-at91: add quirk for broken HS200")
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>

Applied for fixes, adding a stable tag, thanks!

Kind regards
Uffe

> ---
>
>  drivers/mmc/host/sdhci-of-at91.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-at91.c b/drivers/mmc/host/sdhci-of-at91.c
> index 496844a..5fe6684 100644
> --- a/drivers/mmc/host/sdhci-of-at91.c
> +++ b/drivers/mmc/host/sdhci-of-at91.c
> @@ -389,7 +389,7 @@ static int sdhci_at91_probe(struct platform_device *pdev)
>         pm_runtime_use_autosuspend(&pdev->dev);
>
>         /* HS200 is broken at this moment */
> -       host->quirks2 = SDHCI_QUIRK2_BROKEN_HS200;
> +       host->quirks2 |= SDHCI_QUIRK2_BROKEN_HS200;
>
>         ret = sdhci_add_host(host);
>         if (ret)
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
