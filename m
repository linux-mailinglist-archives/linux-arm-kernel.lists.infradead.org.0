Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A31F9E875
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:11:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZhMgOutPx6rsP8tF62/SkLqZffuFvo7w2U4y6pp+WVA=; b=MTDDNWQ0xyiX3W
	A5XLPrC5gU3Eb9zcjwa9mKAECz8ktikz/e72iEVUxPpiErDGcEIuhSENaNFldL90CJ3eOllNY+/NC
	8UhuBKF+Y4LAAeq1/md2HkyO+yqx0pWKx6jEXn+VFaAizWZYEm21JnR2CG7mOlyrxaiR9Rw6Iomc8
	1WmJBoY03PLImCYmweyifqQrxYoZLadF7I+EszQXqIt1qC55sZATB/2iVWgZbMOKz6VK+VenInLIZ
	bF4mJmq7bgoiEOM1QmZ4hlGU+azIrTo3LEgaLf4Wj87U+TB0k9JEulNG7AOwqEGF5rKcoAcR5pJNe
	53TMxr26jGiYITfCAkAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9oF-0007Xq-Q6; Mon, 29 Apr 2019 17:11:19 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9lB-0003Cb-Rg
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:08:30 +0000
Received: by mail-lj1-x243.google.com with SMTP id h21so10027470ljk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zy1ZS8ulMtFMg+xrXQSuG8tddrlOp8I6pRjuYcFgB6Q=;
 b=0bHW5AZLT82AmnNrU4T39kTTQRWvld2M59GqqrGav4xpXB/fwMn++vk3QI0E/Nei/e
 bzB5n4CqDIuvJPh/0gDm7QExicaSz4s0GCkRKB6k+f/yIVR/7RE2DWZ9Id4Erf2LUQTe
 ePHayxatb/Upr6CMgEiPnunDYfzhB4wJu2MxPgEUUANl096R/p9BZ35rqSZp5Zti1sVc
 9F/sC9kauTiax5lRnGNDC7NyJ2uSNOo04eijqona9stJwEIt2sM+n17iX3uby2V3sdKs
 0ZXdU2vvIjVS4KLclSxfUjDiNHhGysY4Bq6BYoAkAtCkjcHydRyUI5zo86CqLGnCJPcN
 HPXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zy1ZS8ulMtFMg+xrXQSuG8tddrlOp8I6pRjuYcFgB6Q=;
 b=XzIA7MvBhcSa69CPADPEViZP6A5FMcU2dMzmP8wNfRU+AveUxrhKP9kZWI2RtHGGmW
 lndcoBT+o3QTRAA2AXzaljzWyN9v6MwTblSnaRbU22zusO1GipXvjY7ldrqd4QYXdud+
 cCZr2uOQzcOPNreut2QIJYh4fTAhggcu+dqD4Z5HCH+cvnZqaWKVDNy+Wk2/yXOtBwls
 zJUDXlOxtT+CtZJxvpue32ubvFyVKPRkVmeIy3ZbUcL0agVD7Mj7JXxyay1NOsC+jhUO
 Ogk+tHKsy7X49qaTsYm2rcNdzPjdS4DVk0aVbx8GNpwFyp9u5yeU2tgFQFbghh3uDHSt
 d4Qw==
X-Gm-Message-State: APjAAAVy6N3AkrBLFvt4Pd/OmAQqTPVmu1hWW7pKIUVLMWylRTRCIcP5
 We9+5zkBsZUCetATp0XakOhuRQ==
X-Google-Smtp-Source: APXvYqxNCs6DbQu37ZInG0rcBLjzcvest/ipCGkv0dyIbljMc3Tt2hEnU8TkkujXFMd+T0/DBrD/pg==
X-Received: by 2002:a2e:8905:: with SMTP id d5mr30146595lji.59.1556557688315; 
 Mon, 29 Apr 2019 10:08:08 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id v141sm7367069lfa.52.2019.04.29.10.08.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:08:06 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:51:37 -0700
From: Olof Johansson <olof@lixom.net>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2] soc: add aspeed folder and misc drivers
Message-ID: <20190429165137.mwj4ehhwerunbef4@localhost>
References: <20190423142629.120717-1-venture@google.com>
 <CAO=notzjzpt0WHfJEWXMGgkoJU8UiLnqZnrGrPs-dRH5GNdJyQ@mail.gmail.com>
 <CAO=notz9QVoqKLrhJ3kx9FHja5+Mh68f36O36+1ewLG+SanmOA@mail.gmail.com>
 <20190425172549.GA12376@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190425172549.GA12376@kroah.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100810_509959_628FACB2 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-aspeed@lists.ozlabs.org, Arnd Bergmann <arnd@arndb.de>,
 Andrew Jeffery <andrew@aj.id.au>, Patrick Venture <venture@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, soc@kernel.org,
 arm-soc <arm@kernel.org>, Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 25, 2019 at 07:25:49PM +0200, Greg KH wrote:
> On Tue, Apr 23, 2019 at 08:28:14AM -0700, Patrick Venture wrote:
> > On Tue, Apr 23, 2019 at 8:22 AM Patrick Venture <venture@google.com> wrote:
> > >
> > > On Tue, Apr 23, 2019 at 7:26 AM Patrick Venture <venture@google.com> wrote:
> > > >
> > > > Create a SoC folder for the ASPEED parts and place the misc drivers
> > > > currently present into this folder.  These drivers are not generic part
> > > > drivers, but rather only apply to the ASPEED SoCs.
> > > >
> > > > Signed-off-by: Patrick Venture <venture@google.com>
> > >
> > > Accidentally lost the Acked-by when re-sending this patchset as I
> > > didn't see it on v1 before re-sending v2 to the larger audience.
> > 
> > Since there was a change between v1 and v2, Arnd, I'd appreciate you
> > Ack this version of the patchset since it changes when the soc/aspeed
> > Makefile is followed.
> 
> I have no objection for moving stuff out of drivers/misc/ so the SOC
> maintainers are free to take this.
> 
> Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

I'm totally confused. This is the second "PATCH v2" of this patch that I came
across, I already applied the first.

Patrick: Follow up with incremental patch in case there's any difference.
Meanwhile, please keep in mind that you're adding a lot of work for people when
you respin patches without following up on the previous version. Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
