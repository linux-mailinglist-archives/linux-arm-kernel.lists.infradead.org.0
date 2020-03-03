Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D06DF177E32
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 19:01:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YTQT8MoVoeJ7JAp//QQaoGfiWJWFmcO96/jGYPwPfj8=; b=Tf9/xo3DLNzxnm
	+A6XnQJdmFDJsawXG6zigK20fi8HlF+L+boR2Uztqx6+JChnIelrGU/dow+Vk1BptE+9ua4O5kVjy
	BqhabRUis6V/iT97MxWSygzD1y1WAxLHWN2DrEACiDxbE6W7UnJvLCam/rJ96kSFnntdLFA3uTl/h
	wNyish903++sK/Al8P9/ynm4co14GtUetw2MoQ9pz+j8Y40VbKUSNEjDu83GUzlHhU/7Z4sHW0mlF
	Tkf3h6unv+UY74Eh6shqI87BZfnaBBOx76uiIBDdbHzta/hQavcJz7FeutiRQUotMnWTSiUujdcQR
	LLwa+6vSU4O+Fhf+4vVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9BrX-0000tq-GW; Tue, 03 Mar 2020 18:01:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9BrO-0000t8-UM
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 18:01:41 +0000
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A37E20656
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  3 Mar 2020 18:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583258498;
 bh=1hbl3m4Hxf0gY967O41p8JrE6SOgP2qeMfhUCwBDxGU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YSUuWwZqaMJTd5+guFzuVdQXDV57Jh3I/0s2Lm7A93azgu/iVsVXgjAhB5NG3+uZx
 IyVZCzzgXCXUiS4yVP9fDxlyIlbVg/nQdMJ8xEfZ4CGOSnvW7b7gTNccrN4sVTKgIB
 yB6DD3cvQRF4cG7NBJ92AOZ4bS+8BKAJXbXeZ3Lk=
Received: by mail-wr1-f50.google.com with SMTP id v4so5551730wrs.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 10:01:38 -0800 (PST)
X-Gm-Message-State: ANhLgQ1tJMjN8f/oU7vhgLUkYLKHNTXEeHMhOCQ/KqTYIiCLpoCTgLZV
 EPL5dh82WcIs1iqzzGtv1hxIs4LaBZgpHsQR0WNrFg==
X-Google-Smtp-Source: ADFU+vtCh+tBWrTvRcAc/NH0JeRqkB01tuIpt1Bnu3LmZDWpVgJ/bX7HfAGeJP895OCyGjQV8HtajjRojSX0FCuXtVE=
X-Received: by 2002:adf:e742:: with SMTP id c2mr6489330wrn.262.1583258494072; 
 Tue, 03 Mar 2020 10:01:34 -0800 (PST)
MIME-Version: 1.0
References: <20200216182334.8121-1-ardb@kernel.org>
 <20200216182334.8121-17-ardb@kernel.org>
 <20200303160353.GA20372@roeck-us.net>
 <CAKv+Gu_dG2dsrNBWG3fV5S40y6iRGSj7MO2gbtZhqEUg5mXgyQ@mail.gmail.com>
 <20200303175355.GA14065@roeck-us.net>
