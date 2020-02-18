Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1672B16258B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 12:31:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1wQLAEkmiBqW/2yIvoUYcSCBCUH4xP6uqZiyVpJewoo=; b=osBRfve3JfOvB+
	+O9h0KWYDeNmGPbl5keg2J1Kys7Mo0qkJp9KHaXrDnhiMVydDFc++msycOF7FagueeYYtfu36zQB5
	XPjPfAsowPxX/c520914grykddyFFS4YjRwPwCxb34fu+vRxY+9JsUXHR1Zh99/r26cjZqL95KQkl
	2fmSdojWD3RZe1hheseoKRoNxj/ALefJbYAvcsyaJKe4R/T+GVIa0dHCWzA1u2liyoGJ/UYHgbfmg
	7bDaRec2jVWTEZmNAvGOb6hsR3DGPCv3vhx5m+SXE/F7HCWR/X9N1qEWevBlN5isyAAaxH6MyuXY8
	bOEq9malLmdy5JyQGO0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j415u-0005ft-0q; Tue, 18 Feb 2020 11:31:14 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j415m-0005fF-1u
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 11:31:07 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id D8610727;
 Tue, 18 Feb 2020 06:30:53 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 18 Feb 2020 06:30:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=Dg2Cd9EZBtYB1HWPx6/lUlj2Ii
 YhZqrvqg7YHhAG3aY=; b=bZ3GcoAkurSfDs9AeIRql7IS0oB+3lENUOtz9+/KcK
 l1/3CbkoWiTCkhI+MIn+0JtunJZQ1p9GEhaYHbbyLMPhRX0XCRvmJQYSfnAD6YcH
 hyu0INbXLMgfFI/9C0lxGtPjG46KByzpVo+GAd0AgDrk5s8imUfai/budHWiObuZ
 osKy6PDf0n9O8VzhbyOzIMlXwe+ktPEUe5zUvhPE/Qy7SKNNKBGLeNi6HMg6lmMW
 qYMRqjtI//ThZ8symHWY533BddicjuT5ql51x9NJYwBtmGLg+1+dGY5F/6XPbf8P
 S9KjH25e1NFWLWJHLHvEz4cvIHN3Hc+Q+jqUX26rJBQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Dg2Cd9EZBtYB1HWPx
 6/lUlj2IiYhZqrvqg7YHhAG3aY=; b=cx/Wg/eA1Hy4SSleVZwqCF1wCWeF+MjBm
 KXFjRAvqdclkdQetYFGD6/8Qw5WOQNf4MijYhp57D6m5Yd0G5GrBjOzTDEhtUGuy
 NPaqe1cSYuILqjj2I5FVhMq80OpWAsBMobFzpOEuWXEmFNLZZZbql7IxBKp5Y7Ha
 +6sHerWIEL79SauZEbLMTjfW+RSERhEZIP7Bql2qth6nJfa5PIvB5Fu2A9xGZQsI
 paufJOxO7HtUP6942t0A+wKR1n+Edi+AVzDtOmYJIyvpkudYA+Z1ZbahQLT+8KoT
 Etatf4jpNDHfRcUbNmXm6ywZ+Xt72fRHh5hS+ra6/g0y+0ocCYbZA==
X-ME-Sender: <xms:7MpLXj4xtwTuHmXD0o08Rt_dl9BRvnCrImoQz2_NbCJnLB8lI_w43A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeekgdeftdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhi
 ugdrrghuqeenucfkphepudegrddvrdekvddrgeeknecuvehluhhsthgvrhfuihiivgeptd
 enucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:7MpLXm9hrLLQwU1VaPo0_5zqzlUp8TC6nuFjJrrN02dMPnd8rYTx6g>
 <xmx:7MpLXqcxpakDEBW4zo3RC8U8yd1Y7cFzZWmU2ViUl5S3u64U6z5kYw>
 <xmx:7MpLXrLMfo3Q3tjOB3D5WUmQWACf-kQqsVWbJBcu7Vj6CtMmbkuACg>
 <xmx:7cpLXlcbukHKbtcHOrt7XghT_mq7DKpX-0Qla09Jb4e0SS0xBiKXfg>
Received: from localhost.localdomain
 (ppp14-2-82-48.adl-apt-pir-bras31.tpg.internode.on.net [14.2.82.48])
 by mail.messagingengine.com (Postfix) with ESMTPA id 937DD3060C21;
 Tue, 18 Feb 2020 06:30:50 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH] ARM: dts: rainier: Enable VUART2
Date: Tue, 18 Feb 2020 22:00:52 +1030
Message-Id: <20200218113052.28392-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_033106_119173_3F3CE298 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The second VUART is used to expose multiplexed, non-hypervisor consoles.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
index 6232cd726a7f..61d4140a2601 100644
--- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
@@ -540,6 +540,10 @@
 	status = "okay";
 };
 
+&vuart2 {
+	status = "okay";
+};
+
 &lpc_ctrl {
 	status = "okay";
 	memory-region = <&flash_memory>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
