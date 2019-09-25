Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66537BDA77
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 11:06:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=98RWLJ1V6iC00DjiD3heUOXUL173Up0t85OR3vXBpXA=; b=bmDb/+Wuf4420u
	XE003+Ozi/60BSCD2xqm5GGn40HAqMWZnWaGMGBmuKhtedSfJd1boVHZ1ooqVBARmrslPwu17MHOF
	v43ebzAWbGVwxPX8R1iE0Sm7ZLfuIyge0FhM71UuKcG9PT8o7yRgDhHIn/TDJ5vH23NLyDBivVUGc
	5ndvGj51WCV+7jGCdbXnuqp/kAle8WRDK+E5r70TSlwD3JLxe4GJcwVUgtrbd8Sqb0DgSTbN8HmXM
	P8Zv62G6pls3DyDlUfjHYKiOIspCYGYae14hgc+pWRadt1mhQgvWXFgB8necHtcp5LPc8WsXZx187
	F9ZIx7cTNE/Aum+LBqCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD3ER-000724-Bi; Wed, 25 Sep 2019 09:05:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD3De-00070k-Gh
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 09:04:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E185B142F;
 Wed, 25 Sep 2019 02:04:12 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 58C5E3F59C;
 Wed, 25 Sep 2019 02:04:12 -0700 (PDT)
Date: Wed, 25 Sep 2019 10:04:10 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 01/11] PCI: aardvark: Use pci_parse_request_of_pci_ranges()
Message-ID: <20190925090409.GQ9720@e119886-lin.cambridge.arm.com>
References: <20190924214630.12817-1-robh@kernel.org>
 <20190924214630.12817-2-robh@kernel.org>
 <20190925105944.30fe64cd@windsurf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925105944.30fe64cd@windsurf>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_020419_760627_DE48559C 
X-CRM114-Status: GOOD (  11.44  )
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 Nadav Haklai <nadavh@marvell.com>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 10:59:44AM +0200, Thomas Petazzoni wrote:
> On Tue, 24 Sep 2019 16:46:20 -0500
> Rob Herring <robh@kernel.org> wrote:
> 
> > Convert aardvark to use the common pci_parse_request_of_pci_ranges().
> > 
> > Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> >  drivers/pci/controller/pci-aardvark.c | 58 ++-------------------------
> >  1 file changed, 4 insertions(+), 54 deletions(-)
> 
> Tested-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
> (on Armada 3720-DB, with a E1000E NIC)

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

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
