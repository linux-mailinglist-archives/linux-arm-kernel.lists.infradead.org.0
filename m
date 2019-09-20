Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFF0B93A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 17:01:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eI60C3cnEEPocOFm9ps8JPDxvX8529f835VsLGCsf5c=; b=JUyvYMamP0raeP
	fBDIGP7MzRbvRq0N0AoBwJKWXit5B9FmRjmVM4Va7qx5XqKaPAV2G6gCzLeIFf7GkuPKLR5J5RSq7
	Deoyh6YdoduDM3bYlvKzyYVLFx5CKDlRUn0nyJNdIGbrx9snYRBMlQNHLCiaFd3NLaV4+emrBSJVy
	F3etUehRO8pyXmzlkSZon6s5R8KB/f5aQqZ+Gfdv7mADjMj6Se7se5ZVtOncIt+c71Hx+hZ/tOF3S
	cpYZj2muydNyaD+Y1Q8+JsEUYolq+ImpskwHcUvd8Pn0PyQ7FwXGtZE9QwwLmn0HdY/1djsb/BNZS
	9qhYQk4tw35oOMDQIJTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBKPS-0002wT-Ag; Fri, 20 Sep 2019 15:01:22 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBKPF-0002v3-UT
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 15:01:11 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8KEkiJj029770; Fri, 20 Sep 2019 17:00:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=oN0Ax4lbm8sphTOWdTDGK6SWkUe4Md0Mb1/rUapNH9A=;
 b=uPQqAmfNkYWi1r1JZK+EtXG9FXviggq1tThrcve0oFOTlnxOK3uQ7OIqA50wipTg4SRc
 iYekMVwt+OwDzXOYRVolZVRYsht5EUdyJ2WB/iWoJHq7S5nChZLMYA2xi5zzKGseQ6QT
 J5aIjfllyOQQbpniNQigUSj8UydenJpxkQPdSC97oG9FWCT/YUvfprGNXJYWgKgQB1/h
 77jdN3o7ZXTmSgptjVhcCyj5rc4vbImFqIt4mWGaPW6QTWUbrLebewGNUbFlTXfSEjp2
 vT570KghSzBxFdDVsZwO1ISy2An9dOzSK36D+m6iofOnl3ZMeewFRJ7cZEaHd/ikJ3ER cA== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2v3vc4kcsw-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 20 Sep 2019 17:00:53 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 8F1584B;
 Fri, 20 Sep 2019 15:00:49 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B850A2D3798;
 Fri, 20 Sep 2019 17:00:48 +0200 (CEST)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 20 Sep
 2019 17:00:48 +0200
Received: from localhost (10.201.23.25) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 20 Sep 2019 17:00:48
 +0200
From: Fabien Dessenne <fabien.dessenne@st.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>, 
 Marc Zyngier <marc.zyngier@arm.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 <linux-kernel@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] irqchip/stm32-exti: Use the hwspin_lock_timeout_in_atomic()
 API
Date: Fri, 20 Sep 2019 17:00:43 +0200
Message-ID: <1568991643-7549-1-git-send-email-fabien.dessenne@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.25]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-20_05:2019-09-20,2019-09-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_080110_460348_5BDC46AB 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: Fabien Dessenne <fabien.dessenne@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the hwspin_lock_timeout_in_atomic() API is available use it.

Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
---
 drivers/irqchip/irq-stm32-exti.c | 65 +++++++++++++---------------------------
 1 file changed, 20 insertions(+), 45 deletions(-)

diff --git a/drivers/irqchip/irq-stm32-exti.c b/drivers/irqchip/irq-stm32-exti.c
index e00f2fa..7fc0d1f 100644
--- a/drivers/irqchip/irq-stm32-exti.c
+++ b/drivers/irqchip/irq-stm32-exti.c
@@ -25,7 +25,6 @@
 #define IRQS_PER_BANK 32
 
 #define HWSPNLCK_TIMEOUT	1000 /* usec */
