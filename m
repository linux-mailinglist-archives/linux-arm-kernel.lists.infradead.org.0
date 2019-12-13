Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464BA11DED7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 08:48:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CamJKEl1RWo2Vuvqjyxz9S71cYnspKDBuTA+FCQLFOA=; b=JmGMvEMVr8Ifwa
	phoj9x9HsCGaLoah1JtlX9xCkVhtATeIkml49SXx1n4/v9eu1U0VJ0t87dSDIBkLsHEMTwygJcqJ/
	ecB15U38xyPWzIRw6OIiGTLUWseqOrmcSFDFrvdX54h+fqcuSrbl3k3EEQ+5hQRLyxxjpyxxnR8S+
	DKvWfyR7N6kwHRVKDwgYMaCtNFTh5vPjNW38vL8wnZeCHzJ1KvU3pbsk3I5MKRE9wLFzLkTjJBtfm
	mrCnOIEzesVIoH/jCWkFaZHXXtOXTQvWv6wRlcHdG69kA8CiG6u8O5IgM6J3eoaQ281hu9OH49dlg
	1SY2PMTGttTpOErUnUeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifffy-0006Ck-I5; Fri, 13 Dec 2019 07:47:50 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifffo-0006BN-CC
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 07:47:42 +0000
Received: by mail-wm1-x341.google.com with SMTP id p17so5476678wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 23:47:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vTSxvUqfa6FoEiQTgKaCRKQ961VVqjF3zVcNDPTqeUQ=;
 b=FygEFXPkvDTEqQFNc95GmEPQFaOALol3FJZVABII8mgatRtgdG31UxBB+q2f85tioV
 YaDq76YgKg19kavCxLDGCXYdqM9e4pt1+h8vMM1af+h493sGTqtu8x0x0Y7pDZ9rZODl
 D0Tmu44OHSSAi7XTfiw3ezo4lLtG/fvqKXr9UP1I7ioXEwEcTuWWl+MwWhGJYbEnMq+w
 ALx7B4du4u7jUwnaaQoo9t+S3X/fO96NeqeTQ28Ffuy5wSsYUMg78UyAtuMEUmLPhSNZ
 lUUoOAhyKE5fSjw0CUYEi+vy/hxr1Eua69Uhw+w3KzjGJP3OD8JUBE+JCzVqCd/mRebH
 8ZnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vTSxvUqfa6FoEiQTgKaCRKQ961VVqjF3zVcNDPTqeUQ=;
 b=KAe4AOXwozKGVKjwR/Yripp9kizZk2gSejc7mzowsEi8c2Cr+XbXzLCpaECbd+NZZk
 UgLGLWNfTu3VsT9fe5F+I3xkosxV7vTlkcyM4TaZC8+2knn2uB9eYaAGsZybaSFkIM/q
 2w1LytTS5/LgmW2nyjQFPjubltTFZvArDhyBJyjePKeEbl0Dzx0A6twOY+otj4ekU/26
 St1sPmj4Kg3m3j/4YRQLOgNRItPWbiuFwVnwji7V3oCA3kkpJDbaWien3sDcLB/JvmO+
 e0n2Q8YAFxboOh27XsOKRURw/8moSej15DaVLeE6IJAJvULhnvRbhW5UMzwKs/iy6VHM
 /v7Q==
X-Gm-Message-State: APjAAAUNuqhhn/IgFsPwF+1wZJhzu0DnPS9/AxrTDv1XVcmUUo99aNbX
 k3jqsDiKScTMBEKdT8Q6//+Oq/rA2tqr6nkzE1KqxA==
X-Google-Smtp-Source: APXvYqwNVH+CrxZcMnxSwclo0S3v7qgeIyd4KN1mrRn3wdEhUWxce27y0yPjv6LZIAM/PDIfAV+2naYwlAPl2eY/5zg=
X-Received: by 2002:a7b:cd84:: with SMTP id y4mr1059323wmj.57.1576223256882;
 Thu, 12 Dec 2019 23:47:36 -0800 (PST)
MIME-Version: 1.0
References: <20191204141159.1432387-1-colin.king@canonical.com>
 <20191205080611.GY93017@google.com>
In-Reply-To: <20191205080611.GY93017@google.com>
From: Maxime Jourdan <mjourdan@baylibre.com>
Date: Fri, 13 Dec 2019 08:47:26 +0100
Message-ID: <CAMO6naxT0syj74xvcectWXyVGmHfOU341A+15tC+GW4hsq+yJQ@mail.gmail.com>
Subject: Re: [PATCH] media: meson: add missing allocation failure check on
 new_buf
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_234740_529654_502CFFEE 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, Kevin Hilman <khilman@baylibre.com>,
 kernel-janitors@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Colin King <colin.king@canonical.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 5, 2019 at 9:06 AM Sergey Senozhatsky
<sergey.senozhatsky.work@gmail.com> wrote:
>
> On (19/12/04 14:11), Colin King wrote:
> [..]
> > diff --git a/drivers/staging/media/meson/vdec/vdec.c b/drivers/staging/media/meson/vdec/vdec.c
> > index 0a1a04fd5d13..8dd1396909d7 100644
> > --- a/drivers/staging/media/meson/vdec/vdec.c
> > +++ b/drivers/staging/media/meson/vdec/vdec.c
> > @@ -133,6 +133,8 @@ vdec_queue_recycle(struct amvdec_session *sess, struct vb2_buffer *vb)
> >       struct amvdec_buffer *new_buf;
> >
> >       new_buf = kmalloc(sizeof(*new_buf), GFP_KERNEL);
> > +     if (!new_buf)
> > +             return;
> >       new_buf->vb = vb;

Thanks for the patch Colin.

>
> So the buffer is not getting recycled? IOW is leaked?
>
>         -ss

The "recycle" mechanism in the meson vdec is a way to tell the
firmware that "hey, both userspace and kernel are done using this
buffer, you can start using it again".

Not queuing it for recycling means that the firmware won't use this
buffer again, it's not desirable of course, but if there is no memory
left to allocate a simple list element then there are bigger problems
at hand.

Either way, failing this allocation and returning instantly doesn't
leak anything or do any damage kernel-side.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
