Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6908B155ABD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 16:31:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3NnCP98IqNqPtLBna5mJDGTTYqBLC4M7ekkDAo4Orzk=; b=KDWwoxjRRzE0Rg
	a2sEDQ6uI6q6dmX7K5sJYMvzCdAC/4Navq+05LKWnDmw9hC1RkmwKgbrDEKnqaPMyTp3CJYHLcbGD
	yeLPKhmM3QbS2Xe+jzaoqw6Hk/PfOzmXh9HXhyucbkFKSH5BlnCjVArRuYZgizm2utBVIKf/YyGG5
	ksVQyT8jdNhFz4RVp/v3u113lvOq9K5tKKyT5SUh0gKOzI5CBXBUAtlUPwQboNalbaGlFlLAuIVEa
	EIzcWbJYA/0PCyet8Ap5GhVquacSia+MWa9nIQ+c4Z6Z7EvN6uvR3326hLu627/IZ12EYpwWVyueK
	3NurqPzpGWPCy1eA+TLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j05b5-0002sL-Ak; Fri, 07 Feb 2020 15:31:11 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j05ay-0002rm-2v
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 15:31:06 +0000
Received: by mail-wr1-x442.google.com with SMTP id u6so3214648wrt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 07:31:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TC+VMUCo88KEW4kESs34vu0qfl39+6/hso0IL8x9w98=;
 b=VZnjA+TumuB9BSvFyh4hS2+e+maLKjIHYfP10KANlMbMBt7jAxedYJHqK8VqbofkHG
 tdKoWr94JpI0nCdRJKO3wGDdUGKx7E3mPKJt7fnYINvSAOKEeqZTRfvXGPofwC4dizcW
 w2Nu8xbFDoSXbGtB9qfhIZCTPGWgSG791sLycUy0QA1BWgjjPS/4ncLlLYKzbuaRMjEN
 MJ2mDCiCd5STRtrTQ+G8NH9QkIznkUedeqsQQu58tNFtk4VKjF9k1JYLMKfAgbIJ6lJq
 eR8Zsp6DsHNWYhk1/npzTjHFgT29W4cXuR72nydik6c1qc9Hh79pOMDOH0QNWeagaOpt
 ZIaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TC+VMUCo88KEW4kESs34vu0qfl39+6/hso0IL8x9w98=;
 b=Hqy2shbmdwPGZpX/Bp5WP9rkRe10JB2ETxjxwA2jFD3/HtKJ9/t8mZWyukkVqDvsT5
 fMBWbEvrX4rUEGrntS4dff3YRQt3vmm2F1TZHElfOZKhhNmtV45KEd7JqxaX8J93O2N1
 YIUrMr8cWJ5fx8H2f4KValb47wCQ4wXS4mhHfCWIP8rIb0BjkiDkkfNRWJ60o7DOqF1I
 eewa7xjV5baTs6C0gZBV9WGooQhfrljc63R+bL+uy2y82JI58dWMVtKT0I6lysq99AKc
 rgY/KzoTmedxP0F1sIx/wUiEpy4V7Qmorewsd9KLD/SR3SBeIhcsOqaJSuonhRiOlqch
 gxSQ==
X-Gm-Message-State: APjAAAVJ6pycxyDiwEWDlQuX1G1uVuBruLtZWEnGH1zCABH6Cqc2jC2i
 50FrgH1IR2W1L2xjPu8F3BiVwVkyY2xJ97pie8rDpA==
X-Google-Smtp-Source: APXvYqy4fZAGpGMxjx1ZG/U+BDZQ0Rgl0AFW8U/lBlW24hdddXAoh12Ug1AveGr2mgYltI/rv00o1Rwt4FDUo9UOsKA=
X-Received: by 2002:adf:fd8d:: with SMTP id d13mr5344851wrr.208.1581089461726; 
 Fri, 07 Feb 2020 07:31:01 -0800 (PST)
