Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C941E9C57
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 06:06:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CFK8/QgCSywScONJ2a2fq7bAhVU5ipES2eqrBhNjBLg=; b=rv3/SeoyeANytESaXHqwjI+oh
	q2LGK8Bq38b359iXb2vnz7jsKo7zyN+zgOiq0ybrMSdN+hXu0it3WdiExzfsL7Ka8ksk23xKgN2BB
	KCbjXht1saRB/mCfFHxo+jOO4Y4zk4UAEWnbdsyBvWcU62/QMYBBH2UMuTQ1FV4vKIyRm+tKRzsZx
	mix6rvz0Eq9e52dE56WUSvrBdFrIgoBs6xRfMyBhyF3pbxRh65JpHxmrdT4d3rhj8u8+paUDB5n6o
	P8nLtjrPksE/6oKVoBITXJoL3DWQglVluMR1Pc+Evacy2SAh6nTJFYr1m0biPrSlyoSI1L35wLXdG
	R6X1AGNTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfbi0-0000Tb-Oy; Mon, 01 Jun 2020 04:05:56 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfbhr-0000Sl-3C
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 04:05:48 +0000
Received: from [10.0.0.249] (c-24-19-135-168.hsd1.wa.comcast.net
 [24.19.135.168])
 by linux.microsoft.com (Postfix) with ESMTPSA id 2990E20B717B;
 Sun, 31 May 2020 21:05:43 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 2990E20B717B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1590984344;
 bh=cRf16aYvsFXacsv2R2HsGnQ+AFezDz46tzhgNYqzsKQ=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=RtclL/1mN0GD5uQjpU2HqQMKwfeCxJF7ii6ZMHj1q8msZDrQl3a61nZvqqop/mGeG
 +bxU39v107EGEpBikMuO+iu4qzmqb+8SjDrtEiRMmCNrLLpEmRo0efZ8pYE0dEAJfw
 Iq/vtpTkpHILxsgjyodTpvugBzpBvpLdSBmcmuWk=
Subject: Re: [RFC][PATCH 0/2] Add support for using reserved memory for ima
 buffer pass
To: Thiago Jung Bauermann <bauerman@linux.ibm.com>
References: <20200504203829.6330-1-prsriva@linux.microsoft.com>
 <20200505095620.GA82424@C02TD0UTHF1T.local>
 <e8c7d74e-74bf-caa3-452d-23faa649e825@linux.microsoft.com>
 <20200512230509.GA2654@bogus>
 <7701df90-a68b-b710-4279-9d64e45ee792@linux.microsoft.com>
 <87v9knpa36.fsf@morokweng.localdomain>
From: Prakhar Srivastava <prsriva@linux.microsoft.com>
Message-ID: <9c016a54-1c05-2f5c-6755-3814309e17af@linux.microsoft.com>
Date: Sun, 31 May 2020 21:05:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <87v9knpa36.fsf@morokweng.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_210547_236106_B9E859E2 
X-CRM114-Status: GOOD (  23.39  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 5/22/20 9:08 PM, Thiago Jung Bauermann wrote:
> 
> Hello Prakhar,
> 
> Prakhar Srivastava <prsriva@linux.microsoft.com> writes:
> 
>> On 5/12/20 4:05 PM, Rob Herring wrote:
>>> On Wed, May 06, 2020 at 10:50:04PM -0700, Prakhar Srivastava wrote:
>>>> Hi Mark,
>>>
>>> Please don't top post.
>>>
>>>> This patch set currently only address the Pure DT implementation.
>>>> EFI and ACPI implementations will be posted in subsequent patchsets.
>>>>
>>>> The logs are intended to be carried over the kexec and once read the
>>>> logs are no longer needed and in prior conversation with James(
>>>> https://lore.kernel.org/linux-arm-kernel/0053eb68-0905-4679-c97a-00c5cb6f1abb@arm.com/)
>>>> the apporach of using a chosen node doesn't
>>>> support the case.
>>>>
>>>> The DT entries make the reservation permanent and thus doesnt need kernel
>>>> segments to be used for this, however using a chosen-node with
>>>> reserved memory only changes the node information but memory still is
>>>> reserved via reserved-memory section.
>>>
>>> I think Mark's point was whether it needs to be permanent. We don't
>>> hardcode the initrd address for example.
>>>
>> Thankyou for clarifying my misunderstanding, i am modelling this keeping to the
>> TPM log implementation that uses a reserved memory. I will rev up the version
>> with chosen-node support.
>> That will make the memory reservation free after use.
> 
> Nice. Do you intend to use the same property that powerpc uses
> (linux,ima-kexec-buffer)?
> 
I was naming it ima-buffer, but naming is not a huge concern.
I will use linux,ima-kexec-buffer.
>>>> On 5/5/20 2:59 AM, Mark Rutland wrote:
>>>>> Hi Prakhar,
>>>>>
>>>>> On Mon, May 04, 2020 at 01:38:27PM -0700, Prakhar Srivastava wrote:
>>>>>> IMA during kexec(kexec file load) verifies the kernel signature and measures
>>>
>>> What's IMAIMA is a LSM attempting to detect if files have been accidentally or
>> maliciously altered, both remotely and locally, it can also be used
>> to appraise a file's measurement against a "good" value stored as an extended
>> attribute, and enforce local file integrity.
>>
>> IMA also validates and measures the signers of the kernel and initrd
>> during kexec. The measurements are extended to PCR 10(configurable) and the logs
>> stored in memory, however once kexec'd the logs are lost. Kexec is used as
>> secondary boot loader in may use cases and loosing the signer
>> creates a security hole.
>>
>> This patch is an implementation to carry over the logs and making it
>> possible to remotely validate the signers of the kernel and initrd. Such a
>> support exits only in powerpc.
>> This patch makes the carry over of logs architecture independent and puts the
>> complexity in a driver.
> 
> If I'm not mistaken, the code at arch/powerpc/kexec/ima.c isn't actually
> powerpc-specific. It could be moved to an arch-independent directory and
> used by any other architecture which supports device trees.
> 
> I think that's the simplest way forward. And to be honest I'm still
> trying to understand why you didn't take that approach. Did you try it
> and hit some obstacle or noticed a disadvantage for your use case?
> 
The approach i have in this patch set is to provide an abstraction layer 
that can be called from any architecture.
However taking a deeper look only the setup dtb is probably architecture
specific, only because the architecture specific kexec sets up the 
device tree. I can also move the code up in security/ima. However i do
have some concerns with layering. I am hoping you can provide me with 
some guidance in this aspect, i will send you the patch i am working on
to get some early feedback.

Thanks,
Prakhar Srivastava


> --
> Thiago Jung Bauermann
> IBM Linux Technology Center
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
