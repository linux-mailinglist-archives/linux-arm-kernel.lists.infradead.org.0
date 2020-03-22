Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF05718EA1F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 17:16:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6mBfmHlUxwEW1EibX5b4t63FdSsXRRm2dfB5qrpqNy8=; b=gP6
	RcqtdE7F3Fh2SfcfY5g5PNwRuu9+8wMamEow2McnJXStQXmNOlgPp5Z2Vff5o3+6T+CmvPS2pOmFq
	HnQuUgeyB11UZbFTau2h05n8aWQ8tC+TfhEIWoGzvpKc9ORTXzViyWp381wjBIylFCvrjxTZvRJhM
	Dr5o/nT/ZwFR6bKzanVfc7C95Yl/Qd18cMefae7WDcp0nIuEUh6FMN6DRyxA1heh704jKGMc1DXNP
	O0IO18c3UEKD0tazvWY7ewmQCMXHXjDByr3gUgF/QQEyvvJgkiBtqkVgvnGdRjL5ByyCji0DuPyu7
	oZOD5kVrdYQthYSl9b9KNCE1UrOB6zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG3H5-0004Y2-AL; Sun, 22 Mar 2020 16:16:31 +0000
Received: from mr85p00im-hyfv06021301.me.com ([17.58.23.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG3Gx-0004XI-8K
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 16:16:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
 t=1584893780; bh=lUx573AhALdx5V9UYwZ7h1AoyYiVLJFqxyU5PbCpUmI=;
 h=From:To:Subject:Date:Message-Id;
 b=ma1pavz3PiIsOwmVg9f8z7scVV4fmyT4WEaiFHd1Jfe6z1KZ/QiF+koKGHn5g8vFt
 zsOuP+vYp9d3BhrD5UCEpuEgj+gNe0sEIIRGZZl9QkTgkxilYyaiw8fGLG3csK8LVB
 vDe5XSdhxWVH9GEX0h6wcmicy7F6pALXxdnLE1rkhvaxTkYCIK3LebQhjfT6o4w2Ec
 OgFTYgeui3spfmsbg/IJ90cGWPsNREGUUO8GVuU4S4TQKTVyfiupgqDSHoftrm9+g4
 5D6snyGBajUHf4ee0/amhe5JQWUpUzYWSSreAi87oLzjzwowH+U8XCEKEcj+x5Z34V
 J7cc00aKTq15g==
Received: from localhost (101.220.150.77.rev.sfr.net [77.150.220.101])
 by mr85p00im-hyfv06021301.me.com (Postfix) with ESMTPSA id 6D26140520;
 Sun, 22 Mar 2020 16:16:19 +0000 (UTC)
From: Alain Volmat <avolmat@me.com>
To: patrice.chotard@st.com, robh+dt@kernel.org, mark.rutland@arm.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] dts: arm: stih407-family: remove duplicated rng nodes
Date: Sun, 22 Mar 2020 17:16:16 +0100
Message-Id: <20200322161616.19111-1-avolmat@me.com>
X-Mailer: git-send-email 2.17.1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2020-03-22_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=938 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-2003220099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_091623_309964_A774759D 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [17.58.23.188 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avolmat[at]me.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: avolmat@me.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

the 2 rng nodes are duplicated within the stih407-family.dtsi

Signed-off-by: Alain Volmat <avolmat@me.com>
---
 arch/arm/boot/dts/stih407-family.dtsi | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/arch/arm/boot/dts/stih407-family.dtsi b/arch/arm/boot/dts/stih407-family.dtsi
index 7c36c37260a4..23a1746f3baa 100644
--- a/arch/arm/boot/dts/stih407-family.dtsi
+++ b/arch/arm/boot/dts/stih407-family.dtsi
@@ -767,20 +767,6 @@
 				 <&clk_s_c0_flexgen CLK_ETH_PHY>;
 		};
 
-		rng10: rng@8a89000 {
-			compatible      = "st,rng";
-			reg		= <0x08a89000 0x1000>;
-			clocks          = <&clk_sysin>;
-			status		= "okay";
-		};
-
-		rng11: rng@8a8a000 {
-			compatible      = "st,rng";
-			reg		= <0x08a8a000 0x1000>;
-			clocks          = <&clk_sysin>;
-			status		= "okay";
-		};
-
 		mailbox0: mailbox@8f00000  {
 			compatible	= "st,stih407-mailbox";
 			reg		= <0x8f00000 0x1000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
