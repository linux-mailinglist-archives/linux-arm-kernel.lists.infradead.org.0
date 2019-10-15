Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0444CD6FD1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 09:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jgb/PTmrOSu6euxgWAlZufThGxszz95NBGmBE7W8Jl4=; b=f3N+YQfehsg877O9Hy/nuLUDaF
	tncg2VyRK0W1bevZlbYgiPby48sOkBYpOws/k3trBIKlxX1z+HpnluZfmZpGYSvF5YIsoE3vxk4FS
	RHvp1cw2waO5+J4cFXeiXfQd5PiMpdbN4GSMqp1c2us8m7qDhVBjFlt01KfIQd6jg3RExB+gkICk3
	AsDk/qE3t1KZ/xfLRn7KO5UbcR2e0cAcDfyjdaC7iX5CiAxRWCvm0EelrKu77D1UrdrAKGAaNTcnO
	hQADTOVu+nmalHQxA9rrHBbA/MZxgcc/Gmve6RTRlxPY2e16S4AkkLXdEWSfmsjL1J19YruV7eTyW
	RGW0oYgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKGoj-00037M-Fy; Tue, 15 Oct 2019 07:00:25 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKGo3-0002h5-CO
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 06:59:44 +0000
Received: by mail-pg1-x543.google.com with SMTP id p1so11537784pgi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 23:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=d6TuX5wbjT0cVL+CWwuFac6eFY+2DAq9db0NWeLvHfw=;
 b=Pye2eFODufy4FTc3Xuhtdnel9539e3atHEkUYgW5W90Gt+TPrWlJaLHjhn8B8ywWxY
 JoudPnOzfKiGz6r/GXUjxsc4y9rmrC8nFGkyt8fSr7TSs1mm4WMoH8rNZ0mldDmfBtk2
 U1SNxtyH+z30OFykMII7vnC5xK8AngQM6Dtw8G5BPgn45gK2tBi9zBLJH1Io0eoWDHZD
 qy8D4/WWO0Jwnx529wxnERHIqvwFUr21JjxqduVRUwPGrduJGGtSYPoXVgxyF0mmB2Ce
 fAw+5B5ywpYV68NUjSKvUhv3Gtx0ZCheLTTiffLXcmdB6dzRX5oaNEvD26RWP41nZxAE
 q2RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=d6TuX5wbjT0cVL+CWwuFac6eFY+2DAq9db0NWeLvHfw=;
 b=a8zDHe2bZ6QgRI7tm8l+VFldM0JqTSMpFN+Oofitk8Wq5oRNLeJ8/11Y4hk7k5SJ1C
 JT9HUwqaNYWtcsZ25L8vUCDzCLDeBQPHMiOGwt5yfmPhTyfjxy5YHRno2UIdkVmXZGPU
 qyhxbWBx6FlrbGchhrlh+AI6UMs384bvu4+aiS0lax8eXXycKq/KVYeF7TXQU+uV5DOk
 ZySweifgNIJjwBgh8QzgiY/n33brrCBeaH9YBqA6tHeosO5cvRosAzNEaFYHETcQUKU/
 YjbJXAn2M6ioJqWgp2NJJ0CHJ2Bv7CWFZvwy1Py4EStzAqmhMrbhioF75E6vrihVJ4VI
 2i2Q==
X-Gm-Message-State: APjAAAXKhfPkO5HAKj88GWHoO2OVGrchQEu+b+XKMS4yUX/4uX4LDTvx
 PG1zqi85A+p1yb/TBpT3iAwrUg==
X-Google-Smtp-Source: APXvYqy6bs2VA4ZtJFgvxKRN0L+Ft8psiktp6GA6jTulW2YhCe3WNJiVPW4r4+fnGDmoR0/4lfTFLw==
X-Received: by 2002:a62:6247:: with SMTP id w68mr37823007pfb.11.1571122782444; 
 Mon, 14 Oct 2019 23:59:42 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id i16sm17952646pfa.184.2019.10.14.23.59.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 23:59:40 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19][PATCH 3/4] arm64: dts: ti: k3-am65-main: Fix gic-its
 node unit-address
Date: Tue, 15 Oct 2019 00:59:36 -0600
Message-Id: <20191015065937.23169-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015065937.23169-1-mathieu.poirier@linaro.org>
References: <20191015065937.23169-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_235943_417243_2068F291 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suman Anna <s-anna@ti.com>

commit 389ce1a7c5279ebfb682fab220b4021b2bd49c8b upstream

The gic-its node unit-address has an additional zero compared
to the actual reg value. Fix it.

Fixes: ea47eed33a3f ("arm64: dts: ti: Add Support for AM654 SoC")
Reported-by: Robert Tivy <rtivy@ti.com>
Signed-off-by: Suman Anna <s-anna@ti.com>
Signed-off-by: Tero Kristo <t-kristo@ti.com>
Cc: stable <stable@vger.kernel.org> # 4.19
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 2409344df4fa..e23c5762355d 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -21,7 +21,7 @@
 		 */
 		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 
-		gic_its: gic-its@18200000 {
+		gic_its: gic-its@1820000 {
 			compatible = "arm,gic-v3-its";
 			reg = <0x01820000 0x10000>;
 			msi-controller;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
