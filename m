Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B2B18BC05
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 17:12:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RET7mPH7cjtBgiDFrvr2mZNwQt7nnWBkLq1E3VD0XU0=; b=F7F4sC5ymeYQXz8KC/UT9IBtyO
	rXcauGJ9RCFbozxHnM3ZiFmxC1IzyKAipUzZSn3n0p/S8qmAM1nhT0zKOC8f5ZouLrMQF/hMSd3Pu
	cEiNS1VjbGuwzviMhTI1+daDEMbat6KoOt55kKjqe1GTMcbDR5SS7gKVbAZbp2zcSheqx3OLmpcgz
	7oXMgISvsq0RY8GMhWf0r8djtyR0Q7JwExLEZdYxqq4W04wsGfTvWZvLvX4eqaqXFoAw5DSwBbKOE
	LBwJnMcc6mKWGpT91++Uzgrca6GFFCZflruXpEBpln4i/4UdzayJX5a6rqW6unWSQRFFB3OzYWTdh
	/CIJcD5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jExmR-000848-5r; Thu, 19 Mar 2020 16:12:23 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jExmD-00083L-Jv; Thu, 19 Mar 2020 16:12:10 +0000
Received: by mail-wm1-x344.google.com with SMTP id c187so3144484wme.1;
 Thu, 19 Mar 2020 09:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KrbGWoGHrNAkN/7yoRVhGOKa+eWQ1UuA90EUgfCOQho=;
 b=JqKQF2NSbWpkaB2YQgRtXi4pRnvqxVXmxEgbnq8qDBmDopCObaDOAnMTXtkDT0oNU5
 cpvIF2wxDxKAj4elpcd6dfsDzZbAuKrT43BAPG1Jqa8ten4zIMVGeoOg/n+6miEMbmaB
 ZBuaerwrjc1U/nDIL23r8oouA0huCJJndVhe2FNfSxsGzsbvc86yZKm3cHMMu1XpFsvn
 bZVyC8ug9BqSrbIHzKlxBxwqs/QljYkfVWQLmPt1gS8WqFmCB+fKSLSrW6E448fWLMfx
 HHcmiofaLLNdeWPJscgY4LsFVR13MCTf23SaGz6OUcs0rLggP81rdpWr0w50nyvmU3Fb
 EHIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KrbGWoGHrNAkN/7yoRVhGOKa+eWQ1UuA90EUgfCOQho=;
 b=dluNYvnvCjj5P4faglfGsr/1XdS+CzmtglMhmaGByLqHHRDuB9/c94EuupnrRHLk6d
 sJxwaNiLBtlQCuVZsPYpnRuEVf9xguLjazIV2wW16QPDGBbyKSATtnju7DBf050UmOG3
 p6LtSRAT6q6MPYEv81TP4vWnJ99QHK6R8fyxNfYzqSK/Fgmw+AwOlloyCj1hOgG0TjSE
 2OSut6aKCUQM+GxQ5no6SNxW8tFogcBArghYJiMW3NuyJUOAHsT6S8n4eWbXSMGjdwqg
 bwYJEnep8FDY29NQA9MaBGAQWR02b9eeJ2sTVj3IdM86wwToVE33trYJlLNWeHZbaQnG
 hVFw==
X-Gm-Message-State: ANhLgQ3nNVF0Fn7LCCtg8K/0XbDrSnhAP7X+qlYi2xtH7a5Gbt/4oqTk
 +CTD/7brTJoVKYE73YoyYujNsj2E
X-Google-Smtp-Source: ADFU+vui/AhR7WL50TXv0XoVgoj9U4tQmO2VTlUOWhnKa9HAfhIMLkPJTm7GaGae0ATpMTrjXS2SRQ==
X-Received: by 2002:a7b:c0cf:: with SMTP id s15mr4793754wmh.106.1584634328020; 
 Thu, 19 Mar 2020 09:12:08 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w204sm3973485wma.1.2020.03.19.09.12.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Mar 2020 09:12:07 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [RFC PATCH v2 2/2] ARM: dts: rockchip: fix yaml warnings for
 rk3288-pmu-sram compatible nodes
Date: Thu, 19 Mar 2020 17:11:59 +0100
Message-Id: <20200319161159.24548-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200319161159.24548-1-jbx6244@gmail.com>
References: <20200319161159.24548-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_091209_653228_10C26D81 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives for example these warnings:

arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff720000:
'#address-cells' is a required property
arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff720000:
'#size-cells' is a required property
arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff720000:
'ranges' is a required property

Fix this error by adding '#address-cells', '#size-cells' and
'ranges' to the 'rockchip,rk3288-pmu-sram' compatible node
in rk3288.dtsi.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sram/sram.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Not tested with hardware.

Changed v2:
  Fix dtsi.
---
 arch/arm/boot/dts/rk3288.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 07681f1f0..e72368a7a 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -731,6 +731,9 @@
 	pmu_sram: sram@ff720000 {
 		compatible = "rockchip,rk3288-pmu-sram", "mmio-sram";
 		reg = <0x0 0xff720000 0x0 0x1000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0 0x0 0xff720000 0x1000>;
 	};
 
 	pmu: power-management@ff730000 {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
