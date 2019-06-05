Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C996E35B95
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 13:44:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O7R4wgu6EMRXQW2Re/PU+DlNfBpxHnLDI44Gmq1v2Dw=; b=agV67Qpp5NR42c7uuFm9dQwlwV
	yi7HWs8KoaXDYpvhbujwYpAYMdOzBMGhr9wXF9L2e4Z1tvvCNAzib/ZE9n0czw51mniozH0oi5YUP
	WA2QMbasJJL0WfP113UluINkYR1iC6VZMYpj+abFs5bpxQIFAUU8Y4fpub4t31Zxun1Wo90RcNGeY
	6x41840an1zKnIClaePBpTfbl+oIcbTrt9RuhYwOxv/Su/9Std8++RbE4vob1SeSbPnv2LW9bWeHZ
	H1W3nhqRXF7BogCeFS9ZBd6iVrk1Z+yGIViJPgXx4ubX7smPzVwGoWp+6/g9St1TfGHfJ4r7n+9F8
	dNZfwynQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUL2-0004dh-N9; Wed, 05 Jun 2019 11:44:16 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUK3-0003R5-RM
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 11:43:18 +0000
Received: by mail-wr1-x444.google.com with SMTP id r18so10118440wrm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 04:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=D1YI3KbYi08Gt53137zQUvYaTjAlj5pAkcVwiE+DyoM=;
 b=VJ9UZTvA3X5aVsLc1syf0WgRbb9hveDRMQ0o4bi7e3TWI3hu59qIVIWzNCnCLFPvcV
 BkmcBpcged+/ot/AjzaUn3vAPGguN1YUdBFOzAr9oExAYw7Ep1MDcXzgyTSVLD+1X0rx
 dxbz6b7aPBKYIzI6Q1tMn3Dff1B4Exaufc7li5HGHTsp16jBRrpm1KtLBM7Ot+Khe9ek
 OmNNy9J2Aw++vb6P1uGKXA9fGZfpgpj3ZXvK+9jGl6YEkkQB52v5yTZQzOdLLxO7ZoSu
 0K8ZIZ5JaRhv8PVqmLoQ8VfacQZ9B5Xr/NDf4obTBbtgpXFwiD8d097j0nFr2ss+TE6B
 pv5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=D1YI3KbYi08Gt53137zQUvYaTjAlj5pAkcVwiE+DyoM=;
 b=pmJjs98B7MUVEW85Mlms/+N9GAsGDDOFps52i/9/Ahk2xhP6QaFwc2pA7LZ5XiYA6f
 UGuawrV3XVh8TyqxkUlN4gLZwGk2sjsfzCF6U2Wur+IMRCJy1ETyZDRHcN2XLWfMCP3b
 1OI5ZdZ0p22rQH1pJ6KISVjlpdN87OhbB+uH0Y2IjSoJ488Q7+5HO4qwqGBI2RbygelJ
 n5z+inkIryLtoPK14JTfvGlyBIdMipysVeXTwoWb3WZ2MYK7cFohURxejjyZ35+YIv97
 o2myuLRRpxLkwRCJ5bDpNzLhqb1TTtJ2FvEXesAV+gw9fjyZoevSN2obE7o1xjKqfzoL
 6fwQ==
X-Gm-Message-State: APjAAAXeFnzIkNk7muQwg2jq04p5OC+h8lFll8Q4j3L7vR/6TJH6tLl5
 Mjk/HLJP+xLkOeyOoVxdOh9Fwg==
X-Google-Smtp-Source: APXvYqyDNkp4LO8LlugyAFDuaUSw4Fq1u6qPmEeYYKPm5xZjcHbKt/hoS3r2pxN8/6BYd5JeN6NYtw==
X-Received: by 2002:a5d:684c:: with SMTP id o12mr11703656wrw.305.1559734993874; 
 Wed, 05 Jun 2019 04:43:13 -0700 (PDT)
Received: from localhost.localdomain ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id 34sm27718740wre.32.2019.06.05.04.43.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 04:43:13 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, andy.gross@linaro.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 linus.walleij@linaro.org, balbi@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH 7/8] usb: dwc3: qcom: Start USB in 'host mode' on the SDM845
Date: Wed,  5 Jun 2019 12:43:01 +0100
Message-Id: <20190605114302.22509-7-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190605114302.22509-1-lee.jones@linaro.org>
References: <20190605114302.22509-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_044316_045941_55C4F8D7 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-i2c@vger.kernel.org, jlhugo@gmail.com, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When booting with Device Tree, the current default boot configuration
table option, the request to boot via 'host mode' comes from the
'dr_mode' property.  A property of the same name can be used inside
ACPI tables too.  However it is missing from the SDM845's ACPI tables
so we have to supply this information using Platform Device Properties
instead.

This does not change the behaviour of any currently supported devices.
The property is only set on ACPI enabled platforms, thus for H/W
booting DT, unless a 'dr_mode' property is present, the default is
still OTG (On-The-Go) as per [0].  Any new ACPI devices added will
also be able to over-ride this implementation by providing a 'dr_mode'
property in their ACPI tables.  In cases where 'dr_mode' is omitted
from the tables AND 'host mode' should not be the default (very
unlikely), then we will have to add some way of choosing between them
at run time - most likely by ACPI HID.

[0] Documentation/devicetree/bindings/usb/generic.txt

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/usb/dwc3/dwc3-qcom.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
index 1e1f12b7991d..55ba04254e38 100644
--- a/drivers/usb/dwc3/dwc3-qcom.c
+++ b/drivers/usb/dwc3/dwc3-qcom.c
@@ -444,6 +444,11 @@ static int dwc3_qcom_clk_init(struct dwc3_qcom *qcom, int count)
 	return 0;
 }
 
+static const struct property_entry dwc3_qcom_acpi_properties[] = {
+	PROPERTY_ENTRY_STRING("dr_mode", "host"),
+	{}
+};
+
 static int dwc3_qcom_acpi_register_core(struct platform_device *pdev)
 {
 	struct dwc3_qcom 	*qcom = platform_get_drvdata(pdev);
@@ -488,6 +493,13 @@ static int dwc3_qcom_acpi_register_core(struct platform_device *pdev)
 		goto out;
 	}
 
+	ret = platform_device_add_properties(qcom->dwc3,
+					     dwc3_qcom_acpi_properties);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "failed to add properties\n");
+		goto out;
+	}
+
 	ret = platform_device_add(qcom->dwc3);
 	if (ret)
 		dev_err(&pdev->dev, "failed to add device\n");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
