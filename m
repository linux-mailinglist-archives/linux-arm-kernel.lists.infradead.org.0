Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D747148B83
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 16:54:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2ky3a1J2HszmGNmpYLuAi8eHC3I2zYBJGx/RwAu4CXk=; b=K0otso8JHIboIv
	Emda+8hQ4ViKqjJR9YJ1xF/84tbif7o+MvSlT/l+o7kBvjtq4Lpy/WOz1dYgJUibYQTWAuWMaCD1u
	s5omqAxotGjclaAXJ5QLWjSof6nmYLbvSD4tWd77kOEdXop8LW5rxstXBHeEd2stERebQMI2ENTWJ
	doZ6rZG+anu6gxjsmy6MpnEi8oQ5CPQpse9TiuuwyJnFL15rSADYDgKqOq7noa/tVfz0THnGj9GQv
	KlxjvpEeJUxx7UrJlnliez5hF54XCb9GaNM/rOdUKJnzVnZ9NXgS/ft1rNs7qiZaSoiOqlQSODuT5
	TNplnLRPNEgQZujX4pkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv1Hp-0004nO-83; Fri, 24 Jan 2020 15:54:21 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv1HY-0004mK-GT
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 15:54:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579881242;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=UohH5A0iL3zhxPiOT7fwRt06zTq5OkDoMzvog04bHLM=;
 b=ikHonOBeBqYaQCAQAplHcIxazFoHEUDvw48m11JX6dj9oOdmXXOiOBY/27bxzmCCarQX+G
 HKnDIkx2SCLXZcHaw44RgaPNHdpykJCewFAEEzZTg1ZfaY8lgzpqLMTejpbix5lj1FIyK7
 RvVbz5pKD4gZtBszEnhJnNG+9ZM+HG4=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-24-4P_e3yqqMTq_a1OezUV2sw-1; Fri, 24 Jan 2020 10:51:31 -0500
Received: by mail-wm1-f70.google.com with SMTP id o24so962342wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 07:51:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4DKa2RCme1P41CH+DPjy2k3enALw+kJPL2/93xPmuuw=;
 b=nWTytq2KF8KGLeXivqqXGk6lOor8CzuiuuGLnM3GRjkx/t56q8j3vmPtJG6Z+7f2f1
 jn/efa4PYLDx5npdKmd/dWfnleTUIlOhoXNIx+Hq7toYpZEuk16XL9eGT80LVMq7bWpg
 RqS7aN8yTJ1rSRMrToH0ueyQ1hlnTIZSLOeiccjjidLvgEsRyusliooXyu/BbkVdqhYu
 +PoNf/1FRqy+P0UK+ZXOJbIcgI5wFqJkOpvqZgRFWphaKumA3qjdS9WG5ZNh0VccDeOj
 LuunOeHmRAptf3PaOI+Wo/f5aWJfzvqGJM+xiHm8DWn+UHGwaz/nlEvw80uzwE7xTbT7
 wtKQ==
X-Gm-Message-State: APjAAAUjhvq9NK1cI+6YZNaVcp9JE+CoTeZpFjRMba+1D83xIhRgQCqa
 EPuqSGiqL9FfejFI2KM33Rf2UoR9EFI26ptuQY6wTfMfx9IgSTwGFDuLfMFJUhHSh8Swozv1kqN
 ccIFMpKQEL7UjF+gG2DuG9QrEsJoBoqVpTbA=
X-Received: by 2002:a5d:4983:: with SMTP id r3mr4730745wrq.134.1579881090185; 
 Fri, 24 Jan 2020 07:51:30 -0800 (PST)
X-Google-Smtp-Source: APXvYqxEpH2fUn1KY2XXa2vIqzGr5XJb+gapkXkgKKAD/xDUf7n3F9nAgqP4XiRNnOLvkBYcMZ8ZKQ==
X-Received: by 2002:a5d:4983:: with SMTP id r3mr4730722wrq.134.1579881089861; 
 Fri, 24 Jan 2020 07:51:29 -0800 (PST)
Received: from mcroce-redhat.vutbr.cz ([147.229.117.36])
 by smtp.gmail.com with ESMTPSA id o4sm7793147wrw.97.2020.01.24.07.51.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jan 2020 07:51:29 -0800 (PST)
From: Matteo Croce <mcroce@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: use shared sysctl constants
Date: Fri, 24 Jan 2020 16:51:27 +0100
Message-Id: <20200124155127.6645-1-mcroce@redhat.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-MC-Unique: 4P_e3yqqMTq_a1OezUV2sw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_075411_883247_2C8BD4BB 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use shared sysctl variables for zero and one constants, as in
commit eec4844fae7c ("proc/sysctl: add shared variables for range check")

Fixes: 63f0c6037965 ("arm64: Introduce prctl() options to control the tagged user addresses ABI")
Signed-off-by: Matteo Croce <mcroce@redhat.com>
---
 arch/arm64/kernel/process.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index d54586d5b031..1398d78891b7 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -608,8 +608,6 @@ long get_tagged_addr_ctrl(void)
  * only prevents the tagged address ABI enabling via prctl() and does not
  * disable it for tasks that already opted in to the relaxed ABI.
  */
-static int zero;
-static int one = 1;
 
 static struct ctl_table tagged_addr_sysctl_table[] = {
 	{
@@ -618,8 +616,8 @@ static struct ctl_table tagged_addr_sysctl_table[] = {
 		.data		= &tagged_addr_disabled,
 		.maxlen		= sizeof(int),
 		.proc_handler	= proc_dointvec_minmax,
-		.extra1		= &zero,
-		.extra2		= &one,
+		.extra1		= SYSCTL_ZERO,
+		.extra2		= SYSCTL_ONE,
 	},
 	{ }
 };
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
