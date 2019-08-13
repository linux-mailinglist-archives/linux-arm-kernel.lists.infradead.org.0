Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8CE8B336
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 11:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3JNYYcQ+sL0aeqeir82C7pDCknLE0oy++HdlUr+62nA=; b=Ve1o8CuB5t47Yu
	RkRFftLRSffwqdOWXG7BDO8tuYFKkLx+PGWITgJKNeqBoLhUesk537f0Yfox669t0Q1x6E+7R38hm
	2BSk8sJ/4gJ21PgscN1keSQ+TnFsi4Zu8uw2TqSACflm5ocV30zgo692D99RvRWgGmo1UjhWUxDtn
	6Y01y9MLFND++e1CCrdOK62W2XRS6z2uwkPiHoHA7FOtVoKGpLaNh86olt41i1w4RDpHp2Q2/PPYb
	OLslbpJOl7iotFT4hsPO+p0YmLwdnZAFq6MEI7jYnhg9oSDNLOtC2iNom6CWJWv2g4mUp85vAwUAE
	m7veDuQhO8L24yiGVe6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxSgw-0006P5-Dm; Tue, 13 Aug 2019 09:02:06 +0000
Received: from [2001:4bb8:180:1ec3:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hxSgg-0006Ot-Op; Tue, 13 Aug 2019 09:01:51 +0000
From: Christoph Hellwig <hch@lst.de>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 x86@kernel.org
Subject: remove various unused set_memory_* related functions and exports
Date: Tue, 13 Aug 2019 11:01:40 +0200
Message-Id: <20190813090146.26377-1-hch@lst.de>
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, Andy Lutomirski <luto@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

while looking into implementing a DMA memory allocator for PCIe unsnooped
transactions I've started looking at the set_memory_* and related APIs,
and it turns out that many of them are unused.  Fix for that below.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
