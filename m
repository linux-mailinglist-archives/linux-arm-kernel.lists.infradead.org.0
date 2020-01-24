Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB52148748
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:22:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+SzVU72y4zj+5JGmjKXur1AEXFhufaC2BQJOjXC0jE=; b=n50H+B2e71EFL1
	fHIKzeMLz9duAPcDH7jK72pM92uE0oQ0NWR07twXBQl70FdLq89sQ3koHf580X61AZi9bv+tbZ9hn
	dhdEz2pcgq/1lMxCwuspRs3+eTX2sUgmvQVwUN6Jq+RQEVUNwhicRe8koCIUc0ElIAS4WMGRi0sW4
	tO6qbBDc5AkcYz+oT+NfB7Lk+B54f0jcY3xTfILcpZ46tsBHCAKoeXn67DtNbjhCu4CbEkereL9Q6
	bUoZ+1PuZp9GoomaW1j/6akBvW/CSGBBpSyiLKhCiLGNCszUPTCtM4kqYiHzZs8eO7UtoNlzfQt9K
	XJXO29zlbAI19FTTogFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuzqa-0004QR-PU; Fri, 24 Jan 2020 14:22:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuznC-0000hN-Jv
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 14:18:40 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6216020838;
 Fri, 24 Jan 2020 14:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579875516;
 bh=+I5ykO5NXtCEJfLJit9LMgzYwZuR+pnoXVd6Iosr3M8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eAMCnbuVP71YhDIlg6xokDhb/rsL+0IMjUuLucYeCCxRqIhu5M+PLrpiK7E2RpoLM
 i6IabTPT3hrj+1gXEmLNGV64RVS/6SFAma5x/iP4bKnfD/0WxS0knPqgnFq/NJgldL
 ZwNsOM3FSamqK4bYwjdzFUylkjIk7t+Yz9f6J/Wc=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 016/107] ARM: dts: imx7ulp: fix reg of cpu node
Date: Fri, 24 Jan 2020 09:16:46 -0500
Message-Id: <20200124141817.28793-16-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124141817.28793-1-sashal@kernel.org>
References: <20200124141817.28793-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_061838_822078_EC5A1914 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Peng Fan <peng.fan@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

[ Upstream commit b8ab62ff7199fac8ce27fa4a149929034fabe7f8 ]

According to arm cpus binding doc,
"
      On 32-bit ARM v7 or later systems this property is
        required and matches the CPU MPIDR[23:0] register
        bits.

        Bits [23:0] in the reg cell must be set to
        bits [23:0] in MPIDR.

        All other bits in the reg cell must be set to 0.
"

In i.MX7ULP, the MPIDR[23:0] is 0xf00, not 0, so fix it.
Otherwise there will be warning:
"DT missing boot CPU MPIDR[23:0], fall back to default cpu_logical_map"

Fixes: 20434dc92c05 ("ARM: dts: imx: add common imx7ulp dtsi support")
Signed-off-by: Peng Fan <peng.fan@nxp.com>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/imx7ulp.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
index 6859a3a83750c..3dac6898cdc57 100644
--- a/arch/arm/boot/dts/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/imx7ulp.dtsi
@@ -37,10 +37,10 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		cpu0: cpu@0 {
+		cpu0: cpu@f00 {
 			compatible = "arm,cortex-a7";
 			device_type = "cpu";
-			reg = <0>;
+			reg = <0xf00>;
 		};
 	};
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
