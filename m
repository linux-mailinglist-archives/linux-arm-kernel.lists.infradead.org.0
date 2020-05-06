Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6061C6E88
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:38:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gKiE2+YTHFxUh+jEkbk3pRQ1VkTy2z6DtpV1sM6bLBs=; b=rWHGDsWsIn8+NzntZHZtjX2RGv
	oyPkeIkYFoQGnfqZ/IxZG23OxWv950y/MC59c2ADnzQ6kFBnNqMJmaUUZoRWB+rTDetTE4+TDZEzk
	ubV+20m05mh7qaFuhARscoBAm1mhQVxwdHFh33X8R6wAVcAoMrge/6gM+Kith89XpCTu53Rwhd5Pa
	+nMvccq9qSCC54tRikljDA5uWCU7qRU20ge8w0EbU24MP1dvs+zRnDisLoIdkyr4WXJa7EGpscPFp
	C2csAp0NQw3ea+tTWUKCwhI7Nxw+wEHMW4mj4kmGJwRSDVyLMHYNuBjokqvETsxW4AlPsJpRgHPb+
	Z66TOfSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHRF-0006xE-8j; Wed, 06 May 2020 10:38:05 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHQ1-0005zO-Ct; Wed, 06 May 2020 10:36:52 +0000
Received: by mail-pl1-x642.google.com with SMTP id x10so321110plr.4;
 Wed, 06 May 2020 03:36:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vEDmWehMN/OIIrM/DKtPb1UlmBRTwVcciQ9VU68K/2M=;
 b=ryLcfp51SykLd9eefw2sS9ewCxi+++Zq5sX+EjkbRb7WOUQ1qANVnDpeQmvvde/GVw
 Ccxp+sXYLk82A+UuVx1FAN7GKEwl9ozaYECReDZWh+av7GNTvC+7vx98bSt9sJDw6T73
 0STo/RwhuSm/UdmKfd9Syn7YsZ5DAsFtZNXJJMi3wirfJ3WR6X9ed8m4j6nceNOjR+t/
 3XofwEa2xMwX6Ma6CJMMPxJYwIOjhiiO/LU61iQywxHcZTaXHPCDPJ7J5j8Zn31AwdNU
 j/RL5soUEBHIIfELLknip3S3wqiOX8C+bfhGNet8LpLde4PWw8YnSPzB6e8E9/hTUQAr
 CgEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vEDmWehMN/OIIrM/DKtPb1UlmBRTwVcciQ9VU68K/2M=;
 b=oAZu/VP14+Y3/rLnB07Fql+kAkltL3vj+CdjTYcdHq5+PXMnOMdio7heDIUEBQjYIS
 PQlFAB0CP+erACqKApVTmsxIgi7JSWDoMnJSoDqkf8MXCP5ceJWyX2OIMSAxl0ZXWqmj
 5iDInc1l9IFWfb5YQFe+RIKgt+VjdUp8nRforWxhB9WwEUfzViGEyyH2TeL60xSnuzbg
 dBuH9yKUbnrV2JbC/I+17mVP2KP7rI0cM0br+SWRWNtflfo/VDqq32u0mDwJ+PjOSirY
 eS2F4wyDp9U11V+n0+RBKOVamAZ+X9AJkr1grF7aCJnV9HAc2VRs4wKU5MQJ1idqu0C/
 jpJw==
X-Gm-Message-State: AGi0Pua7zXMTGER5pMkrsp8+2jUdrcuE1EWEb0pyNDv6dGk9NLCpjsDu
 2HHOBKTWNZhplVjQknB+Ly4=
X-Google-Smtp-Source: APiQypJs8QJWPtZF/NlFI0/mIfFH2Iqo0osSzXmtIRNQXtI6a6a8ii7XMBdpbp1MgbdmgT189WJ/VQ==
X-Received: by 2002:a17:90a:2e82:: with SMTP id
 r2mr8158837pjd.128.1588761408522; 
 Wed, 06 May 2020 03:36:48 -0700 (PDT)
Received: from localhost.localdomain ([106.215.43.48])
 by smtp.gmail.com with ESMTPSA id i72sm1601582pfe.104.2020.05.06.03.36.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 May 2020 03:36:47 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH RFC 5/8] arm64: dts: actions: Add DMA Controller for S700
Date: Wed,  6 May 2020 16:06:07 +0530
Message-Id: <1588761371-9078-6-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
References: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_033649_452646_AA33F4E6 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds DAM controller present on Actions S700, it differs from
S900 in terms of number of dma channels and requests.

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
 arch/arm64/boot/dts/actions/s700.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/actions/s700.dtsi b/arch/arm64/boot/dts/actions/s700.dtsi
index 0397c5dd3dec..56f2f84812cb 100644
--- a/arch/arm64/boot/dts/actions/s700.dtsi
+++ b/arch/arm64/boot/dts/actions/s700.dtsi
@@ -245,5 +245,18 @@
 				     <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 		};
+
+		dma: dma-controller@e0230000 {
+			compatible = "actions,s700-dma";
+			reg = <0x0 0xe0230000 0x0 0x1000>;
+			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+			dma-channels = <10>;
+			dma-requests = <44>;
+			clocks = <&cmu CLK_DMAC>;
+		};
 	};
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