In-Reply-To: <20200303175355.GA14065@roeck-us.net>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 3 Mar 2020 19:01:23 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu_4tbdR8zF0eerZBbiFhCh_hg20rTovxqcaByW8J4b-UA@mail.gmail.com>
Message-ID: <CAKv+Gu_4tbdR8zF0eerZBbiFhCh_hg20rTovxqcaByW8J4b-UA@mail.gmail.com>
Subject: Re: [PATCH 16/18] efi: add 'runtime' pointer to struct efi
To: Guenter Roeck <linux@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_100139_026165_18707417 
X-CRM114-Status: GOOD (  26.84  )
X-Spam-Score: -4.4 (----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-4.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
 linux-efi <linux-efi@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 3 Mar 2020 at 18:54, Guenter Roeck <linux@roeck-us.net> wrote:
>
> On Tue, Mar 03, 2020 at 05:39:43PM +0100, Ard Biesheuvel wrote:
> > On Tue, 3 Mar 2020 at 17:03, Guenter Roeck <linux@roeck-us.net> wrote:
> > >
> > > On Sun, Feb 16, 2020 at 07:23:32PM +0100, Ard Biesheuvel wrote:
> > > > Instead of going through the EFI system table each time, just copy the
> > > > runtime services table pointer into struct efi directly. This is the
> > > > last use of the system table pointer in struct efi, allowing us to
> > > > drop it in a future patch, along with a fair amount of quirky handling
> > > > of the translated address.
> > > >
> > > > Note that usually, the runtime services pointer changes value during
> > > > the call to SetVirtualAddressMap(), so grab the updated value as soon
> > > > as that call returns. (Mixed mode uses a 1:1 mapping, and kexec boot
> > > > enters with the updated address in the system table, so in those cases,
> > > > we don't need to do anything here)
> > > >
> > > > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > >
> > > This patch results in a crash with i386 efi boots if PAE (CONFIG_HIGHMEM64G=y)
> > > is enabled. Bisect and crash logs attached. There is also a warning which
> > > I don't recall seeing before, but it may not be caused by this patch
> > > (I didn' bisect the warning). The warning is seen with all i386:efi boots,
> > > not only when PAE is enabled. The warning log is also attached.
> > >
> > > Guenter
> > >
> > > ---
> > > Qemu command line:
> > >
> > > qemu-system-i386 -kernel arch/x86/boot/bzImage -M pc -cpu Westmere \
> > >         -no-reboot -m 256 -snapshot \
> > >         -bios OVMF-pure-efi-32.fd \
> > >         -usb -device usb-storage,drive=d0 \
> > >         -drive file=rootfs.ext2,if=none,id=d0,format=raw \
> > >         --append 'earlycon=uart8250,io,0x3f8,9600n8 panic=-1 slub_debug=FZPUA root=/dev/sda rootwait mem=256M console=ttyS0' \
> > >         -nographic
> > >
> >
> > I am failing to reproduce this. Do you have a .config and a copy of
> > OVMF-pure-efi-32.fd anywhere?
> >
>
> https://github.com/groeck/linux-build-test/blob/master/rootfs/firmware/OVMF-pure-efi-32.fd
> https://github.com/groeck/linux-build-test/blob/master/rootfs/x86/rootfs.ext2.gz
>
> Config file is below, shortened by "make savedefconfig" on the actual
> configuration used on next-20200303. Qemu version is 4.2, though that
> should not really matter. Note that it isn't necessary to boot from usb,
> that was just my test case.
>
> Here is a pointer to a complete log, showing the various conditions
> resulting in the warning and the crash:
>
> https://kerneltests.org/builders/qemu-x86-next/builds/1310/steps/qemubuildcommand_1/logs/stdio
>

Thanks.

How do I generate your exact .config from the below? I still cannot
reproduce with the different firmware.

My qemu is 3.1 btw


>
> ---
> # CONFIG_LOCALVERSION_AUTO is not set
> CONFIG_SYSVIPC=y
> CONFIG_POSIX_MQUEUE=y
> CONFIG_USELIB=y
> CONFIG_AUDIT=y
> CONFIG_NO_HZ=y
> CONFIG_HIGH_RES_TIMERS=y
> CONFIG_PREEMPT_VOLUNTARY=y
> CONFIG_BSD_PROCESS_ACCT=y
> CONFIG_TASKSTATS=y
> CONFIG_TASK_DELAY_ACCT=y
> CONFIG_TASK_XACCT=y
> CONFIG_TASK_IO_ACCOUNTING=y
> CONFIG_LOG_BUF_SHIFT=18
> CONFIG_CGROUPS=y
> CONFIG_CGROUP_SCHED=y
> CONFIG_CGROUP_FREEZER=y
> CONFIG_CPUSETS=y
> CONFIG_CGROUP_CPUACCT=y
> CONFIG_NAMESPACES=y
> CONFIG_BLK_DEV_INITRD=y
> CONFIG_EXPERT=y
> # CONFIG_COMPAT_BRK is not set
> CONFIG_PROFILING=y
> CONFIG_SMP=y
> CONFIG_NR_CPUS=8
> CONFIG_X86_REROUTE_FOR_BROKEN_BOOT_IRQS=y
> CONFIG_MICROCODE_AMD=y
> CONFIG_X86_MSR=y
> CONFIG_X86_CPUID=y
> CONFIG_X86_CHECK_BIOS_CORRUPTION=y
> # CONFIG_MTRR_SANITIZER is not set
> CONFIG_EFI=y
> CONFIG_EFI_STUB=y
> CONFIG_HZ_1000=y
> CONFIG_KEXEC=y
> CONFIG_CRASH_DUMP=y
> CONFIG_HIBERNATION=y
> CONFIG_PM_DEBUG=y
> CONFIG_PM_TRACE_RTC=y
> CONFIG_ACPI_DOCK=y
> CONFIG_ACPI_BGRT=y
> CONFIG_CPU_FREQ_DEFAULT_GOV_USERSPACE=y
> CONFIG_CPU_FREQ_GOV_PERFORMANCE=y
> CONFIG_CPU_FREQ_GOV_ONDEMAND=y
> CONFIG_X86_ACPI_CPUFREQ=y
> CONFIG_EFI_VARS=y
> CONFIG_EFI_CAPSULE_LOADER=y
> # CONFIG_KVM_WERROR is not set
> CONFIG_KPROBES=y
> CONFIG_JUMP_LABEL=y
> CONFIG_STATIC_KEYS_SELFTEST=y
> CONFIG_COMPAT_32BIT_TIME=y
> CONFIG_MODULES=y
> CONFIG_MODULE_UNLOAD=y
> CONFIG_MODULE_FORCE_UNLOAD=y
> # CONFIG_UNUSED_SYMBOLS is not set
> CONFIG_BINFMT_MISC=y
> CONFIG_NET=y
> CONFIG_PACKET=y
> CONFIG_UNIX=y
> CONFIG_XFRM_USER=y
> CONFIG_INET=y
> CONFIG_IP_MULTICAST=y
> CONFIG_IP_ADVANCED_ROUTER=y
> CONFIG_IP_MULTIPLE_TABLES=y
> CONFIG_IP_ROUTE_MULTIPATH=y
> CONFIG_IP_ROUTE_VERBOSE=y
> CONFIG_IP_PNP=y
> CONFIG_IP_PNP_DHCP=y
> CONFIG_IP_PNP_BOOTP=y
> CONFIG_IP_PNP_RARP=y
> CONFIG_IP_MROUTE=y
> CONFIG_IP_PIMSM_V1=y
> CONFIG_IP_PIMSM_V2=y
> CONFIG_SYN_COOKIES=y
> # CONFIG_INET_DIAG is not set
> CONFIG_TCP_CONG_ADVANCED=y
> # CONFIG_TCP_CONG_BIC is not set
> # CONFIG_TCP_CONG_WESTWOOD is not set
> # CONFIG_TCP_CONG_HTCP is not set
> CONFIG_TCP_MD5SIG=y
> CONFIG_INET6_AH=y
> CONFIG_INET6_ESP=y
> CONFIG_NETLABEL=y
> CONFIG_NETFILTER=y
> # CONFIG_NETFILTER_ADVANCED is not set
> CONFIG_NF_CONNTRACK=y
> CONFIG_NF_CONNTRACK_FTP=y
> CONFIG_NF_CONNTRACK_IRC=y
> CONFIG_NF_CONNTRACK_SIP=y
> CONFIG_NF_CT_NETLINK=y
> CONFIG_NF_NAT=y
> CONFIG_NETFILTER_XT_TARGET_CONNSECMARK=y
> CONFIG_NETFILTER_XT_TARGET_NFLOG=y
> CONFIG_NETFILTER_XT_TARGET_SECMARK=y
> CONFIG_NETFILTER_XT_TARGET_TCPMSS=y
> CONFIG_NETFILTER_XT_MATCH_CONNTRACK=y
> CONFIG_NETFILTER_XT_MATCH_POLICY=y
> CONFIG_NETFILTER_XT_MATCH_STATE=y
> CONFIG_IP_NF_IPTABLES=y
> CONFIG_IP_NF_FILTER=y
> CONFIG_IP_NF_TARGET_REJECT=y
> CONFIG_IP_NF_TARGET_MASQUERADE=m
> CONFIG_IP_NF_MANGLE=y
> CONFIG_IP6_NF_IPTABLES=y
> CONFIG_IP6_NF_MATCH_IPV6HEADER=y
> CONFIG_IP6_NF_FILTER=y
> CONFIG_IP6_NF_TARGET_REJECT=y
> CONFIG_IP6_NF_MANGLE=y
> CONFIG_NET_SCHED=y
> CONFIG_NET_EMATCH=y
> CONFIG_NET_CLS_ACT=y
> CONFIG_HAMRADIO=y
> CONFIG_CFG80211=y
> CONFIG_MAC80211=y
> CONFIG_MAC80211_LEDS=y
> CONFIG_RFKILL=y
> CONFIG_RFKILL_INPUT=y
> CONFIG_PCI=y
> CONFIG_PCIEPORTBUS=y
> CONFIG_PCI_MSI=y
> CONFIG_HOTPLUG_PCI=y
> CONFIG_PCCARD=y
> CONFIG_YENTA=y
> CONFIG_DEVTMPFS=y
> CONFIG_DEVTMPFS_MOUNT=y
> CONFIG_DEBUG_DEVRES=y
> CONFIG_PM_QOS_KUNIT_TEST=y
> CONFIG_CONNECTOR=y
> CONFIG_BLK_DEV_LOOP=y
> CONFIG_VIRTIO_BLK=y
> CONFIG_BLK_DEV_NVME=y
> CONFIG_PCI_ENDPOINT_TEST=y
> CONFIG_BLK_DEV_SD=y
> CONFIG_BLK_DEV_SR=y
> CONFIG_CHR_DEV_SG=y
> CONFIG_SCSI_CONSTANTS=y
> CONFIG_MEGARAID_SAS=y
> CONFIG_SCSI_SYM53C8XX_2=y
> CONFIG_SCSI_DC395x=y
> CONFIG_SCSI_AM53C974=y
> CONFIG_SCSI_VIRTIO=y
> CONFIG_ATA=y
> CONFIG_SATA_AHCI=y
> CONFIG_ATA_PIIX=y
> CONFIG_PATA_AMD=y
> CONFIG_PATA_OLDPIIX=y
> CONFIG_PATA_SCH=y
> CONFIG_PATA_MPIIX=y
> CONFIG_ATA_GENERIC=y
> CONFIG_MD=y
> CONFIG_BLK_DEV_MD=y
> CONFIG_BLK_DEV_DM=y
> CONFIG_DM_MIRROR=y
> CONFIG_DM_ZERO=y
> CONFIG_FUSION=y
> CONFIG_FUSION_SAS=y
> CONFIG_MACINTOSH_DRIVERS=y
> CONFIG_MAC_EMUMOUSEBTN=y
> CONFIG_NETDEVICES=y
> CONFIG_NETCONSOLE=y
> CONFIG_BNX2=y
> CONFIG_TIGON3=y
> CONFIG_NET_TULIP=y
> CONFIG_E100=y
> CONFIG_E1000=y
> CONFIG_E1000E=y
> CONFIG_SKY2=y
> CONFIG_NE2K_PCI=y
> CONFIG_FORCEDETH=y
> CONFIG_8139TOO=y
> # CONFIG_8139TOO_PIO is not set
> CONFIG_R8169=y
> CONFIG_FDDI=y
> CONFIG_INPUT_POLLDEV=y
> CONFIG_INPUT_EVDEV=y
> CONFIG_INPUT_JOYSTICK=y
> CONFIG_INPUT_TABLET=y
> CONFIG_INPUT_TOUCHSCREEN=y
> CONFIG_INPUT_MISC=y
> # CONFIG_LEGACY_PTYS is not set
> CONFIG_SERIAL_NONSTANDARD=y
> CONFIG_SERIAL_8250=y
> CONFIG_SERIAL_8250_CONSOLE=y
> CONFIG_SERIAL_8250_NR_UARTS=32
> CONFIG_SERIAL_8250_EXTENDED=y
> CONFIG_SERIAL_8250_MANY_PORTS=y
> CONFIG_SERIAL_8250_SHARE_IRQ=y
> CONFIG_SERIAL_8250_DETECT_IRQ=y
> CONFIG_SERIAL_8250_RSA=y
> CONFIG_HW_RANDOM=y
> CONFIG_NVRAM=y
> CONFIG_HPET=y
> # CONFIG_HPET_MMAP is not set
> CONFIG_I2C_I801=y
> CONFIG_WATCHDOG=y
> CONFIG_AGP=y
> CONFIG_AGP_AMD64=y
> CONFIG_AGP_INTEL=y
> CONFIG_DRM=y
> CONFIG_DRM_I915=y
> CONFIG_FB_MODE_HELPERS=y
> CONFIG_FB_TILEBLITTING=y
> CONFIG_FB_EFI=y
> CONFIG_VGACON_SOFT_SCROLLBACK=y
> CONFIG_FRAMEBUFFER_CONSOLE=y
> CONFIG_LOGO=y
> # CONFIG_LOGO_LINUX_MONO is not set
> # CONFIG_LOGO_LINUX_VGA16 is not set
> CONFIG_SOUND=y
> CONFIG_SND=y
> CONFIG_SND_HRTIMER=y
> CONFIG_SND_SEQUENCER=y
> CONFIG_SND_SEQ_DUMMY=y
> CONFIG_SND_HDA_INTEL=y
> CONFIG_SND_HDA_HWDEP=y
> CONFIG_HIDRAW=y
> CONFIG_HID_A4TECH=y
> CONFIG_HID_APPLE=y
> CONFIG_HID_BELKIN=y
> CONFIG_HID_CHERRY=y
> CONFIG_HID_CHICONY=y
> CONFIG_HID_CYPRESS=y
> CONFIG_HID_EZKEY=y
> CONFIG_HID_GYRATION=y
> CONFIG_HID_ITE=y
> CONFIG_HID_KENSINGTON=y
> CONFIG_HID_LOGITECH=y
> CONFIG_LOGITECH_FF=y
> CONFIG_HID_REDRAGON=y
> CONFIG_HID_MICROSOFT=y
> CONFIG_HID_MONTEREY=y
> CONFIG_HID_NTRIG=y
> CONFIG_HID_PANTHERLORD=y
> CONFIG_PANTHERLORD_FF=y
> CONFIG_HID_PETALYNX=y
> CONFIG_HID_SAMSUNG=y
> CONFIG_HID_SONY=y
> CONFIG_HID_SUNPLUS=y
> CONFIG_HID_TOPSEED=y
> CONFIG_HID_PID=y
> CONFIG_USB_HIDDEV=y
> CONFIG_USB=y
> CONFIG_USB_ANNOUNCE_NEW_DEVICES=y
> CONFIG_USB_MON=y
> CONFIG_USB_XHCI_HCD=y
> CONFIG_USB_EHCI_HCD=y
> CONFIG_USB_OHCI_HCD=y
> CONFIG_USB_UHCI_HCD=y
> CONFIG_USB_PRINTER=y
> CONFIG_USB_STORAGE=y
> CONFIG_USB_UAS=y
> CONFIG_USB_TEST=y
> CONFIG_USB_EHSET_TEST_FIXTURE=y
> CONFIG_USB_LINK_LAYER_TEST=y
> CONFIG_MMC=y
> CONFIG_MMC_SDHCI=y
> CONFIG_MMC_SDHCI_PCI=y
> CONFIG_EDAC=y
> CONFIG_RTC_CLASS=y
> # CONFIG_RTC_HCTOSYS is not set
> CONFIG_DMADEVICES=y
> CONFIG_DMATEST=y
> CONFIG_VIRTIO_PCI=y
> CONFIG_VIRTIO_BALLOON=y
> CONFIG_VIRTIO_MMIO=y
> CONFIG_EEEPC_LAPTOP=y
> CONFIG_EXT3_FS=y
> CONFIG_EXT4_FS_POSIX_ACL=y
> CONFIG_EXT4_FS_SECURITY=y
> CONFIG_EXT4_KUNIT_TESTS=y
> CONFIG_BTRFS_FS=y
> CONFIG_QUOTA=y
> CONFIG_QUOTA_NETLINK_INTERFACE=y
> # CONFIG_PRINT_QUOTA_WARNING is not set
> CONFIG_QFMT_V2=y
> CONFIG_AUTOFS4_FS=y
> CONFIG_ISO9660_FS=y
> CONFIG_JOLIET=y
> CONFIG_ZISOFS=y
> CONFIG_MSDOS_FS=y
> CONFIG_VFAT_FS=y
> CONFIG_PROC_KCORE=y
> CONFIG_TMPFS_POSIX_ACL=y
> CONFIG_HUGETLBFS=y
> CONFIG_SQUASHFS=y
> CONFIG_SQUASHFS_XATTR=y
> CONFIG_SQUASHFS_4K_DEVBLK_SIZE=y
> CONFIG_NFS_FS=y
> CONFIG_NFS_V3_ACL=y
> CONFIG_NFS_V4=y
> CONFIG_ROOT_NFS=y
> CONFIG_NLS_DEFAULT="utf8"
> CONFIG_NLS_CODEPAGE_437=y
> CONFIG_NLS_ASCII=y
> CONFIG_NLS_ISO8859_1=y
> CONFIG_NLS_UTF8=y
> CONFIG_SECURITY=y
> CONFIG_SECURITY_NETWORK=y
> CONFIG_SECURITY_SELINUX=y
> CONFIG_SECURITY_SELINUX_BOOTPARAM=y
> CONFIG_SECURITY_SELINUX_DISABLE=y
> # CONFIG_CRYPTO_MANAGER_DISABLE_TESTS is not set
> CONFIG_CRC32_SELFTEST=y
> CONFIG_GLOB_SELFTEST=y
> CONFIG_STRING_SELFTEST=y
> CONFIG_PRINTK_TIME=y
> CONFIG_FRAME_WARN=1024
> CONFIG_MAGIC_SYSRQ=y
> CONFIG_DEBUG_RODATA_TEST=y
> CONFIG_DEBUG_STACK_USAGE=y
> CONFIG_DEBUG_MEMORY_INIT=y
> # CONFIG_SCHED_DEBUG is not set
> CONFIG_SCHEDSTATS=y
> CONFIG_PROVE_LOCKING=y
> CONFIG_DEBUG_LOCKDEP=y
> CONFIG_DEBUG_ATOMIC_SLEEP=y
> CONFIG_DEBUG_LOCKING_API_SELFTESTS=y
> CONFIG_WW_MUTEX_SELFTEST=y
> CONFIG_DEBUG_LIST=y
> CONFIG_RCU_EQS_DEBUG=y
> CONFIG_BLK_DEV_IO_TRACE=y
> CONFIG_PROVIDE_OHCI1394_DMA_INIT=y
> CONFIG_EARLY_PRINTK_DBGP=y
> CONFIG_DEBUG_TLBFLUSH=y
> CONFIG_DEBUG_BOOT_PARAMS=y
> CONFIG_DEBUG_NMI_SELFTEST=y
> CONFIG_UNWINDER_FRAME_POINTER=y
> CONFIG_KUNIT=y
> CONFIG_KUNIT_TEST=y
> CONFIG_TEST_SORT=y
> CONFIG_RBTREE_TEST=y
> CONFIG_INTERVAL_TREE_TEST=y
> CONFIG_TEST_BITMAP=y
> CONFIG_TEST_UUID=y
> CONFIG_TEST_FIRMWARE=y
> CONFIG_TEST_SYSCTL=y
> CONFIG_SYSCTL_KUNIT_TEST=y
> CONFIG_LIST_KUNIT_TEST=y

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
