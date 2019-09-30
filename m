Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C658C239B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 16:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=65ORRuFLOWHVW3dkjMLXEH2vX/r+7Ed1huODriE5J4E=; b=sy+qksycNQlpgl
	PC/Fls2pvo3fEJk3t9mThwdGj5wH2TNhGyGbGJihBJk4XNzB+ZLmr/rflT67zIshLPrIW+gaaRMqD
	FeWy+KABy/f8KeVUI5MH2VIzUYHLzlKmxKp+erEndWXHUbQwhtXxReONwHdXdQ4Sc+qriR/YfPqBz
	+5NHdLskmVAxtRFGfuJCVKPBSzEPsanXxLuBmZNSp2+9ehccspr5KEfXKOESJr0AiiXhim9SkDlqW
	2lc6Cuz2yg4OoWvY1112N6tEuwMYOp8MKspHnp/GPzQm6SWzxkdsURiEagun2z0hxAwpXHDcZ8WmT
	/qkwwWPC88CF3jjCOWlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEx0A-0005vD-7o; Mon, 30 Sep 2019 14:50:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEwzz-0005C2-Uh
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 14:50:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6C2F628;
 Mon, 30 Sep 2019 07:50:01 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D7DC63F706;
 Mon, 30 Sep 2019 07:50:00 -0700 (PDT)
Date: Mon, 30 Sep 2019 15:49:59 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v3] PCI: aardvark: Don't rely on jiffies while holding
 spinlock
Message-ID: <20190930144958.GA42880@e119886-lin.cambridge.arm.com>
References: <20190927085502.1758-1-repk@triplefau.lt>
 <20190927114555.193a9d68@windsurf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927114555.193a9d68@windsurf>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_075004_036849_71F74850 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Remi Pommarel <repk@triplefau.lt>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 11:45:55AM +0200, Thomas Petazzoni wrote:
> On Fri, 27 Sep 2019 10:55:02 +0200
> Remi Pommarel <repk@triplefau.lt> wrote:
> 
> > advk_pcie_wait_pio() can be called while holding a spinlock (from
> > pci_bus_read_config_dword()), then depends on jiffies in order to
> > timeout while polling on PIO state registers. In the case the PIO
> > transaction failed, the timeout will never happen and will also cause
> > the cpu to stall.
> > 
> > This decrements a variable and wait instead of using jiffies.
> > 
> > Signed-off-by: Remi Pommarel <repk@triplefau.lt>
> 
> Acked-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
> 

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

> Thanks!
> 
> Thomas
> -- 
> Thomas Petazzoni, CTO, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
