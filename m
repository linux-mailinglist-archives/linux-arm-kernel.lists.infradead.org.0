Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4B4CEC5C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 21:00:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IrlNlUQ3u5FjdrQxPhfw0KtFmo4iO+zlhG84jMpOmEc=; b=g4I
	Imn2akJU5WQji1cX2nhT1cXEcVr4SNMPD311LyHtMkEHHe4/muHBOzOa+2LVnMQYsTSf9gDFiB804
	NMMJepSloaShRy0cPPjv2+4ZwXScANWTTVPuirqJep9mSGBLwD7VidNInZ9J50mMVw3rnzTTA0khC
	TT+46rTw/N/1act3vOAFFsGKEDHM9wNcsLVfZxFIdIVeQchiuI6MTsokxeeBusu0NYihwE9lYY8sa
	A3wFtkVFRYSZ2HaYm1qJaSe8jEb0PSrmL1yB6fZ4lZkjRmOFHpGhH4I+n3bRiPdeOopylcUapvNOq
	UO5L0u6fhYX5p6uoHP9b4ScZ8XknV2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHYEx-0004QJ-US; Mon, 07 Oct 2019 19:00:15 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHYEf-0004NQ-7j; Mon, 07 Oct 2019 18:59:58 +0000
Received: from prsriva-Precision-Tower-5810.corp.microsoft.com (unknown
 [167.220.2.18])
 by linux.microsoft.com (Postfix) with ESMTPSA id 69A6F20B71C6;
 Mon,  7 Oct 2019 11:59:51 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 69A6F20B71C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1570474791;
 bh=i1YNYZkRfCpA/p84XvJ1BSmi0vYuNO3vasWc16x7h5w=;
 h=From:To:Cc:Subject:Date:From;
 b=bUMg9NWEr+pp4M2o41A1e1I9U30OnGMtJhnx5DLEgLo6Kvcv/b5OkxyhB8aSgkInp
 eo2PjiRS6TrrYXd3ZUOJxHABmgq4nnQkVVg08ZYCrpoXmkqPAB1v5xw2pQTroT4DmQ
 EHeXmaECc+Lvvmabg74le1t8VtAaamTGop/Rkdpw=
From: Prakhar Srivastava <prsriva@linux.microsoft.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-integrity@vger.kernel.org, kexec@lists.infradead.org
Subject: [PATCH v2 0/2] Add support to carry ima measurement log in
 kexec_file_load
Date: Mon,  7 Oct 2019 11:59:41 -0700
Message-Id: <20191007185943.1828-1-prsriva@linux.microsoft.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_115957_301743_8CB56EAA 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -15.6 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
 zohar@linux.ibm.com, yamada.masahiro@socionext.com, kristina.martsenko@arm.org,
 duwe@lst.de, bauerman@linux.ibm.com, james.morse@arm.org, tglx@linutronix.de,
 allison@lohutok.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support to carry ima measurement log
to the next kexec'ed session triggered via kexec_file_load.
- Top of Linux 5.3-rc6

Currently during kexec the kernel file signatures are/can be validated
prior to actual load, the information(PE/ima signature) is not carried
to the next session. This lead to loss of information.

Carrying forward the ima measurement log to the next kexec'ed session 
allows a verifying party to get the entire runtime event log since the
last full reboot, since that is when PCRs were last reset.

Tested for arm64 qemu and real hardware.

I have not been unable to test the patch for powerpc 64bit. Any testing
is greatly appretiated.

TODO: Add support for 32 bit in the of_ima.c

Changelog:

v2:
  - move common code to drivers/of/of_ima.c.
  - point arm64 to use of_ima implementation.
  - point powerpc to use of_ima implementation

v1:
  - add new fdt porperties to mark start and end for ima measurement
    log.
  - use fdt_* functions to add/remove fdt properties and memory
    allocations.
  - remove additional check for endian-ness as they are checked
    in fdt_* functions.

v0:
  - Add support to carry ima measurement log in arm64, 
   uses same code as powerpc.
Prakhar Srivastava (2):
  Add support for arm64 to carry ima measurement log in kexec_file_load
  update powerpc implementation to call into of_ima*

 arch/Kconfig                           |   6 +-
 arch/arm64/include/asm/ima.h           |  24 +++
 arch/arm64/include/asm/kexec.h         |   5 +
 arch/arm64/kernel/Makefile             |   3 +-
 arch/arm64/kernel/ima_kexec.c          |  78 ++++++++++
 arch/arm64/kernel/machine_kexec_file.c |   6 +
 arch/powerpc/include/asm/ima.h         |   6 -
 arch/powerpc/kernel/Makefile           |   8 +-
 arch/powerpc/kernel/ima_kexec.c        | 170 ++-------------------
 drivers/of/Kconfig                     |   6 +
 drivers/of/Makefile                    |   1 +
 drivers/of/of_ima.c                    | 204 +++++++++++++++++++++++++
 include/linux/of.h                     |  31 ++++
 13 files changed, 378 insertions(+), 170 deletions(-)
 create mode 100644 arch/arm64/include/asm/ima.h
 create mode 100644 arch/arm64/kernel/ima_kexec.c
 create mode 100644 drivers/of/of_ima.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
