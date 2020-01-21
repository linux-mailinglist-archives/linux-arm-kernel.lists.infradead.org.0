Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E36CD1439CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 10:50:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Date:Message-ID:Subject:From:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xbGLI3vf6+3p3FbzlLNiuq3tvkAHK7ya3v8Sv1SLcyg=; b=JUs
	HyekPb8UBRfuL4VoEevFFFd8jiqUJFF3STVNbwl+/383soXFR2yBwo8Xe1IqezBXP0K3jfxFzhjmq
	YCe4iiatC7qo4QaW+xOptEzbYmCiX8WdE3WTfEVB88j6ctFRGf7NbYs13dPm5BLsNTXbuPdRcQcs5
	+aKlXi39i1bPYtimhNU3Oo9kSmdaGDBzZcscKZ70X0K0m2/D8Gbc8tAj31F7wTV+gzUIXjRV1wsIV
	yKQbKKg/iJDiDfYw+GQI90Bs7KscNNMI5WpUR9eR59jG4iDfc41tmY/sg4Iq/HM43pZeHAf4SAc7W
	2ams3sxungU4rKJ4l4j2JDGn8dip1pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqBF-0006kw-60; Tue, 21 Jan 2020 09:50:41 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqB2-0006kF-GQ
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 09:50:34 +0000
Received: by mail-wr1-x435.google.com with SMTP id z7so2333635wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 01:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=to:cc:from:subject:autocrypt:message-id:date:user-agent
 :mime-version; bh=q/STnKjTiQ941yaSOXLV2WPI80SGqWWrc0UoQSfv3UM=;
 b=H3vv7oWMrgr5eBUG8LJkrXGjEHKnPjU/ubqbPWS20XhIaVg8BhU0ty9oE+iUb73unX
 Bft/4DebuG6DPo00w+O/1GXymrxYHNMpYaYpCL5mzoBjot+De8VN15OJngR3GaePTfeo
 RQnNwDKDfO6XScXiKmNL5BqsR8TTlCGayWLdqlnlyVpzClfdSAHUUZ2qu/vUAWv39ZLq
 iRbw9QzOlF+c0qi07QCsy8//gy7ZF9qbUG145SOlBY/MP1GT/1Gafe4YZtwUhF/2YLMA
 jH/gLhGO5D/cDS8Px3Lgz8agu7/ctSF6G0u+zz4S2ERzrMLSK1Y+r3Ok+0XNDZpuqcKv
 yfhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:autocrypt:message-id:date
 :user-agent:mime-version;
 bh=q/STnKjTiQ941yaSOXLV2WPI80SGqWWrc0UoQSfv3UM=;
 b=AizqaYuoMRcnGe5bYkfv9Oo5WhDa8GqoSFW5rWjtFusjXIBsvkud505IGTzP3EGHcS
 p9MZYJoAsKy2BfIbic5o8lW/vSSk+82wVwvAUeqYi2qz1QHGV6T/GhMYt6VPUT7Ya+pS
 tA+lZXl1lWmYzf/dfsWgrI7o+56Gw0azNxDLYqZxnkvPJ04CHpFZcWbgm3IUc5U1RnPG
 9zqqI2UKCsAC6+pOiIReX5Vh6PXZmfqY+U239F5F6THSb8xQ8asf0cTx5aG25nqRdSnA
 HzEf7EDXoUQoWlo6SAv1UkefV5qhgMMjz+tyxeVvBmA8qwBWM0Wgmvr4rlxWsvnDU5dG
 FqzQ==
X-Gm-Message-State: APjAAAV98BGXnSkGrGN2+qAhGXkedsGAqO8g4ePS/Oik1E3UKkuKM4nU
 B0C8QEO7UnPCTiBA4fG0CplYHTGfTqPvXw==
X-Google-Smtp-Source: APXvYqz7dFvu378JYpEsyk+7x72SXh7ahwWe4Ahy3o5/V0YG6dgxSVGRUov6eDMGFO7B01D95G9knw==
X-Received: by 2002:adf:f802:: with SMTP id s2mr4438334wrp.201.1579600226096; 
 Tue, 21 Jan 2020 01:50:26 -0800 (PST)
