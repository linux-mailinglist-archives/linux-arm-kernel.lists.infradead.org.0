Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 990701404CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 09:03:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gEXYBuKSk/wpJjW6FTnBU+mCCvuyVhuGwDWI488ZuQQ=; b=tCh0rrrj454Ajr
	MEnVzQONNSUQBruc53WpVVFeAyFbsVtafFxlpIQY1MnPIcmCUcKXdHY89wJGngiGBN8jQV/PC/zNM
	r9EmeFnaNzsZlpYHJChMHch3o9wthsD9VGrAFPjkxlDZWVEIi3Zr4W8Fjj93ZYhJwBxIwBDtOq1F6
	1uedzPu7UxkJ2P9sJ9d7fT+KsHKsuIBCizBuJRHBaVU85Rx015ti1aP/VVLiE2r17g/I2NoHvnVgP
	+f9BdjIJxqNKE9zqaJfDRtcMIHutu3lW2aPaWd/bMk5bPn9fYg51hQXrHbnp8rz4kIVoAFYnZaKsx
	UjvYqI8UJ5zCyt+zksHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isMbf-0007Vq-3e; Fri, 17 Jan 2020 08:03:51 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isMbR-0007U3-1k
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 08:03:42 +0000
Received: by mail-wm1-x341.google.com with SMTP id p17so6550340wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 00:03:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i++Wnr6lskfdyTEf2bt4TSLzH2Xad/WDR/WNYAW09E4=;
 b=V7pcvnC73rYBS0KY9vSQuPPoEpxAvmkxo2YQx7SaJqwU7P4l65Hxjt9kOwliECjw9P
 YSW/B284rrNNrsol0MpsGM3wcVvOQakDsgmtc9GVvvGrDYey7UrZ2qH6NscydWjrDnci
 N+w0eDBnqHXYHUDgbLNnU7vcr4iOoh8jEH0sW2C5UZ751dm6PAdbcuF6gKQqUGWShSp6
 PLLBJbhrzE2b9vaANhz7QeZU70gLhGkoDA6DM7CgZHpV6A4EcMED9tJUSQb67/A+gmZp
 eAE04AXEcX//EN3QzjxcaulB9DofVRVeo85B4JZCm5LtlBV1DZROEdJRinPTDd/wuMyP
 cD8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=i++Wnr6lskfdyTEf2bt4TSLzH2Xad/WDR/WNYAW09E4=;
 b=X3VDn0NP3mvq7MDvVFgZXjqIJ99YfexNFonD7+kkixo0zrQUYiWRjSFU+DgTGDZY1/
 FA56bPHDNb2fX8ii+ZHroa61bIyhTWr+7zghmeVgA8oJKJVufNSHjyN2Iq90cj/lsesd
 jhTUafWiLTgCcemKA6HMqHMcs1y+9Gi8Mm+Q7CzqewHGxp9zizWif9d8bEo8vAnUYhXM
 HweTfb9YCN75mN+4OCM5s4lOkPanMUJb72dHrEXFMRl9qQuXcxiaVvbd5fN7US037+cg
 GhydBzFtJ5u2Ta45iaGNxS8VrByEkqCFgq5mn9AWMnXyVuxdUtOhXSuNOlUtaN6oWtmN
 yIog==
X-Gm-Message-State: APjAAAU6vszG+hdVpDm7pMZgLQHNvapwgTcbDnRUk2RXQN+aHU50GWwa
 B7VhNjrR56TLGy+uFhiUCYjVvA==
X-Google-Smtp-Source: APXvYqxl96ObJwT48mJl919pgWBhjJ834NW1hgROfepdvC4HdYZrfui8PwfpswFTjDrAhkPvRoSP8Q==
X-Received: by 2002:a05:600c:28d:: with SMTP id
 13mr3383409wmk.52.1579248215057; 
 Fri, 17 Jan 2020 00:03:35 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id w8sm3110202wmd.2.2020.01.17.00.03.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 Jan 2020 00:03:34 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com, Christoph Hellwig <hch@lst.de>
Subject: [PATCH v2 0/2] microblaze: Enable CMA
Date: Fri, 17 Jan 2020 09:03:30 +0100
Message-Id: <cover.1579248206.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_000337_141887_F0437AFC 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Max Filippov <jcmvbkbc@gmail.com>,
 Guo Ren <guoren@kernel.org>, Deepa Dinamani <deepa.kernel@gmail.com>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
 Paul Burton <paulburton@kernel.org>, x86@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Waiman Long <longman@redhat.com>,
 Guo Ren <ren_guo@c-sky.com>, Wesley Terpstra <wesley@sifive.com>,
 James Hogan <jhogan@kernel.org>, Manish Narani <manish.narani@xilinx.com>,
 linux-xtensa@linux-xtensa.org, Albert Ou <aou@eecs.berkeley.edu>,
 Arnd Bergmann <arnd@arndb.de>, Chris Zankel <chris@zankel.net>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Manjukumar Matha <manjukumar.harthikote-matha@xilinx.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

the patchset enable CMA on Microblaze. Based on Christoph request I have
created the first patch which makes dma-continugous.h mandatory for all
archs before Microblaze wiring.

Thanks,
Michal

Changes in v2:
- New patch suggested by Christoph
- Align commit message
- Remove adding dma-contigous.h via Kbuild because it is done by previous
  patch

Michal Simek (2):
  asm-generic: Make dma-contiguous.h a mandatory include/asm header
  microblaze: Wire CMA allocator

 arch/arm64/include/asm/Kbuild         | 1 -
 arch/csky/include/asm/Kbuild          | 1 -
 arch/microblaze/Kconfig               | 1 +
 arch/microblaze/configs/mmu_defconfig | 2 ++
 arch/microblaze/mm/init.c             | 4 ++++
 arch/mips/include/asm/Kbuild          | 1 -
 arch/riscv/include/asm/Kbuild         | 1 -
 arch/s390/include/asm/Kbuild          | 1 -
 arch/x86/include/asm/Kbuild           | 1 -
 arch/xtensa/include/asm/Kbuild        | 1 -
 include/asm-generic/Kbuild            | 1 +
 11 files changed, 8 insertions(+), 7 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
