Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D6815E352
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:29:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPMuooJOnY+VpxU8xhPL4ID6SdWcXUdYF03JYGCA0cA=; b=TQ4ADnvgKScE5u
	Ph3hZZMSpjqUC8WWJE3ohLvp1I1lk+4Ie7l2O5e26TlZ46yML0DYiYOOpsIfn34pgKu/2A1YdAKVc
	QB3ybHpDyzVHJV6AFschXpdrWkxNa2fG/Ekh5dkg4TYNM3aVx07SBnZH07zP/GrRr4eW2uD2AE1H/
	1+Jj5CAIX+zDr5scBKRthuLobOmKeGvocmOI8skCROk1BqA4IaeQfa8VolvYz4kOC9Apvci/RWnwJ
	7sKud7uNpyLVOrZs0R7dyiBPITCJYO7VefZqSqUrxXwkHU1Y/PL1g1QPVSgtKtGil5QHBNeQSOPJ3
	Os85q4018hV8oR3uQ+Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dqb-0005Uy-SA; Fri, 14 Feb 2020 16:29:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dV4-0007FH-KV
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:07:31 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA5252467B;
 Fri, 14 Feb 2020 16:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696449;
 bh=9bpJw+BGlm+ozrpPpsGfyfMVr5eMgWl1Iod/H0eoXC8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Tl8Bjn3/FHzSiXSsZF0hXpX3I1ygA8VxhduySvRn1bSuzO0eJE5nX6cNOcSIgqRkM
 WP5M1UuuQxyLWOm4zRV4qUxUnDDW/EP0FaX83kInKmV3rNhZFogcHyorIIxfmZc//O
 jhxPZ9rZU+WC7O2DQM9sKoE85PeqaKwmsFvbfvpo=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 263/459] soc: fsl: qe: remove set but not used
 variable 'mm_gc'
Date: Fri, 14 Feb 2020 10:58:33 -0500
Message-Id: <20200214160149.11681-263-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_080730_713426_1A511B5C 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Chen Zhou <chenzhou10@huawei.com>,
 YueHaibing <yuehaibing@huawei.com>, Li Yang <leoyang.li@nxp.com>,
 Hulk Robot <hulkci@huawei.com>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: YueHaibing <yuehaibing@huawei.com>

[ Upstream commit 6e62bd36e9ad85a22d92b1adce6a0336ea549733 ]

drivers/soc/fsl/qe/gpio.c: In function qe_pin_request:
drivers/soc/fsl/qe/gpio.c:163:26: warning: variable mm_gc set but not used [-Wunused-but-set-variable]

commit 1e714e54b5ca ("powerpc: qe_lib-gpio: use gpiochip data pointer")
left behind this unused variable.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Signed-off-by: Li Yang <leoyang.li@nxp.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/soc/fsl/qe/gpio.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/soc/fsl/qe/gpio.c b/drivers/soc/fsl/qe/gpio.c
index f0c29ed8f0ff1..807df73728fc7 100644
--- a/drivers/soc/fsl/qe/gpio.c
+++ b/drivers/soc/fsl/qe/gpio.c
@@ -160,7 +160,6 @@ struct qe_pin *qe_pin_request(struct device_node *np, int index)
 {
 	struct qe_pin *qe_pin;
 	struct gpio_chip *gc;
-	struct of_mm_gpio_chip *mm_gc;
 	struct qe_gpio_chip *qe_gc;
 	int err;
 	unsigned long flags;
@@ -186,7 +185,6 @@ struct qe_pin *qe_pin_request(struct device_node *np, int index)
 		goto err0;
 	}
 
-	mm_gc = to_of_mm_gpio_chip(gc);
 	qe_gc = gpiochip_get_data(gc);
 
 	spin_lock_irqsave(&qe_gc->lock, flags);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
