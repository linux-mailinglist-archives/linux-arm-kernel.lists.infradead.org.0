Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BA235B9D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 13:44:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FKFBWEx5q7gdioubksHzfRV4OPSZl17eZp1bzQ6vcOY=; b=jLOOaKfL2ufVak0DDW9qVGgYFr
	wdBxPtUpkSfx2f9ZrqaFJaVsweCY9n5ryWal7307vambfwDsZeko1MwrcD+O3jVfy6w0Uas6cdYEo
	DnyRgWc2EIsfKsjDZH9tJoO5Z/4ubE0xxCIf2zrox6CJXEG/QifsGzyZ6fDONB8TiZd+1UvAXQwng
	NTT9/Rm+9SEzXyXUTX8oSLjMv2gDiGpiRzNOpB2DMjRPYQXgSMjxUvix9XSzlCbH05ne544MrbklA
	3RXe39kmxI57Z1kdlNXfEZRjGyVGvjIGyXaIvqGxfidOxrv9/l4trpCm1l0PaXL6jbTRAMA3ld1fz
	5KdicQSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYULD-0004pi-Fr; Wed, 05 Jun 2019 11:44:27 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUK4-0003Rn-L5
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 11:43:18 +0000
Received: by mail-wm1-x342.google.com with SMTP id t5so1935236wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 04:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FalRLEADzMPtGyW8NIPAA0F5olxzxXGnPVoGFb+myak=;
 b=QKMO16HzOa6yOl0TtOpHhtaz2SlgdqhYZJyTw38c30d4UIeX/UDQnVA2Q9d0ipicdD
 Emx8H2oabCuuVPEsxhBlwmfa+rkssHoxoqRU3YK8BQlbomqW5kzJbpEytzeiEhZgRzTj
 UuIbaCfiENidI6XCj4Q+ItiQk6OwNI+MlfHUM4Ee1wn3nAm4MbEgnWVI2SXMhsKUpm74
 uQFspWBHEtn7jRgazZmuN+pcHm22NJx+aTrImCUgcPsYActEEks62mCVCDgBdhq4xHqV
 aLwalHia+TPEdWi3LiXfCNf8Dzv+nwpo4e0Tsvy22vppNbw+xuPuEpZs6dyJHOhTwxZg
 pP/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FalRLEADzMPtGyW8NIPAA0F5olxzxXGnPVoGFb+myak=;
 b=cydBsyLCFqigzb1+ERzOhZQ5Lb6NBU16BuGeiMtirxQGZHKtyWyecyxeZcQ/+fA1SK
 hCQM/ISM54HE1ZgwH9/Sr8oWqNI8BETs+ER3RsdwURHfdtH2JceF+1A9XeAjjje/hPir
 JQaIWYRhhNpiL1Wh98xHzLAdRBxr1xTahT/HJr3dwlx4Se+Y9Ou8y1q6ApVAn+0an6Zv
 T8I97dhsLUDwRNPHwoXQBIf3YX9bj80nfe1H5prohWTzWhhih9qeEelmisthuquGp/5C
 gPZt93AjDgceUCl0pQMhb7ROQDrsN96f/c2587Tlk+KnD3ihj6IpC9rku4JLDxKQMev7
 TW2Q==
X-Gm-Message-State: APjAAAX+B3fAhyRENv/i9MpPgj9ljV9Qr1uQDX0kacpXzrRqtdnWufTb
 5QhJzpFzADQExY28rtbtUTcZ0g==
X-Google-Smtp-Source: APXvYqwEFvsfbNVarbCKn/CaPPWWGkVmIUJ55Mc+kqvQbIA3b9FWJAmPfuM+8mkgIFBS0YNQs5g27A==
X-Received: by 2002:a7b:cb06:: with SMTP id u6mr10100159wmj.170.1559734994798; 
 Wed, 05 Jun 2019 04:43:14 -0700 (PDT)
Received: from localhost.localdomain ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id 34sm27718740wre.32.2019.06.05.04.43.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 04:43:14 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, andy.gross@linaro.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 linus.walleij@linaro.org, balbi@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH 8/8] usb: dwc3: qcom: Improve error handling
Date: Wed,  5 Jun 2019 12:43:02 +0100
Message-Id: <20190605114302.22509-8-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190605114302.22509-1-lee.jones@linaro.org>
References: <20190605114302.22509-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_044316_907056_813DCAC3 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
