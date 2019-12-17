Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 028B8123744
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 21:27:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nvZnUwGuhNuZ9vCPo28M9ZCd81qheFcTTW1+40tx2+E=; b=VLxVikTYZZlCV0
	hXMGRnSPgvvqlDHfcfrP+IAWYLIX4vVReZMKse6r4VVjBqI1NMVzywO1lc8WkYagENyUl14IAefDA
	jqb9UqAHCuNW2sVsi+FPl+RI++0CsvR+QPAhvGb3vHQ5H14Zwc9cVimVna9HQaUvdQRMOWnR8mysa
	lKOZBNLIYNheSyDQizUqs668yk67tkENFIVb5NNlOmMQTtQjkOpSduoNVBRkgGR7lYpXHHsQr6ACA
	On/xIPGu9wDI+1CtNXglBnHOdN0eGeTFAXALhUCNkYNaeaYHsm6/+BNn43NpHBW+SH7nJSKo2iGee
	pLw4fXGxxvv1SWVFDdug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihJR0-00006M-Co; Tue, 17 Dec 2019 20:27:10 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihJQp-00005l-Dh
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 20:27:00 +0000
Received: by mail-lj1-x241.google.com with SMTP id z17so12396729ljk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 12:26:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CgRDkJT6OTxwVeVMH9BOOW9hwLRICsUjzSesqDbDxdQ=;
 b=j34kSyCVp7vVfJF37VBxoyajKPc2h3/qzfJq+9/d6ahCbXPvFVvZMN9iaj5cmyZOpB
 AiaMrsJTU/fIEKAbCiBuvSOBTuobZJ2ZlDXMvAaUtaj7i/WfaTUqvxXctw4JMTsHk+A/
 1whup+Rgb8omcVnxIsFlbfA3r5XO/6YCrpEYwvSUWMe6QdJK/70zu4VpYKxkFB3o2l//
 xRu9LhdoszP+/f4wUW7QTp3E/0GXOHsQYlXo02VYkL5ZIoWuJL9kVIwTS0TMQ0yNDEEh
 qTBxnJpJIu43gig62a8sXyL4qYa4hbM8gwMjoc7BYnyx5kCDar4ohMKpDQPhjJgaayXA
 WClQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CgRDkJT6OTxwVeVMH9BOOW9hwLRICsUjzSesqDbDxdQ=;
 b=HtAiDQ7rtJGSobTFQWvF32RAg+sNipGY6hEglGdLAq9mvCA9iaFYhZx4Cntmoy5f3r
 doeVld7f/bOoXR9d0SAHKCe6JleHmxaUhtH1Pi/+YKsXq9fO4yMYcPcEa0oYal6VN1rF
 BicLXyZEQKrJc5SCbkCNjjo19mieCsg5wgc6g+O/Mq9B54rCTJ3AcpQFKSNOTEZGQkqp
 XowpOOCS7PHCRr4Xr2ptEiMEDwcw1CePW6TWFuJ9ixUfaVPwmWq7qh38gHm9Map1NknD
 yvBp6K9s3gamQMiODeVCwnBCT5lrJYsbv+MT99ULW76IgsLFhczn+T2Wt/TDNAXfC6SG
 nbcQ==
X-Gm-Message-State: APjAAAWDksKsAKt6rwbViRcAvxUD53eGhiMqXjOdzJEHur5Fb1RE/lT7
 +RhNZFVG7GGRiCwluM+hQYT11w==
X-Google-Smtp-Source: APXvYqxFfuzKzpy41ke451eRpxQCruUtwDTYSNFsFtRdoISjDONG+nzQM2sw6kkK5V5z9x/POZKfsQ==
X-Received: by 2002:a2e:5843:: with SMTP id x3mr4552510ljd.64.1576614417467;
 Tue, 17 Dec 2019 12:26:57 -0800 (PST)
Received: from localhost.bredbandsbolaget
 (c-21cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.33])
 by smtp.gmail.com with ESMTPSA id k12sm6213549lfc.33.2019.12.17.12.26.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 12:26:56 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [PATCH] ARM: defconfig: u8500: activate cpufreq
Date: Tue, 17 Dec 2019 21:26:48 +0100
Message-Id: <20191217202648.23206-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_122659_496118_7813E354 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This activates the device tree-based cpufreq driver that
Ux500 is using and enables the schedutil and ondemand
governors with schedutil as default. This works fine in
the setups I have tested.

Cc:Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ARM/SoC folks: please apply this directly for fixes or
wherever defconfig patches goes.
---
 arch/arm/configs/u8500_defconfig | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/u8500_defconfig b/arch/arm/configs/u8500_defconfig
index 822cddfbf1af..4dd5c92fe3b7 100644
--- a/arch/arm/configs/u8500_defconfig
+++ b/arch/arm/configs/u8500_defconfig
@@ -12,7 +12,9 @@ CONFIG_ARM_APPENDED_DTB=y
 CONFIG_ARM_ATAG_DTB_COMPAT=y
 CONFIG_CMDLINE="root=/dev/ram0 console=ttyAMA2,115200n8"
 CONFIG_CPU_FREQ=y
-CONFIG_CPU_FREQ_DEFAULT_GOV_ONDEMAND=y
+CONFIG_CPU_FREQ_DEFAULT_GOV_SCHEDUTIL=y
+CONFIG_CPU_FREQ_GOV_ONDEMAND=y
+CONFIG_CPUFREQ_DT=y
 CONFIG_CPU_IDLE=y
 CONFIG_ARM_U8500_CPUIDLE=y
 CONFIG_VFP=y
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
