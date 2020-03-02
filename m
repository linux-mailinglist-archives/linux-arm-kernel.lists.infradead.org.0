Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4663E17577C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 10:40:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=P+tkoM9ll2PWiYGyvDLO+YxNTyyvkEwBYA/2c9p+ehA=; b=RW1ybzH5d3i9GLjUCvzmjVf5gF
	0LxWlYZ7ysmcXT/AmecnNekCWskQHZ7TlSRFlODZ2BgqvqOTdJbqv9XPRYyH3Byv/OJx67AA+0edZ
	/9pIloP1BD4nUFMnnbToRTBPg+mBv7Ala/8/Hnu3leDZPhXXyPReRaylKsJDOBFptn10v/Tlp4MYH
	BasIrUMdMqMnkTcJBZUeH4ih5eWp0wUrsMe7y+MPT7lO/Yu3f9XL5P51pidW17lWD3ChfFm/IdtRv
	8ogPiXRwNcjWnXckBMFEfg2ueaLwlNOMynppeIHRXxxtiffhbVzg54RWV2EuQrpmZdnyonO4H9uII
	v/nVKnPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8hZ8-00053V-KM; Mon, 02 Mar 2020 09:40:46 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8hXh-0002ev-3L
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 09:39:19 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id CEFCE27E0863;
 Mon,  2 Mar 2020 10:39:13 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id mgNn83UJo0py; Mon,  2 Mar 2020 10:39:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 5D99E27E0847;
 Mon,  2 Mar 2020 10:39:13 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 5D99E27E0847
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1583141953;
 bh=cmtgDRRWU3Vy6SngUz4zn1M5GWvp2p7qQJKFG2fJNxI=;
 h=From:To:Date:Message-Id;
 b=oII9aqW2bvMm0GA1sEkyidymAWxpmxSfvefZ8v34uo7i1lQGZm+5cSbr0Ivrh24RC
 JX7zzX9uu+j9Rihxmw4w4lzH4f3iyZiKPwMNOwAWxJE9BCF45sf1QvDJya/Ei05RfL
 u6o0ANcjeMXYUmM2/phODnyA7UV/WV1a3UGaRbFY=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 79beRT_5Vj40; Mon,  2 Mar 2020 10:39:13 +0100 (CET)
Received: from triton.lin.mbt.kalray.eu (unknown [192.168.37.25])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 3C44E27E0840;
 Mon,  2 Mar 2020 10:39:13 +0100 (CET)
From: Clement Leger <cleger@kalray.eu>
To: Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-remoteproc@vger.kernel.org
Subject: [PATCH v5 5/8] remoteproc: Rename rproc_elf_sanity_check for elf32
Date: Mon,  2 Mar 2020 10:38:59 +0100
Message-Id: <20200302093902.27849-6-cleger@kalray.eu>
X-Mailer: git-send-email 2.15.0.276.g89ea799
In-Reply-To: <20200302093902.27849-1-cleger@kalray.eu>
References: <20200210162209.23149-1-cleger@kalray.eu>
 <20200302093902.27849-1-cleger@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_013917_477149_54EA8A73 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Loic PALLARDY <loic.pallardy@st.com>, linux-doc@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Patrice Chotard <patrice.chotard@st.com>, linux-kernel@vger.kernel.org,
 Clement Leger <cleger@kalray.eu>, Andy Gross <agross@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, s-anna <s-anna@ti.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since this function will be modified to support both elf32 and elf64,
rename the existing one to elf32 (which is the only supported format
at the moment). This will allow not to introduce possible side effect
when adding elf64 support (ie: all backends will still support only
elf32 if not requested explicitely using rproc_elf_sanity_check).

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 drivers/remoteproc/remoteproc_core.c       | 2 +-
 drivers/remoteproc/remoteproc_elf_loader.c | 6 +++---
 drivers/remoteproc/remoteproc_internal.h   | 2 +-
 drivers/remoteproc/st_remoteproc.c         | 2 +-
 drivers/remoteproc/st_slim_rproc.c         | 2 +-
 drivers/remoteproc/stm32_rproc.c           | 2 +-
 6 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index 4bfaf4a3c4a3..99f0b796fbc7 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -2055,7 +2055,7 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
 		rproc->ops->load = rproc_elf_load_segments;
 		rproc->ops->parse_fw = rproc_elf_load_rsc_table;
 		rproc->ops->find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table;
