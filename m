Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF959191422
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 16:22:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Date:Message-ID:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kgaLMyaI1/qRMZBFpV5QJHGzAtVINm40qWy4w3AixCU=; b=RGS
	F1PuBQg4uQf6Naro9B5sozWKQqBRB6Mzs3WwzfsXKsg9LrolPx4YGmI+hKBMHMYAY5ZBaGPMB3fyx
	UV3sMjtZM/e/yvWGeP6l2ThYziyrpwRxyOdm+FmJM2X4pPc5rL09Wv6bvB5a5kbhdQloTW1HWdzNF
	pBaMdenY+ciLMOTvKcMg8F0sL5ZvUUtpAvGHsOcxrLkC60mBinHdHq6vG8ZUaCQievDUmoYChUAaA
	e0g2sn1u6RQ4HQGqyYBtziz9s6mr+91enCowpWi21Jji40doCltX5Rh26W9kjv36wvFkI3QAHhnlE
	0A4BNTuMlhK0Gk4Q/w+2r2cfCP09dmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGlNf-0000w2-1W; Tue, 24 Mar 2020 15:22:15 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGlNS-0000tS-F7
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 15:22:04 +0000
Received: by mail-wr1-x432.google.com with SMTP id h9so21947738wrc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 08:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=from:autocrypt:to:cc:subject:message-id:date:user-agent
 :mime-version; bh=oVDeC5ubfhSfia3EUpWOXgLoc/ULsIH8sr97Ap0dGZc=;
 b=X6zj1iXzEu83h6lTj/mwkGA7R5WIrRyDCF7QuGVznNhjkdarsJHqbYmPErDk56K/tu
 +gXD2n3fkxtyqyWxo+xza0t9qPL84FMKFeit1Od0xGV0w7o3YuA360N39Tsx7sDlYbjE
 u5zCl+tAHM++j/d7L7dVdboM7k+0F1eDVgI2edSx4TNuegNb/6DHVldNXYlzE3qEOJpf
 ukAevMuC5MSbgnkzk9uG+KBoLbf9nAIaiHIo5rNkBl7rba0bmRUIAQO6JFBuJIvfy6cL
 v8PrA0Oum96fTMSqbCFdQuFkNdLM1JGVytBHabHv1UoJm2XfweuyCOJxchMgvDjTPuLF
 vn4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:autocrypt:to:cc:subject:message-id:date
 :user-agent:mime-version;
 bh=oVDeC5ubfhSfia3EUpWOXgLoc/ULsIH8sr97Ap0dGZc=;
 b=Za3ncqjK2XcoDFbvM9a/eYthh9he1w9SUGutANIc/QEjWRLHEnoCTEz8kHueUY0bRT
 Lm11FdF5oHwSnXLmk0HdiKGD6Nm7MyTcQH1dgmV25J7AXCb+8WJGyrPy/brHluZhrM6x
 h2YWcEXbGWLiAQmWQGM5CCGQc+j/rMP5U8vZXKORgRc77mC01xBjCSWVgkjww050TiTS
 LyaifpT3jQ440MDO+qEU4KBJz1vEijS4u1fEKdKJUyQ4iUDQulMH8zgiMBavH7k0pLM9
 Q0Pnjv04/kBnh86MWYRWGxwUZvIEnJ7YgxjZI0nlVQmvbKQcqKEckJ80Hz6kNiChMiAh
 8vng==
X-Gm-Message-State: ANhLgQ3UwVsAFkDKd51l1VdnWctuHY9xGkSwM1SjHdvi5zYoKpUbGIJu
 86OYKexvdzCIKOiXuZX+IePmCb9srd7Vhw==
X-Google-Smtp-Source: ADFU+vufFINiv+r3aurF819FoL0UoLy86EyQUDWG+GvneeADs/rIRxUhOBWaA2+cV+39iGLxuu2MlA==
X-Received: by 2002:adf:f310:: with SMTP id i16mr37110377wro.100.1585063320379; 
 Tue, 24 Mar 2020 08:22:00 -0700 (PDT)
Received: from [108.177.15.109] ([149.199.62.129])
 by smtp.gmail.com with ESMTPSA id t16sm26465048wra.17.2020.03.24.08.21.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Mar 2020 08:21:59 -0700 (PDT)
From: Michal Simek <monstr@monstr.eu>
Autocrypt: addr=monstr@monstr.eu; keydata=
 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
 0Z1MQlmNcq2bhOMzTxuXX2NDzUZs4aqEyZQ=
To: soc@kernel.org, linux-arm <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] ARM: soc: Xilinx SoC changes for v5.7
Message-ID: <005af9f0-85b5-7bac-2d99-5bb3857debb3@monstr.eu>
Date: Tue, 24 Mar 2020 16:21:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_082202_646296_CA7CAE87 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:432 listed in]
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
Cc: "git@Xilinx.com" <git@Xilinx.com>
Content-Type: multipart/mixed; boundary="===============8348733547841866016=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8348733547841866016==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="nSo9k6iAGp86GRfl6oEZfBMpNYWvZx2Le"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--nSo9k6iAGp86GRfl6oEZfBMpNYWvZx2Le
Content-Type: multipart/mixed; boundary="BEvt1idYqiJJlqWu9T2mnt9xwnSqgKfXX";
 protected-headers="v1"
From: Michal Simek <monstr@monstr.eu>
To: soc@kernel.org, linux-arm <linux-arm-kernel@lists.infradead.org>
Cc: "git@Xilinx.com" <git@Xilinx.com>
Message-ID: <005af9f0-85b5-7bac-2d99-5bb3857debb3@monstr.eu>
Subject: [GIT PULL] ARM: soc: Xilinx SoC changes for v5.7

--BEvt1idYqiJJlqWu9T2mnt9xwnSqgKfXX
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

please pull the following simple commit to your tree.

Thanks,
Michal

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862=
b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  https://github.com/Xilinx/linux-xlnx.git tags/zynq-soc-for-v5.7

for you to fetch changes up to 1a1a9fafc6a2536835b38886ca4afe50d19dd2b9:

  ARM: zynq: Replace <linux/clk-provider.h> by <linux/of_clk.h>
(2020-02-13 07:26:36 +0100)

----------------------------------------------------------------
ARM: Xilinx Zynq SoC patches for v5.7

- Use proper clock header in soc code

----------------------------------------------------------------
Geert Uytterhoeven (1):
      ARM: zynq: Replace <linux/clk-provider.h> by <linux/of_clk.h>

 arch/arm/mach-zynq/common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs



--BEvt1idYqiJJlqWu9T2mnt9xwnSqgKfXX--

--nSo9k6iAGp86GRfl6oEZfBMpNYWvZx2Le
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQQbPNTMvXmYlBPRwx7KSWXLKUoMIQUCXnoljgAKCRDKSWXLKUoM
IS13AJ0QezZxVomOwgT6kt6N3XRTYu75oQCfV3sHe6+D7+0bjrniOTqL94xjLcA=
=n7B/
-----END PGP SIGNATURE-----

--nSo9k6iAGp86GRfl6oEZfBMpNYWvZx2Le--


--===============8348733547841866016==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8348733547841866016==--

