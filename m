Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5333180A23
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 22:15:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wNwjSP5Y695clYHg3CBJpALejCvzSlPHyBQ6Kl8Bw1A=; b=f7KQtubpZ9Lkp0
	llPfr4jnWNyR/RL45P/+dAog+Ahb9ln1Bgimx/yj5AM3iXhKiXK77/CtUn3ldWnqHHDVKUyzQGLu0
	XsMmgkiCXT6ZqntDHd6NOVQMq/sOwIOsU9VZmGphdgPny2uRs6+2dnGBkqM1gNVS8YQ8lnlGC3JTJ
	1xjs7UHC2YAJZrCkP8DG8xfhYXR+yD2SIJLgw5e/lJN/9lXrdUtUY9FPs3MbXuO0nMgIKyf2c/e+e
	aes8SR43S+7/X3nf4Ciuogr1a3rmgjQMX53QuL9qwZZUUZPzfF22ksMZA4WwzS9n4H33bccGZ8J6I
	/KmijO9B4TVpdiweb2Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBmDs-0003rk-Rp; Tue, 10 Mar 2020 21:15:32 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBmDl-0003qx-BW; Tue, 10 Mar 2020 21:15:26 +0000
Received: by mail-ot1-x344.google.com with SMTP id s15so6444817otq.8;
 Tue, 10 Mar 2020 14:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7hNWBofucArT17MnCRXZQMQQdTzbenzVIK3M8zSgFrs=;
 b=dN1DJyXu9qxAGT5sUE6ZtOnH6zUyhErKldhJDm/7WbWLTndvrlMjzXlxKt0BofnnWE
 gH1NiZ39GxjP1zKwRIUjTFC78v6faijm/bXy1SykgDIiA9HQsxDhPDqfO0MbUk3w52cK
 NAPx3NUnmyHQqMvrs7UO60oNGKIM7di5I/ovX860fDPPgCrG+QntBATS4ZeoB5joKLJx
 VHIoh5WWDwrL+7hQIz6IlCuKhtLvjR66DH1AWCSMwwHVYrWSSThc/iQgU8Zsx5872Ouu
 FePQ3k15JNhQTQGFroMnrQZ/39pHC+lZr07mZXoOxcdm/2FlRaK/bwLZxC1FMUEW+aky
 47Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7hNWBofucArT17MnCRXZQMQQdTzbenzVIK3M8zSgFrs=;
 b=pRiOszUpHHdGDslg7WJpRHbxs62faCztXYy0pBmTGlSqJ62RJ4QP5bDQlnKVT/tdgp
 GU5v/f1S6vQaRqLVXC/dRK/JQLD7DSVgzA24cIJuTdMjemGFgrC07QAwPu0E+R3Pxvyl
 /cKFW2tTdG9VwG1JJgbqPI4j+Sft+/DadGDQVdwyHW8jjerkXMp3Qau12yiMgq73Br/a
 EaCVELgJA0HmhoenuCUZi2hOUi/syaMjiLdU9tXBnAsa8J3Af1DTaD62Nq5yV1AbscMJ
 hgbQ5mu3NQwEASEes/bO1Ydkvis3ktN/azZ4OMoBfGmy59Ljj3IbL3RyH5Mdl5Olls8n
 XtvQ==
X-Gm-Message-State: ANhLgQ3smcZ/GBTSuQsx13oHoSmkgrIAOwxzbOFjpmWP7/8gJF2DzIMi
 Ruhe4B0X40I1joItKMXxMeI=
X-Google-Smtp-Source: ADFU+vvjtpN/bwJQkI2vcndXaZbxD8dD0mCBVB9RhSu8g5NE5E5B4HBs9qwmz9bvppBuPjIrS4onDw==
X-Received: by 2002:a9d:6348:: with SMTP id y8mr687408otk.347.1583874924146;
 Tue, 10 Mar 2020 14:15:24 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id j90sm205345otc.21.2020.03.10.14.15.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 14:15:23 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH] remoteproc/mediatek: Use size_t type for len in scp_da_to_va
Date: Tue, 10 Mar 2020 14:15:14 -0700
Message-Id: <20200310211514.32288-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.0.rc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_141525_396174_E539E574 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, linux-mediatek@lists.infradead.org,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clang errors:

drivers/remoteproc/mtk_scp.c:364:14: error: incompatible function
pointer types initializing 'void *(*)(struct rproc *, u64, size_t)' (aka
'void *(*)(struct rproc *, unsigned long long, unsigned int)') with an
expression of type 'void *(struct rproc *, u64, int)' (aka 'void
*(struct rproc *, unsigned long long, int)')
[-Werror,-Wincompatible-function-pointer-types]
        .da_to_va       = scp_da_to_va,
                          ^~~~~~~~~~~~
1 error generated.

Make the same change as commit 0fcbb369f052 ("remoteproc: Use size_t
type for len in da_to_va"), which was not updated for the acceptance of
commit 63c13d61eafe ("remoteproc/mediatek: add SCP support for mt8183").

Fixes: 0fcbb369f052 ("remoteproc: Use size_t type for len in da_to_va")
Link: https://github.com/ClangBuiltLinux/linux/issues/927
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/remoteproc/mtk_scp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
index 7ccdf64ff3ea..ea3743e7e794 100644
--- a/drivers/remoteproc/mtk_scp.c
+++ b/drivers/remoteproc/mtk_scp.c
@@ -320,7 +320,7 @@ static int scp_start(struct rproc *rproc)
 	return ret;
 }
 
-static void *scp_da_to_va(struct rproc *rproc, u64 da, int len)
+static void *scp_da_to_va(struct rproc *rproc, u64 da, size_t len)
 {
 	struct mtk_scp *scp = (struct mtk_scp *)rproc->priv;
 	int offset;
-- 
2.26.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
