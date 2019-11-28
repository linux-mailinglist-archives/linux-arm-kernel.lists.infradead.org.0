Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B155610CD45
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:52:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E1tyV8MjstiHoo6fFpnVHR8jz/tT8rzXAWjBVeFuMps=; b=RmV1XVIVRP31vcUk5Ng6F65Q01
	CtRqgT7JmHn2on1a5EzVtOFY6JaGCu9rRWe6XAUtxwzLbUpkV9zH/qcmPE4rKb3wCJk+C9cs0mpw6
	fXALy1MaEyBDdhVKA6i0QXmQysZn4d3L2NoKNbmofjyfUJV7krFtbFUC9Id/tTEnZTMMSFKtGBqzy
	QRUFePkzROIwbwNdHErBn42SzELcfJiOAOGTkTcEaApvkdlld8rXVTQPNYR+I2rrf4U0p05c0fAKs
	2CIh+d90FLTk5mGukxk/A7c2/Wa0wIIctrvevtCtoxdelVJtw4mEx5zc5AdBZItmeOOukf+Xr4kcw
	RRITp5nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaN20-0006G7-Ub; Thu, 28 Nov 2019 16:52:40 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMzb-0004Qk-IV
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:50:16 +0000
Received: by mail-pg1-x541.google.com with SMTP id e6so13117373pgi.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 08:50:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/CYFf1/fglZp7zKhC9PXoy9tsiufDFpWHrIfBoNpSeA=;
 b=j+pGVSDttH9jAktUOyITmB+U/zXlXzbNFhYXzCMcA9YJZsyvOI6ptywHmqwrnG657V
 ftZVMmSzBzBStJF3FvFBVguNBN8TxhFKRNxvT/m6XssDlhTd8hg+TyGWXhlsA0w59WrP
 BLzwMuPWzNVVol4FXSGqovGCtodZh3fUTlZJVirJH1GpmyUiwk+0m8+v5p2gzNNNGQxN
 mVFASCDxrO4X8ORdulic6AyyRWOS3GnWNQdBZiXZSvIY6OrBimlNOZiFKyoeAAResIxx
 qGIVd/cUVwNW2Qs4NUVrMmgeZSxr6+xP7wLPLbJt1DPDj/umY/SMhtsdLDi8QiGvAYMq
 kWpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/CYFf1/fglZp7zKhC9PXoy9tsiufDFpWHrIfBoNpSeA=;
 b=WKn7h6Omk/9VAq0ReP+YwAIU/TBVdbJDKiKlYrA/VGlVCuCej/fwL7NxL4Jh3QtyO3
 U7bVywTGePSqh+Pz2t0RV6QZPzurd2osXj/8asqUBCZJNhaq69EzB2O1maBjvn3yiuOD
 OvbJvaC2gukAxKOSmyDVIQA/OjMdalbVozIMfVRQlbBLQkaNvI7MVIAb3MkrDHdFmCFT
 QmJKoWPgfrBOEUxJQHOP2CWT2B6gyXDbDFIoqQ+IbZ4jkTu6VFqyBnl/Rr2OsZj5430p
 XLF0/MHknLeobavd6SYbyD83AbSdbdE9W5FLBXpUZiNJ38SH73TuEduYU7Rh7ObGSBsv
 L7XA==
X-Gm-Message-State: APjAAAVcHa6DvDVq5z4Bl4yyKQdu9VPQb3m868pR2JQAyN1DXaXXiYNV
 0OBgwi3snI/jXHEl4mUxerd9uw==
X-Google-Smtp-Source: APXvYqzpKQyfQldmlacCexxAJBteAtozIdoLogYWnWundKX96otdtVJvtxFQ/5CTEI8XhLTF/bnfEg==
X-Received: by 2002:a63:f62:: with SMTP id 34mr11469684pgp.19.1574959810061;
 Thu, 28 Nov 2019 08:50:10 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a15sm2450343pfh.169.2019.11.28.08.50.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 08:50:09 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19][PATCH 06/17] remoteproc: fix rproc_da_to_va in case of
 unallocated carveout
Date: Thu, 28 Nov 2019 09:49:51 -0700
Message-Id: <20191128165002.6234-7-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191128165002.6234-1-mathieu.poirier@linaro.org>
References: <20191128165002.6234-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_085011_707730_737E8552 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Loic Pallardy <loic.pallardy@st.com>

commit 74457c40f97a98142bb13153395d304ad3c85cdd upstream

With introduction of rproc_alloc_registered_carveouts() which
delays carveout allocation just before the start of the remote
processor, rproc_da_to_va() could be called before all carveouts
are allocated.
This patch adds a check in rproc_da_to_va() to return NULL if
carveout is not allocated.

Fixes: d7c51706d095 ("remoteproc: add alloc ops in rproc_mem_entry struct")

Signed-off-by: Loic Pallardy <loic.pallardy@st.com>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: stable <stable@vger.kernel.org> # 4.19
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/remoteproc/remoteproc_core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index aa6206706fe3..af9d443e7796 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -183,6 +183,10 @@ void *rproc_da_to_va(struct rproc *rproc, u64 da, int len)
 	list_for_each_entry(carveout, &rproc->carveouts, node) {
 		int offset = da - carveout->da;
 
+		/*  Verify that carveout is allocated */
+		if (!carveout->va)
+			continue;
+
 		/* try next carveout if da is too small */
 		if (offset < 0)
 			continue;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
