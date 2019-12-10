Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F15119F93
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 00:36:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vCWUIvnAtTAPCVl59FWHEurYXAQUNkn+jf08GsJxJLA=; b=fvzgRTwavQZ+w8h1Zwt2/Kz+sS
	KvUc+qbMZxY4qDkd3S5K5QrplXQPsfH21hPxaZZ0d4qFRpO18qpzj45LXxKSkdOWFP6VJB5JAZ7nW
	ODwQ4r5S0MkPKuSIyagO/qMlPKCZmU6+1ymAi45YLGkPp+15jvy7rsNTJDY4k33AwGUISm0oxVqZ2
	9cGWQd0+xqcBHCLeVLXWUPZ9lnw04Ta4+0e2SH5MRQ6tucO7ALkt8wlhIQSxqkSHp5b3j4lh9B+oa
	ff8LMyKDWx5lGn4Bo1IoMW2/yxHhufHbMXOC9U1lFc+hC3TxTEYC5TBVSdoqBiNZxPG/bWLUSULmp
	mm9lGCoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iep2y-0003Ty-BA; Tue, 10 Dec 2019 23:36:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iep2J-00031o-9A
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 23:35:24 +0000
Received: by mail-wr1-x441.google.com with SMTP id z7so21920724wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 15:35:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7Dv/VxzJDAfTaBtCuFb7lBqg7ta9q337rpC3njmbd/0=;
 b=beROCNSlii7j5050AxrP1Q2nfBxc3FIFYjfL2AH8TEvtc03rVX3d8i7AjhVesNsrLk
 VGmTr4XknzlhVENJRdf4oSMLCEaRVOZ+XY4NUqsd6hSnP6H4HGv/vQat7yu9Ii1ROz35
 H+iFJue+sH9WDOTA0EBWMWJEegPa8maS+DNizsyvU3rstzki0QTRnEpyPYipRUbaD6Os
 biN+pyuvEn9w2hXXD0vvfTqDtbPiiuUfdJPVU3GHks53jSO4JLws5wd3CHK0cCcOZt4p
 jQSRb/pSz13CJQzbYYpvLP5U+Fi1jYtJKnpPI1798/OcX5Rx+2uCRdYp3FU3Dag8wjYP
 li8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7Dv/VxzJDAfTaBtCuFb7lBqg7ta9q337rpC3njmbd/0=;
 b=fQKj1FpdDQOe6Zc50nPkbJbWeFtF5HhDSXfjAfj5qhfULhiEmmbSrALOsKz97xfeLj
 dQxUh3jAp24y2GCPTKDBGz919iznekPkn71WWupiknvOqof3TSHqgRKVsZZu7WzoXXhu
 VryibSaHAryg8WZazD6GhLDukL/Tw81V774dXG4GQyOtgcQ1D4wAjD+/gQggRi+fwJ6b
 MO9gHW08Iky5yuBOl+0Blhynht0/j0/rbIa3IhZmPf/ZxYr4ggl+kOqyqINq1TRgY3gf
 GJnd6tgNHTAtiog+tcTxLTYjf3jwbpx1/x2i4vTeDt8K6APvb5uU698GY121kQ7LkiC0
 tTmw==
X-Gm-Message-State: APjAAAXAvhoYGfoiwgxBFggVva6xRqNHCHqSymP6NroUwBxMzQ3L1WV/
 VdjYgC1T3PPMYYwp1r6qyvT61IC3
X-Google-Smtp-Source: APXvYqzx9eQj+2joJ3ncGUAmrw2khMoxtWHR+p6R4TEP8jiUfptCIy5QwN4obIUYtRQ13Pas/q/dJA==
X-Received: by 2002:adf:fcc4:: with SMTP id f4mr96621wrs.247.1576020921488;
 Tue, 10 Dec 2019 15:35:21 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n16sm59478wro.88.2019.12.10.15.35.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 15:35:21 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/4] soc: bcm: brcmstb: biuctrl: Tune interface for 7255 and
 7216
Date: Tue, 10 Dec 2019 15:30:41 -0800
Message-Id: <20191210233043.15193-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210233043.15193-1-f.fainelli@gmail.com>
References: <20191210233043.15193-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_153523_359988_E811F5D3 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

7255 and 7216 are some of the latest chips that were produced and
support the full register range configuration for the BIU, add the two
entries to get the expected programming.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/soc/bcm/brcmstb/biuctrl.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/soc/bcm/brcmstb/biuctrl.c b/drivers/soc/bcm/brcmstb/biuctrl.c
index 6be975392590..978cf52be664 100644
--- a/drivers/soc/bcm/brcmstb/biuctrl.c
+++ b/drivers/soc/bcm/brcmstb/biuctrl.c
@@ -102,6 +102,8 @@ static int __init mcp_write_pairing_set(void)
 }
 
 static const u32 b53_mach_compat[] = {
+	0x7216,
+	0x7255,
 	0x7260,
 	0x7268,
 	0x7271,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
