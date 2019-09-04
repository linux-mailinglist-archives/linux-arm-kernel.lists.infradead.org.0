Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 984C2A812B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 13:37:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+NekfyrCugGaYD89tdZCk1s1JyU6dJkXsObJag76ItA=; b=mkz/FAEbGo01LiRuXgJ7ATWJ1O
	m7em4i8brmPQg97gKRgbp3Do+gklinU5dMEagcxujKt/o+tZcxGG3tqW1CZLYecmtcCSg1kvVnwrN
	Xyzu9fiACBqcwnAvtto7XVJoBjjDM5wUOpZ+4yoMmyZuZdks2uhdPYlur/wBEgJcVDqdYUwdlNEHV
	Heqi82wAEPtpo+3Xx+SxUeyYZXV3aRf+QGrfPXkz1WowhABSrwTJsFXSeU44lh7dN5CZG55JfgGY3
	KWdBIcOYbuzU4mdobEIliqdH1o1scP3utTfgBxyg2bqzT+QTYerztiQpt8Rq/ogtDQDjUEizB0RQb
	IRRO5GKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Tb1-0007mM-8T; Wed, 04 Sep 2019 11:37:07 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5TaG-0007b2-CI
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 11:36:21 +0000
Received: by mail-wm1-x342.google.com with SMTP id r17so2315198wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 04:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Uuq1eCLagqB7It6aGbezur+IR8biDO9SazdI7cqdaFI=;
 b=qp0yJe04jx2ivZeuIXUwlhAyXXeFSfk5tgqH6oCkHR05lDEik9mPR5v9927SPGcRcF
 Bqpd9uYWbP1lsr+hb7QvkpYLluhnrev870vk1hyz6CstDwPiqkr8mp4/e4g5uP5dShX8
 xdt0ym7tbVmwYwx2pgRVRGsEZ8C1evHUk9FGitl/8RMxdTyfqj6zxtwcIzKPbnKHu2ay
 q7f/9kZ1lQ7dZpPPtuumZ9QoFlwEHWVriNgD+6IQtn2ystKcFOD1L8ahTB72/zQlOPjj
 vijaYPmPpyVFjezLg3cx8drAtt4pP5Fz+cYk5fH1mE2O8yX+nvUAM681Qx1ltYOUjSXv
 zQLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Uuq1eCLagqB7It6aGbezur+IR8biDO9SazdI7cqdaFI=;
 b=QGbYd+wKPn8+k4Zi5Q1+35rkVZEEaBrWj6JUolG8LhC2aBlaOz8tHkA5TrJxyauQ/Q
 OLMnGyagWpdVmUCEi8d3asF/cHsktvvaRVUXEc8ZTwE1C1h7HY+RgNCs+LIuBKf826c7
 PGCu7jEr4CUg1DeJMblBKP1OaoPzD0gZIH6lUd2c8jW/RKN1ZKIgjAe+nfIyv2x4wyJm
 hqs2+xLD37ZcLB8DWsjfTJO4Q8t6jJJYq1rvBX0BVAKMPsBIKBO8AZVzTPx2DhWkB3Rp
 wk7f+QdHOTDhz4D8fhBPLbARamSxfS9/DZsjC4Cpqd0ezNHfm7hpMSIhRFX4YlqKlUS3
 Bn3Q==
X-Gm-Message-State: APjAAAWH9KGbO3g7EFUNIBQ0UuFJgwUL1Z2OY6wx9yIGZNUtl2YDv0Wv
 Kx/vVcHwCx5oNmSf8PwrBieMZA==
X-Google-Smtp-Source: APXvYqxrVXn7NXLmsW+n0aD02675Wv9vt7hSV40SwdLs0RB8oNmnK6HhJ+4q7rd/GnqwtFaz3fRPdA==
X-Received: by 2002:a7b:c8ca:: with SMTP id f10mr3812956wml.36.1567596978030; 
 Wed, 04 Sep 2019 04:36:18 -0700 (PDT)
Received: from localhost.localdomain ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id d9sm10823933wrc.39.2019.09.04.04.36.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 04:36:17 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, agross@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, bjorn.andersson@linaro.org,
 linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: soc: qcom: Provide option to select FIFO mode
Date: Wed,  4 Sep 2019 12:36:13 +0100
Message-Id: <20190904113613.14997-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190904113613.14997-1-lee.jones@linaro.org>
References: <20190904113613.14997-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_043620_416023_4B11F28E 
X-CRM114-Status: GOOD (  11.09  )
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Used when DMA is not available or the best option.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.txt b/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.txt
index dab7ca9f250c..b0e71c07e604 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.txt
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.txt
@@ -40,6 +40,7 @@ Required properties:
 Optional property:
 - clock-frequency:	Desired I2C bus clock frequency in Hz.
 			When missing default to 100000Hz.
+- qcom,geni-se-fifo:	Selects FIFO processing - as opposed to DMA.
 
 Child nodes should conform to I2C bus binding as described in i2c.txt.
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
