Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0D09A786
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 08:27:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d8UljWRN/fIk1gl1hQqze4S60eQe8i9pPkhycx3qJVQ=; b=VSjuzCwVS4WNRL
	+/kcmrwJfZvTl23Wlm8paNKyAjmcs8rgzAxCmyA4C6HV1JWrFJOamVsv6Rz3mLGHSaqn+NNT41/KN
	s/ctFw6kLPDXtD1By9jPLoEsVd0REiOe+mxptf4qeLXVPN7N7tOEjn4LVpCRnWJTEFKlZj3AWFiGm
	/ZLFp3Y6KRipO36enzWBo+16iPNhyBnlG0Pjm4gEa2752nEGfk6zmcQytbQGHWNGNN5qJelgMbQnc
	V0RVD698A/ijGwpnt7ck81370AJYjMUk0g6R7hFuyDrUFx69e3YX/2MjrUR4v2pt72y+HHHlIIWyN
	Gwd5XuL/0duhlTIl7h4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i132u-0002Bv-Ci; Fri, 23 Aug 2019 06:27:36 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i132c-0002BJ-Ky
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 06:27:20 +0000
Received: by mail-pl1-x642.google.com with SMTP id f19so4988418plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 23:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GhjRfjhMwINY908SCrXL1aDBLnxIvIs4Y71zc0rRgRU=;
 b=dh+RaFUCw0uw79iT30CYn2FWwnL24m0shKCCYpFZVygUMcYvPN83NN7ROJNqa3sh3P
 4CvH9sJoWVNk5/JHKRogK6iczeRLwh2qeDj1pX8wfj5lYpWuQcsVx1/PB6hyw20ySi1r
 QeuQixRWgAV0BmcQMikTTokcwuFWkKCO2HDRM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GhjRfjhMwINY908SCrXL1aDBLnxIvIs4Y71zc0rRgRU=;
 b=rYGa0jmJYmNCN+UsCro0tRr9MCXYJnqyEroCIqkK2ktJ8OGdvOzEObJwVxPS196pWt
 BXPkoetwUPtJvcXPtR6lZ7aD8kV7XBnhMj/EnQuUE0Kv/0VffDx2rvY6fEoi3qTS16n+
 bTc7p2+UOGbZ62TYsBf6RUr0H2mkkHATeK8+gECPfBsZc3xLH4P4f3mQPBwa/NpgeLWC
 UKXuKJU3uivmqELOJg0si37SBuAGDSr05Usj3EWmw78/4QklWE4yS4nx3/5tIYpT8KXJ
 e8NHZdjRuxGqYFM/M/tRjTNNsHcMPKtSVEWv50pt6SWmFJVOwWMnikj7gq7/pT8E232v
 TgjA==
X-Gm-Message-State: APjAAAU/nN0w3r40JLkPHInhWSUBKsqo8APshCjvJtUJgNV3KnmByrvz
 zrRYQfzE1IctDbV7xwSPnDltDwIAEOs=
X-Google-Smtp-Source: APXvYqxsGxrRqSSIoxb1SULucqZZIslLOBDGEU9/wOXaFvOn3E0EpM+vtjgQYhxackVeD+CPnWS7YQ==
X-Received: by 2002:a17:902:9b8f:: with SMTP id
 y15mr3055556plp.194.1566541636820; 
 Thu, 22 Aug 2019 23:27:16 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id q13sm2139671pfl.124.2019.08.22.23.27.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 22 Aug 2019 23:27:15 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org, "Theodore Y . Ts'o" <tytso@mit.edu>
Subject: [PATCH v10 0/3] add support for rng-seed
Date: Fri, 23 Aug 2019 14:24:49 +0800
Message-Id: <20190823062452.127528-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_232719_028283_2C11E03C 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
 drivers/char/Kconfig                   |  9 +++++++++
 drivers/char/random.c                  | 14 ++++++++++++++
 drivers/of/fdt.c                       | 14 ++++++++++++--
 include/linux/random.h                 |  1 +
 9 files changed, 64 insertions(+), 23 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
