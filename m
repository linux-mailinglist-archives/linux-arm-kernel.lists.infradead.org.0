Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1073562ACA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 23:16:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ERll/MqAaZH21q7S3BiDz9cjtMtKYbAvrLMaTiiU0Qg=; b=Vx9lc21Gp4ekv+
	M0zOKmjlZ5WcKCQ+UZm6IjGqGpo38kh0Zv7IvRPbz27aFMu8SXlF/EbSS/fXYLR1fI+seUqHsRkkv
	raZIk+loRG5dgI6Db0IL7VEFFlEvH/zWryF8tFjRk4MTnBqcTpwp4kQd4UD68zmupBmc7iCV9IW2y
	uN4ubraKUrpuQCtyOLo0xWro4rLiLBSOtybzEmj85PpHFKNOY7om+cSawdTwoUWEvtPJqT1IvxOcc
	CAw4toCX6VhT7aDtF8s9pkRN6N9Jk3mTaDJfAiHF7TY/oAve4wvvBUljoLub+2etQpE/qVQxU7vLp
	GKuc5pLxMJPr7xPnRCVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkazV-0001dn-9k; Mon, 08 Jul 2019 21:16:05 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkayz-0001MS-Dm
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 21:15:34 +0000
Received: by mail-qk1-x744.google.com with SMTP id w190so1934446qkc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 14:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9LBn+IrpD1vlilot1sDuhm5JaXmsdy7FeGQpNbYaEeU=;
 b=FJLVGEkBkaIWGq+BYeDm49b/d/5s8UkKFjcHQ3Pj9CIeR9WqFVBFK83oylM3vbGySY
 a/yz6JrxbrlxhkRBTTrMs0C2J/W6nlJ1vQjELf2Bdegk1pBajKXLyTOo73BGyhhwmgCp
 hpSOTkjSZ/m5LO73UP1Taf9WGt0Yjjcdf1SdEKLTO8Y9GwUwaOY9BZsOvoYDKw0JDWcj
 fPVVkLf6OQU8ckKMzR+Is03XGjLfH5O8FgfInnivtbaF6/BRHFciiuGjsy5dJM/sQZBZ
 zekQZpRlJY9hAgDxbXYaBw7Kc+lfhEPpvhBlKGrW2AWK3kgug85CfDgVzblJ1cXVS5Ot
 BVyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9LBn+IrpD1vlilot1sDuhm5JaXmsdy7FeGQpNbYaEeU=;
 b=NPU95oWr19EIwMhuvx9AWWWP+Ma2JjLt58cWO3a97nurB7co9BcQAFvUht6ibxeBSZ
 mB2Bhw/O//y2TDldXKZebv3oIfDO24VPEGOyveLRwlUby0m5e22TQb5GQOdnMiyJfltG
 5oPyBmKlRW9TT63UMnSxGRXFOB5VuMtxHBgopv4ugt/kOFv5usNTUywYTnh9RXFP/Lm5
 OpLLnctUR79Q0uxaueHwfZdirEzKtmZvf/vHr+RQdPwqBAGov+lpAjyHvpZuSH+x7TZf
 QfnmiqkiymDuRgAdlvJTFKaEs+lIKPNKA1oh+ptsB51tku4GdVrCSrqgrUO+MKjdKyhg
 3ryw==
X-Gm-Message-State: APjAAAVxqabkByLM6Hu04eIXx9MtlHcsfi1H6W7Po2GUL8vOgIN+6SwZ
 HP930R8S8koW2zo/h843UdIWIw==
X-Google-Smtp-Source: APXvYqyjmTZLx8/N9MAAgH+1T1Fmph8LQJ2u9QiscaRxh3JxBlx4HZGFN/j+WzZn5c0D7KSK12erkQ==
X-Received: by 2002:a37:bac2:: with SMTP id
 k185mr15419295qkf.211.1562620531230; 
 Mon, 08 Jul 2019 14:15:31 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id b67sm8335620qkd.82.2019.07.08.14.15.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 14:15:30 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [v1 0/5] allow to reserve memory for normal kexec kernel
Date: Mon,  8 Jul 2019 17:15:23 -0400
Message-Id: <20190708211528.12392-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_141533_641770_EE24A67A 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, it is only allowed to reserve memory for crash kernel, because
it is a requirement in order to be able to boot into crash kernel without
touching memory of crashed kernel is to have memory reserved.

The second benefit for having memory reserved for kexec kernel is
that it does not require a relocation after segments are loaded into
memory.

If kexec functionality is used for a fast system update, with a minimal
downtime, the relocation of kernel + initramfs might take a significant
portion of reboot.

In fact, on the machine that we are using, that has ARM64 processor
it takes 0.35s to relocate during kexec, thus taking 52% of kernel reboot
time:

kernel shutdown	0.03s
relocation	0.35s
kernel startup	0.29s

Image: 13M and initramfs is 24M. If initramfs increases, the relocation
time increases proportionally.

While, it is possible to add 'kexeckernel=' parameters support to other
architectures by modifying reserve_crashkernel(), in this series this is
done for arm64 only.

Pavel Tatashin (5):
  kexec: quiet down kexec reboot
  kexec: add resource for normal kexec region
  kexec: export common crashkernel/kexeckernel parser
  kexec: use reserved memory for normal kexec reboot
  arm64, kexec: reserve kexeckernel region

 .../admin-guide/kernel-parameters.txt         |  7 ++
 arch/arm64/kernel/setup.c                     |  5 ++
 arch/arm64/mm/init.c                          | 83 ++++++++++++-------
 include/linux/crash_core.h                    |  6 ++
 include/linux/ioport.h                        |  1 +
 include/linux/kexec.h                         |  6 +-
 kernel/crash_core.c                           | 27 +++---
 kernel/kexec_core.c                           | 50 +++++++----
 8 files changed, 127 insertions(+), 58 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
