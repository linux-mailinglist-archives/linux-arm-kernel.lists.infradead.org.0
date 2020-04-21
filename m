Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA52D1B203A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 09:48:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Date:Message-ID:Subject:From:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7PJxuSorEdZj4uTR5uIzzclNqSfVkYUVCv5E+dz5Omk=; b=F6Q
	5vK94YM/Ql7cPYBn8NicXsV96qqNjX+q1QaYIkX8ZVjpCIpF03+MVWiB3w+vG8gqDlbXxYgR2YG9P
	cigq5gVMoyh6xMPDuhDrsF8FFQn1yYbl6KNlpTmJGtCt4AJ/8GXdAW/GCUi3K/P26oC9RlQ10WY+c
	HsT9LvQnVNh70SwXM/1QZDO/Ko7LV5/fBFffhjv5dMAGb5efiD8pXfMHsO5agtSCnlTK8KbHuZ0j+
	Sjy/cTbX+ZhR8o8yvlvh9fTddEvv3ke8a4QMyP3CXHywzfbnguQPEbsPFRt9DE+hjYxZvizvHAGxq
	+WIBnCo77snfjUZBqjY0HRtQSww6DJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQndK-0005oY-CO; Tue, 21 Apr 2020 07:47:54 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQndB-0005mq-0T
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 07:47:46 +0000
Received: by mail-wr1-x42f.google.com with SMTP id k13so14094065wrw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 00:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=to:cc:from:subject:autocrypt:message-id:date:user-agent
 :mime-version; bh=A/RhoEi9tuBwOEYiXzN6aRII+zYdyEN7FPC3L2Xq/EE=;
 b=gtti3i3PNu9jdLNjSxTf0KdH+HgjFDxrMNbaN2Q/FkRJMrnuhoJm0qEelJRcs3Z1GO
 4rnMABIolbNBE+Bcx+mWtOZD3xNUpB6yBoqvs6ejwkzKjX1sHgpqaIeex1q98+8KVLhh
 prZS/QrewEGA7c18SLVEmjFM0cS1JGBYHPR+xlMpw8Uyu+t3nqX09vu4DdJ7W3A9HIkC
 tB7oCF5La1GVVoi4Tzxxs8X4lI9WPIucf4k4cwBEmuSqKhfp34IzBvlQzlCaB0zj4Kif
 Z3aQqamNChu3Daizqpi9AQxUPINcClMBvbPy5xzZ7uVzdgO0xxRlv+T9MJb/WD992DS7
 U2Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:autocrypt:message-id:date
 :user-agent:mime-version;
 bh=A/RhoEi9tuBwOEYiXzN6aRII+zYdyEN7FPC3L2Xq/EE=;
 b=HiybydgTseMTvMDlqRnLR3RwrfpylEkGSuQUlc3UrvBhVUnMFN1Z8H8dxCt9Y77nx4
 CcsVoU3y+KoApxJSxSKwV+GwFQ36ZhEx7nzsI+bT2qWq3rnzCUIBi/aEKbLwmhcHQ71v
 LUGo3KapXA7jz9/N+dmvq9NcSZzDoAG5lwwRZ16211+RvQ/nmUwjMes6Uno2jMhwPua7
 Pp2wHVLsY+e+8gbePXRma6gxggjTAqd7pyEg+vj1AhokMmXbz6Y6+vO33rsZSaPbWR7P
 qysDT/Lt2pv31TYRpPbUtCMcL33NiQdJiWeWQbP2zvdT87Ks1mP9OetxSie4PAKm/3Lj
 oWig==
X-Gm-Message-State: AGi0PuY2i/rpiFj+uxS52Nb9+adeKWXeTAno+XaMg/GYlRUvzmr3B6Pi
 xcFdFzJHVWCeGTBM/o9oajBXvSQk3Z0BAg==
X-Google-Smtp-Source: APiQypL25BSP51rb6mtNC1lIwDcQm4ebR8NDiaS4hS9y7pghBmjmAuHjHCiHJduXB+hQNFTnlbn6sQ==
X-Received: by 2002:adf:f704:: with SMTP id r4mr23436092wrp.5.1587455262816;
 Tue, 21 Apr 2020 00:47:42 -0700 (PDT)
Received: from [173.194.76.109] ([149.199.62.131])
 by smtp.gmail.com with ESMTPSA id l19sm2413797wmj.14.2020.04.21.00.47.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2020 00:47:41 -0700 (PDT)
To: soc@kernel.org
From: Michal Simek <monstr@monstr.eu>
Subject: [GIT PULL] arm64: soc: ZynqMP SoC fixes for v5.7-rc3
Autocrypt: addr=monstr@monstr.eu; keydata=
 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
 0Z1MQlmNcq2bhOMzTxuXX2NDzUZs4aqEyZQ=
Message-ID: <4c6daeb0-bc61-8bdb-6ed6-5f58cd915326@monstr.eu>
Date: Tue, 21 Apr 2020 09:47:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_004745_102905_99356806 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jolly Shah <JOLLYS@xilinx.com>,
 linux-arm <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4385465330321886913=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4385465330321886913==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="QEDex4YIKt9n21FXkmkSn9EkQcfusp3z5"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--QEDex4YIKt9n21FXkmkSn9EkQcfusp3z5
Content-Type: multipart/mixed; boundary="OdwzdU3lmbAjcduHpPAFoY9MNB20HTXBh";
 protected-headers="v1"
From: Michal Simek <monstr@monstr.eu>
To: soc@kernel.org
Cc: Jolly Shah <JOLLYS@xilinx.com>,
 linux-arm <linux-arm-kernel@lists.infradead.org>
Message-ID: <4c6daeb0-bc61-8bdb-6ed6-5f58cd915326@monstr.eu>
Subject: [GIT PULL] arm64: soc: ZynqMP SoC fixes for v5.7-rc3

--OdwzdU3lmbAjcduHpPAFoY9MNB20HTXBh
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

can you please pull these two fixes to your tree? Arnd's fix is required
for one patchset to avoid issues reported by kbuild and expose issue
introduced in 5.7-rc1.

Thanks,
Michal


The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f31=
36:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://github.com/Xilinx/linux-xlnx.git tags/zynqmp-soc-for-v5.7-rc3

for you to fetch changes up to f5ba30ba481dd8fd513c16262ab528a2a70780d9:

  firmware: xilinx: make firmware_debugfs_root static (2020-04-15
10:25:20 +0200)

----------------------------------------------------------------
arm64: soc: ZynqMP SoC fixes for v5.7

- Fix firmware driver dependency
- Fix one spare warning in firmware driver

----------------------------------------------------------------
Arnd Bergmann (1):
      drivers: soc: xilinx: fix firmware driver Kconfig dependency

Jason Yan (1):
      firmware: xilinx: make firmware_debugfs_root static

 drivers/firmware/xilinx/zynqmp-debug.c | 2 +-
 drivers/soc/xilinx/Kconfig             | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs



--OdwzdU3lmbAjcduHpPAFoY9MNB20HTXBh--

--QEDex4YIKt9n21FXkmkSn9EkQcfusp3z5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQQbPNTMvXmYlBPRwx7KSWXLKUoMIQUCXp6lFQAKCRDKSWXLKUoM
IUmhAJ4l8yCstQaX2DTusgNmKoAhfMe+vwCgjQsedHotYkG1RVH6c8MmyUifwEM=
=k/T2
-----END PGP SIGNATURE-----

--QEDex4YIKt9n21FXkmkSn9EkQcfusp3z5--


--===============4385465330321886913==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4385465330321886913==--

