Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 536FF6BEC0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 17:03:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3CEPWmzGnDE5e4VBWzfidmkARIDH6ryuPbJe/fJW4s=; b=qwCqoSB8l8mWtr
	DCumAZk4L5t7+U9HV10hwVvMELz9c44zajnOw34j0Qv4d85+6fT4u92tJSglXxFVW4tQfQPR0cOs2
	EvVK6pRpwJBdSGpbyDjigsfajVaQGhgRhzRQvaXn6rQJ6HElhwPhcKoUPBYW20C0ljntAB+TChqki
	x+tM5KzNuFUMrAItSCZn6L1CAwfRA1P3xPQ3Nx8+E5gufHKHiqI0FW0TaSGNkZ9RA56u5+zEw1tpl
	NGsh6ssJvWUYt9z3OZhTpFXUO+kBBdTzjQw6kDJOAE7Tgv57wFDP94B8a0okGKgzEPmRehCW++33O
	34zarsFeeh+eOCy5MGbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnlT2-0001eD-8i; Wed, 17 Jul 2019 15:03:40 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnlSQ-0001Cz-DX
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 15:03:03 +0000
Received: by mail-pf1-x441.google.com with SMTP id i189so10969687pfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 08:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OvPD4V/2GZaORYFcR4jNZsYwHU4GxPLSWCPMlgr5s7U=;
 b=IgrOIjmJgKBptnHAlAOggl4vyW2xDVXq6Qa3xqi0E0Hx4InuRoNtZV6BfDII03Uaom
 u2fK5IKS82Lvqe5V27rjDjoONDlTjc77hLgCk0G5XEoeH0H+huhvKjU1Pd9MipLs9Zus
 gpq+lcg7uVf7Pb8jLrT5HhM/oiQKQyic0NWKackH6Zo1SAuVpm3g9OWDBmL+pcpTtpsl
 GN7j+CsrPHHEtIt25XEYEi8zTXimuiNG592oFUUa+x/V2k8YC1hHpgxhDVX4VRumMeoS
 a5j9FoVrcfEdURkf60purDrwGXZya8yBs86W9D1dqAizMD77pI5Q4Eqmx/PE9/2UPzmr
 ztaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OvPD4V/2GZaORYFcR4jNZsYwHU4GxPLSWCPMlgr5s7U=;
 b=aSjIopnvWalSSTndfbbp9LvgqpGbVZN61DWl5j3mZSdGagvA+0CSWn019Bbs8xg650
 Y9j18z7JdC8ZJYFT/yW9EKshOyV3wFvCvJQvWWc1I40KNxhiUio5qZack0B1yN+0EEiu
 HTVSH6snnls/EPjf37g61V5ILzAQLkGncPL8w1CDHYpvm/8P0IVoEveTwETzCMw0aZCA
 z5Bb2jxi6nZpbRPK8B37hbbndrM2W3JWGJIlqHUHHeGOrxRQYn6kDNZHO3AE+qWG51OG
 itV3MPGkyYyM3VDXCNiWnGKUuDJoXvJNMLVwZyu9f71eKCOuaLgOjvSz3la3Gwm827tN
 iuWA==
X-Gm-Message-State: APjAAAUcFJcf/3BmJ5a5cMTje0rH3K3WqM6qarmTgUUwzFOvxZNS5OgP
 t2rF90X7kR63KXpkyQL4/EBSEGmt
X-Google-Smtp-Source: APXvYqwlKK93KUyr6TQlswdXXuF/PevkzQcVQAjxUomXEGl+4Rh1zM9IdLtXuOUmNwh77E04NQJUdg==
X-Received: by 2002:a17:90a:2768:: with SMTP id
 o95mr44323526pje.37.1563375781161; 
 Wed, 17 Jul 2019 08:03:01 -0700 (PDT)
Received: from localhost.lan (c-67-185-54-80.hsd1.wa.comcast.net.
 [67.185.54.80])
 by smtp.gmail.com with ESMTPSA id b37sm44728961pjc.15.2019.07.17.08.03.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 17 Jul 2019 08:03:00 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] ARM: dts: vf610-zii-scu4-aib: Fix pinctrl_i2c1's
 identation
Date: Wed, 17 Jul 2019 08:02:52 -0700
Message-Id: <20190717150253.20107-2-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190717150253.20107-1-andrew.smirnov@gmail.com>
References: <20190717150253.20107-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_080302_459618_F9420AE3 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Cory Tusar <cory.tusar@zii.aero>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix pinctrl_i2c1's inconsistent identation.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Cory Tusar <cory.tusar@zii.aero>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/vf610-zii-scu4-aib.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
index d7019e89f588..a64de809299f 100644
--- a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
+++ b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
@@ -777,7 +777,8 @@
 			VF610_PAD_PTB15__I2C0_SDA		0x37ff
 		>;
 	};
-		pinctrl_i2c1: i2c1grp {
+
+	pinctrl_i2c1: i2c1grp {
 		fsl,pins = <
 			VF610_PAD_PTB16__I2C1_SCL		0x37ff
 			VF610_PAD_PTB17__I2C1_SDA		0x37ff
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
