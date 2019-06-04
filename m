Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0664134E33
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 19:02:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7hpHBc0BinWlaZnU9K7H5oYQI/2g8LCL4Cqu4IPRdR0=; b=ETrRqeCe4yWpSs
	02ghTPFg027YXZWRT22r8XVbsmT5hzD4uos6wNLJHKIwickOsUmVVKg3LuLmUUd8D2YCgCxSIAZuu
	devdFA9hXr6Ev22V7PM+o/n+dMdVwcQnvhtVsaVukoRb1K1q8RAPeeZe1HcNwZISTgwou1q+MM/wF
	5NlzMAPldTF7H7A/QavCa/TBOvhDi6kMBCzrb6ge4sL/AFz7ySQpQ6bCg60C9SfRFJa3/Q8P6GAqf
	rI0rYk+nHXOJcECg3B8HkShwXy1ZizZXW6bG4DRgcgqnxJJW4FoCGO3C/pDxYM7RLN28sSToStTtC
	9wope5jAX1p2MJnzXl3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCp4-00078S-50; Tue, 04 Jun 2019 17:02:06 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCov-00077v-PK
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 17:01:59 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54H1rIA084228;
 Tue, 4 Jun 2019 12:01:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559667713;
 bh=tJUbaYS3PXeCQDqLVzPk13j5W5PyU3RKgopVrDFEeQg=;
 h=From:To:CC:Subject:Date;
 b=g99hBXdJ5Ku+pEdJSxXzrA8vje66HcnNOeFGe0pg44GMPt6l8TFdgsRYkfeaND30G
 RjY+YinDO2YOj+qvZze9b4cX1w4o9scy+3fZqMD7VW0gIYTvaY9OoQFMckdIvCHYVt
 O5u8a7GBMU4UEiXdbNyHF5o+0G8s8BfKwrY1cU0Y=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54H1qAO055469
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 12:01:52 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 12:01:52 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 12:01:52 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54H1qr7052476;
 Tue, 4 Jun 2019 12:01:52 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x54H1pm17287; 
 Tue, 4 Jun 2019 12:01:51 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 0/2] Add Mailbox support for TI K3 SoCs
Date: Tue, 4 Jun 2019 12:01:44 -0500
Message-ID: <20190604170146.12205-1-s-anna@ti.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_100157_928510_A783C819 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jassi,

The following series adds the support for the Mailbox IP present
within the Main NavSS module on the newer TI K3 AM65x and J721E SoCs.

The Mailbox IP is similar to the previous generation IP on OMAP SoCs
with a few differences:
 - Multiple IP instances from previous DRA7/AM57 family each form a
   cluster and are part of the same IP. The driver support will continue
   to be based on a cluster.
 - The IP is present within a Main NaVSS, and interrupts have to go
   through an Interrupt Router within Main NavSS before they reach the
   respective processor sub-system's interrupt controllers.
 - The register layout is mostly same, with difference in two registers

Support is added by enhancing the existing OMAP Mailbox driver to 
support the K3 IP using a new compatible. The driver also has to be
adjusted to deal with the 32-bit mailbox payloads vs the 64-bit 
pointers used by the Mailbox API on these Arm v8 platforms.

DT nodes will be posted separately once the binding is acked.

regards
Suman

Suman Anna (2):
  dt-bindings: mailbox: omap: Update bindings for TI K3 SoCs
  mailbox/omap: Add support for TI K3 SoCs

 .../bindings/mailbox/omap-mailbox.txt         | 59 ++++++++++++++++---
 drivers/mailbox/Kconfig                       |  2 +-
 drivers/mailbox/omap-mailbox.c                | 43 ++++++++------
 include/linux/omap-mailbox.h                  |  4 +-
 4 files changed, 80 insertions(+), 28 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
