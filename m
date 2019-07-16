Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E4D6A240
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 08:32:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WK9tV85N5rRc0ydIuuN6GtML7dzKIuJ9Voy6AeuN0cQ=; b=DuwX40AvzN9Y2X
	WJvp4yyOmt4mDLpgpSKUFdCEt6wMMkjDzC6KC8pOmsWQU6FwqVCESTiATOtoZO8OPt+FdEYBZhbY7
	qJdfoEh+wj5NM7j9h2wurCv/Wl6OkLG52qRk8c2gpaNkC3mfdgnqrcC0koq5cpdZuOgE1FXNMDQtg
	Dy3taovas7FmoXAvkTxtF8bx+Q/icd0d7zyVAWxTwEVN4a0srBdNmXN6alI8X879UbYMU/atwT0mE
	ESYae3Ygev8u5PKlAfB8kHoI03IeyNQ2+xjot8paJUPjUTyJ+hwuKV7eeII0gRjrCf4p+XtRleK7C
	EbcktYxfJB8ASxbWiyZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnH0k-0005KB-Am; Tue, 16 Jul 2019 06:32:26 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnH0Y-0005JU-Kk
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 06:32:16 +0000
Received: from windsurf (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id C292024000A;
 Tue, 16 Jul 2019 06:32:05 +0000 (UTC)
Date: Tue, 16 Jul 2019 08:32:04 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] PCI: aardvark: fix big endian support
Message-ID: <20190716083204.375afc1e@windsurf>
In-Reply-To: <20190715151016.6amymuikizmmmsph@shell.armlinux.org.uk>
References: <1563200122-8323-1-git-send-email-jaz@semihalf.com>
 <20190715170840.326acd73@windsurf>
 <20190715151016.6amymuikizmmmsph@shell.armlinux.org.uk>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_233214_840488_4EF4C88B 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: lorenzo.pieralisi@arm.com, Grzegorz Jaszczyk <jaz@semihalf.com>,
 linux-pci@vger.kernel.org, bhelgaas@google.com, mw@semihalf.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Mon, 15 Jul 2019 16:10:16 +0100
Russell King - ARM Linux admin <linux@armlinux.org.uk> wrote:

> > Also, the advk_pci_bridge_emul_pcie_conf_read() and
> > advk_pci_bridge_emul_pcie_conf_write() return values that are in the
> > CPU endianness.
> > 
> > Am I missing something ?  
> 
> Getting the types correct and then using Sparse to validate the code
> will help to identify issues exactly like this.

Yes, I absolutely agree with your recommendation on the other thread.

In fact, I am wondering if it really makes sense to store the "fake"
config space in LE, since anyway the read/write accessors should return
values in the CPU endianness.

Best regards,

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
