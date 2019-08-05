Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70295813BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 09:57:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XfwNJTDL8nCidwedZPt1NetG8/dT6to++9dXxrwM4ew=; b=GW9hRLps9UPn3Q
	If3UKiC4f62JSge0u/YJHggEcj+BRnrqL1vv7m3T+kYBSyRa4/qCPxu2P1sy9lgabx5plwvLvXN/B
	aMPeeNuq7G2d/4nyH2bqHdrKjtKD6rfodD3pHrDSyWNcuhn4z4NIFPkE9FktJ8jVOLd48dcxsxKwL
	r41D/7QY41lXrDJ3ESOF43lApOzLGjdEXWyRkpeCjlN9bJfjq/6xAz+/HfUL9UEZNHGWPbogStMnG
	AhLWAHBaBvDOFKqbxU4o9HCgeIpY1Ab9ak8gwyLUuSSXQ+bgOODlPN2ThgpsHWErIeQuiCnJhsMzs
	q4vuuiQhuwMCnTJ+uO8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huXs6-0000xW-Iw; Mon, 05 Aug 2019 07:57:34 +0000
Received: from [195.167.85.94] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1huXrF-0000xJ-5I; Mon, 05 Aug 2019 07:56:42 +0000
From: Christoph Hellwig <hch@lst.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: arm swiotlb fix
Date: Mon,  5 Aug 2019 10:56:36 +0300
Message-Id: <20190805075637.5373-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

my commit to add swiotlb to arm failed to initialize the atomic pool,
which is needed for GFP_ATOMIC allocations on non-coherent devices.
These are fairly rare, but exist so we should wire it up.  For 5.4
I plan to move the initilization to the common dma-remap code so it
won't be missed for other architectures.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
