Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E161FAC7D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 11:34:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nseAEE91vecqC1fNcg9ODN4nLXMsAv71/uGbQsYHeZ0=; b=tQZUkdcu95M26VtVhjVKfWH9HL
	iQdd+eVCisWgjg/esTs6awWAvx7hgTY9JhYH+QDXBT38kOgS8juhmZFtzKfzckTSSbn0O1EYH2BdQ
	qIBZeYxG1XBlqWlUhAUVdN8sOTdg/zW85iadapax3OqqMyr1l9Ive7Qtf3bHxAhHDth9SeB4bobZk
	c/bRTzpKGkqriuieSe0ZCdsh7z7zRsbSSddEP3R042lNFUh52Ah7ecvKGXimW9hyTlpmumPa1v4Tf
	Q+L0k4wq2tRzAT2+Cfl60544gaZHr26zB72B7/MbcbcjQBQTlObso8m2ZULlnvoP2V6EYG0ZZfDrn
	f69xgd/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl7zH-0006Mn-67; Tue, 16 Jun 2020 09:34:35 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl7yP-0005fk-EA
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 09:33:44 +0000
Received: by mail-wm1-x343.google.com with SMTP id c71so2177319wmd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 02:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=o6N9FT2w61islGiceZYS1dUe0vQYBPvSszz+F4WBlPk=;
 b=LHlZxBIS0SBnmFdJE6Nem6dNu5dWAatajps0vyyX2TrGDDA/pCZIxCaR2IbQE8gUjd
 ZKa0qEj5egM0bF3jStLClwLMqhzDBsYhYGLdMkX6tRzBEQF2DMs+S3qh9uKCywtUydwS
 gtAOsqedKZ5w3FzLYHCwnTraLkT6Yw3WY91wToqLSMko0MeEzHyZpMnmTeDxWlbQUfLQ
 O3gKX8sNaIJ6LDgR6QXrxpWCLXBL9cx3gBUcf7vSLloz0zL7XC4Ertst9A+/ujqb9UA3
 prAAV4j7kO4YEp/u2LSGDe5W/9QuyuksjkfvLm5TWTeiTckPWA5T4tBN/OCySrECeryi
 Hppw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=o6N9FT2w61islGiceZYS1dUe0vQYBPvSszz+F4WBlPk=;
 b=P227+yqEmuY9Sw3KD5dWdMv04Z1knzsSEsJDivu2cK5sLdYXo74y1WaJY2JkNrssNx
 rX3jM6PLfsZFgQqVNHgrDLghRyTjSohUhYuPxZCB8aAzylUG9i1S8tZ1zVBhVAKtzmL3
 OwPf2EWSPAt7rxktd+LYIRetqW3REKyngbkKh3vrIDZdhTYenaUe1jacv0PkZHgVwxMD
 FqORpnGyBxTjsbNuRJO5SfpyVJMc9NmgwAgCOVXOgodLF8BuHmLqu9y9z3fZVv8GMKCx
 M+ozLoP9z6L6OyApWwfvb89QbYgzY0HENwC28BLCz0qtlHSsn1YKikzzRxc3EK/ooM3f
 jdIA==
X-Gm-Message-State: AOAM532cnye1kDWbGr4+F/YEV/KbWrL2d+p/C7i94gy+9Jrp+/FexR/0
 ELbJkvwS70BwANg9u4gzOLqKA5+jLA4=
X-Google-Smtp-Source: ABdhPJwgqX3ZbmmyWDg8DQ/slBBCFxmrqQIoHWc2xyYwDKEiWzuDefjF96HXvLLhPDma9P9qKXdBdQ==
X-Received: by 2002:a7b:c343:: with SMTP id l3mr2257735wmj.178.1592300020076; 
 Tue, 16 Jun 2020 02:33:40 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:c5c1:794c:e67f:3280])
 by smtp.gmail.com with ESMTPSA id s72sm3166391wme.35.2020.06.16.02.33.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 02:33:39 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 mathieu.poirier@linaro.org
Subject: [PATCH 3/3] coresight: etmv4: Fix resource selector constant.
Date: Tue, 16 Jun 2020 10:33:33 +0100
Message-Id: <20200616093333.31283-4-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200616093333.31283-1-mike.leach@linaro.org>
References: <20200616093333.31283-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_023341_470419_997FA22F 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mike Leach <mike.leach@linaro.org>, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ETMv4 max resource selector constant incorrectly set to 16. Updated to the
correct 32 value, and adjustments made to limited code using it.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm4x.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.h b/drivers/hwtracing/coresight/coresight-etm4x.h
index 4a695bf90582..b0d633daf716 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.h
+++ b/drivers/hwtracing/coresight/coresight-etm4x.h
@@ -133,7 +133,7 @@
 #define ETMv4_MAX_CTXID_CMP		8
 #define ETM_MAX_VMID_CMP		8
 #define ETM_MAX_PE_CMP			8
-#define ETM_MAX_RES_SEL			16
+#define ETM_MAX_RES_SEL			32
 #define ETM_MAX_SS_CMP			8
 
 #define ETM_ARCH_V4			0x40
@@ -325,7 +325,7 @@ struct etmv4_save_state {
 	u32	trccntctlr[ETMv4_MAX_CNTR];
 	u32	trccntvr[ETMv4_MAX_CNTR];
 
-	u32	trcrsctlr[ETM_MAX_RES_SEL * 2];
+	u32	trcrsctlr[ETM_MAX_RES_SEL];
 
 	u32	trcssccr[ETM_MAX_SS_CMP];
 	u32	trcsscsr[ETM_MAX_SS_CMP];
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
