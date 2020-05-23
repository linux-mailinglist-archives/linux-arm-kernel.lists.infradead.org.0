Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 667001DF47F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 06:09:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KKg6nxEWWVM1DW0DrQUlfk/KS+QN0fY6/zn0fGyiVog=; b=LTcBJgcfeS9It4J1CSif8GEDI9
	Qf+cQ+WqoSk2Swo11qyy6A3N9O5UWmNYiDZ/09u9DIVHMN0FN3gsRMUWQ802cKWq/aU96Pqkn/glG
	9VNWl8TxZoRA1nmqsy8R5pKJr8i6PxP0UzRUQkbvM3KBAnFURFMIKKeqJUALZHEtDa15FJETf6+XX
	awT8r8k6FhARhMQs/1zWwbwLTYuWioW4KrmJWABgUqX/ZrdaOjSxswRyxw6GtuPBjs6ywpadZPBjD
	5axh092UkIF0qZXBkLriSVWW1D33xjv2+9vJ4vaXwVFDWniCSlzqFgK14179WlpbEq5rn263FYnC5
	UYPknLtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcLTI-0008S4-Ij; Sat, 23 May 2020 04:09:16 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcLTA-0008RR-KD
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 04:09:10 +0000
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04N42942159920; Sat, 23 May 2020 00:08:31 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 3160mk2mpc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sat, 23 May 2020 00:08:30 -0400
Received: from m0098399.ppops.net (m0098399.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 04N48U8L175628;
 Sat, 23 May 2020 00:08:30 -0400
Received: from ppma02wdc.us.ibm.com (aa.5b.37a9.ip4.static.sl-reverse.com
 [169.55.91.170])
 by mx0a-001b2d01.pphosted.com with ESMTP id 3160mk2mnw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sat, 23 May 2020 00:08:30 -0400
Received: from pps.filterd (ppma02wdc.us.ibm.com [127.0.0.1])
 by ppma02wdc.us.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 04N45RWH012073;
 Sat, 23 May 2020 04:08:28 GMT
Received: from b01cxnp22036.gho.pok.ibm.com (b01cxnp22036.gho.pok.ibm.com
 [9.57.198.26]) by ppma02wdc.us.ibm.com with ESMTP id 316uf9084h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sat, 23 May 2020 04:08:28 +0000
Received: from b01ledav006.gho.pok.ibm.com (b01ledav006.gho.pok.ibm.com
 [9.57.199.111])
 by b01cxnp22036.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 04N48SdY14025224
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 23 May 2020 04:08:28 GMT
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 536E2AC05B;
 Sat, 23 May 2020 04:08:28 +0000 (GMT)
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B1ABCAC059;
 Sat, 23 May 2020 04:08:17 +0000 (GMT)
Received: from morokweng.localdomain (unknown [9.163.49.7])
 by b01ledav006.gho.pok.ibm.com (Postfix) with ESMTPS;
 Sat, 23 May 2020 04:08:17 +0000 (GMT)
References: <20200504203829.6330-1-prsriva@linux.microsoft.com>
 <20200505095620.GA82424@C02TD0UTHF1T.local>
 <e8c7d74e-74bf-caa3-452d-23faa649e825@linux.microsoft.com>
 <20200512230509.GA2654@bogus>
 <7701df90-a68b-b710-4279-9d64e45ee792@linux.microsoft.com>
User-agent: mu4e 1.2.0; emacs 26.3
From: Thiago Jung Bauermann <bauerman@linux.ibm.com>
To: Prakhar Srivastava <prsriva@linux.microsoft.com>
Subject: Re: [RFC][PATCH 0/2] Add support for using reserved memory for ima
 buffer pass
In-reply-to: <7701df90-a68b-b710-4279-9d64e45ee792@linux.microsoft.com>
Date: Sat, 23 May 2020 01:08:13 -0300
Message-ID: <87v9knpa36.fsf@morokweng.localdomain>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-22_12:2020-05-22,
 2020-05-22 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 adultscore=0 bulkscore=0 spamscore=0 priorityscore=1501 mlxlogscore=999
 suspectscore=0 cotscore=-2147483648 impostorscore=0 phishscore=0
 mlxscore=0 malwarescore=0 clxscore=1011 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005230027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_210908_668911_6459E707 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, kstewart@linuxfoundation.org,
 gregkh@linuxfoundation.org, benh@kernel.crashing.org, bhsharma@redhat.com,
 tao.li@vivo.com, zohar@linux.ibm.com, paulus@samba.org,
 vincenzo.frascino@arm.com, will@kernel.org, Rob Herring <robh@kernel.org>,
 nramas@linux.microsoft.com, frowand.list@gmail.com, masahiroy@kernel.org,
 jmorris@namei.org, takahiro.akashi@linaro.org,
 linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 serge@hallyn.com, devicetree@vger.kernel.org, pasha.tatashin@soleen.com,
 hsinyi@chromium.org, tusharsu@linux.microsoft.com, tglx@linutronix.de,
 allison@lohutok.net, christophe.leroy@c-s.fr, mbrugger@suse.com,
 balajib@linux.microsoft.com, dmitry.kasatkin@gmail.com,
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 james.morse@arm.com, mpe@ellerman.id.au, linux-integrity@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hello Prakhar,

Prakhar Srivastava <prsriva@linux.microsoft.com> writes:

> On 5/12/20 4:05 PM, Rob Herring wrote:
>> On Wed, May 06, 2020 at 10:50:04PM -0700, Prakhar Srivastava wrote:
>>> Hi Mark,
>>
>> Please don't top post.
>>
>>> This patch set currently only address the Pure DT implementation.
>>> EFI and ACPI implementations will be posted in subsequent patchsets.
>>>
>>> The logs are intended to be carried over the kexec and once read the
>>> logs are no longer needed and in prior conversation with James(
>>> https://lore.kernel.org/linux-arm-kernel/0053eb68-0905-4679-c97a-00c5cb6f1abb@arm.com/)
>>> the apporach of using a chosen node doesn't
>>> support the case.
>>>
>>> The DT entries make the reservation permanent and thus doesnt need kernel
>>> segments to be used for this, however using a chosen-node with
>>> reserved memory only changes the node information but memory still is
>>> reserved via reserved-memory section.
>>
>> I think Mark's point was whether it needs to be permanent. We don't
>> hardcode the initrd address for example.
>>
> Thankyou for clarifying my misunderstanding, i am modelling this keeping to the
> TPM log implementation that uses a reserved memory. I will rev up the version
> with chosen-node support.
> That will make the memory reservation free after use.

Nice. Do you intend to use the same property that powerpc uses
(linux,ima-kexec-buffer)?

>>> On 5/5/20 2:59 AM, Mark Rutland wrote:
>>>> Hi Prakhar,
>>>>
>>>> On Mon, May 04, 2020 at 01:38:27PM -0700, Prakhar Srivastava wrote:
>>>>> IMA during kexec(kexec file load) verifies the kernel signature and measures
>>
>> What's IMAIMA is a LSM attempting to detect if files have been accidentally or
> maliciously altered, both remotely and locally, it can also be used
> to appraise a file's measurement against a "good" value stored as an extended
> attribute, and enforce local file integrity.
>
> IMA also validates and measures the signers of the kernel and initrd
> during kexec. The measurements are extended to PCR 10(configurable) and the logs
> stored in memory, however once kexec'd the logs are lost. Kexec is used as
> secondary boot loader in may use cases and loosing the signer
> creates a security hole.
>
> This patch is an implementation to carry over the logs and making it
> possible to remotely validate the signers of the kernel and initrd. Such a
> support exits only in powerpc.
> This patch makes the carry over of logs architecture independent and puts the
> complexity in a driver.

If I'm not mistaken, the code at arch/powerpc/kexec/ima.c isn't actually
powerpc-specific. It could be moved to an arch-independent directory and
used by any other architecture which supports device trees.

I think that's the simplest way forward. And to be honest I'm still
trying to understand why you didn't take that approach. Did you try it
and hit some obstacle or noticed a disadvantage for your use case?

--
Thiago Jung Bauermann
IBM Linux Technology Center

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
