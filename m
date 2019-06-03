Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A72E33BD5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 01:20:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IiiICcpx34Sa3/U3ZMWWtWV+NDTdf/i3W9hm/NH4z00=; b=LU6
	WNQrmqjbu0Zn7ZvabVZy2yKvbndlGphwBfHNlr6dKEKZtIGrX7bS5V3mM2tgq/SBsNkAmK2akJ72O
	cNuh2FOJZ4bmFYoBEu8ylZZd9E2pmiOyEnA2ajSuNcL7ycuzsrddKSoph2XZlSHjhC+u9LevQA00k
	jHB0aJT71SChodJiW+by3jvewXmVS2NdNsTVOgvnMmxWuJqPBsI2KoNMQbLupdMRF1Pb3KTcgaYVK
	X0C3MP5Qj11ks/8t9ppvIeNrwFs0e7g0wRCgyo525KrYip3lLqbZTFPZnyZIX0eUZezvd1+d0xRhq
	ZziJqKwKmfMCQY1mdRf8KstvUV0YLOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXwFN-0006Zo-Je; Mon, 03 Jun 2019 23:20:09 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXwFC-0006Xi-RV
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 23:20:00 +0000
Received: by mail-pl1-x641.google.com with SMTP id s24so7409364plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 16:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=wUZaTX20lO5SbHm8MIXLE78PHSIeTBs27Rwb+WEEumQ=;
 b=QzjQulAQyEyEou1aENfn0yzV7aUxGvQgHJ7WtEZ3CbkQKC6PgWZCf/1lZCKScrlCXM
 TM7Lt2zPzyPrjJ/xEAmG8aTeu2IwDl9S6vh5RUCt9mZc4sXh6kqz6wpbiGue/zxm58jn
 mAbOOJLJIvyDmXWu6XBh98gcv7GFUVG/NHNRTgQemKIw/qxA5EhhzxTUDJZuCixQaHSO
 HijrRFJkpf3R0dBo+BC0M6wEv6GzsRfnOzwwyDXOcOl5xvm37Mz288SoxXmdmy/Bv7TP
 ZLzhzdd2VNg1p7TqmkSUK3sZQDGH7bB3UO9R6xUREs7tUYKr/X/05X9RGyr7kQQ059F2
 mGrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wUZaTX20lO5SbHm8MIXLE78PHSIeTBs27Rwb+WEEumQ=;
 b=l2HHJ2nH0yJb/98Um5iYvfRMQXNXvTGvwK3jeNnJS9uHFhGvPRH6IJqSAqYyx9B2Id
 1tOZeyhgfoeBZLdIe6qUbVRtKK8UiPDHTPWgLs2XeU4eW/h0Ur/vxMLdTI8pfMeA9q2E
 inT30DfWio5RRCteCO12jgoE6zUfHgwEJ67LRBB9i7r3PVfaLxH4qAHAg67zTvCGCJx9
 hJnN6Lt1ZJFslx226He6sNMCX7pAMgLhqt1ihiqmAmPVPIbntMMmS6RWVFWYlOLnuc+F
 /0T0iVgFot7++EQOt+M8NnZ4fECY2bO/A0OFXPn3v1sdnojp1A1rTDD2NXdBL2S3C5X8
 bohw==
X-Gm-Message-State: APjAAAUKxqQlH/oq1ZR5mdrVRk790F7fh02RPfnRmQIdr3nWDu7l1NlY
 6t+1yxXquUkl6msFOPSqXCh5NZwl
X-Google-Smtp-Source: APXvYqxF6SmFOQ6tt0UoToS74s/iqAalOxlfLDzhjZ8BPPoW/A45I6J1WKUxChGNQ8jSEbgJd0bXiw==
X-Received: by 2002:a17:902:7e0f:: with SMTP id
 b15mr24543317plm.237.1559603997494; 
 Mon, 03 Jun 2019 16:19:57 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a64sm12666564pgc.53.2019.06.03.16.19.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 16:19:56 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/2] ARM/ARM64: Move cpu_logical_map[] to smp.h
Date: Mon,  3 Jun 2019 16:18:28 -0700
Message-Id: <20190603231830.24129-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_161958_891438_33CCFDD6 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>, rmk+kernel@armlinux.org.uk
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

These two patches make ARM and ARM64 consistent with other
architectures: sh, sparc, xtensa, mips, etc. to define cpu_logical_map
under asm/smp.h, which is included by linux/smp.h. This allows other
pieces of code like irqchip drivers to get access to cpu_logical_map[]
using linux/smp.h.

Changes in v2:

- just move __cpu_logical_map[]/cpu_logical_map[] to smp.h

Florian Fainelli (2):
  arm64: smp: Moved cpu_logical_map[] to smp.h
  ARM: smp: Moved cpu_logical_map[] to smp.h

 arch/arm/include/asm/smp.h        | 6 ++++++
 arch/arm/include/asm/smp_plat.h   | 5 -----
 arch/arm64/include/asm/smp.h      | 6 ++++++
 arch/arm64/include/asm/smp_plat.h | 5 -----
 4 files changed, 12 insertions(+), 10 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
