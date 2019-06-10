Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 934E23B110
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 10:44:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FKFBWEx5q7gdioubksHzfRV4OPSZl17eZp1bzQ6vcOY=; b=fhKQZVoklHmgYEdl6jPOX2vVXd
	sB45IMU75NcKSzn4r8syDu31LBB3Ngc5TH3dl9n0chVJohud2vCxZiJ+HGcuwS60bCVj+hlBsc5qL
	wYCrxoRCe75bh3nDDng7dcndhFN467jb0CasfyUvpW/62WGDIGTEZMN+tCDZgFSW2HmNJapbHVEog
	L/Zeai/TFjHfhnZLJKAar17vhPIc9hW2yL7E3DvpBNXdNbhmeJY5A6DdalquZPkuZMZXJyR27wT9g
	knRHZiW+ibc1f3MHFcO5bC6v3r7b8vnD8ctNlOd6X7HmTXdp+mKcaam8JSjZRpqGgCM2Lqh6amFGN
	8Kx8H4OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFv9-000435-U5; Mon, 10 Jun 2019 08:44:51 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFsm-0002GC-Ow
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 08:42:26 +0000
Received: by mail-wm1-x342.google.com with SMTP id g135so7608104wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 01:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FalRLEADzMPtGyW8NIPAA0F5olxzxXGnPVoGFb+myak=;
 b=ErpuCgIKx7tdIhXc0Vgq27YYh5IdzYS8ZROzqkhZo992Lvnn19vfhbIqZzxfQ10161
 q/yb5S3UOlu7jVewR6gPOHtopPzH2mIm47P8H5DIDXJkkAvu/fVLeYL+XDHodIfbmI/Q
 CKa9e4AABXjZuSQiUwSxAL/oBnskNHq1jEInWN4Q5Tp+sQdhRKsiH2TxkMt482GTBNR7
 aY1rlYW3/QXDuFLndlbV2tpu9/XuFDuowc7j5gTlPoBAZBoUbY32p3JHHxZM6+39iUMi
 I88QsPzhpoQOgqfRr4ELN1VJv09S0GcBFZHzKYKYqObfTb0uzFEHbnk2tmqKPOZqSUBm
 gHPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FalRLEADzMPtGyW8NIPAA0F5olxzxXGnPVoGFb+myak=;
 b=GP7XN/mhmPaxAW8XZ8nbsS/I3y8PMnPQ0eSIzpdPyKzpxO43WtN8s8Ya1cE+B8jmk/
 hCyuXs3Tdb9pfzBTEali8Rf9FaP/B9nkOB4cJvUUqU2qa6Rfi4OeC9dQ3o9idSTvoEbZ
 IGCU/zEw9RRIxDy7yBGRYvE9l7w9pyVFxP60HZHE5F1UUcaxLXIs4dLSNcFTR2hTHFTG
 MDaNpW6yV0WJyPje9nSBR44CCP15lj+3NU7Nwi4yRz/KiIv8IT6gzPowmVf2WFTEev6N
 0+b8ceTPvb1PQ9Egsg0mJVwJan5z7CTKOJxfVSosOTuWlHfO6y6k8+/9/mloA6J7Jx6t
 5Efw==
X-Gm-Message-State: APjAAAU2UXuQDNOToCERzvzOurISFDiJOQZ11FWsyZopqQwdZX3ozGFc
 hN7mEJ9FGiHZeJ6LQM7jV6pNtg==
X-Google-Smtp-Source: APXvYqyC2APpf/zAbitrU/BjHOuyVW/f2vbj2/AUhh+FVA31orPg+ghJwVZnl4+ZvUlYkGglrWpA1w==
X-Received: by 2002:a1c:35c9:: with SMTP id
 c192mr12941297wma.147.1560156143556; 
 Mon, 10 Jun 2019 01:42:23 -0700 (PDT)
Received: from localhost.localdomain ([2.31.167.229])
 by smtp.gmail.com with ESMTPSA id a125sm9929670wmf.42.2019.06.10.01.42.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 01:42:23 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, andy.gross@linaro.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 linus.walleij@linaro.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 ard.biesheuvel@linaro.org, jlhugo@gmail.com, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: [PATCH v3 8/8] usb: dwc3: qcom: Improve error handling
Date: Mon, 10 Jun 2019 09:42:13 +0100
Message-Id: <20190610084213.1052-8-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190610084213.1052-1-lee.jones@linaro.org>
References: <20190610084213.1052-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_014224_834214_83258A92 
X-CRM114-Status: GOOD (  12.40  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
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
