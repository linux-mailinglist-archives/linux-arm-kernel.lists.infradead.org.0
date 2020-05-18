Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3B61D83FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:09:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MBKwxSChXywGXxBP0056IYdr0E2mtF5ckRdJKZL1OVY=; b=VWgobxcjcWI20X
	k7VmZPcv173SOPH+6i9d9CWTza5xkmTyxwpp3/g1SAuybR5UacAf+HLgMo0MMskdp57+fe0FOYpOr
	sChKrLo2Aq4018i7iaZA29PMwtq/1qzrEQQzyujkEP9f2CY7CBP8AoyGQfjEobf7NgG5OQDxHO0Cn
	cTvoPz+cpMHIa3TsOvLya4A7Q810Sge1CQ2O4W1kvZHe3d/78nNCV7r+tX8aeylYRleMPEckSfmlf
	owccf8xkSqm0pax3cIB8Lwt4rAf+4teZd1hY5uIDEJeX1p8wH17ibGA4uosOh08BKVeM75lBGeHC1
	+A1+NQloGbdIF3s/uvmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jakCP-0002HS-Ov; Mon, 18 May 2020 18:09:13 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6S-0003V4-JA
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:03:06 +0000
Received: by mail-pg1-x542.google.com with SMTP id c75so4188655pga.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VJzKeuOL4L44SAKgZAVu7We4ziBefHgIGw4RLcFAeqs=;
 b=qzdi+mr+BLEG277mq3T/hcFb94iM8qHrSK6DaOlVm7otw5kzS3whc/RTKZLmM2BR+Q
 RSRspgHlLglF+lgugRgYyYNU/F6TGjQ5F8Zx6SrLiOXPn9sWgfUCRZ66vz63oDddBcAA
 yvSeQ9qu+wSbVRc2OrRm/O2ji/M8nj2ObEzx7lFaRQtEyT42AAKTZbCL0+8LX9gUYMPX
 IaBG62tXnn3oHKwJuKLQqatxWc41sD0ihBYXGvB9phLkKppPa/Za99N7qpu7NWE1WLpB
 cjEbXDZD/JAXAIe4hjnQ0IMDCIbgjK+dQXWuEUzUhQ6EymIQqGhyyDgMYO2kBat+VNJZ
 guUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VJzKeuOL4L44SAKgZAVu7We4ziBefHgIGw4RLcFAeqs=;
 b=QE437IjoStK1o/P9VgrK/WWeAMiX3rEJIiSO18s89ml1op92mH7F/YgSVt82/n96zQ
 VMfE6la7dxyjfdtXTWeS2TvSQQtDIqrKJTUhJtOUZa4O+bMEv8LAN3afcVBQUIpEsgau
 4D1dwy5XLmO8RexY1VSpwU4Mh/Z9wlN44D/njnz2CwaJbyjCsZit1Qi/Blxgbci9J9WX
 aH7ncTUO0k4Pu/TZ+XJm/V9DUq7hP5eFDrywNGus/DMWrN9KphkGVCh17071bo7yBPEC
 5ml4J0WCMgtQlVkssJHo2hmMXGSPQcf61jo0QmP86ZK+V0Zh/w25Q7V/9Q6vTvdCf0NT
 Coag==
X-Gm-Message-State: AOAM532FoVnToE7rHcyP0XOaqko/MJcI7V8KpV+G+j5WUuqdyIpN+5o0
 d/RC7vQUtg9HXSsBNcMXO61GTg==
X-Google-Smtp-Source: ABdhPJxMqvVGypwJS+T9Nkn805ByRR2dWc4T1KXeIHWy01otChpcbgNSQa4LBXXTZuF7x/+hGLtx4w==
X-Received: by 2002:a62:e91a:: with SMTP id j26mr17958244pfh.61.1589824983256; 
 Mon, 18 May 2020 11:03:03 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.03.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:03:02 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 20/23] coresight: Avoid casting void pointers
Date: Mon, 18 May 2020 12:02:39 -0600
Message-Id: <20200518180242.7916-21-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518180242.7916-1-mathieu.poirier@linaro.org>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110304_636803_D10EB99A 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stephen Boyd <swboyd@chromium.org>

We don't need to cast void pointers, such as the amba_id data. Assign to
a local variable to make the code prettier and also return NULL instead
of 0 to make sparse happy.

Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Joe Perches <joe@perches.com>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-priv.h | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index 5a36f0f50899..36c943ae94d5 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -215,9 +215,12 @@ cti_remove_assoc_from_csdev(struct coresight_device *csdev) {}
 /* extract the data value from a UCI structure given amba_id pointer. */
 static inline void *coresight_get_uci_data(const struct amba_id *id)
 {
-	if (id->data)
-		return ((struct amba_cs_uci_id *)(id->data))->data;
-	return 0;
+	struct amba_cs_uci_id *uci_id = id->data;
+
+	if (!uci_id)
+		return NULL;
+
+	return uci_id->data;
 }
 
 void coresight_release_platform_data(struct coresight_device *csdev,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
