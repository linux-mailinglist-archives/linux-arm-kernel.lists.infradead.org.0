Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D43DEA3F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 12:59:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Q6qSWo8EzrGi9GJH0paXkOtBPbMdbi/zaYZFriY0E5c=; b=m2vQgXU+q4rYPsOFa4AX5SUEHp
	0IZhO5SrdVEd8n04zaOM/j3CSKTDwjAowaLMBQKY90A+je2Ro6ccUX6UeNkfpldEQu1kHnIQFsLdy
	IYbfhM4rAO+2HIO5JbDSdCn1MpYoK/pbGegNCEdSYH4+vpWmMyp3WjVWFGGReMxIgQ9L2fdVUMZrK
	b2AJXzzhaK0gjU4OIyIwbGRKvi1BsmYhutQ41+WlXMRmnnex0qAOliHFO4gu/KB42alk2VW0vLO74
	vVGIHuS2PEQXI+dRzTTOc4nvBWBACexN1bwtoqqARNr8vFK8s8zbuAepvLfhrYZx+CSlHbiW+n0bh
	oBk1XlnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVOt-0000Uc-6k; Mon, 21 Oct 2019 10:58:59 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVOO-0000EO-1y
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:58:29 +0000
Received: by mail-wr1-x444.google.com with SMTP id e11so4700783wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 03:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TJ3e2otpMWVdhjzztz3QDOTYAmPJU5Qr6nYPafBRUGw=;
 b=uPg/RYjg86DcbqDDwpLKJLDizvEJdEwdu7r8c2St5KAPIaUBtJ2NW+5df+E/vgXtRN
 5KCsxEpSpB+ox0II7sWLU3yx5zbb3bufQ9EdHuMQsm9cxEgwwa95Xn//m2vJuZg1aSk9
 DkAsQh224TNp+EtORwR5LqBWH6mauTV2SPhSUPH0izHHkNJMgCZD9j+g92xNaSILVH+L
 dWEP0ZxA4RqmAgcPuMTW71oZN0nM2oFbvTD0Txz+qhIi7ft29z9G8DkYPqbjA/HDsHeg
 hkHAUiGTBRPTl4v9JqDXpcwLen9YMKYs8bWi1bhKchCeIVDVmZgUmQ8L0Prx/dEq9IXG
 oK7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TJ3e2otpMWVdhjzztz3QDOTYAmPJU5Qr6nYPafBRUGw=;
 b=VLAiLQTXMC1imQG9qkdaCbXrWDrOv/mcKDqsK0/I7lhgvkvTDoW1/tlpV/TJbsmsI2
 ZhkKp3ciftzu/Sc4NYPI1O/eH6ne/FkbKx7MU0B92FGho+2D1nawK7OsJT7gfKoS/e9A
 YPVMpL9EFCr7r9Hs7+vD34trHmJBhiWCwcHBQMh4Q4Wtxp+ZfdHEMFrvs5a53FuNmEUq
 J/g9jiDf/D28qXwnB7C3ufAAa2FmlLlTceiWD3Qv9uJ/D/KJ1Byip9oIPtZBMoDqQPN7
 Vd3NPvSXc8qK9a9Ff5qsz/Nyzap8fXtz3JGTnqX/V6cbYdpueRAwF/LVwX6csaRHrkaO
 Gs2Q==
X-Gm-Message-State: APjAAAWkowQZ/cWFp+7+pHomRYQih8cgj+Hb60vyMLt0g0H/Ycx6OVsb
 drLONcnSVbio7M0KLy4Thg/3eA/6API=
X-Google-Smtp-Source: APXvYqwyiJ4CShgCva1aHDb9OaW+SaBP+3Mjz6V/AfG/14A+ll0S9UPgGeR8jG6GaIzIwyi/fU8qqw==
X-Received: by 2002:a5d:4047:: with SMTP id w7mr19242902wrp.270.1571655506394; 
 Mon, 21 Oct 2019 03:58:26 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id q22sm12544289wmj.31.2019.10.21.03.58.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 03:58:25 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, arnd@arndb.de, broonie@kernel.org,
 linus.walleij@linaro.org
Subject: [PATCH v2 1/9] mfd: cs5535-mfd: Use PLATFORM_DEVID_* defines and tidy
 error message
Date: Mon, 21 Oct 2019 11:58:14 +0100
Message-Id: <20191021105822.20271-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021105822.20271-1-lee.jones@linaro.org>
References: <20191021105822.20271-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_035828_096661_6AF22A33 
X-CRM114-Status: GOOD (  13.44  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lee Jones <lee.jones@linaro.org>, baohua@kernel.org, stephan@gerhold.net,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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
---
 drivers/mfd/cs5535-mfd.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
index f1825c0ccbd0..2c47afc22d24 100644
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
+			"Failed to add CS5532 sub-devices: %d\n", err);
 		goto err_disable;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
