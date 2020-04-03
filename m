Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E036419D216
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 10:23:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q+uojrqmxr9QL8fxIWDDSva7ISZk6GubokCBwviR8BI=; b=L6ST+0oycflHDp
	Imbc3iP1V98+yWMRmOrzebtH1cZBZCeN0BEhcV2J5JFgKu4V0W5QiN03P0Vr+l4JZ03kUWpYJhIWD
	SHlH0SsfyAk4kzpYiEKxETFHPTNYBJtTV3DAltsXyEi/0j8M8WiI4r3rHM1UHENylc9EXqw6NpA+z
	92vSfvTh0fjtstzvTg41uomcQraie1yqqWgBxbw3HMSXJU8n4AaIMJh2/yn2h3zf6tAN8vwHGxxM1
	A8DTvLVJZrUIpFX+yNmtcT8nHcivWnQghewFmyfl3Cn6sOFRIIyVNH/2ucDHw3bOJomNrV506+h+s
	X7WLHHSGwMhHJs7DaSQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKHcA-0000HX-2A; Fri, 03 Apr 2020 08:23:46 +0000
Received: from cmccmta1.chinamobile.com ([221.176.66.79])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKHc2-0000Gt-CL
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 08:23:41 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.19]) by
 rmmx-syy-dmz-app03-12003 (RichMail) with SMTP id 2ee35e86f25ebb9-72d1b;
 Fri, 03 Apr 2020 16:22:55 +0800 (CST)
X-RM-TRANSID: 2ee35e86f25ebb9-72d1b
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[112.25.154.146])
 by rmsmtp-syy-appsvr10-12010 (RichMail) with SMTP id 2eea5e86f25cd60-3dabc;
 Fri, 03 Apr 2020 16:22:55 +0800 (CST)
X-RM-TRANSID: 2eea5e86f25cd60-3dabc
From: Tang Bin <tangbin@cmss.chinamobile.com>
To: jun.nie@linaro.org,
	shawnguo@kernel.org,
	linux@armlinux.org.uk
Subject: [PATCH v2]ARM:zx:Delete duplicate dev_err message in
 zx296702_pd_probe()
Date: Fri,  3 Apr 2020 16:24:23 +0800
Message-Id: <20200403082423.8800-1-tangbin@cmss.chinamobile.com>
X-Mailer: git-send-email 2.20.1.windows.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_012338_916174_CD6C6983 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [221.176.66.79 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tang Bin <tangbin@cmss.chinamobile.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, narmstrong@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In this place,devm_ioremap_resource() has already contains error
message, so delete the duplicate dev_err message.

Changes from v1:
 - the title has changed, because the description is not very detailed
   and the formate is wrong. So I find an other wording more appropriate.

As suggested by Markus Elfring:
   This is another attempt for the previous update suggestion, v1 can be
   found here: https://lore.kernel.org/patchwork/patch/1203764/

Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
---
 arch/arm/mach-zx/zx296702-pm-domain.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/mach-zx/zx296702-pm-domain.c b/arch/arm/mach-zx/zx296702-pm-domain.c
index 7a08bf9dd..ac44ea8e6 100644
--- a/arch/arm/mach-zx/zx296702-pm-domain.c
+++ b/arch/arm/mach-zx/zx296702-pm-domain.c
@@ -169,10 +169,8 @@ static int zx296702_pd_probe(struct platform_device *pdev)
 	}
 
 	pcubase = devm_ioremap_resource(&pdev->dev, res);
-	if (IS_ERR(pcubase)) {
-		dev_err(&pdev->dev, "ioremap fail.\n");
+	if (IS_ERR(pcubase))
 		return -EIO;
-	}
 
 	for (i = 0; i < ARRAY_SIZE(zx296702_pm_domains); ++i)
 		pm_genpd_init(zx296702_pm_domains[i], NULL, false);
-- 
2.20.1.windows.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
