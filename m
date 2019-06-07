Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8013C38C17
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 15:59:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=r8Wc2SK1VQLSuPr2eMnWrhA8gPSPlI0mKjziK0/Gk5A=; b=G4U
	nMUpe/Xo5Abk84AlaHzKbZsK0eHIXNOv3Vza/gmjzD2ciVVdx8VDGEVFGQDVSpyAJKh8RjKpmEClH
	EBVq2OZ1xR9CINio7H0j38vhJfofaQ/KNPDkn9M9cuU8GJWqJkpUzCqCDrimyztcNkMgSuYFdTWSm
	/wN97Ai5kN8ymma2WijSCOhttT7vgI4SbuzULArLjKJ/i13N86lSUIU9sryNaIAmPm7oN4qmte9Gv
	UageuEqE5u2cnuwUcQDihTgoXsl+AjiFSq0IOND/UWf9/ySHwUL5n+EWS4iWEdBlFQPEQ14ygfBLc
	b1o33gfN4uYQttPk5A+/iNfonzk0TiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZFOX-0004tZ-Oa; Fri, 07 Jun 2019 13:59:01 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZFOO-0004sq-EI
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 13:58:53 +0000
Received: by mail-pf1-x443.google.com with SMTP id m30so736214pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 06:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=pVtZoIezp4EZoxmrqjiaf83Hj5lKnOSnqkUcz0EsdG4=;
 b=bMKmc3Qs0i6IPkHlIJ9dvkXbcBX37jSZbWTihX4pRuNDXqqawp1i5SHM0RiNU/CVJM
 b5gCZCp7o0JSojOc9jOU18YRxp/GOONF93CdnXL0fAuJJ3Z4AKSf4lUjr8IrhivGTGAb
 dI+JlNrel2lHIEKIT+IGMUTUGTIyjUisOldgyIKUL3x0ORUsUawR6omTUXWtLX1WaFhi
 iAtOvqsxBc1hufpfSmzp7yLVAtz82Z9nWd540YHWC8yBcXOTFbxdMrAJ0tOdrXi0kyp3
 kQNqXi3P0i4JpaKCoKAy1u2EeeqjffLqVK3PPWCRZ+dk+JzAbrRkrw3gV8gfNzq6u57+
 UJOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pVtZoIezp4EZoxmrqjiaf83Hj5lKnOSnqkUcz0EsdG4=;
 b=JFrrpt8N8WEQSNOyqfLN/yn/tTUQH6ySg5b/XRxg9jX7gyHEeqLQKpae/TI273PoeT
 CljouwnDv3ghKlqfphiqiS0cbP4sFNIRWBSQZoC8ARhPmCzcBQwMDcxoPLVUdtbhSPiH
 9n0J4VrBvCY6RuUfaTR7XTNfF6t6Sph0Ag+ryzJx+fQvB9Rm9cuI3nvrKgWnWN+SJRUs
 HswDXd+ec727/nGnuTOXYyPL2aqQnEU6VOw2fnQi9r4+cUqcGNcXihyLNYaHEbz3W+ma
 fbEdvgpQDrYthqpaxGRPrdTn4FxqueGtYz0HgMfK5ENhVsjRgdNSvFG6aQCfEhMDIwbH
 7fKA==
X-Gm-Message-State: APjAAAXZ698JW63ufrkaomTgAWeFUdn9/dAK/vl8jVkrwE+mbb9eULS3
 8V/y+Rdf4SsKRgVKN9vcCeE=
X-Google-Smtp-Source: APXvYqwjGGdvkLX7hz6WAgriXBrPobOza8hooIwH8c0/wCZhXdjlw26LkbeKz0HFv5vMuYt3Iy4HDQ==
X-Received: by 2002:a17:90a:a596:: with SMTP id
 b22mr5563800pjq.20.1559915931140; 
 Fri, 07 Jun 2019 06:58:51 -0700 (PDT)
Received: from ubuntu.localdomain ([112.21.182.86])
 by smtp.gmail.com with ESMTPSA id w190sm2438716pgw.51.2019.06.07.06.58.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 06:58:50 -0700 (PDT)
From: zhangjinghai99@gmail.com
To: linux@armlinux.org.uk, akpm@linux-foundation.org, rppt@linux.ibm.com,
 vladimir.murzin@arm.com, tglx@linutronix.de, ebiederm@xmission.com,
 f.fainelli@gmail.com
Subject: [PATCH v1] arm: mm: make arch_mmap_rnd() static
Date: Fri,  7 Jun 2019 06:58:15 -0700
Message-Id: <20190607135815.43418-1-zhangjinghai99@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_065852_481737_54E99036 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zhangjinghai99[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zhangjinghai99[at]gmail.com)
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
Cc: 21cnbao@gmail.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, JingHai Zhang <zhangjinghai99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: JingHai Zhang <zhangjinghai99@gmail.com>

arch_mmap_rnd() is only used in mmap.c, make it static.

Signed-off-by: JingHai Zhang <zhangjinghai99@gmail.com>
---
 arch/arm/mm/mmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mm/mmap.c b/arch/arm/mm/mmap.c
index f866870db749..0a7a046fcd90 100644
--- a/arch/arm/mm/mmap.c
+++ b/arch/arm/mm/mmap.c
@@ -171,7 +171,7 @@ arch_get_unmapped_area_topdown(struct file *filp, const unsigned long addr0,
 	return addr;
 }
 
-unsigned long arch_mmap_rnd(void)
+static unsigned long arch_mmap_rnd(void)
 {
 	unsigned long rnd;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
