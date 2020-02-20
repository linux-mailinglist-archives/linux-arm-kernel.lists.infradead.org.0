Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A07B165359
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 01:08:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wuu/X8zdmnXJuHra76L1mHwoQ2N9VwPLGUgscK88L4A=; b=gHkxN20gjqVhsj
	Lq9G7oiTNEPOnQ7hlwo2auyn48idoKxp8wUO9ckd3h+Of9+TH7kpHDcmW9oup+1ZWj6cDURMI/Wet
	2BAHe4Wjm8IgyDTwbpbku+ZN3pQ1n4EDZxEcSpudiYQdwPUBkQ+pdfA+TSWG8Q69pv0/1kJ822YN4
	v3QzBs7iej7/ZhDGadoe5foiCv0Zvh5wYgc/g32n3Vy8A1jw6BESAuHy/6nrvzoGOObxRB/FloQlg
	LJkzuNQHXkTMmDugnTSyYH+XTze/8tqDSmRb6q7Qvgzhy8EwBvdejhSmp2AM9z3t/52CyU45akinl
	6KoD6DUEHh4JSrG+ZPQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ZNw-0000Jy-L9; Thu, 20 Feb 2020 00:08:08 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ZNn-0000JF-Sf
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 00:08:01 +0000
Received: by mail-ot1-f68.google.com with SMTP id j16so2033736otl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 16:07:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fs7aFUGuQDQwKtAq2jogalwziBPX7+a0D4piqySvYe0=;
 b=UnLloTtvh2E3GJi8v2mtK9v+RnZrfPvrBWCJuC1LqhYD8/67ucw4OtWuesPjXOSvoV
 hI74drKa5PmftPT4Y2R2QLCsfm50K6iNYPsZ+2lJhKBfCx+wvpOdwJfs2SWNwvTPDQpE
 bj/ywdvkaJ5yVYLEua8HJwSW9w1pBMIJP2h3xXQiJTWQTZPqasR1LwBbARRdhfdkCcWa
 6JGtYK4Xfe19GtUrcjICmGA1si0CUW6mpFc3qf3zfB0aYE3EG53mMn7CZJRfqO5ijEWB
 o2wYRdUAXobUk/wMOMAwehhY/UNFovIuzTwJReH2LyOgnzL66cXnlKUoNHnLxhU/Ogkn
 ymzQ==
X-Gm-Message-State: APjAAAV3kEZWxj+uUB71bYvxRyN5eg6o/pAXC4ea98Am85oCCCw6UZqs
 67SGLT/dTcuoCQdrT4Vwh8G67uCg
X-Google-Smtp-Source: APXvYqzQsTLyf5YO8tJlvys8kpS5yIcdg5MYs17ZecS72j39wdFGLlZxjeKJmp4ojnnB5kiN3+ExyQ==
X-Received: by 2002:a9d:5e82:: with SMTP id f2mr20705217otl.240.1582157276533; 
 Wed, 19 Feb 2020 16:07:56 -0800 (PST)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com.
 [209.85.210.41])
 by smtp.gmail.com with ESMTPSA id n2sm502156oia.58.2020.02.19.16.07.55
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Feb 2020 16:07:56 -0800 (PST)
Received: by mail-ot1-f41.google.com with SMTP id b3so806458otp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 16:07:55 -0800 (PST)
X-Received: by 2002:a05:6830:1c8:: with SMTP id
 r8mr8886101ota.63.1582157275705; 
 Wed, 19 Feb 2020 16:07:55 -0800 (PST)
MIME-Version: 1.0
References: <1576170032-3124-1-git-send-email-youri.querry_1@nxp.com>
 <a46accbc-becf-ad23-8504-70ce619e2b11@oss.nxp.com>
In-Reply-To: <a46accbc-becf-ad23-8504-70ce619e2b11@oss.nxp.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Wed, 19 Feb 2020 18:07:44 -0600
X-Gmail-Original-Message-ID: <CADRPPNQ4UK6EvYG6ffdU=dvO-tD7crWJ==diq8ueBBAyCvEdLw@mail.gmail.com>
Message-ID: <CADRPPNQ4UK6EvYG6ffdU=dvO-tD7crWJ==diq8ueBBAyCvEdLw@mail.gmail.com>
Subject: Re: [PATCH 0/3] soc: fsl: dpio: Enable QMAN batch enqueuing
To: Roy Pledge <roy.pledge@oss.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_160759_925704_4964EAC3 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pku.leo[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Roy Pledge <roy.pledge@nxp.com>,
 Alexandru Marginean <alexandru.marginean@nxp.com>,
 Youri Querry <youri.querry_1@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 6, 2020 at 2:41 PM Roy Pledge <roy.pledge@oss.nxp.com> wrote:
>
> On 12/12/2019 12:01 PM, Youri Querry wrote:
> > This patch set consists of:
> > - We added an interface to enqueue several packets at a time and
> >    improve performance.
> > - Make the algorithm decisions once at initialization and use
> >    function pointers to improve performance.
> > - Replaced the QMAN enqueue array mode algorithm with a ring
> >    mode algorithm. This is to make the enqueue of several frames
> >    at a time more effective.
> >
> > Youri Querry (3):
> >    soc: fsl: dpio: Adding QMAN multiple enqueue interface.
> >    soc: fsl: dpio: QMAN performance improvement. Function pointer
> >      indirection.
> >    soc: fsl: dpio: Replace QMAN array mode by ring mode enqueue.
> >
> >   drivers/soc/fsl/dpio/dpio-service.c |  69 +++-
> >   drivers/soc/fsl/dpio/qbman-portal.c | 766 ++++++++++++++++++++++++++++++++----
> >   drivers/soc/fsl/dpio/qbman-portal.h | 158 +++++++-
> >   include/soc/fsl/dpaa2-io.h          |   6 +-
> >   4 files changed, 907 insertions(+), 92 deletions(-)
> >
> Acked-by: Roy Pledge <roy.pledge@nxp.com>

Series applied with some clean up and typo fix in the title/commit message.

Regards,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
