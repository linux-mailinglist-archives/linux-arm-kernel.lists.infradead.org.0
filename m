Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB314BD386
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 22:26:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UvmU4Gc9SrkBII3evsY6iOoAY5w7bX5Qm1S5jGYxnYo=; b=I6QNHAE+E3zWMxLTFIbflFcgA4
	3sh/SYFG9zbFdM6K0V/Gwkw/wHqmRALOeXFsdMryifRjP8F9SB8UQD7mm8hH2mP8raNKAn1Re/naP
	zcGTA9ddglV0RXQFLwn7H1sR/bkdCoDAX/apEJfu7OIWrQv19jlxm1dUNxo0PNk2bfOJUn69/LZhR
	Tkk+J40yMnPFwcLH6mHAmKp12ZyVTZn3Qggxkr46vCAlAwAToeUYWC4yzYabAVY73l3KtF9j11v+x
	MlPuBqpw/6bqNot96VSSprdrV4pSBl/67Moxyx4yFENSWZeWPt7btVo6TJXOG5Yyq7bZShKr+BJuC
	a25w5Xwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCrOL-00051A-Qq; Tue, 24 Sep 2019 20:26:34 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCrO8-00050l-AK; Tue, 24 Sep 2019 20:26:21 +0000
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x8OKMnQm018744; Tue, 24 Sep 2019 16:25:40 -0400
Received: from ppma04wdc.us.ibm.com (1a.90.2fa9.ip4.static.sl-reverse.com
 [169.47.144.26])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2v7qx052qj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 24 Sep 2019 16:25:40 -0400
Received: from pps.filterd (ppma04wdc.us.ibm.com [127.0.0.1])
 by ppma04wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x8OKPCJl024377;
 Tue, 24 Sep 2019 20:25:38 GMT
Received: from b03cxnp08026.gho.boulder.ibm.com
 (b03cxnp08026.gho.boulder.ibm.com [9.17.130.18])
 by ppma04wdc.us.ibm.com with ESMTP id 2v5bg77kp5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 24 Sep 2019 20:25:38 +0000
Received: from b03ledav006.gho.boulder.ibm.com
 (b03ledav006.gho.boulder.ibm.com [9.17.130.237])
 by b03cxnp08026.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x8OKPbxO58261872
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 24 Sep 2019 20:25:38 GMT
Received: from b03ledav006.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id DD1B3C6057;
 Tue, 24 Sep 2019 20:25:37 +0000 (GMT)
Received: from b03ledav006.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3D1DCC6055;
 Tue, 24 Sep 2019 20:25:33 +0000 (GMT)
Received: from morokweng.localdomain (unknown [9.85.203.235])
 by b03ledav006.gho.boulder.ibm.com (Postfix) with ESMTPS;
 Tue, 24 Sep 2019 20:25:32 +0000 (GMT)
References: <20190913225009.3406-1-prsriva@linux.microsoft.com>
 <20190913225009.3406-2-prsriva@linux.microsoft.com>
 <87zhiz1x9l.fsf@morokweng.localdomain>
 <02234482-b095-e064-f4d6-1c6255a4ff9f@linux.microsoft.com>
User-agent: mu4e 1.2.0; emacs 26.2
From: Thiago Jung Bauermann <bauerman@linux.ibm.com>
To: prsriva <prsriva@linux.microsoft.com>
Subject: Re: [RFC PATCH v1 1/1] Add support for arm64 to carry ima measurement
 log in kexec_file_load
In-reply-to: <02234482-b095-e064-f4d6-1c6255a4ff9f@linux.microsoft.com>
Date: Tue, 24 Sep 2019 17:25:30 -0300
Message-ID: <87zhit5tmt.fsf@morokweng.localdomain>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-24_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1909240166
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_132620_364811_9C488A22 
X-CRM114-Status: GOOD (  15.10  )
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
 yamada.masahiro@socionext.com, sboyd@kernel.org, catalin.marinas@arm.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, zohar@linux.ibm.com,
 takahiro.akashi@linaro.org, kristina.martsenko@arm.org, duwe@lst.de,
 linux-arm-kernel@lists.infradead.org, james.morse@arm.org,
 linux-integrity@vger.kernel.org, tglx@linutronix.de, allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hello,

prsriva <prsriva@linux.microsoft.com> writes:

> On 9/19/19 8:07 PM, Thiago Jung Bauermann wrote:
>> Hello Prakhar,
>>
>> Prakhar Srivastava <prsriva@linux.microsoft.com> writes:
>>
>>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>>> index 3adcec05b1f6..f39b12dbf9e8 100644
>>> --- a/arch/arm64/Kconfig
>>> +++ b/arch/arm64/Kconfig
>>> @@ -976,6 +976,13 @@ config KEXEC_VERIFY_SIG
>>>   	  verification for the corresponding kernel image type being
>>>   	  loaded in order for this to work.
>>>
>>> +config HAVE_IMA_KEXEC
>>> +	bool "Carry over IMA measurement log during kexec_file_load() syscall"
>>> +	depends on KEXEC_FILE
>>> +	help
>>> +	  Select this option to carry over IMA measurement log during
>>> +	  kexec_file_load.
>>> +
>>>   config KEXEC_IMAGE_VERIFY_SIG
>>>   	bool "Enable Image signature verification support"
>>>   	default y
>> This is not right. As it stands, HAVE_IMA_KEXEC is essentially a synonym
>> for IMA_KEXEC.
>>
>> It's not meant to be user-visible in the config process. Instead, it's
>> meant to be selected by the arch Kconfig (probably by the ARM64 config
>> symbol) to signal to IMA's Kconfig that it can offer the IMA_KEXEC
>> option.
>>
>> I also mentioned in my previous review that config HAVE_IMA_KEXEC should
>> be defined in arch/Kconfig, not separately in both arch/arm64/Kconfig
>> and arch/powerpc/Kconfig.
>
> I see the entry exists in arch/Kconfig and is overwritten.
> I will remove entries both from powerpc and arm64.
>
> How do i cross-compile for powerpc?

There are some instructions here:

https://github.com/linuxppc/wiki/wiki/Building-powerpc-kernels

>>> diff --git a/arch/arm64/include/asm/ima.h b/arch/arm64/include/asm/ima.h
>>> new file mode 100644
>>> index 000000000000..e23cee84729f
>>> --- /dev/null
>>> +++ b/arch/arm64/include/asm/ima.h
>>> @@ -0,0 +1,29 @@
>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>> +#ifndef _ASM_ARM64_IMA_H
>>> +#define _ASM_ARM64_IMA_H
>>> +
>>> +struct kimage;
>>> +
>>> +int ima_get_kexec_buffer(void **addr, size_t *size);
>>> +int ima_free_kexec_buffer(void);
>>> +
>>> +#ifdef CONFIG_IMA
>>> +void remove_ima_buffer(void *fdt, int chosen_node);
>>> +#else
>>> +static inline void remove_ima_buffer(void *fdt, int chosen_node) {}
>>> +#endif
>> I mentioned in my previous review that remove_ima_buffer() should exist
>> even if CONFIG_IMA isn't set. Did you arrive at a different conclusion?
>
> I made the needed changed in makefile, missed removing the
>
> configs here. Thanks for pointing this out.

Thanks.

-- 
Thiago Jung Bauermann
IBM Linux Technology Center

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
