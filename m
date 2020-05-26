Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A431E3007
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 22:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GfJN8WMBiYMedHlNfTuBEmdnHxl5rJr+3Mp11BNy88U=; b=oEmD8NwyLVBI9w
	1AZBcQyU/PqE722LZJUAbeJTerMfeEMC6PeluSbYzE9SBJ5ViaSOiOdSfsM4Ezqv7GNZC0qyamz/b
	/GLACuFQpG14N0DSdlt1Ds0QmWCHSj9bYk7wJi3bIHU07mR5oOx2Yn3TevrBVC4pSx+/IgLWssRdd
	2xF+kyTI/lhTblotZur/xQqDB8kOsT2jYu7+EOZK1ByvReF9f1Lg86H5qJ5lsU/hDP1HaLl7DNjLN
	VDv4Td5sFJrxxmdhgqrvOcUix5ukS/449GWn9UQZVojVA6CApISseLei891djznmw3SycJnJkpdNC
	3KNN+NO8C5TCgtvO1O1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdgE6-00086A-Dp; Tue, 26 May 2020 20:31:06 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdgDF-0006jO-Qs; Tue, 26 May 2020 20:30:15 +0000
Received: by mail-ed1-x541.google.com with SMTP id be9so18773001edb.2;
 Tue, 26 May 2020 13:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qJGAhXW9kaqHmdjOkBKCCdqPZdpTsmEr75Eb52L7QxM=;
 b=DvdWnLISXQXckcKGz5k9iHMnMLw7t+1Bf5ROTwcPt0G7qtxsWYK0OLFt/tU4vxx5HS
 p9EtwrWaJYBdUO6wX0O+ud7L5aW0BxMpMbjSSzaTcR42410tsoOJDstMiRFCexUxy7ub
 4sEe/Q5IELF9Hj3JKo85j6fTjE2mt+OINcfHZ7ALe+tA9B/K0rb7zr6tvZpj18bOe0VK
 bih/T7ZuWH3bpXLMP93jHxz/4p0S4r6KYn+iYt2V/QgkJrHgdLNqHkgYlbvMl7UBO6DW
 Uo3H+PhKLoc4hnnghNVyaGDunmyCoqxaFV+7xL9yD+zzN7TIBT/ErUdSC0OjLzed6nYp
 Le3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qJGAhXW9kaqHmdjOkBKCCdqPZdpTsmEr75Eb52L7QxM=;
 b=XLSI0lnmytTUCq8XDihhBahAoS+zACEq+DpuHvkfEWbPpp+V2FdcW3+t+2fWjzm3Cd
 S2SAZELZBSP3ryLwaaukH+XoRQ8VXqt+vyWLgxzNgNLTTxQwi+jnfOsHPjfrdOxdBoqX
 Cyy2A0aFgjPH/zgQKeYSr2pXaZjXZzCWkKdHxEGbAAe1+2/U1jbWFkbQZKdKJZIETD8P
 2ox2BPDwf0rs0dTsmmDauOMf9Ec24uOcvru4eECZPvsrehi588yCAQXOTJNKxq43tfWE
 3SEzrdZUqQpSlg7N65/DNqgYJSie3VZTHB555SX8R96FDWCoLLVOlboHr/RvXcamcV0W
 GOow==
X-Gm-Message-State: AOAM5308QYS+Rhd7lCO5eH93LNaBQ9evA+WHXhmh4iwA0+yqPbg81UWE
 ksh9QAx31JevHONzQ1TL18E=
X-Google-Smtp-Source: ABdhPJy0Ce3NFppUwfK2zdiMLWn+r3b9wC6i+sHOfqsQ0eHIH0E7/7C4q8MKdRlIaLKasDmDQnql+w==
X-Received: by 2002:a05:6402:8c1:: with SMTP id
 d1mr21864323edz.265.1590525008143; 
 Tue, 26 May 2020 13:30:08 -0700 (PDT)
Received: from localhost.localdomain
 (p200300f137189200428d5cfffeb99db8.dip0.t-ipconnect.de.
 [2003:f1:3718:9200:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id ce16sm735517ejb.76.2020.05.26.13.30.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 13:30:07 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: balbi@kernel.org, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-amlogic@lists.infradead.org, narmstrong@baylibre.com
Subject: [PATCH for-5.8 1/2] usb: dwc3: meson-g12a: fix error path when
 fetching the reset line fails
Date: Tue, 26 May 2020 22:29:42 +0200
Message-Id: <20200526202943.715220-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200526202943.715220-1-martin.blumenstingl@googlemail.com>
References: <20200526202943.715220-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_133013_867458_00A30878 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 hanjie.lin@amlogic.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, yue.wang@amlogic.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Disable and unprepare the clocks when devm_reset_control_get_shared()
fails. This fixes the error path as this must disable the clocks which
were previously enabled.

Fixes: 1e355f21d3fb96 ("usb: dwc3: Add Amlogic A1 DWC3 glue")
Cc: Yue Wang <yue.wang@amlogic.com>
Cc: Hanjie Lin <hanjie.lin@amlogic.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/usb/dwc3/dwc3-meson-g12a.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc3-meson-g12a.c
index bd744e82cad4..ce5388338389 100644
--- a/drivers/usb/dwc3/dwc3-meson-g12a.c
+++ b/drivers/usb/dwc3/dwc3-meson-g12a.c
@@ -738,7 +738,7 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
 	if (IS_ERR(priv->reset)) {
 		ret = PTR_ERR(priv->reset);
 		dev_err(dev, "failed to get device reset, err=%d\n", ret);
-		return ret;
+		goto err_disable_clks;
 	}
 
 	ret = reset_control_reset(priv->reset);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
