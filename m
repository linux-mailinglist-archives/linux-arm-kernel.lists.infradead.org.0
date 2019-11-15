Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7237DFE80D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 23:36:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=REvNrhMn1QEP1QirlnzNqzbB4B/ai/fcMAGINQpzg8s=; b=lcUkS5z4N0gL5XV229BmxL/R9z
	Al1cIQTHUtsFn08O+bLeCPbKOOWCwyqqQ4ZvC2GGwEanpDt48DJENALBJqtI3PrvGbHSHV5Epk7zM
	mAFXqJjwTMFlc2X3YhHH2KhQLn4j1ihfe1Gdas0ApOI7ZTTfoP7DdAqJxAPqa438zNyfvgBQ9jVmw
	R1Xl0OEHWSFKZIbJWjoCmegFoSqUa1E6Y6+9arm/iBNC05Lki4PkxdV5UHPvvQYgWgGJRIw1lncWk
	oRys7eph1YfnhEsEArtEjD+SGQag6S9kw9xex1wACZr9L4ynteLBP/bNh251WiwMdY4aiJZQC01ta
	Qf77MPbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkCe-0001gQ-JC; Fri, 15 Nov 2019 22:36:32 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkAH-00079V-4o
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 22:34:07 +0000
Received: by mail-pj1-x1042.google.com with SMTP id y21so159592pjn.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 14:34:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HUM10/8Wh+ACpH8iy+zYVazM7/j5x9SwSLUXvaHdtoE=;
 b=ypkIu9LpYzuilaTSO1ddkj4eAfzXCWg5IShx48OXs6BvHNF3e7+rx/03wNN1tYaleh
 SnZM8RHGgSNVrsmiwniMNuQyH174+xgl/q4FEQxe7UVXDuVhTtT/3TIahPM8bt5ZmH3+
 ud8Eos51tOebTw0Y0mq1tqIEY0ssGv6FbVUe9ALZXTAWJPcnpmI7iUshmshcvm770Ayk
 jRwA1AXpceNmz1E6uqRFqcGSLc2lSSfvePTl8s/unV8Lzx+f9sx/TSGf3xflzHr4szxN
 BXuLl9NHzQ6cEOZbYvbeYcQ1U5te3v0DNBTnZ3Ab2FwTA3bfYQBRlEMA2uNi2PTy8N92
 PCxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HUM10/8Wh+ACpH8iy+zYVazM7/j5x9SwSLUXvaHdtoE=;
 b=DNUaOzWcBbG3+pdAy7K8AMU56oVSOzwMgQtwazTmY3nKTjzSfS7sLd27NRPvyweYCW
 lhtFVYzt1I121TCSdYAHekKSpRXEKomZKgEKYpIX5A334m2AIHyV7VT6TYmEfEP7O8q6
 anfP6E5eX7n/eANNX6mbINm0pDvj4iHV4XdCXAn49l5+PUnLhZOscC6JK1S9lhj8DqVs
 xvgaRmdVuJU2azVZKVP9OJ1bboDS4UIWVpGTrwlwsH1u2/1x8H5g2HGyKpcId0CedZnT
 ERIlldmVoHb8pMRdcDQ8lAwRtD5X7+pf2bGb0hu6kbnUUQNDnG0wifeU+UUX6tWInToA
 yTgA==
X-Gm-Message-State: APjAAAW4LOY3FXl/iREgm/NY8zrl8NqlsDjoovd3v0X2r3RHbnna9mrT
 5yqBWJ9V+7E96gpUH5kldqAayQ==
X-Google-Smtp-Source: APXvYqyMzfmiYdBbALgyJW/Yz44XD67/vMuUxQ8EgtUszaDCbgKhRiI6HNcF282zphiYMjPaFRLwFg==
X-Received: by 2002:a17:90a:256f:: with SMTP id
 j102mr22689164pje.124.1573857244238; 
 Fri, 15 Nov 2019 14:34:04 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m15sm11699724pfh.19.2019.11.15.14.34.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 14:34:03 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19+][PATCH 08/20] remoteproc: fix rproc_da_to_va in case of
 unallocated carveout
Date: Fri, 15 Nov 2019 15:33:44 -0700
Message-Id: <20191115223356.27675-8-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115223356.27675-1-mathieu.poirier@linaro.org>
References: <20191115223356.27675-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_143405_189789_22E86737 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Loic Pallardy <loic.pallardy@st.com>

commit 74457c40f97a98142bb13153395d304ad3c85cdd upstream

With introduction of rproc_alloc_registered_carveouts() which
delays carveout allocation just before the start of the remote
processor, rproc_da_to_va() could be called before all carveouts
are allocated.
This patch adds a check in rproc_da_to_va() to return NULL if
carveout is not allocated.

Fixes: d7c51706d095 ("remoteproc: add alloc ops in rproc_mem_entry struct")

Signed-off-by: Loic Pallardy <loic.pallardy@st.com>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: stable <stable@vger.kernel.org> # 4.19+
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/remoteproc/remoteproc_core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index aa6206706fe3..af9d443e7796 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -183,6 +183,10 @@ void *rproc_da_to_va(struct rproc *rproc, u64 da, int len)
 	list_for_each_entry(carveout, &rproc->carveouts, node) {
 		int offset = da - carveout->da;
 
+		/*  Verify that carveout is allocated */
+		if (!carveout->va)
+			continue;
+
 		/* try next carveout if da is too small */
 		if (offset < 0)
 			continue;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
