Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D482B147736
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 04:40:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MkUnkLJ+FuWM4pZ2jmthak7uNq7ytZY23yeGIZZDB6Y=; b=k8DR5Yq+HQ1549
	QTiq5W+IeOhMBWXyAHZGX7FdQB6qnmCK2sV1IdNYVIKRR3h19GxYSjiodD3RBj3MOJaRvDDwbJj28
	x6OybWJCfv2yqT4CJd7ikPIPwhPaWl1BM7n0xD+p6X0EZOgdYfTZupKo4m4ncXWELHuVq/5gzNrYw
	R9L5+aYLsmKUoMJMDKHTeqOiq3+GtYWws2faGqtOA3RnCyiE2R9SZTD446fpj+iTKzeu6HBYICJcz
	FghhA2U/dr8hjqnyt6On9oBXMn9f8qZA5En6lkvxWk57UIMi4peJxyWGbU3iRHPgG7FkaQncPIXC+
	ss/MG00QBR2SCe7wGcYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuppZ-0007S1-Eg; Fri, 24 Jan 2020 03:40:25 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuppN-0007Re-A1
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 03:40:14 +0000
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com
 [209.85.221.173]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id 00O3djCg007546
 for <linux-arm-kernel@lists.infradead.org>; Fri, 24 Jan 2020 12:39:46 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 00O3djCg007546
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1579837186;
 bh=s3lkUpOhniK8jQRTTs1U4BOtTESo73cdDDpCBPoFEGA=;
 h=From:Date:Subject:To:Cc:From;
 b=hdNcnu9jmDkLWPWwL7yrLPvX+xgWCIEMrG/iBaSlggoRCYQnn0ilyj2uVOWrJWLBg
 sRb5GMmodqntvtdfOkC3IrTri+VeKgi8KkCQW1t3X2W4DZkDxqTfT/xvkpW3byI5Y5
 W+ZkaLgRqdB8u0iNqe3OqBzFfrQABBEhm5IhnX5KaxAkDMgIwg28gGuDb4OfjmVvYl
 6brPd3H4rGoKOPvcGnt4KZyOg6oa/o4cLncoddDiWbnT0Ge40Jr5IbR3PfgeifsS21
 yvWxG2uNeF3RAlkCSxma/YryNcyolgCu5nPfsn3MG1EuMihGSDdJ2Zn/O+kfIRMXiR
 F87llQDOHdIQA==
X-Nifty-SrcIP: [209.85.221.173]
Received: by mail-vk1-f173.google.com with SMTP id b129so171924vka.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 19:39:46 -0800 (PST)
X-Gm-Message-State: APjAAAWkl6P8en7wRi4g2tq4p/gHVJCVDt9phih+l41Ju1w9m0CT4tto
 ieh+KBzdPBl5PAmY/sKUCc9mWxbgAIAIohLH9Z4=
X-Google-Smtp-Source: APXvYqw1ZG0E84h4+qv6BgKdO/rj/ZOnhDN9r048cMXacxVlBB9RfIEywlchzHZs9uX2OLTp4nfEZ6rtvSmpKgAQwa0=
X-Received: by 2002:a1f:6344:: with SMTP id x65mr819981vkb.26.1579837185307;
 Thu, 23 Jan 2020 19:39:45 -0800 (PST)
MIME-Version: 1.0
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 24 Jan 2020 12:39:09 +0900
X-Gmail-Original-Message-ID: <CAK7LNASehDHWgOug=Rz0uBBSP2ntJnNLiarfSdj97tZu+OXLkA@mail.gmail.com>
Message-ID: <CAK7LNASehDHWgOug=Rz0uBBSP2ntJnNLiarfSdj97tZu+OXLkA@mail.gmail.com>
Subject: [GIT PULL (RESEND)] arm64: dts: uniphier: UniPhier DT updates for v5.6
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_194013_565500_1DC35CD4 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof, Arnd,

Here are UniPhier DT (64bit) updates for the v5.6 merge window.
(I am resending this with soc@kernel.org in the To: list)

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
