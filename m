Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0708F16AD95
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:34:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gRV9dHTUUgZdZSE7y9G7HxMMHbmPQzNSJXs0VphUSDs=; b=tjdnRgHYV5fyxFaERfgqHxM9s4
	IrUEcuwq3UgR54Cj5PD4Ss5Ed7219j1DqZRQ7Ttxbv9dtqq7FV09Kb7fUeItRhm2ZCmQ3KueFtjVO
	GALpV791/rfaEBIYqTYyW/ZUBLHVMc2/k2wQ29Vg0i4gUwYdICJtG08yj7Z1AviryOxZ56W/Wlkdl
	73MUuoGhQ7a1WpLb/VIW0c2Oo/HZbLJ4iOUsCAZEqFK3g+SYIHuK8DudlEPuwMXN8zasagRi6HJO6
	8vFEuqKkPARo2bDaabViuwRajdsXQHsPoGHKxdfobxXO5olDeKJ3dAFx/vUC1+ySzON/b7dLLyiJJ
	YQBr4G1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6HcG-0005xC-Aa; Mon, 24 Feb 2020 17:34:00 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Hb5-00056D-0Z
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:32:48 +0000
Received: by mail-lj1-x242.google.com with SMTP id x7so11064716ljc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 09:32:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=n0uZMijXsC91Xryq6DgXAa7vxPjWgqP9Mwyhc//NHro=;
 b=KiQNjaSfaJLMdMhEFAcD1rxWt+6Je4jBxrDnEz7cx0+evqQ6l5RBt1pCt13mYdRIWe
 iJUUvyHM6xsq8OowZjjKxBmSqonGJ42m8rIBN7vy9vCrjoeweXwkE3mEJdIgfeqkLHY3
 dEMGvxDX1DMMD4C6rF4DCUEtaJ+ZWi7fw5oZgG5CIaC+y00/SLf6LY7OyAaKUaG+1/P4
 m1HeofsOKllMNYsRphjBNKwtJLeqbrIL7xqlCVuVMNCnBHWjtcf0rqQNSrZ6OlxNpakl
 DIIXJBvI7MvtxavNJIVJRpKIE+xGmDaaN39+E+uFkZOUDgLU4YFrQY0SAN/a7XK45VyZ
 TvIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=n0uZMijXsC91Xryq6DgXAa7vxPjWgqP9Mwyhc//NHro=;
 b=QZcwzRbCfQItn/8FMuGP6UJ9mRcBHtNy+fnFCDXXupET4+6X0rF7OpMEwaeJRCB9HS
 hpiViG3+cdHCtBF21Fs8HlsKy7JldTSwt8stFSl87bDbGYuHSHHsH6wRiNLeAiXe6w9W
 uY3ZcCaX1ggC9f1NjHI1YG+HJ6OBUcS0Xk/8zO/uTsthiBr+C6ySBxWFYS8hib8NJfCI
 HlBnlvjOcpToebMlLb/qShLUBOyET5C16lG74fiJK+Wn13pfAxDRNFAyWgzdpMNKeYDP
 /1FzymTxZVrk34SdjmQV+w4JRBwEXdHAPtfInWWYPmO7hAgLdZ9Q3xlB5+oPewSorLav
 cQkg==
X-Gm-Message-State: APjAAAVlmI+cAHZcihqkihVViGcIe82Tzy5PxL5++doloNAcPSeTAZK+
 1cuhMJkf+rBFWYcclhr69k/3s+R+FAQ=
X-Google-Smtp-Source: APXvYqxDJhJvKvHSYzF1Y+jEygZrBmenl+5cRQ7+H5Aj/GZGjqfjIQFOz3NL++koHTXdDyTCIPIVxA==
X-Received: by 2002:a2e:81d0:: with SMTP id s16mr31431761ljg.166.1582565565196; 
 Mon, 24 Feb 2020 09:32:45 -0800 (PST)
Received: from localhost ([194.44.101.147])
 by smtp.gmail.com with ESMTPSA id d9sm168025lfm.16.2020.02.24.09.32.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Feb 2020 09:32:44 -0800 (PST)
From: Igor Opaniuk <igor.opaniuk@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 5/5] arm: dts: vf: toradex: re-license GPL-2.0+ to GPL-2.0
Date: Mon, 24 Feb 2020 19:32:28 +0200
Message-Id: <1582565548-20627-5-git-send-email-igor.opaniuk@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582565548-20627-1-git-send-email-igor.opaniuk@gmail.com>
References: <1582565548-20627-1-git-send-email-igor.opaniuk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_093247_073126_07B75A25 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [igor.opaniuk[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, stefan.agner@toradex.com,
 marcel.ziswiler@toradex.com, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 philippe.schenker@toradex.com, Rob Herring <robh+dt@kernel.org>,
 max.krummenacher@toradex.com, Shawn Guo <shawnguo@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Igor Opaniuk <igor.opaniuk@toradex.com>

Specify explicitly that GPL-2.0 license can be used and not
GPL-2.0+ (which also includes next less permissive versions of GPL)
in Toradex Vybrid-based SoM device trees.

Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
---

 arch/arm/boot/dts/vf610m4-colibri.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/vf610m4-colibri.dts b/arch/arm/boot/dts/vf610m4-colibri.dts
index 2c2db47..75c6d82 100644
--- a/arch/arm/boot/dts/vf610m4-colibri.dts
+++ b/arch/arm/boot/dts/vf610m4-colibri.dts
@@ -1,7 +1,8 @@
-// SPDX-License-Identifier: GPL-2.0+ OR MIT
+// SPDX-License-Identifier: GPL-2.0 OR MIT
 /*
  * Device tree for Colibri VF61 Cortex-M4 support
  *
+ * Copyright (C) 2020 Toradex AG
  * Copyright (C) 2015 Stefan Agner
  */
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
