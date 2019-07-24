Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B5673D65
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 22:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PBkMQcDtN791y0SpscsmZwjFSUNpdKi/FFuHiiDd9/s=; b=a0ciAxyViUcCKV
	qp7RC+c58Pm1uyKICrV35j0P0iDMbjzsFFbMMDczlrjefSYHx0MXjR1zqIkF/aF/X3Hfw+G86wlXx
	OFDK8e4zvR5jEJIffQ5JCt9ai/zDDsgY2JxHvrH7zP5Zjth/zLgqbmVHhlyLp7PSkKiX21AW7tHIc
	W0BIIYob7dmiTYnqJbwl8Kyi5u2dFQeD9rIyYtvH9TY94tY6rd7GgbvMww01TtOurXwgaKEP36ciF
	DEU8dWWdxiqPVVF05+b6iAqiE3p0C42gSS9JxYJQef3rw5Et0iadjlDifUFwQoBJC4ndNrTiH9bGM
	iyw94j3V54jdlr9SBOdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqNh2-0000ze-3O; Wed, 24 Jul 2019 20:16:56 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqNgk-0000yw-6J; Wed, 24 Jul 2019 20:16:39 +0000
Received: by mail-io1-f65.google.com with SMTP id h6so5772957iom.7;
 Wed, 24 Jul 2019 13:16:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SleUqq6V31kzUwMjIX1qfrELhcVA/KVuaspMZ04YgL4=;
 b=Bvytiyf83ALb+k4TSL4OWX4+mMABdLnctFvffTmrf3OpcTciYjPwm/LBUWI9WpkBHe
 OzmmQmyXVSqTz47kxFFvZoQ3P4dC5L99wW7gP3x+4+bh7LgjwKKmd25/8gVIBp1+tjcb
 zuN/8ev6/qfMJoxgSuLiLoEj/4oKrQXkuejt/0Amp5SB/1jlusu2sxZAlrv7Te1NCxb5
 Ld5rRHUpkQ67zzXnXLmwYlD/FMGBm8uJLaZuVzbnTW+eSweXm+/Q0m5bmtX/+gos3rQY
 5s3N28uavVnuOPuKYsh2r5A4o9miHVekxy310f1H52klhGqwVHGVX6Gw6mYGei0LTL2B
 kQlw==
X-Gm-Message-State: APjAAAUcgq839uGNh1e6Lf9zWgBs3rOt9GI9utWjcEe/DDpLSmjGDQRu
 mpcz9WKErP7Z8T1iPehDxg==
X-Google-Smtp-Source: APXvYqwqmUodaynFku7YClU/Ql2xFlbvkHEw7X/q17Yh5pYFol9maQFHH3YaP1av1prEvMzfEF8uMA==
X-Received: by 2002:a6b:6f06:: with SMTP id k6mr2226288ioc.32.1563999397076;
 Wed, 24 Jul 2019 13:16:37 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id i23sm33894203ioj.24.2019.07.24.13.16.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 13:16:36 -0700 (PDT)
Date: Wed, 24 Jul 2019 14:16:35 -0600
From: Rob Herring <robh@kernel.org>
To: yongqiang.niu@mediatek.com
Subject: Re: [PATCH v4, 05/33] dt-bindings: mediatek: add RDMA1 description
 for mt8183 display
Message-ID: <20190724201635.GA18345@bogus>
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
 <1562625253-29254-6-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562625253-29254-6-git-send-email-yongqiang.niu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_131638_241135_42297B48 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Tue, Jul 09, 2019 at 06:33:45AM +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> This patch add RDMA1 description for mt8183 display
> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> index afd3c90..bb9274a 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> @@ -30,6 +30,7 @@ Required properties (all function blocks):
>  	"mediatek,<chip>-disp-ovl"   		- overlay (4 layers, blending, csc)
>  	"mediatek,<chip>-disp-ovl-2l"           - overlay (2 layers, blending, csc)
>  	"mediatek,<chip>-disp-rdma"  		- read DMA / line buffer
> +	"mediatek,<chip>-disp-rdma1"            - function is same with RDMA, fifo size is different

This can't be determined by which chip it is? IOW, a chip may have both 
rdma and rdma1?

>  	"mediatek,<chip>-disp-wdma"  		- write DMA
>  	"mediatek,<chip>-disp-ccorr"            - color correction
>  	"mediatek,<chip>-disp-color" 		- color processor
> -- 
> 1.8.1.1.dirty
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
