Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C139125A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 20:38:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eZYXm80IJTsuJNvvgEh9TkT96zv/i4k+guvkU1KpMIY=; b=gitlorLUY3DVzUrG1xk8F4K4AO
	KwAgVevGtAKpJN6szotTFhy5+jaWW+9y/ux3JohcXInbWE98YMaaV2nhZZcFs+ttmSBgosWt4RWCP
	4/YPuLcgMuF3WtO4K96dU24JPywLZVVQSUGeEYA37QugTA/ZhOalJMcT3ooXNiSef5tmZR8fr68OJ
	LyHcNkGMkX3Z7FxFIX9IBiEyHPz4SrzSrBjO2b2bm5EvFhmbPyvBIEWP8L5ys1liAOGo93TvE4h+j
	zNUm5vJvEv7FYhAff0FoYeP/uV+mepa9R+Wf1CfewMJsG3QsFIM4iZM2qrZbxGQCxanz0uNTnyTMQ
	nXkTgt/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz3b8-00032s-7F; Sat, 17 Aug 2019 18:38:42 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz3Zf-0001z2-3S
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 18:37:12 +0000
Received: by mail-pf1-x442.google.com with SMTP id q139so4782761pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 17 Aug 2019 11:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=a/DBFL5pnFxmW7r8pfJ654oUFkPKTYmOJJb8EXbuSt0=;
 b=T9fyNuGo7nXkSqgRbKRXwczkyhajG9D4rCnAPsUVh/g/paIXjQTwipVm1uF/ABT2V9
 cjX/57obkUbaSbUg2sQ8coroy4v0Hgd51SHP8S9tOEXpVOuYbVtzYwtNJlPCnOktQjFf
 kOVOpXGYlxPLKVxW8k0WsCm0fid2aAyuCeLH4rsHkbgV772Ak58F7M0gCcNFFm5TLEes
 E5vxEmhWsTueRFidXcLztgrb0kAly+e8Sy/3bFx3pZ/8RWtz+SNR+zbFFMiXAp7QmObT
 0cTuFNpdDqLdAseLFnL80NXg7Cx1cbma6cPnuzGALJhT/+zYduRgU3QADv2WfG8bVBaD
 J5XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=a/DBFL5pnFxmW7r8pfJ654oUFkPKTYmOJJb8EXbuSt0=;
 b=t6QDU0RCmhwYAlmcx4Gi+jCya294FsXEr/CEainjvdVBok8NjBlesy7xofBIU7PsaZ
 d9ZlbfPRw49pgkZamQGr6GFm+U5PA2glbenyVKntQIvmfvlZGQAUpoDH7ZXbZpYYcU0/
 JmEoSqUY9pyZPPNy2ByNt9IucZb82RqpK03WDAPGSEBQTX8STK5OZmHAAFcTw19GIzRR
 5q//qUNEjTXKMXA7A/hjP1+Vo2jhhYFArepp/tKBp79wLUpOxC7nFY5gE97zblfNHfSV
 yli2YOYrtfpsCapg2ML2rMdBb60XIdZhUDdEbdZ7f67tmhZK4FFnFNKUOQv3vcrKOLof
 lf+A==
X-Gm-Message-State: APjAAAXJeH1FWfXLUGMvc2gJiDBZf4PYLNVjetBqPmBMhgJTLSRqUXQh
 1HQp1Y2TCHaDdS/a6OLgNEB7
X-Google-Smtp-Source: APXvYqysG+ORw2lSBaxTYwdL1FKWqn7EDAacICLrMuXWKnS8dBwKXrAqnklYhymDEx1/Eb48y+/nkQ==
X-Received: by 2002:a17:90a:21c1:: with SMTP id
 q59mr12582966pjc.6.1566067030621; 
 Sat, 17 Aug 2019 11:37:10 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:909:4559:9185:a772:a21d:70ac])
 by smtp.gmail.com with ESMTPSA id 33sm8588640pgy.22.2019.08.17.11.37.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Aug 2019 11:37:10 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v2 6/7] clk: Warn if clk_init_data is not zero initialized
Date: Sun, 18 Aug 2019 00:06:13 +0530
Message-Id: <20190817183614.8429-7-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190817183614.8429-1-manivannan.sadhasivam@linaro.org>
References: <20190817183614.8429-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_113711_302906_D32BD668 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new implementation for determining parent map uses multiple ways
to pass parent info. The order in which it gets processed depends on
the first available member. Hence, it is necessary to zero init the
clk_init_data struct so that the expected member gets processed correctly.
So, add a warning if multiple clk_init_data members are available during
clk registration.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/clk/clk.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index c0990703ce54..7d6d6984c979 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -3497,6 +3497,14 @@ static int clk_core_populate_parent_map(struct clk_core *core)
 	if (!num_parents)
 		return 0;
 
+	/*
+	 * Check for non-zero initialized clk_init_data struct. This is
+	 * required because, we only require one of the (parent_names/
+	 * parent_data/parent_hws) to be set at a time. Otherwise, the
+	 * current code would use first available member.
+	 */
+	WARN_ON((parent_names && parent_data) || (parent_names && parent_hws));
+
 	/*
 	 * Avoid unnecessary string look-ups of clk_core's possible parents by
 	 * having a cache of names/clk_hw pointers to clk_core pointers.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
