Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F6B98C4D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 09:17:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+DPjcz45uC8VCAXqWp1SSB8CcoWG9fAUvIn8USz2TMA=; b=EQ7jLtyo+Zb67A
	Y1NDHEUAQ9ciHNkfR8V7Y9t4f/6n4gVvAZ89QAiFDEaf6wrqidywIG1+6lN1vcaAKhN2YkXL5orjf
	UG3Qr+R9KsWGIU9McvI8oUMEO3ex8SZOu9CpMvNQ3+CXzn22nYMW7GJXAFaG5LSgTK0TLE5XSFMfb
	Ty4S6MXeOBPaclvzR3cYYtGAucsRRqzAX/gDOXTStaippQ6FuMR5a0kX2YojXLvBFVCdVO2DpHrFM
	l35Ck2xnVvypfPjT3Si9gCByJfa9ZKLsx78N9DeO1oM0ScxxFuA9NobW2fg3DXsYBaATdwtndrE3P
	lR0jCt58SoANcokjYmEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0hLR-0001Mg-W9; Thu, 22 Aug 2019 07:17:18 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0hKc-0001Ly-B2
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 07:16:28 +0000
Received: by mail-pf1-x443.google.com with SMTP id i30so3302385pfk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 00:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JK3L3Hqr/8Xg50nCZ0FXXSpFdZR5QIulIGOZeZmHggM=;
 b=EiLc/GcU7XZnILAvYq1syTuw0MukalyQvUnG3R9+KnXPUHbxmvq8l/yoahVRd/i7Fm
 xjlcu/r8TwyjjjJNu4MGy2E5xIBVCQUtqmzBZFkEjJne0wFk9Cr+NkkQr3zpj4js4Q4E
 UwECKoGeBLp+bUtI5kXQFVSEFsidPCBiJom0A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JK3L3Hqr/8Xg50nCZ0FXXSpFdZR5QIulIGOZeZmHggM=;
 b=jXWhlk2jVxG5er62une1YHntv9lAcmo2yIGtUPEXafAFV9WpQHASTbM7DKHpnwwbJj
 kdGtn2EJkQDLjMU9h4eSYLX7j3ZogcJMriSIKmI5mH88gbWyoAnwfRcMZ26NUGjbJAxb
 zntnKfJHt9x6M8p4yE+TteN1I99344nli206i6wHA/199oacjI5sejPgMevqHvD056Vu
 BRSS3YzOtRY0ypULxcoYkg/0JV70WBFx1Z9/b6AucJUjIP4Frfbvd6gBHb/tBqZEl0b7
 kH2PbZwMMMl8r/TnppEIrNh5VXZaQHb/gP2Y1Oqiejnavc7lwIUQMYZB7JFvwXEoFQdK
 nA8g==
X-Gm-Message-State: APjAAAUfrWAke6sqH+kHtXgm40JPxP1q0SrUcklG/NH0S99e0gBr+yT2
 RrEgWKWQUA5KcYzDaN9HExI8ID/46oJXEA==
X-Google-Smtp-Source: APXvYqzgiOjQYo8YhmIX8UhyIea+1X8EJIUFpmdSU2TcnCh1KEfDPRymW8ekcY4pLeiuHvSePR5xsw==
X-Received: by 2002:a65:6497:: with SMTP id e23mr31338387pgv.89.1566458185379; 
 Thu, 22 Aug 2019 00:16:25 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id w26sm30233450pfq.100.2019.08.22.00.16.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 22 Aug 2019 00:16:24 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org, "Theodore Y . Ts'o" <tytso@mit.edu>
Subject: [PATCH v9 0/3] add support for rng-seed
Date: Thu, 22 Aug 2019 15:15:20 +0800
Message-Id: <20190822071522.143986-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_001626_407359_56330558 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Mukesh Ojha <mojha@codeaurora.org>,
 Grzegorz Halat <ghalat@redhat.com>, "H . Peter Anvin" <hpa@zytor.com>,
 Guenter Roeck <groeck@chromium.org>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Rob Herring <robh@kernel.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>, Yury Norov <ynorov@marvell.com>,
 Marc Zyngier <maz@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Aaro Koskinen <aaro.koskinen@nokia.com>, Ingo Molnar <mingo@redhat.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Waiman Long <longman@redhat.com>,
 "Paul E . McKenney" <paulmck@linux.vnet.ibm.com>, Wei Li <liwei391@huawei.com>,
 Alexey Dobriyan <adobriyan@gmail.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Len Brown <len.brown@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Rik van Riel <riel@surriel.com>,
 Stephen Boyd <swboyd@chromium.org>, Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marcelo Tosatti <mtosatti@redhat.com>, linux-kernel@vger.kernel.org,
 Armijn Hemel <armijn@tjaldur.nl>, Jiri Kosina <jkosina@suse.cz>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Tim Chen <tim.c.chen@linux.intel.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introducing a chosen node, rng-seed, which is an entropy that can be
passed to kernel called very early to increase initial device
randomness. This can be used for adding sufficient initial entropy
for stack canary. Especially architectures that lack per-stack canary.

Hsin-Yi Wang (3):
  arm64: map FDT as RW for early_init_dt_scan()
  fdt: add support for rng-seed
  arm64: kexec_file: add rng-seed support

 arch/arm64/include/asm/mmu.h           |  2 +-
 arch/arm64/kernel/kaslr.c              |  5 +----
 arch/arm64/kernel/machine_kexec_file.c | 18 +++++++++++++++++-
 arch/arm64/kernel/setup.c              |  9 ++++++++-
 arch/arm64/mm/mmu.c                    | 15 +--------------
 drivers/char/Kconfig                   | 10 ++++++++++
 drivers/char/random.c                  | 15 +++++++++++++++
 drivers/of/fdt.c                       | 14 ++++++++++++--
 include/linux/random.h                 |  1 +
 9 files changed, 66 insertions(+), 23 deletions(-)

--
Change from v8:
* Add a new interface add_bootloader_randomness
--
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
