Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A7F732E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 17:37:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aL+yw5USt1Ho/Nb5IAIzb2gXgGQfqxO4ClwOdzwb6OQ=; b=PSHU8pMW1aDCQL
	gYGi6dkY9JaTvE+mtOQ89xfx4BZio1p2d0sx/oZdOZDdUyIhNSXX1nupGMdyMB+1mI/cmxqpD77h4
	MoSdgC3g2nJGgMIt5jpHtqHquaUuUM7aSHk2KAhSTj/Kn3U58/qmKhQ7GCjgPWseYeWpCziqBENZ9
	fX4vbfsp3fGs6qs1cVrbisNSySnSLqF5nNIBNHMPxe6N0J5EVhU0glaXB1HajvI8aXwg8MgPz9zH2
	aP/DMeISe/W1Ck0OH4q0wlnzfzs9tlJlazbT9eUZzSzyWixBickiGYUlXJLGKr4Nx6+vOYcZrH1z/
	yK9vXeRbWhsKn9nEFakA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqJKl-0003v1-26; Wed, 24 Jul 2019 15:37:39 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqJKa-0003tu-GD
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 15:37:29 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 24FAE68BFE; Wed, 24 Jul 2019 17:37:25 +0200 (CEST)
Date: Wed, 24 Jul 2019 17:37:24 +0200
From: Christoph Hellwig <hch@lst.de>
To: Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: add swiotlb support to arm32
Message-ID: <20190724153724.GB10681@lst.de>
References: <20190709142011.24984-1-hch@lst.de>
 <6a56eacd-d481-de93-e0d8-64d8385de214@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6a56eacd-d481-de93-e0d8-64d8385de214@ti.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_083728_688403_85660F37 
X-CRM114-Status: UNSURE (   6.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 linux-kernel@vger.kernel.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 iommu@lists.linux-foundation.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

FYI, I've tentatively pulled the branch into the dma-mapping for-next
branch so that we get some linux-next exposure.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
