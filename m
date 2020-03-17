Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D341890F3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 23:02:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iP7zj5CG+V8WIQ4xWJfQ8VVgJau0TKCUzkJPL6vpsqM=; b=O0GybaWqgRtmTO
	NgQm3xGu1Uw0XBBANj0627jnXmYu3IhwpQZsB1+G2U3D6quixI3gQvozY1hyjkjP3FrPsLArK1rUU
	sDVYaXwNbabHRPEnwG2358zsSf2YfdSBrK/YlaPhTmUBINIW7V9oi4OhTBoIsmZ0sEcMRqKHF4/7a
	exW97cQtW60zumb5CXWPpf9cPEd11EnW7QJ0idKP6BoL2X8G7W9fXBhe6TqMstquwTn7/tFk51tqz
	GAARkklasKOH5nVc/CqOEXnTCcSVUBgU2DTof9J43XYnSID52zOIw16CHiJGcRHWOGNogbWhsr9Qc
	2V9APwPHYZGJ5RPN3uaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEKHy-0004ZJ-3a; Tue, 17 Mar 2020 22:02:18 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEKHp-0004Yi-7K
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 22:02:10 +0000
Received: by mail-oi1-f193.google.com with SMTP id k18so23591476oib.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 15:02:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ya5i9h9BDB0gF/4044yCkDpgVppUSZpZ2zck8bl6SA0=;
 b=WvjBWcc2B4tkZ/bYuVIPiykBlin2agdMwok19zoHwghYjZGP4krGt7fu0l2Inerz2W
 SI5vP+XUr4BO4fg5HrzscyYMX2QJ/E0MYU6Qotfa0CeKxTpRwtnApeOR4wrBamR5V5yj
 FS7IMTp+j9wf6ymIFC9D4t/97ucnndcKMMc5IM3KdePItsPdLmFCOTqyUcxboROWPnir
 n2BvRmYtQDGzQmWIujVzflbmBp3O+RVnEcDt1xN0T5zYmIeDU5ngerws7jj5ouJnNOa8
 sh7H8qGWrJItygvxog/wdY8wXrMfwrdtbnncBq7sNK2AWKq5YqQzPOT6a7S4UX5ZVL8J
 d3Hw==
X-Gm-Message-State: ANhLgQ0Us1lM/wcRaUKvZ+KpNbPrwoXedvP057oO/ToDUhwC32tFRuaS
 OzqId2JSsTZTHrJVvWJU4aMew0Iu
X-Google-Smtp-Source: ADFU+vsuMTWUqg/9ywtsyMhXbp5iTbo62G4w1kx0K6Jq3Uar8allXu0ENnDHFK/zSYVqev0b9kE5mQ==
X-Received: by 2002:a54:4e0e:: with SMTP id a14mr865015oiy.88.1584482527495;
 Tue, 17 Mar 2020 15:02:07 -0700 (PDT)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com.
 [209.85.210.44])
 by smtp.gmail.com with ESMTPSA id g18sm1485052oib.36.2020.03.17.15.02.07
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Mar 2020 15:02:07 -0700 (PDT)
Received: by mail-ot1-f44.google.com with SMTP id r2so8014282otn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 15:02:07 -0700 (PDT)
X-Received: by 2002:a9d:7607:: with SMTP id k7mr1220783otl.205.1584482526826; 
 Tue, 17 Mar 2020 15:02:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200312222827.17409-1-leoyang.li@nxp.com>
 <20200312222827.17409-7-leoyang.li@nxp.com>
 <b9c5a514-18c1-e36c-1595-2b86c9bfcff1@rasmusvillemoes.dk>
