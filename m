Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78146D02C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 23:22:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hAdlvpBezHFwmSMc7W7ZMoGr522GYYgzcJVRICpcBuY=; b=hyzx3jJhcrV25Bz6kLTjLLlOK
	nSLiWb89b4PJl6r1YzStl2Ac158/IDjkUQxMs5E6Ppk9bbO+Wty49fNGwB/V0sa4QcqRTwfRBU4pF
	t480dF88bcGW5JTfqBL8/4LTGz1VZ6+mWYP251fm1/uC/jutPmQHgb/SO2+2hpSO092iPCbJXjzC9
	syZg9NMIErpGn/P0dV1IruNtW/qdFj1XtbF8Ut198tEnxM0bQhyBNneHVK9B6Sbum7U3uUY9fdLUO
	HueAoc0famKNpQPdxMFSND8+W/h2NiTGBfgfkVecsDo4PMb7qamAgOq8sRAeAIOnI1Oh0n+ivrcIR
	sr0DS3D1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHwwG-0001HL-2y; Tue, 08 Oct 2019 21:22:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHww5-0001GO-1e; Tue, 08 Oct 2019 21:22:26 +0000
Received: from localhost (unknown [131.107.159.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6A71421721;
 Tue,  8 Oct 2019 21:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570569744;
 bh=b2R98nFWJA8KQ9V8pVgOiwJ2juY6CvTkExzj2ehzTIQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vpmmdg5MTkxwa3zXfobJHRUbwnWMiu+EA3sK18sc4ke2+W62vZaJFbZ57kmPBs4XC
 /CibLn3+WkAwGOu528NZN47XvQAOMcgaSH2WvDSLCql7NmQOjuGky5RZxkxFuz8sqE
 wndV0BcOdcpbxhftcdDQNhN6cSrv4059R9xjP+AA=
Date: Tue, 8 Oct 2019 17:22:24 -0400
From: Sasha Levin <sashal@kernel.org>
To: Prakhar Srivastava <prsriva@linux.microsoft.com>
Subject: Re: [PATCH v2 1/2] Add support for arm64 to carry ima measurement
 log in kexec_file_load
Message-ID: <20191008212224.GC1396@sasha-vm>
References: <20191007185943.1828-1-prsriva@linux.microsoft.com>
 <20191007185943.1828-2-prsriva@linux.microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007185943.1828-2-prsriva@linux.microsoft.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_142225_132106_BCFF0AC1 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, jean-philippe@linaro.org, arnd@arndb.de,
 takahiro.akashi@linaro.org, sboyd@kernel.org, catalin.marinas@arm.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, zohar@linux.ibm.com,
 bauerman@linux.ibm.com, yamada.masahiro@socionext.com,
 kristina.martsenko@arm.org, duwe@lst.de, allison@lohutok.net,
 james.morse@arm.org, linux-integrity@vger.kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 07, 2019 at 11:59:42AM -0700, Prakhar Srivastava wrote:
>During kexec_file_load, carrying forward the ima measurement log allows
>a verifying party to get the entire runtime event log since the last
>full reboot since that is when PCRs were last reset.
>
>Signed-off-by: Prakhar Srivastava <prsriva@linux.microsoft.com>
>---
> arch/Kconfig                           |   6 +-
> arch/arm64/include/asm/ima.h           |  24 +++
> arch/arm64/include/asm/kexec.h         |   5 +
> arch/arm64/kernel/Makefile             |   3 +-
> arch/arm64/kernel/ima_kexec.c          |  78 ++++++++++
> arch/arm64/kernel/machine_kexec_file.c |   6 +
> drivers/of/Kconfig                     |   6 +
> drivers/of/Makefile                    |   1 +
> drivers/of/of_ima.c                    | 204 +++++++++++++++++++++++++
> include/linux/of.h                     |  31 ++++
> 10 files changed, 362 insertions(+), 2 deletions(-)
> create mode 100644 arch/arm64/include/asm/ima.h
> create mode 100644 arch/arm64/kernel/ima_kexec.c
> create mode 100644 drivers/of/of_ima.c
>
>diff --git a/arch/Kconfig b/arch/Kconfig
>index a7b57dd42c26..d53e1596c5b1 100644
>--- a/arch/Kconfig
>+++ b/arch/Kconfig
>@@ -19,7 +19,11 @@ config KEXEC_CORE
> 	bool
>
> config HAVE_IMA_KEXEC
>-	bool
>+	bool "Carry over IMA measurement log during kexec_file_load() syscall"
>+	depends on KEXEC_FILE
>+	help
>+	  Select this option to carry over IMA measurement log during
>+	  kexec_file_load.

This change looks very wrong: HAVE_* config symbols are used to indicate
the availability of certain arch specific capability, rather than act as
a config option. How does this work with CONFIG_IMA_KEXEC ?

Also, please, at the very least verify that basic functionality works on
the architectures we have access to. Trying it on x86:

$ make allmodconfig
scripts/kconfig/conf  --allmodconfig Kconfig
#
# No change to .config
#
$ make
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND  objtool
  CC      security/integrity/ima/ima_fs.o
In file included from security/integrity/ima/ima_fs.c:26:
security/integrity/ima/ima.h:28:10: fatal error: asm/ima.h: No such file or directory
 #include <asm/ima.h>
          ^~~~~~~~~~~
compilation terminated.
make[3]: *** [scripts/Makefile.build:266: security/integrity/ima/ima_fs.o] Error 1
make[2]: *** [scripts/Makefile.build:509: security/integrity/ima] Error 2
make[1]: *** [scripts/Makefile.build:509: security/integrity] Error 2
make: *** [Makefile:1649: security] Error 2

--
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
