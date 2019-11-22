Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9931A1061AF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 06:59:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVnsDvqqQhFzZ4nayp4q1fbOL+F4c9lrkSpDzPlNpI0=; b=cYgVgWSzPiFnFV
	vYKw62mJH6KJHB3aH3I9vDK8yCK6ONu5I7HreTUmrjuS3j6UXacOvCjv0jVYdB75FBA2mvPy+qyj/
	BwY5g7dC39VnB1LehdQ7s3hsSKp6J+bDRjT/MOD2tng061ds2czGR0XdZqkJDkyRgpIzwKEi+P5GK
	fJHV2gdjfcBn1BqbgiXWrw/LjQkIVicW78xmC5wOnbO1GJrMqcUQJPetzwQZ9MR9+4qo417kM+XWW
	NKgg41hw8Dryi74WaNqOD+gRw1ZmYWRWFeoWguwyXxa5rabWvBpHTb/iwtzmPp+08rfvTFvvDA9p7
	Yr41r/Zyy26udbqb1KtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY1yI-0002mF-Lj; Fri, 22 Nov 2019 05:59:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1rf-0003h8-An
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 05:52:21 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 636A520717;
 Fri, 22 Nov 2019 05:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574401938;
 bh=SuHJO9KBBvsWwPusjwAJI4z2nSO4KEDYibgE4E+Y0e4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NDtzdJbY4BrMkC5TLNllgu+iAe1XBMCFDLfrlcwQmaoL+xEf3KcAtU/FhW2PrQDds
 T4l7CEvxy7ytSDiWMwqVp8OYbp45tg8lorVW16l5lm4oyhyAbL8U7Ayqzan9IclFd7
 NuqSJJ/HdrSVnrhUhFwv45xepaaFV5NU3shgwDAM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 163/219] firmware: arm_sdei: Fix DT platform
 device creation
Date: Fri, 22 Nov 2019 00:48:15 -0500
Message-Id: <20191122054911.1750-156-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122054911.1750-1-sashal@kernel.org>
References: <20191122054911.1750-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_215219_635834_D23B0BE2 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Will Deacon <will.deacon@arm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: James Morse <james.morse@arm.com>

[ Upstream commit acafce48b07bf5f9994a38e7fe237193d43d092e ]

It turns out the dt-probing part of this wasn't tested properly after it
was merged. commit 3aa0582fdb82 ("of: platform: populate /firmware/ node
from of_platform_default_populate_init()") changed the core-code to
generate the platform devices, meaning the driver's attempt fails, and it
bails out.

Fix this by removing the manual platform-device creation for DT systems,
core code has always done this for us.

CC: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: James Morse <james.morse@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/firmware/arm_sdei.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
index dffb47c6b4801..c64c7da738297 100644
--- a/drivers/firmware/arm_sdei.c
+++ b/drivers/firmware/arm_sdei.c
@@ -1009,7 +1009,6 @@ static struct platform_driver sdei_driver = {
 
 static bool __init sdei_present_dt(void)
 {
-	struct platform_device *pdev;
 	struct device_node *np, *fw_np;
 
 	fw_np = of_find_node_by_name(NULL, "firmware");
@@ -1019,11 +1018,7 @@ static bool __init sdei_present_dt(void)
 	np = of_find_matching_node(fw_np, sdei_of_match);
 	if (!np)
 		return false;
-
-	pdev = of_platform_device_create(np, sdei_driver.driver.name, NULL);
 	of_node_put(np);
-	if (!pdev)
-		return false;
 
 	return true;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
