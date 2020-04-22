Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 428AA1B38E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 09:26:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7Pyul9DSmbBIOgY6C29dpYydad4TbJdXSCSbphcEKks=; b=b7loUngICGasST
	ILxurjK6fDIozJP81Gw5BQUzHiGAoN8mA8uVxCprH/mQkXV0KrNVdD8atiu9/frtvAZkhAzN5SMeT
	OSEJ877Elj09B4y3P9TiQbmg0N8gRWf6TVdAtZ+bUiP8KTt2ZJs9DOuPoN4HdXZaCuiF4RUWLN8tY
	R7xKzeCHrFvitxHlh277uLZgUEq0sh9dFt5rryuzPnxlaE05obaEzzOMODXyMG5cBPKFCZMHbwZzh
	MWOmPy1Oiw+a50ElDZto2M98GHSppVZCEK4NqaOgQ0R2UdZgOoRca25V1zv5nm/L83M5kr0H/oKD9
	qZ/FWm3HhKrbV3RhrL4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR9mH-0008FG-HN; Wed, 22 Apr 2020 07:26:37 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR9m7-0008CP-3n
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 07:26:28 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03M7N7HW011031; Wed, 22 Apr 2020 09:26:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=1+5xkmnA8W6QptUcwhFWn9YtwM/YXjxNNMsTAJBIfEM=;
 b=Bd5qUb++FiFVOunvFEwhZc7zisQoWSXHZ6R/WOpl7qH+66fZ1EtKjrUGduXhQsbOXe/u
 otpekOh2JcN9F5zhBmsEJRvxzHM78P/tMpHqAiBvvz5LBeLUO8SgsXyO6sCAtumsJ73q
 WB01MOuGPOX/uSizQZOyDt1sLSGyrwf+umgo+qPQyXgTHu7JG9Kl63GMVcOgtTwioMJT
 I+Dq7BbUS7NgoNSnsLR1WBxEpUiU9MHcmAob9f7pYOQw13pgqbPFZ9fjzdJ7GqxCRih/
 dzTv8JQESHLxSLkot/M96O1SJUBXM+gKjKOpDuiZrh5JB9QZUAEoI5sq2EEuan8M5rTe 8w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fqawcp9t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Apr 2020 09:26:20 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0E61F10002A;
 Wed, 22 Apr 2020 09:26:20 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id F192F212A5F;
 Wed, 22 Apr 2020 09:26:19 +0200 (CEST)
Received: from localhost (10.75.127.44) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 22 Apr 2020 09:25:14
 +0200
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Linus Walleij <linus.walleij@linaro.org>, Alexandre Torgue
 <alexandre.torgue@st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH 1/1] pinctrl: stmfx: stmfx_pinconf_set doesn't require to get
 direction anymore
Date: Wed, 22 Apr 2020 09:25:13 +0200
Message-ID: <20200422072513.8352-1-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-22_02:2020-04-21,
 2020-04-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_002627_513508_53BDD179 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-gpio@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pin direction is not used to set pin configuration.

Fixes: a502b343ebd0 ("pinctrl: stmfx: update pinconf settings")
Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 drivers/pinctrl/pinctrl-stmfx.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-stmfx.c b/drivers/pinctrl/pinctrl-stmfx.c
index 60100b45f5e5..1aae803c12cd 100644
--- a/drivers/pinctrl/pinctrl-stmfx.c
+++ b/drivers/pinctrl/pinctrl-stmfx.c
@@ -288,7 +288,7 @@ static int stmfx_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
 	struct pinctrl_gpio_range *range;
 	enum pin_config_param param;
 	u32 arg;
-	int dir, i, ret;
+	int i, ret;
 
 	range = pinctrl_find_gpio_range_from_pin_nolock(pctldev, pin);
 	if (!range) {
@@ -296,10 +296,6 @@ static int stmfx_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
 		return -EINVAL;
 	}
 
-	dir = stmfx_gpio_get_direction(&pctl->gpio_chip, pin);
-	if (dir < 0)
-		return dir;
-
 	for (i = 0; i < num_configs; i++) {
 		param = pinconf_to_config_param(configs[i]);
 		arg = pinconf_to_config_argument(configs[i]);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
