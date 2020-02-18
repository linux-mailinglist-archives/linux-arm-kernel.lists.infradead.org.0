Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E7D162FA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:18:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l2PVfFVMvTZ7JdAD6FXclkO3bvtIENazsgyDJzvBOgc=; b=C5sCTf6v+YFkpv
	FiqMkQaKO9JZqOk20x/j+N8MFIGa0+4UcT5hd+wVSYMZrPX3EL1Sno30dNmetZ5Hg4hVK+BxAAJhh
	dwUGh+e6txz/eVD+T5hmbm54PrIvmkoJiJoImhFBCtlR3R1QtFvkoOuOTBdM8tqBkAWgoMFxDRNjF
	u7n8jS2RB/WFuyev02JhF0sk1YpIAdpgebZ2eJuDI1A0J5ZuUmhA5U+/CYZGpoFNxqUYIPNgeSc+M
	pTiHpthSumm2+8sRYWQsjk6r4Mn2aMBONQ4oeVyGvBxBOQ5qHV7+6Ja/F+xPdDrZ1sKb76lBTWuZB
	3td2iy7pws6aowzMzKQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48Ny-0008Kl-HN; Tue, 18 Feb 2020 19:18:22 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48Nl-0008IT-DW
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:18:15 +0000
Received: by mail-pf1-x442.google.com with SMTP id p14so11133576pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:17:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hdis5Be2VylUOrCt10Cz6Yqnuk5YbPer1SATYKuRYm8=;
 b=d3gbxN0Eb1BCaa9gLyAoMPLm5uMOU4lHLgDMa8jfpH75ogLpXd95m95AIF0mTusmEH
 MUeKNqN0pYIwbAenzEdd6QpZDEC3FdYztj5vWXSffv/HT+hONr42+wiXCyRKuFNj1apz
 n1LZFAkPvnE/YliBP06K+CKh6vpG8IpwT9/g3jh7gZqPhdmJRh3TxNCoygUucNGuzWMU
 b912pH7Dx43ouulUY7T/lbOSD+DiLBgyaO1gaPYf2pN8VNRYmL0dwodx8Rc4fiBCYnJ9
 LS39tFVs1CRnOIgEToMois9djIZNuXBl5ptwoeDJX0ldqSpEPS5DeLhZj0mIua5gEtGN
 rCeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hdis5Be2VylUOrCt10Cz6Yqnuk5YbPer1SATYKuRYm8=;
 b=cAxJdos266/Qkom8YF69lkyYT4ltWl+gnTR1wXaYpeTeK2U5mz6XUzQARsc71gMORZ
 vC9bIJ9DeDL/YFF/c6MG4dPTJj6Aq5Q5HQaRy8dw+hVp9DHyBrEgS6ALkGueEv1LNPYK
 Ev1oeSMFGkFaPWQieA+i88xmbds1t9WNFQyoaCyTph9st0sm67qepB0DkMUnCybnLWqO
 bif7si9PDsT6ivDhQYrX49ff+tSZeQJ/42HS39WESA3Yq074tDFQtU5buZAcm8XGevqB
 67ehesqjQHIR14zsy7ZuvhvLmoKVnRbgChlVVJ7efuqmq3fKM/4EN9vdnHsSLbNABoOi
 P+qA==
X-Gm-Message-State: APjAAAXUqRPpe4U+qHOUexCpumdanMxydqgHCkwyEmAuLOPIZSCd2iV9
 Gl7awL+Y+VU0hapetIbv0Zbo6Q==
X-Google-Smtp-Source: APXvYqyh0pn6jwE7x9qEuaVNzph8xYHQuv1XhcCWUwyL8qLvGC2/yIcQyOL4I2O/iBd7nq53fqFDCg==
X-Received: by 2002:a63:d18:: with SMTP id c24mr24447947pgl.218.1582053478100; 
 Tue, 18 Feb 2020 11:17:58 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.173])
 by smtp.gmail.com with ESMTPSA id a35sm5769697pgl.20.2020.02.18.11.17.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Feb 2020 11:17:57 -0800 (PST)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Wed, 19 Feb 2020 00:47:47 +0530
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: [PATCH] staging: bcm2835-camera: call function instead of macro
Message-ID: <20200218191747.GA12782@kaaira-HP-Pavilion-Notebook>
References: <20200218160727.GA17010@kaaira-HP-Pavilion-Notebook>
 <20200218183711.GE19641@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218183711.GE19641@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_111809_462161_660F7C5C 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 09:37:11PM +0300, Dan Carpenter wrote:
> On Tue, Feb 18, 2020 at 09:37:28PM +0530, Kaaira Gupta wrote:
> > Fix checkpatch.pl warning of 'macro argument reuse' in bcm2835-camera.h
> > by removing the macro and calling the function, written in macro in
> > bcm2835-camera.h, directly in bcm2835-camera.c
> > 
> > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > ---
> >  .../bcm2835-camera/bcm2835-camera.c           | 28 +++++++++++++++----
> >  .../bcm2835-camera/bcm2835-camera.h           | 10 -------
> >  2 files changed, 22 insertions(+), 16 deletions(-)
> > 
> > diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > index 1ef31a984741..19b3ba80d0e7 100644
> > --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > @@ -919,9 +919,17 @@ static int vidioc_g_fmt_vid_cap(struct file *file, void *priv,
> >  	else
> >  		f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
> >  	f->fmt.pix.priv = 0;
> > -
> > -	v4l2_dump_pix_format(1, bcm2835_v4l2_debug, &dev->v4l2_dev, &f->fmt.pix,
> > -			     __func__);
> > +	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
> > +		 "%s: w %u h %u field %u pfmt 0x%x bpl %u sz_img %u colorspace 0x%x priv %u\n",
> > +		  __func__,
> > +		 (&f->fmt.pix)->width,
> > +		 (&f->fmt.pix)->height,
> > +		 (&f->fmt.pix)->field,
> > +		 (&f->fmt.pix)->pixelformat,
> > +		 (&f->fmt.pix)->bytesperline,
> > +		 (&f->fmt.pix)->sizeimage,
> > +		 (&f->fmt.pix)->colorspace,
> > +		 (&f->fmt.pix)->priv);
> 
> This is not as nice to look at as the original.  Just ignore the
> warning.
> 
> regards,
> dan carpenter
>
So, is this warning to be ignored from everywhere in every driver, as it
doesn't look good? And if yes, then why is it there in the first place?

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
