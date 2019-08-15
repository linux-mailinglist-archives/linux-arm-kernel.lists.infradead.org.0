Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E35F8E4CC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 08:09:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sAzVpLMcqb5z3kGlg860dMICt5+uxAJEeYVMAOL3Fso=; b=LtiL0DLrS+OUpu
	xfRWM45lMvZIErOTsT1BgM2zokWI0dNiry93tIRU16hjeJ+L4J7mEy+hJusvENkF45isbsofNSgnC
	CfbbaW+XOUoJ8RH0WqZikbsX4hBe2O1D0oqM0djewWPWJuKPeG1FQeSYeai6S/DFeQyJ+gBw+NRSb
	FHPqWwNDWW1CiT+gbgpGEkkHlSDKOsp4/+20UwiLSYjkAAHYVdDV8bqNv9A/rtA3e8fxh3xpsij4V
	wz++aDwKK0Dg1oze2Hv/ndp0vG3ErPRQw5BXV0ILKKxo4nLBKcY3f+juakykZagFv7kAfbbOVdSVf
	sQ7P1CVUJ+CLDcFNXgeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy8xC-0007gL-AD; Thu, 15 Aug 2019 06:09:42 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy8wz-0007fw-Jy
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 06:09:30 +0000
Received: by mail-pf1-x443.google.com with SMTP id o70so857423pfg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 23:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VonLxeXzm4d5qgoc9ChWSBtiaAORF6M5FiOxTHR0FaY=;
 b=J2iP5iutURjJjQKpPhMsqotyTVgy4kaEFsVG9SvobCSwa9cvGquNPu+HKjcvHSBB40
 p2fTpi2c3dGpZePogrVcYQ0OKFRhZI1sKd4MR7oYXud8K3I5DNus262O6idvIv+NJHg2
 hHjccjcf3+UW89L/iN0R4T1oDOm1A4sJwaDRkbkfoertZ8smI/P0fO4pEopyRNSfdV5r
 tJNE0lvLNUbtIMeZCihZ7iFWaZA/NgOZdtg2V+CGIGsK9WxDtWMfCV48NV4dEUGXtzgt
 8oEm4ucMguBG0OdPAq4Hi8CF7opkW8lGwZZN7oS87Z/rcb5ZQWe2Afj2M37inNHrkDb+
 lhSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VonLxeXzm4d5qgoc9ChWSBtiaAORF6M5FiOxTHR0FaY=;
 b=QY+gkbymVwuWRjqJ8zKMRzq6SsSbLxZCRAO263fhGAvSU+bBEGbDYCg0pqVm7s00HA
 sqGAozfXfhKMAHkk4+YfSt/0FVtYmIQ+Qv+IkWn+wG1nqby6wZv6VJgGr6iDVZjPclo/
 tTAP+YI0yOTvNRnRQejYXSP9rXsryaqi90GFf54rpGGIl7IYo1znxFHRyl/sXXDV0k38
 RUqYBHSvqkQRxuUHjwNjnI8cyc4mbc/Mo2d+1vq8VW4ImIgsP3djNvLzR/WjjH1RMFz9
 qBCb59xGQd+hL3p0/b3yiuxw/DuW5dOa112bXW/fBj4p65qOuqrUAEN8/W8j3KgSwdOP
 SYcg==
X-Gm-Message-State: APjAAAWWKgLdNxWM8NrfhE+l0Uym5GxyifSZtucDkkQCbRlk/kG+uafR
 xaSC9xYsY/ExUKYZEvL3goE=
X-Google-Smtp-Source: APXvYqxUhefp2R8HfrMdPrwR2ARx5U4c5Cb1brTLU/ukqF6cLxx2E3cxlLle/qkuYMoOqkdd+FV0Sw==
X-Received: by 2002:a17:90a:1b0d:: with SMTP id
 q13mr831549pjq.102.1565849367548; 
 Wed, 14 Aug 2019 23:09:27 -0700 (PDT)
Received: from localhost.localdomain ([110.225.3.176])
 by smtp.gmail.com with ESMTPSA id ce20sm728846pjb.16.2019.08.14.23.09.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 23:09:27 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: tomasz.figa@gmail.com, krzk@kernel.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org
Subject: [PATCH] pinctrl: samsung: samsung: Add of_node_put() before return
Date: Thu, 15 Aug 2019 11:39:14 +0530
Message-Id: <20190815060914.3572-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_230929_660652_17F00F5F 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Each iteration of for_each_child_of_node puts the previous node, but in
the case of a return from the middle of the loop, there is no put, thus
causing a memory leak. Hence add an of_node_put before the return in
three places.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/pinctrl/samsung/pinctrl-samsung.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/samsung/pinctrl-samsung.c b/drivers/pinctrl/samsung/pinctrl-samsung.c
index de0477bb469d..b24ac8f61ccd 100644
--- a/drivers/pinctrl/samsung/pinctrl-samsung.c
+++ b/drivers/pinctrl/samsung/pinctrl-samsung.c
@@ -272,6 +272,7 @@ static int samsung_dt_node_to_map(struct pinctrl_dev *pctldev,
 						&reserved_maps, num_maps);
 		if (ret < 0) {
 			samsung_dt_free_map(pctldev, *map, *num_maps);
+			of_node_put(np);
 			return ret;
 		}
 	}
@@ -785,8 +786,10 @@ static struct samsung_pmx_func *samsung_pinctrl_create_functions(
 		if (!of_get_child_count(cfg_np)) {
 			ret = samsung_pinctrl_create_function(dev, drvdata,
 							cfg_np, func);
-			if (ret < 0)
+			if (ret < 0) {
+				of_node_put(cfg_np);
 				return ERR_PTR(ret);
+			}
 			if (ret > 0) {
 				++func;
 				++func_cnt;
@@ -797,8 +800,10 @@ static struct samsung_pmx_func *samsung_pinctrl_create_functions(
 		for_each_child_of_node(cfg_np, func_np) {
 			ret = samsung_pinctrl_create_function(dev, drvdata,
 						func_np, func);
-			if (ret < 0)
+			if (ret < 0) {
+				of_node_put(func_np);
 				return ERR_PTR(ret);
+			}
 			if (ret > 0) {
 				++func;
 				++func_cnt;
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
