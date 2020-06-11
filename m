Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D84811F6C5C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 18:49:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LelzpRqc1AwiqB9iRdv1/a5DbCjcJ1SvXhS4DFTXovA=; b=UQg+969IKJJi5n
	igC7xnWF8cu2q1HO9ESh/d6O4DWzVDf+G57X6Mw8Wcx4d9Y/75FVFSmrWCxymSTzZ/ei6+fCnZ5WM
	xD5cndoXhnWZ+Sn64NumXfy8oECe42hs324JEnnxZORo8pZlKRdscYMzrlIkBW9JCrkwHr+SsCnmV
	bjaz306z99Ma9qt14vASy8BPolu7pyinPVoAbi8+rhXb5SX0I4PLUJesI1SD2P/OhwdzPvFkc7khX
	6FtHYF4/2UliBRI9CB9Nf/6n4K7PXlMdKdRFqAylc4dj7/m6foaBRDc8nBShzN87y8FjcBcPaEAfO
	WOPqjuK3kGOQBAOvSqCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjQOB-000677-KX; Thu, 11 Jun 2020 16:49:15 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjQNy-00066K-MT
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 16:49:03 +0000
Received: by mail-wm1-x341.google.com with SMTP id f185so5708852wmf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 09:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=m9GN5WBKEYYIgIwqXSwTbOuQ7tSpufKewkY859VD9LM=;
 b=HSWrP87UGB+MThNp2ov2M6zIYZLHZyM9tjClOB6qyUS4MR3lFJvhcbxgMQPtlX4keX
 Guz1BkTJfTJJDseuVmY0mAHX/qTGcvJH8UBW43emcyHkEAcsZ5fyGYoIQG5zaCXbRwMp
 2x9t0TjTVlzuACBZ5Ey7aewg3gb+W2fxfZdLs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=m9GN5WBKEYYIgIwqXSwTbOuQ7tSpufKewkY859VD9LM=;
 b=c/+8LWXU7Ep/EVMHJkm4D0VATce9Dv83QoFFbGj5EqwX3ewsNv/MK25SY+c/7PZbxf
 ZAVCBmBtFR6q6XVlHUp20pTvg5DpdcOrGvJ68JdX3sf9kpD/USAIqVKrK8aOOoV+Cz3+
 PItPuNCJKppZhxPyshhy2YnMA1Mf4/Lx5Ju2Zhw2b7p1jp2LjGTRc+cEj+Tj3nLfCUH4
 +2S0NEGFc0LlI8y+DX8nZehdor36XD5+AAR+cAndimjPMjmraiwwFobDLYKDFS2NhsiC
 bZyzsJEU+yDvHArbeQlDgpdJ/+QvQutXSMRTFqqzmiJQHXqyUU5RBbGDDEDV/spLMoDR
 NHiQ==
X-Gm-Message-State: AOAM532Rl/mASyPhbaCzQgIacH+LmcsUeYs409alXw++s5ZghoGENGVG
 HFfKw/Z3HHtOjr4VyYmak8UMaA==
X-Google-Smtp-Source: ABdhPJxVAMW67/K46mT3Ow+twrNQzG3BwFWjaG3jRfjfJfAuUr3TOn/DQ9B52KybIBJfI0dVIFdeDA==
X-Received: by 2002:a1c:38c2:: with SMTP id f185mr9376689wma.79.1591894141050; 
 Thu, 11 Jun 2020 09:49:01 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id n23sm4666480wmc.21.2020.06.11.09.49.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 09:49:00 -0700 (PDT)
Date: Thu, 11 Jun 2020 16:48:59 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH RESEND v9 17/18] media: platform: Rename existing
 functions/defines/variables
Message-ID: <20200611164859.GA8694@chromium.org>
References: <20200604090553.10861-1-xia.jiang@mediatek.com>
 <20200604090553.10861-19-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604090553.10861-19-xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_094902_744569_2DE5DD51 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

On Thu, Jun 04, 2020 at 05:05:52PM +0800, Xia Jiang wrote:
> Rename existing funcitons/defines/variables with a  _dec prefix and
> without dec_ prefix to prepare for the addition of the jpeg encoder
> feature.
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
> v9: new patch
> ---
>  .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 200 +++++++++---------
>  .../media/platform/mtk-jpeg/mtk_jpeg_core.h   |   8 +-
>  .../media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h |   7 +-
>  3 files changed, 109 insertions(+), 106 deletions(-)
> 

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
