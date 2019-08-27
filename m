Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF2F9EA18
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:51:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mTvtQP4hRPMkNKF9qbYKORboLo+nq+pFRDydN6SJkZc=; b=DYf7c/yVWTRJTl
	MJa1MnSeeo270wEdS6UbdaUVwF8NITpBgE58M3EnJWOl0B38hnDiJO9himO2nqf5xw4Z8aOM+A70c
	RXTqVPN+HQLPqQF2KqJWeJ7EKiMiHJvWqlqvU3FKThD8fRJyqVRiTMsFK35JBSHDq6jJbJdKO5VRH
	Fy1CPz4ciezteYWGR/y6rK/3untmbOPluCNir2wLrLMW46Y114rUIs2s8kGELx9nFJWEHML2HVzaj
	O0fD+ZNDP9trEqp4/SHJyMJXkD3JumBn+WLddIWxKV1jPbxQBrwWZvmqAyNJBcLZembVbBoja9o2L
	662uz7bVcqLNB/TS1P9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bs8-0007Gy-Fo; Tue, 27 Aug 2019 13:50:56 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2brU-0006h8-3k
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:50:17 +0000
Received: by mail-vs1-xe41.google.com with SMTP id j25so13451875vsq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 06:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nPR2CQfWmgZTkvcpGyqAZkf0myEhVejsZD6gsIT8RYg=;
 b=bhjl/ew8Pdmkn2py/fJ8FKDq4d1wSwcKFwpAqCni+esZ62NP1wDMuTrPNmksJfOg+Y
 My7X+wD93QUDR0E3hIw3E1A8iE7iMuv3TRRMCS3eIOphYFDZF6fKOzuCq2zdoUxjVHh6
 3+WsdoF0ZGK3YXkZHXokWSPcVEecQW0K0NSoyk88GKCLv84yCim1xpARfVciR67DTXNJ
 KbB7KkvbrM16nS6EQSKVHuZdTISASCfdZ4mJetpH93xPtPxg9o2VfQdTvVIiIslYhgQa
 G0PTMTp7ZX6VsTVAGrRDF/zQd9Z+fdlvN31tSNuTNgvkcvZSwUdXdRF7/PPw9J8ppeB9
 VJWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nPR2CQfWmgZTkvcpGyqAZkf0myEhVejsZD6gsIT8RYg=;
 b=qCLBPk3MGPw7STqKUfJi8FjrlvI4kQap3Paja1KbDQxpwY6VLot8CEOOV2tTgDE1fM
 RdU3nXOQ1zEo9mRUK5Ghw4hGHVidf4Ivlsjk6/oN/Ze72bhVns2kziEzkQ3FiwrRWVjL
 TzlwY12ptWWsgLvVDBpBNED6d8KxE0vxbWbedSkNCawHDRmxVu+vR2LWMvNtpm5u31zZ
 Fj2pqX0trE3GUIY5g8gg+HyRaqvP5K30Zd0VzAaYLmMw59uC8bZsMIp4t4UnHILa+Sbp
 b1DGgzA4etB3f2wPsSv6v057Q0wD2y2SHIGVK3K/PWdqrM7SS4/lT31bpKL0Mj+1FI4J
 yfsw==
X-Gm-Message-State: APjAAAX4Ppf10OCfLA/GwicP0yIBgbLViaOotwCHbXQLCDaXA6qGDeED
 WEN22SB8P8xY6Yd+nS+UAc9RhLDFxrd6BoN2YX22LQ==
X-Google-Smtp-Source: APXvYqzQ8I7Ep8k3tduFMMa8uUTlPd+Xy5TxZlq8ti8zHd5KPR80iTc/2sx/Oh/nNRZf59jUJo5lhvjPC3uSaxWvRL4=
X-Received: by 2002:a67:fe4e:: with SMTP id m14mr14252340vsr.34.1566913815413; 
 Tue, 27 Aug 2019 06:50:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190826021620.11915-1-andrew@aj.id.au>
In-Reply-To: <20190826021620.11915-1-andrew@aj.id.au>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 27 Aug 2019 15:49:39 +0200
Message-ID: <CAPDyKFroS-Z+4QYitmYrCugPV_f4u1MDJiRkDxGWvVjsU=9RgA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: aspeed: Update example ranges property
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_065016_223005_CBD83DDC 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 26 Aug 2019 at 04:15, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> The example node in the binding uses the AST2500 compatible string for
> the SD controller with a 64kiB ranges property, but the SD controller is
> allocated 128kiB of MMIO space according to the AST2500 datasheet. Fix
> the example to correctly reflect the hardware in the AST2500, however it
> should be noted that the MMIO region is reduced to 64kiB in the AST2600
> where a second SD controller block has been introduced into the address
> space.
>
> Also add the IBM copyright header that I left out of the initial patch.
>
> Suggested-by: Joel Stanley <joel@jms.id.au>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

Applied for next, thanks!

FYI, I took the liberty to amend all aspeed patches, by putting
"sdhci-of-aspeed" as the prefix of the commit message header.

Kind regards
Uffe


> ---
> Hi Ulf, this is the follow-up fix as discussed here:
>
> http://patchwork.ozlabs.org/patch/1143090/
>
>  Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> index 570f8c72662b..200de9396036 100644
> --- a/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> @@ -1,4 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0-or-later
> +# Copyright 2019 IBM Corp.
>  %YAML 1.2
>  ---
>  $id: http://devicetree.org/schemas/mmc/aspeed,sdhci.yaml#
> @@ -84,7 +85,7 @@ examples:
>              reg = <0x1e740000 0x100>;
>              #address-cells = <1>;
>              #size-cells = <1>;
> -            ranges = <0 0x1e740000 0x10000>;
> +            ranges = <0 0x1e740000 0x20000>;
>              clocks = <&syscon ASPEED_CLK_GATE_SDCLK>;
>
>              sdhci0: sdhci@100 {
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
