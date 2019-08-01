Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD7C7D791
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:27:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8h71XgfEtioumP1fHMToVE4ff4IYhWfRvTuamjCj2l0=; b=RBe5FrzIjmrNLt
	AJUf/1iugAN6Q0S/wHSNpWZVE7PLwOFLiXYwRk428PlG3xN0QShsPF6wjqrI1fD7b0YcAFaZMpCuu
	cjGj61A/Y1vLDwhvG/k3EhYUolOhu8Ae3HEff+E0xze5SnksPl2HXJo/3WwkoS/2ty1TmgEnFR8xD
	8qqbKT/rqLIGYFiKVKwunZCUKomZv4Nb3hf9rXEZKjatUehSZEvQ9tuStWksxjAk+kpopLz/Jv0zp
	tuhpXv3K/4McpCnL4SKOBAl35zli95TmZPs/gbADIvjoEd4KvaugBxNkONeJu779eNVP3ScXuzR7d
	ZYXnwJWI66rgmm/Rr+GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6Qw-0004Ey-Oi; Thu, 01 Aug 2019 08:27:34 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Ko-0003ME-4T
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:21:16 +0000
Received: by mail-pg1-x542.google.com with SMTP id f5so24916213pgu.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/rNw3tnBxgbMcdBdzBneQcQUsRPBm5GaeGzxs7tkgFw=;
 b=oN+aQ42TkqS/ZeSiy3PDVQMFYJwaMygZDYjh2qN8hDnDvIcJXJV2xpqOJsfr2J87Vb
 HeXPSEp5GcxRtJuCXOKlcDE0H84nRUB/twMJAH4jd/ZRQ2XVQgi3URaW62kWUFpPqhvx
 VWkcO50KK0MHGygwXTdMFgPeTJlYbSSFLDzu1sgoU/zfeXdgQg51br4OgEkEcdJH7Lzk
 5i4gx5frWTr2aRqQyJrFvT/4HICocdqzcTYe2qbKmjtEUEJkGpNm+nulY/vpSEPHBKFq
 F6bqs230Y4TzLP/JVePgx7etwDRWQKZEMwVpsDX3zL1VhLFRyfY4sqoDKQ1VqFNTrw1w
 JK+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/rNw3tnBxgbMcdBdzBneQcQUsRPBm5GaeGzxs7tkgFw=;
 b=rccieL4uhP27aVlZIh+KG6ZW7Xm6V7jHhX6HgE4pS13aNH0kOpLCeTaL6vCetGBNsS
 OSx5FlhX9rAJU0LsQ9ItMg5B/Z8mpAYgrNXf6yCWF9R30hf/6g2M/as67GVzbUPS9Wea
 hH6G/adJKr/DhhE2Ej9JcY5ncJmX/0g8z7gBCXIyslQtn8wgWQN9zj1o3yqZEe/qyGTU
 HPkzM4z69mLPIxBDJDfofMJ70CruhkEm9Pi5ZBAsP3r183oXGd9SIra7Mauccz0Mtjf7
 2yRt8PLcROg8YxBWAy1xG90GNCFG9pCIGcCtSs6C3LBqPalbeNwkX9JP2YmlrcloQ1Qs
 o4cA==
X-Gm-Message-State: APjAAAWQ2tD45dDtc29khEyE0PE8/cXYhZQ0F0VWswAmjD/AQ+87++jE
 dSzaxCAbeVPBeQE3sLfL1R5zMQ==
X-Google-Smtp-Source: APXvYqyaed19XnqHQXWpNSnB4vgpCpEBf18uaExgzvHFuu8wKI9CVeBs5nx9R212iN+ptzJnz/i5ww==
X-Received: by 2002:a63:c006:: with SMTP id h6mr83873722pgg.290.1564647673509; 
 Thu, 01 Aug 2019 01:21:13 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id f7sm69426237pfd.43.2019.08.01.01.21.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:21:13 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 38/47] ARM: 8810/1: vfp: Fix wrong assignement
 to ufp_exc
Date: Thu,  1 Aug 2019 13:46:22 +0530
Message-Id: <17ef1620483a77f70c7c27e64cba3ad1684626c7.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012114_693052_0D79CB6A 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Julien Thierry <julien.thierry@arm.com>

Commit 5df7a99bdd0de4a0480320264c44c04543c29d5a upstream.

In vfp_preserve_user_clear_hwstate, ufp_exc->fpinst2 gets assigned to
itself. It should actually be hwstate->fpinst2 that gets assigned to the
ufp_exc field.

Fixes commit 3aa2df6ec2ca6bc143a65351cca4266d03a8bc41 ("ARM: 8791/1:
vfp: use __copy_to_user() when saving VFP state").

Reported-by: David Binderman <dcb314@hotmail.com>
Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/vfp/vfpmodule.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/vfp/vfpmodule.c b/arch/arm/vfp/vfpmodule.c
index f07567eedd82..f9392fb060ea 100644
--- a/arch/arm/vfp/vfpmodule.c
+++ b/arch/arm/vfp/vfpmodule.c
@@ -583,7 +583,7 @@ int vfp_preserve_user_clear_hwstate(struct user_vfp *ufp,
 	 */
 	ufp_exc->fpexc = hwstate->fpexc;
 	ufp_exc->fpinst = hwstate->fpinst;
-	ufp_exc->fpinst2 = ufp_exc->fpinst2;
+	ufp_exc->fpinst2 = hwstate->fpinst2;
 
 	/* Ensure that VFP is disabled. */
 	vfp_flush_hwstate(thread);
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
