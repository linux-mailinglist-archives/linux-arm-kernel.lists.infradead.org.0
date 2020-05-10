Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D591CCD4B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 21:38:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=V1QCy/FHFtzn/CvfuVVcfOtiKBWqGVoTuIx1SLkPuo4=; b=C+I
	sq1AotJpSFoWwcqPxslK7A4oUkItieS9vgi2WFi+Mrannq2qhrvPsNW+7fEDHUo7wh9ru+6iRdKXv
	HUalCN5Zxd80oeHLY3GwE8IYB7DxUs1LKKpWDsqVjmD4eDwYdVa4rxq0kkDUjN5MF++ZZ7OfHiQvj
	6XY2Nh7MEVTALO0WPeTWeAxrWqQiVpblqPORGa7PGhD6duhxN1KypEA8dt2YAZgsxluL0OxMSdEMJ
	xWS6KDgejgglOanySvOWnUGb5osNd6TXckAJXOjCAitVG7pRRzE+1Uy8bR7OFtDn4rznhFpp3Kius
	TbpseYYnF45Spl93j2PMcQ4fiA9AAow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXrmM-0006KR-VC; Sun, 10 May 2020 19:38:26 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXrmG-0006JI-Tw
 for linux-arm-kernel@lists.infradead.org; Sun, 10 May 2020 19:38:22 +0000
Received: by mail-pg1-x543.google.com with SMTP id u35so532874pgk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 10 May 2020 12:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=wyNT5+0GWB8vIh2xGMxe4qbl2cO09ZqT42SZ6diOFEY=;
 b=PjOXiyWPu0oqWeHrYCDi3X1QwA+GDLa4e5lvrQFPnjyyRPZVydFCQJ6a0dVGD/Q8Ub
 BQEUz4VIh6s8xVWZiDVC0vLTaWS9m5GA4QEvgcwkO+5ca8DapHnVtPCyBg79zqZLzAby
 jbhwc7Lv01pdzFiXd1NLfXhp1x3ctp4qQhRPmGxwQYeBkiPhuANO2fyQb4M49jqO8Ph9
 aGNKXG9bTCwh1K8l7i8hnvQaJDzd1AojVYHtb8zSGGwp81/0CfhFHq7whn+yxQQBGJt3
 pXlN7tTM/TUc1qatcrelmcrEmiwnmcWUmq0hk45/HdDqF82Jo44biznLMLchIUbnY8cL
 dUcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wyNT5+0GWB8vIh2xGMxe4qbl2cO09ZqT42SZ6diOFEY=;
 b=VIyJlOvhqfV49kGSSkEuXnN6NoUN5cdtme5kJFyLru02yTKxG1a5J3/Rd/AUZDS4bk
 cmZOZyI0VZ+NeZfRWs4OSrH9qwO+VFdCJAcm+5iSaaTwK5MiE17THQo+EzDlFS/vM4fH
 FMh+U2qD52FLxRh+M/hbUp9WE3i7H+yxQ3vdtjtPN8WKTFDaBFfQC4LfxDveJIVTf+1e
 oNv1SP4te2DDQOLYUnzjASWLqjqXgbOfAl/pkQpI/u4z0vWjYmkmLDv4rtUFHTYG48Vc
 OD4ao2icxpNp32vX0hhsR//ipJHMGIQwlDe+KN4EnF3/EnrC8se6lwq2x21XREbLa3d5
 7d7A==
X-Gm-Message-State: AGi0PuZZi5l3tssey6od9K0H3LCKf5OvM93RNxF/D01u4j/yJ9cv01Du
 S+8s+HveyYm4wcb4QZpHoJU=
X-Google-Smtp-Source: APiQypJN9G/92uguALDte7otm85YggaP4mvYV6ytD0Ep4efg2S5xrxeFas4aCwEjMLIwtZBsT7eYiQ==
X-Received: by 2002:aa7:8f2c:: with SMTP id y12mr13741489pfr.80.1589139498093; 
 Sun, 10 May 2020 12:38:18 -0700 (PDT)
Received: from pr0gr4m-ubuntu.localdomain ([1.240.193.107])
 by smtp.googlemail.com with ESMTPSA id fh18sm21513639pjb.0.2020.05.10.12.38.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 10 May 2020 12:38:17 -0700 (PDT)
From: l4stpr0gr4m@gmail.com
To: trivial@kernel.org
Subject: [PATCH] docs/devicetree: mailbox: fix trivial typo
Date: Mon, 11 May 2020 04:38:11 +0900
Message-Id: <1589139491-6301-1-git-send-email-l4stpr0gr4m@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_123820_987070_1C179FB0 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [l4stpr0gr4m[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Kangmin Park <l4stpr0gr4m@gmail.com>,
 michal.simek@xilinx.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kangmin Park <l4stpr0gr4m@gmail.com>

Fix node id typo in example

Signed-off-by: Kangmin Park <l4stpr0gr4m@gmail.com>
---
 Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.txt b/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.txt
index 4438432..ad76edc 100644
--- a/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.txt
+++ b/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.txt
@@ -87,7 +87,7 @@ Example:
 		ranges;
 
 		/* APU<->RPU0 IPI mailbox controller */
-		ipi_mailbox_rpu0: mailbox@ff90400 {
+		ipi_mailbox_rpu0: mailbox@ff990400 {
 			reg = <0xff990400 0x20>,
 			      <0xff990420 0x20>,
 			      <0xff990080 0x20>,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
