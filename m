Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DDC6A717
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 13:13:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dxU+eWo2CIGrtCofZLKchJlOsmSwZ88TH5faQIp5ODE=; b=XeV
	Vvf0BVMV85badFus0bZM35xo7X9mTy6EHAYXwEs2LumAnH0R7F3/y2a7WbJLVAYuJMJxZwu92Rs9L
	ZUBWH8nWfIdLcGAkODwfqBoJZFMsVHMzwKUYSvsKuoVTUYTsXVf13O2gwf73R6fYWfYWr6e+JOr+s
	THENBvE05wcZm2U+60ZJ3kVS5YzoYs3bONzSTulr4wRUQLT3kBqWNkskNyrh6LH7s5oAo5CKqa3vM
	IjlNdKXtY5MLqQLOYRY6NspEywVwgZwFFnayw0HhPF1G9dHlAjC6sTPwK0rlmjFy/wlitmojkSh6u
	1iDGzVlMEyqI0NHWBevZFu1Ln9gSI2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnLOo-0000OY-Mi; Tue, 16 Jul 2019 11:13:34 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnLOa-0000Nj-Dd
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 11:13:21 +0000
Received: by mail-pf1-x443.google.com with SMTP id r1so8939417pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 04:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=l8lUDijBiyY5cnjhjm2bVu88mH5lRLrGchTwxKmKfRM=;
 b=n+WcafFy/24JXY2LfhO+hw1ngbjN1W/bcJu99Sy2jNXlHMVIp+hq+Kw0Z8D3nCpVu3
 p615sFT47ypPa/pyRofK9aC5YX4c9pUMTqeia6e2T3YfaHhYc+/Qt/zfpomkHJCaqUIs
 Wa3K+jFwzvvLdB4h0f0p454uZScZX3rew/arPvBW6/L4VybGE25GvXdNvixCxHe4AZIL
 b0bAxU83fAlmu7KERFHiUOtHyA3bG7H+ByV4pFA9tuojhnFXGGBzvpkK7kPhO+KCbAEm
 5fcmvjoiCZmwESd8VfOcMHf0txSN7uCQOGKcgWmHgCdDKMFNNj5ed8K2ZlMvVyPzifGd
 Fkbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=l8lUDijBiyY5cnjhjm2bVu88mH5lRLrGchTwxKmKfRM=;
 b=gT0sKSH5TaYSDgSj1sUQ1M+pnQjW5vyQCphczDuYHYGwWY5NZAdts+rnhNFN08XTD2
 +o9MFQyP/TBupNwgsazke/ew1j6CygGyHzTaWYhAWnYPRCnRu+uVKQfnMoK9lknPbV4b
 vPdhmLaDciuvP/P8HZlXeW9ZrLzppZDwiHHoQ6k6YllJZrHR8Th1lp/0YPlrpHRFF+35
 gPKENr+2V3zEeFdlDzlzpk0hcKBzW126B5GAFssftOMmCpH06A2i1AiE/2JZ5/opDiWR
 Vd0KdmGivZS5tccAKoqjxFI1vK/z440aXGrmyhA9TKFWEpJGEVO0bk+gCDHhtjNxIK4F
 PT/w==
X-Gm-Message-State: APjAAAWEKJgLhG+TWjYK+nt5KjtSATxwLcjEY2w91qHjJDDDZuGdjcij
 +JXeqNEsWCxVjADVDh4Uslvedw==
X-Google-Smtp-Source: APXvYqx2luVpK2SH0RmMNrxXQpvln9vKdfadl33zXwjMdrs+FXh/PcBB7WUo0CD3twBTUWfaiHb80g==
X-Received: by 2002:a63:e356:: with SMTP id o22mr32978109pgj.150.1563275599407; 
 Tue, 16 Jul 2019 04:13:19 -0700 (PDT)
Received: from localhost.localdomain (li1433-81.members.linode.com.
 [45.33.106.81])
 by smtp.gmail.com with ESMTPSA id 21sm19324907pjh.25.2019.07.16.04.13.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:13:18 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Russell King <linux@armlinux.org.uk>, Oleg Nesterov <oleg@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org,
 Masami Hiramatsu <mhiramat@kernel.org>, Justin He <Justin.He@arm.com>
Subject: [PATCH 0/2] arm/arm64: Add support for function error injection
Date: Tue, 16 Jul 2019 19:12:59 +0800
Message-Id: <20190716111301.1855-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_041320_467100_853BD587 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This small patch set is to add support for function error injection;
this can be used to eanble more advanced debugging feature, e.g.
CONFIG_BPF_KPROBE_OVERRIDE.

I only tested the first patch on arm64 platform Juno-r2 with below
steps; the second patch is for arm arch, but I absent the platform
for the testing so only pass compilation.

- Enable kernel configuration:
  CONFIG_BPF_KPROBE_OVERRIDE
  CONFIG_BTRFS_FS
  CONFIG_BPF_EVENTS=y
  CONFIG_KPROBES=y
  CONFIG_KPROBE_EVENTS=y
  CONFIG_BPF_KPROBE_OVERRIDE=y
- Build samples/bpf on Juno-r2 board with Debian rootFS:
  # cd $kernel
  # make headers_install
  # make samples/bpf/ LLC=llc-7 CLANG=clang-7
- Run the sample tracex7:
  # ./tracex7 /dev/sdb1
  [ 1975.211781] BTRFS error (device (efault)): open_ctree failed
  mount: /mnt/linux-kernel/linux-cs-dev/samples/bpf/tmpmnt: mount(2) system call failed: Cannot allocate memory.


Leo Yan (2):
  arm64: Add support for function error injection
  arm: Add support for function error injection

 arch/arm/Kconfig                         |  1 +
 arch/arm/include/asm/error-injection.h   | 13 +++++++++++++
 arch/arm/include/asm/ptrace.h            |  5 +++++
 arch/arm/lib/Makefile                    |  2 ++
 arch/arm/lib/error-inject.c              | 19 +++++++++++++++++++
 arch/arm64/Kconfig                       |  1 +
 arch/arm64/include/asm/error-injection.h | 13 +++++++++++++
 arch/arm64/include/asm/ptrace.h          |  5 +++++
 arch/arm64/lib/Makefile                  |  2 ++
 arch/arm64/lib/error-inject.c            | 19 +++++++++++++++++++
 10 files changed, 80 insertions(+)
 create mode 100644 arch/arm/include/asm/error-injection.h
 create mode 100644 arch/arm/lib/error-inject.c
 create mode 100644 arch/arm64/include/asm/error-injection.h
 create mode 100644 arch/arm64/lib/error-inject.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
