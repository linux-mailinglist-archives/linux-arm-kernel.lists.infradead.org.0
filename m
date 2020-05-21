Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FAC1DD6BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 21:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=onJLOIInXQczAti4ssoNsE//WeuQWLbX5V9NzrkE13M=; b=C+AnMlwzgdu1A3
	vKMFJC/5yQNa9DJYJbLmJdBXFovYoP33xbXs9GsLAKvr1ClSMnZidTCZmx/1sR3hHeViWMdCSbm9q
	RG296zjpHq9u+1+SbD3rSTQZi6czpE7QTDincgBo4AQbqjXONyMXCUaGbi/T4ii0ANHr4epMK40Ls
	fIAGkSDduaBWtA4QtrQO39jko4xDmXxlwcV73RrhC/JfckdZN1rAEa8OfqWtt3frvhCmmC5kPc2Ud
	of+AISoShQ/AtIclHjpgpo7WE8WdnuzqWGP/f7poQ/IKjWr/vjEdNPDahjV0bBPYOhZctVwcZ2s1T
	/VN+6DR/EOgML2m9p6DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbqaM-00081d-87; Thu, 21 May 2020 19:10:30 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbqaE-00081B-13; Thu, 21 May 2020 19:10:23 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 561952A111A;
 Thu, 21 May 2020 20:10:20 +0100 (BST)
Date: Thu, 21 May 2020 21:10:16 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH v2 1/3] ARM: pxa: remove Compulab pxa2xx boards
Message-ID: <20200521211016.3ad62148@collabora.com>
In-Reply-To: <20200521190158.GL1118872@kernel.org>
References: <20200520102125.8934-1-robert.jarzmik@free.fr>
 <CAK8P3a2+auSWBROZR-hobM_qSWtKiG1DRYP3Y7uvbCy_ZLy+gg@mail.gmail.com>
 <20200521071213.GI1118872@kernel.org>
 <CAK8P3a2XdG_u6_o2NbQDTb5dbdzByBkUXZNM6nZ3wz0c-LFT5w@mail.gmail.com>
 <20200521190158.GL1118872@kernel.org>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_121022_206135_781EF1AE 
X-CRM114-Status: GOOD (  20.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 21 May 2020 22:01:58 +0300
Mike Rapoport <rppt@kernel.org> wrote:

> On Thu, May 21, 2020 at 09:26:10AM +0200, Arnd Bergmann wrote:
> > On Thu, May 21, 2020 at 9:12 AM Mike Rapoport <rppt@kernel.org> wrote:  
> > >
> > > On Wed, May 20, 2020 at 05:21:51PM +0200, Arnd Bergmann wrote:  
> > > > On Wed, May 20, 2020 at 12:21 PM Robert Jarzmik <robert.jarzmik@free.fr> wrote:  
> > > > >
> > > > > As these boards have no more users nor testers, and patching them has
> > > > > become a burden, be that because of the PCI part or the MTD NAND
> > > > > support, let's remove them.
> > > > >
> > > > > The cm-x300 will for now remain and represent Compulab boards at its
> > > > > best in the PXA department.  
> > >
> > > I think this series missed the cm-x270 NAND driver, so this could be
> > > PATCH 4/3 (not even compile tested).
> > >
> > > From 56a11987f82ef8b32b25dfc17b849f9bbbf03e4d Mon Sep 17 00:00:00 2001
> > > From: Mike Rapoport <rppt@linux.ibm.com>
> > > Date: Thu, 21 May 2020 10:09:47 +0300
> > > Subject: [PATCH] mtd: rawnand: remove CM-X270 NAND driver
> > >
> > > The cm-x270 board have been removed and theres is no point to keep this
> > > driver.
> > >
> > > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>  
> > 
> > Thanks! Removing that driver was actually how the discussion started,
> > so we definitely want to do that. Boris earlier patch "mtd: rawnand: Get
> > rid of the cmx270 driver" did it by changing the board file, now your
> > patch is the right thing to do, and we should remember to do the same
> > for mbxfb.  
> 
> Arnd, will you pick this to the SoC tree or should I resend?

Actually I sent a v2 removing only the MTD driver. You should probably
sync with Miquel to make sure the same patch is not applied twice.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
