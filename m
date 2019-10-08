Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C00A5CFA47
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:45:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ogZb50hBOeHjI2uyAjp5bjvEouX5NbJdkkQMyqeFoM=; b=l0oim8QnicDHCD
	BnuBtwhT519jVQf1vaOWdaiuuEOSwVosWXiOPx/p5IwZ2ylgVFA5lIpIFBTOTunr63Js/j9KqDz1o
	aOMqzoYnypSQWuNTDfv28M6FjRpVZP1H5ufkjVDpzZGFsSkxbv0BEkc2tc4Z1EGEZviVVpKAx8zq7
	tXkUe6QT43ifM4w/caisa9YsL5IRqLd1RePnWphJBLc1NOgvAwR7KwpzYewzVrbGNp/8PqnObeFnB
	oFbb2qgn6x2jxfXQFv2+qnwpYgWuGL5KjoVymaonKm/3Le35wF4AO2mlGvY8+eNFazRj6VdPQf7NA
	Y/XwIZEO1Yppivw5wWsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHorz-0008QE-NW; Tue, 08 Oct 2019 12:45:39 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHort-0008Os-0E
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:45:34 +0000
Received: by mail-qk1-x741.google.com with SMTP id y189so16579322qkc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 05:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v98zF1OGy1a9xdf1tcg4rO9aTmICS20KeVZPXiAVZ6g=;
 b=QXFzeHuf81gSpH57PDwEHoXnUMf8/WnURr1eH6LbCgjtzvlECfhgrOaugs8bUyVTa5
 IN2earqrMs23m6T89TNg+NgWHJq+QvdQoc0ufRkTf0lkD8UnzdxXKWXEoHutopPYOV24
 JDbyyAq7Mfk3JRcyLzr7IuC1s9MNUFNiLWH94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v98zF1OGy1a9xdf1tcg4rO9aTmICS20KeVZPXiAVZ6g=;
 b=sU0zzt4NUDfgPNAO9bVb2RyKrcU6QTdtoB6ocrWZ6In403jSiWji0W2AMSWURjuqvm
 GQQh9b5VUHGzvT1wQcdPQcew/iXzLOpPYM2j8kOFt+z87CbhNLo8aCIWeQLzR9OTU49T
 GRAGDtvIYDq2SJ05pe2SILhDL8zE2QD+U24ATV4C/J63pupI+TVnyMB5rHk70o9YLgoF
 JLTgDQyeSK1DMSGGpfNjBbGBK0PXKnqqXNTwymOcvH6Ac7yblATnn+eMOl/PJDDLVohH
 SJF9THKvMwzOfgxYLRhzOXAllxQBS10zCicxaK6a6k81c/IBWDV8oFMEVoMXDUnx4YGD
 5bVQ==
X-Gm-Message-State: APjAAAWRggtX9d33YpzH0MgAyvWdM2G0GjOp9Ma4DP8Sk9LirnAyDKsM
 /OzTE1HKBsOdmAKS1hV4l9stWwDZYgOryjFhDVw=
X-Google-Smtp-Source: APXvYqwbDrpR/sws3f6gujWo90eWmFtcR1qTkid+2DQ9qP9pCJc95MfjkQRPPxEaORjJBbxZSD9h/vhA8oS6KXrRLvY=
X-Received: by 2002:a37:4a54:: with SMTP id x81mr28662696qka.292.1570538729054; 
 Tue, 08 Oct 2019 05:45:29 -0700 (PDT)
MIME-Version: 1.0
References: <20191008113553.13662-1-andrew@aj.id.au>
 <20191008113553.13662-2-andrew@aj.id.au>
In-Reply-To: <20191008113553.13662-2-andrew@aj.id.au>
From: Joel Stanley <joel@jms.id.au>
Date: Tue, 8 Oct 2019 12:45:17 +0000
Message-ID: <CACPK8XcGAN6AF_GqUpCjFL3CEDeY42n0Zsgt5DX1ssOu+GhbDg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: clock: Add AST2600 RMII RCLK gate
 definitions
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_054533_043927_D2C7CBB7 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 8 Oct 2019 at 11:34, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> The AST2600 has an explicit gate for the RMII RCLK for each of the four
> MACs.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  include/dt-bindings/clock/ast2600-clock.h | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/include/dt-bindings/clock/ast2600-clock.h b/include/dt-bindings/clock/ast2600-clock.h
> index 38074a5f7296..ac567fc84a87 100644
> --- a/include/dt-bindings/clock/ast2600-clock.h
> +++ b/include/dt-bindings/clock/ast2600-clock.h
> @@ -84,6 +84,11 @@
>  #define ASPEED_CLK_MAC34               65
>  #define ASPEED_CLK_USBPHY_40M          66
>
> +#define ASPEED_CLK_GATE_MAC1RCLK       67
> +#define ASPEED_CLK_GATE_MAC2RCLK       68
> +#define ASPEED_CLK_GATE_MAC3RCLK       69
> +#define ASPEED_CLK_GATE_MAC4RCLK       70

My comments on the other patch about GATEs should have been on this patch.

> +
>  /* Only list resets here that are not part of a gate */
>  #define ASPEED_RESET_ADC               55
>  #define ASPEED_RESET_JTAG_MASTER2      54
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