-		rproc->ops->sanity_check = rproc_elf_sanity_check;
+		rproc->ops->sanity_check = rproc_elf32_sanity_check;
 		rproc->ops->get_boot_addr = rproc_elf_get_boot_addr;
 	}
 
diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
index c2a9783cfb9a..5a67745f2638 100644
--- a/drivers/remoteproc/remoteproc_elf_loader.c
+++ b/drivers/remoteproc/remoteproc_elf_loader.c
@@ -25,13 +25,13 @@
 #include "remoteproc_internal.h"
 
 /**
- * rproc_elf_sanity_check() - Sanity Check ELF firmware image
+ * rproc_elf_sanity_check() - Sanity Check ELF32 firmware image
  * @rproc: the remote processor handle
  * @fw: the ELF firmware image
  *
  * Make sure this fw image is sane.
  */
-int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw)
+int rproc_elf32_sanity_check(struct rproc *rproc, const struct firmware *fw)
 {
 	const char *name = rproc->firmware;
 	struct device *dev = &rproc->dev;
@@ -89,7 +89,7 @@ int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw)
 
 	return 0;
 }
-EXPORT_SYMBOL(rproc_elf_sanity_check);
+EXPORT_SYMBOL(rproc_elf32_sanity_check);
 
 /**
  * rproc_elf_get_boot_addr() - Get rproc's boot address.
diff --git a/drivers/remoteproc/remoteproc_internal.h b/drivers/remoteproc/remoteproc_internal.h
index 0deae5f237b8..28639c588d58 100644
--- a/drivers/remoteproc/remoteproc_internal.h
+++ b/drivers/remoteproc/remoteproc_internal.h
@@ -54,7 +54,7 @@ void *rproc_da_to_va(struct rproc *rproc, u64 da, size_t len);
 phys_addr_t rproc_va_to_pa(void *cpu_addr);
 int rproc_trigger_recovery(struct rproc *rproc);
 
-int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw);
+int rproc_elf32_sanity_check(struct rproc *rproc, const struct firmware *fw);
 u64 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw);
 int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw);
 int rproc_elf_load_rsc_table(struct rproc *rproc, const struct firmware *fw);
diff --git a/drivers/remoteproc/st_remoteproc.c b/drivers/remoteproc/st_remoteproc.c
index a3268d95a50e..a6cbfa452764 100644
--- a/drivers/remoteproc/st_remoteproc.c
+++ b/drivers/remoteproc/st_remoteproc.c
@@ -233,7 +233,7 @@ static const struct rproc_ops st_rproc_ops = {
 	.parse_fw		= st_rproc_parse_fw,
 	.load			= rproc_elf_load_segments,
 	.find_loaded_rsc_table	= rproc_elf_find_loaded_rsc_table,
-	.sanity_check		= rproc_elf_sanity_check,
+	.sanity_check		= rproc_elf32_sanity_check,
 	.get_boot_addr		= rproc_elf_get_boot_addr,
 };
 
diff --git a/drivers/remoteproc/st_slim_rproc.c b/drivers/remoteproc/st_slim_rproc.c
index 09bcb4d8b9e0..3cca8b65a8db 100644
--- a/drivers/remoteproc/st_slim_rproc.c
+++ b/drivers/remoteproc/st_slim_rproc.c
@@ -203,7 +203,7 @@ static const struct rproc_ops slim_rproc_ops = {
 	.da_to_va       = slim_rproc_da_to_va,
 	.get_boot_addr	= rproc_elf_get_boot_addr,
 	.load		= rproc_elf_load_segments,
-	.sanity_check	= rproc_elf_sanity_check,
+	.sanity_check	= rproc_elf32_sanity_check,
 };
 
 /**
diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index a18f88044111..9a8b5f5e2572 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -505,7 +505,7 @@ static struct rproc_ops st_rproc_ops = {
 	.load		= rproc_elf_load_segments,
 	.parse_fw	= stm32_rproc_parse_fw,
 	.find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table,
-	.sanity_check	= rproc_elf_sanity_check,
+	.sanity_check	= rproc_elf32_sanity_check,
 	.get_boot_addr	= rproc_elf_get_boot_addr,
 };
 
-- 
2.15.0.276.g89ea799


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
