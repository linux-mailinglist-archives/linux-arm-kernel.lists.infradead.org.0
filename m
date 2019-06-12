Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 237D942923
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 16:29:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=T13/twkHx4yyWfrdIHt+rSFeeA6NKp/ORctdGFaTe18=; b=gPrX2GWZg4T4Twl0QTE2Yh6a1F
	mIfD7KbLQzCSzChLV+Ju94/R9y6BTVIW/V+UGE4dIFmtMIN+BbMPTwRpvUW2kI1o9atQE1SawD6C0
	6g+VzIgSWgm/V4keLYa5dVR+o0diS9SYjloCU+MJMMFty7mqT8BTRXrfbUFZvBAyb7fWaAcswmz9a
	lxwAV+5qfXXukqKU3Mh9jpszmovuO3hDx37u+d/ZIQV0Aalts8yXaMPP8uX2apVewniEcKjVjqFly
	JmY5RooNYnKdsl8w1itLHJ+B1srxgTRuIeooYsYlzND/ANi8V7xX45ZRfX8+Z/YahWP7CkilwQW5q
	o2ys0ShQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4Fi-00072z-Bu; Wed, 12 Jun 2019 14:29:26 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4DR-0005GR-AE
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 14:27:07 +0000
Received: by mail-wr1-x441.google.com with SMTP id b17so17140024wrq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 07:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fy6aQtpj04fOwVei4zMchW/ihmwVQAgPeocDj7znWWs=;
 b=OrQ5ncDIKVyQSJV2lGbcoHTeQSe6MmmBwUcZC5zqV4QZ3vTVA1BtrgPUQ8jbMgb67v
 /kOxwnETofKRgBNj1b0HtE9u0AFFdOWCcPcAbfIoJnuGIvOw57czbPWLpltqHuWbXWRj
 fKXJ4DRXKuAYnQjGzz+tj23i+n5DN2bx3mYS5xPRMMAzHx9ZOqGZWEvU0hVNym6SnQL4
 Jg4GILy6YS//Erz1lNqcpODAIzqawBCFwBpA+4APbSeGmT0vek59soiMsm8V76nAUrCv
 Ljz98I133N7M+6ePZoFk6KumhrqC+Uk+SpqdoVV40pdsRct4z0Cgsbt4Rq99N2yIAGwK
 eWDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fy6aQtpj04fOwVei4zMchW/ihmwVQAgPeocDj7znWWs=;
 b=WM5YI7DsDHl+FKtbSJUDEFGMF7zHFTiMxR5MMrxJiA+ARxX+nAgEefsuXfSb7aYmL0
 vH6RCEOUsaHeIVhWwbWRtJWn66n6pYk71HHtTClc8pKhgdVef4/6ZGibV42EBdyLe2f+
 5Cr3QbZBWOuRbBSxzI8luyKTIAW31WNjHZ/IVdDbwH9BX2UWCUL0JDpHIQY230x71yCu
 7THv6hf+fGM/WynZ8QAMNm0P4bzDRRPc8XFPr99GW8Lq34lUFHr4+QlROP3Mnz6NwSKI
 INVeTWhaKSnc00PffEmKD1S8MaInGGbJbMykVkvqOu+pIyq6GOIoB/w7I7hXp5Q9rlsr
 S+9A==
X-Gm-Message-State: APjAAAXs4fQVwwfXC8SRcjOPudgE1YBp+ebvCntzK9Zo/kM40FbxfBAI
 OLAWcTLueTjXAdcuOR7hkB6b/w==
X-Google-Smtp-Source: APXvYqwFw+UqoHDB/67jT5cutBxDI1YWxBlU2IDiPnPIIo4Ib0zOzE+46btHcLsNuy0V0H4zJJx2KA==
X-Received: by 2002:a5d:53ca:: with SMTP id a10mr42518942wrw.131.1560349623979; 
 Wed, 12 Jun 2019 07:27:03 -0700 (PDT)
Received: from dell.watershed.co.uk ([185.80.132.160])
 by smtp.gmail.com with ESMTPSA id y18sm203959wmd.29.2019.06.12.07.27.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 07:27:03 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, agross@kernel.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 balbi@kernel.org, gregkh@linuxfoundation.org, ard.biesheuvel@linaro.org,
 jlhugo@gmail.com
Subject: [PATCH v4 5/6] usb: dwc3: qcom: Start USB in 'host mode' on the SDM845
Date: Wed, 12 Jun 2019 15:26:53 +0100
Message-Id: <20190612142654.9639-6-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190612142654.9639-1-lee.jones@linaro.org>
References: <20190612142654.9639-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_072705_401484_7D033DEA 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-i2c@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-usb@vger.kernel.or
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
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
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
