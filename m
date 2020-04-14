Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8952D1A7EF0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:56:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+HDRl2nGhguW01Q+Q/z1XrLqXt67CcLre77Gvj5xzc=; b=gx09ztTSS7YdsC
	qkLzAbd7qnENPk+S3rpW2z7lMPSKRpVC72gm1sMAawokxbu1a7cPIPeDxVOAQN+vUPkqaqr3JU7Ec
	8dRWdV4JVCC2nCbDtl0R84DVlH5z6/tGwf4n4jOxhCtcBv3JNZDUQfKIPcnBEdoqs7A5KPz1yuHhT
	Yi4Oo2uh2IrW6jOgCg0FWdRE4sV6NxQ3e71NvVkZt0z+1C/vgWt66iRIht1D5d38IUbtDE2hBJrgf
	OIIZPZlBEPGYj1yiz1y98su2KPPdJjf1gj5cZzACOo81YG60pLdf+2LD5C7MTBOzMcWUD4PcjqwRq
	Inzagzc5WSrAZ0ixcfeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOM2h-0007Xq-HN; Tue, 14 Apr 2020 13:55:59 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOM2N-0007LN-0m
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 13:55:40 +0000
Received: by mail-ot1-f68.google.com with SMTP id f52so12818951otf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 06:55:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MPnBVuMb9gERNtPk1qaCs0pkeSDmOcTJZhbSPaMIInQ=;
 b=fNwdKWSjlRh+3zbX34uGRi+WzYCo2YJmQAr8XXm8OPP2J3ndHQgRY8RpbKqnC9rW/U
 ztOq/ogUYSpBLMpOgx1/bN7cWhJL95hQfVFb2dVUpRgfoPuKLwe66wtG8JuOY1SkbxiH
 UeE7gqRyEUdOr28i5pImv1syIoNEqH0oqaMfPTuo+pazrT5O0XoquDp9uuA7bLP0wD/k
 S7sJybhcXw2/RO8Wx4hNDLipFak34NKyl4su/vRsaz/bLluvQUME8UMzKkiZ5rswSb4q
 GFd88Mh545GKlmuw4H6m+YosWqgDg0Jsz7ohW2D5MqluF0Du68lovXFp7e0cAPvx22GY
 IBUQ==
X-Gm-Message-State: AGi0PuaLuS1xYqSjUrd2wPa7WCD8Py3KozlL+Xd29iAgclfODjd7Valt
 7MnWRD3Yq39IzcNoWaGByQ==
X-Google-Smtp-Source: APiQypJyEmmSmrZw1imbtJEg7HOnNBo7KdO2HJ4aRVczpnTT3rEGdeMvfO3dmGmCaFLZv459u6BWYg==
X-Received: by 2002:a9d:c61:: with SMTP id 88mr19218457otr.144.1586872537121; 
 Tue, 14 Apr 2020 06:55:37 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id f26sm4128832otp.28.2020.04.14.06.55.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 06:55:36 -0700 (PDT)
Received: (nullmailer pid 29325 invoked by uid 1000);
 Tue, 14 Apr 2020 13:55:35 -0000
Date: Tue, 14 Apr 2020 08:55:35 -0500
From: Rob Herring <robh@kernel.org>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v5 1/5] media: dt-bindings: media: i2c: Deprecate usage
 of the clock-frequency property
Message-ID: <20200414135535.GA29221@bogus>
References: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586191361-16598-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586191361-16598-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_065539_115080_36697EA3 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  6 Apr 2020 17:42:37 +0100, Lad Prabhakar wrote:
> OV5645 sensor supports input clock frequency ranging from 6MHz to 27MHz
> but the driver strictly expects this to be 24MHz (with tolerance of 1%)
> with this restrictions let the driver enforce the clock frequency
> internally to 24MHz rather then being passed as dt-property.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  Documentation/devicetree/bindings/media/i2c/ov5645.txt | 2 --
>  1 file changed, 2 deletions(-)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
