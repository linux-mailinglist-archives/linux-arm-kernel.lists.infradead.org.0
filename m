Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BF1344B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:46:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dFEoDPJftjCLqoS/SNoIG3abih41BVFIpXASrKMfbS8=; b=FWx+PhNjonIf+eePEPWRzwctew
	ZoS31vrKikKhDy/dT7pe9XCF5uxNjXhuBYQifZoxqj0r0T3TixNuniFCZPESCZSfLSuCZu26DpOKm
	ZOxZw0//n7Mhzsul41KbAKHpEOZAoIoLvBSii7mH5yWfdX891DpH7PExvUlcKDrdheGvIQZp8Ozel
	JWgtRtfeN2mUkG7N0vygQAIYZIYtwUosPOtCozu63qtnG/34k9qFBHGWgnrqGX8GoKGsX2xW+P/Gd
	hxfZOs0ofOvfea/pz9E6GCRRhCJ9+ysAyw+qu+9lvMekci8e/Unkit2xAaR4qWcgoFWIXBJdjXjfK
	t4oH6mjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6xX-00027W-8Z; Tue, 04 Jun 2019 10:46:27 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6wG-0000CR-LN
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 10:45:14 +0000
Received: by mail-wr1-x444.google.com with SMTP id o12so8157170wrj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 03:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MkGVFZY1XhtlH3EXbDSeWCPiZrbaYk4zwPdOeyiIsNc=;
 b=hljw8RsTFEcbuplHCj6D4tq/5nIpPFTXoAK24WDaO16R2lM4A4tkIl52AnrPf6JXw1
 gT3EjpICXK9lQrDnqMtsHhdKD3i45MO0tlSwTZkOGsLnygeqnS1GEq42hVT5+HlqpNGw
 T+gYf8t0vIU7HSEAEdNBmet5opXalvHQjYcEdfz/km30EDtQQfXPpL8nTAL5/46rMhak
 gMuexpRELw1yz4AqSHcBpII97mOzlQXjdBv9q9uxJg0vY4L2Wkz4mWfTGT41kUyPjWyf
 oCCUVzTVMMLzv8BuVscDTyHO0HMHqetsCPsptCOLxfHbS+xv6PqNZFqqiN1cTF5Ezas/
 RETA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MkGVFZY1XhtlH3EXbDSeWCPiZrbaYk4zwPdOeyiIsNc=;
 b=bZjqmtv78hS5N/0DKZcT6zc3HYAQy9p0jLQwAXu94ifv7+0endVlG38r7MvKlyVOMH
 ISS8eSGmRxz3QZGsj1WdbZiogN0oQA72LPkMi3tDdYvny6IIBweXLtfXZHViNRggYPh0
 zQOgj3rA2EBlSm2zu0y7AZ5POxqRnkacf/iCqXbqUPzN/gfrCj7Aw9jFx72tkq15knbi
 ihqYtFsYUEPePxtRIz05tGWv5o0GCfJezux3tiqORgtzrzD8zFUHDY10S7VcIoLPmv2y
 KDpmvOYi9g56/+dgXMUlrWLsAeHzcJUzyieWyTT5H8Gny6qy/JKPulTe1BigdKgfdO55
 XINA==
X-Gm-Message-State: APjAAAX2kJP2g0UdPc/16WXy5g2WqfHcXTuK5e3Q9zLZby93feYfrHRN
 VEqTNblON/ebYGYZNgSEt/u9nQ==
X-Google-Smtp-Source: APXvYqyK+bgytdW+OPwhr0ZBevMVV7NDVd58ezc6owb6wL4UOd2DK/LWci6dPsr3n48XMl5sTrJS0w==
X-Received: by 2002:adf:a38d:: with SMTP id l13mr13613323wrb.187.1559645107190; 
 Tue, 04 Jun 2019 03:45:07 -0700 (PDT)
Received: from localhost.localdomain ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id t140sm2718623wmt.0.2019.06.04.03.45.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 03:45:06 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, kramasub@codeaurora.org, andy.gross@linaro.org,
 david.brown@linaro.org, wsa+renesas@sang-engineering.com,
 bjorn.andersson@linaro.org, linus.walleij@linaro.org, balbi@kernel.org,
 gregkh@linuxfoundation.org
Subject: [PATCH 8/8] usb: dwc3: qcom: Improve error handling
Date: Tue,  4 Jun 2019 11:44:55 +0100
Message-Id: <20190604104455.8877-8-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604104455.8877-1-lee.jones@linaro.org>
References: <20190604104455.8877-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_034509_015652_7E10A2D4 
X-CRM114-Status: GOOD (  11.74  )
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

dwc3_qcom_clk_init() is called with of_count_phandle_with_args() as an
argument.  If of_count_phandle_with_args() returns an error, the number
of clocks will be a negative value and will lead to undefined behaviour.

Ensure we check for an error before attempting to blindly use the value.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/usb/dwc3/dwc3-qcom.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
index f21fdd6cdd1a..633482926497 100644
--- a/drivers/usb/dwc3/dwc3-qcom.c
+++ b/drivers/usb/dwc3/dwc3-qcom.c
@@ -419,6 +419,9 @@ static int dwc3_qcom_clk_init(struct dwc3_qcom *qcom, int count)
 	if (!count || ACPI_HANDLE(dev))
 		return 0;
 
+	if (count < 0)
+		return count;
+
 	qcom->clks = devm_kcalloc(dev, qcom->num_clocks,
 				  sizeof(struct clk *), GFP_KERNEL);
 	if (!qcom->clks)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