Received: from [74.125.140.109] ([149.199.62.130])
 by smtp.gmail.com with ESMTPSA id g7sm51279226wrq.21.2020.01.21.01.50.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jan 2020 01:50:25 -0800 (PST)
To: arm-soc <arm@kernel.org>, soc@kernel.org
From: Michal Simek <monstr@monstr.eu>
Subject: [GIT PULL] arm64: soc: ZynqMP SoC changes for v5.6
Autocrypt: addr=monstr@monstr.eu; keydata=
 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
 0Z1MQlmNcq2bhOMzTxuXX2NDzUZs4aqEyZQ=
Message-ID: <f6fb26f8-b00d-a3e8-bf7d-c7ff2a8483b1@monstr.eu>
Date: Tue, 21 Jan 2020 10:50:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_015028_693269_CB889884 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:435 listed in]
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
Cc: linux-arm <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============0685269276529178213=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0685269276529178213==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="SHPY7nQos1McqnBhfy8q4Deb7BfSyNW7M"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--SHPY7nQos1McqnBhfy8q4Deb7BfSyNW7M
Content-Type: multipart/mixed; boundary="Z70LQ4gA3ft29t0adWoBg24sEbEZYTguV";
 protected-headers="v1"
From: Michal Simek <monstr@monstr.eu>
To: arm-soc <arm@kernel.org>, soc@kernel.org
Cc: linux-arm <linux-arm-kernel@lists.infradead.org>
Message-ID: <f6fb26f8-b00d-a3e8-bf7d-c7ff2a8483b1@monstr.eu>
Subject: [GIT PULL] arm64: soc: ZynqMP SoC changes for v5.6

--Z70LQ4gA3ft29t0adWoBg24sEbEZYTguV
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

please pull the following patches to your tree. Description is below.

Thanks,
Michal

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c3=
5a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://github.com/Xilinx/linux-xlnx.git tags/zynqmp-soc-for-v5.6

for you to fetch changes up to ffdbae28d9d1af70b7d63ffd7827e9795cd8d0df:

  drivers: soc: xilinx: Use mailbox IPI callback (2020-01-21 10:43:27 +01=
00)

----------------------------------------------------------------
arm64: soc: ZynqMP SoC changes for v5.6

- Extend firmware interface for feature checking
- Use mailbox for communication with firmware for power management

----------------------------------------------------------------
Rajan Vaja (1):
      dt-bindings: power: reset: xilinx: Add bindings for ipi mailbox

Ravi Patel (1):
      drivers: firmware: xilinx: Add support for feature check

Tejas Patel (1):
      drivers: soc: xilinx: Use mailbox IPI callback

 Documentation/devicetree/bindings/power/reset/xlnx,zynqmp-power.txt |
42 +++++++++++++++++++++++++++++++++++++++---
 drivers/firmware/xilinx/zynqmp.c                                    |
43 +++++++++++++++++++++++++++++++++++++++++++
 drivers/soc/xilinx/Kconfig                                          |
6 +++++-
 drivers/soc/xilinx/zynqmp_power.c                                   |
120
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=
++++++++++++++++++++++++++++++++++-------------
 include/linux/firmware/xlnx-zynqmp.h                                |
7 +++++++
 5 files changed, 201 insertions(+), 17 deletions(-)

--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs



--Z70LQ4gA3ft29t0adWoBg24sEbEZYTguV--

--SHPY7nQos1McqnBhfy8q4Deb7BfSyNW7M
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQQbPNTMvXmYlBPRwx7KSWXLKUoMIQUCXibJWAAKCRDKSWXLKUoM
IeVkAJ9ZLozdHxvlhUlrdcjFyAdo+M0s2wCdHjm2fbh30FsbxpFyihapix88RRQ=
=5YX5
-----END PGP SIGNATURE-----

--SHPY7nQos1McqnBhfy8q4Deb7BfSyNW7M--


--===============0685269276529178213==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0685269276529178213==--

