Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 785E980F4B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 01:00:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vjO1UInEiUIyWtGj0KMyLHozOqXw0aSQlCKvtvLw620=; b=kP2dT+/KduNPQW
	mzDHJc3qCEtkcYIvrZxhyCTb0ci6QNbd5WeoWGZTJbtLibM4RN4Bv76Yx1aOX3dcX/uFU1m642gDW
	lNxiGizqrqkHVDdasdCx7MICVXAGozl0yeUYXD4kyTHzeVM7IqgKTD8yeVtTSxy0HwnmIB0h5U0V3
	yqBN9lSBjQM9GgZHhPe/Wjh+3WZMlB3rxfDZz4E2MNcjoNH0FRHb8qll75wf2rxJ9fU5juUyQREDU
	k3a+69qpdSmqaT8fsScKS2SVNYMMO9qyNbbqtN7DH3WB7pV6q+mCVtn1Rov2RDNdR6Oqx3VVxukcW
	c8q6sFgACDvO9kEjxtTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huPUc-0002Hs-HK; Sun, 04 Aug 2019 23:00:46 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huPKQ-0006xT-4M; Sun, 04 Aug 2019 22:50:15 +0000
Received: by mail-pf1-x444.google.com with SMTP id b13so38599089pfo.1;
 Sun, 04 Aug 2019 15:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cegKTIaYJ+tSle0YiC1yJpybmvJrVZXG5Xryw9OToL0=;
 b=aCkaquioWJVgZ9oxi+kgs0xYn9XvezpV99sLT07IcNs8SpVl8RxEWxB8NfzIRBrjBL
 2B4dJHw2cG5TO6qtCk6u4ZcIwavE5x+pbFyHjAA9Gawo5yJz/cR/RN7KLFsBrzcuwVZV
 WP2fTbo7D/YmdMo3LfJiKW1AjSHc3oDEIZmC59HJW1UrPrOWaY8WJXtwgsxilT0195Uq
 ocw3UqvOC5KedpAwMEgqM2mZYVxGq6/tGgBNtuTtcR3B451sP4Bb3FZmj7gUlwzeWEUc
 XzVXXNThe+NP4na45hxvXL3T6bslaXSJNEyIhO73A4aiizrSPKRgEZ7pYwnnfabRC/Y3
 oqhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cegKTIaYJ+tSle0YiC1yJpybmvJrVZXG5Xryw9OToL0=;
 b=D2fts7c3d0MmeITnZuaviuiDM4xLilwvh0z7PhEqeCWz/iNsjjIjPMBpxZ666U6yHm
 hXpSdjOy7dPPtlXInIdmXLExwl9erk7El+FFM4dQzdkYwi7PjNqoGcVGAAaL2eX8ORhf
 kUrFwH2fgq5HKuYvfJgJW1phoRlGPCbpYcQLLqJX6d/NfllKvwRLjG+k5KaUqwDnnLMj
 e/p43dIlHkTJSeNx3mEdGOSCWXajnScp3W/tTtsbZMARt6JQqkRWL7PIxqWr43/f08lQ
 pQIfQUxWRiP2mlvcbTlRVimqRUaU22B9efKCKyxroQHkmN3fCtn3xqFjjqOS+JmqX3a3
 w7mw==
X-Gm-Message-State: APjAAAWfjVNclkSVQmWDFIyAC1HHihDZ2xNZbgQAP2F/kQmH1TB9IS+M
 zgtzguuVzyBdcv6CSrHSOpM=
X-Google-Smtp-Source: APXvYqwQo0taKdXUQzpI7809Qn44c5UC2qpj3t9n7qUuNadX/5xLSvSBDLCQnHDNoFHPmzlJl8WofQ==
X-Received: by 2002:a17:90a:2767:: with SMTP id
 o94mr14743655pje.25.1564959012976; 
 Sun, 04 Aug 2019 15:50:12 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.50.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:50:12 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 34/34] fs/binfmt_elf: convert put_page() to put_user_page*()
Date: Sun,  4 Aug 2019 15:49:15 -0700
Message-Id: <20190804224915.28669-35-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190804224915.28669-1-jhubbard@nvidia.com>
References: <20190804224915.28669-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_155014_534531_E08A2118 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (john.hubbard[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 ceph-devel@vger.kernel.org, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ira Weiny <ira.weiny@intel.com>

For pages that were retained via get_user_pages*(), release those pages
via the new put_user_page*() routines, instead of via put_page() or
release_pages().

This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
("mm: introduce put_user_page*(), placeholder versions").

get_dump_page calls get_user_page so put_user_page must be used
to match.

Signed-off-by: Ira Weiny <ira.weiny@intel.com>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 fs/binfmt_elf.c       | 2 +-
 fs/binfmt_elf_fdpic.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/binfmt_elf.c b/fs/binfmt_elf.c
index d4e11b2e04f6..92e4a5ca99d8 100644
--- a/fs/binfmt_elf.c
+++ b/fs/binfmt_elf.c
@@ -2377,7 +2377,7 @@ static int elf_core_dump(struct coredump_params *cprm)
 				void *kaddr = kmap(page);
 				stop = !dump_emit(cprm, kaddr, PAGE_SIZE);
 				kunmap(page);
-				put_page(page);
+				put_user_page(page);
 			} else
 				stop = !dump_skip(cprm, PAGE_SIZE);
 			if (stop)
diff --git a/fs/binfmt_elf_fdpic.c b/fs/binfmt_elf_fdpic.c
index d86ebd0dcc3d..321724b3be22 100644
--- a/fs/binfmt_elf_fdpic.c
+++ b/fs/binfmt_elf_fdpic.c
@@ -1511,7 +1511,7 @@ static bool elf_fdpic_dump_segments(struct coredump_params *cprm)
 				void *kaddr = kmap(page);
 				res = dump_emit(cprm, kaddr, PAGE_SIZE);
 				kunmap(page);
-				put_page(page);
+				put_user_page(page);
 			} else {
 				res = dump_skip(cprm, PAGE_SIZE);
 			}
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
