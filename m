Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2363E62D7D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 03:37:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LdG5gXBRpSd9Jj/mbRyCqIZF9FuVEOPV9QP5zLN0vSE=; b=mKIHVdyF/rAox2
	IQTP86l2wtZinrQHt8x2pEMqZ5vj13frxkO2EsU5TZfjLfmgNGG87s5pAHNEfg4l+11c9L2ZPxgDK
	J1c4EnRQTWOFFMfr5R/uI3TM88CjlnywIDatM+BkyEKR4h5wWtpe8bVNbT+nBHBW7oSl7XBuADg8S
	zqRPr4DxQSc9TFOpZ3gcBrdp+U0wWrA/81qjuRaE0KILy2U+U6ay28daDFy9m7wWjzIvQWFrR2P6x
	2Dc+jYqP2ipTgwxbxyEj0FFWnVZ1cCYhTUvdBKtsuD7S6nhVfeSvzsJCLS96wiKVvIaWpTd4onE6b
	NOM6uWNpNNlUz8BYvMYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkf4Z-00053k-1s; Tue, 09 Jul 2019 01:37:35 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkf4M-00052X-6g; Tue, 09 Jul 2019 01:37:25 +0000
Received: by mail-io1-f67.google.com with SMTP id q22so17852724iog.4;
 Mon, 08 Jul 2019 18:37:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QaPsRNpH7tGuW4jgrRhCMvtpmTscMl8GmgnpqNUqYao=;
 b=EELeM7R+nLDvp8FatmirvAGl5ME7GbYyGliDlZW/b0i83TjTfBu689WJflwgkJP9LC
 K4YFgnV7EkAb5a3lzpR62l6CR7BflcPJHFszlRsMY4Dw9vw4Awnx1Oa54tv3QyKLaCWd
 vC9liF5QYT77+oXz6Qk3LSVoEWP31f4AyQRKa6nBOy/oOfMlODT4vESb2dkDqzhRYp8T
 2IreqOk6SbTKwkjjnBDJ75EGU+3RhThaCt0Nk+gM9wr1fuERSNhdf4uhg9QjFUBibKuy
 JFPMaXsjOMwVyvpfqJZLQybRBVfZ/iapBQtg39CvHmxlqIWHV1xgOaDxsp5jZBM2sNnU
 EYDw==
X-Gm-Message-State: APjAAAUi/u2DC6x7h8pkM9VRs0A8AnJ3v0nO788+E0kE2by+8dl5YnPs
 chOpDcDk23T4tSj3Mk6J3w==
X-Google-Smtp-Source: APXvYqzNHGNztU1FaqC2TGRNivEiq4uHjQkybCvtKOnC9NCpuzOJCA45bg9ivndp+fnSpf1E1n7baA==
X-Received: by 2002:a5e:990a:: with SMTP id t10mr15188215ioj.182.1562636239429; 
 Mon, 08 Jul 2019 18:37:19 -0700 (PDT)
Received: from localhost ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id s4sm19002185iop.25.2019.07.08.18.37.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 18:37:18 -0700 (PDT)
Date: Mon, 8 Jul 2019 19:37:17 -0600
From: Rob Herring <robh@kernel.org>
To: yongqiang.niu@mediatek.com
Subject: Re: [PATCH v3, 02/27] dt-bindings: mediatek: add ovl_2l description
 for mt8183 display
Message-ID: <20190709013717.GA26173@bogus>
References: <1559734986-7379-1-git-send-email-yongqiang.niu@mediatek.com>
 <1559734986-7379-3-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559734986-7379-3-git-send-email-yongqiang.niu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_183722_243920_690342E1 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 07:42:41PM +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> Update device tree binding documention for the display subsystem for
> Mediatek MT8183 SOCs
> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> index 70770fe..2418c56 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> @@ -28,6 +28,7 @@ Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt.
>  Required properties (all function blocks):
>  - compatible: "mediatek,<chip>-disp-<function>", one of
>  	"mediatek,<chip>-disp-ovl"   		- overlay (4 layers, blending, csc)
> +	"mediatek,<chip>-disp-ovl-2l"           - overlay (2 layers, blending, csc)

Does a single chip have a mixture of this block doing 2 and 4 layers? If 
not, the <chip> part implies 2 vs. 4 layers.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
