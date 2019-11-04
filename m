Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB40EDC21
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 11:09:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FhAgOe44t01pPdFB16JPn6k8JA2Ge+24LA5KPVcCbcs=; b=uO45tTw3n5V19e
	PGoIPgg0W7zL6ICZ/YF0xbF/Cc5WmvCzCP9tXwFX6lGeLsiI9SS9dMLm8d+IIJxXbbiE7em5/ymtM
	Nj2BLgZiHZptjDEeFV721VxTXr9izgH/ZDw3bHe88UcsLKl3SIJAR50iO2SQjA2FOruPyrbBDnPrl
	T3boRalR1rOLw6V5i4DiAL/gHdNn7EC9yYELTysjiX8SJtGXtQvRHk21HComPeq6IpEFvQ+tROWbu
	F7e3+P6XsE7b0hc1swCV/ivpPmhdXWdV9sIVLEMA/1rlGXQ83MZBcLNe9+FhR9X8NjPuaWgoN+AwI
	O91ZMf+s6KcP2YUiF8kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRZIZ-0001jf-AG; Mon, 04 Nov 2019 10:09:23 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRZIR-0001iS-Ns
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 10:09:17 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA49v3Rs000518; Mon, 4 Nov 2019 11:09:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=U9KCydVK6sJdJRHNSjl7mEURKAb4YJru4EdsVNMkITQ=;
 b=dOYmOnFANYCPUzeQaGiW+FvY8wehFx+hNgUF+fUTevgw9/BnWaZL8tOJD7gr1UtjVPqA
 Bh9kp/YVV9AKIZpRLpv/nZ2EWTsYuwMGeRwZz2kgFUGBJ27G7bpJfwjE+DtO9ID7SoLl
 5t6VPD7wHC4oWVvW3QBfpipTDgKiiqWAv1J1VelefuUczOLVmx+Xued0h30O06P7mokI
 DMgN4sNPoQ26GRNUxh5eB1NKHuHm3yT2RO2PNIQAy9B98qAW24TSqp0qdlBtkxnLMJKj
 kvyM7Un/rysfr/BQ7tRzFh0vnQGnAtLbcmtt4w4PTG/zWgJwac4G9HWMYqvaty8HxZH9 aA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w11jn12g1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 04 Nov 2019 11:09:10 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D547010002A;
 Mon,  4 Nov 2019 11:09:09 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C65EA2BB05D;
 Mon,  4 Nov 2019 11:09:09 +0100 (CET)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 4 Nov 2019
 11:09:09 +0100
Received: from localhost (10.201.22.141) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 4 Nov 2019 11:09:09
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Linus Walleij <linus.walleij@linaro.org>, Alexandre Torgue
 <alexandre.torgue@st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH 1/1] pinctrl: stmfx: fix valid_mask init sequence
Date: Mon, 4 Nov 2019 11:09:08 +0100
Message-ID: <20191104100908.10880-1-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.201.22.141]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-11-04_06:2019-11-01,2019-11-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_020916_145443_173D8968 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-gpio@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With stmfx_pinctrl_gpio_init_valid_mask callback, gpio_valid_mask was used
to initialize gpiochip valid_mask for gpiolib. But gpio_valid_mask was not
yet initialized. gpio_valid_mask required gpio-ranges to be registered,
this is the case after gpiochip_add_data call. But init_valid_mask
callback is also called under gpiochip_add_data. gpio_valid_mask
initialization cannot be moved before gpiochip_add_data because
gpio-ranges are not registered.
So, it is not possible to use init_valid_mask callback.
To avoid this issue, get rid of valid_mask and rely on ranges.

Fixes: da9b142ab2c5 ("pinctrl: stmfx: Use the callback to populate valid_mask")
Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 drivers/pinctrl/pinctrl-stmfx.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-stmfx.c b/drivers/pinctrl/pinctrl-stmfx.c
index 564660028fcc..ccdf0bb21414 100644
--- a/drivers/pinctrl/pinctrl-stmfx.c
+++ b/drivers/pinctrl/pinctrl-stmfx.c
@@ -585,19 +585,6 @@ static int stmfx_pinctrl_gpio_function_enable(struct stmfx_pinctrl *pctl)
 	return stmfx_function_enable(pctl->stmfx, func);
 }
 
-static int stmfx_pinctrl_gpio_init_valid_mask(struct gpio_chip *gc,
-					      unsigned long *valid_mask,
-					      unsigned int ngpios)
-{
-	struct stmfx_pinctrl *pctl = gpiochip_get_data(gc);
-	u32 n;
-
-	for_each_clear_bit(n, &pctl->gpio_valid_mask, ngpios)
-		clear_bit(n, valid_mask);
-
-	return 0;
-}
-
 static int stmfx_pinctrl_probe(struct platform_device *pdev)
 {
 	struct stmfx *stmfx = dev_get_drvdata(pdev->dev.parent);
@@ -660,7 +647,6 @@ static int stmfx_pinctrl_probe(struct platform_device *pdev)
 	pctl->gpio_chip.ngpio = pctl->pctl_desc.npins;
 	pctl->gpio_chip.can_sleep = true;
 	pctl->gpio_chip.of_node = np;
-	pctl->gpio_chip.init_valid_mask = stmfx_pinctrl_gpio_init_valid_mask;
 
 	ret = devm_gpiochip_add_data(pctl->dev, &pctl->gpio_chip, pctl);
 	if (ret) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
