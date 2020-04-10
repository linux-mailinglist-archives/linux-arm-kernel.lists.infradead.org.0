Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AACEB1A3F3D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 05:53:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bec3H4tye5gY5IGuOGsuN1pFygz4miZNn/Z4uyW1f9U=; b=jyxld5ZrKWBGMx
	UqCoMGpdVz+bTaYgHGwdrx7FO72PMa0DI+hYVrJaC/7i6yRnW733zxx0skG+pFWUIWvKq8wxMQLIi
	00E9qOTRxQ7lZafxD76dX4MSDglYwEEhvnU6H4LC9RPeUjt3VZKsP2GYmnEiCfkoWRfbd/knr3cG6
	gnw7Xc4A4ccGqMbhrg4+JWn0rweAtz6pi9prh6d7Qp8vAnTs91YyCil+5es57cwHgVQIeQKQH3YLC
	NGpnXXWNl3y/Rsn+l+2JR1gtcrEk9yTTRpFykcE9HD0FjthWVHd0O7vfgZSrch26SUJRyy6Q3bt9R
	RswJF7ZrpC/ciOD2txlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMkix-0002At-IK; Fri, 10 Apr 2020 03:52:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMkfI-0004aL-AU
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 03:49:14 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0141D20B1F;
 Fri, 10 Apr 2020 03:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586490551;
 bh=AL4Duf7m5IvoTTD4d2+gCaDhn7bLAW1D0iwX6syCWJw=;
 h=From:To:Cc:Subject:Date:From;
 b=C11nvElXj5YSGfwhWLxC+DA+wtIbf7/gWujF+wP/I7l5h+2RzK+B78BedyNiidszA
 mh92NaDbPEuHJ1bnmI7IHMWxA9WbjKCOSp4M4v6VKTCj+oJA/L/vXx6rwLlQGk7xtn
 O/S25ntSI1FqVH9g0e0cNCDAVqziqpbcx4xmHPoY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 01/46] cpufreq: imx6q: Fixes unwanted cpu
 overclocking on i.MX6ULL
Date: Thu,  9 Apr 2020 23:48:24 -0400
Message-Id: <20200410034909.8922-1-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_204912_433547_B2BBB315 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christoph Niedermaier <cniedermaier@dh-electronics.com>

[ Upstream commit 36eb7dc1bd42fe5f850329c893768ff89b696fba ]

imx6ul_opp_check_speed_grading is called for both i.MX6UL and i.MX6ULL.
Since the i.MX6ULL was introduced to a separate ocotp compatible node
later, it is possible that the i.MX6ULL has also dtbs with
"fsl,imx6ull-ocotp". On a system without nvmem-cell speed grade a
missing check on this node causes a driver fail without considering
the cpu speed grade.

This patch prevents unwanted cpu overclocking on i.MX6ULL with compatible
node "fsl,imx6ull-ocotp" in old dtbs without nvmem-cell speed grade.

Fixes: 2733fb0d0699 ("cpufreq: imx6q: read OCOTP through nvmem for imx6ul/imx6ull")
Signed-off-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/cpufreq/imx6q-cpufreq.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/cpufreq/imx6q-cpufreq.c b/drivers/cpufreq/imx6q-cpufreq.c
index 648a09a1778a3..1fcbbd53a48a2 100644
--- a/drivers/cpufreq/imx6q-cpufreq.c
+++ b/drivers/cpufreq/imx6q-cpufreq.c
@@ -280,6 +280,9 @@ static int imx6ul_opp_check_speed_grading(struct device *dev)
 		void __iomem *base;
 
 		np = of_find_compatible_node(NULL, NULL, "fsl,imx6ul-ocotp");
+		if (!np)
+			np = of_find_compatible_node(NULL, NULL,
+						     "fsl,imx6ull-ocotp");
 		if (!np)
 			return -ENOENT;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
