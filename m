Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8098B90253
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 15:02:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cEti8+K3YCjKMXUxx8HO/8f1TYj/DT7uSTnh6jM2/eM=; b=iA6kOMimAg7zkZ
	lppknCXZM6vm2DSv1F2lgjJhfGVEirD/4u9x+JCvOOzPtS5y9DZpUjBGad+NIAIeRVsA5+G9p79wh
	zCoGeOSWM7rW91YDBjHZWYXNo3WqCLG6vRutj3fkNIHWnKVmoBmMVDf8BJC6GUphpZtesANYH8dSs
	fVcTGJ6ZWOtjl6EmMQSJ3ub4kHRqZzPNqnDX4LBF+GAK2P/2TL9I9dSKLWmIkuTPYCmEIJYZC1iwt
	Uqvvwn5kMj+y+CJZFEyHRm93FWVEZypIhjQRA47xWl/0/gjBO3R2e5yPCkPSKwIX2QkAVZYsOHJJE
	wF4ddUIBCbrEU8uTb1LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hybrl-0007Vj-Ay; Fri, 16 Aug 2019 13:02:01 +0000
Received: from [91.112.187.46] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hybq4-0006GQ-61; Fri, 16 Aug 2019 13:00:16 +0000
From: Christoph Hellwig <hch@lst.de>
To: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Subject: swiotlb-xen cleanups
Date: Fri, 16 Aug 2019 15:00:02 +0200
Message-Id: <20190816130013.31154-1-hch@lst.de>
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
Cc: xen-devel@lists.xenproject.org, iommu@lists.linux-foundation.org,
 x86@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xen maintainers and friends,

please take a look at this series that cleans up the parts of swiotlb-xen
that deal with non-coherent caches.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