MIME-Version: 1.0
References: <20200206140352.6300-1-ardb@kernel.org>
 <20200206140352.6300-2-ardb@kernel.org>
 <a6d7fefb-2f02-86a3-66aa-c3c129a91fb1@gmx.de>
 <CAKv+Gu9Z24GeqrqKhPJN+aAu8crSKvT0ZBeFL=0ik=z2Sd1FmQ@mail.gmail.com>
 <b2535bc9-f9be-e250-4da1-bce0b67abb6f@gmx.de>
 <CAKv+Gu-X6DKhtbfVgRLPomkkKJ7=4vRs-crLL0p7E7043J4H0g@mail.gmail.com>
 <081d152a-fa9b-886a-565d-b244dea08cd5@gmx.de>
 <CAKv+Gu-f9O4eon_E7=OUu_tNwybi7u6bF2zMowPHbA-MhiTjNg@mail.gmail.com>
 <9e7c378a-782f-f56e-2ce3-0af6386b0bff@gmx.de>
 <CAKv+Gu_++Uwky51i2rpNmXWVhvneDxANsaJU=BKw+6NWzTxXCw@mail.gmail.com>
 <ba00f9d2-c159-912b-35b4-30895186fe74@csgraf.de>
In-Reply-To: <ba00f9d2-c159-912b-35b4-30895186fe74@csgraf.de>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 7 Feb 2020 15:30:50 +0000
Message-ID: <CAKv+Gu8x5_=b=DdwXOogO0=saoDESo5RR19EhyruddJs0_yGQQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] efi/libstub: add support for loading the initrd from
 a device path
