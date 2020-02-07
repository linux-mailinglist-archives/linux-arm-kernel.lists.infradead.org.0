Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90512155877
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 14:30:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g49IjWVHfMmn8vlKa5hRkkMxQiuXMfe/HKWaGxNuDqY=; b=ZmtKjNmuAnczLMR/6/4p776yk
	1TNDOFQUN1xJQFjjmEUhpgBhOBm6zroDwF3syhtuNPamNZ8AedeL4PqNGk24FQlJM/dkTSMtvHuun
	wZvBo+ZfP0hW+oy6FzvlObDG/bj2CwRTO2Z3yHYa01nyjavo+Lj5Ud7hrQ63CMu/GExxaY/ML7Zof
	7MwNm4YW/vHlZfBsZybei3kpS5VDEOlVVXDyj+5Gq+kTO4yE3oc+l6n+Q5I39OkPJ30wl7OQHang5
	serWtNwtXUYpHLodya3OqMC6LG03tFGvLlqPsYlHWmk2OA6KNP5cRiBq4S2ARTZfytinD2BzY8OI0
	R7fUmdvXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j03iT-0002Vq-AF; Fri, 07 Feb 2020 13:30:41 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j03iM-0002VL-Kj
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 13:30:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1581082222;
 bh=qk7eh8+w6wUyNv6TyvF4v/fPPu2UP2u8eTUdEbN3SmY=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=erl7rriu2Xz8D1E1TTU6InDZiObJH6D7Xlnbqr4k61CZlG9ZrznvCZSA0Qta1//vZ
 3uJOFyIG4Q839gw1PceBtUgGwIboDp5EZ3bQTIXgMSa7dvqZUIsSf8A9/GEsZHomrO
 Hqmh75uB67cubXmuPD9S2n/hm0lm/p1frxMnccE8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [172.20.10.6] ([109.40.64.192]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MV67y-1j8CMK0Zmw-00S9wS; Fri, 07
 Feb 2020 14:30:22 +0100
Subject: Re: [PATCH 1/2] efi/libstub: add support for loading the initrd from
 a device path
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <20200206140352.6300-1-ardb@kernel.org>
 <20200206140352.6300-2-ardb@kernel.org>
 <a6d7fefb-2f02-86a3-66aa-c3c129a91fb1@gmx.de>
 <CAKv+Gu9Z24GeqrqKhPJN+aAu8crSKvT0ZBeFL=0ik=z2Sd1FmQ@mail.gmail.com>
 <b2535bc9-f9be-e250-4da1-bce0b67abb6f@gmx.de>
 <CAKv+Gu-X6DKhtbfVgRLPomkkKJ7=4vRs-crLL0p7E7043J4H0g@mail.gmail.com>
 <081d152a-fa9b-886a-565d-b244dea08cd5@gmx.de>
 <CAKv+Gu-f9O4eon_E7=OUu_tNwybi7u6bF2zMowPHbA-MhiTjNg@mail.gmail.com>
From: Heinrich Schuchardt <xypron.glpk@gmx.de>
Message-ID: <9e7c378a-782f-f56e-2ce3-0af6386b0bff@gmx.de>
Date: Fri, 7 Feb 2020 14:30:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu-f9O4eon_E7=OUu_tNwybi7u6bF2zMowPHbA-MhiTjNg@mail.gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:lnGKa4fFsvve85a9g3QkeisSMGX5j9HexscjEHstFDrsWpWlBnC
 nXp2/Hu/GwpoVeNzyyaFepRSmsbMoUx7Mo+67rYR4WiUOvADjixmgc8S4xBIxCnKlgkJt3h
 ElJXVuxWDpRhccpiEuIGoPYugpBBDU2h6Axyf4GO2PZfe0snDstZcMA3rfxNnZbMAL47QF8
 xPvNVXHZanEqfYeAeli4A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vhfxTQDZ8ZY=:1Ypjgdjrs8uvD7Ct1+CAxD
 kywA7CY8Ntiv3DoWovZ3DibtoQLfoNCLBSx7BK+/I1bm39np55DBYKjIsge9tyZGCtNJEdrWO
 Ke79yeYYNZC0THsXcIUSbV6EsI+wBKKpd+dQNF1eynP+4RhFROKHHz4tynFWW1Vw3PFUvzslc
 QwYybnKvre9E0u0KVkvwxoDMeMRsiW3gYu9ic42H0dXX/2scBWppP16IUm5rTuQFA390/fWYg
 L/0Zq90QcIozWtgQi3em9/smW+glJN6JsMCTcu3Ew5peXJUxjgG2QqiN0+zIPRmCY+osDQJCj
 2U3lagaRcD7i5KNPVoN/In6Defzs9XfN0VA9sJgZRIsJwqOJx8SjtHDZQBCD4Hlxo3eYbBq1V
 SBm6HtwUkKoDjpLOi5XwecPklgZlsNFSQ8AoFfPBSgwI8Fj2gA3B+KaopM3BSNQD/3oynmxzF
 rOtQp0tw//xmMhRWkhJzvM2soxVeXbAB8JVI1WBQ7JoGRCneAdT6R6weM7K5JuflXK4PLqZYS
 nxcK8nL0dD/EOAh4KzZ3UCE8lc/IQzF/bVmjHrDArmCqtg2gwIVC7gBFQcRUXREl37HtarhrI
 U6unZyMHVGDEgg/BA6PEpu+Lishn2OlljsFp+nHenHFeYD385nPYkNWUtKNEIYPFPNJNC9Wua
 Wm4oVlR9qC/NSzmrsAyGRPXveMKG5r4ioYsaW0TFHNvUZ2sfYSFnk5rEWaVMTq5UbBicjP7mu
 xjSWXgTMPRhMbvDLZmpRZwICPHAmm98LvSQVyqFJbZZ6GHs87M2EKkmxNCmQJLSlljk0aY+Jl
 iBqD1JiFs0dcyB7pEWiATGxXzqMiGzGwizvBRNHgz5VCwkC5k26M42SJIQX7gh+ua5yHNHwby
 S0/vhCQGY1Lzg95rQ2pVR1wzhjuht6SP5zVNiPeEyDgydHykBuS75zLf3fwyuGsnFrKRLYzRP
 bei1HhWcS1CWKHm5LKxbydaoZmtlxTTFOhGZEUn3ngVvGfKYggAE98QrT2JCHbqTLF3MJVk4G
 kh+i8ARUbNTlBTTgaaaPH7nhmH/pmabZ6rATPEUJL4KaZJVgkRwtPIXXdK+JJKr4VAi+tdvL9
 +Tu9Kx5JVDY5OG/q4hUSlvz1Qr3yjtH4RI2sohlAsuL9fK3Tz3mBOxv3hd7kLq+Y1nbY6J6Ss
 BDeNCpumhcvxe5z5WCD8I1+8r5hSAFtYHEaDgmUczqQIDu5tN//h8jKPpXIghi1AS/AJLnMSx
 XWcDa4m8MxTxTvAjU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_053035_100080_DD68AAA1 
X-CRM114-Status: GOOD (  34.14  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xypron.glpk[at]gmx.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Alexander Graf <agraf@csgraf.de>,
 Daniel Kiper <daniel.kiper@oracle.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Matthew Garrett <mjg59@google.com>, Peter Jones <pjones@redhat.com>,
 Leif Lindholm <leif@nuviainc.com>, Laszlo Ersek <lersek@redhat.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2/7/20 9:12 AM, Ard Biesheuvel wrote:
> On Fri, 7 Feb 2020 at 00:58, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
>>
>> On 2/7/20 1:21 AM, Ard Biesheuvel wrote:
>>> On Fri, 7 Feb 2020 at 00:01, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
>>>>
>>>> On 2/6/20 11:35 PM, Ard Biesheuvel wrote:
>>>>> On Thu, 6 Feb 2020 at 18:26, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
> ...
>>>>>> Please, indicate which software you expect to expose the initrd related
>>>>>> EFI_LOAD_FILE2_PROTOCOL.
>>>>>>
>>>>>
>>>>> The primary use case is GRUB and other intermediate loaders, since it
>>>>> would remove any need for these components to know any such details.
>>>>> My aim is to make the next architecture that gets added to GRUB for
>>>>> EFI boot 100% generic.
>>>>>
>>>>>> Using an UEFI variable for passing the initrd device path would be a
>>>>>> leaner solution on the bootloader side than requiring an extra
>>>>>> EFI_LOAD_FILE2_PROTOCOL implementation.
>>>>>>
>>>>>
>>>>> This would also require kernel changes, since we don't currently load
>>>>> initrds from arbitrary device paths. The EFI_FILE_PROTOCOL is much
>>>>> more complicated than needed, and it doesn't work well with mixed
>>>>> mode. It also requires GRUB to expose the filesystem it loads the
>>>>> initrd from via EFI protocols, which is currently unnecessary and
>>>>> therefore not implemented.
>>>>
>>>> This means you move the complexity of EFI_FILE_PROTOCOL from Linux to GRUB.
>>>>
>>>
>>> No. I am not interested in EFI_FILE_PROTOCOL, only in LoadFile2, which
>>> is a single method that needs to be implemented.
>>
>> I said you move complexity because GRUB will need to use the
>> EFI_FILE_PROTOCOL to do the job that you do not want to do in Linux.
>>
>>>
>>>> I would not have a problem if this would only touch GRUB. But if listen
>>>> to Ilias we are replacing one implementation in Linux by one in GRUB and
>>>> one in U-Boot and one in EDK2 and one in any other firmware.
>>>>
>>>
>>> If u-boot will be used to boot RISC-V in EFI mode without GRUB, then I
>>> expect that we will need an implementation of this in u-boot.
>>
>> What sets RISC-V apart? GRUB for RISC-V is available.
  >>
>
> RISC-V EFI boot is not supported yet in upstream Linux.

It is currently prepared Atish Patra of WDC.

>
>>>
>>>>>
>>>>> Also, using an EFI variable defeats the purpose. The whole point of
>>>>> this is making it more likely that the kernel loaded the initrd that
>>>>> the bootloader or firmware intended it to load, and having a piece of
>>>>> simple [signed] code that implements this is the easiest way to
>>>>> achieve that.
>>>>
>>>> At least on my Debian system it is the operating system creating initrd
>>>> and defining which initrd matches which kernel. GRUB simply assumes that
>>>> files ending on the same version number match. Therefore I would say
>>>> Linux hopes that GRUB loads what Linux intended.
>>>>
>>>> The chain of trust would not be broken if the kernel were responsible
>>>> for loading the initrd and for checking if it matches the kernel. Linux
>>>> already does this for the kernel modules in initrd.
>>>>
>>>
>>> We can still sign the initrd and Linux can verify the signature. What
>>> I am after is an interface that does not require the initrd to
>>> originate from a EFI file system protocol, and which doesn't require
>>> the loaded initrd to sit in memory for an unspecified amount of time
>>> and its information passed via DT properties or bootparams structs.
>>>
>>> So invoking EFI_FILE_PROTOCOL directly is not going to work,
>>> regardless of whether we get the devicepath from the command line or
>>> from a EFI variable.
>>
>> What do you mean by "is not going to work"?
>>
>> With the device path you can find the handle implementing the
>> EFI_SIMPLE_FIL_SYSTEM_PROTOCOL.
>>
>>>
>>>>>
>>>>> For u-boot, it should be trivial to implement a simple LoadFile2
>>>>> protocol wrapper around EFI_FILE_PROTOCOL that can be installed on a
>>>>> handle that also carries EFI_FILE_PROTOCOL.
>>>>>
>>>>
>>>> A U-Boot implementation of the EFI_LOAD_FILE2_PROTOCOL would need a
>>>> device path variable to find the block device and to open the
>>>> EFI_SIMPLE_FILE_SYSTEM_PROTOCOL before accessing the file.
>>>>
>>>> Linux would not be needing more lines and we would not repeat the same
>>>> code in GRUB, U-Boot, EDK2, etc.
>>>>
>>>> As said Linux updates the initrd often. If that file is not signed by
>>>> Linux in a well defined way, do not expect any security at all.
>>>>
>>>
>>> It is not only about security. The primary goal is to remove the need
>>> for arch specific knowledge in the firmware about DT, bootparams and
>>> initrd allocation policies without being forced to load the initrd
>>> from a filesystem that is exposed via a EFI protocol.
>>
>> Where are device-trees touched by this patch?
>>
>> When booting via UEFI there is no need for knowledge of initrd
>> allocation policies in U-Boot because up to now Linux or GRUB or iPXE
>> load initrd.
>>
>> Furthermore I need no knowledge of bootparams in U-Boot once we properly
>> we support UEFI variables at runtime because grub-update will pass the
>> command line in one of the Bootxxxx UEFI variables.
>>
>> But most importantly I do not have to implement anything Linux specific
>> in U-Boot for booting via UEFI up to now.
>>
>
> Adding Linux specific stuff to u-boot is arguably more appropriate
> than adding architecture specific stuff to EFI loaders that could
> otherwise be entirely generic.
>
> ...
>>
>> Your patch claims to fend off a specific threat scenario: A user puts an
>> untrusted initrd on the disk and references it in the Linux command line.
>>
>> If he is able to do so with your current bootloader (signed or not
>> signed), he most probably will also be able to delete a good initrd from
>> the filesystem and thus force your code into the unsafe path.
>>
>> That is why I say that with the current fallback logic this patch
>> achieves no increase in security. Of cause you could remove the fallback
>> logic. But in this case your Linux will not boot with any legacy
>> bootloader or firmware.
>>
>
> If there is a better way to expose the initrd that
> a) does not require the initrd to reside on a file system that is
> accessible via EFI protocols, and
> b) does not require the loader to know about arch specific policies
> regarding the placement of the initrd in memory, and
> c) does not leave a time window between the time that the initrd is
> loaded/verified/measured by the firmware and the time that the kernel
> gets handed the buffer
>
> then I am happy to discuss it. This proposal is the best I could come
> up with to achieve the above.
>

Hello Ard,

I think part of our different views is that we are thinking about two
different use cases which both have their relevance:

If I understand you correctly, you are thinking about an embedded device
where the kernel and the initrd is essentially part of the firmware
provided by the device.

I am thinking of a system running a standard Linux distribution like
Debian where the initrd is generated by the operating system

In both use cases verifying the initrd is of importance.

Now concerning the requirements:

a) In U-Boot all file systems on block devices can be made accessible
via EFI protocols. Are you thinking about initrds that are not in a file
system?

b) My suggestion to use a UEFI variable for communicating the device
path would not require any arch specific policies either.

c) I proposed that the kernel does the verification. So there would be
equally nothing in between loading the file and its verification. Yet
responsibilities would be changed.

But possibly I missed some requirements you have in mind that I should
consider.

Best regards

Heinrich


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
