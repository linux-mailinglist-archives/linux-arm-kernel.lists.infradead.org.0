Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B791F37D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:19:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lEnvc/fD9YSYh9bBjWVHhupITaGW+dXX8niD+tV0i8o=; b=kFtrnGPOTjnd7W7YLHGL/4s9vw
	peCa4Q34SbQkUOeUnuWB/wnxX+DPGwLM6sXsWviR2IwZP5f1yrFDmdORW1V/RyJnaBpEnqI/l34pr
	FhaDz40RbD6FQHw4n8QcOB9AFFnC386l4qO554PeINE9OMtiGypk/YgnO8nlrqf4QtKHrBbg4brcP
	AMa+Lv1DmJ4hj4xPSQSUtmP9N++eYrVzF5tLug7pBX/y9KMpuqvFLUIFdyApp5opgaYa82xBGucH0
	ti+qHccIFMcPtaGlGez7bz2Xt0h/T1jS0mFtQq2HyJLumlFFgpiC6Oj4B29lx6w0SW4dCGcV9ahjR
	tPol1BjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibLU-00063B-Ri; Tue, 09 Jun 2020 10:19:04 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibKL-0005Gv-KT; Tue, 09 Jun 2020 10:17:56 +0000
Received: by mail-pf1-x443.google.com with SMTP id 64so3015031pfv.11;
 Tue, 09 Jun 2020 03:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sYZja2GPkizS9cmr8paj+1jHLT3TNrYTxpF+FFiGMT8=;
 b=bIcDhJTCcatY4ggDNPTS8ubPZaYdUJrYKLQYijEc/Olj7keEcU4bWoaQwVHDP4hFrL
 Cy7eK7KQpwSOR2mnEcJ05khRcOTNKQ9+up5yigCE9SDCIJEWkUNZHNAt+ZFv394OcAWW
 2xfUrhvE3cANsRXHl82BSvUrRum9fx0y8c2joPq4CL/sOaLBGdCfmkrCVLjUml8aok31
 BlGDVIGfnVR8zRTrlCDcI1cvDkaft8G91nkRz++yhkfJoaUETUhCcBUEJLEH1eQnJZi/
 Rz8WnK3Do470IvX6OGVUuVtiCwN7qINiMCOzOx86JapZ5ionbzDZTa09qOebTo22Wnrj
 CHyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sYZja2GPkizS9cmr8paj+1jHLT3TNrYTxpF+FFiGMT8=;
 b=hbSPHMW+2jk/LcYx3VMoigCbFHCR/i6MbaT79l3cEt0YhB17sG59K2fHGUL70+ZBGP
 1JrH0M4PxrH2VsHeVXZPklq8BbU5CnrMJoXwcbSATFNjo93TNvVR4N6buQZuUu+hM3WJ
 xMk0u883lukqk3dnD0m2/ccUmVl9jnVtP76ORbi+HrMo4kLtqBKGxYBHmZYKsZNa6FIz
 +eMMaRgT+UHzIDgYu4jr2ktsNw2kuu7mjqKvtjZKtnLQJ38SJ1nDFMaUnO9gChkDyCMJ
 kjm3Zj+5Dv6Ol5JxV+LnE95dDcJybZQxLvdEB+R1KipBT7K5bWo9a+GXYwOztWJNwKTw
 h1DQ==
X-Gm-Message-State: AOAM532FhYhPZG7xJkIJA/3FZmgkpNGcd/HXkE7lCcAa7FtOFa8a87HN
 L6HWDBu5OlL+LNPfdaAwknw=
X-Google-Smtp-Source: ABdhPJwq6bFtOgYz+uURvmMRxjvekgHvng7JWPHkbsL4XW5DMvdIS0Fks1p0EDrifuU+F7HraNZGUg==
X-Received: by 2002:a63:a84d:: with SMTP id i13mr22967029pgp.342.1591697871778; 
 Tue, 09 Jun 2020 03:17:51 -0700 (PDT)
Received: from localhost.localdomain ([223.190.87.90])
 by smtp.gmail.com with ESMTPSA id d189sm9637253pfc.51.2020.06.09.03.17.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 03:17:51 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v4 04/10] arm64: dts: actions: limit address range for pinctrl
 node
Date: Tue,  9 Jun 2020 15:47:04 +0530
Message-Id: <1591697830-16311-5-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591697830-16311-1-git-send-email-amittomer25@gmail.com>
References: <1591697830-16311-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_031753_739305_71A7D836 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After commit 7cdf8446ed1d ("arm64: dts: actions: Add pinctrl node for
Actions Semi S700") following error has been observed while booting
Linux on Cubieboard7-lite(based on S700 SoC).

[    0.257415] pinctrl-s700 e01b0000.pinctrl: can't request region for
resource [mem 0xe01b0000-0xe01b0fff]
[    0.266902] pinctrl-s700: probe of e01b0000.pinctrl failed with error -16

This is due to the fact that memory range for "sps" power domain controller
clashes with pinctrl.

One way to fix it, is to limit pinctrl address range which is safe
to do as current pinctrl driver uses address range only up to 0x100.

This commit limits the pinctrl address range to 0x100 so that it doesn't
conflict with sps range.

Fixes: 7cdf8446ed1d ("arm64: dts: actions: Add pinctrl node for Actions
Semi S700")

Suggested-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Changes since v3:
	* No change.
Changes since v2:
        * this is no more don't merge and fixed
          the broken S700 boot by limiting pinctrl
          address range.
        * Modified the subject to reflect the changes.
Changes since v1:
        * No change.
Changes since RFC:
        * kept as do not merge.
---
 arch/arm64/boot/dts/actions/s700.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/actions/s700.dtsi b/arch/arm64/boot/dts/actions/s700.dtsi
index 2006ad5424fa..f8eb72bb4125 100644
--- a/arch/arm64/boot/dts/actions/s700.dtsi
+++ b/arch/arm64/boot/dts/actions/s700.dtsi
@@ -231,7 +231,7 @@
 
 		pinctrl: pinctrl@e01b0000 {
 			compatible = "actions,s700-pinctrl";
-			reg = <0x0 0xe01b0000 0x0 0x1000>;
+			reg = <0x0 0xe01b0000 0x0 0x100>;
 			clocks = <&cmu CLK_GPIO>;
 			gpio-controller;
 			gpio-ranges = <&pinctrl 0 0 136>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