To: Alexander Graf <agraf@csgraf.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_073104_137698_13AF50E5 
X-CRM114-Status: GOOD (  48.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Daniel Kiper <daniel.kiper@oracle.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Matthew Garrett <mjg59@google.com>, Peter Jones <pjones@redhat.com>,
 Leif Lindholm <leif@nuviainc.com>, Laszlo Ersek <lersek@redhat.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 7 Feb 2020 at 14:18, Alexander Graf <agraf@csgraf.de> wrote:
>
>
> On 07.02.20 13:58, Ard Biesheuvel wrote:
> > On Fri, 7 Feb 2020 at 13:30, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
> >>
> >>
> >> On 2/7/20 9:12 AM, Ard Biesheuvel wrote:
> >>> On Fri, 7 Feb 2020 at 00:58, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
> >>>> On 2/7/20 1:21 AM, Ard Biesheuvel wrote:
> >>>>> On Fri, 7 Feb 2020 at 00:01, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
> >>>>>> On 2/6/20 11:35 PM, Ard Biesheuvel wrote:
> >>>>>>> On Thu, 6 Feb 2020 at 18:26, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
> >>> ...
> >>>>>>>> Please, indicate which software you expect to expose the initrd related
> >>>>>>>> EFI_LOAD_FILE2_PROTOCOL.
> >>>>>>>>
> >>>>>>> The primary use case is GRUB and other intermediate loaders, since it
> >>>>>>> would remove any need for these components to know any such details.
> >>>>>>> My aim is to make the next architecture that gets added to GRUB for
> >>>>>>> EFI boot 100% generic.
> >>>>>>>
> >>>>>>>> Using an UEFI variable for passing the initrd device path would be a
> >>>>>>>> leaner solution on the bootloader side than requiring an extra
> >>>>>>>> EFI_LOAD_FILE2_PROTOCOL implementation.
> >>>>>>>>
> >>>>>>> This would also require kernel changes, since we don't currently load
> >>>>>>> initrds from arbitrary device paths. The EFI_FILE_PROTOCOL is much
> >>>>>>> more complicated than needed, and it doesn't work well with mixed
> >>>>>>> mode. It also requires GRUB to expose the filesystem it loads the
> >>>>>>> initrd from via EFI protocols, which is currently unnecessary and
> >>>>>>> therefore not implemented.
> >>>>>> This means you move the complexity of EFI_FILE_PROTOCOL from Linux to GRUB.
> >>>>>>
> >>>>> No. I am not interested in EFI_FILE_PROTOCOL, only in LoadFile2, which
> >>>>> is a single method that needs to be implemented.
> >>>> I said you move complexity because GRUB will need to use the
> >>>> EFI_FILE_PROTOCOL to do the job that you do not want to do in Linux.
> >>>>
> >>>>>> I would not have a problem if this would only touch GRUB. But if listen
> >>>>>> to Ilias we are replacing one implementation in Linux by one in GRUB and
> >>>>>> one in U-Boot and one in EDK2 and one in any other firmware.
> >>>>>>
> >>>>> If u-boot will be used to boot RISC-V in EFI mode without GRUB, then I
> >>>>> expect that we will need an implementation of this in u-boot.
> >>>> What sets RISC-V apart? GRUB for RISC-V is available.
> >>    >>
> >>> RISC-V EFI boot is not supported yet in upstream Linux.
> >> It is currently prepared Atish Patra of WDC.
> >>
> > Exactly. So it is not in the upstream yet, and I want to converge on a
> > sane generic interface before it gets merged.
> >
> >>>>>>> Also, using an EFI variable defeats the purpose. The whole point of
> >>>>>>> this is making it more likely that the kernel loaded the initrd that
> >>>>>>> the bootloader or firmware intended it to load, and having a piece of
> >>>>>>> simple [signed] code that implements this is the easiest way to
> >>>>>>> achieve that.
> >>>>>> At least on my Debian system it is the operating system creating initrd
> >>>>>> and defining which initrd matches which kernel. GRUB simply assumes that
> >>>>>> files ending on the same version number match. Therefore I would say
> >>>>>> Linux hopes that GRUB loads what Linux intended.
> >>>>>>
> >>>>>> The chain of trust would not be broken if the kernel were responsible
> >>>>>> for loading the initrd and for checking if it matches the kernel. Linux
> >>>>>> already does this for the kernel modules in initrd.
> >>>>>>
> >>>>> We can still sign the initrd and Linux can verify the signature. What
> >>>>> I am after is an interface that does not require the initrd to
> >>>>> originate from a EFI file system protocol, and which doesn't require
> >>>>> the loaded initrd to sit in memory for an unspecified amount of time
> >>>>> and its information passed via DT properties or bootparams structs.
> >>>>>
> >>>>> So invoking EFI_FILE_PROTOCOL directly is not going to work,
> >>>>> regardless of whether we get the devicepath from the command line or
> >>>>> from a EFI variable.
> >>>> What do you mean by "is not going to work"?
> >>>>
> >>>> With the device path you can find the handle implementing the
> >>>> EFI_SIMPLE_FIL_SYSTEM_PROTOCOL.
> >>>>
> >>>>>>> For u-boot, it should be trivial to implement a simple LoadFile2
> >>>>>>> protocol wrapper around EFI_FILE_PROTOCOL that can be installed on a
> >>>>>>> handle that also carries EFI_FILE_PROTOCOL.
> >>>>>>>
> >>>>>> A U-Boot implementation of the EFI_LOAD_FILE2_PROTOCOL would need a
> >>>>>> device path variable to find the block device and to open the
> >>>>>> EFI_SIMPLE_FILE_SYSTEM_PROTOCOL before accessing the file.
> >>>>>>
> >>>>>> Linux would not be needing more lines and we would not repeat the same
> >>>>>> code in GRUB, U-Boot, EDK2, etc.
> >>>>>>
> >>>>>> As said Linux updates the initrd often. If that file is not signed by
> >>>>>> Linux in a well defined way, do not expect any security at all.
> >>>>>>
> >>>>> It is not only about security. The primary goal is to remove the need
> >>>>> for arch specific knowledge in the firmware about DT, bootparams and
> >>>>> initrd allocation policies without being forced to load the initrd
> >>>>> from a filesystem that is exposed via a EFI protocol.
> >>>> Where are device-trees touched by this patch?
> >>>>
> >>>> When booting via UEFI there is no need for knowledge of initrd
> >>>> allocation policies in U-Boot because up to now Linux or GRUB or iPXE
> >>>> load initrd.
> >>>>
> >>>> Furthermore I need no knowledge of bootparams in U-Boot once we properly
> >>>> we support UEFI variables at runtime because grub-update will pass the
> >>>> command line in one of the Bootxxxx UEFI variables.
> >>>>
> >>>> But most importantly I do not have to implement anything Linux specific
> >>>> in U-Boot for booting via UEFI up to now.
> >>>>
> >>> Adding Linux specific stuff to u-boot is arguably more appropriate
> >>> than adding architecture specific stuff to EFI loaders that could
> >>> otherwise be entirely generic.
> >>>
> >>> ...
> >>>> Your patch claims to fend off a specific threat scenario: A user puts an
> >>>> untrusted initrd on the disk and references it in the Linux command line.
> >>>>
> >>>> If he is able to do so with your current bootloader (signed or not
> >>>> signed), he most probably will also be able to delete a good initrd from
> >>>> the filesystem and thus force your code into the unsafe path.
> >>>>
> >>>> That is why I say that with the current fallback logic this patch
> >>>> achieves no increase in security. Of cause you could remove the fallback
> >>>> logic. But in this case your Linux will not boot with any legacy
> >>>> bootloader or firmware.
> >>>>
> >>> If there is a better way to expose the initrd that
> >>> a) does not require the initrd to reside on a file system that is
> >>> accessible via EFI protocols, and
> >>> b) does not require the loader to know about arch specific policies
> >>> regarding the placement of the initrd in memory, and
> >>> c) does not leave a time window between the time that the initrd is
> >>> loaded/verified/measured by the firmware and the time that the kernel
> >>> gets handed the buffer
> >>>
> >>> then I am happy to discuss it. This proposal is the best I could come
> >>> up with to achieve the above.
> >>>
> >> Hello Ard,
> >>
> >> I think part of our different views is that we are thinking about two
> >> different use cases which both have their relevance:
> >>
> >> If I understand you correctly, you are thinking about an embedded device
> >> where the kernel and the initrd is essentially part of the firmware
> >> provided by the device.
> >>
> >> I am thinking of a system running a standard Linux distribution like
> >> Debian where the initrd is generated by the operating system
> >>
> >> In both use cases verifying the initrd is of importance.
> >>
> >> Now concerning the requirements:
> >>
> >> a) In U-Boot all file systems on block devices can be made accessible
> >> via EFI protocols. Are you thinking about initrds that are not in a file
> >> system?
> >>
> > The typical GRUB deployment keeps the core GRUB itself (or the entire
> > thing if it is built as standalone) in the ESP, and the GRUB modules,
> > kernel images and initrds are in /boot, which is typically not a file
> > system that EFI understands. So in that case, initrd= does not work,
> > which is why GRUB loads the initrd into memory directly and passes the
> > base address and size via DT or bootparams structure.
> >
> >> b) My suggestion to use a UEFI variable for communicating the device
> >> path would not require any arch specific policies either.
> >>
> > Passing the EFI device path is not going to help us since the initrd
> > may not be representable as a device path. That is the whole point,
> > actually - this series makes the initrd representable as a device
> > path, but in a simple way that doesn't rely on EFI_FILE_PROTOCOL but
> > only on EFI_LOAD_FILE2_PROTOCOL, which is *much* simpler.
>
>
> So if we had support in grub to just export its own file systems as UEFI
> protocols, that problem would disappear, right? What other reasons are
> left to not just use normal file load operations from the Linux EFI stub?
>

