Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D4D17E3F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 18:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=B2UR4Nd3DGx505aOeAC70Mhk37Xl8eH745Qo4p41OLY=; b=hm5
	qcfKGIdiVXWm78KzKyqzcSqfp5OZBCC0uFo0uH7ZGVYAe+l6NHrWIRQ+W+MP5fnk83L77V4x8XqrC
	3sgOHiG++XaRIHNKOcjghWF5nh2yhvciWis0VybEMR/xNOqJkfzStirrs7NICOUvS3wjab8aKIVmP
	/asJyjRqyCufmxhhSoh1QVE1oSe4CDDS7KVD6KwXxMsHzLSJkva6Dfq4bgoUhfVtW6OB0Erdr0+uI
	ThJbVsckMeG4Z+zHFr0jdjBxNzp/QGpcTRwZgNoo/Tmj/+TM8AkWr91xqckvfa7dSxsaVDdT4AN2s
	B0gLfxtJM7YWFocgVDkuvAoofGtzROw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOPcv-000587-M3; Wed, 08 May 2019 16:41:05 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOPcn-00057V-GT
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 16:40:58 +0000
Received: by mail-yw1-xc42.google.com with SMTP id a130so11148946ywe.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 09:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=pTdoN4SflFP4fbr2SxTsp4j5gxt4IEGJ5+rLZXtfkwo=;
 b=C+Yvedgm6x5TyN5rAF0fQpyyP7vco20p/5yRzDHrxwY8DiIs8kMFlJHh64PWZTR7BQ
 Ji/Jy3CL1KMBFbHirIji8wqMjsyknJUwRdWnxzWyWCYAolL/9Dc2VZSDT6SZaDFhUJre
 capLnF2C4Z0/6DPmdLxIADMM86o22HdI1Ging=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pTdoN4SflFP4fbr2SxTsp4j5gxt4IEGJ5+rLZXtfkwo=;
 b=QePXAXYX9hPAsP5Z90+sOO2N4q2lQtrhKtpIPvxTiIyT/9lkvTe9m5ZvT1Q/9lEJun
 Zqsi7ngE9OVycAS3foUne8dUignlvtW88ZUvtCx33pKnIPTCIxH9B2FIljlhJWZJk1nF
 MA4+anAoKP8GoyCmDnYaVgWludsIXNrMk34nLtzQK7qfE7ry/GA3fbaY44bIjSPz50Cg
 qBPnILGKHs/nGX6/s+JLVUlsiJbYrfYKIa4Wee/5ZrFAtuD1Jnx8UIqH/KNGn3JlxhK7
 fExn+dZlhJiJYS+2tCZERk1Zaw5A6h4Si3pDAlZcR5N61MKHbRetAvGCiOK/a0LFLLCE
 GQ+Q==
X-Gm-Message-State: APjAAAVvNouc9NovNy1xOhx2Dp3YBqsCri8zVZiYIfa8pDCbNIdbJZUW
 Fg0U70QEoGbuRn0xMv5vMemUdQ==
X-Google-Smtp-Source: APXvYqwmGI3bpXiAHaDGzTa99Dfvb2iN7LenRuQNW3bTo1/dsMzLvmARRa06QIQ4/vyHIh5XMA+X8w==
X-Received: by 2002:a81:244e:: with SMTP id k75mr18594001ywk.44.1557333656568; 
 Wed, 08 May 2019 09:40:56 -0700 (PDT)
Received: from lbrmn-lnxub113.broadcom.net ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id u6sm4671081ywl.71.2019.05.08.09.40.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 09:40:55 -0700 (PDT)
From: Scott Branden <scott.branden@broadcom.com>
To: Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH v2 0/2] mmc: sdhci-iproc: fixes for HS50 data hold time
Date: Wed,  8 May 2019 09:40:42 -0700
Message-Id: <20190508164044.22451-1-scott.branden@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_094057_558155_98785FA8 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-mmc@vger.kernel.org,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Scott Branden <scott.branden@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series fixes data hold timing issues for various sdhci-iproc
ip blocks that do not meet the HS50 data hold time.  NO_HISPD bit is set
in quirks.

Changes from v1:
 - Change fixes tag to Cc: stable@vger.kernel.org to specify version to backport to

Trac Hoang (2):
  mmc: sdhci-iproc: cygnus: Set NO_HISPD bit to fix HS50 data hold time
    problem
  mmc: sdhci-iproc: Set NO_HISPD bit to fix HS50 data hold time problem

 drivers/mmc/host/sdhci-iproc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
