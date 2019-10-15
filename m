Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 111EDD792B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 16:52:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CdO2N38HCDyO6uZUmZht6KzKwcnwyyfoI2hhOf9qQxc=; b=WSUI+2NkyLPGjp
	Uo8OeaVOSUdFHm9baH52bkuc1svuIfmkmqfEGfgF5UPTxQOWka976VtPm98z4X/zKc0+a5FZXY53h
	dnLt2hg09oMhs6oyGQo4nVwGCn5ObTR8emXa0/nbBKu6zJsBV8BaYJU8KvXedo2bGAhxrPMIEbPby
	UNXvc2QgdnnB0+oFxjS97B/MJbA8ok/h2KYR58HOH5VHFbSgM//UCc911Y2w/6cK8ElP2o+kDfQ0f
	MOSjokZ/Vs29VQdHnv11hNZuoK7y/+1I70vBbKQON33JGhsVMIimu3rTbpVNFtHszfC9iy8TkOXFJ
	dFuIhjoz5+cQucoILYKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKOB7-00026X-SP; Tue, 15 Oct 2019 14:52:01 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKOAy-00025Y-JS
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 14:51:54 +0000
Received: by mail-wr1-x444.google.com with SMTP id b9so24276181wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 07:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WoLI6uxqNutCvB1E5NYLK0N5G2eYt5SdmA96QNH7WAk=;
 b=EHF7mD5NCAVyiwZ06oKRXxO8ZP2vDGlLT3SaNy3jgx2+xHAWyLBc91gSjOUs1HfW/+
 uuDkFQengYvCKjUSPOXfufZBidobXJTUHzg9cOKZ8uWAr0mFjylHg1vJaLLvuN/rFpa6
 YYx2aLELiG4kFhhtEvZa7g1euP2mzJJoacgmLNBiIWpAXv5Os9sT8GN0hwNf3JSmMm+P
 Pup6WfzbJWH/uEqYIJvlqjmqjFitArYQcwDw1TZKiWCkPvHxzsgG4NfLrG+CcQUQ2mNf
 Nmx+A4BMzLe+3yLVkLErpmmso0TgyrQL62nqLcOHVtaPVlkXiNerqICyvsCdFNxCkggx
 3ybw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WoLI6uxqNutCvB1E5NYLK0N5G2eYt5SdmA96QNH7WAk=;
 b=U06eHYRglJsOYQe3omx/MoiXX2ts0CUqpBAAobGbOZVpEX3R9joOxryYNpbFhehe6u
 66wFZxbAwSgCvTD4QmixF9I7PHhW09CfGwCsopznUQiD8oRbCoBAWEeq6tBIPlIaLlkw
 oIjpgAB71Tt4rcqEaaRX+3jOU+yeXASGFZUT+OeafvCfsrzTOXAzbY5EfEzMdI3g/AHf
 0S0OTNi8iSUpA0srkCmDoLGi0ZB7apRbs5Eu3NORwWwkD3jW6+7QFkqrItVGNaPolJGG
 EHBbW1WkXMpUms4Bf7NySJcSj/slKaQ7rCoMMuMVE7NwChAlsaa6Pyn2Gpb+jTrsiUxK
 KefQ==
X-Gm-Message-State: APjAAAXh/092Cq3OyekSLLCqDKDkjzfvtiUiT0N/qb9N0qvrndtZ7Z6X
 EYjKzEYlnoWFmEstkiM0v8w=
X-Google-Smtp-Source: APXvYqw0NwqbXq2J1uiXVlbRjhIaOLcqGzUMa9l6dQT7jR59OUq6/cFTa/H6xdWVej7rCvwaX+Sy4A==
X-Received: by 2002:a5d:5451:: with SMTP id w17mr31546117wrv.183.1571151110542; 
 Tue, 15 Oct 2019 07:51:50 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id o19sm27425286wmh.27.2019.10.15.07.51.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 07:51:49 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Russell King <linux@armlinux.org.uk>,
	arm@kernel.org
Subject: [PATCH 0/6] ARM/arm64: arm_pm_restart removal
Date: Tue, 15 Oct 2019 16:51:41 +0200
Message-Id: <20191015145147.1106247-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_075152_641722_C92E13E6 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Stefano Stabellini <stefano.stabellini@eu.citrix.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-arm-kernel@lists.infradead.org, Olof Johansson <olof@lixom.net>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Hi Russell, ARM SoC maintainers,

here's the full set of patches that remove arm_pm_restart as discussed
earlier. There's some background on the series in this thread:

	https://lore.kernel.org/linux-arm-kernel/20170130110512.6943-1-thierry.reding@gmail.com/

I also have a set of patches that build on top of this and try to add
something slightly more formal by adding a power/reset framework that
driver can register with. If we can get this series merged, I'll find
some time to refresh those patches and send out for review again.

Thierry

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

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
