Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9151583A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 05:50:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zEw7dY19ndIkp0nxFFQoi5h4MUSV/sCy2yK94INZL2U=; b=oeXEl1Is57t88KPRI78q9m8Xkh
	zzSEhdM9e/iJG5T2pLlaY2dPKIjNr20zEgoKtgqstwGz4Hvh+r0lp1mRV3spLMnMGM4Wv1xaT8VK2
	yk9Oyyerf0x1oUBSiSBUm8DnJGMofS5B743Y4S76TZMe7f5ba6Cf3O6oUtFVUaBoB7QHY3eHv3rf9
	9bzGem2UzsSzqbWZdm00QUTWTwrnkdqBJVmDkw1AjSzJGlcl6kry2pcDUpGq4uK/U6I1qfIJa3C+q
	hgrGTKtoPQdwylThE5viLxjLlK1M1koJuOqEZLdJksf9Mfvf0zA/Kxdr3Yk3EPCzDbgCn8nCMrcIf
	CO2lO3gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNr7K-0007N3-HC; Tue, 07 May 2019 03:50:10 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNr6A-00067M-9u
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 03:49:22 +0000
Received: by mail-yw1-xc42.google.com with SMTP id n76so3499444ywd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 20:48:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Kne8hZP5U5wfugBDcCmjQG0E8SePWE38nfB1j9TRS2k=;
 b=oQq+m+lrnxf8oQHlUJj39riKU6PqYqvD9g4iaM+aQg3Cubc6HNobM+567J/yRuOzIC
 c9xQSj2fIUg9w2LxlpTX3hOCYo6ht01a1DkcMXBtk0/LTo+RmEqZaGcyOK7lSUkbt3gK
 xHBuUkHQxd4hQPx0o5zFJMiT+MO1lR9vRUvSv33wDZg0YnZkoz3YK0P6eo6RupMRAH0T
 mJB06ELcYTBdQzu3ZRALDuyQkfoDLWM9xnvypdp8oa7TxJf+5tGI85X893iikC1YW7/s
 MH3CRbG2Yp/B1JdfzF1HH8PMN4Tq7RGyrHQzU1n9x0D9bwEAZSkiXDw0zkJ7lZ9AdArW
 wpRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Kne8hZP5U5wfugBDcCmjQG0E8SePWE38nfB1j9TRS2k=;
 b=C1RiJunfBDVK+zA4Im4YC4WAwrPw2eBvj0yJ5YskoMDraSpV7/KNnlGC/sl4RMPQPZ
 hVFBunxXnldkDiuzh3AWQWo8seEKdvreXYEurovm1TxWSQsj2V2EMqia+ktoGTHAnRZ4
 8Bj9wEkbjnuRORlw2/1pmKAcJEyBG/z2BPV0CQy93v1yxVQEXOeWmPablu7H4iJLuUqf
 Agc3h5EjMUw+D5XW+Ys9F4YGPQHd7ngTi5GZPwZLHEJ7FQTo0I1C3QgP/EtvuTT6PNiP
 Vik8TfmDNQ79E1MCN0R1o3L9zkx+8UumNSXMBOytJrdNzB5SXu+jQNDHQAHj0MdX7ySg
 pl6A==
X-Gm-Message-State: APjAAAUksr0pPGsbdLHrbt12GSPn0y4mzJFix5PEpFM5C/t8yTAIf0cA
 wngZkTe6lKWHxoUBYR2P4880pg==
X-Google-Smtp-Source: APXvYqwHi/mckuW/CMvPQ4Z9LUr3JBaty2LcvOd7RHhBtx1XW5n75F/bRCGZsApSDPhoi7CdwNfmrA==
X-Received: by 2002:a81:4d8a:: with SMTP id a132mr9947699ywb.326.1557200937565; 
 Mon, 06 May 2019 20:48:57 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id a205sm2120383ywc.105.2019.05.06.20.48.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 20:48:56 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 13/17] arm64: dts: hi6220: Update coresight bindings for
 funnel
Date: Tue,  7 May 2019 11:47:30 +0800
Message-Id: <20190507034734.20622-14-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507034734.20622-1-leo.yan@linaro.org>
References: <20190507034734.20622-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_204859_093719_F003C7DD 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Haojian Zhuang <haojian.zhuang@linaro.org>,
 Zhangfei Gao <zhangfei.gao@linaro.org>, Guodong Xu <guodong.xu@linaro.org>,
 Wei Xu <xuwei5@hisilicon.com>, Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch to the new CoreSight dynamic funnel bindings.

Cc: Wei Xu <xuwei5@hisilicon.com>
Cc: Guodong Xu <guodong.xu@linaro.org>
Cc: Zhangfei Gao <zhangfei.gao@linaro.org>
Cc: Haojian Zhuang <haojian.zhuang@linaro.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi b/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi
index d87a4fc5d6c7..5a34217d823a 100644
--- a/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi
@@ -15,7 +15,7 @@
 / {
 	soc {
 		funnel@f6401000 {
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0 0xf6401000 0 0x1000>;
 			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
 			clock-names = "apb_pclk";
@@ -133,7 +133,7 @@
 		};
 
 		funnel@f6501000 {
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0 0xf6501000 0 0x1000>;
 			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
 			clock-names = "apb_pclk";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
