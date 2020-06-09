Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8821F4873
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 22:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LjU+UVIDPM2HfGIs56VZBdRU2QKInkxj02tTzVGfM30=; b=pPx2QNpZVj8pxZ
	PGpUy5oJlXBOOTwLOSPcR5V5VbofLbKrGYiXoJgHyVLpU9G5bi/wP1UryIs6kgYRLiEpmXzvtvgxt
	0Di2yFiDb4hO7sOY1kLK2KAv7Sz5D8e8aT0FIO648rvYpXcNuBuARisPDLM17Qgj9hcIA45nip2oJ
	5Uj1S17shWwEXEP8zF5LCMgfavYY0ZFf3t5qqWhL2yGj1uFdknZB4eZqZxCPeBCI6kA1jTyK9Uup8
	JuHIGcMm4HwIsOFS55hzLpl+GsibeD1Ofbh49zvxwtJpbOXf27QSP4KaeXtdIYieFKAcAbSyPtI7f
	sDcvktO5bT8MmCkQj6Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jilKe-0008Ro-Ms; Tue, 09 Jun 2020 20:58:52 +0000
Received: from vmicros1.altlinux.org ([194.107.17.57])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jilKU-0008N8-BA
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 20:58:46 +0000
Received: from imap.altlinux.org (imap.altlinux.org [194.107.17.38])
 by vmicros1.altlinux.org (Postfix) with ESMTP id 67E6E72CCED;
 Tue,  9 Jun 2020 23:58:37 +0300 (MSK)
Received: from altlinux.org (sole.flsd.net [185.75.180.6])
 by imap.altlinux.org (Postfix) with ESMTPSA id 3E0A24A4A16;
 Tue,  9 Jun 2020 23:58:37 +0300 (MSK)
Date: Tue, 9 Jun 2020 23:58:37 +0300
From: Vitaly Chikunov <vt@altlinux.org>
To: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Subject: Re: [PATCH v3 0/8] crpyto: introduce OSCCA certificate and SM2
 asymmetric algorithm
Message-ID: <20200609205837.osganry2tyzwvanz@altlinux.org>
Mail-Followup-To: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>,
 herbert@gondor.apana.org.au, davem@davemloft.net,
 dhowells@redhat.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, jmorris@namei.org, serge@hallyn.com,
 nramas@linux.microsoft.com, tusharsu@linux.microsoft.com,
 zohar@linux.ibm.com, gilad@benyossef.com, pvanleeuwen@rambus.com,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 keyrings@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 linux-security-module@vger.kernel.org, zhang.jia@linux.alibaba.com
References: <20200609134855.21431-1-tianjia.zhang@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609134855.21431-1-tianjia.zhang@linux.alibaba.com>
User-Agent: NeoMutt/20171215-106-ac61c7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_135842_758196_AC1B4121 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alexandre.torgue@st.com, zhang.jia@linux.alibaba.com, gilad@benyossef.com,
 pvanleeuwen@rambus.com, linux-stm32@st-md-mailman.stormreply.com,
 jmorris@namei.org, zohar@linux.ibm.com, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, nramas@linux.microsoft.com,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 linux-crypto@vger.kernel.org, mcoquelin.stm32@gmail.com,
 tusharsu@linux.microsoft.com, serge@hallyn.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, herbert@gondor.apana.org.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tianjia,

On Tue, Jun 09, 2020 at 09:48:47PM +0800, Tianjia Zhang wrote:
> Hello all,
> 
> This new module implement the OSCCA certificate and SM2 public key
> algorithm. It was published by State Encryption Management Bureau, China.
> List of specifications for OSCCA certificate and SM2 elliptic curve
> public key cryptography:
> 
> * GM/T 0003.1-2012
> * GM/T 0003.2-2012
> * GM/T 0003.3-2012
> * GM/T 0003.4-2012
> * GM/T 0003.5-2012
> * GM/T 0015-2012
> * GM/T 0009-2012 
> 
> IETF: https://tools.ietf.org/html/draft-shen-sm2-ecdsa-02
> oscca: http://www.oscca.gov.cn/sca/xxgk/2010-12/17/content_1002386.shtml
> scctc: http://www.gmbz.org.cn/main/bzlb.html
> 
> These patchs add the OID object identifier defined by OSCCA. The
> x509 certificate supports sm2-with-sm3 type certificate parsing
> and verification.
> 
> The sm2 algorithm is based on libgcrypt's mpi implementation, and has
> made some additions to the kernel's original mpi library, and added the
> implementation of ec to better support elliptic curve-like algorithms.
> 
> sm2 has good support in both openssl and gnupg projects, and sm3 and sm4
> of the OSCCA algorithm family have also been implemented in the kernel.
> 
> Among them, sm3 and sm4 have been well implemented in the kernel.
> This group of patches has newly introduced sm2. In order to implement
> sm2 more perfectly, I expanded the mpi library and introduced the
> ec implementation of the mpi library as the basic algorithm. Compared
> to the kernel's crypto/ecc.c, the implementation of mpi/ec.c is more
> complete and elegant, sm2 is implemented based on these algorithms.

