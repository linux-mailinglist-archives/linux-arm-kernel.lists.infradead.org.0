Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7098C888A1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 07:31:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gxTtaCVE0A18N53jY3hZcy+c0MZsnLXgXTtJqk+3uuc=; b=S+neb0U9tq1Q86eaciiRy09I6r
	Sh9He+sitA57qmC4w4zqHiNBP6zmAe1AAoy9FHVlYKeL4CheI1SAKUB2uFxDSUFYp9/8EuTxWBFQU
	2IJTIPUU7HVtphSTaMS4iUZg0OWf51rKwolbdecMfuMXet1s1OBikkAFscw5mFzVoibw13duXm3LN
	0ZMqnDei4RONtdbjK0iYkrxuDTehPGAv9/eHMoXVFexqdnc9whWSitWMEFkboJ/qctEeYcDSYL9DW
	Gp+/9An/ILq2qhkcmgeRrQL9U+U4V3IUDDlHYyuEbX4dv3+CtNcas1RWO2V0rg3CsgNIpSPaJCmAc
	2vO0yvqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwJys-00043O-Tb; Sat, 10 Aug 2019 05:31:55 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwJwo-0001Au-Bv
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 05:29:47 +0000
Received: by mail-pg1-x541.google.com with SMTP id i18so46855979pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 22:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SZBPS8zX1lZ/DonV5C3komhokQ/V7ug4it4W/EoGy10=;
 b=Z1VAV24vg4CQO/RAn7VbwJQFpjru/ocEIBsBk0qmfgVAcVSZPT/FcVCmkdU9IlZ1Ka
 Oc/1YloYmzzKO0Db83AB6D5gnVGah40VCwhk3qBijk6A7R2FFZdcxyNCgJNjVgFjSQ89
 gS9dqvB8OILKpmhDVKj95toNNPOYSwf4tGM9xEg6ae5IO3c06X+1FQXXNjccX6LDIEfp
 GIp1nvLiSooojE5mPj406ljHLub9v1/y5aIPEYVf8JIgpacJPn06cLCj9AqNFapdofGP
 9qN97TZ6HHo2VHwCIvaiEQIpCE8+hvg+SrXi969f020vIZ+IFlMtD/cEBAMmi9hX9uei
 9g8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SZBPS8zX1lZ/DonV5C3komhokQ/V7ug4it4W/EoGy10=;
 b=gkJ9TM0skvwr1451lFkBgGnZ2JpiQhUO9G44cGsRZIJRu5jrFfI6MTkJtB4OSwp0ch
 Aexuc7R0EXZ5jvHd2g9iKVjqhM3OiWEf7wT458BGoVlzXcj7HRmtMI0fzI0FZlCiCEO3
 8/HsN9resxnuDeo2lzi/yUX031yXBszbPxYe0HWWtsZvSukGNWl76d2vZzxqWdPtrd47
 7FceR2JwdTelwowaIrKloovZr740uzRKNLfbegx4P5bLvjvlocmIUXRm9bgkHi/F7RND
 B84224C6C21dTURQ3nWA3IAHcdD4MinCIuF6omRcI8TesReCOLRwYn6Z3qGiea7FZ1Qh
 W2RA==
X-Gm-Message-State: APjAAAWQkuPJlQHrhedn+nMVL/X3x/giUHXYYs1fooG6i+xR6tR3+qxH
 uESRK4JUZB+p93Wo0CUb4/c=
X-Google-Smtp-Source: APXvYqxslAn91+Gj9uqWPdAgQd4zH50Cp4kKggNShpSaPtsQosYJo1BWGkVX8KozpR9h/90K+ktYjA==
X-Received: by 2002:a62:1d8f:: with SMTP id
 d137mr25970077pfd.207.1565414985703; 
 Fri, 09 Aug 2019 22:29:45 -0700 (PDT)
Received: from localhost ([202.182.106.211])
 by smtp.gmail.com with ESMTPSA id j20sm95375157pfr.113.2019.08.09.22.29.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 22:29:45 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, mchehab+samsung@kernel.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com
Subject: [PATCH v5 08/18] thermal: sun8i: support mod clocks
Date: Sat, 10 Aug 2019 05:28:19 +0000
Message-Id: <20190810052829.6032-9-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190810052829.6032-1-tiny.windzz@gmail.com>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_222946_508947_50FD540E 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

H3 has extra clock, so introduce something in ths_thermal_chip/ths_device
and adds the process of the clock.

This is pre-work for supprt it.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/thermal/sun8i_thermal.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index b934bc81eba7..6f4294c2aba7 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -54,6 +54,7 @@ struct tsensor {
 };
 
 struct ths_thermal_chip {
+	bool            has_mod_clk;
 	int		sensor_num;
 	int		offset;
 	int		scale;
@@ -69,6 +70,7 @@ struct ths_device {
 	struct regmap				*regmap;
 	struct reset_control			*reset;
 	struct clk				*bus_clk;
+	struct clk                              *mod_clk;
 	struct tsensor				sensor[MAX_SENSOR_NUM];
 };
 
@@ -274,6 +276,12 @@ static int sun8i_ths_resource_init(struct ths_device *tmdev)
 	if (IS_ERR(tmdev->bus_clk))
 		return PTR_ERR(tmdev->bus_clk);
 
+	if (tmdev->chip->has_mod_clk) {
+		tmdev->mod_clk = devm_clk_get(&pdev->dev, "mod");
+		if (IS_ERR(tmdev->mod_clk))
+			return PTR_ERR(tmdev->mod_clk);
+	}
+
 	ret = reset_control_deassert(tmdev->reset);
 	if (ret)
 		return ret;
@@ -282,12 +290,18 @@ static int sun8i_ths_resource_init(struct ths_device *tmdev)
 	if (ret)
 		goto assert_reset;
 
-	ret = sun50i_ths_calibrate(tmdev);
+	ret = clk_prepare_enable(tmdev->mod_clk);
 	if (ret)
 		goto bus_disable;
 
+	ret = sun50i_ths_calibrate(tmdev);
+	if (ret)
+		goto mod_disable;
+
 	return 0;
 
+mod_disable:
+	clk_disable_unprepare(tmdev->mod_clk);
 bus_disable:
 	clk_disable_unprepare(tmdev->bus_clk);
 assert_reset:
@@ -395,6 +409,7 @@ static int sun8i_ths_remove(struct platform_device *pdev)
 {
 	struct ths_device *tmdev = platform_get_drvdata(pdev);
 
+	clk_disable_unprepare(tmdev->mod_clk);
 	clk_disable_unprepare(tmdev->bus_clk);
 	reset_control_assert(tmdev->reset);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