1) complexity

"""
typedef struct {
  u64     size;
  u64     file_size;
  u64     phys_size;
  efi_time_t    create_time;
  efi_time_t    last_access_time;
  efi_time_t    modification_time;
  __aligned_u64   attribute;
  efi_char16_t    filename[];
} efi_file_info_t;

typedef struct efi_file_protocol efi_file_protocol_t;

struct efi_file_protocol {
  u64   revision;
  efi_status_t  (__efiapi *open)  (efi_file_protocol_t *,
             efi_file_protocol_t **,
             efi_char16_t *, u64, u64);
  efi_status_t  (__efiapi *close) (efi_file_protocol_t *);
  efi_status_t  (__efiapi *delete)  (efi_file_protocol_t *);
  efi_status_t  (__efiapi *read)  (efi_file_protocol_t *,
             unsigned long *, void *);
  efi_status_t  (__efiapi *write) (efi_file_protocol_t *,
             unsigned long, void *);
  efi_status_t  (__efiapi *get_position)(efi_file_protocol_t *, u64 *);
  efi_status_t  (__efiapi *set_position)(efi_file_protocol_t *, u64);
  efi_status_t  (__efiapi *get_info)  (efi_file_protocol_t *,
             efi_guid_t *, unsigned long *,
             void *);
  efi_status_t  (__efiapi *set_info)  (efi_file_protocol_t *,
             efi_guid_t *, unsigned long,
             void *);
  efi_status_t  (__efiapi *flush) (efi_file_protocol_t *);
};

typedef struct efi_simple_file_system_protocol
efi_simple_file_system_protocol_t;

struct efi_simple_file_system_protocol {
  u64 revision;
  int (__efiapi *open_volume)(efi_simple_file_system_protocol_t *,
          efi_file_protocol_t **);
};

#define EFI_FILE_MODE_READ  0x0000000000000001
#define EFI_FILE_MODE_WRITE 0x0000000000000002
#define EFI_FILE_MODE_CREATE  0x8000000000000000
"""

