Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C187B1FB3DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:13:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YCW9jNgaXrIYNzd1eIb09itt32+Iq/I5tAFJth66QPk=; b=Y2cfrrhH612Qqk
	LKe3BcHayCastIAXejZZcmoDCSslsmXMIFf0Z8NRLP7ZY3JWdl4YMT0zk3YNASzBukjRnbTzZLW6j
	sHhDHdPoOfduuOfn4Sp59u6XMyXExhKQFVwonjB0NZRhOunGPkZKmHEztD6aTg6f6cxtI5W1km+gW
	jNDJOzU4A4liEeLuVSrnOnvP2Q4+pSDr8laaPLvjgNs8F30nfnN5nl1PQQv1+bPR/5qwJ3KGajakO
	1EpXIYm+pNhlXjnlwZ1fImo9PAMQlvwIOPXvY9YEGhMlc+XKFggMu5yC0tcsT636kFH6rXjAvpbd9
	nGgeNXLhygfljNT90Mpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCKz-0008NZ-5h; Tue, 16 Jun 2020 14:13:17 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3I-0002YA-2B
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:55:04 +0000
Received: by mail-wr1-x442.google.com with SMTP id x13so20860811wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=olP45qr5KeADEZvoqRMZU+ClqHkzoNyYBpHFX9f9pGQ=;
 b=Ho4Rse0Ywq4F/Z8vjHvU0Wz9cHaGwRM7ieRbLTn9/NVD74kGUdapuQlfvr/m8P5JC6
 PrmVLyv2eRens2GPlD2Uw9a8VrAoHIgjEAeqk3UxZzD5KHaB/xqQCTi4KdExhGZ4G3cu
 TIlqvDcw2+9KwOKDNn8ET3lGxlRmlzkTPU14vmyIFkQLXrxwziBuP2k1Yst+5kG7n97I
 jI3/5qPRpbWcMvy6+Fp7IGVgLvFVB5gCmg3t41LjDZQPJMO0dQqQltj+SEUdwNyqvgku
 nMEgmd7Uo4v0s/CgRhM35PoH+BZKpH16ZF9mZq5Ws7A2DtTICQz+BE0GLXJeF/m+AtXU
 4COQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=olP45qr5KeADEZvoqRMZU+ClqHkzoNyYBpHFX9f9pGQ=;
 b=sqLdKaZR+ySxo6oU0avsWBRvAeWV4jRwDg4dgypwunhrQ0zGHbRK2kIIBhhLdbzjRZ
 RBR/eYUoqYzsAHig+IF0tN5qhF17KA0QfGoa/p50/fY6PjPok8U8vuvjQCM5zFoVqFpN
 w2tsmRLXmZmEAOfonMEXK7s/O7X/ZxF8mxJeqdDq21RsCoBad7fqsPwzWm0xLe4EUD2G
 fYQ3OGlOvDm8YJbZPGZPmBamFmRkymRYGYXPKiTHOMvwINLHk8iKBqUKOkePqk/8bHnJ
 h585uyFrVzPYcxD5/jo63YjG5Pq34efWRcLGZX2dgwg31D4QxRGKlXw/CQr0MMHalv+a
 54yA==
X-Gm-Message-State: AOAM531zdaVdW9FOJsrPsVbHygyb2f00euxgch+adDLhc9I5F/a87P0T
 vokhEMNB9sksOMNN1vla+WA=
X-Google-Smtp-Source: ABdhPJzmG5uaky8oUW6SqvA0o902acZMAesiYYX2cYJ5xDRoDHAG0C3M8tXTBm4V0H424vQYBVffiw==
X-Received: by 2002:adf:9b9e:: with SMTP id d30mr3283242wrc.345.1592315698691; 
 Tue, 16 Jun 2020 06:54:58 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id k14sm28335712wrq.97.2020.06.16.06.54.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:57 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 54/73] arm64: tegra: norrin: Add missing panel power supply
Date: Tue, 16 Jun 2020 15:52:19 +0200
Message-Id: <20200616135238.3001888-55-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065500_715748_CF589C19 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

This panel supply is always on, so this does happen to work by accident.
Make sure to properly hook up the power supply to model the dependency
correctly and so that the panel continues to operate properly even if
the supply is not always on.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra132-norrin.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts b/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
index 607d28a6772e..fb27812eace1 100644
--- a/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
@@ -1051,6 +1051,7 @@ power {
 
 	panel: panel {
 		compatible = "innolux,n116bge";
+		power-supply = <&vdd_3v3_panel>;
 		backlight = <&backlight>;
 		ddc-i2c-bus = <&dpaux>;
 	};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
