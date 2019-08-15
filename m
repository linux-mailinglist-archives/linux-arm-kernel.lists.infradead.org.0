Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BB08E4C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 08:06:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fc+gFdUDNnPbw+uvyrFleK5KlHAerFJjFklGc5Ub8e8=; b=moT1SWdQBtri1s
	xfbgcgVjGTdDbEK2gW3VacK6Xh482sM1iHDIZSKKjqUq4GVUCp67pN5o2SCvbeWpZnTnqWVRPBPTP
	xr0N8x9lO5PuCXFcu5v8AUfCJGnjxuIUNoEgNi5H4JkoaqLuG7yzUs836pL2EBEK8wleDVFIqby3X
	gvM6sJninpbHQbCZZ4O98ZBgkRyqxfajh0+n1+9xhgcCMw4akdpC3ZDuhpMaKk1KBEYIYDgz7I1f5
	WMY+Q7OWle1FIu0zLOUGAC9gle2cXTSyHf1lZZXCg5wJRINOeJXaOiDPfQwXYjhtsyHyUv3M53glY
	YY9VnUxsavvEMUELnrHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy8uI-00076H-Vt; Thu, 15 Aug 2019 06:06:43 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy8u0-00074c-VV
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 06:06:26 +0000
Received: by mail-pg1-x544.google.com with SMTP id x15so865157pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 23:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IWP/C/XpjQhJDAx2QHm1UDwbKPSNG33jAiOfZIHArMw=;
 b=ta+mnThUrSgw4PJu9B1bI/erSr+RFYpPGO/FcdAk2Y1C87+F1jr+hjOb37wXGBB5I4
 QG2PirON/lA1Fi1LUXZFmmzgJZftvnEkWDWyv6SsuI9m53Lt8PY268xzIZ0uQD1Q/Okf
 Y14nXreXD1kJQ3ICkN4HmTPIYCbiwEA0OnaUN9etLN9HMaHrTQ/W5UNWOpOwNEdJc8vV
 Qo8Rn+d0cH1XngoVUCY33JcKNpGfSN9/A8MCJjJ82SrmftLMLjkFAzu8SV1dUvUVRj6V
 bPyX8f+e8YB3C4f8EThbKazbR4InCuGL6DHhYTdG6AfAuYaWLlOcGu20hn+PsH4eZyND
 Ro2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IWP/C/XpjQhJDAx2QHm1UDwbKPSNG33jAiOfZIHArMw=;
 b=er4DXtWiPf87bEd9Bevu4/x9iZBYO/P7QQaxErMmciPpj8hn9BHZSjFpKdid8/XLJQ
 RfvnSBX/97KYPHo8LlRB5f03fEfYGRqSGYaMzMpjJKWAa1+BRN2CuTaK41Uk7RsOMvD/
 ijHzVCV7D6EnF8Q1/lwuQCpIl8MVgNu6oiQ9Z9wkqddG0YcBvlv0MP4jV8EyEjt/gFgN
 yQ9kwgS6Sf9duRWVtpQGl26nHZUo9oY/4wD9IbVKZ+MPo8PMywkLGMcIHqMEGBHbgHks
 R5wnPGIMhrv+Glu+MXCCAQXOTeRciPPtKiWoJp/JFd/3dLQRpSnXSvvJ5Ab2j8/BfTmr
 sjCA==
X-Gm-Message-State: APjAAAWC03Nd+g3ORhpak6zIW1sVhxOT3Y5UPztjmaHqgIoGlrJbpGpE
 6K+7QbUyQlKv+ctah8OAfoc=
X-Google-Smtp-Source: APXvYqxTYYMswK13ErwYCDDOlLX/KNuxx4uj1nuebSYRyIorlOmqQpwOmMfKl+Go7/pr6OEwiqq+FQ==
X-Received: by 2002:a17:90a:3aaf:: with SMTP id
 b44mr808587pjc.87.1565849184305; 
 Wed, 14 Aug 2019 23:06:24 -0700 (PDT)
Received: from localhost.localdomain ([110.225.3.176])
 by smtp.gmail.com with ESMTPSA id i9sm411521pjj.2.2019.08.14.23.06.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 23:06:23 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: patrice.chotard@st.com, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org
Subject: [PATCH] pinctrl: st: Add of_node_put() before return
Date: Thu, 15 Aug 2019 11:36:09 +0530
Message-Id: <20190815060609.3056-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_230625_149714_3D6FC2E3 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
 drivers/pinctrl/pinctrl-st.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-st.c b/drivers/pinctrl/pinctrl-st.c
index b9688ea548da..e788c7495ec7 100644
--- a/drivers/pinctrl/pinctrl-st.c
+++ b/drivers/pinctrl/pinctrl-st.c
@@ -1262,8 +1262,10 @@ static int st_pctl_parse_functions(struct device_node *np,
 		grp = &info->groups[*grp_index];
 		*grp_index += 1;
 		ret = st_pctl_dt_parse_groups(child, grp, info, i++);
-		if (ret)
+		if (ret) {
+			of_node_put(child);
 			return ret;
+		}
 	}
 	dev_info(info->dev, "Function[%d\t name:%s,\tgroups:%d]\n",
 				index, func->name, func->ngroups);
@@ -1623,8 +1625,10 @@ static int st_pctl_probe_dt(struct platform_device *pdev,
 		if (of_property_read_bool(child, "gpio-controller")) {
 			const char *bank_name = NULL;
 			ret = st_gpiolib_register_bank(info, bank, child);
-			if (ret)
+			if (ret) {
+				of_node_put(child);
 				return ret;
+			}
 
 			k = info->banks[bank].range.pin_base;
 			bank_name = info->banks[bank].range.name;
@@ -1641,6 +1645,7 @@ static int st_pctl_probe_dt(struct platform_device *pdev,
 							i++, &grp_index);
 			if (ret) {
 				dev_err(&pdev->dev, "No functions found.\n");
+				of_node_put(child);
 				return ret;
 			}
 		}
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
