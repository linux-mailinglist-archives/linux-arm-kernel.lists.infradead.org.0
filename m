Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20579C8956
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 15:12:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dxgQWbnVVHrp1CyulbmYVODZ0Hum+AlFmqh9IeVAE3k=; b=Bi8iC34JSLK7p5
	0VwHyINCdnesZ/PKmzGhQXUq+E69M6/g6r5AZoajx+s20ZKdvtvXOrS6E9d6Xqyadp+4hnRUPtHC7
	cmfk4tx68eV2jSVaLkm77JRvCl/LiD76P5MRWi753FXZO2+blJDJIQ/a+ZtS+DdsVVaCIvgXkalEq
	M7cF8zK9WK5UOKDgCiVTidAkjzE8sp7gdeMfTkFUz66+EJQkSVk1Ey4pWraRyU5iB6tNPfSFZ+EzP
	VHm4IlWnHTA0LMk0sttG8tXLGAhjeTY4ph0YJo+4XuBZPznyCgVC9F7WRwn1rj0QgT2DLEwUjpsph
	cgdixQ7RMBGonNeV1/pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFeQq-0001bY-Pb; Wed, 02 Oct 2019 13:12:40 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFeQk-0001b6-28
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 13:12:35 +0000
Received: by mail-wm1-x341.google.com with SMTP id y135so4909898wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 06:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dWmfxrr3yiI62FpzGTu49wGj0HcMPCH7sJ8g15lUKcU=;
 b=GNiwJ3sWYlCbRUn/8o+cKzyWQBWSZAAdaxScsblchc8ydNUZsCAemAgKC0yxF2nIW5
 ESiWu/bsOlVr2E+q8EjZwwwMwb0z1BH+zNQlqFk/mmyNeIs/cNDssGPBELCxK63cMkTR
 /uuLJ3JV2yUIPWfV+OWD8Bj17rBQs195J46q3WfVQ+j8IYldPT8S4Qbc1TUvUEZnDW8B
 T0tCvQoRcNdqALxu9q4j2ol73EvlLBTnUNJ0z7GFrCYZQVabUrwk7pRlcMjlpTWGs+d5
 jYdd98bZvDd4yMhxo2nnhjnP/g3WyCUxZRcuMrMBU2ERAz7cPycFGUwJbspqHbT1npAe
 IPKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dWmfxrr3yiI62FpzGTu49wGj0HcMPCH7sJ8g15lUKcU=;
 b=bxMBRWOZq1a4j0Pw76NaRrfDnylOrjXDqBfpg6pDN/+pCGXsF0OSl0Tl1ArF1jBtl7
 Q/PZ3mFQJU6Vkj3raT+aiT2GaqviOqs2PHyrAiJ8aE6OtL0ODAfAjMuCsf7qsDidHgGl
 yr2gw7xcHaOwGiliPEnx+VCuIwmhs8HtfHx0LsmQF5Zrbz42I1IEo0XaoURlVOPnKhkl
 CiE33xPf/OhrJsPzZMe1x+lBVzpPR2El2r0U18xyfb4lKnZQvbnGT/gxs5f0RXtyx4mI
 AxuqXszUDVgF6t7cchqM/wX6kQCwPwkq6HT2Wws0COVzQATBNmK2duLkW2rYVdXDF1BO
 +r3A==
X-Gm-Message-State: APjAAAV+Y725aBj2c3e9+p2PJkgXP94fMU3R6rx7gI6U4cPScbq0cDVr
 thmcpkRH/rI2cZ5hhOrBF3I=
X-Google-Smtp-Source: APXvYqwZJRmqO/348iL83RfqtzHzQlyL7q4H5PCEPgiN/FO6NT8T9iqUzuFd/4pA0SKvLca3F0gwkw==
X-Received: by 2002:a1c:3904:: with SMTP id g4mr3017385wma.116.1570021951807; 
 Wed, 02 Oct 2019 06:12:31 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id i11sm8760488wrq.48.2019.10.02.06.12.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 06:12:29 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL] ARM/arm64: arm_pm_restart removal
Date: Wed,  2 Oct 2019 15:12:28 +0200
Message-Id: <20191002131228.4085560-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_061234_131449_7733C83D 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  https://github.com/thierryreding/linux.git tags/for-5.5/arm-pm-restart-removal

for you to fetch changes up to 81b3f28283e2f0b03cea2127e9ff78e7c505b3d3:

  ARM: Remove arm_pm_restart() (2019-10-02 14:56:22 +0200)

This is the set of changes that we recently discussed that remove all
uses of the arm_pm_restart symbol and replaces it by usages of the new
restart handler that Guenter had introduced.

I've rebased these on top of v5.4-rc1.

Thierry

----------------------------------------------------------------
ARM/arm64: arm_pm_restart removal

This set of patches converts all remaining users of the arm_pm_restart
mechanism for installing reboot hooks to the restart handler mechanism
and finally removes the arm_pm_restart symbol.

----------------------------------------------------------------
Guenter Roeck (6):
      ARM: prima2: Register with kernel restart handler
      ARM: xen: Register with kernel restart handler
      drivers: firmware: psci: Register with kernel restart handler
      ARM: Register with kernel restart handler
      ARM64: Remove arm_pm_restart()
      ARM: Remove arm_pm_restart()

 arch/arm/include/asm/system_misc.h   |  1 -
 arch/arm/kernel/reboot.c             |  6 +-----
 arch/arm/kernel/setup.c              | 20 ++++++++++++++++++--
 arch/arm/mach-prima2/rstc.c          | 11 +++++++++--
 arch/arm/xen/enlighten.c             | 12 ++++++++++--
 arch/arm64/include/asm/system_misc.h |  2 --
 arch/arm64/kernel/process.c          |  7 +------
 drivers/firmware/psci/psci.c         | 12 ++++++++++--
 8 files changed, 49 insertions(+), 22 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
