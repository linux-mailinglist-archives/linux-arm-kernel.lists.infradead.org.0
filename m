Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E49C4EB941
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 22:48:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=To2YVlkbymtFrKjtZJox6U+BYmVnadt4GaqrqK3qHgA=; b=f6w
	DutMxvqAyTbqcxXFfxW9QxWeeKmpc9BH5V+MfgpMhAuK6yWPQaWQJJ88nckFRD0HJUwn5G5N8qdDM
	+pPZLbx9AqlPyE+AJPc7980uo9OOrJlCG4IU/3sPKcpIEs95DFDPjROH2yRPygOdtJBR/ah2LBJPG
	b2Mufa0jwM74X7Z7pCdofkRN4KD+ijKbRgOJn970MF8LMnX6QrSVL9zwwf5mMR7Wzw0q7ZCbnLb7e
	iTxzdSXVmMBriRzSu6SBxCbwwrAXpi9cIPUVah3tHV0dQzLDY0YbqO2hJ2c/c3QREty/+JaO3jEh6
	O+JezxGlHCwSFPeHACpg6399Qj+BS6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQIIz-0002wX-JV; Thu, 31 Oct 2019 21:48:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQIIk-0002ul-HF
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 21:48:20 +0000
Received: by mail-wr1-x441.google.com with SMTP id w18so7893071wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 14:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=sEuZEsN3CO17Mk96Q9i8WbzrGmqYVcLxl0EB6NndMBA=;
 b=NHGlhWOH/lPzkiisqXGbCuqEH3Cld5YZg5wB3dQ5EjwTa2udUJNWsdHlxUGKg23GAT
 5X6weI8hStYzrXSUv3yWPZWKvm+ql7YOJTqq9CQrjDzjlDxaHOO5QDMmkdvFrxKyImVg
 l7cFw15yuXDcDQAQ9Jj19zsXBpy85G6mfCyF7ZKRWloLgf6pd5Er82Y9hBhOgc31d6k3
 kzvjGCSMK83TiVP0PsUdBW5Aqsq6S+KrournTX1g5JHIoUV2U1zYYittS5pyaxgjuaYt
 IRG21NXAysTNvlN3e9MckdKqEP5zoetsDm+TN3CnidRGBibcEZGLlPydXAnzmwxNfVvy
 CwXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=sEuZEsN3CO17Mk96Q9i8WbzrGmqYVcLxl0EB6NndMBA=;
 b=QdFz0djiLibq+EwfC2sg8K9n3Y8ypikU9B2ZWTMMvDmUZwXZwL7BhbZdQ1nbRK0p8i
 WfD4BVU7f+ius6RJxMFC+AaMqJOHPCGQdCh+5BW0lJAIWd4sjjPYIhedm4sXL0s3/+23
 L2I1ko9EKc9HNI3nESiFYRIaXVV8trRn1f5CXDggoQpf2HIdhonXWcsXFslQy4/PItQB
 s9kNNvi+KxkFkp18BWkQAKI0orXBHZ7wEZctwSglPmTGV5t/ilwJIApH/sqk23bg3oQV
 cM1brGG7ubGuVP6wPX2aqSXc7pQ8ougjI4GtzuM5JQSVYVhkFNISAD5jdzjrBEU4XmtG
 HswA==
X-Gm-Message-State: APjAAAXqTMDCUuT4CgrQIPKnNaiGPuCGN3exNWuZQO9FUjZ2TYLFeegV
 f7ixkLjULcz2gZvrlkOmXHF0NEfB
X-Google-Smtp-Source: APXvYqwONELlt6nYOaizT5kkHAo20vYTlb0GLvd1u+tok17wOcwrfhYhLQBU7nsf0a6o7FC9F5iitA==
X-Received: by 2002:adf:8088:: with SMTP id 8mr7492245wrl.230.1572558496697;
 Thu, 31 Oct 2019 14:48:16 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id g184sm5813674wma.8.2019.10.31.14.48.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 14:48:15 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/3] arm64: Brahma-B53 erratum updates
Date: Thu, 31 Oct 2019 14:47:22 -0700
Message-Id: <20191031214725.1491-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_144818_594619_EC9794B9 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Qian Cai <cai@lca.pw>,
 Hanjun Guo <guohanjun@huawei.com>, Doug Berger <opendmb@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

This patch series enable the Brahma-B53 CPU to be matched for the
ARM64_ERRATUM_845719 and ARM64_ERRATUM_843419 and while we are it, also
whitelists it for SSB and spectre v2.

The silicon-errata.rst document is updated accordingly, we unfortunately
do not have internal numbers tracking those errata.

Doug Berger (1):
  arm64: apply ARM64_ERRATUM_845719 workaround for Brahma-B53 core

Florian Fainelli (2):
  arm64: Brahma-B53 is SSB and spectre v2 safe
  arm64: apply ARM64_ERRATUM_843419 workaround for Brahma-B53 core

 Documentation/arm64/silicon-errata.rst |  5 ++++
 arch/arm64/include/asm/cputype.h       |  2 ++
 arch/arm64/kernel/cpu_errata.c         | 38 ++++++++++++++++++++++----
 3 files changed, 40 insertions(+), 5 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
