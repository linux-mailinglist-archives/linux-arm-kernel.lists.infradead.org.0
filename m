Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4515A140ED5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 17:22:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7pLMMXDTN1/xwvXsJMh2yC7Xg13+bZFCZNJhR0F22JA=; b=UMjsAdE8v2EqSj
	PEsqwZCE28ZNxzjfOXFoimiOZuL9PCA/h707+rRc0wG/VWWPulE47bEMnp9W+WERoG5wu/n6wP8Gz
	bf4yw0KzA3wKCREfxahch6ssaa0gjh2yx7VU5F8wM7J50Qsykzm0WB2RibbbAJ/c34OmzJkFk4HI9
	e1HbaNwngXz6dhYEgiHPn7NJ6dr6Oix/m1VXqP8C5NZRzdQjwqzsCCFrGPCxuNaoHm1wqRXOXLgBj
	UF34VYatA7cQHGOAbhV0OfeW3N3AVHLgYy+jdnImvUh+YkI2ZUiSBiMMQWUbQj0lnuVPt8BNNPTMX
	5dLSkQz6/+1/zNDasSyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isUNa-0003lK-6U; Fri, 17 Jan 2020 16:21:50 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isUNO-0003km-Pn
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 16:21:43 +0000
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com
 [209.85.217.46]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id 00HGLMrf026402
 for <linux-arm-kernel@lists.infradead.org>; Sat, 18 Jan 2020 01:21:23 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 00HGLMrf026402
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1579278083;
 bh=TeeWya+TG9Xy0gXdSPIQIspK/bwebir0dZTvUEpgOjM=;
 h=From:Date:Subject:To:Cc:From;
 b=ec1g249kdc0PQhw3ujyJ1T+jDGiYuST9J9aKBsRSpDerNwnFzShEX/DHHg40+8Gz1
 cEnkEzA7jps6tAfyPZemBP0LSIdcI2wHDo0IVBcXPNaFcCd5Ogu2i6C0taogbjPH51
 de3XLaA49zyPFoj1VixoTDhf2zxyj68HiaoIwxMU7KEzwKKiSfG7bKrR95a4dz+Nbi
 9E0v7Y3E0PC3fv1nB995RCpVyij50nduOIzNDnn3nSf7BNVY0sHCd/5Fa+c4FBq0Iq
 /Fkg/EH0YLjyl9PROpToKkUfAEcI/gR7CLvEh200EkJHZaGLCrAO2YOE0RYZ8ydKuw
 Occ+WDCiRR5eA==
X-Nifty-SrcIP: [209.85.217.46]
Received: by mail-vs1-f46.google.com with SMTP id u14so15163280vsu.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 08:21:23 -0800 (PST)
X-Gm-Message-State: APjAAAXHfBRDcsge9YYnX6rU3c7PGQQFSCmc4vV1AN0+b2s785zCzyO2
 cBWKOXHAXgivaTuY3e9MgpfpTvf6qTV7oo7CRAQ=
X-Google-Smtp-Source: APXvYqy5BIDYBDfunLSR9P1Boe13pWwbJ1agFjiJyemKtIJCKx+EHk7ILLhM1Y9qkDkJakd14A6OxFbWNB+6Yz7m5jA=
X-Received: by 2002:a05:6102:2334:: with SMTP id
 b20mr5253722vsa.155.1579278081911; 
 Fri, 17 Jan 2020 08:21:21 -0800 (PST)
MIME-Version: 1.0
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 18 Jan 2020 01:20:46 +0900
X-Gmail-Original-Message-ID: <CAK7LNASEaiFia8NKZN8++-9RfGXOPKSFuCkdukBk9Jy7+nHecQ@mail.gmail.com>
Message-ID: <CAK7LNASEaiFia8NKZN8++-9RfGXOPKSFuCkdukBk9Jy7+nHecQ@mail.gmail.com>
Subject: [GIT PULL] arm64: dts: uniphier: UniPhier DT updates for v5.6
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_082139_055137_248F65AC 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Olof,

Here are UniPhier DT (64bit) updates for the v5.6 merge window.
Please pull!



The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-uniphier.git
tags/uniphier-dt64-v5.6

for you to fetch changes up to e98d5023fe1f062bb549354a2428d930775fd67e:

  arm64: dts: uniphier: add reset-names to NAND controller node
(2020-01-18 00:56:18 +0900)

----------------------------------------------------------------
UniPhier ARM64 SoC DT updates for v5.6

- Add reset-names to NAND controller node

----------------------------------------------------------------
Masahiro Yamada (1):
      arm64: dts: uniphier: add reset-names to NAND controller node

 arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi | 3 ++-
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi | 3 ++-
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi | 3 ++-
 3 files changed, 6 insertions(+), 3 deletions(-)


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
