Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCFCD5BF2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 09:09:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yFhKeqtHwqCF93s3GYOsnnrKuDiuG4DZ6SPRwwx12Bc=; b=ftygWRKAS8TqVZ8oa3+uM4NZRF
	xVjmnzJ6s+k5E1r7Yk6BuWzg7j1PkrKEQI+BY1WS/HT2IJK1m7PkTvJsdtUOjUMePU1oodAplY1zp
	R0brkZTAmoR1FSsfREDvfpwBFCu2zZlxnTjhP7sXgidiv2ohQ4zNVlANLz4vqNZlTpXQvaPnFvF0T
	zqwgOwYtRyDljr9JeAGUiZmfE/Zilkh1vmSo5OL6few1X0tStAJmgWovtV92XiOxpAtXKKoEK9BfC
	/SDASY8Yb+JGoAuCrI0/7cN7tktsQxGIkgNC6iCOmaXT6aePyjvHs7Dyzerzc1NmOBGA2heDpT1kE
	xMsPRI/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJuTf-0003zr-4L; Mon, 14 Oct 2019 07:09:11 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJuSs-0003XM-KP
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 07:08:24 +0000
Received: by mail-pf1-x441.google.com with SMTP id a2so9838735pfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 00:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=c0QsMwW5/HlkG+EyBzY3CChBE/BthJe1X9zmk8IUDUw=;
 b=ro6DrO1FSFrjgnEbuCTFqXVAOUVvaYpkPhUpMZ3QcSfsKg7mJYalOmP12P9nqpUs1I
 ZzuRB2eVsqibk7k7fhjPHQwKoppJIb1DZz+fNE1uUnjV4+53EarSuH/nZTTMHXOHonEq
 IF/3wnllpGOFgEpK3auT7PifBwXLm3WxU3JdX13f0ZzF0I+8e/iaVMUK6Q/DBL2cZu3n
 1g9EkexgpyNk8xDpuzMejRk99CzovZpYavY0EmELdxHBrs9m1SDjcHjfeEWkID4Ip4+Z
 QBtdkzX4/mq7v5Q7tCDLp3N0nXHtiKzUqfQavPSMs5E/ja8WQ3MUEKkamc6pEW/+e3Lw
 05Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=c0QsMwW5/HlkG+EyBzY3CChBE/BthJe1X9zmk8IUDUw=;
 b=uUKZ9o4pjYJv3CkJNzlC3OQg669mFKXg9EuqSBjc+g+FPt19k/8kEmJC+v0xQJcSfa
 vKBlQyNptE4RRRNth/dzpub5crjsOG+NW9gi0INOf2gynocWW6avrQzmdLr+fkA+p0CT
 EpEOiu8o8BND550b6XsHzWzweam00Epq6mHA+kd0tCLntlIGdZCz6Gu9G7rKpvAsIzM5
 ncFHUznn1CeiByib382SLDoOnYlL4QeabCucAQRDNAk2EpTMRftQ/AXJ9ELsdZOr+8o8
 wdR0cIWOxndZWc4pYqNUz51rd3oKiYBFyO4grCYGbTNhLNWbdoFXPusDygwhpnfvMEAp
 fguw==
X-Gm-Message-State: APjAAAVAYd6rG5XKwiHx1U9u9ZSfArJdN7UsGqSqOmnN3jUjfQlNTpx8
 Z3rI+e9Mkhsi8hHG8wiiDNgD7MRL78CKog==
X-Google-Smtp-Source: APXvYqxpj08mz2lldyLGGjWvshFVJheqS7LJzHgtZNqHz5/AArf3lNTOgLpoag2/XVvFk3uStAaTBg==
X-Received: by 2002:a65:44cb:: with SMTP id g11mr32096865pgs.145.1571036901879; 
 Mon, 14 Oct 2019 00:08:21 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id p190sm20619948pfb.160.2019.10.14.00.08.18
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 14 Oct 2019 00:08:21 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: ohad@wizery.com,
	bjorn.andersson@linaro.org
Subject: [PATCH 2/4] hwspinlock: Let the PM runtime can be optional
Date: Mon, 14 Oct 2019 15:07:44 +0800
Message-Id: <6c03ca84b19f0e3a4bd60b4d5ea70fd801ed7555.1571036463.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1571036463.git.baolin.wang@linaro.org>
References: <cover.1571036463.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1571036463.git.baolin.wang@linaro.org>
References: <cover.1571036463.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_000822_705140_17962C70 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: baolin.wang@linaro.org, zhang.lyra@gmail.com, linus.walleij@linaro.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 orsonzhai@gmail.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now some hwspinlock controllers did not have the requirement to implement
the PM runtime, but drivers must enable the PM runtime to comply with the
hwspinlock core.

Thus we can change the PM runtime support to be optional by validating
the -EACCES error number which means the PM runtime is not enabled, and
removing the return value validating of pm_runtime_put(). So that we
can remove some redundant PM runtime code in drivers.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 drivers/hwspinlock/hwspinlock_core.c |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/hwspinlock/hwspinlock_core.c b/drivers/hwspinlock/hwspinlock_core.c
index a22e252c..fd5f5c5 100644
--- a/drivers/hwspinlock/hwspinlock_core.c
+++ b/drivers/hwspinlock/hwspinlock_core.c
@@ -657,13 +657,15 @@ static int __hwspin_lock_request(struct hwspinlock *hwlock)
 
 	/* notify PM core that power is now needed */
 	ret = pm_runtime_get_sync(dev);
-	if (ret < 0) {
+	if (ret < 0 && ret != -EACCES) {
 		dev_err(dev, "%s: can't power on device\n", __func__);
 		pm_runtime_put_noidle(dev);
 		module_put(dev->driver->owner);
 		return ret;
 	}
 
+	ret = 0;
+
 	/* mark hwspinlock as used, should not fail */
 	tmp = radix_tree_tag_clear(&hwspinlock_tree, hwlock_to_id(hwlock),
 							HWSPINLOCK_UNUSED);
@@ -820,9 +822,7 @@ int hwspin_lock_free(struct hwspinlock *hwlock)
 	}
 
 	/* notify the underlying device that power is not needed */
-	ret = pm_runtime_put(dev);
-	if (ret < 0)
-		goto out;
+	pm_runtime_put(dev);
 
 	/* mark this hwspinlock as available */
 	tmp = radix_tree_tag_set(&hwspinlock_tree, hwlock_to_id(hwlock),
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
