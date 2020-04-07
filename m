Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F0C1A07A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 08:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kc5DWUPDNS4xh2K1wwuNGJ8emnWMcOJ2NSz9weT1aa0=; b=iHx
	oKrj9QZl2Uxq6MlmW4qT8SgGvW7ZlAJ46GABb/Be62KtHBGXrMioJgBBbmi16XZR7t/86Mjy4lpu7
	8z6eW0u2kQVMX+KgwRKpjPKxDPBJepjPVXFQIkc4lJ+r46hoc1loDDnMNImPPlvOJgD8rin+VOVjR
	1kInqzSRyuIoEJ0dd6HlJsA2ZUYvUMZRt4FuWELCtdsR+EcJPHC5obo3LIHbgHy9EPwzjhEvAgDpq
	U1FKb3dv+KyBg0RccM6gef8WdHqgmpxSl/zT2mQE1HCtIpPCBkVtMfij5Q9WnnbhyM/wed8lvW3cn
	dPcXQIxZffab2Ob8bJ+x9poLxO546uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLi2u-0002TE-L0; Tue, 07 Apr 2020 06:49:16 +0000
Received: from smtpbguseast3.qq.com ([54.243.244.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLi2n-0002RC-0a
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 06:49:12 +0000
X-QQ-mid: bizesmtp18t1586242114t31i3imq
Received: from localhost.localdomain (unknown [111.28.140.218])
 by esmtp6.qq.com (ESMTP) with 
 id ; Tue, 07 Apr 2020 14:48:32 +0800 (CST)
X-QQ-SSF: 01400000002000N0LK40B00A0000000
X-QQ-FEAT: M1J1ppP5VJu/IKvoalnukNKS6K1bq6+1e/GWW1pEr7NE+Hkf8UHRLSy7olpnN
 AqQ+pjrfSRc0Pk31q0iTRIF3syz2hrevJJtowOeSFyLWY4/sC7sv5FV5dBtUmnNc0Uf9+5b
 d4+LgGBsNR5FPXOP8ip1BS8Qzh079HnWuGn5Fg91Ezocnnrgp9zHLYT12NlZVJPAbAiL8tX
 gOUd8SaCAO1iq2U9iuBbw4Td+HOcj/3ajxSh8nYsa/BdFDmDrF8IP3vnObJcBKsUAqSp9zU
 HjDMcvraLlkODkN13LhOESe+9Guq6WFDU5/pjIbKUZjpYCI/ShytWuIommnGcYIBKtXw==
X-QQ-GoodBg: 2
From: xiaolinkui <xiaolinkui@tj.kylinos.cn>
To: mcoquelin.stm32@gmail.com,
	alexandre.torgue@st.com
Subject: [PATCH] net: stmmac: fix the wrong comment
Date: Tue,  7 Apr 2020 14:48:19 +0800
Message-Id: <20200407064819.16945-1-xiaolinkui@tj.kylinos.cn>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:tj.kylinos.cn:qybgforeign:qybgforeign5
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_234909_180080_ECA6C8B4 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.243.244.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.243.244.52 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jose.Abreu@synopsys.com, netdev@vger.kernel.org, linux@armlinux.org.uk,
 davem@davemloft.net, p.zabel@pengutronix.de,
 xiaolinkui <xiaolinkui@tj.kylinos.cn>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Corrected the incorrect comment "clk_scr_i" to "clk_csr_i".

Signed-off-by: xiaolinkui <xiaolinkui@tj.kylinos.cn>
---
 include/linux/stmmac.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/include/linux/stmmac.h b/include/linux/stmmac.h
index fbafb353e9be..234641b34fd4 100644
--- a/include/linux/stmmac.h
+++ b/include/linux/stmmac.h
@@ -28,12 +28,12 @@
  * This could also be configured at run time using CPU freq framework. */
 
 /* MDC Clock Selection define*/
-#define	STMMAC_CSR_60_100M	0x0	/* MDC = clk_scr_i/42 */
-#define	STMMAC_CSR_100_150M	0x1	/* MDC = clk_scr_i/62 */
-#define	STMMAC_CSR_20_35M	0x2	/* MDC = clk_scr_i/16 */
-#define	STMMAC_CSR_35_60M	0x3	/* MDC = clk_scr_i/26 */
-#define	STMMAC_CSR_150_250M	0x4	/* MDC = clk_scr_i/102 */
-#define	STMMAC_CSR_250_300M	0x5	/* MDC = clk_scr_i/122 */
+#define	STMMAC_CSR_60_100M	0x0	/* MDC = clk_csr_i/42 */
+#define	STMMAC_CSR_100_150M	0x1	/* MDC = clk_csr_i/62 */
+#define	STMMAC_CSR_20_35M	0x2	/* MDC = clk_csr_i/16 */
+#define	STMMAC_CSR_35_60M	0x3	/* MDC = clk_csr_i/26 */
+#define	STMMAC_CSR_150_250M	0x4	/* MDC = clk_csr_i/102 */
+#define	STMMAC_CSR_250_300M	0x5	/* MDC = clk_csr_i/122 */
 
 /* MTL algorithms identifiers */
 #define MTL_TX_ALGORITHM_WRR	0x0
-- 
2.17.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
