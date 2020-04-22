Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF92E1B3B5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 11:30:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vGPFm4hUUFmHcSDo1+4Cnrdfq0Nr7iGIC6CzzOvL9h0=; b=Sqm
	tbBuMWkABGgeZJdiyKhJTz7b8AsLFCBqn5/ZBJyEbPSUHjus+Qrr52WN8SVujxc5LaugbFNiDVhmj
	nvzX6e6bhRJeHXOh5XovUfLbPxrlWl4zw29KBT+juMaAbpgixeg7HaBE/iGPUOBQIzaiZyaPy/h9Z
	77E28EExQhvRzM+GM6VWM6U/NZnioqXXlJW/8f3i5AS/ruEMRn487KOSL2e+hPgkmJNw0mAtmqwJp
	gnxcYU7D6gSC0ZljQ2TLRgbqM4yXHgvhm1p+EPQpL6YV02HTcDiTIHTlzLSLs++pLupZbjrSn9F/G
	pjng950mpAnSsUs0tJg6wI+zzuDp50Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRBiK-0004YF-9J; Wed, 22 Apr 2020 09:30:40 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRBiC-0004XN-4L
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 09:30:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 43C6E27E077B;
 Wed, 22 Apr 2020 11:30:29 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id z96kb9nd-C_x; Wed, 22 Apr 2020 11:30:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id BBDE027E0D15;
 Wed, 22 Apr 2020 11:30:28 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu BBDE027E0D15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1587547828;
 bh=2gt8HJBzXeg55yVyCzThSQUVTL5BQLX2DcsHeo5owWc=;
 h=From:To:Date:Message-Id;
 b=lSXlU6VNWNw0jqforv/DKZlz99CYGmDEtG7Wbuo8brWU9hrFSlWFgzZSd93pW7k0C
 kCpogp+dK1woDF7ocBVvBn5lh7BqHPMCRItEwQJRkWAFnploQ+mRoxv7e5sh5rB4Rx
 zjiU0OUn6R5tBzJf9zCMYp4bVB/Alnt5K3VyUcS4=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id lD32-pm9U2hN; Wed, 22 Apr 2020 11:30:28 +0200 (CEST)
Received: from triton.lin.mbt.kalray.eu (unknown [192.168.37.25])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 9ABC527E077B;
 Wed, 22 Apr 2020 11:30:28 +0200 (CEST)
From: Clement Leger <cleger@kalray.eu>
To: Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH v3] remoteproc: remove rproc_elf32_sanity_check
Date: Wed, 22 Apr 2020 11:30:17 +0200
Message-Id: <20200422093017.10985-1-cleger@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_023032_502078_A4E664AB 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Clement Leger <cleger@kalray.eu>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since checks are present in the remoteproc elf loader before calling
da_to_va, loading a elf64 will work on 32bits flavors of kernel.
Indeed, if a segment size is larger than what size_t can hold, the
loader will return an error so the functionality is equivalent to
what exists today.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
Changes from v2 -> v3:
 - Rebase on rproc-next branch

Changes from v1 -> v2:
 - Remove possibity to override sanity_check operation

 drivers/remoteproc/remoteproc_core.c       |  3 +--
 drivers/remoteproc/remoteproc_elf_loader.c | 21 ---------------------
 drivers/remoteproc/remoteproc_internal.h   |  1 -
 drivers/remoteproc/st_remoteproc.c         |  2 +-
 drivers/remoteproc/st_slim_rproc.c         |  2 +-
 drivers/remoteproc/stm32_rproc.c           |  2 +-
 6 files changed, 4 insertions(+), 27 deletions(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index 448262470fc7..206363723071 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -2069,8 +2069,7 @@ static int rproc_alloc_ops(struct rproc *rproc, const struct rproc_ops *ops)
 	rproc->ops->load = rproc_elf_load_segments;
 	rproc->ops->parse_fw = rproc_elf_load_rsc_table;
 	rproc->ops->find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table;
-	if (!rproc->ops->sanity_check)
-		rproc->ops->sanity_check = rproc_elf32_sanity_check;
+	rproc->ops->sanity_check = rproc_elf_sanity_check;
 	rproc->ops->get_boot_addr = rproc_elf_get_boot_addr;
 
 	return 0;
diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
index 4869fb7d8fe4..df68d87752e4 100644
--- a/drivers/remoteproc/remoteproc_elf_loader.c
+++ b/drivers/remoteproc/remoteproc_elf_loader.c
@@ -112,27 +112,6 @@ int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw)
 }
 EXPORT_SYMBOL(rproc_elf_sanity_check);
 
