Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B121D1352
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 14:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5gciucPPyjCfsd7QeG5asfzefbqUKZFOAnAXdpM2wy0=; b=GwqWEje5PG5jBZ
	LfnPRP+dVESXUlFrH3EQ6302M1LsO/tDAEAkgTBslZIFurTuVWyaMylKfAbKYNeRlUYQ9eMXjSwoW
	T24W9YjkBM5oeWeYZsxguLNPy38CF2KiYatGK5URmrx6SrfFpQfUvOnSGTh3b0QnzaqoSmoZ0jJiP
	AnuAsVBpjHvcLNs/NHCmMf6yoizO8BANZxYr2EBk8mfTzv1QWbbi8T3p88YRNLBi2Rwmnt+SDdEaU
	0MYvgdiywed3zHWvJ5AIszqYP6qX/3vK7GGezAkZzhV6cHrnKDh1nGGkZ/uehrW9+fme2klRN/68S
	xeCLPJnTvAUcytCXhypg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYqv3-0000rI-Hj; Wed, 13 May 2020 12:55:29 +0000
Received: from smtp11.smtpout.orange.fr ([80.12.242.133]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqup-0000lq-UF
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 12:55:18 +0000
Received: from belgarion ([80.214.67.31]) by mwinf5d46 with ME
 id eCv12200V0gURQY03Cv26X; Wed, 13 May 2020 14:55:11 +0200
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Wed, 13 May 2020 14:55:11 +0200
X-ME-IP: 80.214.67.31
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 0/3] mtd: rawnand: Get rid of the cmx270 driver
In-Reply-To: <20200508121041.64f91276@xps13> (Miquel Raynal's message of "Fri, 
 8 May 2020 12:10:41 +0200")
References: <20200429223134.789322-1-boris.brezillon@collabora.com>
 <20200508121041.64f91276@xps13>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
X-URL: http://belgarath.falguerolles.org/
Date: Wed, 13 May 2020 14:55:01 +0200
Message-ID: <87lflwngey.fsf@belgarion.home>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_055516_274886_8D3A4DFF 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.133 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.133 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robert.jarzmik[at]free.fr]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Mike Rapoport <mike@compulab.co.il>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Miquel Raynal <miquel.raynal@bootlin.com> writes:

> Hi Robert,

Mi Miquel,

>> I hope someone still has a board to test that.
No, unfortunately I don't have this board, nor do I know of anyone having
one. It's the second time I see patches on cmx270, and the question to whether
we shoud keep this board in kernel is still in my mind ... given that cm-x300 is
fully supported and testable, and no one I know has a cm-x2700 ...

Now for your series, I have 2 comments :
 - dsb() : can you explain the rationale of each of the 3 instances I saw
 please.
 - the +2 IOMEM offset
   I don't like it at all. I don't mind the offset, I disklike the use of
   readb() or readw() where before there was a readl().. Same thing for writeb()
   against writel().

   The bus semantics are not the same, the alignment is not the same as well
   (and PXA is very old and doesn't cope well with alignment), and without a
   proper board to test, I would be very wary to have that change.

Cheers.

-- 
Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
