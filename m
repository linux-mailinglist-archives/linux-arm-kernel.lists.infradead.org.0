Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 067D71FDCE2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gU/5UwlpQuM1gr6Kkn8D+haZtaqGatWAjUgfIzTvQMA=; b=aNLHW8SfwIbtYt
	8s1b/99Feq9JglFWNAyjPF/aeqPt/ptl6JJMfZbpyZ9YGRjKqB/iTCJpigXqEX1LP7LvllEtXsEeu
	78tvdqFsWJ2s07u9hBasGsUYVP7n2O6xPxI6kpE0o8Xwj9E/3obVJdCd+5/gfoe6yTXRq1uOYcSbY
	iQteio2APveGtc6pPVPIe4MfEnAopk7gtHRlVe05eYBF2tuDXWqgeVI5JDcS+bxZ9Ka3kuFk8Pdc/
	Vk/wj/scE/Q434y3q9ZG7rwNFiyZpLkxMzQ0V0JTVOCEAFBPGddYOtcm1CedO15+AWqFer2nIHxG5
	4LOds7wUtvjFpo9xnUog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljHJ-0006lG-9d; Thu, 18 Jun 2020 01:23:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj6N-0001yE-QM; Thu, 18 Jun 2020 01:12:26 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EC1B920B1F;
 Thu, 18 Jun 2020 01:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442742;
 bh=Bxm1IXhPhmJlEOsXKfUJfwDjGaZpX7kqDL/sa5kdcJM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QM6/A3ekay6DP8zupekGvHNh3WUzesZF9Q94UREzKi4kZLnNzyWwRL6iX7ZUlu87I
 bTfDyNATio8is97xEY2AB/g5sUpw5xwmTMz0U8TcIbYTKG6BPJuytd2Na0sgZ/Xm9a
 5hu5j6P5H86qKA0xlHM8gOf7O0C/uRPcBUl+nmsk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 196/388] pinctrl: rockchip: fix memleak in
 rockchip_dt_node_to_map
Date: Wed, 17 Jun 2020 21:04:53 -0400
Message-Id: <20200618010805.600873-196-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181223_975459_E94A34CB 
X-CRM114-Status: GOOD (  12.33  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

[ Upstream commit d7faa8ffb6be57bf8233a4b5a636d76b83c51ce7 ]

In function rockchip_dt_node_to_map, a new_map variable is
allocated by:

new_map = devm_kcalloc(pctldev->dev, map_num, sizeof(*new_map),
		       GFP_KERNEL);

This uses devres and attaches new_map to the pinctrl driver.
This cause a leak since new_map is not released when the probed
driver is removed. Fix it by using kcalloc to allocate new_map
and free it in `rockchip_dt_free_map`

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Link: https://lore.kernel.org/r/20200506100903.15420-1-dafna.hirschfeld@collabora.com
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pinctrl/pinctrl-rockchip.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 098951346339..d7869b636889 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -508,8 +508,8 @@ static int rockchip_dt_node_to_map(struct pinctrl_dev *pctldev,
 	}
 
 	map_num += grp->npins;
-	new_map = devm_kcalloc(pctldev->dev, map_num, sizeof(*new_map),
-								GFP_KERNEL);
+
+	new_map = kcalloc(map_num, sizeof(*new_map), GFP_KERNEL);
 	if (!new_map)
 		return -ENOMEM;
 
@@ -519,7 +519,7 @@ static int rockchip_dt_node_to_map(struct pinctrl_dev *pctldev,
 	/* create mux map */
 	parent = of_get_parent(np);
 	if (!parent) {
-		devm_kfree(pctldev->dev, new_map);
+		kfree(new_map);
 		return -EINVAL;
 	}
 	new_map[0].type = PIN_MAP_TYPE_MUX_GROUP;
@@ -546,6 +546,7 @@ static int rockchip_dt_node_to_map(struct pinctrl_dev *pctldev,
 static void rockchip_dt_free_map(struct pinctrl_dev *pctldev,
 				    struct pinctrl_map *map, unsigned num_maps)
 {
+	kfree(map);
 }
 
 static const struct pinctrl_ops rockchip_pctrl_ops = {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
