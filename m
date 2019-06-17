Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B7F481E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:25:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A1doxh1A2oHGTQ5BReEcbTHygrAe8pcCAiBKwvmhQW4=; b=D08W9L3wRkk67A
	EWR/0cmKH6AGap1coOn4Anrr2loj8jzMS7pye0ShWf5vteuLZVBoFubN11JtfUckYuTJ4EyDmMJyC
	svbLSBwhMB7enxEZAw30HnOF9RRjRSVQ7/T3en5AZyiebpgaDkSGIGbLhgEHh1p5Kexz+6zkoUWWQ
	FSwElQEtQeZ/GSd+Q0S6UlbKpMJEmAgLPCqLqIjFg5zkMnBmWWatcnsQm8zsI1Jb36Ros4JlUc5Hp
	ASUlhxgqrT+DaJ7JjHkIhZbOMJy9Um+AAs02CBJTY/i+cyQTpXBqj/MRZ6uHbcsmMTYsvbBO0XKaG
	A3dt1buVyg2k244r/N8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqhi-0007K2-8X; Mon, 17 Jun 2019 12:25:42 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqhW-0007JJ-Q7
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:25:32 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N95Rn-1ietfb3wbn-016B0V; Mon, 17 Jun 2019 14:25:29 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: arm@kernel.org, Linus Walleij <linusw@kernel.org>,
 Imre Kaloz <kaloz@openwrt.org>, Krzysztof Halasa <khalasa@piap.pl>
Subject: [PATCH 2/3] ARM: ixp4xx: mark ixp4xx_irq_setup as __init
Date: Mon, 17 Jun 2019 14:24:31 +0200
Message-Id: <20190617122449.457744-2-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190617122449.457744-1-arnd@arndb.de>
References: <20190617122449.457744-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:CfnD4zPWOhfoEEt+/aRsFBaVUzGsrQvBx7m6qk640ipp4z5nl4t
 TDWUJOpBWr3Mi5Bwm6O1XCkdR1gUsL9Xr9MyjAbvJtIRmWaUPKlFVtQ+qwMZCAFtsbHxhF1
 Tt/R4JggHGbNS2wANcBLECFtfMN0/DvlcWqwoxkuoREchnYLdYRf7eXf04VTiTyjXT/ER0V
 ceiPHFFJIMhaKYrZAh1Dg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KZSi4hhzRXQ=:5JRWx406OFkC9CWGAFDw7N
 ZsdoxNqBpiy2pMOKqpj9CbGV/eeM/6TFHKpPMTdDrAsyAo53oHE6jSWKTxc72Cd1fT1HCPJTJ
 sYoggALe8wDKqg3Ci/1q8WBEB2ApUOfm7NZ0b+PWec0GvpQx2rA9o98y7IuuoZeOXrO4Utxbg
 jZ2TtzxizCnF3b6OJH/gGeFzoJhFTeQBkZeFCOgH+cfQ0q+rjzKQAtsl5MrTmyRrlB3FX3FBW
 hT/AmPcnu6zgeouhX96dowduS3EvT5iIEAFMoL23GdJ8Tfi8cJaq1YILWvBxXhkw/w5G5FRTQ
 W4Y0mRy7jKEzVPrkw2y+8t9Ugn0dE0gw1qj8++Ztk8ZK1tuKa0Bd87A9PlIrRA6esCjx8Zsln
 av10VaPjwu1zVqC/y6C06WQZuzIhlMRjgzKDih0vIwlHKta7jlUAwmkwEbeqAxt+ffnf7ykEF
 MatlVJ2SGsrMmVfJMDfcpoUiMYR8hGO1kgOdRbTJIWBjS35PkRWrRL2dUl5aE0Qa9NiSZrCRF
 ydnifDq9bNeHiRnC1OgEtKlXE7xlYhH0GaPxX8vpGKiieU4eHvDf+UMMSdxKZcOOBJuG9XwiJ
 29EgNNoXbtuIiPvF26vvZ4Mrle1nLWnaLsJx7bdZtDJLpiTjs7n+tQ4OoPXEJTukTejhVl84C
 ySyEXoS1xzmDvKVPSsjW7yScwpn3eUKsd8zliHJg4lj0PXAXP+saVNdbLqGEuqbve0KjEhTw7
 Aws9R1XLVqu9ZKJGGlYvNu6Dipb7fblBP0UjnoaFctbwXufiHDR6etFPE44=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_052531_134512_2EB8F027 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kbuild complains about ixp4xx_irq_setup not being __init
itself in some configurations:

WARNING: vmlinux.o(.text+0x85bae4): Section mismatch in reference from the function ixp4xx_irq_setup() to the function .init.text:set_handle_irq()
The function ixp4xx_irq_setup() references
the function __init set_handle_irq().
This is often because ixp4xx_irq_setup lacks a __init
annotation or the annotation of set_handle_irq is wrong.

I suspect it normally gets inlined, so we get no such warning,
but clang makes this obvious when the function is left out
of line.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/irqchip/irq-ixp4xx.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/irqchip/irq-ixp4xx.c b/drivers/irqchip/irq-ixp4xx.c
index d576809429ac..6751c35b7e1d 100644
--- a/drivers/irqchip/irq-ixp4xx.c
+++ b/drivers/irqchip/irq-ixp4xx.c
@@ -252,10 +252,10 @@ static const struct ixp4xx_irq_chunk ixp4xx_irq_chunks[] = {
  * @fwnode: Corresponding fwnode abstraction for this controller
  * @is_356: if this is an IXP43x, IXP45x or IXP46x SoC variant
  */
-static int ixp4xx_irq_setup(struct ixp4xx_irq *ixi,
-			    void __iomem *irqbase,
-			    struct fwnode_handle *fwnode,
-			    bool is_356)
+static int __init ixp4xx_irq_setup(struct ixp4xx_irq *ixi,
+				   void __iomem *irqbase,
+				   struct fwnode_handle *fwnode,
+				   bool is_356)
 {
 	int nr_irqs;
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
