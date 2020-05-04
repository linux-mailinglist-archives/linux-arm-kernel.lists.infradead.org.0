Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC911C4864
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 22:38:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RH0cX8pmVvDswzv0Q0p0ce4wV36XqupBKo9c83/WOc8=; b=rGX9m1KdDcWxZk
	A1qZ5ZkQJZPNKPzKjR5+wpoFM2qQ1xEXnoemW7diFPUNJSo3oNTgYU8I2xVgKx/hL3+f7hoG75Mbh
	B2imU7Y6NhTnxHSAjPT70vvOJLReUmWU79ZBsHoKvDqLrI/la9yaPXGkJFcleduME9IVb2kVHWtIX
	xakLiN9uhDWa9Synli4Pyz1aFvwj74sy7DOVBJ8AusEQPqZx7bpmlosa0MFOHtXJnB9EHeuyC0j4q
	vjdvRJ6C1UV/avR+lwpNDfPcNbO3h1QH5IIX9mSJqJbzZQSO2iKWF8R0TdKmLAaa2MQRPqTcDrehi
	w/zYYPqFjKtdWDVUKXdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVhrS-0007Mr-U0; Mon, 04 May 2020 20:38:46 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVhrL-0007Lq-CE
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 20:38:40 +0000
Received: from prsriva-linux.hsd1.wa.comcast.net
 (c-24-19-135-168.hsd1.wa.comcast.net [24.19.135.168])
 by linux.microsoft.com (Postfix) with ESMTPSA id 6895820B717B;
 Mon,  4 May 2020 13:38:37 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 6895820B717B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1588624718;
 bh=6P2paN9NO0FWx6B7UbSmB/LcZk3eOjU9tLNhjVjgu2E=;
 h=From:To:Cc:Subject:Date:From;
 b=K3BUKLXFPzHk5/vc18E2X2yGYsVoVrEVR3Bjxnk0kkNoK1RyGJF07VpR4jNjPdswq
 PTdElXCTeIvlEoVsKZH0Tk/UjQ3124JQLUs2fMp9IFj0dQ3idwPz+efdmEETdAO+dm
 kf7mZQNd1GyWhA36D3uKZsPysbTHSk1ty11ir9Jk=
From: Prakhar Srivastava <prsriva@linux.microsoft.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
 linux-integrity@vger.kernel.org, linux-security-module@vger.kernel.org
Subject: [RFC][PATCH 0/2] Add support for using reserved memory for ima buffer
 pass
Date: Mon,  4 May 2020 13:38:27 -0700
Message-Id: <20200504203829.6330-1-prsriva@linux.microsoft.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_133839_468013_58567E50 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-17.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Introduce an ABI to carry forward the ima logs over kexec.
Memory reserved via device tree reservation can be used to store and read
via the of_* functions.

Reserved memory stores the size(sizeof(size_t)) of the buffer in the starting
address, followed by the IMA log contents.

Tested on:
  arm64 with Uboot

Prakhar Srivastava (2):
  Add a layer of abstraction to use the memory reserved by device tree
    for ima buffer pass.
  Add support for ima buffer pass using reserved memory for arm64 kexec.
    Update the arch sepcific code path in kexec file load to store the
    ima buffer in the reserved memory. The same reserved memory is read
    on kexec or cold boot.

 arch/arm64/Kconfig                     |   1 +
 arch/arm64/include/asm/ima.h           |  22 ++++
 arch/arm64/include/asm/kexec.h         |   5 +
 arch/arm64/kernel/Makefile             |   1 +
 arch/arm64/kernel/ima_kexec.c          |  64 ++++++++++
 arch/arm64/kernel/machine_kexec_file.c |   1 +
 arch/powerpc/include/asm/ima.h         |   3 +-
 arch/powerpc/kexec/ima.c               |  14 ++-
 drivers/of/Kconfig                     |   6 +
 drivers/of/Makefile                    |   1 +
 drivers/of/of_ima.c                    | 165 +++++++++++++++++++++++++
 include/linux/of.h                     |  34 +++++
 security/integrity/ima/ima_kexec.c     |  15 ++-
 13 files changed, 325 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm64/include/asm/ima.h
 create mode 100644 arch/arm64/kernel/ima_kexec.c
 create mode 100644 drivers/of/of_ima.c

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