-#define HWSPNLCK_RETRY_DELAY	100  /* usec */
 
 struct stm32_exti_bank {
 	u32 imr_ofst;
@@ -277,55 +276,24 @@ static int stm32_exti_set_type(struct irq_data *d,
 	return 0;
 }
 
-static int stm32_exti_hwspin_lock(struct stm32_exti_chip_data *chip_data)
-{
-	int ret, timeout = 0;
-
-	if (!chip_data->host_data->hwlock)
-		return 0;
-
-	/*
-	 * Use the x_raw API since we are under spin_lock protection.
-	 * Do not use the x_timeout API because we are under irq_disable
-	 * mode (see __setup_irq())
-	 */
-	do {
-		ret = hwspin_trylock_raw(chip_data->host_data->hwlock);
-		if (!ret)
-			return 0;
-
-		udelay(HWSPNLCK_RETRY_DELAY);
-		timeout += HWSPNLCK_RETRY_DELAY;
-	} while (timeout < HWSPNLCK_TIMEOUT);
-
-	if (ret == -EBUSY)
-		ret = -ETIMEDOUT;
-
-	if (ret)
-		pr_err("%s can't get hwspinlock (%d)\n", __func__, ret);
-
-	return ret;
-}
-
-static void stm32_exti_hwspin_unlock(struct stm32_exti_chip_data *chip_data)
-{
-	if (chip_data->host_data->hwlock)
-		hwspin_unlock_raw(chip_data->host_data->hwlock);
-}
-
 static int stm32_irq_set_type(struct irq_data *d, unsigned int type)
 {
 	struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 	struct stm32_exti_chip_data *chip_data = gc->private;
 	const struct stm32_exti_bank *stm32_bank = chip_data->reg_bank;
+	struct hwspinlock *hwlock = chip_data->host_data->hwlock;
 	u32 rtsr, ftsr;
 	int err;
 
 	irq_gc_lock(gc);
 
-	err = stm32_exti_hwspin_lock(chip_data);
-	if (err)
-		goto unlock;
+	if (hwlock) {
+		err = hwspin_lock_timeout_in_atomic(hwlock, HWSPNLCK_TIMEOUT);
+		if (err) {
+			pr_err("%s can't get hwspinlock (%d)\n", __func__, err);
+			goto unlock;
+		}
+	}
 
 	rtsr = irq_reg_readl(gc, stm32_bank->rtsr_ofst);
 	ftsr = irq_reg_readl(gc, stm32_bank->ftsr_ofst);
@@ -338,7 +306,8 @@ static int stm32_irq_set_type(struct irq_data *d, unsigned int type)
 	irq_reg_writel(gc, ftsr, stm32_bank->ftsr_ofst);
 
 unspinlock:
-	stm32_exti_hwspin_unlock(chip_data);
+	if (hwlock)
+		hwspin_unlock_in_atomic(hwlock);
 unlock:
 	irq_gc_unlock(gc);
 
@@ -504,15 +473,20 @@ static int stm32_exti_h_set_type(struct irq_data *d, unsigned int type)
 {
 	struct stm32_exti_chip_data *chip_data = irq_data_get_irq_chip_data(d);
 	const struct stm32_exti_bank *stm32_bank = chip_data->reg_bank;
+	struct hwspinlock *hwlock = chip_data->host_data->hwlock;
 	void __iomem *base = chip_data->host_data->base;
 	u32 rtsr, ftsr;
 	int err;
 
 	raw_spin_lock(&chip_data->rlock);
 
-	err = stm32_exti_hwspin_lock(chip_data);
-	if (err)
-		goto unlock;
+	if (hwlock) {
+		err = hwspin_lock_timeout_in_atomic(hwlock, HWSPNLCK_TIMEOUT);
+		if (err) {
+			pr_err("%s can't get hwspinlock (%d)\n", __func__, err);
+			goto unlock;
+		}
+	}
 
 	rtsr = readl_relaxed(base + stm32_bank->rtsr_ofst);
 	ftsr = readl_relaxed(base + stm32_bank->ftsr_ofst);
@@ -525,7 +499,8 @@ static int stm32_exti_h_set_type(struct irq_data *d, unsigned int type)
 	writel_relaxed(ftsr, base + stm32_bank->ftsr_ofst);
 
 unspinlock:
-	stm32_exti_hwspin_unlock(chip_data);
+	if (hwlock)
+		hwspin_unlock_in_atomic(hwlock);
 unlock:
 	raw_spin_unlock(&chip_data->rlock);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
