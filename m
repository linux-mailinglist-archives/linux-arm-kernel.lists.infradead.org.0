Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9101F05FB
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 11:51:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/fyMNtERSC0kSSOBVCVyjWkM/KBXwE2U071DC13BB0w=; b=mBw
	dDCsiCu89rqnb1BRrsMwLLlf+M4vG0PaW9gq3wJiBjPn0U5DTJDvTh/v4e024y/1dealycW2fR87u
	OAXGnGneE6cszlxrnB6njwxDhnOLZpDepm39dkflQmxVNkOY/oJmrDvzAX5x8k0ZclXxa3IX7dBDz
	4Rzq0VzdC8zKr2+pLvsmd7QUIKlJP/j3VzK+6OT8WygW4c9gQaOW5A3nYIqc4e+PCLQLiOfDTdEB1
	b3iEAKtJdT+NP8k5D4zblM69crkaVfYCgTBUVES/G1kG9trmBM65MSHwkiJWodRvmAWZg/fDZE28G
	DFcbtEtn7qXkdFkMaYVa1nbp7OJuOwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhVU0-00089e-53; Sat, 06 Jun 2020 09:51:20 +0000
Received: from mail.loongson.cn ([114.242.206.163] helo=loongson.cn)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhVTY-000838-0l
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jun 2020 09:50:53 +0000
Received: from linux.localdomain (unknown [113.200.148.30])
 by mail.loongson.cn (Coremail) with SMTP id AQAAf9Dxz2nZZtteMWk+AA--.1096S2;
 Sat, 06 Jun 2020 17:50:18 +0800 (CST)
From: Tiezhu Yang <yangtiezhu@loongson.cn>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Nishanth Menon <nm@ti.com>,
 Tero Kristo <t-kristo@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH 1/3] irqchip/ti-sci-inta: Remove dead code in
 ti_sci_inta_set_type()
Date: Sat,  6 Jun 2020 17:50:15 +0800
Message-Id: <1591437017-5295-1-git-send-email-yangtiezhu@loongson.cn>
X-Mailer: git-send-email 2.1.0
X-CM-TRANSID: AQAAf9Dxz2nZZtteMWk+AA--.1096S2
X-Coremail-Antispam: 1UD129KBjvdXoWrKrW5try7Ar17tF1kArWDurg_yoWxZFg_u3
 WjqwnxJrW0gFs8Cr17Kw48ZFy0vay5Ww1vga15tasxtwnagwn5ArW7Xws5AFs3WaykArZ7
 KrW5Zr18Cr17ujkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUIcSsGvfJTRUUUb3kFF20E14v26r4j6ryUM7CY07I20VC2zVCF04k26cxKx2IYs7xG
 6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
 A2z4x0Y4vE2Ix0cI8IcVAFwI0_Jr0_JF4l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr0_
 Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AKxVW8Jr
 0_Cr1UM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj
 6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVW8JVWxJwAm72CE4IkC6x0Yz7v_Jr
 0_Gr1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7M4IIrI8v6xkF7I0E
 8cxan2IY04v7MxkIecxEwVAFwVW8uwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbV
 WUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF
 67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42
 IY6xIIjxv20xvEc7CjxVAFwI0_Jr0_Gr1lIxAIcVCF04k26cxKx2IYs7xG6rWUJVWrZr1U
 MIIF0xvEx4A2jsIE14v26r4j6F4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIda
 VFxhVjvjDU0xZFpf9x0JU4BT5UUUUU=
X-CM-SenderInfo: p1dqw3xlh2x3gn0dqz5rrqw2lrqou0/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_025052_446957_ED9D42DF 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Xuefeng Li <lixuefeng@loongson.cn>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the function ti_sci_inta_set_type(), the statement "return -EINVAL;"
out of switch case is dead code, remove it.

Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
---
 drivers/irqchip/irq-ti-sci-inta.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/irqchip/irq-ti-sci-inta.c b/drivers/irqchip/irq-ti-sci-inta.c
index 7e3ebf6..c20c9f7 100644
--- a/drivers/irqchip/irq-ti-sci-inta.c
+++ b/drivers/irqchip/irq-ti-sci-inta.c
@@ -433,8 +433,6 @@ static int ti_sci_inta_set_type(struct irq_data *data, unsigned int type)
 	default:
 		return -EINVAL;
 	}
-
-	return -EINVAL;
 }
 
 static struct irq_chip ti_sci_inta_irq_chip = {
-- 
2.1.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
