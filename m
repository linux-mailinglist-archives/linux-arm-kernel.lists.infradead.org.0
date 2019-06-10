Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B5D3B0EC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 10:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dz/GB4TGeOzLq4iiOj8GEVOtQavu51VxpukWk6pv11Q=; b=HJMjtOKJfQog0MrHnX3yerVb2A
	TjlZFUqDFVvavj927Pdsd2aoJH20zTiq7R6jdIMPVc9K90iIvek/RGrrkMN/zju+qbHFCI0Qr2Xsi
	W7hbLA9AnxhySDvDploQlV7fXsju2Q0G7KhLKSI7yqg+ml8CJhFZGdEgAIxIKMjTPCURTwklxxmfL
	Z0S2CZUsWZ2mMhgp61LLYB+rIs63ay1h64AMif5YwHyBFDKVSkRueLFhgImsG3T/E0u72GK027Kk0
	tSyxDLrCH+dQCfxFIZ9D7bPuj9auT6crJeK4PCj03MBZ/GN2pgb/f9Sj8opa24NqyLn2jHxZ6oFCv
	OaFRQgaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFtG-0002RI-4l; Mon, 10 Jun 2019 08:42:54 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFsg-0002BN-QF
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 08:42:20 +0000
Received: by mail-wm1-x344.google.com with SMTP id x15so7613530wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 01:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mEH54ZZbXqjz3IZT5KkSbAecLvKUPwRnXivpNaH2j5c=;
 b=a2GG33XgJn18Yol+PHCleaS0zfozddU3pDxE1VGccaW5e5KeVgXCQOZG45tjtfIcaC
 Lxh5LFI6v+7mSVN/0absvabDtYraYaClMC0Tox8yizarBHRZs5MMT7o+bwZAkx+UYwjc
 gn+dIt02WuGoIQ96ZxrJl58wiP7WJ81xUZFPZPNaBg1wxnoIeEYCAxMT/iFUVXuCYnHx
 bgfE+tWRBOGSJHQBya+sXoyJclZs/lcZZa354GRxGDtOM/PZh/447J170T9AjMgOaYBB
 +XsGQbBGjNMw9PD2U4ouSEzKgUYuRFUJi8Zjv+NXPiv+HQ26SXZwRdLnAsvct3gWghyD
 Ugfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mEH54ZZbXqjz3IZT5KkSbAecLvKUPwRnXivpNaH2j5c=;
 b=gF24C3RUrO7CyoM1qOJGeB6FyAeUuzzN72Y7x8eK9V0S3Td3gSFPc8ZqYkGw8iiKJ9
 JlQKFPr/L2Rbbxlm6R2+W2rXaTCtMlTiCetQSEK7a9TK8cdBYZ8LOeIDnKp9nfPzNB5w
 3VcV1rPV/xvAjVFUIErLuMbcValCOl8aqpQRv7XqAADsvCqdxvXaPt/A5CpNJM2VqSiO
 vRdsfbWu8SDjdPYE8Qb0Mg0qlixrPaa7BVDZxLV/xtiwt9ex+JZvYGg1orkrvW9gUrjC
 VSG06rHCr7xIbCpqMrklY/Sj/JRItvWV06O6zWIFareIfakhx6sicJsW3sRU4sw9itBY
 e/Ww==
X-Gm-Message-State: APjAAAUAEcQAnBBzs3orxeUtEKLlNchWisPTX6O0pJztCkJsIoP71vrr
 zjisN4/Zw1BemhBZzsZkGsyL/A==
X-Google-Smtp-Source: APXvYqy3EzeyzafpMZj28AeifpAxvXD7SUfAmQ4kAAkAt5yEYM9MwQsajAgi24GxBfJLBR5Hah0Qrg==
X-Received: by 2002:a1c:e356:: with SMTP id a83mr13188870wmh.38.1560156137485; 
 Mon, 10 Jun 2019 01:42:17 -0700 (PDT)
Received: from localhost.localdomain ([2.31.167.229])
 by smtp.gmail.com with ESMTPSA id a125sm9929670wmf.42.2019.06.10.01.42.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 01:42:17 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, andy.gross@linaro.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 linus.walleij@linaro.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 ard.biesheuvel@linaro.org, jlhugo@gmail.com, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: [PATCH v3 2/8] i2c: i2c-qcom-geni: Signify successful driver probe
Date: Mon, 10 Jun 2019 09:42:07 +0100
Message-Id: <20190610084213.1052-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190610084213.1052-1-lee.jones@linaro.org>
References: <20190610084213.1052-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_014218_849078_9699828E 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

The Qualcomm Geni I2C driver currently probes silently which can be
confusing when debugging potential issues.  Add a low level (INFO)
print when each I2C controller is successfully initially set-up.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/i2c/busses/i2c-qcom-geni.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index 9e3b8a98688d..a89bfce5388e 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -596,6 +596,8 @@ static int geni_i2c_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	dev_dbg(&pdev->dev, "Geni-I2C adaptor successfully added\n");
+
 	return 0;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
