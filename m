Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 256311F769D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 12:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yTwxo9niivZrUoPGetCwnWk44OMTkHj3IZgzK2X5Vqk=; b=OahgHI6RjjyUf0
	7PmbiRwFwxn72u0J9jgv2tUVI1tvZQgaL4+VsIvPNs2UbXBY8hdimNMYC9qVF54ewOplQg89iJq5Y
	LtyesmFMP2GOyTGJnscnGelyNsDqA6biHITXgVwwJtrX36O7L5AxjfFnGNfFoF10GkC7phgXbwSFL
	MNRuKn2mY13xgeGNtAEyvg2mwrNg/DWFTT6msGAVPQKcdjUMb/2O94wPl0YitDsf4RI+ikavhFDt7
	pTu+PE9p9r0MCBxrUZO6tGJZ36M/5hqeQHE84fy3QLzhPECPUE5WPYtaiRi5LuNn0Bs4dMvNe6RFB
	LBAhEH2K6PibWrz0tFUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjgko-0002Xj-0s; Fri, 12 Jun 2020 10:17:42 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjgkQ-0002Vf-3a
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 10:17:19 +0000
Received: by mail-pj1-x1042.google.com with SMTP id d6so3671416pjs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 03:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=NuFUeTohvLpQWGhiqBdRsl/f7g8QqSrYLrklZCYzpe4=;
 b=mf9B6yfne8i5p+FK67Vk9AiEK5fD4PvBFIip527ISBpgGePf2EnzbA3MdmU9LFWoBW
 FNeOb36cqMG+AOdSZuKhKOxarUNXkIcY0LNdbWmwN0ooWmSvGMfBHYPAsqBVvsHH/guu
 g/ay8oAFqRLes9MnNInE3NxYZFMzoP+Klm+sUPyCGe1grUoJqLXGO63kOh9VDRM8hC0h
 +gqT/Xs5CpcaQtaegXvVEFWdCWtbjpiseq3xKEazpATYTj7s1vKpUBKymR76MOdxSpRN
 QFpSAn0ZZqh5FQEevGgspmRv4P/uhmsuT7cdpjTOh7eODGQmrmGDSJLp1r01AIvB7tKl
 WsHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=NuFUeTohvLpQWGhiqBdRsl/f7g8QqSrYLrklZCYzpe4=;
 b=Hil1LkzMS+EnLXMxXpFn3q3xy1ZXxJ5WF/wiAFq1ZSkvJ+O+BUqGVMSSkCC+/Ydjzm
 1sldd1OCeyhvoRi7qqHDk80ZfQb90xdghXX6P0/pDYnDAIPDAHxa+HPzGP7BWaIR4t6f
 WIvHMjJuJONd2tI43Wyp0B7kZVTWKIfmV/6GHHuMlJXRtnQ35Er8Q5Hga19OSvKbi/sC
 uTg4+OCjFmadJKfsqhtxuwD3NB+oiF2JA2P75kynSGJsS/EKMtRvd37FwlUt53GmhaIj
 oE8aZTwygVNaTWCyzx+zj5UMsfxZJM77+sAUwsrui9Ae+sPxnjnpmkQ+wqK+Qj/hW/MV
 H9kg==
X-Gm-Message-State: AOAM530jUUQ0dWYK5R2a07P2xuQ+9fcLWaw8S15r9vw0vXFCWAc9gEO+
 BiZFafoCRPrS5N1rEFPTY8g=
X-Google-Smtp-Source: ABdhPJwEHIXkVHC+92pBUECg3eFaNPBwA7ppYh+HoSCnhECs/00e4Cd2PLigErL2X54s3fHED5dqPQ==
X-Received: by 2002:a17:90b:188c:: with SMTP id
 mn12mr12284862pjb.8.1591957037151; 
 Fri, 12 Jun 2020 03:17:17 -0700 (PDT)
Received: from localhost ([49.205.222.116])
 by smtp.gmail.com with ESMTPSA id w190sm5685388pfw.35.2020.06.12.03.17.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 12 Jun 2020 03:17:16 -0700 (PDT)
Date: Fri, 12 Jun 2020 15:47:14 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>
Subject: [RFC 0/3] ARM: copy_{from,to}_user() for vmsplit 4g/4g
Message-ID: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_031718_166263_D402D3A5 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nicolas Pitre <nico@fluxnic.net>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

copy_{from,to}_user() uaccess helpers are implemented by user page
pinning, followed by temporary kernel mapping & then memcpy(). This
helps to achieve user page copy when current virtual address mapping
of the CPU excludes user pages.

Other uaccess routines are also planned to be modified to make use of
pinning plus kmap_atomic() based on the feedback here.

This is done as one of the initial steps to achieve 4G virtual
address mapping for user as well as Kernel on ARMv7 w/ LPAE.

Motive behind this is to enable Kernel access till 4GiB (almost) as
lowmem, thus helping in removing highmem support for platforms having
upto 4GiB RAM. In the case of platforms having >4GiB, highmem is still
required for the Kernel to be able to access whole RAM.

Performance wise, results are not encouraging, 'dd' on tmpfs results,

ARM Cortex-A8, BeagleBone White (256MiB RAM):
w/o series - ~29.5 MB/s
w/ series - ~20.5 MB/s
w/ series & highmem disabled - ~21.2 MB/s

On Cortex-A15(2GiB RAM) in QEMU:
w/o series - ~4 MB/s
w/ series - ~2.6 MB/s

Roughly a one-third drop in performance. Disabling highmem improves
performance only slightly.

'hackbench' also showed a similar pattern.

Ways to improve the performance has to be explored, if any one has
thoughts on it, please share.

uaccess routines using page pinning & temporary kernel mapping is not
something new, it has been done by Ingo long long ago [1] as part of
4G/4G user/kernel mapping implementation on x86, though not merged in
mainline.

Arnd has outlined basic design for vmsplit 4g/4g, uaccess routines
using user page pinning plus kmap_atomic() is one part of that.

[1] https://lore.kernel.org/lkml/Pine.LNX.4.44.0307082332450.17252-100000@localhost.localdomain/

Last 2 patches are only meant for testing first patch.

Regards
afzal

afzal mohammed (3):
  lib: copy_{from,to}_user using gup & kmap_atomic()
  ARM: uaccess: let UACCESS_GUP_KMAP_MEMCPY enabling
  ARM: provide CONFIG_VMSPLIT_4G_DEV for development

 arch/arm/Kconfig               |   9 ++
 arch/arm/include/asm/uaccess.h |  20 ++++
 arch/arm/kernel/armksyms.c     |   2 +
 arch/arm/lib/Makefile          |   7 +-
 lib/Kconfig                    |   4 +
 lib/Makefile                   |   3 +
 lib/uaccess_gup_kmap_memcpy.c  | 162 +++++++++++++++++++++++++++++++++
 7 files changed, 205 insertions(+), 2 deletions(-)
 create mode 100644 lib/uaccess_gup_kmap_memcpy.c

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
