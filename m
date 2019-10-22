Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5976DE06E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 16:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7Puive18Qhgq83CPdbhGAvqWX7KyDz0//zrijIOt23A=; b=Ywq4BntzGQLQUT
	3e0Dqk2RJVw8LBjpEfQ1ooNmJzV0xC2HV2SWWlDJhyTURbeFpYh/RrlJS9NTkry4Fdm5UU21tFyBw
	s7hpDKRs1msREk2f1znLy+fGQV6+x+lvfajtyUrNcyvvPowin5wU+QkqNHSlHR2zKozmqVJpjPydJ
	VVAXSvyeIZF/vvSmPO2vHCOrRKSPHHoRJ3AZfk886MkjxelQbWw4EIGws/FePILeZmNoSYOr4tybw
	qo2/PSURbGj6TerOWk4aWYzm6bV5GJWFrTYT/7TK1SNL3oWz5I0o4m180gsWoVfq0ccVCReU5hXon
	7s6PqHrWxLYqbRvy4mXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMvd5-0001VS-UB; Tue, 22 Oct 2019 14:59:23 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMvcv-0001Uc-FM; Tue, 22 Oct 2019 14:59:16 +0000
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id CDE2F200016;
 Tue, 22 Oct 2019 14:59:02 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v4] mtd: spear_smi: Fix Write Burst mode
Date: Tue, 22 Oct 2019 16:58:59 +0200
Message-Id: <20191022145859.5202-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_075913_786272_8E29602B 
X-CRM114-Status: GOOD (  21.70  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Russell King <linux@armlinux.org.uk>, stable@vger.kernel.org,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Any write with either dd or flashcp to a device driven by the
spear_smi.c driver will pass through the spear_smi_cpy_toio()
function. This function will get called for chunks of up to 256 bytes.
If the amount of data is smaller, we may have a problem if the data
length is not 4-byte aligned. In this situation, the kernel panics
during the memcpy:

    # dd if=/dev/urandom bs=1001 count=1 of=/dev/mtd6
    spear_smi_cpy_toio [620] dest c9070000, src c7be8800, len 256
    spear_smi_cpy_toio [620] dest c9070100, src c7be8900, len 256
    spear_smi_cpy_toio [620] dest c9070200, src c7be8a00, len 256
    spear_smi_cpy_toio [620] dest c9070300, src c7be8b00, len 233
    Unhandled fault: external abort on non-linefetch (0x808) at 0xc90703e8
    [...]
    PC is at memcpy+0xcc/0x330

The above error occurs because the implementation of memcpy_toio()
tries to optimize the number of I/O by writing 4 bytes at a time as
much as possible, until there are less than 4 bytes left and then
switches to word or byte writes.

Unfortunately, the specification states about the Write Burst mode:

        "the next AHB Write request should point to the next
	incremented address and should have the same size (byte,
	half-word or word)"

This means ARM architecture implementation of memcpy_toio() cannot
reliably be used blindly here. Workaround this situation by update the
write path to stick to byte access when the burst length is not
multiple of 4.

Fixes: f18dbbb1bfe0 ("mtd: ST SPEAr: Add SMI driver for serial NOR flash")
Cc: Russell King <linux@armlinux.org.uk>
Cc: Boris Brezillon <boris.brezillon@collabora.com>
Cc: stable@vger.kernel.org
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---

Changes in v4:
==============
* Change a cast to avoid potential warnings:
  s/unsigned int/uintptr_t/

Changes in v3:
==============
* Prevent writes to non 4-byte aligned addresses to fail.
* Use the IS_ALIGNED() macro.
* Add a comment to explain why the 'memcpy_toio_b' helper is needed
  directly in the code.

Changes in v2:
==============
* This time I think the patch really fixes the problem: we use a
  memcpy_toio_b() function to force byte access only when needed. We
  don't use the _memcpy_toio() helper anymore as the fact that it is
  doing byte access is purely an implementation detail and is not part
  of the API, while the function is also flagged as "should be
  optimized".
* One could argue that potentially memcpy_toio() does not ensure by
  design 4-bytes access only but I think it is good enough to use it
  in this case as the ARM implementation of this function is already
  extensively optimized. I also find clearer to use it than 
  adding my own spear_smi_mempy_toio_l(). Please tell me if you disagree
  with this.
* The volatile keyword has been taken voluntarily from the _memcpy_toio()
  implementation I was about to use previously.

 drivers/mtd/devices/spear_smi.c | 38 ++++++++++++++++++++++++++++++++-
 1 file changed, 37 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/devices/spear_smi.c b/drivers/mtd/devices/spear_smi.c
index 986f81d2f93e..47ad0766affa 100644
--- a/drivers/mtd/devices/spear_smi.c
+++ b/drivers/mtd/devices/spear_smi.c
@@ -592,6 +592,26 @@ static int spear_mtd_read(struct mtd_info *mtd, loff_t from, size_t len,
 	return 0;
 }
 
+/*
+ * The purpose of this function is to ensure a memcpy_toio() with byte writes
+ * only. Its structure is inspired from the ARM implementation of _memcpy_toio()
+ * which also does single byte writes but cannot be used here as this is just an
+ * implementation detail and not part of the API. Not mentioning the comment
+ * stating that _memcpy_toio() should be optimized.
+ */
+static void spear_smi_memcpy_toio_b(volatile void __iomem *dest,
+				    const void *src, size_t len)
+{
+	const unsigned char *from = src;
+
+	while (len) {
+		len--;
+		writeb(*from, dest);
+		from++;
+		dest++;
+	}
+}
+
 static inline int spear_smi_cpy_toio(struct spear_smi *dev, u32 bank,
 		void __iomem *dest, const void *src, size_t len)
 {
@@ -614,7 +634,23 @@ static inline int spear_smi_cpy_toio(struct spear_smi *dev, u32 bank,
 	ctrlreg1 = readl(dev->io_base + SMI_CR1);
 	writel((ctrlreg1 | WB_MODE) & ~SW_MODE, dev->io_base + SMI_CR1);
 
-	memcpy_toio(dest, src, len);
+	/*
+	 * In Write Burst mode (WB_MODE), the specs states that writes must be:
+	 * - incremental
+	 * - of the same size
+	 * The ARM implementation of memcpy_toio() will optimize the number of
+	 * I/O by using as much 4-byte writes as possible, surrounded by
+	 * 2-byte/1-byte access if:
+	 * - the destination is not 4-byte aligned
+	 * - the length is not a multiple of 4-byte.
+	 * Avoid this alternance of write access size by using our own 'byte
+	 * access' helper if at least one of the two conditions above is true.
+	 */
+	if (IS_ALIGNED(len, sizeof(u32)) &&
+	    IS_ALIGNED((uintptr_t)dest, sizeof(u32)))
+		memcpy_toio(dest, src, len);
+	else
+		spear_smi_memcpy_toio_b(dest, src, len);
 
 	writel(ctrlreg1, dev->io_base + SMI_CR1);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
