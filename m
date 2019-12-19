Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 626681271B9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 00:45:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUK//RBMsvkiZ3wDQ/Qp3xqi4ZqEWFQDx6gY2uEHEMY=; b=Z5u27U3z/CPhdX
	nFo/LQmezkNnzecq8rqWvC2f4u9sO5lhtCsiDOiq0QNxkyZN3vUmbnAd4nqzrqwAIlPiQUX+r266b
	Pv+a+703G64Dgxbw2fAodGfcaamruUstxgOg5KsFG4uovXwdkfxoup0Pt+haAlGxA+ntxt9uyXc7J
	bE/sfR5UWkxPP2Z6c6UaLPbDJNCVkSOQrr6p4M5/SjnVLn50PolqPaZdYq8EkQK5+3M8HWunwIq6r
	U6dmhVf6MwkFtPzW3fdblH/pkYrgAUpvAH6tG1XjZb2jBlaOup5OxMo5TQdBPp367oNPrm/H5h+EC
	NYI+m8EJ8NEKo1Yf+3pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii5U9-0002ZI-Kl; Thu, 19 Dec 2019 23:45:37 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5Ty-0002Xt-IC; Thu, 19 Dec 2019 23:45:27 +0000
Received: by mail-ot1-f66.google.com with SMTP id b18so9381877otp.0;
 Thu, 19 Dec 2019 15:45:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CPTZbnsZwMAdm3+ywA9AmFZNzHoVlF3t8i/+Bbatuus=;
 b=rypDJPNonrrTyqbODgncdIexOUoK3dIfJr+FZgBR0rmBwcgn+50Jnf8tc3BhfU/m7e
 AtL25A+XWxko9fg3WOVF/p8m+SivIPTQKJsbnMc/jM/qcoW3QRBEIfDzHC203TpfSJap
 zkalbyFGj151Xp0PHojJyzwyO+efziLd6jFu2xiMf2DgqvtbdBVQzipVoTNQuj9rG8c+
 sZr9M7ex9HDlOeRSKCLVvL5xwtAxF6fP/2OqLk3ILnO+tBPebA7k6TJpMz2XeCvEsPQ6
 HE/xs07bZ8z5eLuwSA33BmoEaVwXOOW6eBOL788HJwG/16QXssaLKUdOfmOW8nwrxqvA
 I7lg==
X-Gm-Message-State: APjAAAUjDHhTKmmkn1cbEWL9nth+lV6rcNTUKzCoUIkDEohYu7BgS0aY
 5WGA5MSOT3Pzcf+8INYxoQ==
X-Google-Smtp-Source: APXvYqzPrntJQUPYSBFKGHAAmivi/dtE3tpOOaqLhKu8OeZYLW39N4PiJJx99SeXD52l7Rmf2JkyHg==
X-Received: by 2002:a05:6830:1116:: with SMTP id
 w22mr11981631otq.216.1576799125808; 
 Thu, 19 Dec 2019 15:45:25 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net.
 [184.205.174.147])
 by smtp.gmail.com with ESMTPSA id 47sm2730192otf.54.2019.12.19.15.45.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 15:45:25 -0800 (PST)
Date: Thu, 19 Dec 2019 17:45:22 -0600
From: Rob Herring <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 2/2] dt-bindings: phy: Use a real life PX30 DSI PHY example
Message-ID: <20191219234415.GA22014@bogus>
References: <20191213180019.25080-1-miquel.raynal@bootlin.com>
 <20191213180019.25080-2-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213180019.25080-2-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_154526_602351_2EB430BB 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 07:00:19PM +0100, Miquel Raynal wrote:
> Update the example phandles to reference actual nodes and give a
> working starting point.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml       | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> index 72aca81e8959..2e35bfdf47a1 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> @@ -60,9 +60,9 @@ examples:
>      dsi_dphy: phy@ff2e0000 {
>          compatible = "rockchip,px30-dsi-dphy";
>          reg = <0x0 0xff2e0000 0x0 0x10000>;
> -        clocks = <&pmucru 13>, <&cru 12>;
> +        clocks = <&pmucru SCLK_MIPIDSIPHY_REF>, <&cru PCLK_MIPIDSIPHY>;
>          clock-names = "ref", "pclk";
> -        resets = <&cru 12>;
> +        resets = <&cru SRST_MIPIDSIPHY_P>;

Without the appropriate include files, this will break building the 
example.

>          reset-names = "apb";
>          #phy-cells = <0>;
>      };
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
