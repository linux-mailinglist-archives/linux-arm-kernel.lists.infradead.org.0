Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D52981B8096
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s4vhY5M9L2q2iIyQpZb+YRUd23hsGRwDhhmLCJEhAIo=; b=XyKle/I12EY0ja
	90ehuojvzJneGXXI+JxyQhBzFrwUiD+zVSX9Zrg6srDh7/KLh8mc5yXLoGUKCbUEsp3Bu43KRXn0V
	HmgqnZMgfscIZw00/jAUr3EsMEuvUoWG+c5xe12+zptqIu/BEIhvKmVYww7b0PgDlXNFzWaoYs2Kp
	m6+dnTiNCORIox7AWXq2lWuNPIvr66kSnjr/ClA3iSz0OJWEDSGishLE3Zf3RNtdMm5pSbr/xqQMc
	KYi4vhZ0/QgdgazI2ocJkTqkQxjxrrjt34gjIqIsvBdhs+sjSGa7AXLtjNHJesdStKjGYWVn28zqH
	/0wn8Bp033JPOeH2Lelg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS4t5-0004hl-Vg; Fri, 24 Apr 2020 20:25:27 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS4sn-0004Kf-Bg
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:25:14 +0000
Received: by mail-pf1-x444.google.com with SMTP id p25so5332031pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 13:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p2iTWW4nO5SL6In2uagzPcw9ivsY9NbY9ua5sw1Z8YY=;
 b=Xh2v5zI/BaXOCyJfw0q7LclyWcz17VcHHRAtRtzAcWv4MREiZiUr1J57Qh4LJD8BbF
 xVMrr3t30yanDFyJWCs1QAlhVVOPRQE1Ayy8l+zkS5hsvfZBhqo64LotHv+13vShH52s
 wv70aHtI8AK4YzwCCPu1bRvf4t3gI0y3Gg+gu0cfcOukzcvEoZvDZK3qlFeucEIz5Xoa
 p9UPO8xv7uLv96Kr6yUS5T/DFvplz/q3gISrhvhd2RZMX+4ccKZkW0qJpKovw4Wfxlaq
 OsHB6DdRPFDTnyMA+I0y/d1mIUtmQUeUj9fgAF7r7U7fJfvPQXzbE8lz7nSADY6zUtDu
 insA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p2iTWW4nO5SL6In2uagzPcw9ivsY9NbY9ua5sw1Z8YY=;
 b=W0pRXyzUqOGp8Z8SGZkZGFYlQW98MXFzN+Kv5l1Wc5gHZrKxI300dnQMvbERJL14O2
 OCVFO+mIHuCY4bd597R6aZxysTYSSx1jyeesc4lvvb/pLFiODGbU+hCoiV1t34wcMucx
 D5l54wzhTOuEVEA3DmqRzye6uvV9v2KaqEp8EWfLb5mgY0rYjlfaBuUg3DRYqjTlZAVG
 tm5xPwms9Os+4dIlNcUP7RBu5UJkNHLdCUM1bfj9fcWcTUrpdUMOyLTXWlo552Wo735c
 t1va5yriahpUqr1mHAEdMy1hdfy6TDqlxhytLSZI/5f2zT8+eYgQ9gaoO2P9GBjLWy7U
 r6iw==
X-Gm-Message-State: AGi0PuaPLAWz0gXPhdjdcr99/y/pIdyT683YPqKdIO28BqjG5v48zPbO
 rftuaIKB8i74j04KwRtna6i7G91KbY0=
X-Google-Smtp-Source: APiQypJDYCDbHcowl3s80XHCz3TTRatT6q2ZhtMCaPAqLRA3rMW4yZfkqAlnuY7yy/eBSoya9iCBlw==
X-Received: by 2002:a63:5a50:: with SMTP id k16mr9509922pgm.171.1587759908429; 
 Fri, 24 Apr 2020 13:25:08 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c1sm6553245pfc.94.2020.04.24.13.25.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 13:25:08 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v2 01/12] remoteproc: stm32: Decouple rproc from memory
 translation
Date: Fri, 24 Apr 2020 14:24:54 -0600
Message-Id: <20200424202505.29562-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424202505.29562-1-mathieu.poirier@linaro.org>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_132512_534419_94D1F97B 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Remove the remote processor from the process of parsing the memory
ranges since there is no correlation between them.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Loic Pallardy <loic.pallardy@st.com>
---
 drivers/remoteproc/stm32_rproc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 0f9d02ca4f5a..91fd59af0ffe 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -127,10 +127,10 @@ static int stm32_rproc_mem_release(struct rproc *rproc,
 	return 0;
 }
 
-static int stm32_rproc_of_memory_translations(struct rproc *rproc)
+static int stm32_rproc_of_memory_translations(struct platform_device *pdev,
+					      struct stm32_rproc *ddata)
 {
-	struct device *parent, *dev = rproc->dev.parent;
-	struct stm32_rproc *ddata = rproc->priv;
+	struct device *parent, *dev = &pdev->dev;
 	struct device_node *np;
 	struct stm32_rproc_mem *p_mems;
 	struct stm32_rproc_mem_ranges *mem_range;
@@ -606,7 +606,7 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev)
 
 	rproc->auto_boot = of_property_read_bool(np, "st,auto-boot");
 
-	return stm32_rproc_of_memory_translations(rproc);
+	return stm32_rproc_of_memory_translations(pdev, ddata);
 }
 
 static int stm32_rproc_probe(struct platform_device *pdev)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
