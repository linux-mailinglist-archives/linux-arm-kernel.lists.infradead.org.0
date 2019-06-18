Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7779649DC8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5zSGGEv3a8gOPttKL8RqIz7QmuOlylR0BwCYY7dqO3Y=; b=DAsEPoxanCzVsf
	9sY02dcrxmXRTvcxNandaAEYnLqSlQERavuzNWJ+hhsZFsIdweklsHRyqOFf5kOgpFmMti88Rg6wz
	1r/esiCcjsMXQaJ0I3ZdBY7PmzOIJOEw6UODo8CFpsHnLebIsS8QxLEifVarJ/8pYHmLswOMZWKOe
	DoMb64pvJzf5HhGk8GnmYtjzJIdDLto0aK4t6K/2bzexHC9Ex4YzPGc2k7dLfRAF5iVb6GZhcZqxN
	tBjE7pgn3K11ftlH+iNfzGUQkMluLyU3lDP0OLPzNQOAUXfs5mfUCo9VxcdkmPtbienpGY8jO2Jdl
	BsQ3mE65MKSYZgNutNHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAjc-000535-R3; Tue, 18 Jun 2019 09:49:00 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAjQ-00052C-54
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 09:48:49 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MfYHW-1iEQLo2DIO-00g0zN; Tue, 18 Jun 2019 11:48:40 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH] clocksource/arm_arch_timer: fix
 arch_timer_set_evtstrm_feature return type
Date: Tue, 18 Jun 2019 11:48:27 +0200
Message-Id: <20190618094835.3709679-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:UIgZ95nkkhH5yq9mtc64kQSjIUtdTsKX0SLMkEgh0FriqqYmcMv
 kxeFtXo0x1iEJD8RRUXpQLFNbtfh7YVHmah3VW5mD91TUWdcM1FeSZvBaQF7j4ykrXU8U42
 Cbms4G14co/9jhPjG7z8eURv5cGVlcAhzENcDkEO3iYZpq1Lw/8/sc6ZVwGjaOiMKUTpIdv
 nMoDcSbC3beBOQtMsL4UA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NrdTgJmQsLs=:pVVaicY1CbeOugFNSXSVgG
 rOgWiznSoDCUAl9Hqna4Qb3JWHNH1nIjTbjr8aAwykAbW+S78E2Zr6hsxeX0/OJpgFunrxJZ5
 EDGRkVaBqNFI52AjT1TjJWlDEdhYS8IlX8kjXUSpZ9l4gSTwP4ctBNftgEYjxRigP21c+WBuQ
 jj9hcUfMxcSz5MkuK1t7wMjghZs4SaPmRokAIcsf/L2Hg39tdCIGrZ1vAkLuGqou+8fq7Ukom
 lwZKhLZDm3/yVrLTDQsUPOcIKTBpfYK/Lsd2RIyc7gtQGqjEAraA0PjnCefsIy7mUFzDvUkwZ
 6SBdJNUe9g77f/30K/7bnqbzK5oe7K1UVhFi9egyDssXTi4hi9aeYodeVrgOE1bVIMrDzUXr5
 9EjPt2Xb4CEclpaF6B7AOSRwsRZ4S/dcMdCq34HJCDB/3BNVxPhlkxLMDbpumONDaeBSo+ebH
 6cJwd57yQjbnNGSf/d2NElc3/5P5Ju5VSDxB47UFg/w3mdNT8DIRLdRo8B/a8ZmKrfkqa5OFv
 y+caxYZqHrOO3wX3KMrlOsHi8QigOCr8TyOB3xoOZXFqW9/fk4jkzPigdpXceG6KQNfpY1x/+
 6sxUClYH423hLKUrUXc6sPmlx+7eejEzHykSXBpyuyTpvcsiARxHRvQDT8wzRDE/jmOAS+nQl
 zHtNuMDsbenzJNHFjq3x+fd+kj93RQ5mVEhSKD+hSpafKpvQ0BhMW9RMaWavVltwpk/26o2nn
 /5zLosyryCW73sHF+phX2SRKzw5lQltarOH7XA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_024848_485020_C28473B7 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Marc Zyngier <marc.zyngier@arm.com>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This looks like it was copied incorrectly from arm64:

In file included from /git/arm-soc/drivers/clocksource/arm_arch_timer.c:31:
arch/arm/include/asm/arch_timer.h:131:1: error: control reaches end of non-void function [-Werror,-Wreturn-type]

Change the type to 'void' as it should be.

Fixes: 11e34eca5d0a ("clocksource/arm_arch_timer: Extract elf_hwcap use to arch-helper")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/include/asm/arch_timer.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch_timer.h b/arch/arm/include/asm/arch_timer.h
index ae533caec1e9..99175812d903 100644
--- a/arch/arm/include/asm/arch_timer.h
+++ b/arch/arm/include/asm/arch_timer.h
@@ -125,7 +125,7 @@ static inline void arch_timer_set_cntkctl(u32 cntkctl)
 	isb();
 }
 
-static inline bool arch_timer_set_evtstrm_feature(void)
+static inline void arch_timer_set_evtstrm_feature(void)
 {
 	elf_hwcap |= HWCAP_EVTSTRM;
 }
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
