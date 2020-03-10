Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA92180634
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 19:26:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OWaHThe/w6y1mKkW7Aphe3D/M5oO5rQJr4lO5k8YGSQ=; b=Nrj
	Yo+Gs1QIaIFVMuRohag16g/dbTCF1TD1qWabbWLFdM21esrCO3emg9gqB75sHsBXpp83pgem7HEvp
	TYn24BBa55auohH9lhwJRda1NJ7PplyGJAvGkPVPeIfQxnnDA5yc7Cd6ZC5GkMS7z6Gqv5Ps75vIk
	OaHk1bsMs9nUCtUtbvo0pqbb1hZ6zI8dqjQAqI7anBeX7acfXC+RhgL5h9OXp6VRyASMs494KmRcM
	tmlFzv7IcFhT5slsqkHvU4AEou/jlMfOSdewRloMn5a9h6yRrCUR2qaPTFUIMMZEstxWSi1bkKk5C
	qm36MopSFzHmqyv/fSuhALCCQQ7uHEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjZq-0000UV-8w; Tue, 10 Mar 2020 18:26:02 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjZc-0000Tp-OK; Tue, 10 Mar 2020 18:25:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1583864741;
 bh=bFNqpua+YkzWFVc3UHXXvzS3AdF4ncGup9hQJF7JgsM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=HRuCOVZZtfp+KcUwATt3A57HJU3nd/6Gt3AGzr8fVOQ26mh/cYH8AvkJDaxla7LrH
 WTHAoWtV6HOELVnR0phT97MYCOHjJ4dF08SpizBl2jgwiDyCSCsw0LT97S8OzR8//y
 ZTjtvv+/hCleFNMOElJQ1mYObS/pvkipnTZiGdtA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from zoom ([188.223.33.120]) by mail.gmx.com (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MD9XF-1j2h0v3fpx-009C8y; Tue, 10
 Mar 2020 19:25:41 +0100
Received: by zoom (Postfix, from userid 2000)
 id 33D2119C87C9; Tue, 10 Mar 2020 18:25:39 +0000 (GMT)
From: nick.hudson@gmx.co.uk
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: bcm2835-rpi-zero-w: Add missing pinctrl name
Date: Tue, 10 Mar 2020 18:25:37 +0000
Message-Id: <20200310182537.8156-1-nick.hudson@gmx.co.uk>
X-Mailer: git-send-email 2.17.1
X-Provags-ID: V03:K1:3/Rt0YeR7CTtZzR1Fqp91cdaAaSx69K/t/4zI3jdBuV2UhzC3n4
 MmdrwDddFGb8jLk2u+lcAMOmgNAeNjmwa/lg/1z7eoVYBNlrndFDsOo/rolirFwofzX0Xs3
 RdIe3l8fONwTn+qW19f4sOCCoWTZzTvJVybor7qfgr3Dcf1ym5LAEQm+f+uXWLvoQ0iJpAG
 k2bQo6mSBNTu2p3vK70Fg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gG3GKwolD78=:s7UQlNhpF4wArl+OpyY9rX
 YE2f5jIYCHVmzWKuayMb7Q1H5k441i+Z0RmUEJETKfGzl5KrzR6u8boufYIwY2bG/NqhaXJxr
 BoLcoABo1rlpj+sUJoDJ72SIjPNKgEjdPpD7xRuT91Zk4S0yMZMuhe2qPkqkP6c056JNIzKaL
 h7tJWQsK0co+oE55lpBRzz/bVJ9H92+Il1pbzUSpQPu6BaH4d7OxN51G17AZUUQhGFOiDqame
 1NOqVklyU2bqm1elS6OVzKxlAJz/mp+QTmwkmPB8EQOOv/3D02Tlvjvh6DcxuxDmsmhvgIZOU
 To8eesWE8heEzGOXhM8w2XbFSf2z9vKUJUmn1zWsH/LC05iRVDNi/tlOLVP6BiJusJ1EhmYv9
 70ICsPqYVo+Glc2OrbvUKrU9pfqLcjkuBNVQgUmtM94K1M1ZEglarxO1zJJLkjyLW83ml+Jew
 3XW57bDRfct6k0Y2fgfOq+xKtlzCn6uRD4KTjhuurNxdxE8Qxii3BDsmB0VteM/CgxT9NRS/o
 v++5alr6LXvAtA4BjIjZzQb1lJsbfqr3t+AuXjMWMQDyJOWf71tGkRObBixwTBMNCV9rYBZfU
 ilA6pK0oHPNjFn+kM0t95opLSBc0J7Ze5fEFdLDzFtbHOGcMGT3chtHN2CnDFhvhzWfqEZ+3p
 qgZV6uiXviDBPZjqw58lJ++/ht/UNlWitM5zpFoOeW3GFwbu4Vb5WfOFdAdqDf0NOeefqHbJ0
 yrNh/+p4KWBTWTp8DR4MtpG+YkOps5qp0RBlYiWdEkbwaDrVW9FdbOp/4lrftyGNNGiuiblVa
 b9nDznXG+UNDApsO+oWH3g8iQyD88hcQt/XaDn4YupsPTe7A46aAZUPF7f/nP3BWJDTTe5kL0
 YGrcwSHB4Of3mhKmAFWKDr+mGbANqcHGfKhXn58w2RD7WVBvTbb8vBInhiz7knJw1IFTXzBFL
 ZiVxLKkYdXl0M8stLzYqKZeRX73rUIm6VHFpxiNB7rr19FS0UmRf36FXX6FKBL6xd+pykwjG2
 IEP9j8w3px+E2nRzvhV7MWTXJUeWj/8dKMQ16bwR97GcHum2CkZw3yfelfRRCRJcd+43vig70
 dmJkTJwwvTsddA/DTpJLLGXs8PIpsO+2K5HN07diWVo9vLjmaRFXNcMNhGQSfME50BzZL+dIG
 TNTn2xgnr+BApp6+9BhIRHk/MGJIKMKL8EZ8bOWtg/U5hPnqESVru8G7V74L3l+JxgQ6XFoi7
 q2JTZfQneUOsuPraT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_112549_125533_98452DD4 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nick Hudson <skrll@netbsd.org>, Nick Hudson <nick.hudson@gmx.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nick Hudson <nick.hudson@gmx.co.uk>

Define the sdhci pinctrl state as "default" so it gets applied
correctly and to match all other RPis.

Fixes: 2c7c040c73e9 ("ARM: dts: bcm2835: Add Raspberry Pi Zero W")

Signed-off-by: Nick Hudson <skrll@netbsd.org>
---
 arch/arm/boot/dts/bcm2835-rpi-zero-w.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
index b75af21069f9..4c3f606e5b8d 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
@@ -112,6 +112,7 @@
 &sdhci {
 	#address-cells = <1>;
 	#size-cells = <0>;
+	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_gpio34 &gpclk2_gpio43>;
 	bus-width = <4>;
 	mmc-pwrseq = <&wifi_pwrseq>;
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
