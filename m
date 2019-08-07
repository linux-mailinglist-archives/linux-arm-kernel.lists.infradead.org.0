Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 535948410D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 03:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=okMzL/r/np3hnVn8Q01AQaTqt1uL66qIrjV4EAlt++M=; b=hUr8pCkn/xsvFH
	WJVA+kb3ARlC4AilbCrIVx1Pd5xvoFUwVlP9A3It64Mn6isxZhM6dZcJaYwaZLrWzAgv3aF/Rt2f/
	/PziVzbae/w6kXtkh0wR3/Z8vMJ8WHuqda3tziML7oCLzLKFOpvNhHtpapIbHEYIhiJZM+Zu3SMJJ
	w0svPgUVcH/flgQdGLsymAf85dEM3ucd6VWdsFlm97fHFeEL11mb++GIsief45viS6UpeFvAfBb3r
	uDpo2uRbRABxwyciO3+rU2t4bGuUTXbCtchrQFeYWHoOc14StcSaSbhats3+bJoTBPLZY3RmcPTWt
	bUHk38ivRXmVDv2LxcCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvAwc-0003L0-Ea; Wed, 07 Aug 2019 01:40:50 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvAqM-0002Wg-HT; Wed, 07 Aug 2019 01:34:24 +0000
Received: by mail-pg1-x544.google.com with SMTP id n190so1731074pgn.0;
 Tue, 06 Aug 2019 18:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6GC3vp7Kgk6wrS2t1aIFSliRmKpmpPmHRVTf1Sq+2hE=;
 b=NDRrGTHqLYH0GVc6uMIRr4mVyV40WfAqYn7w+X7B2+KxadDpBkUoDH1692sptrKq4y
 C2b84L9+UrVSHeZfQfv6N2zieXkMMjWSuutP0ntWCNqq+OA3nS79IQYMOR/Bean1Ukkm
 w7u/RLKab4ibriFSyZKOgsWuNa5tCFv8C2bD6EQGHf8xo4i0ZMfxDnYEz3SYXrEQ1CAQ
 ph6xeZb31fEX0ILajRxBkvT5tnY8c7uU4gyqYPRAJWZF0hsMvVjXdHAtEuwcqejfTPc4
 Etr29q0fUGsdTj13fryfrujh6CCSRKTL9s9VWAxoxYETeOz9px/+oFZuuGBV9dnVGiqV
 vySQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6GC3vp7Kgk6wrS2t1aIFSliRmKpmpPmHRVTf1Sq+2hE=;
 b=WtCJOBbDJEFuYWJjAnVPu96VWxuQN+jj/hf2JwvVltq9B88ibkORi1ugAHcHsj5mg8
 /JNwquJw+ON2vpeX8SaLSMX5SfkLSl+rtssNk7oWHlbpAQuVNXifSoI4BBc/millN0sW
 THATcgrLd+97S1x3Az/VF8XfbwmKChlnyQ4kQ+2ABsvm9jxCqkmMu7xzfPxIrINoQJhR
 dN1TGrLtDZ9koOkpKLKsCedOelP53VpT/DhhWv3V2USG75k5bdGcgqywlSF88jheau4l
 ER4dZ+07e5EKPpyfWw7IzP3082kCjVsIDlD/IvdYuSVuoxa4WbFXW5jbnl0pl7WWw/I1
 dZTA==
X-Gm-Message-State: APjAAAVJe1hf2oLxkkP1q1s/nXPmoLVNm+W9d2+ryY2jPFpefiAhekc9
 Ot5ydVKBl1ArrxJQyTK6zHU=
X-Google-Smtp-Source: APXvYqwBJlH3d0L/1BSxFnL+vLT8aQU3g2pJmlFcXlcqO/GjIhh0NRs5+pZNe4h8FrEWDwW4ivgjRA==
X-Received: by 2002:a63:124a:: with SMTP id 10mr5554258pgs.254.1565141661706; 
 Tue, 06 Aug 2019 18:34:21 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.34.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:34:21 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 23/41] fs/exec.c: convert put_page() to put_user_page*()
Date: Tue,  6 Aug 2019 18:33:22 -0700
Message-Id: <20190807013340.9706-24-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190807013340.9706-1-jhubbard@nvidia.com>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_183422_915134_F8E38C8B 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
 linux-fsdevel@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: John Hubbard <jhubbard@nvidia.com>

For pages that were retained via get_user_pages*(), release those pages
via the new put_user_page*() routines, instead of via put_page() or
release_pages().

This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
("mm: introduce put_user_page*(), placeholder versions").

Cc: Alexander Viro <viro@zeniv.linux.org.uk>
Cc: linux-fsdevel@vger.kernel.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 fs/exec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/exec.c b/fs/exec.c
index f7f6a140856a..ee442151582f 100644
--- a/fs/exec.c
+++ b/fs/exec.c
@@ -227,7 +227,7 @@ static struct page *get_arg_page(struct linux_binprm *bprm, unsigned long pos,
 
 static void put_arg_page(struct page *page)
 {
-	put_page(page);
+	put_user_page(page);
 }
 
 static void free_arg_pages(struct linux_binprm *bprm)
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
