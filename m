Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCEFD4009
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 14:57:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8npzU8hHzV7JboDwt21YlVBUdpfMW7c7kc5ioKgX9I8=; b=KN9rMBMXKL6LMI
	sqm32QZj7Pt2pXifqh1Vgv8DAFjvO9xlJJUmod12RWtRbJwwicwcLhdlHu6T7MdBj5rC5CGQGRAvQ
	lfEl5BCozAXuIX6m+rvvaj1hklSb5PfAN/8GobnSQphgzi5Mg6IDmUSwR1muuDgQCphawjj6+sqoH
	LztD1XhehYrl1b0NVsqAt+fmVTQTDzT2aQRe37dYceRuKkA/U5kh0fRvYjnUlktPiQQ/RCf3mXkiw
	iBNNxwkD5QK7ups/DBI+FLz+YkNPPbOX5/YOz7gTMQpCxc6J6SsQxwj2l8vc7Fi0Cit1mBEU9z+LI
	6y/uNX4je/p2yehBu/7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIuTj-0001Bx-He; Fri, 11 Oct 2019 12:57:07 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuTc-0001BB-TV
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 12:57:02 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iIuTb-0004A2-CT; Fri, 11 Oct 2019 13:56:59 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iIuTa-0004rd-U8; Fri, 11 Oct 2019 13:56:58 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: ben.dooks@codethink.co.uk,
	patches@arm.linux.org.uk
Subject: arm: parse_dt_topology() rate is pointer to __be32
Date: Fri, 11 Oct 2019 13:56:58 +0100
Message-Id: <20191011125658.18654-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_055701_099430_BA5B4F64 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
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
Cc: Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>

The rate pointer in parse_dt_topology is a pointer to a
__be32, not a u32. This fixes the following sparse warning:

arch/arm/kernel/topology.c:128:43: warning: incorrect type in argument 1 (different base types)
arch/arm/kernel/topology.c:128:43:    expected restricted __be32 const [usertype] *p
arch/arm/kernel/topology.c:128:43:    got unsigned int const [usertype] *[assigned] rate

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
KernelVersion: 5.4-rc2

Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm/kernel/topology.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/kernel/topology.c b/arch/arm/kernel/topology.c
index e27b95f16c04..05d4223d5493 100644
--- a/arch/arm/kernel/topology.c
+++ b/arch/arm/kernel/topology.c
@@ -95,7 +95,7 @@ static void __init parse_dt_topology(void)
 				 GFP_NOWAIT);
 
 	for_each_possible_cpu(cpu) {
-		const u32 *rate;
+		const __be32 *rate;
 		int len;
 
 		/* too early to use cpu->of_node */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
