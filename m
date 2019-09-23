Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B6FBB123
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 11:12:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r/AjjqpP1a4N+7EoeTY8SrTsE0vY/w0MX9najix2TfA=; b=Sribv79EYC9HrD
	jfBEKnmww+DJO0hLtHYrf7joTi3uc1sihywT7/XcjJXmLbV8x1UFtvoki0nOqHZRccBcc+2nJ+xmy
	JeeEdci/4hI75/XetHRgV7dYczF5tbFd/3bQAxQHpOCKQ/oj8OciVz0u/t3PXiKniq0mG0VQXYKUA
	BMV7bO1msp7WjBnwGdAAaFOtYSbK+xRtqBg5JWqug0i3CfYSw84hB849ntwMUN/Z+wDMGntjkPHtm
	KdczaWo5bl205iTbqO68JvDgT/Wq0wQReXE9k0GTG0VWd0uKRAW+VcsAdOuXEEyM8eQcpcoe5cudb
	Ck562Vky3x5dAEEmZAYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKOl-0008Vr-U6; Mon, 23 Sep 2019 09:12:48 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKOY-0008Uy-3S
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 09:12:35 +0000
Received: by mail-wm1-x341.google.com with SMTP id p7so8961477wmp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 02:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k+ihouvg9ktK+RPpq8jbxn4t7z2EEY8Zp2WQ3HmFaa8=;
 b=BcfwY9h7P3Ftd5yxA7yFQ4nZ6zy6L/c4fdMp3K7rW+5g/KpW8+ECLPLhdB2yV+aOyG
 qsw1xe6jfEYskUxCGFfoiP4YvITMpzZ6IIkKd4ybaFKuZ//MB4+0rFoR0QJiZLm58/mH
 4osMvit3DRwJUmp0fXGZwlnPhdN0r4f6oE5X39nawvQ5mT+jtpAuDWhBGADq4l+yQlal
 Jk03ieW4/zrW1o+gLaM9g3FylB7AwAkLGg9cDcEETKUSGFO2nNfEhzviFSquXTUyvCvE
 kcUphtBRvvVrLPnGA5Z3UMJD0ahPQp4Q7eMIUB1jTOlgeJEDAqmjrEzz+CWGImcjfad6
 ZJBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k+ihouvg9ktK+RPpq8jbxn4t7z2EEY8Zp2WQ3HmFaa8=;
 b=Rjgv052eV8yW/YHguDK3X/DZFz5kUZN+C+RPsOpcg3ntbzIIeHbVcM7uz/AHnO4qVP
 9EhnjbXPoU8/yHgSkihFZGEISM6X+d39xWPi9LagVQh0gwPE1ddCIRknJD54uSlx7I7i
 pzBnBiR0ePHHJN/63TEVPlTVD6sbbnU2WDzUs3pUVcuQQhG7ZMWq6oHKi490lPrfQYTW
 FA59/Y9bAjzl/pySs1uc9a+44KnUr32oWeeT46df4rZ3nH3/+IiSf/uHl54FlKcLhgPV
 QKXgxYlNyBZapAz5/PKVXYWse5zMNlpdeahcg+wo4lhkOCK/QV/H3CF3mK3J5/P8GMT6
 TMHw==
X-Gm-Message-State: APjAAAWrV3ChXIsCOG+efrxWeiOT9Gq7sR3iGmgYYWsZW3haIhmXmLKz
 G5cXuUCW1Zq0pJiRsi9XomwvnLWG
X-Google-Smtp-Source: APXvYqwqWj7YFcCwBI7sEfAPMtl1he+AyZT/cGaAdO0SMepetzqGuwM9QFzNoBrFpPcJtbM1H3rjXQ==
X-Received: by 2002:a05:600c:241:: with SMTP id
 1mr12810468wmj.162.1569229951689; 
 Mon, 23 Sep 2019 02:12:31 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id x6sm14312751wmf.38.2019.09.23.02.12.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 02:12:30 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: errata: Update stale comment
Date: Mon, 23 Sep 2019 11:12:29 +0200
Message-Id: <20190923091229.14675-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_021234_141961_D48B53E6 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
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
Cc: Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Commit 73f381660959 ("arm64: Advertise mitigation of Spectre-v2, or lack
thereof") renamed the caller of the install_bp_hardening_cb() function
but forgot to update a comment, which can be confusing when trying to
follow the code flow.

Fixes: 73f381660959 ("arm64: Advertise mitigation of Spectre-v2, or lack thereof")
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/kernel/cpu_errata.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 1e43ba5c79b7..f593f4cffc0d 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -128,8 +128,8 @@ static void install_bp_hardening_cb(bp_hardening_cb_t fn,
 	int cpu, slot = -1;
 
 	/*
-	 * enable_smccc_arch_workaround_1() passes NULL for the hyp_vecs
-	 * start/end if we're a guest. Skip the hyp-vectors work.
+	 * detect_harden_bp_fw() passes NULL for the hyp_vecs start/end if
+	 * we're a guest. Skip the hyp-vectors work.
 	 */
 	if (!hyp_vecs_start) {
 		__this_cpu_write(bp_hardening_data.fn, fn);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
