Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB61D136E83
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 14:48:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NMn5EFGRUXPtbEq/25PtxENGbn2gC6gNeiA5o29Xd5U=; b=hS9ESxaTuAcfC9
	sj8hjtP6sN0E7JhT4u8/yToFzfpdWwxCfIK8haf7KvHsLUFooV0ZWnR3FpeNH9fyjUuo+11d1Iev3
	96BOihIszuK9Kld4yIfhOEYMRCXUT2UkdBFJxqLlAJz2nN4AkcDuip3UFsWUNWXhiXVhB7X7PBH2Q
	mSjFeo0a1DPDDCt4FRhV32Iceytb4g3VFinbTb9vahbfbXDnaCfFaGh5DFqnRsK/xhRnaMwxkkkcG
	go3IxP7mfKRYi3/03iiX3/4y5Jk9NS56aZ6sWzSsDw/sCCextzf3Djl0sB0o2tC+28GSdCnb5OLNS
	VHYo9ToVH2b0OIMdw2Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipueY-0003sI-OZ; Fri, 10 Jan 2020 13:48:42 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipueL-0003rW-3p; Fri, 10 Jan 2020 13:48:30 +0000
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com
 [209.85.217.49]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id 00ADmDcC031838;
 Fri, 10 Jan 2020 22:48:14 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 00ADmDcC031838
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1578664094;
 bh=YW6gHC2/TBjxwotOxX5lv+0ESK1IMSnDrePMsS8Y854=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=v8CCJuH8FvCsIv3IH6Axc4E20isn2xwbyKkmVAwDnVUUP7XTnqD3pjWapoBDw1lDK
 50Kzuo/MtEXB6Hdwr/DwS4PqEiEcxxek9hC0xXLPGBXvk23RQcvKWJOdPrXh+dbFTm
 hpmWbFoqq3663QSC/2QzPboUMx6ebwb3aacYQkNQCrA5Y+ZDRM5od9ZbSll/jAcAHt
 tP1tLunrgFSOOGMTJQQt5oqhrSUz3D+a5yFCzM/uA1ViWLaKv4o+xwleENqDjAhw/d
 k1iD3mjIpplBsfHoDvGo0Ec7ARWXd5VV2aA0C0JsGj//ZOe644CI/9zUvVUrt5f+JH
 5+wStLmWTZdTg==
X-Nifty-SrcIP: [209.85.217.49]
Received: by mail-vs1-f49.google.com with SMTP id x123so1277054vsc.2;
 Fri, 10 Jan 2020 05:48:14 -0800 (PST)
X-Gm-Message-State: APjAAAW/lSGD2k5TMZc0D3cEKCLxrAImZuaVhP2MFKJm+Zdo1NGuFvAU
 nw14G6Mxncm2gAhj98fr9YXWVzX2HegionxGpXY=
X-Google-Smtp-Source: APXvYqyTXk/T86I7dlwE/veGRIdMLqTqb+cooe/0yqEITlDnMG/B+hHLqdaNi4yTMsk16cN+BBr421ehKsnP9BOOcVw=
X-Received: by 2002:a67:f8ca:: with SMTP id c10mr1743990vsp.54.1578664092752; 
 Fri, 10 Jan 2020 05:48:12 -0800 (PST)
MIME-Version: 1.0
References: <20200104162829.20400-1-masahiroy@kernel.org>
 <20200110121951.GA1047840@kroah.com>
In-Reply-To: <20200110121951.GA1047840@kroah.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 10 Jan 2020 22:47:37 +0900
X-Gmail-Original-Message-ID: <CAK7LNATGZwPE9m=4L6n-OFPSmenQvoRvNR=c4Go65x1opjkpOQ@mail.gmail.com>
Message-ID: <CAK7LNATGZwPE9m=4L6n-OFPSmenQvoRvNR=c4Go65x1opjkpOQ@mail.gmail.com>
Subject: Re: [PATCH] staging: vc04_service: remove unused header include path
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_054829_496184_7F3857B0 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org,
 Broadcom Kernel Feedback List <bcm-kernel-feedback-list@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 9:24 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Sun, Jan 05, 2020 at 01:28:29AM +0900, Masahiro Yamada wrote:
> > I can build drivers/staging/vc04_services without this.
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
> >
> >  drivers/staging/vc04_services/Makefile | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/vc04_services/Makefile b/drivers/staging/vc04_services/Makefile
> > index afe43fa5a6d7..54d9e2f31916 100644
> > --- a/drivers/staging/vc04_services/Makefile
> > +++ b/drivers/staging/vc04_services/Makefile
> > @@ -13,5 +13,5 @@ vchiq-objs := \
> >  obj-$(CONFIG_SND_BCM2835)    += bcm2835-audio/
> >  obj-$(CONFIG_VIDEO_BCM2835)  += bcm2835-camera/
> >
> > -ccflags-y += -Idrivers/staging/vc04_services -D__VCCOREVER__=0x04000000
> > +ccflags-y += -D__VCCOREVER__=0x04000000
> >
> > --
>
> This patch breaks the build for me:
> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c:6:10: fatal error: interface/vchi/vchi.h: No such file or directory
>     6 | #include "interface/vchi/vchi.h"
>       |          ^~~~~~~~~~~~~~~~~~~~~~~
> compilation terminated.
>
> So maybe you did't select all of the modules to build?
>
> Sorry, I can't take this as-is :(
>
> greg k-h


Sorry, I compile-tested it with O= option.

I should have tested it with/without O=
for this kind of patch.


I will fix up some relative paths.


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
