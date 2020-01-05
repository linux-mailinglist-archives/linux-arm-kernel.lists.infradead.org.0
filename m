Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7BC13057D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 03:11:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XEIz4uFnWUTHYOzgSOGWa6ueXZwCMtZje9bYZ/wgyT0=; b=EsAB5Xtuz0VRf6
	ERNXAzs0bQPE/7o91I48CulfQkZ+ZLBsUdeDsYNJaZk6xZR6+JHvzr3eawGfuE2K2sq0HEAt3Mqv0
	kDIFUGHTi1SJkdu9x6lFtTL/yAdJy2eZkkj+ZlAiZCKHTN21EBcwh0h0bwsiWnerWFzt+35XV4j3i
	i0jNjKPPbMVW0M54Z7cvDl7BrspDL/zORYiVVZzlPwLJv/Ixl/H8qQMzODOLnjG1eKZi24fVdRFLp
	TM62JAwujWefU9d4etIR6Wj9PO98qd1/OVYzPVtFqgvbeoxiVWZCHA/QHvGGKyAzB1xmlFsT7Ac5k
	hVjqfVjgI8iKupHkByaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1invOM-0008Jw-Pc; Sun, 05 Jan 2020 02:11:46 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1invOH-0008JK-Eg
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Jan 2020 02:11:43 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 4C30221A4B;
 Sat,  4 Jan 2020 21:11:37 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sat, 04 Jan 2020 21:11:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=m/3Nc6uySMl3gk1KAG4ocFWmEJ
 bnhbMHB3CYmRsk9nU=; b=nXyuboOWAxcY4KlDmOPI3Ixgtg34SZtdmGkhmvr3HW
 31iru6La3vS5LmonuyK7txKGBNu5PQGuNK5vCrzncbXu6IcAZ6+mFAiN1Vdo8MUl
 BiRfG/CPuV8ujXiaJLSluPDDXiVHgMdxcR08k12WWU5rxL2Lo3wbr60tqIJhOEVZ
 X/3HR6rQ1YpVoFC7yZYhicxp8Oqwd6+ysyESuXChLvAkbEVLWsxDgZKyrjrdRUZ/
 ox8yfzNa5B2Bg20Y7ANX6jROxtxz8C+7SsLkwWCNewjHGJ52Gwx3LZIizd5txfdk
 PkmsBmrdlz7LsMmW5r+wMf7kiaS8Vmmf0SAAKuUIgMcg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=m/3Nc6uySMl3gk1KA
 G4ocFWmEJbnhbMHB3CYmRsk9nU=; b=wejcvVZDPlBmWh3R+EV0L2epQ13uXnjHP
 YpRm13jm5oEpGfv15gA86CtG/46FLPsVtIm3Nx+3aDXGAKl+vF/YNdBihpy0Ned/
 hNvl34/sTdoa/nAEJMb2f4wRDrinOfNWO06hzykD5CdV+ro4Xht1HobyNKprd7W6
 RUVLI3pJWF0M+SyYyd899FuNBAqJmlV4W204BhhUiCQyKWPW9eM+dRBU3aKGCWC8
 WgIsL8EbqK+pCV1lkXPV8Mz9jHrxTM5blbOaUMKC50ch2OB1VmrJNda5o3QLu6X4
 BF/xgetopi7H3M8IE9PfYUTPHRaAv2rilfv3b9V/lWmDJ1p+UFyrw==
X-ME-Sender: <xms:10URXna5LDAoTAeec4CsV_eHcGE01NdDw9Qee6QFXikBtJa-dbmXTA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdegiedggeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgvlhcu
 jfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkphepje
 dtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghmuhgv
 lhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:10URXq0JUFJ657-lx_hWEMLzMIJwUpJUAzQZzSXHYSOw5m6e9wLvcA>
 <xmx:10URXlShesIXM7E7iUs3UQfnC5wKnZzF3ZdXbJX6IZdjH-KnwjNW9A>
 <xmx:10URXq_UPG_XWwnrlEYnFSjddiGJLS2VAswOQstdEEI6aiHbTGshNw>
 <xmx:2UURXss3jRw2ZC4jjl8-BP-wyUMsw3zFi9X3bIfpX6A9x8EQrt7xRA>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id C027C3060741;
 Sat,  4 Jan 2020 21:11:34 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Chen-Yu Tsai <wens@csie.org>,
	Maxime Ripard <mripard@kernel.org>
Subject: [PATCH] arm64: dts: allwinner: a64: pinebook: Fix lid wakeup
Date: Sat,  4 Jan 2020 20:11:37 -0600
Message-Id: <20200105021137.46542-1-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_181141_633761_B90AC9BA 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

By default, gpio-keys configures the pin to trigger wakeup IRQs on
either edge. The lid switch should only trigger wakeup when opening the
lid, not when closing it.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
index 78c82a665c84..836ae51e5c2a 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
@@ -10,6 +10,7 @@
 #include "sun50i-a64.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/gpio-keys.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/pwm/pwm.h>
 
@@ -60,6 +61,7 @@
 			linux,code = <SW_LID>;
 			linux,can-disable;
 			wakeup-source;
+			wakeup-event-action = <EV_ACT_DEASSERTED>;
 		};
 	};
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
