Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B392B1B80AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:28:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WBbqgdn4IS1IC8tG2FIJF6Gb2gfjwCH8mwpkh0onZSQ=; b=G1qIvOlZigh8iG
	DZapWCikvEO5tJ1bTQYGtg0MIpF1glnjWR/mme3meiaLcs8KDeLE6+lNC3LchgLV4JLiZNFZ16oNH
	1FJy9i0S1de1Dpi7lqmSTGXuIrJDo8B7bgYAK1/WXsC9K5iBemWqY8e476AwxhN5kCiwIw5XYCemM
	sJ07LC7U8MGBFQKmhkCVyzRnpmG06/om72jhusCTPpDrkZTanY7AiChNPbMxy4idtd7Se9ie+KEsV
	MKIVqu+rKri20t+St0nvDZRbVcntID0O6QEBnUixWKdiQBMkv1UGJdp/enMfHURCiVtHwdq48eX0h
	F51666t312ZYozCowFig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS4wD-0007ai-Vd; Fri, 24 Apr 2020 20:28:42 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS4sz-0004lT-SA
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:25:23 +0000
Received: by mail-pl1-x644.google.com with SMTP id z6so4148340plk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 13:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Zs8zqxSLmCFU6lZYzSjBYa2nEV+/JbKTSnr0oNB1H9M=;
 b=OBm+YaG5e7Hf79gRnIDBZNaKsh8b7ZMTm3+BICnzVBFchzziucaX2vdz1Hv2U4wWWp
 EcT/3bMOuXUFNAWq5WKuengPx+5y2fcGvHKhTvEZzrMcAp9+kNgx8ULtRQaj1VsNvOpQ
 qj2Yrg8Vn3xU5CSUU+C/M0KviqQ0YKH++EEcCiL3V5CUSo5gfl6Zuwp+cdPpX1BkMt1+
 BCTEf18ioZntEnAvgClbjfDXsHKPgGNrXVRhyrUUGe3RotINDtjIgWezMoHtIKkprwEm
 52k/IRykm18cYzv6tyXkxGpk0acftWHy4zSTQ2/lKYv3MiF+lIksGYegWWlFFILFYXqk
 pNEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Zs8zqxSLmCFU6lZYzSjBYa2nEV+/JbKTSnr0oNB1H9M=;
 b=gMMWEbl9tlyB3BVUo1/pLhbZweHU8CQq1Y0y/IDLPuhdEnq75QcLf0J/Ahd1houxef
 xBhJ1KQNK980JePgikNnk1nWm6ynDleqt64+ILRonmXwAmLD9Nki10ScXxdwucUve5Q1
 Ep5mPDlTngwOdO7lrpsuFKQwtF3PgIb3BYscZBImy3Hq/B2LzqqenM0cqF8InHhOFySt
 ZT5xg28RkPY94fLcIDKYpqCGnw/undxWKpOeb9RpPMHNhgWt4xfKhPq2m9cStm/iCUdC
 kIqAt+Evqv1IFe4diaULoSe0+qV7WWNijut+Nw5OO/BTiZB/fTVKoI8bFJmIOg9WtRhB
 2c2A==
X-Gm-Message-State: AGi0PuaEvVOac2+FaOWObLeQLW2bgg3QZavtXSf8YQfwzUjzNRxp8KE7
 M93iRP/tQWDeifZuJ2OKMGgSwA==
X-Google-Smtp-Source: APiQypJU8nTXTveTpL95Js1RKNrdGMPxwTFKK6UCZMwcjKNmAhFJgR4kBO2M3JrCnfwpW1TsGUDwwg==
X-Received: by 2002:a17:90a:82:: with SMTP id a2mr8752961pja.47.1587759920159; 
 Fri, 24 Apr 2020 13:25:20 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c1sm6553245pfc.94.2020.04.24.13.25.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 13:25:19 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v2 11/12] remoteproc: stm32: Introduce new loaded rsc ops for
 synchronisation
Date: Fri, 24 Apr 2020 14:25:04 -0600
Message-Id: <20200424202505.29562-12-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424202505.29562-1-mathieu.poirier@linaro.org>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_132521_974340_CDCA8A04 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: loic.pallardy@st.com, arnaud.pouliquen@st.com,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce new elf find loaded resource table rproc_ops functions to be
used when synchonising with an MCU.

Mainly based on the work published by Arnaud Pouliquen [1].

[1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=239877

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Loic Pallardy <loic.pallardy@st.com>
---
 drivers/remoteproc/stm32_rproc.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index b8ae8aed5585..dcae6103e3df 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -319,6 +319,15 @@ static int stm32_rproc_sync_parse_fw(struct rproc *rproc,
 	return stm32_rproc_sync_elf_load_rsc_table(rproc, fw);
 }
 
+static struct resource_table *
+stm32_rproc_sync_elf_find_loaded_rsc_table(struct rproc *rproc,
+					   const struct firmware *fw)
+{
+	struct stm32_rproc *ddata = rproc->priv;
+
+	return (struct resource_table *)ddata->rsc_va;
+}
+
 static irqreturn_t stm32_rproc_wdg(int irq, void *data)
 {
 	struct platform_device *pdev = data;
@@ -593,6 +602,7 @@ static __maybe_unused struct rproc_ops st_rproc_sync_ops = {
 	.start		= stm32_rproc_sync_start,
 	.stop		= stm32_rproc_stop,
 	.parse_fw       = stm32_rproc_sync_parse_fw,
+	.find_loaded_rsc_table = stm32_rproc_sync_elf_find_loaded_rsc_table,
 };
 
 static const struct of_device_id stm32_rproc_match[] = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
