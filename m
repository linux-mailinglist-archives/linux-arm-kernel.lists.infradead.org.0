Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4E39CB0F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:56:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JiXJt6NCIfOhgXKIILcrm9XVxTs3PHt1AzrAiUXYSIA=; b=Q3jDrHTpo4SGh5
	QI8/LPCwTFexfoJuFoQWgs32w2UmrdQXdkoa0Npuy7pojrUMtIpsmhtPP/QbqiAg8w4h9sXCxjWkM
	25nDkxSGF68nvNSkzDtNjOMPfxSOgLr+y2QOp+wKUtaHRY49xmm1fefy/PYUtLTsbksGhbkjiGG4f
	qC5S5+mKRF1WJ6u7i9kCAVjIcoGd77L3SNd30aU/8g/lGPyd0D8IE6gnd0fogTOplmu53FsJbxP7P
	7UXWVbQTFtHJAqOl/hChI9YAazOTaW+jmWQNASObpeFiZDxWi4nPjHdlLQTk+LK/Q27unD+Dn2w4b
	Uyye+BwS0yiwxTYTwbpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29rH-0000NS-Fu; Mon, 26 Aug 2019 07:56:11 +0000
Received: from [2001:4bb8:180:3f4c:c944:137d:e92e:5fab] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i29r6-0000Mf-K3; Mon, 26 Aug 2019 07:56:01 +0000
From: Christoph Hellwig <hch@lst.de>
To: x86@kernel.org
Subject: remove various unused set_memory_* related functions and exports v2
Date: Mon, 26 Aug 2019 09:55:53 +0200
Message-Id: <20190826075558.8125-1-hch@lst.de>
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

Changes since v2:
 - dropped the already merged arm64 patch
 - fix a subject line to not mention the wrong functions

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
