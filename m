Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D711CFDE9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:41:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZTNFvEqXYtyfBc343yM6kO8SCfHs0R5aaEQ98gje+Y=; b=aXF5S8WnPN6wTe
	3jf8JyiuXxJkdtR4Q/x7SUvPks2wwF8R5s/C2xtgOyAd8T1VdYjs2Kye+1C7Cdxh1OneDrk8Nut+r
	e1MLUrJ5uHrDJa47eENg6EYHCdAMkl5kyafxVkW4GPabr+XvGOz7tRoTtQPfgsDj4XfoqNiXviFM1
	xFvp3NGXHP4jwCS39z/AFgLt1AxbvG3brWh7b4D5OvfK/LG6fyHt+vtkS8Xi40qmw0e70yhA3y0pl
	5AfPzqE5En6ufR7xWMQmgXbm0D1kvi2pvkmFTwFfb97053Ip90rCaFOoLXmRUZJHbt/zt4GJ3yiMM
	mFAnn9R9pgDpxnLR+Vbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrcH-0007st-Om; Tue, 08 Oct 2019 15:41:37 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHraw-0006pV-Sb
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:40:16 +0000
Received: by mail-wr1-x441.google.com with SMTP id b9so20009276wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 08:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DZ75OeBMeoZr9SzaWQDvyxO7uuvtCYY2aDYU12NSuuI=;
 b=B/loA8XflODrFoDoqVtUDasNehNF1bXoqm3fFdy0PiSuTTcNehEJBzYHes+gyu3kBJ
 EKap1MovSD5k+vZ8PMEbEY04/kKAKDkjZv2fiH+qetAyuxGemdM9VvK+wUsk66owfolS
 2YBshwMSE14mZK4qwCVF0e/kEbZHNMS14q1j4NFUsS4Dmz3ecjElt+fHR1UMlu6d8Apf
 PGm8wY+x0Go1i7pK4EvquM1ptgJKgl80sdzzQDZ9YFjP3ZLTk0iWc7spNmtsaAV/6PhA
 WJFmzx98eS7PjeVy4EFeXhC63rQFbmFjw5udFfMIePBiSAWeq3+ZmPTF4GkJBsCAkpPr
 RYJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DZ75OeBMeoZr9SzaWQDvyxO7uuvtCYY2aDYU12NSuuI=;
 b=OyWSfKYiZ+/cKmtG86ufoG5XAewA0mQDTo7RbsOnGCjkZp5DQnbuP2rcGc1OPuG3R6
 ZS068XsjxZejS4ld2udEvoAIjOLoTlW0K/pCZdrhsTPr+/PLtehRAFCxeZt2TntzumIA
 +qWlXiOTDmC+s+zJY9kSLy3YVPYnHNbK0RsZYu6AHsjCWOq6JBdJEaj11sy67m4a3L9T
 hI+oJlbOZrN59e2tfzc4O6jUWoWa/vAB1t4y+lYun62SOvrEM4SH15v5kh1oSxoHSHz6
 VIWbaX/rY1+sePwDvRXaTN5O3yr9xmtAqQif9g80aLnvL7Kf23EN2z3LnFTYrJErnyEl
 0Tsg==
X-Gm-Message-State: APjAAAV3lxQkBvVQNcqcrv/dtkgEGl2FXu0+ie58O0Z/atUKIGsx9z9o
 pEcuppeCetXAHubJrYCWE9wGEb6Mce8XFA==
X-Google-Smtp-Source: APXvYqx02vk/qY0ATFSuVTaHh20ri4CJI9t1QERSiZ3DslsS452ku/hpo6ldDiHZYljfBdyFuD7vgA==
X-Received: by 2002:adf:f649:: with SMTP id x9mr27061505wrp.163.1570549213184; 
 Tue, 08 Oct 2019 08:40:13 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id x16sm16784723wrl.32.2019.10.08.08.40.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 08:40:12 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.19 04/16] arm64: docs: Document SSBS HWCAP
Date: Tue,  8 Oct 2019 17:39:18 +0200
Message-Id: <20191008153930.15386-5-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
References: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_084014_956440_50F5659B 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

[ Upstream commit ee91176120bd584aa10c564e7e9fdcaf397190a1 ]

We advertise the MRS/MSR instructions for toggling SSBS at EL0 using an
HWCAP, so document it along with the others.

Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 Documentation/arm64/elf_hwcaps.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/arm64/elf_hwcaps.txt b/Documentation/arm64/elf_hwcaps.txt
index d6aff2c5e9e2..6feaffe90e22 100644
--- a/Documentation/arm64/elf_hwcaps.txt
+++ b/Documentation/arm64/elf_hwcaps.txt
@@ -178,3 +178,7 @@ HWCAP_ILRCPC
 HWCAP_FLAGM
 
     Functionality implied by ID_AA64ISAR0_EL1.TS == 0b0001.
+
+HWCAP_SSBS
+
+    Functionality implied by ID_AA64PFR1_EL1.SSBS == 0b0010.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