In-Reply-To: <b9c5a514-18c1-e36c-1595-2b86c9bfcff1@rasmusvillemoes.dk>
From: Li Yang <leoyang.li@nxp.com>
Date: Tue, 17 Mar 2020 17:01:55 -0500
X-Gmail-Original-Message-ID: <CADRPPNT2vRNU6uddqhqUcmyNVOpFbEUz+F5giCSfm9q5ZdYH5A@mail.gmail.com>
Message-ID: <CADRPPNT2vRNU6uddqhqUcmyNVOpFbEUz+F5giCSfm9q5ZdYH5A@mail.gmail.com>
Subject: Re: [PATCH 6/6] soc: fsl: qe: fix sparse warnings for ucc_slow.c
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_150209_267343_4D57E543 
X-CRM114-Status: GOOD (  23.49  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pku.leo[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: lkml <linux-kernel@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Timur Tabi <timur@kernel.org>,
 Zhao Qiang <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 4:08 PM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:
>
> On 12/03/2020 23.28, Li Yang wrote:
> > Fixes the following sparse warnings:
> >
> [snip]
> >
> > Also removed the unneccessary clearing for kzalloc'ed structure.
>
> Please don't mix that in the same patch, do it in a preparatory patch.
> That makes reviewing much easier.

Thanks for the review.

One of the few lines removed are actually causing sparse warning,
that's why I changed this together with the sparse fixes.  I can add
all the lines removed in the log for better record.

>
> >
> >       /* Get PRAM base */
> >       uccs->us_pram_offset =
> > @@ -231,24 +224,24 @@ int ucc_slow_init(struct ucc_slow_info * us_info, struct ucc_slow_private ** ucc
> >               /* clear bd buffer */
> >               qe_iowrite32be(0, &bd->buf);
> >               /* set bd status and length */
> > -             qe_iowrite32be(0, (u32 *)bd);
> > +             qe_iowrite32be(0, (u32 __iomem *)bd);
>
> It's cleaner to do two qe_iowrite16be to &bd->status and &bd->length,
> that avoids the casting altogether.

It probably is cleaner, but also slower for the bd manipulation that
can be in the hot path.  The QE code has been using this way to
access/update the bd status and length together for a long time.  And
I remembered that it could help to prevent synchronization issues for
accessing status and length separately.

It is probably cleaner to change the data structure to use union for
accessing status and length together.  But that will need a big change
to update all the current users of the structure which I don't have
the time to do right now.

>
> >               bd++;
> >       }
> >       /* for last BD set Wrap bit */
> >       qe_iowrite32be(0, &bd->buf);
> > -     qe_iowrite32be(cpu_to_be32(T_W), (u32 *)bd);
> > +     qe_iowrite32be(T_W, (u32 __iomem *)bd);
>
> Yeah, and this is why. Who can actually keep track of where that bit
> ends up being set with that casting going on. Please use
> qe_iowrite16be() with an appropriately modified constant to the
> appropriate field instead of these games.
>
> And if the hardware doesn't support 16 bit writes, the definition of
> struct qe_bd is wrong and should have a single __be32 status_length
> field, with appropriate accessors defined.

Same comment as above.

>
> >       /* Init Rx bds */
> >       bd = uccs->rx_bd = qe_muram_addr(uccs->rx_base_offset);
> >       for (i = 0; i < us_info->rx_bd_ring_len - 1; i++) {
> >               /* set bd status and length */
> > -             qe_iowrite32be(0, (u32 *)bd);
> > +             qe_iowrite32be(0, (u32 __iomem *)bd);
>
> Same.
>
> >               /* clear bd buffer */
> >               qe_iowrite32be(0, &bd->buf);
> >               bd++;
> >       }
> >       /* for last BD set Wrap bit */
> > -     qe_iowrite32be(cpu_to_be32(R_W), (u32 *)bd);
> > +     qe_iowrite32be(R_W, (u32 __iomem *)bd);
>
> Same.
>
> >       qe_iowrite32be(0, &bd->buf);
> >
> >       /* Set GUMR (For more details see the hardware spec.). */
> > @@ -273,8 +266,8 @@ int ucc_slow_init(struct ucc_slow_info * us_info, struct ucc_slow_private ** ucc
> >       qe_iowrite32be(gumr, &us_regs->gumr_h);
> >
> >       /* gumr_l */
> > -     gumr = us_info->tdcr | us_info->rdcr | us_info->tenc | us_info->renc |
> > -             us_info->diag | us_info->mode;
> > +     gumr = (u32)us_info->tdcr | (u32)us_info->rdcr | (u32)us_info->tenc |
> > +            (u32)us_info->renc | (u32)us_info->diag | (u32)us_info->mode;
>
> Are the tdcr, rdcr, tenc, renc fields actually set anywhere (the same
> for the diag and mode, but word-grepping for those give way too many
> false positives)? They seem to be a somewhat pointless split out of the
> bitfields of gumr_l, and not populated anywhere?. That's not directly
> related to this patch, of course, but getting rid of them first (if they
> are indeed completely unused) might make the sparse cleanup a little
> simpler.

I would agree with you that is not neccessary to create different enum
types for these bits in the same register in the first place.  But I
would like to prevent aggressive cleanups of this driver for old
hardware that is becoming harder and harder to be thoroughly tested
right now.  These fields are probably not used by the in tree ucc_uart
driver right now.  But as a generic library for QE, I think it is
harmless to keep these simple code there for potentially customized
version of the uart driver or other ucc slow drivers.

Regards,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
