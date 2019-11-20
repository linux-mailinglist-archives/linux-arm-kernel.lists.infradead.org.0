Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5445E103A8C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 13:59:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LITS/1TksNs+WyBLB/56hGhiLAqfh3EVFMOipA7XU3M=; b=s5IeCygWww48SP
	Ht4HdHCH3HRWwOGsqccLtsukrRewpafE/Ef1DCcLqehlZe9Sy652ZVpUk3KfZAwQ7HGFkirZ39OsU
	h9vOL4w5rbnh2TreEw60jbSAiGoWywxCbBsglj+9TbEoZEt9KLBMdJeE4Q0+E4yxlwvDiZfDxA4yr
	PjIIdeEs9u0QKQgNRkcpDJL6+Fa5JoaGRrMygQrNJauQ3swERvzdeksZqa2+0qbvL/JTx/fod6f6D
	8gqIkSvwSRyUewXLzPV5pFkuY0q/FT9UL4Kg7eQX84cPhsLmWOyDAeuSVoEbWTRzToVP4erMG2IAw
	44wZmsw4PWWey7s9sirA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXPa9-0002CO-KT; Wed, 20 Nov 2019 12:59:41 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXPa1-0002BU-KQ
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 12:59:34 +0000
Received: by mail-ua1-x943.google.com with SMTP id o9so7718178uat.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 04:59:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nuqJ0vbClL23gGoYcppi0FrFy7e9Hz/yNcjMSMNBxqE=;
 b=dYP/0q1UJs+hkupL0Ks33xZa/oPu9OOQ/1POhchabco+MYLW/OVqUGMujUfpI5uX/Z
 guc95gIHgm0ENwks6ezoHMtNBDv5NpD4kZOt3rckVtc2TNrFfHdbtpCHIzg2WdJrYaXH
 /xSfomvFi7E/T0tCpoUNe3K5d8eLKhwMpXTlLq8hD5ihVf1MmjEnX8Zrc+Q4dl9OF8vp
 voHqwV0OwDc47bzLAoCx81iHGZpBIJjGrkq9aPtBI615OOd+WVm9zHE2PC2D1k+vGxR4
 4PUF1/lLiew7UxLBcxzFkhUWuY57TX2Ka8I2YZ+NgeOlXACnlaJC6D7tFhA87pTU3x45
 HmRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nuqJ0vbClL23gGoYcppi0FrFy7e9Hz/yNcjMSMNBxqE=;
 b=X+/kKvaqK8kISB4StpCAMzNzZX+4pC/DNbsktCJmBhpJEoFfGrpcUiU39FZoHxO4D6
 gwwbm//TxUFXtIDLXRTQtZKtIZ7NFJesLA1AmxDPaICkKSA8Sczh1RDMVBu7VbtfFqrW
 t4BMPP+xYSMw8ZDgxjUBkpnrPUACJyyHnu5uTnh4SXNP/rAoCcmrvxlF1VIAfqJE5yPK
 ik9BEGmG34Gi1JlBjBwFcCIRxt80q6/vlyzyCxLUN9LjkU7NPhmuSGNLv+0L4h98NKNd
 wQruXDIswndw1YXnzKYX+WucealuN3FOiJpMInYKwfDJtXQ0DghNcxuiIlonk7j4oY1g
 8azA==
X-Gm-Message-State: APjAAAWqPhXcXS0CF4lT00QVvC4vm5lpOKn9v+UtgGvqyQr7M0wZxEEQ
 1BRPT5BBGVtnNnBdh5rT8pCzcC4qeoI4Yg5tfjklq0is
X-Google-Smtp-Source: APXvYqzczwcqmzJh3GjUqnWFQGP/+Gp7RUJwV58YrFcSe+bfPCganPSc0GYA3NZbmUkPuarP338JjoXHT98NVoW0E1U=
X-Received: by 2002:ab0:2042:: with SMTP id g2mr1511287ual.19.1574254771069;
 Wed, 20 Nov 2019 04:59:31 -0800 (PST)
MIME-Version: 1.0
References: <20191118104646.3838-1-i.mikhaylov@yadro.com>
 <20191118104646.3838-3-i.mikhaylov@yadro.com>
In-Reply-To: <20191118104646.3838-3-i.mikhaylov@yadro.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 20 Nov 2019 13:58:55 +0100
Message-ID: <CAPDyKFoz3ipYBGR-6ubfqhtQVG9h16axoHNdSoo+OyNgKRs2Tw@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] mmc: sdhci-of-aspeed: enable
 CONFIG_MMC_SDHCI_IO_ACCESSORS
To: Ivan Mikhaylov <i.mikhaylov@yadro.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_045933_673139_C50D5292 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 18 Nov 2019 at 11:47, Ivan Mikhaylov <i.mikhaylov@yadro.com> wrote:
>
> Enable CONFIG_MMC_SDHCI_IO_ACCESSORS on the aspeed board. The read_l
> callback is used for inverted card detection.
>
> Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>

Applied for next, updating the changelog according to Andrew's comments, thanks!

Kind regards
Uffe


>
> diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
> index 49ea02c467bf..c9c1bb722368 100644
> --- a/drivers/mmc/host/Kconfig
> +++ b/drivers/mmc/host/Kconfig
> @@ -159,6 +159,7 @@ config MMC_SDHCI_OF_ASPEED
>         tristate "SDHCI OF support for the ASPEED SDHCI controller"
>         depends on MMC_SDHCI_PLTFM
>         depends on OF && OF_ADDRESS
> +       select MMC_SDHCI_IO_ACCESSORS
>         help
>           This selects the ASPEED Secure Digital Host Controller Interface.
>
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