Does it use constant-time algorithms?

Thanks,

> 
> ---
> v3 changes:
>   1. integrity asymmetric digsig support sm2-with-sm3 algorithm.
>   2. remove unused sm2_set_priv_key().
>   3. rebase on mainline.
> 
> v2 changes:
>   1. simplify the sm2 algorithm and only retain the verify function.
>   2. extract the sm2 certificate code into a separate file.
> 
> Tianjia Zhang (8):
>   crypto: sm3 - export crypto_sm3_final function
>   lib/mpi: Extend the MPI library
>   lib/mpi: Introduce ec implementation to MPI library
>   crypto: sm2 - introduce OSCCA SM2 asymmetric cipher algorithm
>   crypto: testmgr - support test with different ciphertext per
>     encryption
>   X.509: support OSCCA certificate parse
>   X.509: support OSCCA sm2-with-sm3 certificate verification
>   integrity: Asymmetric digsig supports SM2-with-SM3 algorithm
> 
>  crypto/Kconfig                            |   17 +
>  crypto/Makefile                           |    8 +
>  crypto/asymmetric_keys/Makefile           |    1 +
>  crypto/asymmetric_keys/public_key.c       |    6 +
>  crypto/asymmetric_keys/public_key_sm2.c   |   59 +
>  crypto/asymmetric_keys/x509_cert_parser.c |   14 +-
>  crypto/asymmetric_keys/x509_public_key.c  |    2 +
>  crypto/sm2.c                              |  473 +++++++
>  crypto/sm2signature.asn1                  |    4 +
>  crypto/sm3_generic.c                      |    7 +-
>  crypto/testmgr.c                          |    7 +-
>  include/crypto/public_key.h               |   14 +
>  include/crypto/sm2.h                      |   25 +
>  include/crypto/sm3.h                      |    2 +
>  include/linux/mpi.h                       |  193 +++
>  include/linux/oid_registry.h              |    6 +
>  lib/mpi/Makefile                          |    6 +
>  lib/mpi/ec.c                              | 1538 +++++++++++++++++++++
>  lib/mpi/mpi-add.c                         |  207 +++
>  lib/mpi/mpi-bit.c                         |  251 ++++
>  lib/mpi/mpi-cmp.c                         |   46 +-
>  lib/mpi/mpi-div.c                         |  259 ++++
>  lib/mpi/mpi-internal.h                    |   53 +
>  lib/mpi/mpi-inv.c                         |  143 ++
>  lib/mpi/mpi-mod.c                         |  155 +++
>  lib/mpi/mpi-mul.c                         |  166 +++
>  lib/mpi/mpicoder.c                        |  336 +++++
>  lib/mpi/mpih-div.c                        |  294 ++++
>  lib/mpi/mpih-mul.c                        |   25 +
>  lib/mpi/mpiutil.c                         |  204 +++
>  security/integrity/digsig_asymmetric.c    |   14 +-
>  31 files changed, 4517 insertions(+), 18 deletions(-)
>  create mode 100644 crypto/asymmetric_keys/public_key_sm2.c
>  create mode 100644 crypto/sm2.c
>  create mode 100644 crypto/sm2signature.asn1
>  create mode 100644 include/crypto/sm2.h
>  create mode 100644 lib/mpi/ec.c
>  create mode 100644 lib/mpi/mpi-add.c
>  create mode 100644 lib/mpi/mpi-div.c
>  create mode 100644 lib/mpi/mpi-inv.c
>  create mode 100644 lib/mpi/mpi-mod.c
>  create mode 100644 lib/mpi/mpi-mul.c
> 
> -- 
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
