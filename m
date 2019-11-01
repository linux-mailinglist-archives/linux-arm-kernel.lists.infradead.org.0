Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0AEEBE92
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 08:45:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZUA6ZMSzSaeyKPZnq6AbzUSpwOTEa4wAEpvL9FNlLOs=; b=OtvmazYa1qgBLLJGHqUauCwtAl
	06cKx0PRn3WtTYV5JjtYeK0mE16PWLdk2XuTD0mC7oNuy7aLjmtc1FG6i+o+cOijrKBKIuf0h0Xe4
	WwKh1BJ/po9/VP0RQ3Q6HPUaIhxMe/rDO/uhdkt4ZEva2tL5WbrnwgHNCpbHFJ+8LJW9uLrNXkcix
	kO65cyQceTMyUDFdgEYZ6HmZnNCeEYnoltfqx6AlQb9M5XmCsfMT+sov8Mu0hy03/4Vjx7szIXF1C
	GopB5tCVt9udN9J5tFetGb+0Xh+baRXtrK+XL5ks+i15L7wJv7OdwMF6ySkW5GdguQuS+VNW44GpU
	c9LdqEog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQRcj-00082v-L1; Fri, 01 Nov 2019 07:45:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQRcZ-00081W-Vv
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 07:45:25 +0000
Received: by mail-wr1-x441.google.com with SMTP id o28so8790356wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 00:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=YZmXO5ePw27XXjmw9aqXqaRd2VOTfPGeZBWp3iFdesM=;
 b=tbCJuYLob+0SWNE/H/aeNZaYlGi3cJ/mzfR3bgtLr1RoF0bzCFs3kcYakZXCwCnEnd
 MnLJgV1VtNOLom7eF3xRGzmxN00x8pt3aNMSyx8IlHnxSN+vGoNCz8lnWXF/E2LeLRvn
 XuvG3bchUwfbZm8phPQsjEYu6akLSU2CDD+qS4olY3VNarH3zFRwoe+XEwYQbqJlBfzq
 tQ9kT8oAkB6fwztc9zSR4if6OpgunzPPqsW0tCdlEdG5uSZMnTh0Nv5cpGDx/fojiR1p
 1zIVuPoGmrTObZd6uVv0z7p0Xg2J9lR6gL1Fj/BLXh7mzPJPAim6tOvqoSDnWlzZRh8C
 /1uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=YZmXO5ePw27XXjmw9aqXqaRd2VOTfPGeZBWp3iFdesM=;
 b=NQD5GZxPoOH9cxLfTjJh5NGpgZMOTJEuvQsHbOaW/qBoOSqPo1SbHrLaA/2PbESWai
 0+4m4aYIsiekK5GrBvanchK98GFJ4z0O1Ea1v8+lktstDBsM6Lx6+yh8Ybdn2wAVuqDO
 j+CeCffS/1nRXp60W8o7Jr8LvSVW5KUWcZyn+iXGLKm7Pp+YAftbqnvAPciTaomPVx4d
 WDYI/Sh9fmCu2OitgldK4dTchcQXBpTnimtJIvfQDZ/DzT5UR713C+3HT45vcbpFHLaJ
 y64D040046GHZKkkSuPOzMVyBE2yW7sn9G936E1eZ5Zj2UyWiNZfOuRC3i9M7rvXD+U1
 yQOQ==
X-Gm-Message-State: APjAAAXW1LfiIOU2oHOx6wphYBYB7YxYOfRHzIBgL/+Y3C5j5HWdlV0e
 O/fjXW4HKNH0rvKXGOSV8aXLLvUY790=
X-Google-Smtp-Source: APXvYqzAhKI9QO7+uHq0jZZwhl3O0BW/SI4JcZ57GySMVZs/utC1/kufLJ8AWDWrDLnPbWRV/GVe2w==
X-Received: by 2002:adf:eb48:: with SMTP id u8mr5175902wrn.225.1572594322417; 
 Fri, 01 Nov 2019 00:45:22 -0700 (PDT)
Received: from localhost.localdomain ([2.31.163.64])
 by smtp.gmail.com with ESMTPSA id b1sm576215wrw.77.2019.11.01.00.45.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 00:45:21 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org,
	broonie@kernel.org
Subject: [PATCH v4 01/10] mfd: cs5535-mfd: Use PLATFORM_DEVID_* defines and
 tidy error message
Date: Fri,  1 Nov 2019 07:45:09 +0000
Message-Id: <20191101074518.26228-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191101074518.26228-1-lee.jones@linaro.org>
References: <20191101074518.26228-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_004524_028575_C10E91A5 
X-CRM114-Status: GOOD (  12.86  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In most contexts '-1' doesn't really mean much to the casual observer.
In almost all cases, it's better to use a human readable define.  In
this case PLATFORM_DEVID_* defines have already been provided for this
purpose.

While we're here, let's be specific about the 'MFD devices' which
failed.  It will help when trying to distinguish which of the 2 sets
of sub-devices we actually failed to register.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>
---
 drivers/mfd/cs5535-mfd.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
index f1825c0ccbd0..cda7f5b942e7 100644
--- a/drivers/mfd/cs5535-mfd.c
+++ b/drivers/mfd/cs5535-mfd.c
@@ -127,10 +127,11 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
 		cs5535_mfd_cells[i].id = 0;
 	}
 
-	err = mfd_add_devices(&pdev->dev, -1, cs5535_mfd_cells,
+	err = mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE, cs5535_mfd_cells,
 			      ARRAY_SIZE(cs5535_mfd_cells), NULL, 0, NULL);
 	if (err) {
-		dev_err(&pdev->dev, "MFD add devices failed: %d\n", err);
+		dev_err(&pdev->dev,
+			"Failed to add CS5535 sub-devices: %d\n", err);
 		goto err_disable;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
