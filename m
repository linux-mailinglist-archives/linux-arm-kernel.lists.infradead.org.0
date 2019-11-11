Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 166CAF81D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 22:05:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NisoOdDwHUNuEk0hPFMBOanWVK8HrUHZcmkMLNy/iL4=; b=Jd2dTEghdTcvmQ
	Txpsi7PENJsC0ueMB/WhtgJ3N7XOkW9ADRnohdGeyuEs7TcEdh6nIFzmkPEkjU2PV5yE+vt+P6XSI
	jsZRlj4BeHNHCpGfIxapvQ4cd/E6NeiglBoGbgvYBpBqf+TqGdQL0TnZ3k9IhsB/ksjh0LoOq+BZo
	xTSD/yZ4RJR44OW47fBq/ckKyd7vv82aTlscdxt7lgWH95NjVYDmZd76N29fUA0RuprlEJ4p/5Gb4
	BO7py0V0BgmJCGn3mfK9HzQylTE+FnEH08u9jSkLDJnLIEas/7Oj8ntwIK11IEDN42X8h15N2zg8u
	SZ94PB2sjRxy9XwP7GZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUGsF-0007Ko-3V; Mon, 11 Nov 2019 21:05:23 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUGs6-00074d-EC
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 21:05:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1573506307;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=XOJHmHRtuAQ7wjdWplmhsAQvacfKl4UjW8S4Huymubg=;
 b=SmU2ThFqDuq8j8hMcMtK7WTa6jsZsGyj58VPNr4XRmBdGSBEmM4VJNy1VU5JGQIKmQ
 ayPtHOg6oVjLEgRn2yLqDNQ9uS4tJHX3K4zm5h3TUrz5TAJiRR1NSxhSFCfKbI9PIDCO
 hQXx4S7U2KiBXT7x+OVFUhQ6D7Zvhc8+gBVv6FyIaPZnnpWO99yAXPyD12nASCUav06s
 Nv7dOSqZtqJ+B/r6emn4I/l/AESQZFP2kdVIycdd7pP8qRaRzbiy70pljKdj7w0jUlMN
 oroEYBgGG3VbzKXnI+/93A+W159qWr42Bno2nLuRy5PxM8LBsylH9fKxodEv+EYlYLg+
 AYdg==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/vrwDOsGQ=="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 44.29.0 DYNA|AUTH)
 with ESMTPSA id L09db3vABL56xKG
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Mon, 11 Nov 2019 22:05:06 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH] ARM: dts: e60k02: fix power button
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20191111202959.24189-1-andreas@kemnade.info>
Date: Mon, 11 Nov 2019 22:05:05 +0100
Message-Id: <7FB23F5A-91C7-414F-A5B8-AE6E62048022@goldelico.com>
References: <20191111202959.24189-1-andreas@kemnade.info>
To: Andreas Kemnade <andreas@kemnade.info>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_130515_064537_058FEF18 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:2 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Am 11.11.2019 um 21:29 schrieb Andreas Kemnade <andreas@kemnade.info>:
> 
> The power button was only producing irqs, but no key events,
> Forced power down with long key press works, so probably
> only a short spike arrives at the SoC.
> Further investigation shows that LDORTC2 is off after boot
> of the vendor kernel. LDORTC2 is shared with a GPIO at the pmic
> which probably transfers the button press to the SoC.
> That regulator off at boot, so "regulator-boot-on" is definitively
> wrong. So remove that.
> 
> Reported-by: H. Nikolaus Schaller <hns@goldelico.com>
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---
> arch/arm/boot/dts/e60k02.dtsi | 5 -----
> 1 file changed, 5 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/e60k02.dtsi b/arch/arm/boot/dts/e60k02.dtsi
> index a0ade2ba7a21..33e02bd2b59d 100644
> --- a/arch/arm/boot/dts/e60k02.dtsi
> +++ b/arch/arm/boot/dts/e60k02.dtsi
> @@ -356,11 +356,6 @@
> 				regulator-name = "LDORTC1";
> 				regulator-boot-on;
> 			};
> -
> -			ldortc2_reg: LDORTC2 {
> -				regulator-name = "LDORTC2";
> -				regulator-boot-on;
> -			};
> 		};
> 	};
> };
> -- 
> 2.20.1
> 

Also:

Tested-by: H. Nikolaus Schaller <hns@goldelico.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
