Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12792143A8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:10:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Date:Message-ID:Subject:From:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Th9XOl061Z/ymu0yt0cTnM4ptUKnqsABD1tZlt2dVfw=; b=fCX
	X1YWFG4ymSfDDCf0vJ7zgrXhy7gOeE1th7hZQ1cvIvETsBKQYGZThKWqSWH1m7EmH1FBEpT3z0FNp
	QnI4U8Lhahd+OLyDnlh2TYnx8H0bsQjCPRCUvBXRpubjK+1cFF8o0wVNOrl8AOuygbhk79ykMa1/C
	9dByglJTsXrf3mZ/mOgP6WURguoSJbKEsz8JwA99oOtC//nYHgW25+68SLvMc8L3Mq6ixkGI5wShz
	H9zKm8yFBF+so9dippposjxxNlRHHxP0aBvv2VIblILlqFW7+xEY7lWzZlXljJPi00WY2KwiYm5E2
	u6iL3FhXqhnb3btofR0qAKCoAyXtyjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqUC-0002nW-MX; Tue, 21 Jan 2020 10:10:16 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqP4-0006R4-C8
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:05:03 +0000
Received: by mail-wr1-x42e.google.com with SMTP id z3so2469824wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 02:04:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=to:cc:from:subject:autocrypt:message-id:date:user-agent
 :mime-version; bh=O8NrDw7yHVLtBnhkoS41FmkhinoyNeJ852KKQTDOYgM=;
 b=EhSt6u7jGqZiD5E/nQeejyUFGAfpoXO36A5L4Hr60AtOsVG5zcUEbX4NhkGbInaDOs
 caI5Ksin51xlKgoDl/MR+udaTt07tKUmSjVsN0JDg6TgZmGh24lDdGPBoXbWU0/oh0JZ
 NSfPuI+BEiISSoKvMhholJxlcgzNjsIzvS7V9ZUyTnZH2Ib+x6yC0lE8Z3ZX4P0I5R6d
 UM0lpBTY6DK8lFGFJJmPpnTAESBiSHMucOkD7l2kl9tKhBktJtpjafOAWtZS9RgcZcVS
 X6gs+Illl2tLu7CqLSqf1PT2xlUORuB8NPlN1pZ0dOzRjn683zo63TBEwc1o7LujoRu5
 Wu9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:autocrypt:message-id:date
 :user-agent:mime-version;
 bh=O8NrDw7yHVLtBnhkoS41FmkhinoyNeJ852KKQTDOYgM=;
 b=GSfpt+13za45UHdDOen2Q36a0/NE/mSS6X6mAesAF7uwQ3P+Qk3kBRP1x6F6zwBfTE
 lPR5nON/IdQl0H01zWPxiL7xBPsEpVLWzZ1btN4N1qr8ZiWWhjzxjHLts6FA8uyN0apf
 0NLPtqIQgPTZ8pIovfBUBL+ISNhQ6Vs9VhmNuy11+dDJUjITVOfT94fYuj2L0GjPNMJ9
 TfZPL7Y/vMVnFpMwJDEGQ+brXCxaHgehKdlscKNzkfoySK6GDGYpK417ayqKcJ1mHjNl
 sFSK0xN/AeVv1y0G0yZAOSWleTgyv2OPynjgLiNY32HWJKFZVWbvqn7czRaTmkURhqJ8
 i5Sw==
X-Gm-Message-State: APjAAAWpA4V4O+qEwew311XXnPzN+9rWvKRVYmjuw6cvgJmsxAjwPL07
 vwmSdK3Bq4tghkM92q+7BzhPeg==
X-Google-Smtp-Source: APXvYqxFr1z0x+S/YnCv8vuVJX/gvd4OhwK+IMQi3QI2/qv0mWeQ8oO6h5S4mgPZID0m7uwY6MBA0g==
X-Received: by 2002:adf:db41:: with SMTP id f1mr4578345wrj.392.1579601095350; 
 Tue, 21 Jan 2020 02:04:55 -0800 (PST)
Received: from [74.125.140.109] ([149.199.62.130])
 by smtp.gmail.com with ESMTPSA id w8sm3968813wmd.2.2020.01.21.02.04.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jan 2020 02:04:54 -0800 (PST)
To: arm-soc <arm@kernel.org>, soc@kernel.org
From: Michal Simek <monstr@monstr.eu>
Subject: [GIT PULL] arm64: dts: Xilinx DT changes for v5.6
Autocrypt: addr=monstr@monstr.eu; keydata=
 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
 0Z1MQlmNcq2bhOMzTxuXX2NDzUZs4aqEyZQ=
Message-ID: <c70d2efa-9ee2-a764-5248-0e5bfbf29f8a@monstr.eu>
Date: Tue, 21 Jan 2020 11:04:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_020458_589766_1DCA7133 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: git <git@xilinx.com>, linux-arm <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4501923564602290014=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4501923564602290014==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="c3XvguGBgUVCWDFnE9z0iTXZA7gfw3k7I"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--c3XvguGBgUVCWDFnE9z0iTXZA7gfw3k7I
Content-Type: multipart/mixed; boundary="bzvgaNsnteqOK9CoBdCZcO1ONlFbiJdHh";
 protected-headers="v1"
