Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF89E66557
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 05:51:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9S2Pgc4ORipN828L0ZobUEogDVV9mTwLoi6G9voI4g=; b=maaNdO64rezj0+
	zRccstZ74K9UaidNZ0VNeQdEWO2gHX89sloVzdC2KhYeSBerE9vffIWjJrLj3RJ9UUClaU6xpsncw
	L0b/oBRFd8XAfBtElJTMl9AYc5aWkbPaiK6Q7R+K2nZK6UzQ2ablEZA3ELatq0yPBFZ95cw67A+pC
	w1PS5e+1QjBLrDzEG/O5cOU8XiIgrdUstqjB+FVwpchACw2pT+WCosE85hGqv515PMibFXRLzWY8z
	/3SY6rtEiTSHxNlyC31YQPYnJwKYgNc1ULVMSpcH6C15T4JP+Q4yxdncao5Klg27Cf4cbWc1UgNfC
	y7hqtTj9qnGYv5mpsWnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlmb2-00024M-8i; Fri, 12 Jul 2019 03:51:44 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlmYo-0007n9-5g
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 03:49:30 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 5350A891B4;
 Fri, 12 Jul 2019 15:49:15 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1562903355;
 bh=02ghrJdoNyIhrZDPFsjbaOpdEUmOgsH7iT2rLeTfeyQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=wTXiUdkZeaAsGCJV9p9PsIP8yGROOHv1bI0GRJKAjmWLj/+fzKIH/ctcaV8edjqfS
 TpyatjLy4TyNGdgMpS70MsX3iiXZkKD/JeZY73O2ngc3ITCBPRZId2K+Ydnu2EiaEa
 Qj/sc7z0veB92HaT/5aafVAmM4KgqcMJTmfo8fnFEPImP+n+RlkdbT1z1M/3SmxzHH
 x1uBW7uDvbbeD5NbriBcKfWwisRkRMArZ3Q3pkc6um6YX0ALgtH9KE9RsQ10aQ6zxZ
 BOCGZUKbTi3IlnbdEVheCQrC8UFJ+VjpCTGxkU9trh7C7awc2QjcXQ3E2JdxYf8ors
 0nGdgxb8ExNdw==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d28033a0006>; Fri, 12 Jul 2019 15:49:14 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
 by smtp (Postfix) with ESMTP id 1D49313EF47;
 Fri, 12 Jul 2019 15:49:16 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 54A4F1E1D7A; Fri, 12 Jul 2019 15:49:14 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: bp@alien8.de, robh+dt@kernel.org, mark.rutland@arm.com,
 linux@armlinux.org.uk, patches@armlinux.org.uk, mchehab@kernel.org,
 james.morse@arm.com, jlu@pengutronix.de
Subject: [PATCH v9 6/8] EDAC: Add missing debugfs_create_x32 wrapper
Date: Fri, 12 Jul 2019 15:49:02 +1200
Message-Id: <20190712034904.5747-7-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190712034904.5747-1-chris.packham@alliedtelesis.co.nz>
References: <20190712034904.5747-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_204926_610471_139BAD72 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Borislav Petkov <bp@suse.de>, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jan Luebbe <jlu@pengutronix.de>

We already have wrappers for x8 and x16, so add the missing x32 one.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
Reviewed-by: Borislav Petkov <bp@suse.de>
Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---

Notes:
    Changes in v9:
    - Adapt debugfs_create_x32 to account for recent changes to debugfs apis

 drivers/edac/debugfs.c     | 11 +++++++++++
 drivers/edac/edac_module.h |  4 ++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/edac/debugfs.c b/drivers/edac/debugfs.c
index 1f943599a8ac..4804332d9946 100644
--- a/drivers/edac/debugfs.c
+++ b/drivers/edac/debugfs.c
@@ -138,3 +138,14 @@ void edac_debugfs_create_x16(const char *name, umode_t mode,
 	debugfs_create_x16(name, mode, parent, value);
 }
 EXPORT_SYMBOL_GPL(edac_debugfs_create_x16);
+
+/* Wrapper for debugfs_create_x32() */
+void edac_debugfs_create_x32(const char *name, umode_t mode,
+			     struct dentry *parent, u32 *value)
+{
+	if (!parent)
+		parent = edac_debugfs;
+
+	debugfs_create_x32(name, mode, parent, value);
+}
+EXPORT_SYMBOL_GPL(edac_debugfs_create_x32);
diff --git a/drivers/edac/edac_module.h b/drivers/edac/edac_module.h
index b2f59ee76c22..388427d378b1 100644
--- a/drivers/edac/edac_module.h
+++ b/drivers/edac/edac_module.h
@@ -82,6 +82,8 @@ void edac_debugfs_create_x8(const char *name, umode_t mode,
 			    struct dentry *parent, u8 *value);
 void edac_debugfs_create_x16(const char *name, umode_t mode,
 			     struct dentry *parent, u16 *value);
+void edac_debugfs_create_x32(const char *name, umode_t mode,
+			     struct dentry *parent, u32 *value);
 #else
 static inline void edac_debugfs_init(void)					{ }
 static inline void edac_debugfs_exit(void)					{ }
@@ -96,6 +98,8 @@ static inline void edac_debugfs_create_x8(const char *name, umode_t mode,
 					  struct dentry *parent, u8 *value)	{ }
 static inline void edac_debugfs_create_x16(const char *name, umode_t mode,
 					   struct dentry *parent, u16 *value)	{ }
+static inline void edac_debugfs_create_x32(const char *name, umode_t mode,
+		       struct dentry *parent, u32 *value)			{ }
 #endif
 
 /*
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
