Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93723841B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 03:44:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vjO1UInEiUIyWtGj0KMyLHozOqXw0aSQlCKvtvLw620=; b=CqVd5V9dvXJRBU
	RS6iEWOZwf+R0FWkjXPqAmm4c0r65fSCkoIk62ghUJHLxTU+eH1qZFNP5IPrGqJbwauPwrCUA8tXz
	O2+UB1aq0jZLBejB52NEWVW8IQcD9SNeJSOtNI9GtCoiOgwulEnt422ihd+v8Tti7LyusnrD7WVVJ
	HqjjRJoUwlEMsouXmfLK2QB5tmH5xfxGnxrlnNr2jgFpkL4T607VgjK86mx1FuRZuGqnujETBirLC
	zV31GeUOZtX2FB508X+h9BuLHiShkTz/RsuAbmO05eWUgB5hUC0RDGCxuRnGb4t4OCfD2ZF+FL/GJ
	ysn0OSTIW79n4DNQQRJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvAzx-0007NI-8A; Wed, 07 Aug 2019 01:44:17 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvAqg-0002y2-Vw; Wed, 07 Aug 2019 01:34:47 +0000
Received: by mail-pg1-x541.google.com with SMTP id z14so5311404pga.5;
 Tue, 06 Aug 2019 18:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cegKTIaYJ+tSle0YiC1yJpybmvJrVZXG5Xryw9OToL0=;
 b=gZINIBPpiSlkU+80KFQT2S/tbeKnfN8Fqd69WGW6s9PoHlp7eF6XztSLcUxuW4oRoZ
 aif7qo6403jD2jU7LBsHpubuYdPGQryF8kiw1ZTc3iFqoyXR++oshdcjJ7vxHU3SStmv
 hRrnv/6QnmfU9YFS9vFfR/LY5o8S7tCbaokKkpmJCmaCQPMpBAUHfIH7veXkFUWyuI/D
 QxXzz4jXTjDqbca8hg8XrnqAJ/u2yXOWeQAohMq1NTArxvWPC4Z+YJ1UfdhghSe68uD6
 jg98gaM28Wf1Jgr/YOooV8Oz8uSBvPGIEINpe+ifSuk1KD3Z7HL09IvdAtxhoavy3yVQ
 XT/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cegKTIaYJ+tSle0YiC1yJpybmvJrVZXG5Xryw9OToL0=;
 b=lUICXfq/IImv8CY12+lp9BmVY3CQhw8361DDa+uo8iO/PLI5/RR5ZqPY9ajuJ4w5AK
 QaR2+4xIZIIDWB7t9nAtqcMH6lhvx/4uIsq9TUUK9gXTtNRIBtp6z9C0FbBRYXtav3iZ
 fhP1DEEzPgF4TXEIZ1hR2fRnMhTi6TidRptvIkUo6Cr0MLaTWrYNh58abYZ3hGOuDsns
 dkBF/DG/yOZyMoyKjBYfNfJMd4Zwv26TYfrS9pU0zZz4P7UoJA6oI3RTf8NPs3N7l6Aj
 awOL+PMfZmgTCbyB1O5wSBF40xyPv/y0AEjy8YkUzhduliRNYePG3DTBkn+caRQoSjPQ
 1xoA==
X-Gm-Message-State: APjAAAVeNMJMMahmaQ+9/3EfAgZH+n3M72FJIkhx/ctkeOa9toVvOGfa
 ZRmVWL5qBP/ZNww0pttxqjE=
X-Google-Smtp-Source: APXvYqzSNe/bSKcNensRQ/IJ84TBXlUJvFYUKsvrq7/hKNH55OC+L+xYYWdqI5nDZFgfOlgeKmaOXw==
X-Received: by 2002:a65:6256:: with SMTP id q22mr5554856pgv.408.1565141682238; 
 Tue, 06 Aug 2019 18:34:42 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.34.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:34:41 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 36/41] fs/binfmt_elf: convert put_page() to put_user_page*()
Date: Tue,  6 Aug 2019 18:33:35 -0700
Message-Id: <20190807013340.9706-37-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190807013340.9706-1-jhubbard@nvidia.com>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_183443_066665_60079765 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (john.hubbard[at]gmail.com)
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
