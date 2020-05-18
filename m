Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 067201D8A87
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 00:14:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rCefdLcpaIOle/Xa4YwLa2l29nOnPa91eBBBtUbp09A=; b=NDBqO3P3HtSvXO
	yrPuok9zBhedfmnIyN1FqxNOiaiWKqHWtYTX9+aidPQrk2PmK6Fb779xWi23e6DbCselWmfyhk+Gu
	HvaagzTx2DF7dWJDjf5DxkN3ugHaYDlmM07mlz6PfyPkwMsCaOpESrCmYqhUZgEfHGV0mSRbZ56qf
	zSVWbvEY5YGUnt2Z3m7P2OWBOIW5J2H7RdYbFsPAOZeGCVEd11n7hjL10R/84fURGAOk216Sh2gZs
	wkG9S3oAbZDh/XNFhrKn9PzsaemoEF1A9XQ4hcBkDqeB6B3VvWgeQAiRrMhZe9Ld+DlhjWtYXMDYz
	ig0u+4NwTbfEgK3wXhxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jao1l-0008Ci-Q8; Mon, 18 May 2020 22:14:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jao1b-0008BQ-53
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 22:14:23 +0000
Received: from embeddedor (unknown [189.207.59.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC2062081A;
 Mon, 18 May 2020 22:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589840057;
 bh=onfFTV2EHN95M3D7dQOFHRH3PPQXSDCcX3o8p3KOPZ0=;
 h=Date:From:To:Cc:Subject:From;
 b=ZRWpi2SmYbpuYdb5oz+hDLU8XiiN4QEZj2hJutTRJftiKi1WLPyBj7tPr9UzuoBwS
 VO6qxp10IIaWhM85ElMDSGVMilvYdd2XmeQ/Nyl4U63CWKMUpry0y9pg+dy2yC7PEX
 3C5oLaFwGgIUbzZeStStjKDxlFAWo+VT8ykoUIq4=
Date: Mon, 18 May 2020 17:19:04 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: [PATCH] soc: fsl: qe: Replace one-element array and use
 struct_size() helper
Message-ID: <20200518221904.GA22274@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_151419_214488_7CAD3B8B 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kees Cook <keescook@chromium.org>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current codebase makes use of one-element arrays in the following
form:

struct something {
    int length;
    u8 data[1];
};

struct something *instance;

instance = kmalloc(sizeof(*instance) + size, GFP_KERNEL);
instance->length = size;
memcpy(instance->data, source, size);

but the preferred mechanism to declare variable-length types such as
these ones is a flexible array member[1][2], introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertently introduced[3] to the codebase from now on. So, replace
the one-element array with a flexible-array member.

Also, make use of the new struct_size() helper to properly calculate the
size of struct qe_firmware.

This issue was found with the help of Coccinelle and, audited and fixed
_manually_.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/soc/fsl/qe/qe.c | 4 ++--
 include/soc/fsl/qe/qe.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 447146861c2c1..2df20d6f85fa4 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -448,7 +448,7 @@ int qe_upload_firmware(const struct qe_firmware *firmware)
 	unsigned int i;
 	unsigned int j;
 	u32 crc;
-	size_t calc_size = sizeof(struct qe_firmware);
+	size_t calc_size;
 	size_t length;
 	const struct qe_header *hdr;
 
@@ -480,7 +480,7 @@ int qe_upload_firmware(const struct qe_firmware *firmware)
 	}
 
 	/* Validate the length and check if there's a CRC */
-	calc_size += (firmware->count - 1) * sizeof(struct qe_microcode);
+	calc_size = struct_size(firmware, microcode, firmware->count);
 
 	for (i = 0; i < firmware->count; i++)
 		/*
diff --git a/include/soc/fsl/qe/qe.h b/include/soc/fsl/qe/qe.h
index e282ac01ec081..3feddfec9f87d 100644
--- a/include/soc/fsl/qe/qe.h
+++ b/include/soc/fsl/qe/qe.h
@@ -307,7 +307,7 @@ struct qe_firmware {
 		u8 revision;		/* The microcode version revision */
 		u8 padding;		/* Reserved, for alignment */
 		u8 reserved[4];		/* Reserved, for future expansion */
-	} __attribute__ ((packed)) microcode[1];
+	} __packed microcode[];
 	/* All microcode binaries should be located here */
 	/* CRC32 should be located here, after the microcode binaries */
 } __attribute__ ((packed));
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
