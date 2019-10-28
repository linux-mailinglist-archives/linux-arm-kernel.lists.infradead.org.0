Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A70E7745
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 18:06:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WcINy79/se9MsFUmXSzQdlWv+Fa/MgM0fOYYPlNGKzM=; b=Q2mim/7cVw/B04
	1XvPwTv99nG4qSnQ/njYhDuF2Whz8mr51t1ypt/Z2rMzAXdSUxl3ORhZQz60CU1YyvJsE+GdxXlne
	KphzNyI594RbXCcFItKsKutd5O+Lrw4hkZsEK1+6Z9xRVm1cjn0JkGDASApsQURU1LLoLB7/IC62D
	ZZEiMR7H7dK0vCXQkmcvkpEZPjo5+Yxthumhh3shYs8VpCDq+V8vFTagmkuXBWepeEfofNPVG/de4
	7/VOYqeUmMgCHeKrISboQzgbdOi7u4Lqo3TpiCmTF6oe5Onv38iMidhAUZnDhB8k+R3xzTh3gzLdf
	TIUpfdW/c+GKtCJzr5xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP8TO-0004Yk-4X; Mon, 28 Oct 2019 17:06:30 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP8TD-0004YK-Lk
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 17:06:21 +0000
Received: by mail-il1-x144.google.com with SMTP id z10so8818506ilo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 10:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qEZnOAl+fyol577/Ww6E9JnJ75gZF3IAAiee1LeCfz0=;
 b=JS8Fy9vgAdKI1FobnGClOfeD0pP41gqq5kqD7rnWblls7q2odK63Ol6xwiCU9Zt3Kk
 PPdk/JRUd0iUR8wz32PvlRY0otvIlahvYWrZwznaXZEVIxIn4/jPuAzFMsp5sJGVZpTY
 /NNuHZrnpV0yV019S6CtWPQGyn2FefiJ5Rs5vXnndxT0gVUAJT3HxlNfXwaQikrI1pVp
 +qa7kqGsaYHXdZwRLcvTnuC1c9s9lluWveBkjJVMS30yBn6FaRCZqHxiw7cO+caqI5IB
 8JkdkFI8+2aJKZBVCcQT62Psv92rV5tH3it3Dl6t07b6jVjVKEizlz+dOKlN2n+PL2Uv
 fYoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qEZnOAl+fyol577/Ww6E9JnJ75gZF3IAAiee1LeCfz0=;
 b=Yg9gYev+mome3/3jPEcwE1uzJYVrqItnpM9lCmbjsmtm91YzqbHLZxWcL6CUsR1jX2
 b87owzaY0Rq6tSkaSNgOm5oxCENlXxb0DS8Z27ZNhz4fafRfzY/8B4fPnfbszl+Vn7/7
 S3pdVNfqEq9iyFQ5ZFxOBQKX/RPLKvVKVAwtQhGffxE3Drhm9VXS7ZoswCdJ1dcjjBzH
 IzOptQBGzMtpb+ZFCigxGGuQILobWwhDKd316Atmh7gl+RgbIFdf+GBUef/BSbzedoc4
 tg2AwkHczHAUgYJS19cgjeqkClo7z4m3UdJwHYIS0xmb1HczOVfzvMgPHEd8doeihxWY
 eNjg==
X-Gm-Message-State: APjAAAVxoqdfHkNbfoOCOU0eaZLQ72HGeutO4C7EajFsiYGcx/QOKEZX
 tg83AooHT8IBJw2VddcoqFaXvd9zAqH3/O1TlakG85wfVx0=
X-Google-Smtp-Source: APXvYqxYIzKYXKMFa2CgHK7gcirYERSxMdE2I4RnMEWEhwn3UG4OKqYAn+/jnr8wxay0EFmyz1FqWZSWRzSEPIAP5fQ=
X-Received: by 2002:a92:6a04:: with SMTP id f4mr6280005ilc.252.1572282378109; 
 Mon, 28 Oct 2019 10:06:18 -0700 (PDT)
MIME-Version: 1.0
References: <d9c04318-586a-bfc2-fce6-6218c6bab1d6@linux.intel.com>
 <20191028165827.24949-1-navid.emamdoost@gmail.com>
 <6450dbb4-aa6f-627d-7e5d-21a20f560d60@linux.intel.com>
In-Reply-To: <6450dbb4-aa6f-627d-7e5d-21a20f560d60@linux.intel.com>
From: Navid Emamdoost <navid.emamdoost@gmail.com>
Date: Mon, 28 Oct 2019 12:06:07 -0500
Message-ID: <CAEkB2ETFNFKtGTo+HZ4L9uzr-W1CTeuGAwfKqm8hX5fx7d8dbQ@mail.gmail.com>
Subject: Re: [PATCH v2] media: aspeed-video: Fix memory leaks in
 aspeed_video_probe
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_100619_742972_01C63333 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Kangjie Lu <kjlu@umn.edu>, openbmc@lists.ozlabs.org,
 Eddie James <eajames@linux.ibm.com>, LKML <linux-kernel@vger.kernel.org>,
 Navid Emamdoost <emamd001@umn.edu>, Joel Stanley <joel@jms.id.au>,
 Stephen McCamant <smccaman@umn.edu>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 12:01 PM Jae Hyun Yoo
<jae.hyun.yoo@linux.intel.com> wrote:
>
> On 10/28/2019 9:58 AM, Navid Emamdoost wrote:
> > In the implementation of aspeed_video_probe() the allocated memory for
> > video should be released if either devm_ioremap_resource()
> > or aspeed_video_init() or aspeed_video_setup_video() fails. Replace
> > kzalloc() with devm_kzalloc to avoid explicit release for video.
> >
> > Fixes: d2b4387f3bdf ("media: platform: Add Aspeed Video Engine driver")
> > Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> > ---
> > Changes in v2:
> >       -- replace kzalloc with devm_kzalloc based on Jae Hyun Yoo
> > suggestion
> >
> >   drivers/media/platform/aspeed-video.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/media/platform/aspeed-video.c b/drivers/media/platform/aspeed-video.c
> > index eb12f3793062..2aa8ea2f9824 100644
> > --- a/drivers/media/platform/aspeed-video.c
> > +++ b/drivers/media/platform/aspeed-video.c
> > @@ -1646,7 +1646,7 @@ static int aspeed_video_probe(struct platform_device *pdev)
> >   {
> >       int rc;
> >       struct resource *res;
> > -     struct aspeed_video *video = kzalloc(sizeof(*video), GFP_KERNEL);
> > +     struct aspeed_video *video = devm_kzalloc(sizeof(*video), GFP_KERNEL);
>
> It can't be compiled. devm_kzalloc should have 3 parameters.
>

Oops! my bad. Do you think such a list of parameters is fine:
    devm_kzalloc(&pdev->dev, sizeof(*video), GFP_KERNEL);

> Cheers,
>
> Jae



-- 
Navid.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
