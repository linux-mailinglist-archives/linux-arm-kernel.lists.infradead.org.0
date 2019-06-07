Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0643238655
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 10:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O7R4wgu6EMRXQW2Re/PU+DlNfBpxHnLDI44Gmq1v2Dw=; b=brH3afU7cnKzyrfqy1VQ/v3B0T
	CiXQ4fyZYcmvtm40hmDTUAjZtRildUGY8crPaxczvpMi22W5Vy6P0DJaak/zPAHewEWNZBkQ3d+zl
	5ZXTDPyrhdByQ1zT9m83GvuWFF+HCNag7Q4zBiNui6Ric92CSXN1K9O8DRLXuTnp6LcGwgvcTEfbG
	I1TNH/dq/Qm3AJh9qh4OZSvfCcpNai9KKROBOUiCT2OvbV5V2uMDJTABjyKTxtIMxEx7OzpV3WdV0
	s8Mm/21LTBrnEBQ0vtxeXrjEUweDj/mac5ZP5wimIg8kaZk6rIB4jUw1CobMWK0hbLzs+Ta+ae3KD
	ngb/iISA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZAH8-00024j-NL; Fri, 07 Jun 2019 08:31:02 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZAFL-0007x9-O4
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 08:29:13 +0000
Received: by mail-wm1-x342.google.com with SMTP id z23so1015024wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 01:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=D1YI3KbYi08Gt53137zQUvYaTjAlj5pAkcVwiE+DyoM=;
 b=onAIZ/TOMn7vu8edA+Q0maMV3YC0CutOaiTQNG8U24Hc/kDK9jS/fHAe1a20UhN0fo
 7cNBfiTEtfbcSLzpHgMkUSMC1YIVfogH4tTE/eLQukkLUqAGYI0rilKVlpKmsXpmHS+h
 6IlLik8qVl5LgO9Vj0+ZcIBb3HCFhBAS05RmRB+Wb6MimlzNof589ejFsF2jCViPAMlp
 l6n4mF6y4W3R7NMRsous4rjXQC6Z/VnK87t4T7yzjnoxlLkj9oPQxofR4cn6zbLRpyeM
 OPYYEyhi3L76+sQ3G3maREXu+j/KZuaeQ79HK23oR43rcClTk7b235we0Bd9jZccRP8L
 PNBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=D1YI3KbYi08Gt53137zQUvYaTjAlj5pAkcVwiE+DyoM=;
 b=ftFYab5CcyEN09nZiQMpA/WLo7NtMuLb14rg8XLoCQFGhGuh3jDcwKl/R2/mJW/lGi
 YpIE0AQfML2ODUCCmXJg9jrSq4aRWJQmU/ms7hsG5C+srM7JWIMd7Jy9Ea80xhZ4z6FR
 dNneKJBT3+5onSBAlP3XbXzLuRR1QzrIFs5rXXK1hbPnqLsLpzP+6ceoh3Wff/ksTsRH
 VRwSINcGpx9DTIihLxC/2ObksiE4No7PqePCB81dxQAgfzLFZmoqxbmZkqqpwfv1zA5D
 rNQhF9H1cXtT7Ueg6tAVdp9M40NvSoz7Y1fCju7xBl3SZymh1jakb1eFrLdH/HYEBCnT
 ombA==
X-Gm-Message-State: APjAAAV3y+A2sLVA/kbCmL3isfwUaclwq37/Kd4d1m2jnNA4pp4DdweJ
 7o0Cw+INzdpuSUWO/kTB5tUV6Q==
X-Google-Smtp-Source: APXvYqx2NoYMMtqWa8ReJN5TrwKSrvBHd3ZkYJmk385TGGdhyyq1kjQl0TAzcvNbMTlyHzWbu6liKQ==
X-Received: by 2002:a1c:b041:: with SMTP id z62mr2942302wme.113.1559896150318; 
 Fri, 07 Jun 2019 01:29:10 -0700 (PDT)
Received: from localhost.localdomain ([2.31.167.229])
 by smtp.gmail.com with ESMTPSA id a3sm1092946wmb.35.2019.06.07.01.29.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 01:29:09 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, andy.gross@linaro.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 linus.walleij@linaro.org, balbi@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH v2 7/8] usb: dwc3: qcom: Start USB in 'host mode' on the SDM845
Date: Fri,  7 Jun 2019 09:29:00 +0100
Message-Id: <20190607082901.6491-7-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190607082901.6491-1-lee.jones@linaro.org>
References: <20190607082901.6491-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_012911_845456_0AAB4A67 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
