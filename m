Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 181143B109
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 10:44:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O7R4wgu6EMRXQW2Re/PU+DlNfBpxHnLDI44Gmq1v2Dw=; b=nYSSk7tEHtvHB1IJ8io4djBnFs
	Ux4B0I1QWp0tUGWK3gYPMrMo6stYLgmHPa7tVX2b00TnE1HTzkp+jwi096A0Ng56XzuAAJmzVvYo2
	o6jT+cl+MMzcEtg9wkBytIEd7vceA7K/ey6hnAjTHUk97/O00tUyhsqp1whAVhQw36VVeaQtx2Wh1
	qAboxoBQHKQFURDJ1A0iTvNHHFYnyAYXArEDLv1vCNcuZiWGUYinPyE/F2oO+KmyAeLfgTu19x3uE
	T23E2oF982Er1AYNhfnbY72IRUBJ5zXqw9yvPhRb+apm+Q19CcurGu1d9IxhwoFkrUb4sccw9ytPr
	j1s3i4qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFuq-0003nf-AR; Mon, 10 Jun 2019 08:44:32 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFsl-0002Eh-R0
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 08:42:25 +0000
Received: by mail-wm1-x344.google.com with SMTP id c6so7306440wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 01:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=D1YI3KbYi08Gt53137zQUvYaTjAlj5pAkcVwiE+DyoM=;
 b=Fdh+cJirOeCPwca26GEwwWvQ3uzK3nNcYIOCYE8binAxIF/9nbOyMkwaed+EfuvQJy
 VqLf/0N0B9UWZzM3uwCXTlBxBRaoBDkNkBtGw3eXyQIiwzWCxJTeuq45QjmkejDndaV1
 LWduK1uypyuWZFT5a5FsEAgypHaOkHW6tLNHRGr+NmxAkJq2qKanIs8glRWS71UfhM9K
 LSkKBodguJ08qiQbcXIpbJw/ruLp8OSwuEIBXpd4Ux3Dz+qh0qLOOfskjggq/Oe7aqpn
 YFYA+qd7cTUnb474P8X/pSeXinKIyv1TCgXRw0/BnhwXM7fP47h3BtLQ8YmHeChyhPGZ
 mIhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=D1YI3KbYi08Gt53137zQUvYaTjAlj5pAkcVwiE+DyoM=;
 b=TT7hcZs6EPjdZzj0EXyH1i3fHswPMoO314/XJxJ/YgSakBNCHWJHhPlQsgzkgo7nRg
 1uoUP2t/SCtULkeD5bEG5ytc0hghDO26D4yyASGyzEb+nLdA7sQ1DqNpwqIAT6X/2d0x
 BOJZSM8ssb0ud0xep9SzbETAqHX6e752fZEpQ32u0NswW/OaPrfljxSTtoGtHuccKf2t
 jtpAoipnz0pcX93zrq31pgslpq/YWprgE4n1tyWCrJlG0xwldai+9MMwGiypKbfD9GIv
 k84OmP8zW0W01bUIRbhaZoSnH4GkbtiN4jTCnP5q/xzCgmOfPZ3vhUfgO8CFdAFzIxX/
 TZ4A==
X-Gm-Message-State: APjAAAWe4NagK0+3opgEGHFWqnipwOednRLtSoK1WZEdlmTs5RJkOGXU
 KysrfNHqeCHUaoDSuQkCBK4juA==
X-Google-Smtp-Source: APXvYqyHnsHDEi1fkEAIyNUAvCi58JRFoTK1I10cExECKSGoyLaT6+gdnSZIt3mwKxzj0hkM9/ajgw==
X-Received: by 2002:a1c:3942:: with SMTP id g63mr11315348wma.61.1560156142556; 
 Mon, 10 Jun 2019 01:42:22 -0700 (PDT)
Received: from localhost.localdomain ([2.31.167.229])
 by smtp.gmail.com with ESMTPSA id a125sm9929670wmf.42.2019.06.10.01.42.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 01:42:22 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, andy.gross@linaro.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 linus.walleij@linaro.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 ard.biesheuvel@linaro.org, jlhugo@gmail.com, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: [PATCH v3 7/8] usb: dwc3: qcom: Start USB in 'host mode' on the SDM845
Date: Mon, 10 Jun 2019 09:42:12 +0100
Message-Id: <20190610084213.1052-7-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190610084213.1052-1-lee.jones@linaro.org>
References: <20190610084213.1052-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_014223_917623_8CB49341 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
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
