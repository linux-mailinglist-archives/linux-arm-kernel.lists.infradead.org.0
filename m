Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0630F34488
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:45:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JeoCQ9NsGjSaeVqGvaJY5aoyGjgVbkhW+L04e4NIka0=; b=rLnYLaahd/fgG6JRUuF4tj+eZI
	ewpIhYGUgH6kXj3vq/xnihlMjRPdbONkioMbqBpZm4skoTwv/eVCYJDFPMMxXqmesMIxtptLkjQSr
	dQ/uu72aLZw0qBe77w4vz0Ugc/8FoLcGPCtm0vML4Tnk9/+8PFENNLQAYxwbakJCwL15v+z1wre0c
	1BaIeq3E3K9rJVHp9VmmzYuvcY9c1x/CoE2+HOW97/8jeO2hDvIYdLEUAxe4eBI+kaqpF9arV3ygT
	4pXU+Zj5HUhfOh1waz5vfOqOhEbMuG917ekJPvoVJF9gAx5csK7q4t60+uFp0pNZ6PJIzy/KjiE34
	jpjfsOEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6wL-0008Uo-Gk; Tue, 04 Jun 2019 10:45:13 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6wB-0007jr-2v
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 10:45:04 +0000
Received: by mail-wr1-x444.google.com with SMTP id n4so12238413wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 03:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FFbRmXkMAE6sjv34a7ljnhiVGkAFw+tIZvmrUIY2GGo=;
 b=Y6qiFnTJ1MRpHUuCgNqujGVCKMSi3o1dTrg5paygrkOoY89q1o3/qKqVZda1lpsOEk
 aepjpT3mjU4Jdjty6fQnmvWB2Tz0hwigSNf52sJspJ7fiUowJiz/3HxN7sLf0BmtbclX
 1CYvUvUFCgmtIh5WO9E92aRfTfvmY2qVMebf3kSoqAxRiszD6jflq0TsLoqUZjsmMflP
 5Nn+i2AxwRqEHDKXGQFLfnIWghiz1Yx68Qod0Tn9bIasPgvwp/o0HsX32zKdRxB2q94L
 fedstP7MFi1DjVWWZ6Z6IVAdw+r6UsQ3ZyYEisYtl/QOcYnyFQBNJ07J8Ab2SH71T4nd
 i7gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FFbRmXkMAE6sjv34a7ljnhiVGkAFw+tIZvmrUIY2GGo=;
 b=GCGLkbu6FK6/ivZykqMbZ6AX0UzNaaJ0Bc8+WIyVV3c95FtfQHLKEU+g02MSaJlGYk
 O1W6GmukHMA3rZJGgDO3nD+89ufE6r1NY014owQLzbS/IekPc5AUGUMsDolBriOpKugP
 8pR9RT5w0QwWYTfa3HsRz280rgGNpV/jZRcs+lozSVa5R5/4CZih7BrC56n+nU3ovBdD
 XTzA48SK5MWKeVTLVqjz3mJFah0taDNs1NEabvU/VSWRE7UlWos2khPjKNGzqP5Z2FhS
 qy53KgiSBMfsjGXIPviE9rXPKKGkHrw3SFOQjzQwVfg9h7/TQ9bEikw0F++Ck/Rdfwmn
 G+dA==
X-Gm-Message-State: APjAAAWJMSeK17EGCUTHjfK7DncifkMI2Y5B1SVmLfGGow3IcsP+rbgC
 +FUVrkxepa2t9EtKs/f3n/bobA==
X-Google-Smtp-Source: APXvYqzAHuObwVNxDVyJmzaqwTimhhoqMZDjedQgwBDPmPMfg7OJ5wk7EqESgJS92PT4uisnRMrKQQ==
X-Received: by 2002:adf:ce03:: with SMTP id p3mr21460783wrn.94.1559645100592; 
 Tue, 04 Jun 2019 03:45:00 -0700 (PDT)
Received: from localhost.localdomain ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id t140sm2718623wmt.0.2019.06.04.03.44.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 03:45:00 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, kramasub@codeaurora.org, andy.gross@linaro.org,
 david.brown@linaro.org, wsa+renesas@sang-engineering.com,
 bjorn.andersson@linaro.org, linus.walleij@linaro.org, balbi@kernel.org,
 gregkh@linuxfoundation.org
Subject: [PATCH 2/8] i2c: i2c-qcom-geni: Signify successful driver probe
Date: Tue,  4 Jun 2019 11:44:49 +0100
Message-Id: <20190604104455.8877-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604104455.8877-1-lee.jones@linaro.org>
References: <20190604104455.8877-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_034503_278225_649D1569 
X-CRM114-Status: GOOD (  10.97  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The Qualcomm Geni I2C driver currently probes silently which can be
confusing when debugging potential issues.  Add a low level (INFO)
print when each I2C controller is successfully initially set-up.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/i2c/busses/i2c-qcom-geni.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index 0fa93b448e8d..e27466d77767 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -598,6 +598,8 @@ static int geni_i2c_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	dev_info(&pdev->dev, "Geni-I2C adaptor successfully added\n");
+
 	return 0;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
