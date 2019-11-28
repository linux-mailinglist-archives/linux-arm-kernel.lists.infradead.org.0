Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E19F610CD2B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:51:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1gwxzXZbUvwOtFe813YgreR5MR1y40XbCI546Q0aKrA=; b=Bpp6QlgDgvKkPDsQSZuG+5CSLz
	abSR6z5JEAqYkpZD/eG9nB+LUzZbxz95e9NkEgFdCPOLqV57iiJJZteK1euXBBbhcGTIm9ziIcw5b
	HhXmWYWzB9p2BxtEMjqW8mJKnOgfyOtQobyOE8YmTLy/0ffzDv7ruRkcvJrdUfuZvT1YqTwSkjDwg
	pbzMOOCHeAgm3hWOfNZ+xP6PV0J5oIP5IyXtODLizQIae7AooVRix5lzV9et3CS4+nhpEvNZHyC6z
	luHpwBQOMqOGdd0Jt07QM6n7ewO3SaiU7ZvSPVPbbK0CMdn03CZBuFN1sWgwn427Kh1aioRSlItwA
	GlEavqyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaN0Q-00055j-OD; Thu, 28 Nov 2019 16:51:02 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMza-0003yn-Fq
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:50:12 +0000
Received: by mail-pf1-x442.google.com with SMTP id y206so4752998pfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 08:50:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jEs6QE+VfGFRlxMX16dTWWCBFFIHacBUeuklTX9eehk=;
 b=KXOTFhYW31M6DowFuVSnZZCtoVs9n/0m0NvfFFZd/SJgu5toTz3abL8mMkd78Ce33g
 jS4H5Xas4NpISrNogQilOVf2XtLcQFgi241JW6pdGzS9mAe1TpFBHF4dIwqlW2YBDkHi
 LcwZVULYkgOFnRsBSM5zGwnGB+uoPXjd8zsDy9LydhztAqwlpMUZBUjtnbLpM9/eZcPm
 B55+nvIbQgZJi8R9mKUwalRDzBnjtNK9Mow4lfWl94dyekaSG6aLvasftGqFRfTwvjev
 4w2+wCx0fHYT80fgo1kSm6hUHDAFw5HJI/3UXjlz4QSPSaylm0almF6B7yg9RP1vvNF5
 FDwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jEs6QE+VfGFRlxMX16dTWWCBFFIHacBUeuklTX9eehk=;
 b=aZylNfgIHRFvyzOtKQXAKH/c9NmYfNsZ3Yrx2FIpq7vFsBrhLOFdeseaoS2g5hVmw6
 yVw92WAOI4G0gF5inLQtcdB1z5wzvcX1IuIVK0f2K7EaCrdUMAaJpVg1FRv0c8hozEKf
 NGNPIAL7KRjM9Gv3Z3aUDLW4NGmYE6f0lrQz9YRsx6tDGjZMVnWvQIx2QPAHuFvKX0oL
 KZUMNn21aRnviBSVyBZB/DBAFAXvKJaHQsoEW47S64vYF3IzDa5VfAGneQMUQTvsxJTt
 nU60/9Bjcb6QxhVZr1fHb3BgTp25yCCHa6sD/1lBsi9vA6DLAdYA+Aa2tMwRMjgd9NW+
 zJEA==
X-Gm-Message-State: APjAAAW3ewzyaLYASLXWn8Dn1UwhxoV1iSJ1dkwJYju8DX2aMKtmE6df
 kBXWSE0j+7TTIITC+S/lVb5wtQ==
X-Google-Smtp-Source: APXvYqx8Qk2Of+BXuSVm+sEuntEca3roAUMLg6UeXFFjMVrolEG4T3O608o00roYtbf9Fj0Zeo7MNA==
X-Received: by 2002:a63:e03:: with SMTP id d3mr6794337pgl.395.1574959806302;
 Thu, 28 Nov 2019 08:50:06 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a15sm2450343pfh.169.2019.11.28.08.50.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 08:50:05 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19][PATCH 02/17] crypto: stm31/hash - Fix hmac issue more
 than 256 bytes
Date: Thu, 28 Nov 2019 09:49:47 -0700
Message-Id: <20191128165002.6234-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191128165002.6234-1-mathieu.poirier@linaro.org>
References: <20191128165002.6234-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_085010_548969_1D1CB0C1 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

From: Lionel Debieve <lionel.debieve@st.com>

commit 0acabecebc912b3ba06289e4ef40476acc499a37 upstream

Correct condition for the second hmac loop. Key must be only
set in the first loop. Initial condition was wrong,
HMAC_KEY flag was not properly checked.

Signed-off-by: Lionel Debieve <lionel.debieve@st.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Cc: stable <stable@vger.kernel.org> # 4.19
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
