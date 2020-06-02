Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E88D31EC198
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 20:05:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zADpJmKNKXk5puYZbuv5mIkNpyOssMEkPtjsoZGqu+U=; b=qRixDJ08zE53Zicx7eWIbMTvIv
	wBKdc/f7cbxiWIw1fHs4rL8GsqtNAT7TXbN4mQzer7uxJwtVJrCUXAww9k5qKbwb0ES639lTyGVAS
	ZpzwwJiA7fbJcWb/9LKOh+gtjkaY39HKV70fSj/NYeR/JTLGsv6YR6rsjwDVexM5N/NZ63bY5rT+E
	EASYcqs+CcrcSyrhEbIyPQplAz0H98Wg6RP7bFQ7AnMIkUMbyFsWhPYi6a5N879YTXivMuKKj5P5f
	Ya22I7O7R3DFrnEvrCLsH/BFaEl1IMTu8GqphszE4waFBLoJjmikIrj+eXeMTfoS4D/9/BeH/9wOK
	adQHva8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgBHU-0004FI-FF; Tue, 02 Jun 2020 18:04:56 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgBFp-0002kb-R1
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 18:03:15 +0000
Received: by mail-pl1-x641.google.com with SMTP id g12so1667194pll.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 11:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=l+gmiIhsqHKKeV2kb8RamFGYYWZ6op/LuStlHg2Dznk=;
 b=s4phUVgR+akrp7c/vYhslkZoojsDqIXIGRaVmfYcJ7VHWL8k7vsIvnmfUCezPItguV
 iwugRLWNaBv1F6cYo0op1aLA2J+ZPwuVe8PT1gyBw6L75Lxt9+IbLm2FgPoGroRcD1Tj
 kmpBmnkg+Av5XvHdQldRthLk6gWzwKGhpjLBvRUDpLW9bDO08drc71JgCGyYBk+C7X8A
 4sMmYC2StL7l4l+a8Wi0NWrIHjXALAfbh4jBYI1zogzP5Dk5RIZ66faYX2+eX29+0EhX
 WVraLqHSl+DE4jmYvp32KiwSltqHAEFRQE5YafF465RShCf1i+9IVJGuELRKUAl+cBWp
 1UKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=l+gmiIhsqHKKeV2kb8RamFGYYWZ6op/LuStlHg2Dznk=;
 b=rm/PjmqSaDXVT2mRMHrm8+Prt1joc9KAfqUKxUiBst/0lJR5LfEsKIok2gZI+wyjrU
 haR3zFN2R/kol+P1+0c+RCxTfBpmoq4A0mZ8yLLc1UtS9o7qPlC8NORajYhh31aYZoWL
 uuioyKPgdBll9eHNKEbL6OIrYzOpK9MJNqT2qmkQfK8Ilodz5PdqeUG/a9t4F5gMagwR
 3+g9ZevbMI0YchezvxtWCUoFKuBaDuBR53OCMx0j3noffLziGJowhM102GvZoYoMCAgR
 v8XNyMzvOKVhvm5GKxxsdt7ilGyeFcxFxkSbo9E7OrBe6d35j5GPhYkzASxmeEvV5OFm
 5MAQ==
X-Gm-Message-State: AOAM532L7OdKleAnDf+MMyUtxMuXWGDtXFUu5BVD6uSI3F66f6IRgLTs
 rk2erulvv3h5elOeFz8JagHwEY0m
X-Google-Smtp-Source: ABdhPJxfnuS03XcLCUV6KI/FK8sIlZ0kgrEyY9P6ubaAQiCko/R2Xtexh1etML9+59WmTbwZ64/Gaw==
X-Received: by 2002:a17:90b:234c:: with SMTP id
 ms12mr442497pjb.164.1591120991190; 
 Tue, 02 Jun 2020 11:03:11 -0700 (PDT)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id p8sm2740053pgs.29.2020.06.02.11.03.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 11:03:10 -0700 (PDT)
From: Andrei Vagin <avagin@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 6/6] arm64: enable time namespace support
Date: Tue,  2 Jun 2020 11:02:59 -0700
Message-Id: <20200602180259.76361-7-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200602180259.76361-1-avagin@gmail.com>
References: <20200602180259.76361-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_110313_874674_6C7A2B45 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dmitry Safonov <dima@arista.com>,
 linux-kernel@vger.kernel.org, Andrei Vagin <avagin@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CONFIG_TIME_NS is dependes on GENERIC_VDSO_TIME_NS.

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Signed-off-by: Andrei Vagin <avagin@gmail.com>
---
 arch/arm64/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 5d513f461957..27d7e4ed1c93 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -111,6 +111,7 @@ config ARM64
 	select GENERIC_STRNLEN_USER
 	select GENERIC_TIME_VSYSCALL
 	select GENERIC_GETTIMEOFDAY
+	select GENERIC_VDSO_TIME_NS
 	select HANDLE_DOMAIN_IRQ
 	select HARDIRQS_SW_RESEND
 	select HAVE_PCI
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
