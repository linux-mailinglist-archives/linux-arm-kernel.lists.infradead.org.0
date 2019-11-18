Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F72FFFF9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 09:00:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Message-ID:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xSCNYltPz/AMAK5AMeaKbX4MX+iYxyUSQLjKhkTjHSc=; b=kwbQRxKCglte2r
	gQ0bIxTZtEKJRBogC47cQdsB1RVVNbNdk8zm1AW+9QfirOaoj1v6Z55MqEd13rp+QA9roOLFUD2Hd
	8ol00QPvBiSUxd2hcrM6pmcgiFJoZfXHax4BhEwpxhSm4zGQR3KziweD7F+F1GNTD+Mgmlgml2kVa
	8gg6wLjAhk/RuQMU5mJY/3TyCSHjJa1sEf9wZFwRaM1DFcP9ADl19/2FmlyLs//W9n6I40l+XKUgq
	8PJZ/l7N3+c1NcoBJ9gGyZo9xiKokL40RQAQuZZtnmUW6kB8bjcRfve3v7yWwpzs2QdjeeLgDeOUX
	w9gyP5F5Vg5i4eVL3KDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWbxB-0001Er-QL; Mon, 18 Nov 2019 08:00:09 +0000
Received: from sender4-of-o54.zoho.com ([136.143.188.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWbww-00019B-RE; Mon, 18 Nov 2019 07:59:56 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1574063917; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=YE3ZdikWrz4vU1wnKMshg3aH2E9+RlQgSCVV+br1F91F1PuwLieEtIvZvoKrgjOwY04gbq6CseB7hmzWfRWHRw7w+XXHWD74F4gYyBf1qGBToBah6MhfA9nYZ7uZBml+5d6589ujXt5UPlJWxuIBND3tX5RAkSLVkeuoI6mevfM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1574063917;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=SqUaBIpR2mccPD6jr20GE5M0X9vjxDDNdgLp2NxZva8=; 
 b=VbjBKVhlbPDXrHTk9ZxSJ/Mbtm6iuhEV80+RtOhFRgX6rOH8Uh3qhgcWlh9Nvob6E/XVwozQHv0aXQPaL8pZqYz+3Xm0ccbemPFpvRrtMLEx13KyloMw5Kt8NI3NvfjgV2MANyy1Gc/+u0c4BM75lrwXbNcSFRndAnQR6Pt+Rzw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1574063917; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 l=928; bh=SqUaBIpR2mccPD6jr20GE5M0X9vjxDDNdgLp2NxZva8=;
 b=anV7HRl7bKqk4mHo2jeLLWqW3ZBdNO6/iS8FDjt7rIsjIXtvSDQHIA07RUh0kNm/
 ynOfFc0UVtWYGRrWy6/YaGFfPU5v/P2jpMLVN5DYd5zYfV+Gmbbqos0UQrF4uQfHbM+
 YoXP6BNOK8ivrGQ3+nUcWLaQOmJ98s3VCV5PZkqg=
Received: from localhost (195.173.24.136.in-addr.arpa [136.24.173.195]) by
 mx.zohomail.com with SMTPS id 1574063915435914.3658986565996;
 Sun, 17 Nov 2019 23:58:35 -0800 (PST)
From: Stephen Brennan <stephen@brennan.io>
To: stephen@brennan.io
Message-ID: <20191118075807.165126-4-stephen@brennan.io>
Subject: [PATCH 3/3] ARM: dts: bcm2711: Enable HWRNG support
Date: Sun, 17 Nov 2019 23:58:07 -0800
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191118075807.165126-1-stephen@brennan.io>
References: <20191118075807.165126-1-stephen@brennan.io>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_235954_954046_E3C19701 
X-CRM114-Status: GOOD (  11.29  )
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

This enables hardware random number generator support for the BCM2711
on the Raspberry Pi 4 board.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Signed-off-by: Stephen Brennan <stephen@brennan.io>
---
 arch/arm/boot/dts/bcm2711.dtsi | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index ac83dac2e6ba..2c19e5de284a 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -92,10 +92,9 @@ pm: watchdog@7e100000 {
 		};
 
 		rng@7e104000 {
+			compatible = "brcm,bcm2711-rng200";
 			interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
-
-			/* RNG is incompatible with brcm,bcm2835-rng */
-			status = "disabled";
+			status = "okay";
 		};
 
 		uart2: serial@7e201400 {
-- 
2.24.0




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
