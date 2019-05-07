Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA0215837
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 05:49:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BXIN3cnbehYLu36oILU44roR3bmrXjmalBGxIEu429o=; b=l0SMUqYsq7gQuXY1NRsURO9WHx
	VQpdKRMQ96IiFrYCUOuN2MYJ42+8omFjjFw1mdtNY5RtflAAw2PuGTC/2Z0ci/9j5wi9nZPSiOlw0
	RpRdVAuR3sQfmUnKPIfYFLCnVdhyc+NqzRK0+xdoyTWHTh562cZrja4xzKihlfJ3CV08USIzcgDtJ
	nbgwCUgApMfhAOn0lU4z3nj1dfTVhleSqUZhXhH95pDGMwmmxtO84XmdHEJjo73rKnWplGt+as4gT
	N/WLm0OuMa08JMGLzL9jSPn7fb9efgCsQpR0YwYs4uwIwe5DOUjplBZugPZSjOyEvi18VnemHiL3u
	54lESfHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNr6u-0006rf-FA; Tue, 07 May 2019 03:49:44 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNr5s-0005je-5P
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 03:49:13 +0000
Received: by mail-yw1-xc42.google.com with SMTP id q185so12136711ywe.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 20:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HX39aaG9JDmzsPiOnQ6Z8Q8IW3lQS6Yf74WRPH0c48o=;
 b=WM8AyVwsdKq5NfZ6QCeD1mvc/KFMRqCQw+7QYPsMMr8kjV81HX758C26iTUOuiYwoD
 /njnamigLFj3dEcuXoFhfJEL+11L83qn5Q5wXqkgvJt0sxpnGr6SZbsqy4nloAutGuyg
 gaf7TiwzbmLdCxB5f/br5qjAjqGo9oLO0GrYYEsXJGOCzTuCBZmjxOyH1M938hb/2yJ4
 XMZZkt0ho63ylX80i2bwC5sXl7w9nYdxSeJQN4gpMDceM2afLa4fDNETemzDY81GE/ub
 Cw5Hne+Q7hiZDcX+Tcxyio1y7mWk4BEZy6m6g0DYX5qwtrOKBzPKseAagrabGe2hhJqc
 9F8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HX39aaG9JDmzsPiOnQ6Z8Q8IW3lQS6Yf74WRPH0c48o=;
 b=pKNvvuaFDJE9H/lwvcexbEC4a4Lv2COsPKH1F0oIE6pERdAAIbxZpe0uAP5d2fqQnx
 AgP/aS9oP1eTA/6G6z7YFlkR+lVpbA0yFFvdrCguVtBLhUkCy3YqWhmFo3EWy7nNTtli
 QwRag9v8sDSVEAj/1avvqc+03es6uuwKgy6aDhlS9hRMoyJrsSg7ljbsxdJ8wIxFNjyS
 zIlT15KvAddUZHGrlS1pszSY7QTcWmu/uWvoKA08/tJE5UxqKpnIW8UMT59sllAuvrKH
 Mf0FvVuW7/Pd2JYWTo73cQ9ND6J9cEJNPzyZEnYHpvwGmfqlDaTMs7xa4sJFEmMxUuOs
 aH6w==
X-Gm-Message-State: APjAAAX4A4EaOz41w+f5q1E0PfqHLsvOksUH5OOHFXHogj0zWCY0A1oL
 BSQvBgGYLivy+zcRsjSpkoH5OA==
X-Google-Smtp-Source: APXvYqzxJV0NPPZR3baS74+vAWw3a5G92nxRSQsmb6myp/gIx5Y+4oWTtNaoRhnKgZ9WfHhy38pCtA==
X-Received: by 2002:a25:3c5:: with SMTP id 188mr20191982ybd.43.1557200919431; 
 Mon, 06 May 2019 20:48:39 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id a205sm2120383ywc.105.2019.05.06.20.48.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 20:48:38 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 09/17] ARM: dts: vexpress-v2p-ca15_a7: Update coresight
 bindings for replicator
Date: Tue,  7 May 2019 11:47:26 +0800
Message-Id: <20190507034734.20622-10-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507034734.20622-1-leo.yan@linaro.org>
References: <20190507034734.20622-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_204840_745590_023D348D 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch to the new CoreSight static replicator bindings.

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
index 00cd9f5bef2e..ef76450fe98d 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
@@ -440,7 +440,7 @@
 		/* non-configurable replicators don't show up on the
 		 * AMBA bus.  As such no need to add "arm,primecell".
 		 */
-		compatible = "arm,coresight-replicator";
+		compatible = "arm,coresight-static-replicator";
 
 		out-ports {
 			#address-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
