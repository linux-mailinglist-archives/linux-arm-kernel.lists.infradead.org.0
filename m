Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB8516934F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 03:22:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/gtosaM8Akt4sK4enEYffKrIa4xsI1vlRjux+umqqLo=; b=Qj2PDbB2f4n+Xn
	CaR2aZI798Vp0IBIuJnLTZ67Q17z4Le9bee1W/TpovzYdBxcGE9JaF+d6U9DRlif0OEyCz2fDaOTO
	SP2gK+MK9Lni+uh7WOp8dy2mLA75fHBL0DyzDuhP8PkT8qScsPsUisHTeGogPwSgTgtNBZPCKlUB3
	dd6RfYycEEqCnwuh2OPTcl76qnrb9JJ55TR+bw4xIHVUgNdroChKjUmfJ79JHsn903TmUcQYtdDr3
	B3CEt0f+N/5H8TgaRgZyontj4K9qIj5PGMN9XiuXymCw4E+VABPXSSru28UeeMNYT447caitES0kx
	VBeDb/P17SYZJTeMpZ2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5guQ-0001Zq-5i; Sun, 23 Feb 2020 02:22:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5gtu-0001IM-Fj
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 02:21:48 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AD362214DB;
 Sun, 23 Feb 2020 02:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582424505;
 bh=b0T7XcKyF7fdfoO4CCzBX1iv4p+VefjFERsskt64TYA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=i77Vk/J7TDJqXKm6002HID74eMcTfYAZSaWrtUgisXwgqrP7uaWz+jsZd1UfIdSuY
 qVGo6Vda6oDP2e/05DGGsRZGdZNb8ewq5oAlwSNhKimgt/Lm1KkstX7O9aYljVb0+O
 upakQSOxY5hobZaEu1y+Wx4hIC5hzRD/tCgjuNn0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 21/58] ARM: dts: sti: fixup sound frame-inversion
 for stihxxx-b2120.dtsi
Date: Sat, 22 Feb 2020 21:20:42 -0500
Message-Id: <20200223022119.707-21-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200223022119.707-1-sashal@kernel.org>
References: <20200223022119.707-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_182146_712903_55F10D3A 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Patrice Chotard <patrice.chotard@st.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

[ Upstream commit f24667779b5348279e5e4328312a141a730a1fc7 ]

frame-inversion is "flag" not "uint32".
This patch fixup it.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Reviewed-by: Patrice Chotard <patrice.chotard@st.com>
Signed-off-by: Patrice Chotard <patrice.chotard@st.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/stihxxx-b2120.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/stihxxx-b2120.dtsi b/arch/arm/boot/dts/stihxxx-b2120.dtsi
index 60e11045ad762..d051f080e52ec 100644
--- a/arch/arm/boot/dts/stihxxx-b2120.dtsi
+++ b/arch/arm/boot/dts/stihxxx-b2120.dtsi
@@ -46,7 +46,7 @@
 			/* DAC */
 			format = "i2s";
 			mclk-fs = <256>;
-			frame-inversion = <1>;
+			frame-inversion;
 			cpu {
 				sound-dai = <&sti_uni_player2>;
 			};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
