Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E01E1B23
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:45:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrcfFhg1g4LeTaVwIjdlAEoLaMhId0TAzM8hXIPT7y4=; b=X0G86vYcfeqnrE
	O6W+BzE02FatM+dYbMkmDmoAdNt3/k+F8I1JfUw/zTUVVLUvB0gMFtk12IUWUY7i6l2SVnb+wyQQI
	tLDKd9LVOORKIc3evPZ2nWScwWgIGuMp3CtraKzqvzVduqZwbXWHh++4s7mluLIWVoiNzClcovH7i
	D7knDWU/4WqOnCDi8NywE6MMDg51Iyp/fOu8mWRsvq6WtnftHh17M9wW55+pTTwVr6b6dScbcWwoO
	NiSQf6NIJI5MIpFX4ouYfrjZnz+Wqhu1mYWVAKlp5/P5KbyHEVrXWvhJJj9DFGd6t2wbpe15naNkY
	6XvYtptS2p23qrDni7+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNG1R-0001I4-Gw; Wed, 23 Oct 2019 12:45:53 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNG1C-0001HY-Or
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:45:40 +0000
Received: from mail-qt1-f169.google.com ([209.85.160.169]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MqatK-1hb39U3cbw-00menN for <linux-arm-kernel@lists.infradead.org>; Wed,
 23 Oct 2019 14:45:37 +0200
Received: by mail-qt1-f169.google.com with SMTP id c21so31987178qtj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 05:45:36 -0700 (PDT)
X-Gm-Message-State: APjAAAWfF8wHz+pr1w8Nk+a8LGGmZveo5h5u4B2BVH7yd85FSWPMjrGO
 V82UJKTevISZE9AQcE4TNyg+kYQwpGd9IQwPZG8=
X-Google-Smtp-Source: APXvYqyy9eLPSjSegvDzhnQvcTJZRNXOvgxtascK9z6lCnK+he0UZpFg1zpN14r2VDhc4zyiPUa1Ko1f6GMezspKs4c=
X-Received: by 2002:ac8:6956:: with SMTP id n22mr8794799qtr.7.1571834735758;
 Wed, 23 Oct 2019 05:45:35 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-9-arnd@arndb.de> <20191023113252.GG10630@pi3>
In-Reply-To: <20191023113252.GG10630@pi3>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 23 Oct 2019 14:45:19 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2f8USPJP5OL2J=wi=GqvBrTJpwVOtYg=WcWQM2PZ30cQ@mail.gmail.com>
Message-ID: <CAK8P3a2f8USPJP5OL2J=wi=GqvBrTJpwVOtYg=WcWQM2PZ30cQ@mail.gmail.com>
Subject: Re: [PATCH 09/36] ARM: samsung: move pm check code to drivers/soc
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Provags-ID: V03:K1:6uC3OLiSLpubh6WE0q40YrojjcSVjjhw12L/4pp9f4BcFdBmOJH
 ThP5M9ExIOq2qQMElujjufhPFin9rXemx+4HidfhU7nr2mAXrk+QDQ37VQRS2dX4RyJ2FZG
 1fF9u7rekGElaZ+WtOpBsztC2N5HUrJpwHUuaikTKexEZE4fVbWi9wyzEIB8dPG5Io9P3D+
 F0UQY5yda8lgoOl+ZQk+Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9dTA8GT5WSg=:n1azVDWqB4044LLUDzt5Gm
 YqWLCfdvrU7cG5iF6YK27p1ApOMJwd8KhsS6kBdPlLZ9m4yttfohGggpj9iMj4DkrjjikESTm
 fKMIFR6Mhfj8Njq3bHjCuzzmonAAmra+zaxd1XO0SXCyAbEeX2rgqCDzB3T8NCTsdNGepnAXs
 IcfsAvcGSsbqvLECmY97bh2mmF3SPJcrlaKGO5Ap/cy6MQY+hRgFWtSEiR4PEG2oz3e6sEvDm
 5PkagaPQcVynNXjQNb2lB7Z/nPRF94Pvg+8TXSgiJ8RWeNhuLn8NcM+AT+OlBJ/cD+cSzNNb1
 2/aYY/EcgBKfT2b7nenqgMMMKVMNmtn9WEY8wvloI5VdG6w1BjiaalzqEKeSTX1pPZXG8r4pq
 E2SckfYPXAPTJWml1nj9WWgtDfi8BQRBqoI5hnc0yN3GxRYwDbZGWSavqmkrLA6yDEAodzPwb
 zT8U/gkudaC3YE4DA1TLNgxAcPXcWiM5IV7rNRrouUCSLqJ5NbfXtPfd7s+CHqCvxq56COb/5
 ESXk3owNVRUoLFlQ0A0dQtNFPKNkTkDT6yi8uXtLlYhcntmeSjGzg9lTDeEY9OA+78CW63OP9
 6Vtu/XA1FgWtDZcOuZkg6DIeZLVLmGI6SQj9R94+V+bhNQ7CcgG47bOn1h+WZ9oyzyQEmQtEl
 RPpPhIVFOsG9bS9q/I09EuHqvYnMGiLoSrcU6HhE7S5wfSWj3Yy5n9O19uXBM4r6AKizFXdSh
 gHZnCmKECN53YZ8yo6XfDlLZOPz701WGDttfxwnkcGj+d0fBkP7Kmk7rX3SDDtPGeyLPoNZ96
 GJTrzEg0K5S6WOnkmI5S+jvj+bZZIfV/3kKgvdnNzsPiA0IDC/Xhc1If1Frhbo1hE5iSz327Q
 2UgaNUYYmLGYVEaClbIw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_054539_104611_5DD44D8F 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Cc: "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Pankaj Dubey <pankaj.dubey@samsung.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 1:33 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Thu, Oct 10, 2019 at 10:29:53PM +0200, Arnd Bergmann wrote:
> > This is the only part of plat-samsung that is really
> > shared between the s3c and s5p ports. Moving it to
> > drivers/soc/ lets us make them completely independent.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> > + *   Tomasz Figa <t.figa@samsung.com>
> > + * Copyright (c) 2004 Simtec Electronics
> > + *   http://armlinux.simtec.co.uk/
> > + *   Written by Ben Dooks, <ben@simtec.co.uk>
> > + */
> > +
> > +#ifndef __SAMSUNG_SOC_S3C_PM_H
> > +#define __SAMSUNG_SOC_S3C_PM_H __FILE__
>
> Use guard name prefix consistent with other files, so:
> __LINUX_SOC_SAMSUNG_S3C_PM_H

Ok, done.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
