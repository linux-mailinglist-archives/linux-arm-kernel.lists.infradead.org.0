Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1F6FFFEE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 08:59:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Message-ID:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ZywUCnbek3DulnbqVcfKE8FjTm9VKK3ClqY88TPPvg=; b=uvGhYRvZyWY8E/
	BuDHsXvwbLlBR25yTrPuktojrIu4vh3t5jY8dAZb2GJQ5oBdVB+iNuqCiNNFJffbgGvr15OMFVIDz
	TOrTeQBeBEBToW4dixQrJRRzofeT46PQn30LURxBKIM0kIyH843kJ7GEsr7L6gTYHU+yTJmprzEIX
	PNeRqe3EwxlMnIp1pQchyc0TEvM98jJHELTKSNN0ZhBLac1sKN49EEs6/qqngyr/3Zj28cKXBeqVu
	6YZDTMp5ySXJ1G24339xh5jNKdJGip7z/as8eTbsQAIsnTR4BqjztwZW6sxndQyn4IvrvRb1HsQFD
	++k5D4goA1C3lYAAh1xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWbwY-0000cm-Ax; Mon, 18 Nov 2019 07:59:30 +0000
Received: from sender4-of-o54.zoho.com ([136.143.188.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWbwB-0000RS-Uj; Mon, 18 Nov 2019 07:59:10 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1574063909; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=Rc/20lkRyjUTL1pXtxaJuUuGL6Qy5iJf9domOrYQzp0dV7kTzUIId9MgtxymtHz8eW9RxfivYILm4WAx5Jvckm1YzecjcOeIHzE6SdnH6/okt9b/VJImBA0kry/OiihPLM1rSa6P8/slgkqAQkAO9rQmx2/fjQEeMmkoysH9gQ4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1574063909;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=cfu4tgSh/ZEFa8HY5V7AvfFEMPP8yuNAhIRi2KmoYKY=; 
 b=BATyhYXAZYAvgFtIi7Dds4pzApisEa2g0tbZSqJYoVJ9brOEazPmFpws7HMzPPzMZbDN2I/HSjycg1Uhv3rTVIoE64o9Cnr/qb946pR80D8WUsSEjaXNu3ir98oDNqNoruFkZfetGNHNMO0o0qOQUF05shLaPF9sFv5EOkuQb5o=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1574063909; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 l=881; bh=cfu4tgSh/ZEFa8HY5V7AvfFEMPP8yuNAhIRi2KmoYKY=;
 b=a33RF1a+B9CYq7VVkL5/b8DhfRPEp5pkdGOtbev4kuka5D2uuM2xocwxcS961KUD
 SO3U4qTgJ3+23IuCXVYkAgSx2xpVaMwiF0QYGMXPGNRVC5wqg1rg9xzDJGod4d7T8E8
 B+AoMbzrEPmEHnJk17ZEa3ioxzfoLDe74N8WQfHo=
Received: from localhost (195.173.24.136.in-addr.arpa [136.24.173.195]) by
 mx.zohomail.com with SMTPS id 1574063908686965.880928958745;
 Sun, 17 Nov 2019 23:58:28 -0800 (PST)
From: Stephen Brennan <stephen@brennan.io>
To: stephen@brennan.io
Message-ID: <20191118075807.165126-2-stephen@brennan.io>
Subject: [PATCH 1/3] dt-bindings: rng: add BCM2711 RNG compatible
Date: Sun, 17 Nov 2019 23:58:05 -0800
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191118075807.165126-1-stephen@brennan.io>
References: <20191118075807.165126-1-stephen@brennan.io>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_235908_035094_E077E99C 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
