Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6539E74BFF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 12:43:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQimguyEzMl9QuXOspvERJ2rDr+IAvuDQiiwaH9U6WE=; b=Umb4NTw3aFxsJ8
	/+wMheIFquCgN9S6J9ku7IbTTE/caPn63zeAo7H1J7tJVhRulvFaNG/1Lg4OM3LZsSS9K+ZF4Dfj1
	Ra+mKGqMUJQmCXFhlwacwrZlknkieBIvOdEnDiGApq/271SwiJe+ZYwLrNYT+mhNEkiKQLpyWhcOo
	0ZPsm2DH/sCaI4NgNFGNlOKfZRCYMYWLa2b/3nBmJAeOJ3qb9ztnhZKRPInUxMVJGrHuwdkcyDcbx
	eWwgYAmCXeN+QjdaPWt2LkGfS2/GIY2ixT+V0OcRh+rb65K/sNZCgKIJXkeXrVn7WMsMDESQTyjAA
	k6+PLjgRKOMGW7XG2V8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqbDR-0000oS-T6; Thu, 25 Jul 2019 10:43:17 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqbDL-0000nt-9P
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 10:43:12 +0000
Received: by mail-lj1-x244.google.com with SMTP id d24so47506766ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 03:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bqNWMnLE1PbsRnnTAlLi7jFwRUSXzMghW6te+X0yZdo=;
 b=Xll25p++OSqUympG1TKAn42FqQmeQWteoSD9URWb0ZedI4gKc+AC8GxyAuyEyNGFPt
 UZWbhBuSrtRR7sE7rXD19EcJT1aM3eMGJjGDenIhA8ya5vlewXcjoDp9Z1PvSdxHQnVg
 IEvOQecMvRMrMlV6fWr5FgGMhqMD8ToEERkByq8y+l3qtMByjjsGEwEqEVXTd4Prh/hF
 UB4OvljqaxQN6wHo2oay2+mQ8aBS/12QTCGDY7y/Bukv7b4Bhffgz9V9mKJB5wQ1/u5R
 YppvvAta56I7A+RsLGD5YxDcLSNVH7jOb5rEwdbF+TqlQ8wshQJ5oZ+yN0Yi0eFPpiR8
 +caA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bqNWMnLE1PbsRnnTAlLi7jFwRUSXzMghW6te+X0yZdo=;
 b=eULxcfwgHmLucMlWWLbVBL+ML2X2lIFHYWmgvdy0geEZkAvAAXrJyxwOGtMiqoFQkf
 Jz6Q+z32EaCuzfK4AC7PcpycMSILhODVAhxnuUm2SEyZ9RPER/AMW42OIjzKXGTS6NB+
 5PoOMaatoPoVyUsOWMhkKcIa+8JJknsXLa8ScP+TehmzmEU7DH8MIpjKEICCDQhSZ7VN
 COy8VoQ6+o5QSLT15h8+uThA2M3/iVb2FhYx389GD7u71crBU3xNtdoHBeyOpf1KC3GY
 A4/7wNj2282YMoDr1tA0FPUisJA5Rq4fUUVJL/RYUf65LlS8jX/dm+biqrh6zQYPrSaI
 Qdbg==
X-Gm-Message-State: APjAAAUJm/ABSA8WJt34Ed+9Zz/nj6UdK5DC6/eth0PV7NFy8X/prhtz
 85aSpZiD+IbHbpYGwRoEkUhvDQ==
X-Google-Smtp-Source: APXvYqw5L6FlJHspttdMFLkgGxIyc8rrEJsJJ2fVabq6tJ+1l16Yk1HyGtXUmge5MbAWqs8jf0sSRw==
X-Received: by 2002:a2e:9209:: with SMTP id k9mr44596234ljg.96.1564051389696; 
 Thu, 25 Jul 2019 03:43:09 -0700 (PDT)
Received: from localhost.localdomain (ua-83-226-44-230.bbcust.telenor.se.
 [83.226.44.230])
 by smtp.gmail.com with ESMTPSA id 63sm9139580ljs.84.2019.07.25.03.43.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 03:43:09 -0700 (PDT)
From: Niklas Cassel <niklas.cassel@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 13/14] arm64: defconfig: enable CONFIG_QCOM_CPR
Date: Thu, 25 Jul 2019 12:41:41 +0200
Message-Id: <20190725104144.22924-14-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190725104144.22924-1-niklas.cassel@linaro.org>
References: <20190725104144.22924-1-niklas.cassel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_034311_326130_3BB9CEFD 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: ulf.hansson@linaro.org, Catalin Marinas <catalin.marinas@arm.com>,
 sboyd@kernel.org, linux-arm-msm@vger.kernel.org, bjorn.andersson@linaro.org,
 vireshk@kernel.org, Niklas Cassel <niklas.cassel@linaro.org>,
 jorge.ramirez-ortiz@linaro.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable CONFIG_QCOM_CPR.

Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 04b7fb26a942..3e7618818250 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -420,6 +420,7 @@ CONFIG_GPIO_PCA953X_IRQ=y
 CONFIG_GPIO_MAX77620=y
 CONFIG_POWER_AVS=y
 CONFIG_ROCKCHIP_IODOMAIN=y
+CONFIG_QCOM_CPR=y
 CONFIG_POWER_RESET_MSM=y
 CONFIG_POWER_RESET_XGENE=y
 CONFIG_POWER_RESET_SYSCON=y
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
