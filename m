Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B8556485
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 10:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EwjSRayr8EUMBOTL/itZuP7fytHpa9cicWjAMxh8IN0=; b=Pfb/daM+iLxk1S
	J6RE5bDwZylnnFaCl+2lSEMqU6qTu4Wai6J6SbEe/yPx+5Qfq02R/D6iXZx1WQLurki2IIHnO0RHp
	Nco+VQVfVqrlu8olOtjElGwwveYEUgPO+dBU5cadHVV+SAX5KBJawFUzDDw9jLJVGBy8gln/skv6U
	B/HuUI3w6j7XHi4DLXZtKNHLla2ApzLyQzkyK2SxbhmNXz47UdmvFLKsR42F2QjIQ7kQwnd9lrsy+
	IIXe3GDB8OqfQFC5qcpbhXmhh/mI+QqHtbgPuEp7K5FiHRUb1LIJLnFMA42YN15bGORDmkmwtwlU+
	2Jg1FRE7Ucgqnb2w2U1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg3Fe-0002t3-62; Wed, 26 Jun 2019 08:25:58 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3FL-0002sR-Vh
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 08:25:41 +0000
Received: by mail-lj1-x244.google.com with SMTP id i21so1269359ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 01:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pVvFhH1InfH3PPtlMQoNsG6tSqcFtU2rxZDyXe5lT5Q=;
 b=LsaIZt6+o/GShxGCDExFHWu/jR9XgIIq71Cx3FconQBZeGat22YdgVfHQmapitORlX
 TePd0RLTaZKKAvrx93Lx/1F2sdbT84cA47bJ0Pr4RDSSXTy3oU5t09N+YZXWXQTvNhrJ
 DWYCefJJxu9SmNmw/Hjj8xyyuDIDlK1wwsfWdykiAQi68Ppz0cdodcPElkSeWs0hkvn3
 J0fi1zfDvX+pbGDBo+sgCoLsZW4L8+7SMMwsL8CXMRu40Yu2wUPOnVLte5/ju+Hw3MHB
 ireoifccQXYjhLALoZ1iWBA2W1dvoO6dOmx1WrYW9tBx+SF8himxw6k/z2lcHNESt/ss
 pFzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pVvFhH1InfH3PPtlMQoNsG6tSqcFtU2rxZDyXe5lT5Q=;
 b=ltYmCIJttltRC7ohJKHx1Kszl2zL6/5jzr+N6GMSiVrQ0isVHoCXl7f/5Irvk+773x
 BNVaNT+5gDZVZjHSj1ynxLlW0gdqPH3h3g7vfL5OAXab+tZzPRwfIxLRlizRJIDcFzNV
 rfP0dz5yvI72f+yQHu1ptVwCVvM4Cva5VfpVMiX2C63C3JDHq05pHu9fPhuSEAY4sep7
 mQ0jGudhWWGLosC1ShNcEgzbcDLmIQC/+l/sAuvaCDw31l34jjp3P1+BlWfwlFeNqe0M
 gsIpFxWIahAmxx3lPVQEDksZ7zE/jj4awoHzIAAiGi2ZstjTVY9r+3ZeP7mm4GigFzP7
 /dxw==
X-Gm-Message-State: APjAAAUs/L/1XrPZGn9sOdInEUDXTMlebb7JaScBNXi+LiZTpa566ElV
 PJgXw7C5WwCnDuzuLygHZBc=
X-Google-Smtp-Source: APXvYqxQy0gBjQPJ/fBtCeFrYYWAP51N1u1/ULoXTp+yL9WDnmJqTlDBOKANxL7ffRxuhWL/1K+/rg==
X-Received: by 2002:a2e:12c8:: with SMTP id 69mr2017721ljs.189.1561537538258; 
 Wed, 26 Jun 2019 01:25:38 -0700 (PDT)
Received: from localhost.localdomain ([217.153.215.58])
 by smtp.googlemail.com with ESMTPSA id e8sm2690359lfc.27.2019.06.26.01.25.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 26 Jun 2019 01:25:33 -0700 (PDT)
From: Krzysztof Michonski <michonskikrzysztof@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] imx: usb: get pinctrl if it's not yet initialized
Date: Wed, 26 Jun 2019 10:25:12 +0200
Message-Id: <20190626082512.7637-1-michonskikrzysztof@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_012540_018104_B8F8D049 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michonskikrzysztof[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peter.Chen@nxp.com, afenkart@gmail.com,
 Krzysztof Michonski <michonskikrzysztof@gmail.com>, s.hauer@pengutronix.de,
 linux-usb@vger.kernel.org, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In case usb phy mode is other than USBPHY_INTERFACE_MODE_HSIC
the pinctrl for device is not acquired. It is however used later
regardless of the mode, hence leads to requesting access to
uninitialized data.

Signed-off-by: Krzysztof Michonski <michonskikrzysztof@gmail.com>
---
 drivers/usb/chipidea/ci_hdrc_imx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/usb/chipidea/ci_hdrc_imx.c b/drivers/usb/chipidea/ci_hdrc_imx.c
index a4b482c3dc65..2f02b35c40b6 100644
--- a/drivers/usb/chipidea/ci_hdrc_imx.c
+++ b/drivers/usb/chipidea/ci_hdrc_imx.c
@@ -428,6 +428,9 @@ static int ci_hdrc_imx_probe(struct platform_device *pdev)
 		pm_runtime_enable(dev);
 	}
 
+	if (!data->pinctrl)
+		data->pinctrl = devm_pinctrl_get(dev);
+
 	if (!IS_ERR(data->pinctrl)) {
 		struct pinctrl_state *state;
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
