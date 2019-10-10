Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D356BD2844
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 13:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I/LkAIG+WfrHksg/EAXYRshI9IA5StexkssXi/K2UOc=; b=s27AIK64bqPQwHgicRn5vJhgEh
	xuXTfS3YJrnc1hE9DA33YmoZoytHbxwigtQ0Z+PlwLL/mRrmx4Nlk0d/8CCff9BHMHYVN8BtU4KH6
	W/8Od0TOEjF6Y7R5/g3EYRr+Ana8CGGZabHDvlPGUlRZsI/SUJQZ3SgoRDY2HeYIbWBgTOkntedyL
	63s/d6lya4WxNLFSTCq65FqoTGTw1cqSjXwiBZaCK9+AzEoesDpQdhGXiA5N3bG/3R+9TtTOTbfaQ
	b44lo/yg9hqburfyM5EggIR34QHM4gDwBY1wd7OMykMmgjzokZx2hRfcgFsog3CgfTJBDBQoPE/Cd
	wLWZhU0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIWph-0004Pc-DX; Thu, 10 Oct 2019 11:42:13 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIWnq-0002ng-An
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 11:40:19 +0000
Received: by mail-lj1-x243.google.com with SMTP id y3so5843061ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 04:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nvXOpVcM/IpothdU1ZKoTmNHFS7WJStir72tye3UWWE=;
 b=EUAy07fBsO1Wz5z3ljchfWd2sfdTxk2utOmWleJB60APniuQ0U3RAzfQdhfU/BWbU3
 /PpxRmMYJ+bhc8H7y4zsGtOLcdqr9mF9vHT+BAF1w2huN0P/nPF6ZTE794efcWFcaxrq
 82N6hkfxHfNP9zDCtgRDb7F7P1918eEHfSkhI8PK4xqSZVgc88lGjJ53etEeAcHIcwMP
 ytQqCscNLLgc+xJioNh+2NOpa9q7QFuCq+3m59fEwdALI0MT6g8ITkIlJ/WS9+aWE+B4
 Z0vwxgptGD1RDuLRlsFVMW4k0nYmjTmLaNA4g29yjtIoKOgj6OhnsLkPjHkVD+6KZGZ4
 qDXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nvXOpVcM/IpothdU1ZKoTmNHFS7WJStir72tye3UWWE=;
 b=OSh32ARvXIwxTMdvocZo05+J/MoWiFgThA6QXoBwDmQRp4YK0WY38RFT7CEAQBLTn4
 VsFAjSukSLrs36wdE22ZjG+9BvWQ9oOZVMOQzMDr1MesKo3K/lfAq/XMxjIPh5UYySQE
 JVoKQs2kpuByWnhNZhKCg/1Oo8/BsWcY+P5NsrybHMNXVEPqcrU6lnDCHH6sTxkEBwq4
 pbNPdnwIyLo7cRjsCg30Djn1/u1xnmqNHicmw6pEJwjL9h41tMJTjTBnNNLq+LaRD0c0
 fIhBgySaS5bFAqZ+s5j7dNwBML1Wp6h1RVHM1GHb0gQiMErWv43GmGvTpRvLn/+fgyJd
 HGUQ==
X-Gm-Message-State: APjAAAWHUvdRnVW1wJ4BMFjGULhGGcXVIyiQSl7IZR1QzmdPBgi1dycT
 1rzJIiVer6ZIqg3B4qsTSXp8XA==
X-Google-Smtp-Source: APXvYqxUdEhaIFvRKswg87UCzDQiM72AeRacZpBqrmORob2xGUbd6DLiJRFX4z5exUT/BNmXNpFbgQ==
X-Received: by 2002:a2e:89c4:: with SMTP id c4mr5832114ljk.65.1570707616291;
 Thu, 10 Oct 2019 04:40:16 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id p3sm1168937ljn.78.2019.10.10.04.40.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 04:40:15 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH 07/13] cpuidle: psci: Support hierarchical CPU idle states
Date: Thu, 10 Oct 2019 13:39:31 +0200
Message-Id: <20191010113937.15962-8-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191010113937.15962-1-ulf.hansson@linaro.org>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_044018_512537_04AB83DB 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently CPU's idle states are represented using the flattened model.
Let's add support for the hierarchical layout, via converting to use
of_get_cpu_state_node().

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/cpuidle/cpuidle-psci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 1195a1056139..5c30f23a8a7b 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -85,7 +85,7 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
 		return -ENOMEM;
 
 	for (i = 0; i < state_nodes; i++) {
-		state_node = of_parse_phandle(cpu_node, "cpu-idle-states", i);
+		state_node = of_get_cpu_state_node(cpu_node, i);
 		if (!state_node)
 			break;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
