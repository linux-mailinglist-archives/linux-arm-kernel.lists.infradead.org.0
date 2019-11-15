Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D091FE805
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 23:35:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iOc9ZKtEpWTi9xhheLaHWeBpnnVMb2T6Eg4oagzGeq4=; b=GLc6bMuiRsRldqAeYL9DMsLo5Q
	Kb/HovRoW8UBdrnyIWJeHgeunNJxF9kVdKRiMNsklKNj2bS8Jp7D4BCFdw5NWbiE6PRtLzmBSJLlt
	HQogEr5OzLksiXOcTYOjvO+Uj99HQ9VcMGy1/sCq/Wi46j7xcnWV01XcZJgSAGeUcfmn8JZb9WLzK
	Bz9Ao0JB6/QVOJK6n3jcLlCA+bjY9ajwyETth5UIgEZkvIJmyiFCj41J4frDIu53WFc9C8lgRlLxZ
	UzbeCnsoc77nJkP/vp7ziznjTM/gZoHeMQpCa+rLhKGry69CDVO1AZlkgqnYTOJCobciYRx2yXAAk
	6B2QFxSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkBV-0007vb-2s; Fri, 15 Nov 2019 22:35:21 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkAE-00076W-GO
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 22:34:03 +0000
Received: by mail-pl1-x644.google.com with SMTP id ay6so5635197plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 14:34:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pnStBG/T13CIghpMMY37iVdEqu6Tf6ypUdEca+Im12A=;
 b=UcNOeX7QeFUdS+8BsU3HT6dUr5DPakiIHn/4UvPOHLFYqY/K6ujtP4IZer6qWH4PsL
 kSBTMAw/WQgyxTxeo4ivek0tX/PV86dgJw0UkYo6ERIwQlFRePO6NKrAtfa6NCJ20W2O
 TsLzkBAGM6YB4DuaLNvOwjU3GdT2dzYF5IIKeZ0U3QUbT9dSuHzqJDl+QXBysh5SV+Ov
 lw25nX/7WiyUcJ5Xp4DrwnC0HKLo02gWkWh9DR0hT+OxTsQXWX6d6dxK8t070uRMMt9V
 r9oATtIcUAuwarcVv9V2aewPHt7avcTKRzk1AKnwfy3HSFUqXiDShEdVFb9swtzK8Huo
 4nkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pnStBG/T13CIghpMMY37iVdEqu6Tf6ypUdEca+Im12A=;
 b=mH/ysBVpXZSr951LPYCEZtU6KBJPZ6QW/XRokfW2Ztp5MZ5TpBziO95Ae3RCrLT+B1
 2CPR0bzXwhwx/xx9TSq7em+TEIRb3x6nx1qmY2YSUkJxMA8gajTYcMT9ImmTyNr19jVA
 Xm+NHFKsw1rNG04SeyKIUIDma/F3AZ8o5yPfV36PZnBEE0MzBdGCR0KMHGZKE3rUJRS8
 rM/QCwUwZUtlSUEuiEcwDhbefR1bfsV46MVDgBz8vP9abZOrS4GeN+Cm1Rcb2MYEcZgl
 H3JFKC1ZstmZhGGULjaHHrlzJwp1dzzJhFog41A3cxwgrqIBgiO/jZn+FV2MrBaVIlxi
 tBRg==
X-Gm-Message-State: APjAAAXlmmQDige/1uSBnQhQ36hhnlkFKXXX947ZnMU3H+VEXeGmX75C
 35dP/kPu3WITwnH45GYyzsMRog==
X-Google-Smtp-Source: APXvYqyUkVVN6TQZYe84qUdIeuFg+UeaXSpsS5sSY6gzAeOIOOHIRLFnS9NzrP3wYAkm6hhStgbJiw==
X-Received: by 2002:a17:902:fe8f:: with SMTP id
 x15mr17473187plm.343.1573857240779; 
 Fri, 15 Nov 2019 14:34:00 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m15sm11699724pfh.19.2019.11.15.14.33.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 14:34:00 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19+][PATCH 04/20] crypto: stm31/hash - Fix hmac issue more
 than 256 bytes
Date: Fri, 15 Nov 2019 15:33:40 -0700
Message-Id: <20191115223356.27675-4-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115223356.27675-1-mathieu.poirier@linaro.org>
References: <20191115223356.27675-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_143402_541059_23AFCDE3 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lionel Debieve <lionel.debieve@st.com>

commit 0acabecebc912b3ba06289e4ef40476acc499a37 upstream

Correct condition for the second hmac loop. Key must be only
set in the first loop. Initial condition was wrong,
HMAC_KEY flag was not properly checked.

Signed-off-by: Lionel Debieve <lionel.debieve@st.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Cc: stable <stable@vger.kernel.org> # 4.19+
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/crypto/stm32/stm32-hash.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/stm32/stm32-hash.c b/drivers/crypto/stm32/stm32-hash.c
index 590d7352837e..641b11077f47 100644
--- a/drivers/crypto/stm32/stm32-hash.c
+++ b/drivers/crypto/stm32/stm32-hash.c
@@ -365,7 +365,7 @@ static int stm32_hash_xmit_cpu(struct stm32_hash_dev *hdev,
 		return -ETIMEDOUT;
 
 	if ((hdev->flags & HASH_FLAGS_HMAC) &&
-	    (hdev->flags & ~HASH_FLAGS_HMAC_KEY)) {
+	    (!(hdev->flags & HASH_FLAGS_HMAC_KEY))) {
 		hdev->flags |= HASH_FLAGS_HMAC_KEY;
 		stm32_hash_write_key(hdev);
 		if (stm32_hash_wait_busy(hdev))
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
