Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4465D22D68
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 09:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a1iEbT6V6aZ8a1vFTnmneOk1H8y93myT/9y8fa+cssI=; b=Ruz8ZDmftG9wb8
	BcUAvvILTxc+dr3QmGuXxeUKZcAqehzQCJHetIBMZuIdBoFMYuwJImT0XVxuoXSdEHVJIymx/5s4R
	9kkLS5oNUhhh9n/NfSZCs6zNmI6ykAt4d1QH/c1uUVXdgNI7yKGz1P5sOjeE1dR8yhH898OyumpiY
	SlTQZXC1kpUVB2jZTxaXiJgfPYpucfUFdCM6rHBWsa2hsakgj94DP+316kXo+bQfl4IvJTbL2XMSL
	K4jZ+LSRmQ3eYUxD1r3oyZ6jFoUM09QpdZjNBodNf7ETbWbifLLW7V+5UDQPn5YzPMNbnT5VaHYln
	LtafrLRB19uR4blniTTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSd62-000273-HT; Mon, 20 May 2019 07:52:34 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSd5v-00025q-C4
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 07:52:29 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4K7owVV024214; Mon, 20 May 2019 09:52:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=AmLaTPn+4Y+PnO2cSAi1LC9tZLLiMimnsWha5pKlny8=;
 b=zyzJqh5vP+aveI2mQhAv7Ag2QoFpavLrSaMApQZSN9cAxXZdhg6aeig49lB0g5BR8zOn
 Rm6/+8XRMIhwB7oiEOgQeEqoW6mqADkW3HlYZVqyfaeMt4tnfH4p3FkTJhGJzGgKXRGQ
 BXsjLEUtYHWxWiqnbrTNwB401MyI2ttSeqy+tXXbOyuHKagD6qf2gjEZIb8Dz64jpY43
 01QEPQ5yVxVANbsIOqBHkCUmTn9T4DUL7XvCBXwZufXbSG2sbnMOBw/CbSpXWvgWwrsb
 I5MKAZ/vEsav5KYikZQlq1IAJvfDbvkw3j5wahF59uPByqIkQiGKTJ3/T8r2SFB52+TQ Ow== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sj7ttt4nb-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 20 May 2019 09:52:18 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7A11E3A;
 Mon, 20 May 2019 07:52:16 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 40E3C1557;
 Mon, 20 May 2019 07:52:16 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 20 May
 2019 09:52:16 +0200
Received: from localhost (10.201.20.5) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Mon, 20 May 2019 09:52:15 +0200
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Lee Jones <lee.jones@linaro.org>, Linus Walleij <linus.walleij@linaro.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH] pinctrl: stmfx: Fix compile issue when CONFIG_OF_GPIO is not
 defined
Date: Mon, 20 May 2019 09:52:15 +0200
Message-ID: <1558338735-8444-1-git-send-email-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.20.5]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-20_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_005227_856671_B5E0BCD8 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Amelie Delaunay <amelie.delaunay@st.com>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, kbuild-all@01.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When CONFIG_GPIO_OF is not defined, struct gpio_chip 'of_node' member does
not exist:
drivers/pinctrl/pinctrl-stmfx.c: In function 'stmfx_pinctrl_probe':
drivers/pinctrl/pinctrl-stmfx.c:652:17: error: 'struct gpio_chip' has no member named 'of_node'
     pctl->gpio_chip.of_node = np;

Fixes: 1490d9f841b1 ("pinctrl: Add STMFX GPIO expander Pinctrl/GPIO driver")
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 drivers/pinctrl/pinctrl-stmfx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-stmfx.c b/drivers/pinctrl/pinctrl-stmfx.c
index eba872c..bb64aa0 100644
--- a/drivers/pinctrl/pinctrl-stmfx.c
+++ b/drivers/pinctrl/pinctrl-stmfx.c
@@ -648,7 +648,9 @@ static int stmfx_pinctrl_probe(struct platform_device *pdev)
 	pctl->gpio_chip.base = -1;
 	pctl->gpio_chip.ngpio = pctl->pctl_desc.npins;
 	pctl->gpio_chip.can_sleep = true;
+#ifdef CONFIG_OF_GPIO
 	pctl->gpio_chip.of_node = np;
+#endif
 	pctl->gpio_chip.need_valid_mask = true;
 
 	ret = devm_gpiochip_add_data(pctl->dev, &pctl->gpio_chip, pctl);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
