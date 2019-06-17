Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED2248314
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:52:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1QkFuxjOpyjnOEy2zHsXiVzRtFfJL6FqwyIAZ/9Gut4=; b=YA60sPqjbq2iXlOMXN9dmLURcq
	Iz4na+d1NKhZtuP2CUDdAaStGbSSjVhK/os6IjlrZc7p41R8M579EqZ0HVEK4qz82WE/sZ1N8aCZx
	Ruo85uuR/oV66KjW9Hv4ZEVoyqvrAwW0icnAN0s120v2oKHZOp4ALV0ZmFH3qplK8XWT0lEYbYhht
	YKnq8wuLXiUk8EOTPK53ZAz9Ng8HO6EwyiWt+Et7LBSGHdJu0mTcXlCu2IZu8ojX8mDLaq+gbOdkV
	RSimIoT8eRaC2kw3zEucerZPiH2j1UuTnfkZ1FKC6k/Y8Z/Xsdudz2ZZiRzFIk1huxmS8WpD+W/Fk
	j6DSjSxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcr7L-0005Pa-Bf; Mon, 17 Jun 2019 12:52:11 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcr6O-0004gy-U8
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:51:14 +0000
Received: by mail-wr1-x441.google.com with SMTP id x4so9820359wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 05:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2C6MxhIF9Gjdvx3J9DYd/48/Suqux1auzpg7O20+XA4=;
 b=MHuiL6Hd66D8KM0jn4ls2iBDOBivmXgGCkd0bRuw3BVISYThbeIBV65YPTVnC9S5pN
 8kwD7l1LeRLhShtYuu/Ido0JQEJeak94CdUos+d7lXijbpc7lq70fcnle30NFz0tcJIj
 fAbhj9eIhnoDKlZtfNVWfkzOAx8xp0EuIZ9g38860fnnolOIibyFhNmFCQEOV3JsQtou
 UjFRWCn0iZbk4TdcLNFh4kMAKOur21h0NofVuZCw5wYBD3SEo5yr15DOn4ZrA5obTtoT
 wSTQGINMn3kmRWVRTFv5WxMKEdA0kEwajLFNzSkDL3ycCAfLXhvSJF2ZlVcb1F43lutn
 H4ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2C6MxhIF9Gjdvx3J9DYd/48/Suqux1auzpg7O20+XA4=;
 b=g5oKdVRTACrVlNT9mDlepCqDm/U02p2CeTx7OdqMmBixU2mjAXvsMj+XahOxs5uFsO
 Pl3GHa55jW2odCnqU9VxRpCVhjxno2vhx6tg+PXPuTBqk+jUURXrCVXyC22whKZcpHJr
 yirYn9/pAYDqhMOEU0QXHLc2+hkADBRoIe6q0bwWkHAUhTTBNiXZXE/AmECsikfFweYY
 /gxI4NxJV+DoqZUCLvfnDQNyMPQ/8PjcV+APjFzTg+joSGYwXUlmkEoTIr7wmU4PRJEJ
 aqo/p8zPkt9WE7U5AouUleaAYafS7lL462sde12ORut0CLGLeMgOOc1Ts62W1sawCZnK
 cgJQ==
X-Gm-Message-State: APjAAAUTdSRQtulqTKizpX2at2737W94BWN/oI7oAXlYMQGY5HDkwL/e
 JmNLsqSgS0jLCPiCNJxyAmQ1zQ==
X-Google-Smtp-Source: APXvYqwC65DYERLdER2UmlNerHOaEQY3c4hwpSMWsWud6VpPKrL6rBW7xSk8iiKL0ioPg8v7UxK/qQ==
X-Received: by 2002:adf:ebc6:: with SMTP id v6mr14844325wrn.222.1560775871713; 
 Mon, 17 Jun 2019 05:51:11 -0700 (PDT)
Received: from dell.watershed.co.uk ([2.27.35.243])
 by smtp.gmail.com with ESMTPSA id o11sm10477852wmh.37.2019.06.17.05.51.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 05:51:11 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, agross@kernel.org, david.brown@linaro.org,
 bjorn.andersson@linaro.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 ard.biesheuvel@linaro.org, jlhugo@gmail.com, linux-arm-msm@vger.kernel.org,
 linux-usb@vger.kernel.org, felipe.balbi@linux.intel.com
Subject: [RESEND v4 3/4] usb: dwc3: qcom: Start USB in 'host mode' on the
 SDM845
Date: Mon, 17 Jun 2019 13:51:04 +0100
Message-Id: <20190617125105.6186-4-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190617125105.6186-1-lee.jones@linaro.org>
References: <20190617125105.6186-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_055112_973743_71B28B61 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/usb/dwc3/dwc3-qcom.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
index 0cb63f6c92d9..2d050303d564 100644
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
