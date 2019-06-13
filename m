Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9280343310
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 09:09:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eNa5MRxnEW6RWnLsYq84k10Ou+x9oC9nOBQCRtgJB4s=; b=Zd0nhNMhMJ6Jri
	6mTSXQXe6KrTwAEbHBEmIlNs4o+R/n08O5n7M3kUWIuIAmQXF+SL3ogWud5iY9f6gvz/2rU4w6r3G
	1ufDaR06LtYzZFy8esQS5eEQWhYcLVl8dp6Qy1/rJa1OB99PX9ZSO+3Gs5ozEwRfbeNIqB/2IA12Q
	dmaFzaE61de+KYu6b7/bObqoKBSVuiyDY2ZLtC67hPG9OLDKeoQpOhmoHGRFvU6pN1i2niludbGoQ
	Y4+ex9PU8m1W0OQ1SOhtbMv8JbU5BfFl73Ulmqik7l5R2irvZiEBnyO9vrUIrvGtDUqQingF6SIut
	Mu8BoT4n/V9bTSNgU7hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJri-00049i-Ph; Thu, 13 Jun 2019 07:09:42 +0000
Received: from mpp-cp1-natpool-1-013.ethz.ch ([82.130.71.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJr8-000494-05; Thu, 13 Jun 2019 07:09:06 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: binfmt_flat cleanups and RISC-V support v2
Date: Thu, 13 Jun 2019 09:08:46 +0200
Message-Id: <20190613070903.17214-1-hch@lst.de>
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

below is a larger stash of cleanups for the binfmt_misc code,
preparing for the last patch that now trivially adds RISC-V
support, which will be used for the RISC-V nommu series I am
about to post.

Changes since v2:
 - fix the handling of old format flags
 - don't pass arguments on stack for RISC-V
 - small cleanups for flat_v2_reloc_t

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
