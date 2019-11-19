Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAC1101926
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 07:15:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Message-ID:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ZywUCnbek3DulnbqVcfKE8FjTm9VKK3ClqY88TPPvg=; b=J9Elc7Su/dyMeC
	rohxyYPHyDaFEr3FC+av1Lu67RiGU1hMwPKyhZg4AgKu2UCSeF+OsP9ilU45rysNG4cpvOjNQ5+jB
	Wyna02d8HVnJkYc7XW8s9P0e7bEWMobkhBnFyua0TIiNIBa0jq3jB95aEmnOvdDG9tatvjNk5eZKo
	Mz9hA0uxU2LYM2uTKHdo6hiqWJNGKdluXof8TgdpXPG5qD6f0bCEVwqmjEHLCsw0J5qzkRr/yahrd
	9H8A4fxbau2BGqMY9YITB3JPkJeMBXk1+SAsaojW0oTcU80NhXjybYNpASn+uV1fZKRADIisWpGno
	lnxPzAk6uZkBz3EIVa2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWwn5-0005bJ-Od; Tue, 19 Nov 2019 06:15:07 +0000
Received: from sender4-of-o54.zoho.com ([136.143.188.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWwmu-0005aa-ML; Tue, 19 Nov 2019 06:15:00 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1574144061; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=Le7sfsCod1Xd41l4GEpIO/K40w93kGGzj4EHMqIMWnYLTivT3RoNuBmTZXhSNFvXBKcOrdZglWpgR7r+FRrf45hSWX4ixfTqggyxmVD51p2IOTe0D+DzT+tWbaxjLSKWhCCpnYAw/n2kQEF7nHoKs9bwwBGNsOSFRbvUKJclHhc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1574144061;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=cfu4tgSh/ZEFa8HY5V7AvfFEMPP8yuNAhIRi2KmoYKY=; 
 b=b1uVCdTMCVnceWNS8pXlJHRxz/uApiMuSJlkYqQ3UBTcBOIyQ4oqgwG2jL7U88tsnrhtp8ZNypmgYqyAyoGmeSEnWXHakFAyOPA3jsj3P9lmQBMwJK8TDPGJONBtlOk5M2DdjTja3zpxI8uM6/sOvZEJvzui0p6r/dUyUsjLK6Y=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1574144061; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 l=881; bh=cfu4tgSh/ZEFa8HY5V7AvfFEMPP8yuNAhIRi2KmoYKY=;
 b=Vop6KDukXrIFvhSNE5ePAzF/2JlEgb3AECzMYGkaJ22HP+C+4uQQ6JkUG1IqRKKS
 kQnzWoLyL4BEKA05Rw76GfYByZSk6hsHms2Sb33n42Z74R5KY9z/aOBzRPLph3P8A1y
 BdvCETNpGbRnl5NWoK/Maz4L2Erdr1W2gCRCDqsY=
Received: from localhost (195.173.24.136.in-addr.arpa [136.24.173.195]) by
 mx.zohomail.com with SMTPS id 1574144060211715.8784521890552;
 Mon, 18 Nov 2019 22:14:20 -0800 (PST)
From: Stephen Brennan <stephen@brennan.io>
To: stephen@brennan.io
Message-ID: <20191119061407.69911-2-stephen@brennan.io>
Subject: [PATCH v2 1/3] dt-bindings: rng: add BCM2711 RNG compatible
Date: Mon, 18 Nov 2019 22:14:05 -0800
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191119061407.69911-1-stephen@brennan.io>
References: <20191119061407.69911-1-stephen@brennan.io>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_221456_778319_64848816 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Matt Mackall <mpm@selenic.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stefan Wahren <wahrenst@gmx.net>

The BCM2711 has a RNG200 block, so document its compatible string.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Signed-off-by: Stephen Brennan <stephen@brennan.io>
---
 Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt b/Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt
index c223e54452da..802523196ee5 100644
--- a/Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt
+++ b/Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt
@@ -2,6 +2,7 @@ HWRNG support for the iproc-rng200 driver
 
 Required properties:
 - compatible : Must be one of:
+	       "brcm,bcm2711-rng200"
 	       "brcm,bcm7211-rng200"
 	       "brcm,bcm7278-rng200"
 	       "brcm,iproc-rng200"
-- 
2.24.0




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
