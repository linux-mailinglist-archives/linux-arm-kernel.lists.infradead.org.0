Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD79F1A9D73
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BH5UT0JVnT0VaBQAhHfLk2qkIcNkBjPcdJPZjDSKG1E=; b=qkL7tiOB0QbrtQ
	XP/nI6sgbnBi9+wUQm6LBk2sZA5RC3ISX5G1T4QRncjeU1RMChRx8/f9hflj8y/3IV/Rl3iW6IdyU
	LycbsPulrYKT3W3x4Tn54eNliCsC6rj5v6ySyZcZGa++JY0T1l12Z4v4qr6YSaqtAU1zlE3WxG5mZ
	JVJp2QNhGafh9o3neKO6tan/17yU20KsDO8RLCQ0Is3o8gwzHAUR/zadT+Z+HgMnbEnK9RIVjEaM1
	Cf2p8jhJuy9bdz/nH6wWSB1EbwGvvmAs2RDYwwCdb7VAhkDhxNZraTiWbviI/HVQmy5LK6/7oLQPL
	4fkGgWTSdGq/uIMMlBFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgUu-0004pM-2o; Wed, 15 Apr 2020 11:46:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgRf-0008HE-TU
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 11:43:09 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 75D7C21556;
 Wed, 15 Apr 2020 11:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586950987;
 bh=R/EkibC1xiHR1BW+LamJK6V0IuMDFME4qS/zquvUOgI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dc56ykWuZYi9FBU7JUGXcYo3T/4OBj+2GkXjh25aG08SPzv6o4RV9p3D2GbNc154r
 sfm3SDMVo7h2mcvNH1a8wpQjTHzqRdXVbzDmZgzx6cYxMN3q0Gw1kEpsstMMMJJ4oT
 c6poLNEgYRl9e3469rwUdu8+71uI66ba1fDoaMDU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 034/106] phy: uniphier-usb3ss: Add Pro5 support
Date: Wed, 15 Apr 2020 07:41:14 -0400
Message-Id: <20200415114226.13103-34-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415114226.13103-1-sashal@kernel.org>
References: <20200415114226.13103-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_044308_077557_71C721EF 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Sasha Levin <sashal@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Kishon Vijay Abraham I <kishon@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>

[ Upstream commit 9376fa634afc207a3ce99e0957e04948c34d6510 ]

Pro5 SoC has same scheme of USB3 ss-phy as Pro4, so the data for Pro5 is
equivalent to Pro4.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/phy/socionext/phy-uniphier-usb3ss.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/socionext/phy-uniphier-usb3ss.c b/drivers/phy/socionext/phy-uniphier-usb3ss.c
index ec231e40ef2ac..a7577e316baf5 100644
--- a/drivers/phy/socionext/phy-uniphier-usb3ss.c
+++ b/drivers/phy/socionext/phy-uniphier-usb3ss.c
@@ -314,6 +314,10 @@ static const struct of_device_id uniphier_u3ssphy_match[] = {
 		.compatible = "socionext,uniphier-pro4-usb3-ssphy",
 		.data = &uniphier_pro4_data,
 	},
+	{
+		.compatible = "socionext,uniphier-pro5-usb3-ssphy",
+		.data = &uniphier_pro4_data,
+	},
 	{
 		.compatible = "socionext,uniphier-pxs2-usb3-ssphy",
 		.data = &uniphier_pxs2_data,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
