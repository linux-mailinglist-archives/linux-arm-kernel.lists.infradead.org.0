Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCAF1FEBF9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 09:11:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QcGHlHBcoHAKm2bZfnSa6fOHoR1EmtTXLZV86XMM9Hg=; b=W4ZEHX7v1TafPO
	6R1Rqh+b7VL9wwKw4S5tZV+ysFUXLzlxSdQQHUT7haIwIokRztd/zp/nWwWj6+jM8SrPntF9PTOZW
	NKLR7TAU/qmoe37Gdkr0HiwGzpBi7q8AOkiYWDbCFNMJZ4SWzmn4RIGCEvmYNvjSTkRNx89ir4BRf
	x+Et0+SznW8pv8u9v8258zwYSgosnxnMNXp7LdVKNQmoIcwnwJEuYj9DgVAZSUyyPKqrmx7yRUVx1
	UPZHQBKhZGO9JpySSb15MbLIHIrbm281rxjH6LvaA/YF4hpHsq/ezAt+kcuyCdQQfZC9p9px9vXCH
	qg742RYBaIZjV5UWRCoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jloi3-00025o-I8; Thu, 18 Jun 2020 07:11:39 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlohc-0001uH-Ub
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 07:11:14 +0000
Received: from prsriva-linux.hsd1.wa.comcast.net
 (c-24-19-135-168.hsd1.wa.comcast.net [24.19.135.168])
 by linux.microsoft.com (Postfix) with ESMTPSA id 8918F20B4781;
 Thu, 18 Jun 2020 00:11:08 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 8918F20B4781
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1592464269;
 bh=lDSc0jJUTA/sW6q8KjNuhbmPa1VR7NZJ8pXu5G8PT78=;
 h=From:To:Cc:Subject:Date:From;
 b=aG83qxYXRNhqUmLDNYpbm33MDP2wZSL6QKrD2jzlLiNColOuwrb8FqAsVDhwxeIUj
 F6PyyYZeZsLvmO03Jk+E0IfjD1E+TJlD0wQIkfoT4XYzNzULxLkKcEFezwju6U+yNW
 CQB9TkUkQuhmLmJNPl9ot4OJOFtVYYPbjejsJWrw=
From: Prakhar Srivastava <prsriva@linux.microsoft.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
 linux-integrity@vger.kernel.org, linux-security-module@vger.kernel.org
Subject: [V2 PATCH 0/3] Adding support for carrying IMA measurement logs
Date: Thu, 18 Jun 2020 00:10:42 -0700
Message-Id: <20200618071045.471131-1-prsriva@linux.microsoft.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_001113_041908_2830FE61 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-17.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Integrgity Measurement Architecture(IMA) during kexec(kexec file load)
verifies the kernel signature and measures the signature of the kernel.

The signature in the measuremnt logs is used to verfiy the 
authenticity of the kernel in the subsequent kexec'd session, however in
the current implementation IMA measurement logs are not carried over thus
remote attesation cannot verify the signature of the running kernel.

Adding support to arm64 to carry over the IMA measurement logs over kexec.

Add a new chosen node entry linux,ima-kexec-buffer to hold the address and
the size of the memory reserved to carry the IMA measurement log.
Refactor existing powerpc code to be used by amr64 as well.  

Changelog:

v2:
  Break patches into separate patches.
  - Powerpc related Refactoring
  - Updating the docuemntation for chosen node
  - Updating arm64 to support IMA buffer pass

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

Prakhar Srivastava (3):
  Refactoring powerpc code for carrying over IMA measurement logs, to
    move non architecture specific code to security/ima.
  dt-bindings: chosen: Document ima-kexec-buffer carrying over IMA
    measuremnt logs over kexec.
  Add support for arm64 to carry over IMA measurement logs

 Documentation/devicetree/bindings/chosen.txt |  17 +++
 arch/arm64/Kconfig                           |   1 +
 arch/arm64/include/asm/ima.h                 |  17 +++
 arch/arm64/include/asm/kexec.h               |   3 +
 arch/arm64/kernel/machine_kexec_file.c       |  47 +++++--
 arch/powerpc/include/asm/ima.h               |  10 --
 arch/powerpc/kexec/ima.c                     | 126 ++-----------------
 security/integrity/ima/ima_kexec.c           | 116 +++++++++++++++++
 8 files changed, 201 insertions(+), 136 deletions(-)
 create mode 100644 arch/arm64/include/asm/ima.h

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