versus

"""
union efi_load_file_protocol {
struct {
  efi_status_t (__efiapi *load_file)(efi_load_file_protocol_t *,
       efi_device_path_protocol_t *,
       bool, unsigned long *, void *);
  };
};
"""

2) mixed mode is problematic due to the use of u64 arguments in the prototypes
3) you have to trust that the device path that was specified was
intended to be loaded as an initrd
4) if you want to authenticate or measure the initrd from the firmware
as it is read, you have to disambiguate EFI_FILE_PROTOCOL calls
involving the initrd from arbitrary other calls.


> IIRC you mentioned that the fwcfg -kernel and -initrd parameters are
> already exposed as pseudo filesystem inside AAVMF, so that one is solved.
>

Yes, but this only works if you use the PE entry point, which rules
out mixed mode.

> I think that only leaves the UEFI shell case? But if you have a UEFI
> shell, then you can only load from an existing file system as well, no?
>

Yes.

> What I can't quite grasp yet is how you would handle multiple initrds
> with a single device path. How would that work?
>

The core kernel does not care about multiple initrds, they have to be
concatenated and passed as one anyway. In this case, that means the
implementation of LoadFile2 is in charge of this.

>
> >
> >> c) I proposed that the kernel does the verification. So there would be
> >> equally nothing in between loading the file and its verification. Yet
> >> responsibilities would be changed.
> >>
> >> But possibly I missed some requirements you have in mind that I should
> >> consider.
> >>
> > 1) The assumption that the initrd can always be loaded from a EFI
> > device path directly does not hold.
>
>
> Can you think of good reasons why this is true? I understand the grub
> one, but that's solvable. What other cases are there?
>

Thin EFI implementations in enclaves, LinuxBoot on arm64, ...

>
> > 2) Loading the initrd into memory and passing the address and size is
> > not acceptable.
>
>
> This would basically be the option to pass the initrd as configuration
> table, right? The only reason that definitely goes against that one that
> I can think of right now is to avoid double copying?
>

That basically forces the stub to reallocate it, unless we put the
[arch specific] allocation policy in the loader. initrds can be large,
and so having to copy them can be a problem.

>
> > 3) Having a special device path that designates the initrd
> > specifically (which will be treated in a special way by the kernel)
> > makes it very easy for the boot firmware to attach policy to the
> > loading of the initrd that can be enforced right when the file is
> > being passed into the kernel.
>
>
> I don't fully understand this one. Can you give examples for such
> policies? :)
>

If you want to measure the initrd into PCR x, it gives you a natural
place to do it, since the data is measured right at the point where
the stub consumes it, and the protocol will never be invoked if the
initrd is not requested (e.g., if the boot environment exposes a
initrd but 'noinitrd' is passed on the command line, in which case we
would prefer not to measure the initrd at all)

>
> > Putting an arbitrary device path in a EFI variable doesn't address 1),
> > and it complicates 3), since you cannot easily distinguish whether the
> > file load that is occurring is the EFI stub loading the initrd at
> > boot.
>
>
> Why do we need to distinguish? I'm missing creativity for the use case
> right now. For 1), we just need to make sure that boot loaders that
> implement their own file systems also expose those file systems as UEFI
> protocols, right?
>

Because an arbitrary file read call cannot be identified as being the
one issued by the stub to load and invoke the initrd.

>
> That said, I don't think the proposed approach of using
> EFI_LOAD_FILE2_PROTOCOL is bad. Whatever we do, we always will need to
> treat initrds special in one way or another; at least by exposing a
> command to specify which one(s) you want to load.
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
