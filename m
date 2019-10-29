Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 447DEE8FC8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 20:17:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/+6CN2lkP8oO5pxjllpkkCGEh4bfxoeBf/lHlE3Rbg=; b=BgljzN2NWL+k54
	0SAijaO/tIgrDp/lEfNaMKd94k5gvk3JJIIFXUntbDD0EE6Yp2JR8k3kTjEGn/ZVLpBaLToiNr+Pd
	apq2O9ZGNvWSkw7O1EeoNFYpoT2zhbBipKNutlXDDMl0RUc+lGxeR9IU3FwfCvkou2LktKuzdlqvq
	WzcNxi28X+Ps7s57Najqo4Bp9EgHUKZAbfM0yUvYCSmzaDhI5zjzF8lJYfX7w6G0ABOOuStMTHXRL
	NY1jSjJDqdPbq6tQ2g+DyasHAzuJJFw/3R19dmbdPCkJseiYR/C65p/98oRS5jaXlOPJyuIcmstej
	RtGWAZZPUTWvR6VBNq+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPWzR-0001Kx-Rn; Tue, 29 Oct 2019 19:17:13 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPWzH-0001KN-1m; Tue, 29 Oct 2019 19:17:04 +0000
Received: by mail-ot1-f67.google.com with SMTP id 89so10734711oth.13;
 Tue, 29 Oct 2019 12:17:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XpBCgi1acvYl0k5WNhVR7nXqVxi3RiMKOtGaD33sKEc=;
 b=Sf7xPsuyowVXcGwwqP44ulg+1EEMjbEtn9zHFndhW33zEeY3fvGn920MBmh9vgiRHu
 hsGXc3I3MjigQ1H/EuUE+DeseHNpJPrjFJqW6rTxYnQkrqeBRNEOoGiv+LnjoQtB3c/j
 4mOk6kaoZJW37u656PT10EwtyP2BSiHZ9PkiqzvF8bjA3vARYR1dvwfX8DCBF5kHzq3f
 Hoza6Z/DA9T3ikQ4ELgPx551WJP6L10LWMHx55Tf9+rwGvTPi6O0ktWZ7ydgdntEm2ub
 b9NMmXve8CCy3i3+b984cME6mbbkOnaoCr9XQjF/5xz4g658/ch1EbJMVjunavJGBQcZ
 CnUQ==
X-Gm-Message-State: APjAAAXPv84kNR9GGkwoqc7CZM5vLSUlppwdULkiIsqe4nLarG73COcd
 N+8NZAiPDYxZzjvJ+x6/Nw==
X-Google-Smtp-Source: APXvYqx/H3E5BHR/NyYmMy7qY+w/1yrITBdBvLYN/pDzX4Yrcd2QcMYM0p1KpSR9OqGRKzKomab6ZQ==
X-Received: by 2002:a9d:6e91:: with SMTP id a17mr5163289otr.31.1572376622117; 
 Tue, 29 Oct 2019 12:17:02 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 38sm498129otr.7.2019.10.29.12.16.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 12:16:59 -0700 (PDT)
Date: Tue, 29 Oct 2019 14:16:58 -0500
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 2/3] dt-bindings: phy: add yaml binding for
 rockchip,px30-dsi-dphy
Message-ID: <20191029191658.GA9628@bogus>
References: <20191023223851.3030-1-heiko@sntech.de>
 <20191023223851.3030-2-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023223851.3030-2-heiko@sntech.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_121703_089421_931AA0CB 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, bivvy.bi@rock-chips.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 12:38:50AM +0200, Heiko Stuebner wrote:
> This adds a yaml binding for the external dsi phy found on Rockchip
> socs of the px30, rk3128 and rk3368 variants.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../bindings/phy/rockchip,px30-dsi-dphy.yaml  | 75 +++++++++++++++++++
>  1 file changed, 75 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> new file mode 100644
> index 000000000000..c2e1a998a766
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> @@ -0,0 +1,75 @@
> +# SPDX-License-Identifier: GPL-2.0

(GPL-2.0-only OR BSD-2-Clause) for new bindings.

Otherwise,

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
