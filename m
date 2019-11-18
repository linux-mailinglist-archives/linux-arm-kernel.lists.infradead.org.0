Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC334100412
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:27:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9NkNeziYrluWehZMx84K9oIhlTEPw3Ovg/2s49ALpE=; b=tasOJjp4PPYYp6
	y8KKo1jf6JKr/OiqxH8S9UiU66LfdNIYxw9wG+uJiULf7MVt2cHRnhEm8+6hBkx6iK5iYBeUfNppI
	AoUX1Ry5s1UY9EH7qL31TtTWFCde6R7dpUIDMfgmiKBOOW2A3iKDvRgyIMSj2Q7frR5y5Puc2nBzT
	0o88paVw7fqScwg5AIf5kkluPa5joDcLPZWRCYTci1Sin4aJhb13OjWDlyqHPVx9tunf1tUPMNMkq
	tAhjH3z2qz2ntWYyGawKz00syTpfxLti2MqCoDBB2jUpecqCdPt0zGvpOQwilp/G+9L9oKncvmo2C
	xE3sD1acUU0kjJqZFqiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfC7-0004sw-RW; Mon, 18 Nov 2019 11:27:47 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8B-00010Z-4S
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:23:44 +0000
Received: by mail-wr1-x444.google.com with SMTP id r10so18996661wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:23:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=td9IeMtAnKP3TNZfmfJvazvskLsY9wm2/Illqt7TzBU=;
 b=G64zeN1sRuWJalczBb4PcQsQpdk8AHwaM9zcHSLXuqOvP5z4JH7E9AP76uvffGy3zY
 yjRjr2asra7B1qPqQ/fI0qbAgipxM8OEVMFbLZ0C/GpWiqxCk1f8PPb1AHMEFvY4WNYP
 gENB4iPaF1vsQQWQhDFs6zCOfSvffYUQVX+vQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=td9IeMtAnKP3TNZfmfJvazvskLsY9wm2/Illqt7TzBU=;
 b=SObdKzw+ns4Fcqp/4gC+CHmZZQKhLxd680L8wwrsw3oGPDUyjedS/d9ctZ7K8tCWbp
 NC7RIR0B4Kv2afZgZHsQHY90n/whqt5jzlHjbfrPkFg9sbMCnS+EzmuQDX3ZkMEr6LK8
 xQN+fgPiEM97FSYL470BMT0RgMU2UQWO2PJpdJwHq273R1EmmMJEuVOORN6VGMTpy123
 3WlCsizB8yG3H3p/w+MpqHvRX5zycboVD+64p+choQ3zoR1A1LnLpPCXvQIhgbETAeSW
 mBQrvPe/DDj1lFf+lE1kH6lKMI4suqgEqyAjtikIhREW5L2+xvC7NdbjMJnwYW5DpHZb
 u60w==
X-Gm-Message-State: APjAAAVNLSJTUl2mhcm5QiFozcagaQV5rHUoTv8S09fLc/dz1HAhIJhn
 7G7+ssdgoiepS2uzAd2zsU23kQ==
X-Google-Smtp-Source: APXvYqzirelmZJRfngi/39rVlWqXESUNTo+aHeVFXR3g/cUeCUfTGitgRt+Ga84uxToqgzwRUh8Unw==
X-Received: by 2002:adf:db4b:: with SMTP id f11mr2022844wrj.239.1574076221874; 
 Mon, 18 Nov 2019 03:23:41 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.23.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:23:41 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 09/48] soc: fsl: qe: drop assign-only high_active in
 qe_ic_init
Date: Mon, 18 Nov 2019 12:22:45 +0100
Message-Id: <20191118112324.22725-10-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032343_207329_9FC6A818 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [5.186.115.54 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

high_active is only assigned to but never used. Remove it.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_ic.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index 8c874372416b..4b03060d8079 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -320,7 +320,7 @@ void __init qe_ic_init(struct device_node *node, unsigned int flags,
 {
 	struct qe_ic *qe_ic;
 	struct resource res;
-	u32 temp = 0, ret, high_active = 0;
+	u32 temp = 0, ret;
 
 	ret = of_address_to_resource(node, 0, &res);
 	if (ret)
@@ -366,10 +366,8 @@ void __init qe_ic_init(struct device_node *node, unsigned int flags,
 		temp |= CICR_GRTB;
 
 	/* choose destination signal for highest priority interrupt */
-	if (flags & QE_IC_HIGH_SIGNAL) {
+	if (flags & QE_IC_HIGH_SIGNAL)
 		temp |= (SIGNAL_HIGH << CICR_HPIT_SHIFT);
-		high_active = 1;
-	}
 
 	qe_ic_write(qe_ic->regs, QEIC_CICR, temp);
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
