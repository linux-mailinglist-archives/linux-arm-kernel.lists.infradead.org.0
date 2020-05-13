Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 932791D1CB2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 19:57:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y3v+oe2p9YDHO1YP33ucZY1BFa2tblkGiZ/R5VVVshQ=; b=oEHW7F8FgFIq8+
	s6xg1VRWcne2BAfwa7Gt2OO9AWNJaM0v0dIPYUQoBK+4sDQGylrbaNgTdwt0BFdZrgBMfucovs44A
	ztNKv2AZ+QxwbtDDC4oWK6OwEgqrZ4G0ReQykClp/P46rhFV0PzCofcW1TP5PHhIAA/i1O/kFLEQI
	4MVsNdSNePH1PZLcl8gEst7pFXxjem7nRpzlKHJwa7arCLsaIhJxQ8hafaFjoS3Ec0h+o0tiBDKq/
	VggA6pGA1wD1GFGDvGorFFkXq81TcX0/7uQLseMHCzHDuK/0O51GpD6+t2JZWy+VQWTge2i6ZuEIy
	2ixe3sVswnndK1HCZP2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYvcv-0007sl-9N; Wed, 13 May 2020 17:57:05 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYvcl-0007sE-Mr
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 17:56:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id h17so530489wrc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 10:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :mime-version:content-disposition:content-transfer-encoding
 :user-agent; bh=pWy35rDSEEFc6N6yhLJY9e0DtW6SPsq9SyL4pkBTn9o=;
 b=feUNSM9uRT26Y+++LSoKaEELaKv1vjZCeSfJZvRhNKa2mU62h8/JeJa84crwtL0foT
 GbjFACv3vrTyf53Ki4/3f2/Hvc8cT9qJhC8B8so5EkE3nYDGC/4CwVaMpizHS4GMR3hs
 Xi/cLElhpEyt7rtku0uq1QWziaciOzay2WKuTyLpYXpFoZKxKsD5V+EbSm5RjdNUPofV
 fd/PdIY1lxDG4ItmDt/dWvD8MlLFHu1CrWNBFzycB2pNdC8CS63uriNyFlO0B+Qq/QPX
 E8F/jjbBQXUcKuw3I2Dc7jpPn3f7H2Toiz/wfJMzeogImm5iCou+uuZRqQ3dOvZmylj0
 ilng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:mime-version:content-disposition
 :content-transfer-encoding:user-agent;
 bh=pWy35rDSEEFc6N6yhLJY9e0DtW6SPsq9SyL4pkBTn9o=;
 b=XvcrfYlkvZPNc326XkYO2VnDYJXuHEvFPXajvohgfYmJQz95uHtXZPfmh/9kDw7kAj
 BYQ+ROv/Zh7byPplDljaWMcCOkHYfFYsafx30nrQ/mlLS4Da4V4jAMVUl3vi4b1lbFQc
 zNvaSvt43XVF71fFErQlA6WfwtyWdK3s3g9VTuWQCNT/Ld9PAUtN3Efl4oHaK1FnDXzP
 9tN44qYATkUxY77fb5pFo0NtHqCu6IWBDX09+W8fUvLGD2rdAY2d91h1ATv3zOUx+8bn
 ZDPngmnB3dpRY+yc2vCtPkxrNzKLdwH6Wzo/Pva4yEC3KRpdqKD1lnaLLfBY7wVRvmlU
 eAsQ==
X-Gm-Message-State: AOAM5305ERyqPgD0NbeZASGEl4Ha6WAdDwRoMLlgQiyVg05yEMwgomok
 KDTjnqkmUoncU0rYfUmROBxxecweP54=
X-Google-Smtp-Source: ABdhPJzABT+HS/E/xHXuBKg00fQQBd0QCxgpKUBCafFNeb2Y5mkuVemHE9SuEsNAbSzANLmIVvYylA==
X-Received: by 2002:adf:9447:: with SMTP id 65mr508760wrq.331.1589392613638;
 Wed, 13 May 2020 10:56:53 -0700 (PDT)
Received: from dumbo ([2a0b:f4c2:1::1])
 by smtp.gmail.com with ESMTPSA id d1sm367369wrc.26.2020.05.13.10.56.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 10:56:52 -0700 (PDT)
Received: from cavok by dumbo with local (Exim 4.92)
 (envelope-from <cavok@dumbo>)
 id 1jYvce-00020n-RK; Wed, 13 May 2020 19:56:48 +0200
Date: Wed, 13 May 2020 19:56:48 +0200
From: Domenico Andreoli <domenico.andreoli@linux.com>
To: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Marek =?iso-8859-1?Q?Beh=FAn?= <marek.behun@nic.cz>
Subject: [PATCH mvebu-dt64] arm64: dts: armada-3720-turris-mox.dts: fix
 sdhci1 pins
Message-ID: <20200513175648.GA7561@dumbo>
Mail-Followup-To: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Marek =?iso-8859-1?Q?Beh=FAn?= <marek.behun@nic.cz>,
 linux-arm-kernel@lists.infradead.org, soc@kernel.org,
 arm@kernel.org, Leigh Brown <leigh@solinno.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_105655_746499_1313DA65 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [domenico.andreoli.it[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: soc@kernel.org, arm@kernel.org, Leigh Brown <leigh@solinno.co.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Domenico Andreoli <domenico.andreoli@linux.com>

In order to use the sdcard slot on Turris MOX it is necessary to mux
the sdio0 pins in the north-bridge, which are herein also added.

This fixes the boot problem reported at [0].

Signed-off-by: Domenico Andreoli <domenico.andreoli@linux.com>
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: "Marek Beh=FAn" <marek.behun@nic.cz>
Cc: linux-arm-kernel@lists.infradead.org

[0] https://lore.kernel.org/linux-arm-kernel/165fdeb5583069d893436e95cac543=
6@solinno.co.uk/

---
 arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts |    2 +-
 arch/arm64/boot/dts/marvell/armada-37xx.dtsi           |    5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

Index: b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- a/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
@@ -173,7 +173,7 @@
 =

 &sdhci1 {
 	pinctrl-names =3D "default";
-	pinctrl-0 =3D <&sdio_pins>;
+	pinctrl-0 =3D <&sdio0_pins &sdio_pins>;
 	non-removable;
 	bus-width =3D <4>;
 	marvell,pad-type =3D "sd";
Index: b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
@@ -244,6 +244,11 @@
 					groups =3D "emmc_nb";
 					function =3D "emmc";
 				};
+
+				sdio0_pins: sdio0-pins {
+					groups =3D "sdio0";
+					function =3D "sdio";
+				};
 			};
 =

 			nb_pm: syscon@14000 {

-- =

rsa4096: 3B10 0CA1 8674 ACBA B4FE  FCD2 CE5B CF17 9960 DE13
ed25519: FFB4 0CC3 7F2E 091D F7DA  356E CC79 2832 ED38 CB05

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
