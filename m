Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D77A99BB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 19:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GXsafRz6KK6GZ6kvuvQKbq2JQxuguWGjcTNjh8ZdQKY=; b=YOAy/9NUI/I2Egj252uZX7mrcK
	KHae+rtsSYCL0Gftts/DM5VZA5il4Yymv3EPd3JI3B9Ij9Yc+CrmjDa/ENyKWaBlNKshjzHvr3w4e
	y99vJwMDdT/PiNtF3njZMVNckKz3y65VzpQh3Wg3YPrSY3V2cfXWrZbMK2wrsEyg+GquuByIKFvf+
	ugW6y75qiABa4lBErmiF67dQzl1nuzkVIv5vhx0yiV18cP3Ym8TP0Gm8ajfwCautXan8LAmU5GMIG
	IFDrXIZ74SxqNHB+bOsYxhpqKOBIALuknzym7WJex5HRaFO2Zz3GokA4eF8ou6bC9r8WhxiL6XyyZ
	jtl+60Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0qrl-0007e1-CV; Thu, 22 Aug 2019 17:27:18 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0qqB-0006E1-7j
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 17:25:40 +0000
Received: by mail-pg1-x542.google.com with SMTP id l21so4048967pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 10:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=K+pJPk2iXl0LixGuiysFHZxmO1vjBGFGOdrJivWtPCQ=;
 b=mW7Tgp1FmSapx19uGrdxDMd8OE3OgYVCxKv0qpVYm8Q5+jUgIaziiHoQzAuP0TaXs9
 b1ZDesqxvAoluWM9GSEgQ9G4QpMDXvfp1IJTvfkJGpAMme7osiW/rkqTy1V39252Dhbr
 WXc7XNRjcldsS3KQ5hKTF2F6stNSdyRfJu0zieUGc7nCMyhwFwel8ZedzEhJPaoTUDGH
 0Zl8idC+H4dtYMabKHQRwEow0I1NKJ4pbHlgdXYq69qyghfuNCeaweyDyYm2QCZ8YsEq
 NXYnSNYIG9YQ4K0Pcnaedhk/gu/Ja5KzsJqjnc094RYmDcUJAWGybU/FRQnwhBehyHjS
 Zpug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=K+pJPk2iXl0LixGuiysFHZxmO1vjBGFGOdrJivWtPCQ=;
 b=uLvxzfrIF1e7G4iIYteNw8W8Qn5eKmRL1KM2AozZV77MUjnPq/V2o3d/7hobSiFskt
 mfvXii42EsHuxtAv/aXJivgB3FLCrCdSdAOSK/X2fM+QG4fLkd84ejLQNYWhJTm3vtqn
 4mQdnwCTYPUmdSaCJuBpfNr2TmMqRvWmzP4QFyIsp2OBQzwIWfDOohm0uoYHwyAfCPjb
 vDR6cdnnS06gGjEidixiacn2a7jewWy49Ugp9fQivxy2ZPK8FBRu+1AvHypz3ckGWDA1
 l4xlAFuhAkcs38KBy81JBNitrO4JaD8YOXqliix4GJVfqH4px3PJD2p6WsED7AdQX2Ys
 V2dQ==
X-Gm-Message-State: APjAAAUlOw5zcK0sdaof/N8sVLJ8Lcdjk3S3dIpTtXJmfRunbwUhbX/t
 hCY313BCd+K07P+LiFTudMsF
X-Google-Smtp-Source: APXvYqxCqc9UeYvtLws5SuOrAkw6QLX8rq7VicLc5z3Sq8OIW0mJfyReSJarPa+CAfZqwE6RSG9whQ==
X-Received: by 2002:a17:90a:b303:: with SMTP id d3mr863897pjr.28.1566494738302; 
 Thu, 22 Aug 2019 10:25:38 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:71cc:5738:24ad:193e:4b59:8a76])
 by smtp.gmail.com with ESMTPSA id r12sm31705798pgb.73.2019.08.22.10.25.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 10:25:37 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v4 8/8] MAINTAINERS: Add entry for BM1880 SoC clock driver
Date: Thu, 22 Aug 2019 22:54:26 +0530
Message-Id: <20190822172426.25879-9-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190822172426.25879-1-manivannan.sadhasivam@linaro.org>
References: <20190822172426.25879-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_102539_319072_18477D19 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MAINTAINERS entry for Bitmain BM1880 SoC clock driver.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 997a4f8fe88e..280defec35b2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1503,8 +1503,10 @@ M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	arch/arm64/boot/dts/bitmain/
+F:	drivers/clk/clk-bm1880.c
 F:	drivers/pinctrl/pinctrl-bm1880.c
 F:	Documentation/devicetree/bindings/arm/bitmain.yaml
+F:	Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
 F:	Documentation/devicetree/bindings/pinctrl/bitmain,bm1880-pinctrl.txt
 
 ARM/CALXEDA HIGHBANK ARCHITECTURE
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