From: Michal Simek <monstr@monstr.eu>
To: arm-soc <arm@kernel.org>, soc@kernel.org
Cc: linux-arm <linux-arm-kernel@lists.infradead.org>, git <git@xilinx.com>
Message-ID: <c70d2efa-9ee2-a764-5248-0e5bfbf29f8a@monstr.eu>
Subject: [GIT PULL] arm64: dts: Xilinx DT changes for v5.6

--bzvgaNsnteqOK9CoBdCZcO1ONlFbiJdHh
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

please pull these DT patches to your tree. Major change is to switch to
firmware based clock driver.

Thanks,
Michal

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c3=
5a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://github.com/Xilinx/linux-xlnx.git tags/zynqmp-dt-for-v5.6

for you to fetch changes up to 5a25e646902f8bfd97379b0b385d93c93cb5b94e:

  arm64: zynqmp: Add label property to all ina226 on zcu106 (2020-01-09
14:59:51 +0100)

----------------------------------------------------------------
arm64: dts: zynqmp: DT changes for v5.6

- Switch from fixed to firmware based clock driver
- Wire power domain driver
- Wire all ina226 chips through IIO and IIO hwmon drivers
- Add missing dr_mode property to usb nodes
- Use gpio-line-names property instead of comments
- Use clock-output-names for si570 differentiation
- Minor DT fixes

----------------------------------------------------------------
Anurag Kumar Vulisha (1):
      arm64: zynqmp: Add dr_mode property to usb node

Laurent Pinchart (1):
      arm64: dts: zynqmp: Use decimal values for drm-clock properties

Manish Narani (1):
      arm64: zynqmp: Add ZynqMP SDHCI compatible string

Michal Simek (14):
      arm64: zynqmp: Use ethernet-phy as node name for ethernet phys
      arm64: zynqmp: Remove addition number in node name
      arm64: zynqmp: Fix address for tca6416_u97 chip on zcu104
      arm64: zynqmp: Turn comment to gpio-line-names
      arm64: zynqmp: Setup clock-output-names for si570 chips
      arm64: zynqmp: Remove broken-cd from zcu100-revC
      arm64: zynqmp: Setup default number of chipselects for zcu100
      arm64: zynqmp: Enable iio-hwmon for ina226 on zcu100
      arm64: zynqmp: Enable iio-hwmon for ina226 on zcu111
      arm64: zynqmp: Add label property to all ina226 on zcu111
      arm64: zynqmp: Enable iio-hwmon for ina226 on zcu102
      arm64: zynqmp: Add label property to all ina226 on zcu102
      arm64: zynqmp: Enable iio-hwmon for ina226 on zcu106
      arm64: zynqmp: Add label property to all ina226 on zcu106

Rajan Vaja (3):
      arm64: dts: xilinx: Add the clock nodes for zynqmp
      arm64: dts: xilinx: Remove dtsi for fixed clock
      arm64: dts: xilinx: Add the power nodes for zynqmp

Venkatesh Yadav Abbarapu (1):
      arm64: zynqmp: Fix the si570 clock frequency on zcu111

 arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi         | 222
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=
++
 arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi             | 213
-------------------------------------------------------------------------=
---------------------------------------------------------------------
 arch/arm64/boot/dts/xilinx/zynqmp-zc1232-revA.dts      |   4 +--
 arch/arm64/boot/dts/xilinx/zynqmp-zc1254-revA.dts      |   4 +--
 arch/arm64/boot/dts/xilinx/zynqmp-zc1275-revA.dts      |   4 +--
 arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts |   7 +++--
 arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts |  11 ++++----
 arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts |   6 ++--
 arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm018-dc4.dts |   4 +--
 arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts |   6 ++--
 arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts      |  17 +++++++++--=
-
 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts      | 197
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=
+++++++++++++++++++++-------------------------------------
 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revB.dts      |   4 +--
 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts      |  11 ++++----
 arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts      | 154
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=
+++++++++++++++--------------
 arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts      | 124
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--=
----------
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi                 |  74
++++++++++++++++++++++++++++++++++++++++++++++++--
 17 files changed, 719 insertions(+), 343 deletions(-)
 create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
 delete mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi

--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs



--bzvgaNsnteqOK9CoBdCZcO1ONlFbiJdHh--

--c3XvguGBgUVCWDFnE9z0iTXZA7gfw3k7I
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQQbPNTMvXmYlBPRwx7KSWXLKUoMIQUCXibMvwAKCRDKSWXLKUoM
ITWXAJ4yOcNvM3FhAYpCdK9WTl6QeplzRwCfSfN6hG77AN919gaHmCnr8JAu/po=
=qfpo
-----END PGP SIGNATURE-----

--c3XvguGBgUVCWDFnE9z0iTXZA7gfw3k7I--


--===============4501923564602290014==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4501923564602290014==--

