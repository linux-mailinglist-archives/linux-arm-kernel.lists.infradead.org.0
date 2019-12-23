Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2E8129115
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 04:07:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Y3NEvgGgGvUmVf00+OnZkAQ7kRPHiYzo4zPy5+JrmCs=; b=RSY
	qlU/SQY1lPkAy6VI4micEXa8tK9RHNFlrXxSj4S3oKVDktYPlW8wk3jf1m+JP5ZAK2ySD6jnSQtkK
	uu99X7ssTVIlQeg+XOKbEevPKQDhA+bzQxXRRg9TVSLThoAQIBYPOtsW444rhMs/vVHkdfFXKKYBD
	DbOLo4JideLsATmPxUJW7GVgQYx8xgo9hnOV+VU61hQhEH4MOncJofWkKrS7q59phozdMvJQZLwQI
	po7761f6UpcyKujH5JEZ4KjZ4FHj/nSDdU1R1mAqT3oADJPz1cDIFQfrGnRIGHoHvzfBTG+NIXvif
	VYu3am++lVEv8xKQniJMlP0NczT9sWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijE3w-0005qj-J0; Mon, 23 Dec 2019 03:07:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijE3m-0005qK-Ke
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 03:07:07 +0000
Received: from localhost.localdomain (unknown [180.106.222.238])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 64A1D2067C;
 Mon, 23 Dec 2019 03:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577070424;
 bh=tGKbfl4nYGrpKIa7XUFcKI6UndQrGfcsMQv6v2wYn+w=;
 h=From:To:Cc:Subject:Date:From;
 b=GzISkFog5/WYeLvQ6e67aPyPLaYVJi9UQ++LfgRVU4St0TSUfomA/94/uqYIbTXHN
 qYAln6E/rrLnFBFYhUtlL4EhDfihUCZgT/TCTcRoLYS0kH1UTadC1IX63CSj3snuIR
 3+qvqGD/l+5GK7Q7hUoohObyHM4LBHbRndWOyb9U=
From: Shawn Guo <shawnguo@kernel.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] bindings: fsl: document compatibles of lx2160a boards
Date: Mon, 23 Dec 2019 11:05:09 +0800
Message-Id: <20191223030509.13298-1-shawnguo@kernel.org>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_190706_700150_A5710CD0 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The lx2160a board compatibles "fsl,lx2160a-qds" and "fsl,lx2160a-rdb"
have been in use.  Let's document them.

Signed-off-by: Shawn Guo <shawnguo@kernel.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 6f241a3b5a20..ee538f3a7f4d 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -389,6 +389,13 @@ properties:
               - fsl,ls2088a-rdb
           - const: fsl,ls2088a
 
+      - description: LX2160A based Boards
+        items:
+          - enum:
+              - fsl,lx2160a-qds
+              - fsl,lx2160a-rdb
+          - const: fsl,lx2160a
+
       - description: S32V234 based Boards
         items:
           - enum:
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
