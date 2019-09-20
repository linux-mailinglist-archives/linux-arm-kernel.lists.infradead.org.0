Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A08B89A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 05:08:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p15mtrms9fFfsTcEIvo5BhYV4cs8CMntswyw9DLKfpA=; b=ZxGJk8LCGjL0ypzzMV7AgRwep2
	zYdxW8WAzIcmShmMPKfMS/ORMvyLs3JqBxPPSSk3XwD/OzLhgAVtbrBgSZbIdOUbkO9eTjeo6PGIl
	7CSrXInNJZoe+DJ7TGyl1Tc3O40X5DDTsgOsZDeDFdZLczyQQfH/eZ0pGpmQ6PkvPYc28aBWfGVsd
	oorbvpOpuGwjDuITDTk2Y1bvWM0JMmyUqPjmTnzmUJdb4W8DX1aScP2wtJDxdbuyN+lGPCATE6Ylz
	FKvY7ZB89b8cDr5icPaf0KWAEAHFrZie55mXiXO0yT4JnesDdAdXFd9Y0Z6ArV1G2AGE0JzHC7zta
	LwZTd8Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB9HF-00088c-Hz; Fri, 20 Sep 2019 03:08:09 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB9H2-00088F-5H; Fri, 20 Sep 2019 03:07:57 +0000
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x8K32GnS112296; Thu, 19 Sep 2019 23:07:14 -0400
Received: from ppma01wdc.us.ibm.com (fd.55.37a9.ip4.static.sl-reverse.com
 [169.55.85.253])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2v4hjc02fe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 19 Sep 2019 23:07:14 -0400
Received: from pps.filterd (ppma01wdc.us.ibm.com [127.0.0.1])
 by ppma01wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x8K352eH011696;
 Fri, 20 Sep 2019 03:07:13 GMT
Received: from b01cxnp22036.gho.pok.ibm.com (b01cxnp22036.gho.pok.ibm.com
 [9.57.198.26]) by ppma01wdc.us.ibm.com with ESMTP id 2v3vbttjuy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 20 Sep 2019 03:07:13 +0000
Received: from b01ledav006.gho.pok.ibm.com (b01ledav006.gho.pok.ibm.com
 [9.57.199.111])
 by b01cxnp22036.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x8K37CQv7275148
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 20 Sep 2019 03:07:12 GMT
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 5AE9CAC068;
 Fri, 20 Sep 2019 03:07:12 +0000 (GMT)
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6591CAC05B;
 Fri, 20 Sep 2019 03:07:08 +0000 (GMT)
Received: from morokweng.localdomain (unknown [9.85.222.171])
 by b01ledav006.gho.pok.ibm.com (Postfix) with ESMTPS;
 Fri, 20 Sep 2019 03:07:08 +0000 (GMT)
References: <20190913225009.3406-1-prsriva@linux.microsoft.com>
 <20190913225009.3406-2-prsriva@linux.microsoft.com>
User-agent: mu4e 1.2.0; emacs 26.2
From: Thiago Jung Bauermann <bauerman@linux.ibm.com>
To: Prakhar Srivastava <prsriva@linux.microsoft.com>
Subject: Re: [RFC PATCH v1 1/1] Add support for arm64 to carry ima measurement
 log in kexec_file_load
