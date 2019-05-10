Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C36619B3E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 12:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IM5eY09JRkOAXUSVeiW1jereCrKqToJ53n/sjUho0v8=; b=Zgq+vHKL20EG2c
	oeFx8Ul5S760y+Y2kWRplqPSoP8yOB7mWs1ErVEBA94pbn8u9zJ23Zi5F2O9xfnsoWsb7/oHbb8AV
	PQzvWcGDoKOeGd+sFRlk9d4iPROin5VJcpLsJTHT3kpi8gJwcTxSsipGAANshtebgDfYhxpJX7Udd
	qv+Tc+avaPQ19ejCz89NOsHOzA1t4wuSGuJSSlKaheeeqtoIVAQmSXlF5+96LHQdmEplz3iYJTiVz
	XQyMJ/8G0VwTvcTuuQsng9s7551S0SWDALpWlyPDftJjLxckOg5hNgSOTe5fb98MwgZRoiWSQna48
	CJEXN+CK+xO34dpKdQ4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP2ZY-00078K-Tm; Fri, 10 May 2019 10:16:12 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP2ZC-0006lQ-Bk
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 10:15:55 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 3E550891AF;
 Fri, 10 May 2019 22:15:40 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1557483341;
 bh=ta9F3sFG5pwxpKirorpYus2FIg7P+3XQmasHLOw8R9c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=TRbSFBSMEIurwJCoNu7kBp5acJtq+zFGMdfqUwzyMSspDMNNRVHlk79dMSF0hUBj0
 uItRt/Td8zI+s9ST0OLSp7irIIJWd+KRbBsiUYzMuhtNh4vjIaEmRdKz9Py21i1DbV
 5ICnWUFnfXT+/fI94k21eq/2W/8Jo8ou6NZPf3DYuGvhwhQSNczGowVaz3DDND1QBb
 fAFMSavMYWg0+uOIjPC3O4tKwQUdwbT8r2uOWBlkjZvY8EGwtjOEa2QXvOtWj9xa3y
 ybwi+APyutfFeUItZti9mlzBYHJrLoj0Joa/ONm3YTekugS4JEFlUVX1OXlIY07XQm
 E+7vYYMnh5iTw==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5cd54f4d0003>; Fri, 10 May 2019 22:15:41 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
 by smtp (Postfix) with ESMTP id 6D61313EFA1;
 Fri, 10 May 2019 22:15:40 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 0248E1E1D5B; Fri, 10 May 2019 22:15:39 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linux@armlinux.org.uk, bp@alien8.de, mark.rutland@arm.com,
 robh+dt@kernel.org, mchehab@kernel.org, james.morse@arm.com,
 jlu@pengutronix.de, gregory.clement@bootlin.com
Subject: [PATCH v8 7/9] EDAC: Add missing debugfs_create_x32 wrapper
Date: Fri, 10 May 2019 22:15:34 +1200
Message-Id: <20190510101536.6724-8-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190510101536.6724-1-chris.packham@alliedtelesis.co.nz>
References: <20190510101536.6724-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_031550_953201_DCC05834 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 drivers/edac/debugfs.c     | 11 +++++++++++
 drivers/edac/edac_module.h |  5 +++++
 2 files changed, 16 insertions(+)

diff --git a/drivers/edac/debugfs.c b/drivers/edac/debugfs.c
index 0a9277228c50..91b156b1f0c1 100644
--- a/drivers/edac/debugfs.c
+++ b/drivers/edac/debugfs.c
@@ -137,3 +137,14 @@ struct dentry *edac_debugfs_create_x16(const char *name, umode_t mode,
 	return debugfs_create_x16(name, mode, parent, value);
 }
 EXPORT_SYMBOL_GPL(edac_debugfs_create_x16);
+
+/* Wrapper for debugfs_create_x32() */
+struct dentry *edac_debugfs_create_x32(const char *name, umode_t mode,
+				       struct dentry *parent, u32 *value)
+{
+	if (!parent)
+		parent = edac_debugfs;
+
+	return debugfs_create_x32(name, mode, parent, value);
+}
+EXPORT_SYMBOL_GPL(edac_debugfs_create_x32);
diff --git a/drivers/edac/edac_module.h b/drivers/edac/edac_module.h
index dd7d0b509aa3..9822f1a7e194 100644
--- a/drivers/edac/edac_module.h
+++ b/drivers/edac/edac_module.h
@@ -82,6 +82,8 @@ struct dentry *
 edac_debugfs_create_x8(const char *name, umode_t mode, struct dentry *parent, u8 *value);
 struct dentry *
 edac_debugfs_create_x16(const char *name, umode_t mode, struct dentry *parent, u16 *value);
+struct dentry *
+edac_debugfs_create_x32(const char *name, umode_t mode, struct dentry *parent, u32 *value);
 #else
 static inline void edac_debugfs_init(void)					{ }
 static inline void edac_debugfs_exit(void)					{ }
@@ -98,6 +100,9 @@ edac_debugfs_create_x8(const char *name, umode_t mode,
 static inline struct dentry *
 edac_debugfs_create_x16(const char *name, umode_t mode,
 		       struct dentry *parent, u16 *value)			{ return NULL; }
+static inline struct dentry *
+edac_debugfs_create_x32(const char *name, umode_t mode,
+		       struct dentry *parent, u32 *value)			{ return NULL; }
 #endif
 
 /*
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
