Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61864137AAF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 01:37:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=owb57D5h40bckLD+T2O6IiTtHfe0UGcwXDqsybN6+hQ=; b=fXZgfEudGhNiU4
	FCC/6rOg6d8s8m3c+4yVzvHw8Yp5+63GUFag+vbL6Q0WEg4CXGoi4M+TByyS0WwwhWBAt5R8ILfeH
	ERyDmg8kAdYBf46I/M6ABAraVUfY3+RXFkukUkMienkbHHwyXfMd/XiYX6LYM+hnW66evyawf1s5t
	56LquTgOwItVKuy3vZ4qJ76Xt6T3td+YanDNO+fXC1/jBqB0tDf/EkFDQaXA+iQ/UE4m9AND3wAIq
	IHvaj+nknZyayd7TrNJyMFva3WTPRmFxNBV059np0w8MBgbCIA31VMTGEUxFF9muGqC5boUGskdi2
	sfIki+N+49tmsZ6i4SKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq4mG-00082x-Q3; Sat, 11 Jan 2020 00:37:20 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq4l4-0006bm-Cw
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 00:36:07 +0000
Received: by mail-wr1-x442.google.com with SMTP id z3so3465535wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 16:36:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JW4WaaZfWWvCV7Tj0/ukOg7JbJ65miboJGEuI4kt5RY=;
 b=rw0Zz8JRg7AADoywH5JdHf/TIC/2gKY1hw992tTll/t0HHnk0dgvyBBKGpJCGK9asp
 B6L4sQVkVkQIcjuXw8TtiMP1Q+jvbETw+P8yqw0b2u78au4O4KXZ7UU1e6E/McEUT4lW
 K2j/DikjoI/+6cAgpCsz5AhtxosV8yET8DEQfdqS8v7cQF6M4mx6V1iBncSyMEW+FVNF
 tg9W+nLBcMjzB4g9iNF86m44Jp0ZjW/NAbTKox0pq+mcE9SOjfRagqmfsgcOSTCVnUkK
 0r0Its9pJhpxjs+jhP2F926SrvRxd+1JcDQPa6zPK1e0FKyxQMsF0rR+ne0Ds5Cj1iqo
 bqyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JW4WaaZfWWvCV7Tj0/ukOg7JbJ65miboJGEuI4kt5RY=;
 b=AfdoI3QVyAGHccBBsHpOpo1juOG5YZbTV2p8Jo9BpHbrB6MBDc/WIibFVrRODyGuBa
 28cI1LdXgPivW+F06G3RmfTnGB0vaN+wX64ChR1dV/EsVUhdHDgUPx7VWWePr0p0uBdo
 6C9iytjrun7mYkxCoe6cNyOW4OAF2w1vr64ylpm/DZNYVJ/ZW6v8Jtgb7O1W7wNP/tO8
 S2fJUbVykQEvab6Z1vz3ADKLT64d3migCcg4Ws7mBZxdQLjOmoUXNgnoSD5nMVuYJyCN
 umePGNxNEF/hCtu+0CPDKdNRDsc+9bn/ypTiM8GVelQO793PHizFKFwy/O/7bhqitCDA
 FKDA==
X-Gm-Message-State: APjAAAU6isyrokEqW3n642xXFGXQtisCCZP2nCD6z+FUNO7aPt/OhhW/
 USW6PD9nBxXzj8WXS6y9MDo=
X-Google-Smtp-Source: APXvYqxEb3gf/zapkmtLoKYblJigB91qUjsp2RU5JH/yqoOiwUAAxgDbeqUsCz3DJ8dF2wiuULPgbw==
X-Received: by 2002:adf:c145:: with SMTP id w5mr5972862wre.205.1578702965119; 
 Fri, 10 Jan 2020 16:36:05 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id r5sm4108321wrt.43.2020.01.10.16.36.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 16:36:04 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 5/8] ARM: tegra: Core changes for v5.6-rc1
Date: Sat, 11 Jan 2020 01:35:50 +0100
Message-Id: <20200111003553.2411874-5-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200111003553.2411874-1-thierry.reding@gmail.com>
References: <20200111003553.2411874-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_163606_457965_C653BEAE 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.6-arm-core

for you to fetch changes up to 9c65b8463f41f3a9edef97e3109752159d4c6a4b:

  ARM: tegra: Use clk_m CPU on Tegra124 LP1 resume (2020-01-08 12:58:46 +0100)

Thanks,
Thierry

----------------------------------------------------------------
ARM: tegra: Core changes for v5.6-rc1

Contains a couple of fixes for RAM repair on Tegra124.

----------------------------------------------------------------
Stephen Warren (3):
      ARM: tegra: Enable PLLP bypass during Tegra124 LP1
      ARM: tegra: Modify reshift divider during LP1
      ARM: tegra: Use clk_m CPU on Tegra124 LP1 resume

 arch/arm/mach-tegra/sleep-tegra30.S | 30 ++++++++++++++++++++++++++++--
 1 file changed, 28 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
