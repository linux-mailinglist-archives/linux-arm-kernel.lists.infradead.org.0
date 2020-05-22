Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D4D1DE7F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 15:23:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2IYOvz9wEqv+EqvDNGweCk5WaXQ7avyuXFPQsdGhtKs=; b=rfjcR3bPc8ytvA
	JLD+NEDitfKHQPEnXn+sZiD3yvxXI6RSC8RLUsfiRQBByr+H/j5nFTDZnNU9dzO3vzwffKQLKJYCz
	fw8GUCbsGld8qNAMNXi60nPiCM57kgPk/0Jd64MlUX7UzYXdtQM8QiNvOx645LSx9JTgRu3elz4OS
	FCvXV1kUL5muJqo088UFcesUuMxWvtnlzUWu6qg6PHTdccCqDCgGrqPSY2T4ve7aQb3ZlSEkH5Wb+
	7sWzrKUm7+rkPGBVeraLAFD5i/SrnjJSUvJ1z8xn5DaL6KEIAR7sPqITeTBDhV6ZmTrd5eWovnZzn
	u4KamTvEY/vAD3cnT1ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc7de-0002Eg-Lt; Fri, 22 May 2020 13:23:02 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc7dG-00024X-2v; Fri, 22 May 2020 13:22:39 +0000
Received: from mail-qk1-f176.google.com ([209.85.222.176]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mlvr3-1jAnMy1k83-00j45p; Fri, 22 May 2020 15:22:31 +0200
Received: by mail-qk1-f176.google.com with SMTP id g185so10609309qke.7;
 Fri, 22 May 2020 06:22:31 -0700 (PDT)
X-Gm-Message-State: AOAM532kFUkzVxdxXutSr5cRdvl8lIOfYx7Z7ZC1MC7Z0y/Ei22gl8+y
 t2EMcN4EaOz0PdSl9tO5NQ8+LzgEM5sISM5gJP4=
X-Google-Smtp-Source: ABdhPJxhnlG5KCUbhs9s5v3bwa/HT0C7ENLgIwsfSWwbs1luda3nkNB7pXQbPW3nAVV/zeWXF3QLzRH5hBefOaAU2uw=
X-Received: by 2002:a37:bc7:: with SMTP id 190mr14741809qkl.286.1590153750128; 
 Fri, 22 May 2020 06:22:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200520102125.8934-1-robert.jarzmik@free.fr>
 <CAK8P3a2+auSWBROZR-hobM_qSWtKiG1DRYP3Y7uvbCy_ZLy+gg@mail.gmail.com>
 <20200521071213.GI1118872@kernel.org>
 <CAK8P3a2XdG_u6_o2NbQDTb5dbdzByBkUXZNM6nZ3wz0c-LFT5w@mail.gmail.com>
 <20200521190158.GL1118872@kernel.org> <20200521211016.3ad62148@collabora.com>
 <20200522131818.3adbac78@xps13>
 <CAK8P3a2Z-UxktGn+_aBVaaBTStT7f177V2ED2RfVCQS8QDBamg@mail.gmail.com>
 <20200522151750.369dd4d9@xps13>
In-Reply-To: <20200522151750.369dd4d9@xps13>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 22 May 2020 15:22:14 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0twq9Uc5B8FrobLt7fzssXGtJb-nafAH49uur_idZTaQ@mail.gmail.com>
Message-ID: <CAK8P3a0twq9Uc5B8FrobLt7fzssXGtJb-nafAH49uur_idZTaQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] ARM: pxa: remove Compulab pxa2xx boards
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-Provags-ID: V03:K1:V+QL+QBbLHM6GP+60YtKdpiA47SoyKVlnLzmhJMnVgwCh7KqUht
 wrqXf1Uc1TBg8ZRnJXSa8uAeVl1duIZcuvGz8ZpBpTlcuEl2EgLeMV9jwtssVgUl8cbjVJd
 HyTWWHWd/ZlQrRWJk1oN+JWrytAb97Wo2uYEdDuIThBONtDjgMZIo/UVVG6RfCcF3gaNMva
 iy4FFAzHylNb/cyjNIQGA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:h/Iq43bJUyU=:BN45geNsyye57epcnXIgOV
 I9+49/HWW49qnzYcp1+HbMK0Iss7xlMHBZdqWNX7DY/jShoTa1jscobeWU5IudhoTeIat8CTq
 K7GuSIhpjnnoYvKTumcaJ2XThfrwNW+ouyTPxVaAjoX0sjq+jEW7iI8C+7F6DoDhCGMYEQquq
 snHFooJIiNJlqUtJ1dAiFONoO9cu/BDihPk8Kmav9UuVgA9xd2I8HqoKhxS/zkD8F+FGB1S9e
 PpgmnY1kXz2bRAOXzRZfzExJoGEA9PBk7mDqhPRaweyuc8rrvHrWAXliGUs7KVMsiMmym+xx6
 nPyW1pt0NhSqzZZSRMs4hIi5VpxWETvLmX2T6pZoOTsjDORiWD58PLRl65kgneVYtNeyvo/JQ
 EqXJx4gBrrAMwogESjNTXck+RhrHEKD9ApV5LMsHGuBTx5SM4XFhZOyH0P7Psf+aZT6gNOcok
 2asYgyhTEg63TYsJNpnq9AoqGRgSilfsvHm0BQv51VUlTPIJdEV/CZXcVR/wWMw2uyyQda/Ok
 KFBX9GIS406fGBJkpF0ttdhpK2dMHaR+XKd4pZ9660vUW2Eiy7qu9GnRiw+MAwt41ApWtqn2Q
 aMySQKrEjBmN4f/kcD8Uehnbqj3axu59qi90TFuuHgUFkvIH8jkjgKx2yL3ufgD9hWfQ/YjSD
 GeBcpsu7nWJ4X3pp9k+USbRA3TIPZPUTfHdgQBOpovqliVL/dwsi1jGKO8b4K+z7+xZesMF/H
 WYQqxDbeqYhD22frpS+umP/FeqvDIeEePDAF71/rNthXkF3P8yCqMX5l2e8qzkAt1KUBI/mzd
 qYf04adD5jiHkb4l+goIXBbyn/WfNdflBwbWNxsCCDem/hPKGU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_062238_423944_8FEAA38D 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.75 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 3:17 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> Arnd Bergmann <arnd@arndb.de> wrote on Fri, 22 May 2020 15:14:43 +0200:
>
> > On Fri, May 22, 2020 at 1:18 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> > > Boris Brezillon <boris.brezillon@collabora.com> wrote on Thu, 21 May

> > > Actually I was about the merge this patch in the MTD tree because I
> > > have a big cleanup series which depends on it. Arnd could you confirm
> > > that it's okay for you?
> >
> > Yes, that sounds good. I assume the patch is basically identical to the one
> > that Mike just sent, right? If there are changes to arch/arm, I guess those can
> > be dropped now as I'm merging Robert's patches to remove those board
> > files.
> >
> >       Arnd
>
> Here is the diffstat:
>
>  drivers/mtd/nand/raw/Kconfig       |   4 -
>  drivers/mtd/nand/raw/Makefile      |   1 -
>  drivers/mtd/nand/raw/cmx270_nand.c | 236 -----------------------------
>  3 files changed, 241 deletions(-)
>  delete mode 100644 drivers/mtd/nand/raw/cmx270_nand.c
>
> So it should be fine.

Agreed, please apply it.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
