Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6665738657
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 10:31:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FKFBWEx5q7gdioubksHzfRV4OPSZl17eZp1bzQ6vcOY=; b=ka7dW7hXjnOnZdn9qqm7xrLHDh
	aYnYB8Qvkl2je6CT76AOOEfN97qjhz1QSL1Zk+RqZJ5yjQn+XAErfIzhOAZ7RRZ+okYjK0zB4nv3w
	5qBHu20stNcE1l4R/c5YGV95eoE8+saoh4/ANHXsy/5Zt0J4Hb6M4r5pK2Bo1y7czKoFAnTaEMSwc
	qbLcHSGKY91+h8b7ZM9OpxQBJUz5xfDa02SvlYmYWMNiOs4BZ5e3j/oiwURmxPeJyE6YfUX1kfwuQ
	/fwLHmLJ3RXIvfvV34c7S0TxntAsWOnX+yFAkGH1b5m7qAJKsxZrdhVGnk8wRO2oQO1wpSsLLbETG
	7V4AYtWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZAHo-0002an-1F; Fri, 07 Jun 2019 08:31:44 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZAFM-0007yC-GH
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 08:29:14 +0000
Received: by mail-wr1-x444.google.com with SMTP id x4so1231210wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 01:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FalRLEADzMPtGyW8NIPAA0F5olxzxXGnPVoGFb+myak=;
 b=qS6/gC3g0ivDxQeYTAyAXWuKblhoYJyrn1fhCTmRyYAb/dWfOeXaEtzpJDpgr4/keC
 y9YxUUGJsjTMzcLV0Xk+Gm3yNRHp+YTAA8eMqqZOxwkj8MByuQQdEKhqYlEO3weOrF7m
 Jm8HKR9UNUcaw6GVDTJe18vTDeIrxL/txUdpmREfkl/zV1qCJggDJ0qvOs0oFjXzfDhX
 QYmnCarRktfnHTYRBX9mOzCN0H8TbcO+skVCCW4zXhp9qmRFsbGuiOiABEgUZFpnmzsi
 uv5c8stevPakNzYje7bhOZlX4YXx0QxavvOfiqJC9mF+9fxItWO/Uh3ILMCG9Vx4dVGM
 pHYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FalRLEADzMPtGyW8NIPAA0F5olxzxXGnPVoGFb+myak=;
 b=mkarleUuyjjXQk/Uy2/RQ8FOjNlZ53p3wfjsuR4XJXGej2sX+ZvUa3qu64LmH3Ppjz
 ysXecxkLtfpjcb4UstGQ1odbKwhw/QWqEv430tZwySdwz502S+JHcveqniSU0h9Bkqj5
 BoS3Ia7XFlSrqwShqgPSYW1mSLG+At0OQ984Du8bqCI8RpGqYf+JM8Kau/q32eiPLFr2
 bQJHBTdKOK3eCuXEZkPfB51s7tedy6EP1zF2IhUxrg1Xe8xtcrZcQleKX1qZ8RObXxk2
 pcX7giMUijs+IDnKpq1+9NauHan8t1telJKaAbhhLNkvaBDf6qcpkJAFuil/8QNB5/+Y
 Zh7g==
X-Gm-Message-State: APjAAAX74ZaRJT2oelZ7/AVExEHvGovCQBCZlbgyK8Xl9Qo556zYqgbL
 TOlBMZUZlTEacnlroumungNO5w==
X-Google-Smtp-Source: APXvYqzSmJjzWO+MJ9nCzabQMhjV+5XfkNRztLbNtFMbdchLDJu2eVByL+7ShB6cmtMge7GBvY0Nug==
X-Received: by 2002:adf:ce8f:: with SMTP id r15mr21014523wrn.122.1559896151288; 
 Fri, 07 Jun 2019 01:29:11 -0700 (PDT)
Received: from localhost.localdomain ([2.31.167.229])
 by smtp.gmail.com with ESMTPSA id a3sm1092946wmb.35.2019.06.07.01.29.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 01:29:10 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, andy.gross@linaro.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 linus.walleij@linaro.org, balbi@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH v2 8/8] usb: dwc3: qcom: Improve error handling
Date: Fri,  7 Jun 2019 09:29:01 +0100
Message-Id: <20190607082901.6491-8-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190607082901.6491-1-lee.jones@linaro.org>
References: <20190607082901.6491-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_012912_567175_531EB6FC 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

dwc3_qcom_clk_init() is called with of_count_phandle_with_args() as an
argument.  If of_count_phandle_with_args() returns an error, the number
of clocks will be a negative value and will lead to undefined behaviour.

Ensure we check for an error before attempting to blindly use the value.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/usb/dwc3/dwc3-qcom.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
index 55ba04254e38..e4dac82abd7d 100644
--- a/drivers/usb/dwc3/dwc3-qcom.c
+++ b/drivers/usb/dwc3/dwc3-qcom.c
@@ -409,6 +409,9 @@ static int dwc3_qcom_clk_init(struct dwc3_qcom *qcom, int count)
 	if (!np || !count)
 		return 0;
 
+	if (count < 0)
+		return count;
+
 	qcom->num_clocks = count;
 
 	qcom->clks = devm_kcalloc(dev, qcom->num_clocks,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
