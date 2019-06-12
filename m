Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D2742926
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 16:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FKFBWEx5q7gdioubksHzfRV4OPSZl17eZp1bzQ6vcOY=; b=WwzxlSmQc/9MpsoNTEaHbi6WgB
	LRrmF9ExEI/wkPcWBrK2r34v7PzX6ll4t/PoZuRXytCQfnxrgd5Mxn7OUIaO9Z0LxqjiKlOFOULY1
	rKwWnkn+DMqdOU8fia24wB/RnhFpzlIyEWToWlI+WWntNEnFajvUpdbEM0u/9Dvio7Ba2GuSnPnn0
	azdlZYaXIkpQ55dNPQmOKr+kGHqkTARWT+vUmVr7E3Z85XiTE2JrGoRGS4wWACu0hL3aMjY8Phali
	dzdHjQ5hRVilREiC4NRrFWFuHNj5UxmM6nO/rmZ1335eKw6XYBHewKkyLl2kcgfC8HFe+lavIPuc2
	9YkkW8pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4G1-0007Jr-Cj; Wed, 12 Jun 2019 14:29:45 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4DS-0005Hh-BW
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 14:27:07 +0000
Received: by mail-wm1-x341.google.com with SMTP id x15so6806439wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 07:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FalRLEADzMPtGyW8NIPAA0F5olxzxXGnPVoGFb+myak=;
 b=K+P6qWGcKWtU/iGNHzOV9jjR+RXyRp8egtBtmeeUZNHtvIIVBJLVzsH3Vy3gAMuwgR
 Ao6Mudj+9wGNnHwdrOfxdgHdBdIcy5MyVOGRSFy+u/wbSjuIQHDF55F9J3zqhVi/3bzW
 5HtveVGkaSLRv+2iEeE0w1LhFjT4UWtVB79zLW2+qAbLhdEdMRRAWva9Df2T5N4cUgds
 7+g7+Wl3XKZO1rJ7uvAaX/LDxFQBwuJvjUCgufBdOzBsYf9UsfRDcBji+JpUDqmSS7Q4
 /AWCGhD4M9fDnPW+0gkmxkwUaYgWL72BfJzZ7ePa8q3MSEccMjIXUPf0b5gg6hRk1f2l
 pkEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FalRLEADzMPtGyW8NIPAA0F5olxzxXGnPVoGFb+myak=;
 b=alewMlgv0m59K9q0NPSMCdhzz3/nFXhQMTQwLHs6hWKDfPXwW82jHUif5nQ3TcCgfW
 UJJ+j4HNXK/jxNaMsgku5z9WaIjCYyp0npw3cB+b1aF/4+940NMa+Hr8zvlqmMFjoxFe
 N+8saah2q1MNPxR3ZZ/xu4x2nSDzWSmlZiC4iQ8R09W/pOuT9w4nekPUYgBUML+lfGOz
 +Gi5EgfaKqqde85neuA9TE229UnLhzNRSvWGZkIKBiuspEuOpFZi5PiC/nzzsORn42cW
 3JUFUhWxjabQZeWO6RH50muX6PL5/SdHaTjKe1rnZLPipUB/YO9dVmkhtWLLu8BbwEzB
 jMvQ==
X-Gm-Message-State: APjAAAUBbnYuTNUG4umdspsvFlyeJkFPOD/nCD7aDZuaPOEqXIrUQRn3
 UaDAvDy8P5LZOzqV2SobLD+x9A==
X-Google-Smtp-Source: APXvYqzjB8dEwMcpuK7RiZ75qjBQSuVJatCq0iH0MPFGa+TZG6aAniFlqCXSYhHK14VPYk4WNlKsjA==
X-Received: by 2002:a1c:1fc2:: with SMTP id
 f185mr23429895wmf.154.1560349625039; 
 Wed, 12 Jun 2019 07:27:05 -0700 (PDT)
Received: from dell.watershed.co.uk ([185.80.132.160])
 by smtp.gmail.com with ESMTPSA id y18sm203959wmd.29.2019.06.12.07.27.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 07:27:04 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, agross@kernel.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 balbi@kernel.org, gregkh@linuxfoundation.org, ard.biesheuvel@linaro.org,
 jlhugo@gmail.com
Subject: [PATCH v4 6/6] usb: dwc3: qcom: Improve error handling
Date: Wed, 12 Jun 2019 15:26:54 +0100
Message-Id: <20190612142654.9639-7-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190612142654.9639-1-lee.jones@linaro.org>
References: <20190612142654.9639-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_072706_423770_08D2F8FC 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