-/**
- * rproc_elf_sanity_check() - Sanity Check ELF32 firmware image
- * @rproc: the remote processor handle
- * @fw: the ELF32 firmware image
- *
- * Make sure this fw image is sane.
- */
-int rproc_elf32_sanity_check(struct rproc *rproc, const struct firmware *fw)
-{
-	int ret = rproc_elf_sanity_check(rproc, fw);
-
-	if (ret)
-		return ret;
-
-	if (fw_elf_get_class(fw) == ELFCLASS32)
-		return 0;
-
-	return -EINVAL;
-}
-EXPORT_SYMBOL(rproc_elf32_sanity_check);
-
 /**
  * rproc_elf_get_boot_addr() - Get rproc's boot address.
  * @rproc: the remote processor handle
diff --git a/drivers/remoteproc/remoteproc_internal.h b/drivers/remoteproc/remoteproc_internal.h
index b389dc79da81..31994715fd43 100644
--- a/drivers/remoteproc/remoteproc_internal.h
+++ b/drivers/remoteproc/remoteproc_internal.h
@@ -54,7 +54,6 @@ void *rproc_da_to_va(struct rproc *rproc, u64 da, size_t len);
 phys_addr_t rproc_va_to_pa(void *cpu_addr);
 int rproc_trigger_recovery(struct rproc *rproc);
 
-int rproc_elf32_sanity_check(struct rproc *rproc, const struct firmware *fw);
 int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw);
 u64 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw);
 int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw);
diff --git a/drivers/remoteproc/st_remoteproc.c b/drivers/remoteproc/st_remoteproc.c
index a6cbfa452764..a3268d95a50e 100644
--- a/drivers/remoteproc/st_remoteproc.c
+++ b/drivers/remoteproc/st_remoteproc.c
@@ -233,7 +233,7 @@ static const struct rproc_ops st_rproc_ops = {
 	.parse_fw		= st_rproc_parse_fw,
 	.load			= rproc_elf_load_segments,
 	.find_loaded_rsc_table	= rproc_elf_find_loaded_rsc_table,
-	.sanity_check		= rproc_elf32_sanity_check,
+	.sanity_check		= rproc_elf_sanity_check,
 	.get_boot_addr		= rproc_elf_get_boot_addr,
 };
 
diff --git a/drivers/remoteproc/st_slim_rproc.c b/drivers/remoteproc/st_slim_rproc.c
index 3cca8b65a8db..09bcb4d8b9e0 100644
--- a/drivers/remoteproc/st_slim_rproc.c
+++ b/drivers/remoteproc/st_slim_rproc.c
@@ -203,7 +203,7 @@ static const struct rproc_ops slim_rproc_ops = {
 	.da_to_va       = slim_rproc_da_to_va,
 	.get_boot_addr	= rproc_elf_get_boot_addr,
 	.load		= rproc_elf_load_segments,
-	.sanity_check	= rproc_elf32_sanity_check,
+	.sanity_check	= rproc_elf_sanity_check,
 };
 
 /**
diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 0f9d02ca4f5a..f45b8d597da0 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -505,7 +505,7 @@ static struct rproc_ops st_rproc_ops = {
 	.load		= rproc_elf_load_segments,
 	.parse_fw	= stm32_rproc_parse_fw,
 	.find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table,
-	.sanity_check	= rproc_elf32_sanity_check,
+	.sanity_check	= rproc_elf_sanity_check,
 	.get_boot_addr	= rproc_elf_get_boot_addr,
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
