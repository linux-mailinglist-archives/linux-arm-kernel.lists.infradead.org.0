Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 713401F8639
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 04:31:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RjsADKN4YwfJ6aCJ9Py70Oi2Dqz6eM//4CWJ71M8hYo=; b=jCw
	btwNlwq0Na/MRoIfV4vzXIdWwWbLmKYHpsdtPSITkBOerbJbR+3DxqF+c46JKwSd5mYWMV2PsF5JT
	NHzEja6qeuY0ttSWPKjbSAS1Ue954eEa+gF96sYHVeQEuyitkhoJ6v3DgYOW65v6m7eGTPF8ThET7
	86I0HdSrsdYo8kXXSQR6fCq6ChUzjTQZ2u5V5CZO7MRuYwDq0yuF3+Cslcf6XDyCe44mBkKP8EVTT
	cyHKoyyeYiZmT3vyEzJ97ONhQfPNbDGVRGfpbaq5FgKejsQ/zub1btSTUq0lncOh292K0uUaPcO6h
	k0UYyr63DPXX38Zs8ywaucw6ecywlEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkIQx-0001nj-Nr; Sun, 14 Jun 2020 02:31:43 +0000
Received: from mta-p8.oit.umn.edu ([134.84.196.208])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkIQp-0001n6-4m
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 02:31:37 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-p8.oit.umn.edu (Postfix) with ESMTP id 49kz433DS6z9vBtG
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 02:31:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p8.oit.umn.edu ([127.0.0.1])
 by localhost (mta-p8.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PIJ5-dE7aGPS for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 21:31:31 -0500 (CDT)
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mta-p8.oit.umn.edu (Postfix) with ESMTPS id 49kz431NCGz9vBtD
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 21:31:31 -0500 (CDT)
DMARC-Filter: OpenDMARC Filter v1.3.2 mta-p8.oit.umn.edu 49kz431NCGz9vBtD
DKIM-Filter: OpenDKIM Filter v2.11.0 mta-p8.oit.umn.edu 49kz431NCGz9vBtD
Received: by mail-io1-f70.google.com with SMTP id b11so8896770ioh.22
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 19:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umn.edu; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=oQSJLWnjo3ldT1Uh/5Z6WatclhBP/542tcGFisvI+fU=;
 b=S9rDLtneBsQrH7ioKbbDGehA3XM/KAnjVe+MzWp8Kr+8srAsAg/nQSNdBWJi51lBYI
 Ped9Ppc+NVOP5MexAIxTiclwHAkx0X7BvbbiuoujMcOt6gK36HbsyDz/U/nWQpSu6Iz5
 kkKO9n1jwxP3ZtrhRCJV+zFXQkvHZp9O9xK+7QeCloj3dudOuwy/xmduMDQGL9K34Mwk
 I4yOODQyONssgkuHe7+HgwNF/tmeRQxHc1qGpm1FeLXoD3Gptm3hywyq7JoA+L5/GPMf
 C80QtDnAtG977f3UBVBmbf0g9fV/9OI3NFtkqO94EB3mcXwwp3XEkTak/5upXZPczbWO
 dZmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=oQSJLWnjo3ldT1Uh/5Z6WatclhBP/542tcGFisvI+fU=;
 b=Hc9dAT8ZgTyccwLWF9A0ddeHfFBT0t82mx0tf4HiUACYLx2W6oHhHbzlm+YNMlNvsL
 XdxAUKZ/S+t7pW0fXpwBPs2+zvIuZkXc7rcC71GTE+xPDQgIsXCxVqZBFpkaFhsk+J+q
 CrLcYcNhAT76hQcT+Ymu/h9Ff45qDlrl6C+h0vxdXQ2ybVyAHkrScUTEYu5h9LZfh82F
 FZu2oRN1ja6nF4kii5TYaj7o807QiOQFy8i/oSv/S1ZVH8Ht5N1Yp9di7HJ96Gagzy/u
 tRBaK82qww8L5IOMvCPKLlGJRFuWXbqGRU7RIkKu7Zdauq5u1RCqXLiNv4hyppK5J3vz
 vE5g==
X-Gm-Message-State: AOAM531gd3QT2xCEoFZWiNf1jblioJukiCtyNgvHX862lenwy6QA1ICI
 z8DMbS7sSGSeQYAnTVmMPc5+O0eHPcD9715MuYbMvRDeAK8EBVI91TLolXQZwU5BVdHOQblg7oW
 9OY7tNnMn7Yf+PUdzmLjpZZdFOb0dDAjJMkIUo/I=
X-Received: by 2002:a92:dc89:: with SMTP id c9mr20840495iln.238.1592101889099; 
 Sat, 13 Jun 2020 19:31:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzLSKF+X0CLsLDT+aW+f1omfkM8E/RHKfsVze8FDZe1KnapiufVD9GjztK1/Y21/gNjDnuPuA==
X-Received: by 2002:a92:dc89:: with SMTP id c9mr20840463iln.238.1592101888761; 
 Sat, 13 Jun 2020 19:31:28 -0700 (PDT)
Received: from qiushi.cs.umn.edu ([2607:ea00:101:3c74:4874:45:bcb4:df60])
 by smtp.gmail.com with ESMTPSA id 18sm5494049ion.17.2020.06.13.19.31.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 19:31:27 -0700 (PDT)
From: wu000273@umn.edu
To: kjlu@umn.edu
Subject: [PATCH] media: s5p-mfc: Fix a reference count leak
Date: Sat, 13 Jun 2020 21:31:22 -0500
Message-Id: <20200614023122.24656-1-wu000273@umn.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_193135_274446_780927F1 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.84.196.208 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Andrzej Hajda <a.hajda@samsung.com>, Kamil Debski <kamil@wypas.org>,
 linux-kernel@vger.kernel.org, Jeongtae Park <jtp.park@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, linux-media@vger.kernel.org,
 wu000273@umn.edu, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Qiushi Wu <wu000273@umn.edu>

pm_runtime_get_sync() increments the runtime PM usage counter even
when it returns an error code, causing incorrect ref count if
pm_runtime_put_noidle() is not called in error handling paths.
Thus call pm_runtime_put_noidle() if pm_runtime_get_sync() fails.

Fixes: c5086f130a77 ("[media] s5p-mfc: Use clock gating only on MFC v5 hardware")
Signed-off-by: Qiushi Wu <wu000273@umn.edu>
---
 drivers/media/platform/s5p-mfc/s5p_mfc_pm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/s5p-mfc/s5p_mfc_pm.c b/drivers/media/platform/s5p-mfc/s5p_mfc_pm.c
index 7d52431c2c83..62d2320a7218 100644
--- a/drivers/media/platform/s5p-mfc/s5p_mfc_pm.c
+++ b/drivers/media/platform/s5p-mfc/s5p_mfc_pm.c
@@ -79,8 +79,10 @@ int s5p_mfc_power_on(void)
 	int i, ret = 0;
 
 	ret = pm_runtime_get_sync(pm->device);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put_noidle(pm->device);
 		return ret;
+	}
 
 	/* clock control */
 	for (i = 0; i < pm->num_clocks; i++) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
