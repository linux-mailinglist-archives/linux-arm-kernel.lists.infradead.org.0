Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6137F9C44C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 16:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2So3luLv8n5j2XEleG9A11RXUyebBtIqd3E4oxrCsQ4=; b=RZ6qa0Ucbzp9RQ
	U0d0aMZNYDO7p1OL/ENe/2EnWtTvxoo8/IyhhjF37GHK8wpFWd6OL9vvp3SxZVEGUENxsTvlsH8eE
	OlZaMQzPpFw4I+m8ft/RvUmBEJuWEzj0iG3nglbJBkWvxP6tuzYtivMxPpox1vGiDGwVlYBdLsk84
	NDGMgAdqrhUqJaM+m6usCdU/Hwo2TaGHQldEh1qBhhciC1lIR58wfoL50YAC3D7aTWObHvQLIe5c6
	GMSZhizop8fDpyvQK6SQGOIbJS/JEZKrZp3p7gANjSLrxpxw7eb8rFa8y84W3KLdFOmr1j0yEBU0I
	2Zd709dEIYVW0pZVJ9zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1tDp-0004MY-0B; Sun, 25 Aug 2019 14:10:21 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1tDe-0004Lw-Dx
 for linux-arm-kernel@lists.infradead.org; Sun, 25 Aug 2019 14:10:12 +0000
Received: by mail-qt1-x844.google.com with SMTP id q64so3902462qtd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 25 Aug 2019 07:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=ix5Fxc57rohsvqsDlPiVkf1CiayftDRsDvGjRw//vMY=;
 b=icdgnHCDw2lLR8YnW6CxpTHY5akD/R9sahPJnOomMzU74sl45H2fAHFtIoTK3J9BsK
 OEf+m2+epqdfUaejDWBB7AlLWXU9alxxKmH39bPrbt3qXjvGQfNo8DXt7zGVzCMO7VBU
 vLnDwQmjsNJ6vkP/tURpzc3cX0eVfVELTZr0U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=ix5Fxc57rohsvqsDlPiVkf1CiayftDRsDvGjRw//vMY=;
 b=joxARD+mrvS8pJ5EhbaRyl1jHQjR0GbaUxORAL885yDPIwnsy4WYqwP80VaCslmlGO
 ffPU3a44DPTkJ9nLs7l2cLajNECetOpZp6WkuabzLpEG8e2W67T8cVMuEHehYN6JR/ad
 +8fLJEGKA9BkNImXEQS0+t2QlfdqDSJQhOVJ7xgzuNEK+AdX2iqrrv1pvp8gkBYLZ6hC
 a6Nd6sHA97vqZBJprWg0uv3NNhPbXCl1j+FHOGzWSEaVPoRO5EiJbmgd4k0h72knxbjV
 A4x4k7QsYRPUDqxMj89J2ECF1ZsM+2B8xu/Tt7IfWzUwE2D7pzOCz9rOOaoXdQWVbhiU
 mTGg==
X-Gm-Message-State: APjAAAVVOd6A6DWtgALKH69WXxqUa2PfS6APr2xzybdiZ2ucsxrKh382
 CoSarq77qb70PSJg+qz/tSdkPCxammkm2DEb2ZU=
X-Google-Smtp-Source: APXvYqzFrE96OFY5U5o+hgbd1rMHJJMXrR6dbp7JfVZKXs7/QspfFIISONVZdI96hmz4Ggr2nLLZh29Q8JdCic7ikC8=
X-Received: by 2002:a0c:dd83:: with SMTP id v3mr11831705qvk.105.1566742208271; 
 Sun, 25 Aug 2019 07:10:08 -0700 (PDT)
MIME-Version: 1.0
From: Joel Stanley <joel@jms.id.au>
Date: Sun, 25 Aug 2019 14:09:57 +0000
Message-ID: <CACPK8Xc1aSp5fXL3cEzC9SJsCXG2JwsSPpQrW3a09dkvhCyHHA@mail.gmail.com>
Subject: [GIT PULL] ARM: aspeed: arch changes for 5.4
To: arm <arm@kernel.org>, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_071010_812554_0FCE286C 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Jeffery <andrew@aj.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello ARM Maintainers,

Here's my first mach-aspeed pull request. We finally had to add some
code here to support SMP on the shiny new ASPEED AST2600.

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git \
    tags/aspeed-5.4-arch

for you to fetch changes up to 87dfe49691a3aefd66ebe76a4a0cc9e872d2587b:

  ARM: aspeed: Enable SMP boot (2019-08-25 23:26:52 +0930)

----------------------------------------------------------------
ASPEED architecture updates for 5.4

This adds support for the new ASPEED AST2600 BMC SoC.

----------------------------------------------------------------
Joel Stanley (4):
      dt-bindings: arm: cpus: Add ASPEED SMP
      ARM: aspeed: Select timer in each SoC
      ARM: aspeed: Add ASPEED AST2600 architecture
      ARM: aspeed: Enable SMP boot

 Documentation/devicetree/bindings/arm/cpus.yaml |  1 +
 arch/arm/Makefile                               |  1 +
 arch/arm/mach-aspeed/Kconfig                    | 17 ++++++-
 arch/arm/mach-aspeed/Makefile                   |  5 ++
 arch/arm/mach-aspeed/platsmp.c                  | 61 +++++++++++++++++++++++++
 5 files changed, 83 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/mach-aspeed/Makefile
 create mode 100644 arch/arm/mach-aspeed/platsmp.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
