Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E24E1DC790
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 09:27:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVwkt+Uorm/f8PV4flHGWJVH1FhKaubhVVwlG+iOhtk=; b=c9oMXwHFAthL/5
	neNYEOp18flz1pQscpOcmebj77z6KQFObBn0e+K/2RnTJ127uKWc+6IST96taFGjI0eLvCYFQM9pC
	ajA79jsItpZ3vQ7okfzhaq6Rl9+aPKqc+XWbL5MdO35yhe4w9i0niapqIv/rXoMkBLvMuoCyKlDhZ
	oMo49W4E2O3KJ1IR5UjOTwg3mttaQYa004HimZTxC3BDoS4AvH/Gfhdfd0OwUV/7wrItMQB2kTNO6
	otHbKNxNln5B1dWRoa7t5mBttfYbvCBddKoPiHxMfrzL3HjcO4AKbqYo8SGX/tzxeipbC9X4Yt7N0
	+1KBKa/WEmKDtBPV0t/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbfbQ-0005sY-Kh; Thu, 21 May 2020 07:26:52 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbfb5-0005jX-96; Thu, 21 May 2020 07:26:32 +0000
Received: from mail-qt1-f177.google.com ([209.85.160.177]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MryKp-1jExgv052b-00o2HU; Thu, 21 May 2020 09:26:28 +0200
Received: by mail-qt1-f177.google.com with SMTP id o19so4729767qtr.10;
 Thu, 21 May 2020 00:26:27 -0700 (PDT)
X-Gm-Message-State: AOAM532UnN+wmRYp3YkKzGuAac4g41s6Xn2wN6X64ZgDO7BvMhARYXch
 ppdjcH0Pzr9nxoMXhSZv72ePsmze044nM0M6nG4=
X-Google-Smtp-Source: ABdhPJwtcCxeerSd4Izl6Ppbh4nfWmYkoOcJO9aURyJ/GfisH9qmLWEQPIm7eTlwdocPiblvoWRcM1OSE5P8EXylSkw=
X-Received: by 2002:ac8:474f:: with SMTP id k15mr1208706qtp.18.1590045986859; 
 Thu, 21 May 2020 00:26:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200520102125.8934-1-robert.jarzmik@free.fr>
 <CAK8P3a2+auSWBROZR-hobM_qSWtKiG1DRYP3Y7uvbCy_ZLy+gg@mail.gmail.com>
 <20200521071213.GI1118872@kernel.org>
In-Reply-To: <20200521071213.GI1118872@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 21 May 2020 09:26:10 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2XdG_u6_o2NbQDTb5dbdzByBkUXZNM6nZ3wz0c-LFT5w@mail.gmail.com>
Message-ID: <CAK8P3a2XdG_u6_o2NbQDTb5dbdzByBkUXZNM6nZ3wz0c-LFT5w@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] ARM: pxa: remove Compulab pxa2xx boards
To: Mike Rapoport <rppt@kernel.org>
X-Provags-ID: V03:K1:WZPYnEDxivP2seXALXCOgKEOpRhgncGtD0vAZZAf+Qdk0g/hiKA
 gVuSHf7pHD0YWbYRDnSzhkSsor/1ec1Ta817DvyJ14zLji1sHRn/RSgNRiwVGHKLvZHMAN4
 A3oUaoq1rKIUgQlSLI49C7z+zfz5zxRf5MUZD4Ttz+PcPBVXZwwPi2n+rbbL0Uftb/d99LQ
 Q7SJfPkcfZZ/Y6gEPZjvw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HTQoepo4rU0=:FOsOixBnBqOHd2XOlrVgWq
 GIpoSVAoaBZRmnJESOYuZ54YOGZ0JFFYFbRuGjiH9m5l+PSjT2VviWQJ+KppqQAzFiyG1mgvd
 tF6hEu+p0kTvmQaHwSIrw5H8BVvz8ZjbE5AIu1ZmwwNHpk6p9D0oljInh+C2UP893KP2J1F6X
 s7Fs7yMElpIm0mMmBRTsH9wQnYpS8jsb54soBEEjOx0AzgjyCcwrzUYoYbiFF9oXoG7a12Enx
 qpvEqT1lFdmtE547T58d030EIKbKNQCTj0o9rEZU9836BSpWDGYYyCKD2Mm/TML9l2JcMW7V6
 QHeftl6koW3JYMLTv3F89NjLM+uSMqt+YfpjrE8OgHbC54SdDGE4fn8RN7HeCjzjEh4Jh76dl
 CCKGlWkgwcaMs8HqiqCJXAIo4TESmLiXZpxAt4oPY8kcdH9UWhTWUKiblniX78VQfA5GjX0nk
 kF6r2vFtbxUr1s5FvnLF3gFg4EHr4w9rpu1wawKrNs98JlqjqwQrZf9Ccwr9uDhvjmzAAHR7i
 H7MjRXsyTCiDmozGKABT7xqepjYPcjgV0/NfV5xOH/noWXDmRN0ZCKjpdaEaU2G51q6t/E7HK
 0frijQiUPcLBN+hF8UCudvJBu4kZoGgZmdk6YcTN+6ubFqae4uqbRNebtZwirq+YJp/Fmrbp+
 EcWvIsli0/dBam43DM5EdXHa54TQfp7nEjR8J2Oeq9qotlyYEYlpFT2iUm/VgYgp0L9dDsaMD
 YvWBowvAVmlIA3Iq/9TwjZVMX9Cong+Pi4zs6y1aP5xZ/6LBU9trAOTN0KI/J9rAAIsrsbBkO
 YzcywxNy5MqfwTmlqoxVf+lLZ0cTxTbjGtJBopn1ThAhnNpaIg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_002631_616109_08B8E163 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
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
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 9:12 AM Mike Rapoport <rppt@kernel.org> wrote:
>
> On Wed, May 20, 2020 at 05:21:51PM +0200, Arnd Bergmann wrote:
> > On Wed, May 20, 2020 at 12:21 PM Robert Jarzmik <robert.jarzmik@free.fr> wrote:
> > >
> > > As these boards have no more users nor testers, and patching them has
> > > become a burden, be that because of the PCI part or the MTD NAND
> > > support, let's remove them.
> > >
> > > The cm-x300 will for now remain and represent Compulab boards at its
> > > best in the PXA department.
>
> I think this series missed the cm-x270 NAND driver, so this could be
> PATCH 4/3 (not even compile tested).
>
> From 56a11987f82ef8b32b25dfc17b849f9bbbf03e4d Mon Sep 17 00:00:00 2001
> From: Mike Rapoport <rppt@linux.ibm.com>
> Date: Thu, 21 May 2020 10:09:47 +0300
> Subject: [PATCH] mtd: rawnand: remove CM-X270 NAND driver
>
> The cm-x270 board have been removed and theres is no point to keep this
> driver.
>
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>

Thanks! Removing that driver was actually how the discussion started,
so we definitely want to do that. Boris earlier patch "mtd: rawnand: Get
rid of the cmx270 driver" did it by changing the board file, now your
patch is the right thing to do, and we should remember to do the same
for mbxfb.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
