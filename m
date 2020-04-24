Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F4C1B80A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EyVHZ+rA+72IBysF6aR0gxAdsDA/nn2yb6b6/dvlRd0=; b=XMox5swu8giBtm
	rK+alBTuVfEQcDQhP/YK3yZnct7pF5F6Kv06oGh2V3DIJbzsTRwHc6IOZpixBPgeMnliI0DsVUeNl
	e5GrJWJMuYVGSzQc0ppGAgrkfENveHcQT8VhNmgh/3HKAH/WtdIi6BixXxGeUGc/qRQdw6tbF0Sur
	R0/9a7TKbqpxPFsDPV46vRmPE19RB56YbE1VQKWNPXEwSBV2A6dF1tFgSmrprTWor3adKnCzTP0EA
	d6wPAsc6GVdiFVJvQizj6WwS/4uAfh9fS5lYpmJQmNjnR1i94mbbaIYJo5IN7womeF+NMgOxvpdM/
	qieHPR7smivgmQNqHsHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS4tr-0005FG-Nn; Fri, 24 Apr 2020 20:26:15 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS4sq-0004el-BU
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:25:16 +0000
Received: by mail-pj1-x1041.google.com with SMTP id a5so4335281pjh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 13:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mrZHw3wDEqsWxtX6I3Qw+OHrqvqS6c3mqgfKBC8xSv8=;
 b=nEIHT4o5k+submU1rUBIRjPzreeeM7YSY4E7V1SEGu5YkKslbOpGjRxk2PVJ0e6xHd
 SXjmkQFR0s76Vs+SIhZbiqdwxsxXClpb114b/0W8uabUhIKFao3OKd1L4nuMX1znjiPe
 qQP7XgxiC4lZLDwECOiQbzUW0fEuqUgbDTn0rw28bGRcuJ7ngPnzqT2ZSGJLoxMn/PxZ
 fffRPF6DxDAFWbgEb6z50zzUw7NNjxuXSWuXCgJJacAYw3fPqEgIUoslVBSEZMjMwBxp
 BI43yLdV4LCUQzNbtcSRkmPWV1eRNty/VNcNXkODiU/gepJb91dnMBcF8aeufnmxkkCX
 lQGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mrZHw3wDEqsWxtX6I3Qw+OHrqvqS6c3mqgfKBC8xSv8=;
 b=G/veuIyeQcnDH3ZQ9KP6Nxvz+Jk38YhZLpONOJtCF8VfpsoGp6TFyDVeqjkTQiXJrE
 Hdtef1SRkCdH9SSpwzs8IC8pqZFxS9vyw28wzPvle/JUehR93eNyJ93chB1Vymy3uS4R
 csOfMnp8TUwtdbbSliGQ6NDrfX0QHQQ2QDGfsxmgnlVupf51eGGfoaqt+nTZ7VWLb+8s
 5siubv1xGD1klMlnids19WxB71MkUNqbtILV4N5hhWQwYkfQNehzH6DKj/oiLBdxywMg
 locECKbyfkZE8h0dvd14+Eva3qFqwK1tSGD1Dd2WQTDvhXsYOO2pEmeZ/Y/offmZM3T+
 dtsw==
X-Gm-Message-State: AGi0PubTb06co/op/rx1REnjm+nyyWq+WeX0jyymCLUIFqSfamCv9sGU
 4eGc15ogAQ73zcrspX4S0jxLug==
X-Google-Smtp-Source: APiQypIckGk/05A/UD8d3TxSQDoWu1T4/CMGlEehpQVQAKrC1wqh0IN3n+KIr7o6Kj7ucki41lXmAQ==
X-Received: by 2002:a17:90a:d703:: with SMTP id
 y3mr8770619pju.75.1587759911901; 
 Fri, 24 Apr 2020 13:25:11 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c1sm6553245pfc.94.2020.04.24.13.25.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 13:25:11 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v2 04/12] remoteproc: stm32: Remove memory translation from DT
 parsing
Date: Fri, 24 Apr 2020 14:24:57 -0600
Message-Id: <20200424202505.29562-5-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424202505.29562-1-mathieu.poirier@linaro.org>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_132512_537318_40D01D1F 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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

Other than one has to be done after the other, there is no correlation
between memory translation and DT parsing.  As move function
stm32_rproc_of_memory_translations() to stm32_rproc_probe() so that
stm32_rproc_parse_dt() can be extended to look for synchronisation
related binding in a clean way.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Loic Pallardy <loic.pallardy@st.com>
---
 drivers/remoteproc/stm32_rproc.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 57a426ea620b..658439d4b00a 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -606,7 +606,7 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev,
 
 	*auto_boot = of_property_read_bool(np, "st,auto-boot");
 
-	return stm32_rproc_of_memory_translations(pdev, ddata);
+	return 0;
 }
 
 static int stm32_rproc_probe(struct platform_device *pdev)
@@ -634,6 +634,10 @@ static int stm32_rproc_probe(struct platform_device *pdev)
 	if (ret)
 		goto free_rproc;
 
+	ret = stm32_rproc_of_memory_translations(pdev, ddata);
+	if (ret)
+		goto free_rproc;
+
 	rproc->auto_boot = auto_boot;
 	rproc->has_iommu = false;
 	ddata->workqueue = create_workqueue(dev_name(dev));
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
