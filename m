Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E66C9123C85
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 02:39:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4tzJDtLwBsEBk92WNO/qC61lbzqEy5e+e/mW4KlCyQo=; b=pwY9lifavo8j+p
	jFh15wxDTErM6O4HNV3hptqTZymSkgilYAP9XPk088Oh3Gs/J1uVuRPsIKH2hQjbOtQcOzYudy36L
	JTspD35YMcUrIbx8SLwPnDoldtjtI8GNRhZTWReIEzFFJiuD7gCyetzSYg5/oVuZdSAUNOmhNLDNF
	XZ2cSWHcs41WIKz8CeTyek7QOSyQnpC8EtHothPtcjoRi6YUorjH4neAFS98TDiWI85IP5FwD2FYZ
	GhqhYd8Rr2Ir0pyifw95QHLCftkMoDkzcRybDGXMo4EAstUfcKzbkDqhoh7AdzaZTv0ouIiKKQcz+
	Ak3DkOjL+XKjEnIkP2Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihOJ8-00084r-4d; Wed, 18 Dec 2019 01:39:22 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihOIw-00084S-7C
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 01:39:11 +0000
Received: by mail-oi1-f195.google.com with SMTP id d62so250864oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 17:39:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fDE5oLQorUiWHo08fFcOyx3XWtSlMwmlj8UIs8onOvI=;
 b=QiJjZgTxN+UMARpOAywI/TgqYqLBpa9PzK42OXUz2YBZwABJU/k/kUIvTBhIlcGi2m
 yZmeu1E2U+KlrFIgTqkFbbQn+qT6FfdsWafdsNBZTcIqB6Dy/BbcNAwqVUR86SghT3rB
 RchkjEqi49dfR81aWXyrxiWFKiwWcmtKRlvwhrEexpB3lOCUbVYtlEjpfrtYYOiNVicl
 UI7RLWS3V4aPIiXjPJgI2wMblRo+sBnDxnUhzD7RSPbtkJP2SPdmP8kI2pOMx8zLtLyZ
 pfJwi3DgK3pdRhO8zltWZroB+h6nq4Ds/JwZ2GXqa63Dy8wgb0Nm2DpZAaOycU4Q+oas
 3row==
X-Gm-Message-State: APjAAAW7OVOr9kbysmi0pM8gEzEz2EJ2umFPBTHp+Exo7jHa53WEVaVH
 vSlYPkhYPONZ/hZetIl7L2e8Uqs=
X-Google-Smtp-Source: APXvYqwxzcOHv3IUHgHXN5DwYwMh84wkG0aznk59HmMavhjQVCJWF5p78BNBUlPusKCyG0yZ3hgm7w==
X-Received: by 2002:aca:2118:: with SMTP id 24mr114797oiz.28.1576633147044;
 Tue, 17 Dec 2019 17:39:07 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k17sm207217oic.45.2019.12.17.17.39.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 17:39:06 -0800 (PST)
Date: Tue, 17 Dec 2019 19:39:05 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2] dt-bindings: usb: Convert Allwinner USB PHY
 controller to a schema
Message-ID: <20191218013905.GA25729@bogus>
References: <20191209093340.50552-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209093340.50552-1-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_173910_262143_C2D92999 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  9 Dec 2019 10:33:40 +0100, Maxime Ripard wrote:
> The Allwinner SoCs have a USB PHY controller that is supported in Linux,
> with a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> 
> ---
> 
> Changes from v1:
>   - Split the schemas into files of their own to make it more readable
> ---
>  .../phy/allwinner,sun4i-a10-usb-phy.yaml      | 105 ++++++++++++++
>  .../phy/allwinner,sun50i-a64-usb-phy.yaml     | 106 ++++++++++++++
>  .../phy/allwinner,sun50i-h6-usb-phy.yaml      | 105 ++++++++++++++
>  .../phy/allwinner,sun5i-a13-usb-phy.yaml      |  93 ++++++++++++
>  .../phy/allwinner,sun6i-a31-usb-phy.yaml      | 119 +++++++++++++++
>  .../phy/allwinner,sun8i-a23-usb-phy.yaml      | 102 +++++++++++++
>  .../phy/allwinner,sun8i-a83t-usb-phy.yaml     | 122 ++++++++++++++++
>  .../phy/allwinner,sun8i-h3-usb-phy.yaml       | 137 ++++++++++++++++++
>  .../phy/allwinner,sun8i-r40-usb-phy.yaml      | 119 +++++++++++++++
>  .../phy/allwinner,sun8i-v3s-usb-phy.yaml      |  86 +++++++++++
>  .../devicetree/bindings/phy/sun4i-usb-phy.txt |  68 ---------
>  11 files changed, 1094 insertions(+), 68 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun4i-a10-usb-phy.yaml
>  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
>  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb-phy.yaml
>  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun5i-a13-usb-phy.yaml
>  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-usb-phy.yaml
>  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun8i-a23-usb-phy.yaml
>  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun8i-a83t-usb-phy.yaml
>  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml
>  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun8i-r40-usb-phy.yaml
>  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun8i-v3s-usb-phy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/sun4i-usb-phy.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
