Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C02CBA09
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:11:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FuuBe0mOXOjxGxHFQxecxio7uedH+0BMVsBtlyhke9A=; b=tp+LyR/EVyYWUJ
	XPsV7IjE5k1P9UxPcB1jHtLuaeU5HZEGhlSFEyCY/3WmPgloJTv9gvUqPxUazcGweIWAW8m61dphp
	TzK8r7XUqLq6yZvvw4KDbQXk7ILF7UmoBVZCfayBWY7JTHXPZnYy5osSO4k3ciRjXKYL4GUdePf8a
	ISmQuTMESd7H4LcSFx+tDqGkQrr9UtSsxVnWzCe1UIFf0LIpFfmp3CC575kITpRdN8r14hQY0kVm/
	976aM3yIGVouSCboWn2yV/6JfxPZMj+yVChEEtF2bYnqxjhSDgroHw5la6pSMUAeDUBySTGIYeJnj
	MlOsW0bDwHQGep6y69mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMQS-0001FT-8V; Fri, 04 Oct 2019 12:11:12 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMKH-0001rX-OP
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:04:53 +0000
Received: by mail-wm1-x32f.google.com with SMTP id v17so5580390wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 05:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LY+LcXEZQGuXDzdfKBNERn2UxGP3UKGhRpRtxbLi/Bo=;
 b=MLo9nwHGtx4S3a1vu+SHqAUOUASgJFRcf/ppbjTVtjXHHDuVbwBsIFDC75ddJ+ez89
 rZygLYfmSm/lBLu+tI0Gm3BocMi821tZJpjT331P6OB6AOSJobuA0aZ0FimM2G6dU01L
 JgQ+brybwXfwLoA9dgMvVK6Qx9MtQ3ISS6n4+7yQqTbp93rZL116FWwcRD8MgSBZDKe7
 vDIE4bw8P8d2IEdRIBsc3WO/NBnGEfBVqFyai9cbVWYTJAtQUiCSMiIcRH0LmFwCK7WF
 nAxKKx6b22/TMnwDi/QZc39cIaVWAD/X17/m9IM/V4aXyco6SwhFXJ3bhP7a63NzM/78
 hulA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LY+LcXEZQGuXDzdfKBNERn2UxGP3UKGhRpRtxbLi/Bo=;
 b=CYZoRmk1mtsE0vRdVHi9djcWySmgDBaceY6EVjmfrc3M+xDAx3+w01T+6iq+fY81rk
 fC4shL9cKDBSYd/6LHF+3F5DscjqklWu2mJmLFpbX8lvCke5+oX3II3+eWp1GMY5lK+s
 bBpLcm6glPkAAhRALQ4jOd1zzQp7oh6d5mjSOARmGhyu68Nr84Gzvfeej1FBMPDCsPDt
 eiFgKYTNlfAk+xi42OCcUH2nec5Vo3cuQFehdb2juULQfgIoS58TItX3pEyk2iNEE8mg
 nA7HKrY2sS5nR9vtuNX3VGCdK6i8zC4AJJMptMpMqbfya5BEixQqxuMBk+sUsp4xB7Vf
 VLoA==
X-Gm-Message-State: APjAAAXd0q3ieIoXnId4uZEOSWRzxaHB8sd7oJ5dUZEVW6h2aje9jdcI
 SPmS3L3d8iw0AhnxyjHt2CQb6ZKs22ueHxte
X-Google-Smtp-Source: APXvYqy1HOgnDYvWVcjAi/uozZ2aBCWj+TSrGaxk77MeRSLNBugJUU77W/CXQSOfpjyBRirdL2T2pQ==
X-Received: by 2002:a1c:658b:: with SMTP id
 z133mr10877700wmb.130.1570190686715; 
 Fri, 04 Oct 2019 05:04:46 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:b51e:3d9d:ec16:def5])
 by smtp.gmail.com with ESMTPSA id f8sm5019628wmb.37.2019.10.04.05.04.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 05:04:46 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC/RFT PATCH 08/16] arm64: enable generic CPU vulnerabilites support
Date: Fri,  4 Oct 2019 14:04:22 +0200
Message-Id: <20191004120430.11929-9-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
References: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050449_825946_06A2D1C0 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32f listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Stefan Wahren <stefan.wahren@i2se.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mian Yousaf Kaukab <ykaukab@suse.de>, Jeremy Linton <jeremy.linton@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will.deacon@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mian Yousaf Kaukab <ykaukab@suse.de>

Enable CPU vulnerabilty show functions for spectre_v1, spectre_v2,
meltdown and store-bypass.

Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
(cherry picked from commit 61ae1321f06c4489c724c803e9b8363dea576da3)
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index e3ebece79617..51fe21f5d078 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -84,6 +84,7 @@ config ARM64
 	select GENERIC_CLOCKEVENTS
 	select GENERIC_CLOCKEVENTS_BROADCAST
 	select GENERIC_CPU_AUTOPROBE
+	select GENERIC_CPU_VULNERABILITIES
 	select GENERIC_EARLY_IOREMAP
 	select GENERIC_IDLE_POLL_SETUP
 	select GENERIC_IRQ_MULTI_HANDLER
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
