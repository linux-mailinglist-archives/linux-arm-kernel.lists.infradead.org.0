Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 736891F1078
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 01:33:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QlvmDPPbNzte+H3VrK+qhEIvhreXy+rtsQZjlLDQJnY=; b=BWJzpTjtUTmFxb
	WDjwBCpgTWzzus+L5q11FBNDjqoJn48/QzKybgB+PO+k6BiiH13SPv5nbi/MSe9dXoxl+helUAU+T
	etj2mfAQ2n7APo7WpmgtMidX91akd1B3LcZXtUBDP+pIyoxqAF3+1Q+RMOaLuxPceFsoFKknUfKgI
	ws+A/8rROrw95AnUuDvYclDlGTbedSFYqqakp03PpxsdLgrruB3mj2yrvGIwe4cF9LbGNqQErg/5J
	VBFr5ybC+5I3PKE8V7dVsDu5bLPg5owxPhlxj3GsSFN5hP6J19nG2+7X6+mGpWBxuRNlmUyVBGtFV
	DfxtL/Ks8eLNtgU7VyJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji4nN-0003at-To; Sun, 07 Jun 2020 23:33:41 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji4nG-0003a6-7J
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jun 2020 23:33:35 +0000
Received: from prsriva-linux.hsd1.wa.comcast.net
 (c-24-19-135-168.hsd1.wa.comcast.net [24.19.135.168])
 by linux.microsoft.com (Postfix) with ESMTPSA id C1D9520B717B;
 Sun,  7 Jun 2020 16:33:31 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com C1D9520B717B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1591572812;
 bh=DB6Cl6RHr8cekVcsDZkbuYBtSszswuXLUSqvQUhO2ps=;
 h=From:To:Cc:Subject:Date:From;
 b=jf58nVlwSpSms4FyBpvdpS5L/b68k74OADgHL6/JRsKRN65DEQGu08m5Y9vgZjXz7
 UMgDudDCE1Jx4rfifAEkUog31G9m/W1iUpE4SjPKR7or5h81nOg9rOO66POwl4ho6b
 Q+6FdMlHCNX3RzSGQ7tuKYlzVzkT1RmxfjrADR0Y=
From: Prakhar Srivastava <prsriva@linux.microsoft.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
 linux-integrity@vger.kernel.org, linux-security-module@vger.kernel.org
Subject: [v1 PATCH 0/2] Adding support to carry IMA measurement logs
Date: Sun,  7 Jun 2020 16:33:21 -0700
Message-Id: <20200607233323.22375-1-prsriva@linux.microsoft.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_163334_334386_4A0B2B44 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-17.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kstewart@linuxfoundation.org, mark.rutland@arm.com, catalin.marinas@arm.com,
 bhsharma@redhat.com, tao.li@vivo.com, zohar@linux.ibm.com, paulus@samba.org,
 vincenzo.frascino@arm.com, frowand.list@gmail.com, nramas@linux.microsoft.com,
 mpe@ellerman.id.au, masahiroy@kernel.org, jmorris@namei.org,
 takahiro.akashi@linaro.org, benh@kernel.crashing.org, serge@hallyn.com,
 pasha.tatashin@soleen.com, will@kernel.org, prsriva@linux.microsoft.com,
 robh+dt@kernel.org, hsinyi@chromium.org, tusharsu@linux.microsoft.com,
 tglx@linutronix.de, allison@lohutok.net, christophe.leroy@c-s.fr,
 mbrugger@suse.com, balajib@linux.microsoft.com, dmitry.kasatkin@gmail.com,
 james.morse@arm.com, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IMA during kexec(kexec file load) verifies the kernel signature and measures
the signature of the kernel. The signature in the logs can be used to verfiy the 
authenticity of the kernel. The logs don not get carried over kexec and thus
remote attesation cannot verify the signature of the running kernel.

Add a new chosen node entry linux,ima-kexec-buffer to hold the address and
the size of the memory reserved to carry the IMA measurement log.

Tested on:
  arm64 with Uboot

Changelog:

v1:
  Refactoring carrying over IMA measuremnet logs over Kexec. This patch
    moves the non-architecture specific code out of powerpc and adds to
    security/ima.(Suggested by Thiago)
  Add Documentation regarding the ima-kexec-buffer node in the chosen
    node documentation

v0:
  Add a layer of abstraction to use the memory reserved by device tree
    for ima buffer pass.
  Add support for ima buffer pass using reserved memory for arm64 kexec.
    Update the arch sepcific code path in kexec file load to store the
    ima buffer in the reserved memory. The same reserved memory is read
    on kexec or cold boot.

 Documentation/devicetree/bindings/chosen.txt |  17 +++
 arch/arm64/Kconfig                           |   1 +
 arch/arm64/include/asm/ima.h                 |  24 +++
 arch/arm64/include/asm/kexec.h               |   3 +
 arch/arm64/kernel/machine_kexec_file.c       |  47 +++++-
 arch/powerpc/include/asm/ima.h               |   9 --
 arch/powerpc/kexec/ima.c                     | 117 +-------------
 security/integrity/ima/ima_kexec.c           | 151 +++++++++++++++++++
 8 files changed, 236 insertions(+), 133 deletions(-)
 create mode 100644 arch/arm64/include/asm/ima.h

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
