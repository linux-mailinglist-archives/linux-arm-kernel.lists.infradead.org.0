Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B32501F6C65
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 18:50:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ihx3tXcKMnbj1ro6bn35OXQfVUp9ECn6JII8OJu7QKo=; b=mkFLR7iUtgdPAr
	rRt27ea2CfZjXBgglCQBUZFHeaASHoe3l8b4EUQfGLQjHnNVYSLy+rl3IdHUm/gkKsJ+zYlzfOJAR
	jfbT0d4sJcWZKu0rBjFd5LS3cgnn+qea2q0Q05T12GRprsEW42z+9sPzu56FABW9jyMZ/IMil1A4a
	2xcYK36U8zLcYrmVcs9Jet/ev2KsXTY/PHEDpAfGanVt30f0SNDOd7Td3Q6sMEk9TgYCSTQgJYJai
	FD26efcukRTcBN0icWnel5DzLWNtRglLE9e7/2s4rdGdh3qWKsFoTmfqudgYPyKeA3u9tRNz6bv9+
	5NMJvizDTlHCcNTXQbqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjQPQ-0000eK-I7; Thu, 11 Jun 2020 16:50:32 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjQPE-0000dV-QM
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 16:50:22 +0000
Received: by mail-wr1-x441.google.com with SMTP id h5so6908861wrc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 09:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6515e9EWm5jt/wBgz8o5nKQ9DvkrHHIupbzxxJRVBVw=;
 b=AcM0ENgyTIkG6prNtB2Wvpox2sVZ27dEKDUc422WU4R+XKKKmjv+AK8dJhbyjr5f0E
 Gqk2J2yjUjkwphycoKSuVZLv640rr5CniCwIDWJ9MBayJjfeZDpqDifwk7iSMLH0tjG3
 RT1Lg4t5OrAWguqWn/SzEdsA8mHG5KKaMJ2Ag=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6515e9EWm5jt/wBgz8o5nKQ9DvkrHHIupbzxxJRVBVw=;
 b=fdcsUbeSLDvCloSTPI3Bjgb8heQOicPf26d8jdNazNKyRWrVr/BHXPl+131GCEj2Bx
 urCGVodUtvykq+1xRVLCNHazyky/hkUlMg/vLZtY2BJjSHnoy9wpFqsoSZbB0f4RC6LL
 Mf6D7RQ/wEdYmesfsG2rMOFJN8yy10wS3KY1QhYDR79M9C42by2yyTlPpgn8YrwZGwGa
 DElA3sUMYR5ks4hZAs02QAP+zZf9nLhG6M4ewBJIoTA/0VLTNPEjuuy9eL33+yQvo/IZ
 lez/8OQG8yzeeUq1iBc2Vl8Xop5KLXPbjrGDI7F7Upr74d3oy6oPdMPuKzC1Nprns3v0
 sMOg==
X-Gm-Message-State: AOAM533vN6O62H8s0fVhrU1ej0hhiNyHs0/ZEr7QUKa6b2WEKNDrRi0L
 MRZoQ3666sj6x4gEn1VvALXqjg==
X-Google-Smtp-Source: ABdhPJwsVmMDI0pm3cj4yymPaJuKLgVFy93RQHQ3urhSAFwhD7NTFT5tUA1Bg2Gwg0wQixixd9PrjQ==
X-Received: by 2002:a05:6000:18c:: with SMTP id
 p12mr11124576wrx.66.1591894219582; 
 Thu, 11 Jun 2020 09:50:19 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id d17sm6217221wrg.75.2020.06.11.09.50.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 09:50:19 -0700 (PDT)
Date: Thu, 11 Jun 2020 16:50:17 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH RESEND v9 13/18] media: platform: Delete redundant code
 and add annotation for an enum
Message-ID: <20200611165017.GB8694@chromium.org>
References: <20200604090553.10861-1-xia.jiang@mediatek.com>
 <20200604090553.10861-15-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604090553.10861-15-xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_095020_853565_E9C3AAD1 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi Xia,

On Thu, Jun 04, 2020 at 05:05:48PM +0800, Xia Jiang wrote:
> Delete unused member variables annotation.
> Delete unused variable definition.
> Delete redundant log print, because V4L2 debug logs already print it.
> Add annotation for enum mtk_jpeg_ctx_state.
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
> v9: add annotation for enum mtk_jpeg_ctx_state
> ---
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 15 ++-------------
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h |  8 ++++++--
>  2 files changed, 8 insertions(+), 15 deletions(-)
> 

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
