Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7C418167B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 12:03:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LaS5mdYiAVaXlZfwisvME/0Oa9TY+eMHmmVAdQ04GoY=; b=Q6yzKDhtM+AZcC
	GZC9Y/hFj8m489czGt4Wu0xbdVfYLIVu1qtf0sTcuV5UdLAZ/7e5NcaTR5wVwTNEui6ELfOR2o/j7
	wHjIfqkIQ0YHjujUCVJDBh6NwDEjWNU7cSJdXoysP9gm1xsDBVFnPosG1hSyWKw/4SBDas4p4D4WL
	G89hvT/yZZFzwMDhalLyzx0nsemnWnWwp20s8OQWhT8UW6O55OGbZZTN8DJyXH5KIGsLu0DR7vX2W
	/e9UZ4nSfvOIzaHtXGRGYSnNWpdqfTpOiM5H0Fv5ZxmdkN89eHA+3eghRxdqqseYF39e67NWOZKCR
	14hkeOSMjE0N64wTui/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBz8x-0005p4-II; Wed, 11 Mar 2020 11:03:19 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBz8i-0005nW-N8
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 11:03:05 +0000
Received: by mail-ed1-x544.google.com with SMTP id a13so2351260edh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 04:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jb6YNfpy0i4p0prPq7fXurxyCpu3UioYP/wK0SXZz40=;
 b=OzXiZdZxcla8lff01e5y1xu8R1or7O5akJh7vkF0kGDv+FIl4k+KI5dt7+u7bNa22f
 pEgi1+VeIA0u2roWjwGSIIVN7DccoliwZNCmhlmVo4+QDcI5e0XEPbQld3FfpR1P8z8I
 MP4yhJz3sMk7jvtXq8o0TB7XLMZod2m/M8uIQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jb6YNfpy0i4p0prPq7fXurxyCpu3UioYP/wK0SXZz40=;
 b=cKq5PwO+MuJzAFLRVa3PJk/LKUKIkxeRIpb/F4rfiE7zrkMs7hRSwsQvBjiDRPRiKr
 DC9oWKLYKjPKO1rdPSt6WKUGCc7UHFybTs0m8ZygV4yYLMu5/A5bAMvHi04OmEBDtPp8
 K5Kkq+/o7rY+6f8Suuy14dty8dViol07kQZBEJjg/wBkWvPlftoNKS7rHkNunKQHmhOX
 ti6ygER2FtglL7IkSN+GbhKU3BSCqBBTKnH5u3BZUOHmLCWXtpFrd4PMANvR7AKSDrMO
 LPAHzTx51gJrVjx2476Bq8fVrM5sYuyzCa9idO7KXhs7Q65qOxU9DstXGbS5lgtHXS+l
 ArIg==
X-Gm-Message-State: ANhLgQ3XZFrwZmtCOP719EQP9sRUPt8cc+RQDHS48KzoAH0X1sdYUOSr
 j23xLO5a+Pq60BgMiUaPAwj6rpXZOtx1gA==
X-Google-Smtp-Source: ADFU+vuqXJU3k64rJ+GzLbgrkBlZB2b0khRmI9mx+7HU/PpYAWVgAYNagE1WqxPsG6YBSPjWsXzMwg==
X-Received: by 2002:a17:906:a14:: with SMTP id
 w20mr1830578ejf.274.1583924583184; 
 Wed, 11 Mar 2020 04:03:03 -0700 (PDT)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com.
 [209.85.221.52])
 by smtp.gmail.com with ESMTPSA id da23sm4150849edb.85.2020.03.11.04.03.00
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Mar 2020 04:03:00 -0700 (PDT)
Received: by mail-wr1-f52.google.com with SMTP id l18so1986985wru.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 04:03:00 -0700 (PDT)
X-Received: by 2002:adf:f545:: with SMTP id j5mr3918965wrp.295.1583924580138; 
 Wed, 11 Mar 2020 04:03:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200303123446.20095-1-xia.jiang@mediatek.com>
 <20200303123446.20095-4-xia.jiang@mediatek.com>
In-Reply-To: <20200303123446.20095-4-xia.jiang@mediatek.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 11 Mar 2020 20:02:48 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AA6NtLDsqL3Ph8cwv5=ZYoPOiu4Wa85ky037qOyMH1QQ@mail.gmail.com>
Message-ID: <CAAFQd5AA6NtLDsqL3Ph8cwv5=ZYoPOiu4Wa85ky037qOyMH1QQ@mail.gmail.com>
Subject: Re: [PATCH v7 03/11] media: platform: Improve s_selection flow for
 bug fixing
To: Xia Jiang <xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_040304_751744_5DD447C7 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.0 PDS_OTHER_BAD_TLD      Untrustworthy TLDs [URI: r.top (top)]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-devicetree <devicetree@vger.kernel.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Rick Chang <rick.chang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xia,

On Tue, Mar 3, 2020 at 9:35 PM Xia Jiang <xia.jiang@mediatek.com> wrote:
>
> Get correct compose value in mtk_jpeg_s_selection function.

It's a good practice to describe why the current code is wrong and new is good.

>
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>

Thanks for the patch. Please see my comment inline.

> diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> index da0dae4b0fc9..fb2c8d026580 100644
> --- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> +++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> @@ -492,8 +492,8 @@ static int mtk_jpeg_s_selection(struct file *file, void *priv,
>         case V4L2_SEL_TGT_COMPOSE:
>                 s->r.left = 0;
>                 s->r.top = 0;
> -               s->r.width = ctx->out_q.w;
> -               s->r.height = ctx->out_q.h;
> +               ctx->out_q.w = s->r.width;
> +               ctx->out_q.h = s->r.height;
>                 break;
>         default:
>                 return -EINVAL;

The decoder compose target means the visible rectangle of the decoded
image, which comes from the stream metadata. It's not something that
can be set by the userspace.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
