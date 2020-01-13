Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B52139CB5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 23:39:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/YThp+lckSGsN1HVEV1mvW+tT5se2PSAc1TomhQRtmc=; b=nWdoMA5FcIRFt3
	jl4T+8u4IZo3gfgOEn4Wbj8WoYK4Iubnl/uoU0KQq+x2w4XNEQP7V2tN7D/AFGgCKabwm5DHfwHre
	GVGbbEaVuyFvrJmO/9pyU5HiCvq5uH6wXCLLgzWvDMLxvRDg5DEQrIpYfoj5YxfLNc9sMIvQx4GEo
	1j/R3grk2iEhJ15oTDROMOcmLWreK1HupvCxbhtPpt9FtIB4KE8bghwo+3fFcrmR2DzQy7+nBABtF
	U0bB74x1XxD1gBZZWCjfoBv/JqdNYIFx9DovGEdXykYgFMfU0/lxNUltebOGbX4Xd9Ujqxg4x894s
	s1DDKSnsClx7ktlMqUNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir8MP-0002W9-Lq; Mon, 13 Jan 2020 22:39:01 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir8MI-0002Vn-Hn
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 22:38:55 +0000
Received: by mail-oi1-f194.google.com with SMTP id n16so9922112oie.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 14:38:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ro5qRPwmJVtGIpYVE3YFMYFRyOwvi8jNaWfJYatPWAA=;
 b=DVfkPTWihHRYtoms3qEgD4oXArOwt5mTobxAEHxzvKd5eDNtQPtTgZUHPAqHC5Aj0h
 lYYcXhXBOfiWvhskUHiUhy/XQwvTLJWyQIxP8FMkr7toPGZwXJqJ92ucEYu5B2kCf6OE
 dUt7rUorLr+FiMEMh4TICfA3+Pf3aoP5SXtTH2vOgDOhVvt2gd44AkkDBCiF3WPmCqid
 Te0OWkFoFR2MTStEoS5aBGPHSveqkdl/ukhB94HAfvg1BlSik4/7Ps/ygZuGCwhCReRF
 zUPz+5d2Sg+e1mYT8UZ4atY4B4sDnABuRFKHPqtQC/7PdBSl4dE4xDsOrpE1iTsVz9zF
 VNzw==
X-Gm-Message-State: APjAAAW4eB8kZnQ4E2tcfo4dtSIvM3wyyq9s/yqe2E3syR/cn0vwhbds
 fFvOl/oLgdnWUNXfkUsMAN7ZrCA=
X-Google-Smtp-Source: APXvYqywYiTso1WShsm/FgUWtxRfxQRQLJKTn1borZTeW4RE8UtNDLZ8WQGAsG2NVEYM+tE2ic0GvQ==
X-Received: by 2002:aca:c509:: with SMTP id v9mr13852403oif.151.1578955133121; 
 Mon, 13 Jan 2020 14:38:53 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j186sm3984045oih.55.2020.01.13.14.38.51
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 14:38:52 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 22198d
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Mon, 13 Jan 2020 16:38:51 -0600
Date: Mon, 13 Jan 2020 16:38:51 -0600
From: Rob Herring <robh@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v6 1/6] dt-bindings: mailbox: Add a sun6i message box
 binding
Message-ID: <20200113223851.GA30654@bogus>
References: <20200113051852.15996-1-samuel@sholland.org>
 <20200113051852.15996-2-samuel@sholland.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200113051852.15996-2-samuel@sholland.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_143854_590694_4A5588F1 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ondrej Jirman <megous@megous.com>,
 devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Samuel Holland <samuel@sholland.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 12 Jan 2020 23:18:47 -0600, Samuel Holland wrote:
> This mailbox hardware is present in Allwinner sun6i, sun8i, sun9i, and
> sun50i SoCs. Add a device tree binding for it.
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>  .../mailbox/allwinner,sun6i-a31-msgbox.yaml   | 80 +++++++++++++++++++
>  1 file changed, 80 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/allwinner,sun6i-a31-msgbox.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
