Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2D31582D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 05:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PB17UV8xshWEMqPOhdKxmvI8KQm+sBiOckLXCWPGgik=; b=JkIzGaxpbpUBPA/1WoawmfwoAN
	ZQ13W3eIBfuCHMDTJ0pFFun1A5f3TFq8O1d3PDfzExsROkelEwmUAMXS2AOLzMNxQpOPMNpqvDX/c
	co04fGjsexV+RSg7gH9b/Ry52HMPonctbcJR76CyZg3balsRq9O8oCh5wsgN+55qZMUoToivuCPDD
	s3kIzVmwUzS7NRCF3IiT3t0NBQdhSVAo9ySb53jyyennpwp49K8+4CwiD7QuyntpjbJ0aVFmIurqC
	G017r66c9yyWs8hv8m0Hb7MQv+b7RVU/04+r4e7yo4VPmIQKIaL/UNMmRRjTi6k052P7sxliNpAzW
	lmt5g/JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNr5l-0005MH-9q; Tue, 07 May 2019 03:48:33 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNr5N-000512-ST
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 03:48:13 +0000
Received: by mail-yw1-xc44.google.com with SMTP id q185so12136075ywe.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 20:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LviKc/+NyD+LmreJnXWh+afT8aWfNBNF7HKu6VQC+Rs=;
 b=g7RTiXR7K2LWdRnVnHbx5pT/WVInyinZ1/MTt+/flfoVgIJWGeQsuA+k9Lxf8MrmuE
 d+ZWC9n+EehuXAsZl42DmhJTZ60+amqPUXw+i0tyTuhYR312Z8Uw3dB06rvVmrxneIuN
 E2B1kj0/jrfAXzj2l4TPo7G/I0H8MnH5jEAV/DNvgKzfvZN7nJHH5fLx0o0DaUg7JXo9
 a/5xafdklV3l9fgsJ77aj2WFB7raFTnn9o+r2qGFTHWJwAZQskqMyn/7CRey5KUfnquS
 A8l5egH0z6lwxGZ+FWilkgi+dmcvW4XEgQZdMBdVmZWL03/pyCDuZIGI4DGMZppj2YGp
 ExJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LviKc/+NyD+LmreJnXWh+afT8aWfNBNF7HKu6VQC+Rs=;
 b=S4mYr4Qe4OyJOCTBVOQOdc344xcecEHKEeYTIkLPamI9P0qaO+kJ9dZcfCz5mtA7Fj
 vOpkbUy+D67hp2H6m3zQEkhHHnHNLWN8mQj5OITSuqrMe0ibOVhDvBY1JpSjrP4bLhF1
 eCU7hJvJbtbi1+JCvY3Mw0U8qL3lmFIfbn/x/T1/V+JfiBdqVUf0QTg5s3QKLznQBIQo
 BiIjPD8tJ+k4gevpoxU2g5UoUq66xMopymHcz1cW8zl8t4psawtSXbKy5rkWABw/fW5p
 qXlfiBw53i6F2M1impviLyx66tL/Gj0xmSzOPDx25Tai9CY74FK3v0SB2lvnnnZgj4su
 albA==
X-Gm-Message-State: APjAAAV38MILzjYqBvbZ63RAHiveS3Bzd/2f6RBjHW5naf2+0jiLPZ9j
 Sy0PhxXLSRfCTCfxfTqINy0E5Q==
X-Google-Smtp-Source: APXvYqzSlG0VAyQaxhDvVNtgHjpdaSaWJz4+kdyq/vdA+VW4MDgua1+4joeROUfxZBR7jMMVIqQ07w==
X-Received: by 2002:a81:92d4:: with SMTP id j203mr6969979ywg.348.1557200888619; 
 Mon, 06 May 2019 20:48:08 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id a205sm2120383ywc.105.2019.05.06.20.48.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 20:48:07 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 02/17] ARM: dts: hip04: Update coresight bindings for funnel
Date: Tue,  7 May 2019 11:47:19 +0800
Message-Id: <20190507034734.20622-3-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507034734.20622-1-leo.yan@linaro.org>
References: <20190507034734.20622-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_204810_271470_09D35F51 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
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
 arch/arm/boot/dts/hip04.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/hip04.dtsi b/arch/arm/boot/dts/hip04.dtsi
index ae0431c39999..f58313353519 100644
--- a/arch/arm/boot/dts/hip04.dtsi
+++ b/arch/arm/boot/dts/hip04.dtsi
@@ -485,7 +485,7 @@
 	};
 
 	funnel@0,e3c41000 {
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0xe3c41000 0 0x1000>;
 
 		clocks = <&clk_375m>;
@@ -534,7 +534,7 @@
 	};
 
 	funnel@0,e3c81000 {
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0xe3c81000 0 0x1000>;
 
 		clocks = <&clk_375m>;
@@ -583,7 +583,7 @@
 	};
 
 	funnel@0,e3cc1000 {
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0xe3cc1000 0 0x1000>;
 
 		clocks = <&clk_375m>;
@@ -632,7 +632,7 @@
 	};
 
 	funnel@0,e3d01000 {
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0xe3d01000 0 0x1000>;
 
 		clocks = <&clk_375m>;
@@ -681,7 +681,7 @@
 	};
 
 	funnel@0,e3c04000 {
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0xe3c04000 0 0x1000>;
 
 		clocks = <&clk_375m>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
