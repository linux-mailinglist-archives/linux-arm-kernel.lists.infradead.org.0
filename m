Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A25E31402
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 19:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZQ+6j6wWftUwmJ0DXuequx9KB1sEmNvIdKkhX7rA8kQ=; b=oJWTKZouXIGtCDg/jSoRJEzGIg
	sprKIVOKu5Xk8ipgqI7XUcyA1RQFg7ARlCgj8dueV86MV4FTyPPRECYiU3aoCdCkyh7F3I1sYyobr
	TOZ5O8/IekMNrQs7dXCAZewCk7dtIFwnntc7jbbI0H/7xLYH3A6I0k+7u3TwmeejPFYtPuu1VG7qD
	tW9r6lQYZo9upMifS1P67pOYuerSb7bdSepNVGmAvmyfPWMWGVRYWzJhnaK6DFowqXrKVJF8Ce6J4
	XJybwCTChPxTygMnlcAX7Wu4delguMDm1Mr/dZHc5fUxSQY2H5Y2k+gYp0yXmMvklyu+SWB6m/4y9
	gT3SdbUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWlXZ-0007lz-0z; Fri, 31 May 2019 17:42:05 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWlXF-0007YE-6d
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 17:41:46 +0000
Received: by mail-pf1-x444.google.com with SMTP id c6so6620441pfa.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 10:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fyuKT2WabjtgW7SGZGKoKRa4U+PGiFeMZarlah2Dz30=;
 b=WBqYPADjrHyt0Ncx+heAoe0SzaEt30lJJlf82CqCoaadUDtdjdnGyElzl+OUIGDQBn
 juSZXmI8dS3CzDdu6Urd45/EN2iB5FPdIYqNJqa4d8dLOt3z3cwtYDUcPIhi3D1IO7KS
 tUYFka4V7ePR0DlBR9khGkyl+phBvvDdnb+epODq63vKmvsLePMYl5aqor0gJglat2Vw
 pAN615wc5mQL6g06ycDQH0WFdsIwfvPPLSkTzIzOAWyKeNcMhCBq4wUzG/PpqZRRiN+W
 MRXWkPWnX0KeUIlXEU72Yd6hOCNVALBsXv7G4ObW+ruNlesQXWRubw5tiGlqQmH2lPWz
 fuzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fyuKT2WabjtgW7SGZGKoKRa4U+PGiFeMZarlah2Dz30=;
 b=STBIJO/DX24wEKAGXabGDZtYijzES7jLqnB7SOuBRualJWvsfMTWtW4bwvvYoAMvnv
 ZdnjaY903sUzaZJ0tDpuDbfrfhzarkbGaflBiu5OhQVMiMiMPnGxZdhXpQbzp4KZWMZS
 HCy9aXWuLzgDbiZwsqKML5XhLtlFN7zsF6wpfB6d5VWEFJoP2Ym358Rc0V/GJlVjI6sJ
 AAt7Vb11hVnc2pNh4HGjxFIcogpsnmA7YulIObPn2T6z7chtmBKiZawraFv2vwYXJrhA
 V5CAo2QozOYJMSAKGHfmGbdfKC2+SPNcICHbyuXQe2BKqprUOl+e6E+vKOb5sty/XTka
 +XWA==
X-Gm-Message-State: APjAAAV1Fl+ZyQ8izTedHvLKlUt+NgrGijJUQYxnpUYWo7uU6D2r35YO
 +lijSIEDXmHtS4+Q728pPZzvET3F
X-Google-Smtp-Source: APXvYqyOrC+Yp82KVuotKNxigeUdI5M+adyhAyOKEdSJpdWmWVIq+JAkHLwe9YWf6GrDR10C2usxpQ==
X-Received: by 2002:a63:e358:: with SMTP id o24mr10436073pgj.78.1559324504064; 
 Fri, 31 May 2019 10:41:44 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id m11sm5373031pjv.21.2019.05.31.10.41.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 10:41:43 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] ARM: bcm: Enable ARCH_HAS_RESET_CONTROLLER for
 ARCH_BRCMSTB
Date: Fri, 31 May 2019 10:41:28 -0700
Message-Id: <20190531174129.6974-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190531174129.6974-1-f.fainelli@gmail.com>
References: <20190531174129.6974-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_104145_238358_B789189D 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jim Quinlan <jim2101024@gmail.com>, opendmb@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, Florian Fainelli <f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jim Quinlan <jim2101024@gmail.com>

Allow the use of reset controllers on ARCH_BRCMSTB such as the
recently introduced RESET_BRCMSTB driver.

Signed-off-by: Jim Quinlan <jim2101024@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/mach-bcm/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-bcm/Kconfig b/arch/arm/mach-bcm/Kconfig
index ef4600cd2ce9..9c51d9d0aa68 100644
--- a/arch/arm/mach-bcm/Kconfig
+++ b/arch/arm/mach-bcm/Kconfig
@@ -208,6 +208,7 @@ config ARCH_BCM_63XX
 config ARCH_BRCMSTB
 	bool "Broadcom BCM7XXX based boards"
 	depends on ARCH_MULTI_V7
+	select ARCH_HAS_RESET_CONTROLLER
 	select ARM_GIC
 	select ARM_ERRATA_798181 if SMP
 	select HAVE_ARM_ARCH_TIMER
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
