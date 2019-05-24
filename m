Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B002928F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 10:12:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4YJcU+T64h36AkifP4ziFclnDOAO6SEgSxx96AyfJ1M=; b=ISP
	eIXINpYD/bbaAUv6IVqrc57AdmeZyXYM14fD92zxitJwQUatGSz2MlUE2/+Xh3LnKJIs0KQsEc4UF
	B7fDqdjHB9Pl2gfbLjp/usreHeFnN76ylaN6i84Y4pjWS3rrPy+HhNVdpAvfg/MJr6TKeV0uFf1rj
	sTGGPVnj+mgoKaWYGq5xOi2qmoy0yidn6pZeUMXlP53jsFK/oLoHcSF4vndu3vscNA+5rDiMUzhCD
	tPQULTD94lJ+OKur7lLKE7W/urgP215gF8U+wdWepXbghtXDrsLMqrTEbxB0XsM7Y4y+zwbp1jhaN
	A40FWImU3vR4TLLff/xLYlZWuAI6AaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5Ji-0000C1-8Y; Fri, 24 May 2019 08:12:42 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5JZ-0000BC-JX
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 08:12:35 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5C814307D851;
 Fri, 24 May 2019 08:12:31 +0000 (UTC)
Received: from hp-dl380pg8-01.lab.eng.pek2.redhat.com
 (hp-dl380pg8-01.lab.eng.pek2.redhat.com [10.73.8.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3C7ED19C4F;
 Fri, 24 May 2019 08:12:20 +0000 (UTC)
From: Jason Wang <jasowang@redhat.com>
To: mst@redhat.com, jasowang@redhat.com, kvm@vger.kernel.org,
 virtualization@lists.linux-foundation.org, netdev@vger.kernel.org
Subject: [PATCH net-next 0/6] vhost: accelerate metadata access
Date: Fri, 24 May 2019 04:12:12 -0400
Message-Id: <20190524081218.2502-1-jasowang@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Fri, 24 May 2019 08:12:31 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_011233_717965_FB573306 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: hch@infradead.org, christophe.de.dinechin@gmail.com,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org, peterx@redhat.com,
 James.Bottomley@hansenpartnership.com, linux-mm@kvack.org, jglisse@redhat.com,
 jrdr.linux@gmail.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi:

This series tries to access virtqueue metadata through kernel virtual
address instead of copy_user() friends since they had too much
overheads like checks, spec barriers or even hardware feature
toggling like SMAP. This is done through setup kernel address through
direct mapping and co-opreate VM management with MMU notifiers.

Test shows about 23% improvement on TX PPS. TCP_STREAM doesn't see
obvious improvement.

Thanks

Changes from RFC V3:
- rebase to net-next
- Tweak on the comments
Changes from RFC V2:
- switch to use direct mapping instead of vmap()
- switch to use spinlock + RCU to synchronize MMU notifier and vhost
  data/control path
- set dirty pages in the invalidation callbacks
- always use copy_to/from_users() friends for the archs that may need
  flush_dcache_pages()
- various minor fixes
Changes from V4:
- use invalidate_range() instead of invalidate_range_start()
- track dirty pages
Changes from V3:
- don't try to use vmap for file backed pages
- rebase to master
Changes from V2:
- fix buggy range overlapping check
- tear down MMU notifier during vhost ioctl to make sure
  invalidation request can read metadata userspace address and vq size
  without holding vq mutex.
Changes from V1:
- instead of pinning pages, use MMU notifier to invalidate vmaps
  and remap duing metadata prefetch
- fix build warning on MIPS

Jason Wang (6):
  vhost: generalize adding used elem
  vhost: fine grain userspace memory accessors
  vhost: rename vq_iotlb_prefetch() to vq_meta_prefetch()
  vhost: introduce helpers to get the size of metadata area
  vhost: factor out setting vring addr and num
  vhost: access vq metadata through kernel virtual address

 drivers/vhost/net.c   |   4 +-
 drivers/vhost/vhost.c | 850 ++++++++++++++++++++++++++++++++++++------
 drivers/vhost/vhost.h |  38 +-
 3 files changed, 766 insertions(+), 126 deletions(-)

-- 
2.18.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
