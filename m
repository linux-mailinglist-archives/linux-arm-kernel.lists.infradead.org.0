Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 698B515836
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 05:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cFWPYfBg5jK/Mevyi5RW64DEPA0sSpMsm2XtNI1gbV8=; b=WlVSTFUiVVAxHOTkffoJXFH/KV
	FjEro4TwEblI1APYb8Al34JxPrO2gEsBDqm67YoCZrF9OVRpwEdNTi8cN+jjqLn33ZWXCRAdk+klf
	SrjtWIq6QOyunTlk1K/SxJvFk9b2+Y9/4zIvlcq6uTVwzPTr2CsXAQS1CHq3hbKpL49zqTWQuXc4v
	24v46mSQBDg/xvvgrxINjOo8C9w91ate2NyWfvGM36AvkkSnq95FYOmeGnJx7uXx8AlDU07P5pc62
	73dSyJmfrXvJynuCIA8mrtwbcEowzbG4tE9gsdpx5NnNaBIf3YgkKDwbzTXS8LpaK8MFOwigyq5xj
	iY+n8SEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNr6k-0006eh-1B; Tue, 07 May 2019 03:49:34 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNr5n-0005dz-Q0
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 03:49:12 +0000
Received: by mail-yw1-xc42.google.com with SMTP id j4so12109955ywk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 20:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=U+sb0l74dYf+e6wv7KCvPPh4Ue1zOXJaqtEX+4xS3MI=;
 b=RFsuMQFE5Gx/7tCtv4y65j398M1FRiAtxadZCF/I33Qp3mcxAwG/IGiuRQYgc7q/VO
 ee98ZVTkPenGV59oZC/8SOI+6TFgQ0DrBd+jQZPB9IiH8w5pWjz3HpO+O4/SCr79xJ4s
 tE5zafmYeO5GfycB0m/OOWoBEmyVM1hSz24+/PBps08Xt2kSKKdWVflSquFV6c2WVTJI
 VET+h7aeXSU+g0eMbbj28C8RKxkC7JPKTbGWAGJ035PeM5BZSsjdTPlh7bUmMaf+90bC
 pwfpkQTLIRDrEKv83QhFSIn1kA6YgpDvTXNEq1Gy39SS8NU6JIVGejJJVywr1ImzR3EK
 t9Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=U+sb0l74dYf+e6wv7KCvPPh4Ue1zOXJaqtEX+4xS3MI=;
 b=gQBsCoqoiPHpSTQPnqROSeUZH7SEZ7cO7cC0Xhc9V2JiAcAUYGH9/j6q+DRNntUpHV
 Hy+rp2KW+2OiRtNrs2lRopT6Aojqve847SBksopk7kNsd0GtS7HcEswTJO5CiqZ3udoe
 3C+tDaEJ62clGcM6ufaB85Mal63Qa1YyK1RLYlP2EY+1Qp41c+nDuNNxfsMjw0T74JzX
 TBMlooa0brLRfSN1d87hptu9hVPn+OsVAd+u+SHlnv8f15SKBcvYQ4dQUMlJYeznVzn0
 ZYVn7ByYXOwIJ9JIkpzfxEK9bC4ncbUhhkzEjMldFxrVKiD6xVHinF/FoV8e2HwDQhUu
 Fgaw==
X-Gm-Message-State: APjAAAVlA7VB//OtWdHDFurUp0XTdO7fHe/qQqjeWeBAL26nzHyNQhjV
 WzmcJS3qJAiNT+ryvdwlaDsEVw==
X-Google-Smtp-Source: APXvYqz6JTEuKIzG24EAXwqg2/iVxKcjs59ENkSjmYj9YH488FfEY69EjYosmIEMFaXpJapTblSSPA==
X-Received: by 2002:a81:8545:: with SMTP id v66mr14184754ywf.159.1557200915019; 
 Mon, 06 May 2019 20:48:35 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id a205sm2120383ywc.105.2019.05.06.20.48.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 20:48:34 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 08/17] ARM: dts: ste: Update coresight bindings for funnel
Date: Tue,  7 May 2019 11:47:25 +0800
Message-Id: <20190507034734.20622-9-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507034734.20622-1-leo.yan@linaro.org>
References: <20190507034734.20622-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_204836_466290_4E9C53D5 
X-CRM114-Status: GOOD (  12.99  )
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Lee Jones <lee.jones@linaro.org>,
 Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch to the new CoreSight dynamic funnel bindings.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lee Jones <lee.jones@linaro.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm/boot/dts/ste-dbx5x0.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/ste-dbx5x0.dtsi b/arch/arm/boot/dts/ste-dbx5x0.dtsi
index a8c20f1bcee3..4bdd247b9534 100644
--- a/arch/arm/boot/dts/ste-dbx5x0.dtsi
+++ b/arch/arm/boot/dts/ste-dbx5x0.dtsi
@@ -98,7 +98,7 @@
 		};
 
 		funnel@801a6000 {
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0x801a6000 0x1000>;
 
 			clocks = <&prcmu_clk PRCMU_APETRACECLK>, <&prcmu_clk PRCMU_APEATCLK>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
