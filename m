Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD5F1D362D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 18:14:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qU6j2hfZZ0zSSMdWXnuOV5wsabcCEyY6iZumARI95xg=; b=jdGeu57lGeb2j51hUyzSSCkG4X
	aJTKxUHIdScQ5lyBm93BJhfQmGwags9UBgTo2g2O4gXCsuXVl7DKdm/7CJiJIoqw/7+3BUgaXWY0L
	8GU4Z2CMq8TVQs69Two8fy4U5Me3la21qQejSjzuoD38ZvyQjsyDScUs48m1Ey2AKeiSoDcLhafJR
	5ZrpURHmyWON5NtXHqo1scIEZOKwevwlCLVGNWRvXgh2byJ/gjNBE4lEDbgEwg0IoccfajTbDGLPO
	GOfQxm1+I6qWj9oo9dm6S5jiqxbRmMQ/zbOEhp8i/8odPpPmkE4tHzKjYnJFQ14FrRatymnamoxh1
	xUcOzbFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGUh-0005ht-Ky; Thu, 14 May 2020 16:13:59 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGSw-0004LR-OD; Thu, 14 May 2020 16:12:13 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ms17so12651068pjb.0;
 Thu, 14 May 2020 09:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=siPOjsK0bfqvt9Fq4RN1wntvrens1V+rnit/PWCaq7M=;
 b=Xj8DKYSkjrwtQmsyJE7FFNnNlGzq2qWf5nU68d9GmIRpZQfcwn1lr0XVp3iTV30FCH
 W1jGWlgy6grJu8TOe66KCARtJ898Okr7jwvrQdKHnaajzs7NSz7VLa0WJMnd98B4fsTd
 /OLtLSpeMPe0liz1YkhKCMWcjy2sMh4swGnAv7LJwkPHsdHqnxIyunAAoSQrvbCY6IoA
 Am4Am0t3nD2LujW1cduYmmaQdFso6H03snd5gvCRx3MX9LYtC1ZA/z6kdT3ArRG+XitF
 4xNmbxMWiQwtHdnlVBrXd4fR3EvKKutrqfcjlxhs8jN5p1GDxGXsbvOXP+7QpR+Se5eH
 p15A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=siPOjsK0bfqvt9Fq4RN1wntvrens1V+rnit/PWCaq7M=;
 b=lHrwM6ivxSFSy86rrZW+o8IEMCDPNKKdWrbttm2mJD1beYgLYX+HaQTeGlnhCNSt3E
 pgw3jCfq/vcJVicUU6LDIlpE65c9sTeLlWJTUBPlV9E4JqNQZJ7aqGonZgQoQxqxkCpu
 nsDGlcC2Mlp/R/1nWt+iYxXNzAO/UHV58B8jdjeHopK8Q2EWu6yKyjW24Ggv2jP812Ov
 lLy9I+IZMigzgLm/GAGvUXjVMUOrnPFdtsv9SPecBhv9unN6nUc7pap/TcFYz9/rrXSx
 MaGl8qRmpj+wjCs8O+zSAkb76lY5NBFNoakWYLkAXL18kPUd2ZCS+w5EVu/DBQiPKBiQ
 umLg==
X-Gm-Message-State: AOAM5335UV3jaJSi+IH3AKdiR6bM0McV2lMO7ljOoPjp21vQoL1wyt8l
 cZsJolkMDWxc223ikEtqSbg=
X-Google-Smtp-Source: ABdhPJzNVlwxe6QApmCD4rhZbpgHBetfVc7QbOiFm7CsmOexk92m/E9V9LIFoIO7epDQBmpG66EUEw==
X-Received: by 2002:a17:902:70c3:: with SMTP id
 l3mr4910447plt.147.1589472729540; 
 Thu, 14 May 2020 09:12:09 -0700 (PDT)
Received: from localhost.localdomain ([106.215.24.137])
 by smtp.gmail.com with ESMTPSA id t5sm2331755pgp.80.2020.05.14.09.12.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 May 2020 09:12:08 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v1 6/9] arm64: dts: actions: Add DMA Controller for S700
Date: Thu, 14 May 2020 21:40:54 +0530
Message-Id: <1589472657-3930-7-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_091210_996151_1ECF11AC 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Changes since RFC:
	* No Change.
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
