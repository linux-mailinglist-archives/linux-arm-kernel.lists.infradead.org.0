Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9ADC1D1BDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 19:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ijTHH5YX2LT5RMHigsZ60UI7Pd+B7/EyOHfQqDuc2k=; b=AuwDZHgf+2SrXy
	4tes/NMGxBhrq2kRwlLGKBzWOJwfFAf49fotTrWvjh2pSSCHduVm8M0UXmywwj3aKmv25bDDY3sV6
	/ixSCcE96HJx9YJUH2K/bFcT+N5o5b9z0Z+tw5sHLU7JxaqPbgtbGs/7FCm5vIFZBhyMpQuiLBdG7
	rpjNDEe2HNAebhXSKfJh7fpNXcfVIspNChtWWaXj8Hl+QHlSKcQ7nfMvSosAjdxrQFAVbBMvZVuFt
	fw4U6iVUFhMTXE8cwhMppeVUALvvblO9InQm6i0t/FUT0XvPIeQ2EkbD+XNFtAi/EDiZCeuGUZEII
	UHGyIzmKUkXi7Ce/r7QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYupH-0006O1-CT; Wed, 13 May 2020 17:05:47 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYup9-0006N4-LG; Wed, 13 May 2020 17:05:41 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 29FCB2A28FB;
 Wed, 13 May 2020 18:05:36 +0100 (BST)
Date: Wed, 13 May 2020 19:05:33 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Robert Jarzmik <robert.jarzmik@free.fr>
Subject: Re: [PATCH 1/2] ARM: pxa: remove Compulab pxa2xx boards
Message-ID: <20200513190533.2b737434@collabora.com>
In-Reply-To: <20200513170132.1446-1-robert.jarzmik@free.fr>
References: <20200513170132.1446-1-robert.jarzmik@free.fr>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_100539_826832_2899300E 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mike Rapoport <mike@compulab.co.il>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 19:01:31 +0200
Robert Jarzmik <robert.jarzmik@free.fr> wrote:

> As these boards have no more users nor testers, and patching them has
> become a burden, be that because of the PCI part or the MTD NAND
> support, let's remove them.

Thanks a lot for doing that.

> 
> The cm-x300 will for now remain and represent Compulab boards at its
> best in the PXA department.
> 
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
