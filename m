Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9812B43498
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 11:20:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n8fFQg+19LZPgyD7O1R6sthprvrzcuM09CLb+kTXyAY=; b=rjjtXN4zCUcko9
	3rqsUjv0dOsFRMsf/20UzUlJR7kNkzHSGynxgkBEbn8pqHGJrovkKPsnxiKVf/hzfyvEEnKmqbiCy
	gU6GEKKaXuZxTB2cSRUnxddXB1qMZ4mgFEM301K8ndstTv8A37L4pADGU/xm8gxwrFMtxt95CBXTQ
	fukpwJWMMncUElbdP1YESzmFWNXFKwYuBEk8XLZWkiaWKJYFMktJgo7gvMhl4bQbbdM/ycR0VIdHA
	3wNVC6KpU103wV0N4UwmF4K+pZnVdb6X+l8WE51oQu9u4A5y1CZV5XWURIq/NvzRxqt3dWphnRkx5
	fxeTjCJlTFd+ZWIsdWtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbLuW-00088B-Ce; Thu, 13 Jun 2019 09:20:44 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbLu8-000841-4e
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 09:20:21 +0000
Received: by mail-wm1-x342.google.com with SMTP id z23so9292774wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 02:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kotA5N9EoUxhGkMwLE3/QhHcmiICXj1ka23TDvB3rSM=;
 b=FJ8biDWxyeoMYEpxvOrTcrucGhSnQZXA9kUvxSyUo6V4DerOufEcXA7Z1ssTQwCwpS
 bsMvySOAoDvKrrCgCPIAOT9GsWHNT1Lp06Gmqoh0hYboenGzdtTEFPxoJI7TkX5RvpFv
 Qcvq3eguvfL78hi5YEQeX5T+wEB4ZO5EMX3tN5H0VT6SIwcmPEmdzNfEDwT0AphM03M/
 US3ZxjNlsuUuoZTu9OUJOUVj6a7Y5rBQuqnHbssIC91vYa45GPMIhTkUZ6g4Gi+1DhR9
 DEx4zragsgMC8MkmxzjP2O2ZA9dE/1drWvrKZd1Z4kNecJK8UGR90l/mp7hMMVCxo5jS
 lkwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kotA5N9EoUxhGkMwLE3/QhHcmiICXj1ka23TDvB3rSM=;
 b=c4bYRLyaxsf/4Yd+fqWQEybCqEzjdG6ci1pFpQBvcQB6hCRP/4asFdIuvZ9gijIepE
 W0PmlfZWScwtNgE8HlPfAmkInjTNitWW67aU6QKGS3+vl1y2fSy65MLM68gFUqljH1MJ
 mYdxUR/HU2yuyon5CiExvGAUfuA0M6Y62NWmNMTizua59kTVZWL4mTIRu46ghJE3aHaJ
 9QO1cVdspkeqb5kPG5OYwEdjn3DvnzhpiGZsyNt5WE8ILvACYpDogDR7NYSHcTfy8yXw
 YDUn8QPCUBW8OLpKR/a0s1S4ZKFLUdRW36w7ETBzCifNcV4pEfUqE9eUtq+sY4ofkviR
 JxYA==
X-Gm-Message-State: APjAAAWcNiNSUrrTqxJnBc9dtTMHdSQAQL7bAAfs4oCpBKIlnA8hDORK
 T0H9BFNxbn3XLKgy1/IpPbHyYFctWFvF8Z12/VSyAw==
X-Google-Smtp-Source: APXvYqyF4beCFeHK+yRlaCF2vVGkbOQNCZTufPhtT/Uyk+odeT53Xmpq+5vVT2nuqZWItux6aLxsRUiBbqTIUkv7Yv8=
X-Received: by 2002:a1c:6c08:: with SMTP id h8mr2990087wmc.62.1560417618124;
 Thu, 13 Jun 2019 02:20:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190612144218.26149-1-colin.king@canonical.com>
In-Reply-To: <20190612144218.26149-1-colin.king@canonical.com>
From: Maxime Jourdan <mjourdan@baylibre.com>
Date: Thu, 13 Jun 2019 11:20:07 +0200
Message-ID: <CAMO6naxDNmsqUVgAJ2uMBsQPUjsYK6zLhgubNfeEB-GEdD7sOw@mail.gmail.com>
Subject: Re: [PATCH][next] staging: media: meson: remove redundant
 initialization of mpeg12
To: Colin King <colin.king@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_022020_326688_C1E3380D 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-media@lists.freedesktop.org, Kevin Hilman <khilman@baylibre.com>,
 linux-amlogic@lists.infradead.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Colin,
On Wed, Jun 12, 2019 at 4:42 PM Colin King <colin.king@canonical.com> wrote:
>
> From: Colin Ian King <colin.king@canonical.com>
>
> The pointer mpeg12 is being initialized however that value is never
> read and mpeg12 is being re-assigned almost immediately afterwards.
> Remove the redundant initialization.
>
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/staging/media/meson/vdec/codec_mpeg12.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/meson/vdec/codec_mpeg12.c b/drivers/staging/media/meson/vdec/codec_mpeg12.c
> index 5398fbf7ce20..48869cc3d973 100644
> --- a/drivers/staging/media/meson/vdec/codec_mpeg12.c
> +++ b/drivers/staging/media/meson/vdec/codec_mpeg12.c
> @@ -63,7 +63,7 @@ static void codec_mpeg12_recycle(struct amvdec_core *core, u32 buf_idx)
>  static int codec_mpeg12_start(struct amvdec_session *sess)
>  {
>         struct amvdec_core *core = sess->core;
> -       struct codec_mpeg12 *mpeg12 = sess->priv;
> +       struct codec_mpeg12 *mpeg12;
>         int ret;
>
>         mpeg12 = kzalloc(sizeof(*mpeg12), GFP_KERNEL);
> --
> 2.20.1
>

Thank you for the patch.

Acked-by: Maxime Jourdan <mjourdan@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