In-reply-to: <20190913225009.3406-2-prsriva@linux.microsoft.com>
Date: Fri, 20 Sep 2019 00:07:02 -0300
Message-ID: <87zhiz1x9l.fsf@morokweng.localdomain>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-19_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1909200033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_200756_207767_D67E2AB6 
X-CRM114-Status: GOOD (  22.76  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, jean-philippe@linaro.org, arnd@arndb.de,
 takahiro.akashi@linaro.org, sboyd@kernel.org, catalin.marinas@arm.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, zohar@linux.ibm.com,
 yamada.masahiro@socionext.com, kristina.martsenko@arm.org, duwe@lst.de,
 allison@lohutok.net, james.morse@arm.org, linux-integrity@vger.kernel.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hello Prakhar,

Prakhar Srivastava <prsriva@linux.microsoft.com> writes:

> During kexec_file_load, carrying forward the ima measurement log allows
> a verifying party to get the entire runtime event log since the last
> full reboot since that is when PCRs were last reset.
>
> Signed-off-by: Prakhar Srivastava <prsriva@linux.microsoft.com>
> ---
>  arch/arm64/Kconfig                     |   7 +
>  arch/arm64/include/asm/ima.h           |  29 ++++
>  arch/arm64/include/asm/kexec.h         |   5 +
>  arch/arm64/kernel/Makefile             |   3 +-
>  arch/arm64/kernel/ima_kexec.c          | 213 +++++++++++++++++++++++++
>  arch/arm64/kernel/machine_kexec_file.c |   6 +
>  6 files changed, 262 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/include/asm/ima.h
>  create mode 100644 arch/arm64/kernel/ima_kexec.c
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 3adcec05b1f6..f39b12dbf9e8 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -976,6 +976,13 @@ config KEXEC_VERIFY_SIG
>  	  verification for the corresponding kernel image type being
>  	  loaded in order for this to work.
>
> +config HAVE_IMA_KEXEC
> +	bool "Carry over IMA measurement log during kexec_file_load() syscall"
> +	depends on KEXEC_FILE
> +	help
> +	  Select this option to carry over IMA measurement log during
> +	  kexec_file_load.
> +
>  config KEXEC_IMAGE_VERIFY_SIG
>  	bool "Enable Image signature verification support"
>  	default y

This is not right. As it stands, HAVE_IMA_KEXEC is essentially a synonym
for IMA_KEXEC.

It's not meant to be user-visible in the config process. Instead, it's
meant to be selected by the arch Kconfig (probably by the ARM64 config
symbol) to signal to IMA's Kconfig that it can offer the IMA_KEXEC
option.

I also mentioned in my previous review that config HAVE_IMA_KEXEC should
be defined in arch/Kconfig, not separately in both arch/arm64/Kconfig
and arch/powerpc/Kconfig.

> diff --git a/arch/arm64/include/asm/ima.h b/arch/arm64/include/asm/ima.h
> new file mode 100644
> index 000000000000..e23cee84729f
> --- /dev/null
> +++ b/arch/arm64/include/asm/ima.h
> @@ -0,0 +1,29 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _ASM_ARM64_IMA_H
> +#define _ASM_ARM64_IMA_H
> +
> +struct kimage;
> +
> +int ima_get_kexec_buffer(void **addr, size_t *size);
> +int ima_free_kexec_buffer(void);
> +
> +#ifdef CONFIG_IMA
> +void remove_ima_buffer(void *fdt, int chosen_node);
> +#else
> +static inline void remove_ima_buffer(void *fdt, int chosen_node) {}
> +#endif

I mentioned in my previous review that remove_ima_buffer() should exist
even if CONFIG_IMA isn't set. Did you arrive at a different conclusion?

> +
> +#ifdef CONFIG_IMA_KEXEC
> +int arch_ima_add_kexec_buffer(struct kimage *image, unsigned long load_addr,
> +			      size_t size);
> +
> +int setup_ima_buffer(const struct kimage *image, void *fdt, int chosen_node);
> +#else
> +static inline int setup_ima_buffer(const struct kimage *image, void *fdt,
> +				   int chosen_node)
> +{
> +	remove_ima_buffer(fdt, chosen_node);
> +	return 0;
> +}
> +#endif /* CONFIG_IMA_KEXEC */
> +#endif /* _ASM_ARM64_IMA_H */

> diff --git a/arch/arm64/kernel/ima_kexec.c b/arch/arm64/kernel/ima_kexec.c
> new file mode 100644
> index 000000000000..b14326d541f3
> --- /dev/null
> +++ b/arch/arm64/kernel/ima_kexec.c

In the previous patch, you took the powerpc file and made a few
modifications to fit your needs. This file is now somewhat different
than the powerpc version, but I don't understand to what purpose. It's
not different in any significant way.

Based on review comments from your previous patch, I was expecting to
see code from the powerpc file moved to an arch-independent part of the
the kernel and possibly adapted so that both arm64 and powerpc could use
it. Can you explain why you chose this approach instead? What is the
advantage of having superficially different but basically equivalent
code in the two architectures?

Actually, there's one change that is significant: instead of a single
linux,ima-kexec-buffer property holding the start address and size of
the buffer, ARM64 is now using two properties (linux,ima-kexec-buffer
and linux,ima-kexec-buffer-end) for the start and end addresses. In my
opinion, unless there's a good reason for it Linux should be consistent
accross architectures when possible.

--
Thiago Jung Bauermann
IBM Linux Technology Center

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
