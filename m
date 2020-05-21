Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B9F1DD23A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 17:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SLsRuQS0WzzCIls5j1qjxKpSRtIRzlPc8IKTfKFhooU=; b=hxyfyW9tHZRl1o
	lXVK5zpmvYT50KTgslMKwO2V6hxh9WKAptTQs4CzKIAMOvmK9tphSElmXTm0+HtlEA6Vr4WqrEBD8
	8vjcTjTghXurwXKlhkM74E/RoeTzN2ja2MNxMET16fxZS1qor+jMuDMCdddHHX9yUH0KxOe8g0jtG
	P6JCCq7tYTu5yPaAnWO8C+VbZ7ARjqSZGb8OBfahmF/v6T3exrgXBwqxee2jrB/IbFhxjEjcxrtV8
	GX1YS2scEVbIjj0SNe8EVW9YKfddaKECgpU3Q6q8fbrLx+itK6pKy1t566bcKlUt4wKY6ZfEHzKOQ
	9TbEDfGIsLe/0X8jyKDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbnNp-00024i-Gw; Thu, 21 May 2020 15:45:21 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbnNW-0001NW-H9
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 15:45:04 +0000
Received: by mail-wm1-x341.google.com with SMTP id n5so6847504wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 08:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=c5TekS/gqJoaBFfkjHpLDvrf7L/QxWIjFGYMdytg2QU=;
 b=Rgc33QsBa95gR1OJets/mqYh/8ScIm9Z5t7vXdmjSSxh5PLS1/t+6pIlBZO77OLD5J
 4/SThAZcFF4kRhjq9dnNJoF3MwPPSoaoUQRLMIzRbZ8uhGX2GCoKmgjKxF0R0USd1ST2
 Hxveu0oCMX2gddjgHaxcRfTayVTyvqoXZapjM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=c5TekS/gqJoaBFfkjHpLDvrf7L/QxWIjFGYMdytg2QU=;
 b=QZoOxmsIEkkdogCGdHec2aCpMiaxGZrD62u+bzRSRhpJXr9t6zP5V92SchdHdfbNdv
 gqKIDpKioSolegrP2yoefULQ4YGGz8pLmAprMxgj4lfCP7zVIWg2VprW2bu1xxirKAcq
 7lenHWxjApD3dOiVRw0oERnTuHQSg0AulNGgtepgfVGLhA51evdj5hRmL/Plinut/0li
 lATS6weMGoRn4yAaDwADbWSarQyIMNByOIbxrEJrTB7NuAPSJSh/f3vVIG5UK8Bhg9QB
 EnuUFQYAwuLUoJGHN7HMTOz2+Q+9bRIToT1Z1Z150x7PlIytGoRfNtWHqIjBHQOeEKAp
 FH4A==
X-Gm-Message-State: AOAM531JykfvU7HMK1f2f5dQmRP24wx8gqTA1aKkPPJ7YOT9jt7u/Tap
 ZsajQ3uOtvJWWjI/6YyCPYnUlQ==
X-Google-Smtp-Source: ABdhPJwAVu5t0ZqfWJtIhj/nNKgxybzQqBLtV6Ok88bjUrcykbcSSAFQiIz/IgQV0Ib4W3Spc6IFAg==
X-Received: by 2002:a1c:ed0b:: with SMTP id l11mr10060544wmh.31.1590075900750; 
 Thu, 21 May 2020 08:45:00 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id l11sm7201650wmf.28.2020.05.21.08.45.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 08:45:00 -0700 (PDT)
Date: Thu, 21 May 2020 15:44:58 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH v8 09/14] media: platform: Change MTK_JPEG_COMP_MAX macro
 definition location
Message-ID: <20200521154458.GH209565@chromium.org>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
 <20200403094033.8288-10-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403094033.8288-10-xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_084502_627869_DCF54E56 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: drinkcat@chromium.org, devicetree@vger.kernel.org, mojahsu@chromium.org,
 srv_heupstream@mediatek.com, Rick Chang <rick.chang@mediatek.com>,
 senozhatsky@chromium.org, linux-kernel@vger.kernel.org,
 maoguang.meng@mediatek.com, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 sj.huang@mediatek.com, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-mediatek@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 05:40:28PM +0800, Xia Jiang wrote:
> Move MTK_JPEG_COMP_MAX definition to mtk_jpeg_core.h file, because it
> is used by mtk_jpeg_core.c file.
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
> v8: no changes
> ---
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h | 2 ++
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h  | 1 -
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
