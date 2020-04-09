Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 065471A3BBB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 23:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cBtDFT8gwanOQoN+oWCsHqrYkELJdeF3f5MfgpwoCnQ=; b=exRkkNWN523Qym
	wCEcNpWxEeaEKLdEKjegivaMwzvvREGO6B42+qQmMBH7E4avLZ1y/N5qfFA0phRqn9loeIz4s3B3+
	cvV9cckgJxvy/Ca89bXniAmCyWwaQh5CchSURQ9weSg2gqWtuptYAX1CZ1eIvS2ev05b81MoIA2MZ
	Hmel75ObJ1pS3486o2bgQ5SImxmhstDHSpBXCEFKptV2WZjudRVambRomnfTXkwBrEtLBI0RXUMnl
	hrj9YHkkDWezqlYwwDYlT/1YiF2FPg+bVFgstCAYCG7E/CNIGesKKz9dYMGBGXQYomIlCPyUWSyTh
	XzpIyOQQ0z6LPg9SgcPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMeSK-0008RQ-Gc; Thu, 09 Apr 2020 21:11:24 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMeS1-0008DP-35
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 21:11:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586466663;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=YSl0zSCZeOdeYuCL6gv46V+k0KPuN+t2A0LflI9Lv3Y=;
 b=YdVNb2sAtcBhVtmd96TBnBBVqdDss32SltS5/BswAq8PKm0LnZbVLqbXZhm7aIUlMa/OFo
 O/Q9UQxRxQ/XmW9MGRs+5g2IaurvuE5vljQPWpHJUK0aoSvz8DmjLVBF7f06vlTYCrxomu
 P/yUiM/JwT4fDA7NoKWJMN22K+zPI7s=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-379-2LpqB-09OiutwBQAK-0O0g-1; Thu, 09 Apr 2020 17:11:00 -0400
X-MC-Unique: 2LpqB-09OiutwBQAK-0O0g-1
Received: by mail-wm1-f71.google.com with SMTP id o5so59998wmo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 14:11:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=RtBDKwbJtd92jp7E6LtBd9yu+eRXqfVPRMTN3swQKxo=;
 b=BQdcgLvzkEprChmwk2IA2imzatj6W+tB/+8TKNKYMuunX5as4C+Wxx3y0Uhdmfl2cF
 Cx172o+/Bp3HDHr9FzznQR0y9GKa7AfoVRANx0UlvNVEwfho9h5JSBfuPYEkQI52wxcj
 CiLlt+Yuz3g6MbIJCXLSF9UG7guWs9IaI2+Jfzs2NHK3jvlFu7UBHDXVSPuM3LwyQmQG
 ohMPlDNN4bGOuzV5XjrvxCo2X6xpyJ1iPUNFqoDxolMYoKIer5eSnH07UQSImmGgeqV1
 9aE10pLNSv6V3vaUUvu7UIaItVaNMnu982JQs9Y5dmC2VhEbLUymFislt12EOI5o8W4c
 XsMw==
X-Gm-Message-State: AGi0PuZGZxTq55O81oAiUPSufHvLGv6Hvso0l7tAlvn9kHGR6O/1F1QV
 aK4dOXzhLOSCKkY8sywL9bRqrq6l4fSRnF4N4ipjn+ETndUdAVKGFT7jUmlQlgEK1uomyCIkrVY
 94LaC8xEB2iiJoeI235+YwJRz7cLJmXzdsGo=
X-Received: by 2002:a5d:4011:: with SMTP id n17mr1132450wrp.104.1586466658706; 
 Thu, 09 Apr 2020 14:10:58 -0700 (PDT)
X-Google-Smtp-Source: APiQypJabTxDz0WDx3biZbaja84PLZF34ZKZYgpYhxA8C4IQqw2wzmtgimWKqtv+yfhnsaBo2HvboA==
X-Received: by 2002:a5d:4011:: with SMTP id n17mr1132435wrp.104.1586466658564; 
 Thu, 09 Apr 2020 14:10:58 -0700 (PDT)
Received: from redhat.com (bzq-109-67-97-76.red.bezeqint.net. [109.67.97.76])
 by smtp.gmail.com with ESMTPSA id
 o67sm5411345wmo.5.2020.04.09.14.10.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 14:10:58 -0700 (PDT)
Date: Thu, 9 Apr 2020 17:10:56 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] remoteproc: pull in slab.h
Message-ID: <20200409211054.12091-1-mst@redhat.com>
MIME-Version: 1.0
X-Mailer: git-send-email 2.24.1.751.gd10ce2899c
X-Mutt-Fcc: =sent
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_141105_221497_257F70E6 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-remoteproc@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation to virtio header changes, include slab.h directly as
this module is using it.

Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
---
 drivers/remoteproc/stm32_rproc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index a18f88044111..7ef931e9605c 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -19,6 +19,7 @@
 #include <linux/regmap.h>
 #include <linux/remoteproc.h>
 #include <linux/reset.h>
+#include <linux/slab.h>
 #include <linux/workqueue.h>
 
 #include "remoteproc_internal.h"
-- 
MST


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
