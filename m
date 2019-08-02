Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4107E9AF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 04:26:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nupoLmNbeZqm25mdkzWQyd3uZL7kOx6PmXVZSJJO77k=; b=dSbxc3kIC5kB6V
	KnSQjOw5hjqZdGLY5MUxWLKzmo2r57rq1gcrwBHAnG9CCfyNCYgZEdSb3JYXcSUqJKGtMbOLAgWWU
	EeaK3b2QyisXRIODhrybbz6Orfa26QuCdQkyFZXCZQR2s3J3wbvmT0o2KjivJUk8oXbXCLh2tj1t4
	MqXPyCXygGJ8hxq6I0XLyLsj9+Z5XYQhLkYefUop2UvBnoeGlY9YAk1Nzmj1f45Ludr+0qsncJBw8
	8Szpq9NbVrA5zotE3dBdZtsn5GrKwf8vhPMVwe9U2wJE5jbslpPTgp6sNA9VmXvzuJWqvbPiXKeAH
	G2L6luaS7QteIan3mgQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htNGc-00006P-DQ; Fri, 02 Aug 2019 02:26:02 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htNBR-00026E-0m; Fri, 02 Aug 2019 02:20:42 +0000
Received: by mail-pl1-x643.google.com with SMTP id t14so32990222plr.11;
 Thu, 01 Aug 2019 19:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Zk7mJfsjIPJK9Qgsn0u5osZJajJrXebF0c1tZrgdgoI=;
 b=nL5gA8HkBp1qUXL8uSk44yRPDpQM1GzztnKY+vjFkpLO4+ej8Ho3KCm6C4y+E5m8LE
 h9Iaftsjh1UsJUr+Pb21bHX0tSSHXapiGzhmehbpJMXTX/8OVSokepo7ZYp/sAOufRJM
 Dn+Q/LNbJL1I2nNGcQbJ8ZQUaKHbOXUsbWTmj876BCAWOoZWZ6NdZCYaUx//X8gLE1Fe
 Ao4iR+EL7uUQrdQvqWcLAimsvB7jPrqJUl8VTCYTJSYJDpeTKlwz9tVoL0Kex6hlm0oH
 POKBdW3YOuZavjeRiRdEl20H0UanKpKGw2d45prgvnfRqnKjFtcxDl+Dci+NMwFW+1GP
 a0XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Zk7mJfsjIPJK9Qgsn0u5osZJajJrXebF0c1tZrgdgoI=;
 b=A0AWAqouxy2K/sP18cVPQVnDRu9GjVhfkAnR1oGZFirJiL7dZRIQdh8fwFlks23ZCQ
 yPddUAyMV3ovcIMhmaXMuo1xINAlXUXNxDGAMvnOLFDvcdnD6sM4YcFduhy4BVFBAUWn
 AcupVtv4FSY43cbNVTDMigbSOmvHGbyMTxDksdzI3Jc/KpKPfv72HwgZ4P4o1iriGbId
 mXqx21/dTQZATtfaGmIchQkY4xM4TBze9VxNh0vEe1lDJFkEo1J4+My92963y47QMIRU
 2KejjZ0KjrvevWa7NZSDAml8frWZPdCUfvrKwXXRfxwToyv7BjiPNyFbfulrzUzFKGuI
 DXvQ==
X-Gm-Message-State: APjAAAVVYLygYvkUmZL00M/HtsaV9cuWwBUiwuVi70RqFGnVdPs+lG3Y
 lJ9vlZ12MakrDphuDAzXXpc=
X-Google-Smtp-Source: APXvYqztsbUVpJnR1pWJXE324fW+SugJBxHHKLNQRZirN/VnD1v0OsiDr/qT4pG5Y0OOV3QlfOZRKQ==
X-Received: by 2002:a17:902:830c:: with SMTP id
 bd12mr131600821plb.237.1564712440479; 
 Thu, 01 Aug 2019 19:20:40 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:20:40 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 18/34] fbdev/pvr2fb: convert put_page() to put_user_page*()
Date: Thu,  1 Aug 2019 19:19:49 -0700
Message-Id: <20190802022005.5117-19-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802022005.5117-1-jhubbard@nvidia.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_192041_098948_9B9B9434 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (john.hubbard[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Kees Cook <keescook@chromium.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Arvind Yadav <arvind.yadav.cs@gmail.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Bhumika Goyal <bhumirks@gmail.com>, Al Viro <viro@zeniv.linux.org.uk>
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

Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Cc: Kees Cook <keescook@chromium.org>
Cc: Al Viro <viro@zeniv.linux.org.uk>
Cc: Bhumika Goyal <bhumirks@gmail.com>
Cc: Arvind Yadav <arvind.yadav.cs@gmail.com>
Cc: dri-devel@lists.freedesktop.org
Cc: linux-fbdev@vger.kernel.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/video/fbdev/pvr2fb.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/video/fbdev/pvr2fb.c b/drivers/video/fbdev/pvr2fb.c
index 7ff4b6b84282..0e4f9aa6444d 100644
--- a/drivers/video/fbdev/pvr2fb.c
+++ b/drivers/video/fbdev/pvr2fb.c
@@ -700,8 +700,7 @@ static ssize_t pvr2fb_write(struct fb_info *info, const char *buf,
 	ret = count;
 
 out_unmap:
-	for (i = 0; i < nr_pages; i++)
-		put_page(pages[i]);
+	put_user_pages(pages, nr_pages);
 
 	kfree(pages);
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
