Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD1CA9D80
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:49:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nPKnh6DaG6d+NawCL3kyJkpW1pQYJQVyh6lxxr+jkXU=; b=XWkeeEkk40tdJHfHeecB0nikr
	woP4ymXhZ4VwrOYdHcyADTCvi4/I9qeJZ71pap19VxYmNM5TI8vNYs1LYX5PT62bQ+Otvy6XbqMHJ
	SF6X7lgAtlT+TTIY+sV6YhGDjT75Fqv48RnqKpW4v7pzKMbv7sKWC/haR++uJuQsa0ZHfKFlUXG5y
	r3mDnP9b0JP9IWgT6fvFD/q/9w/ZqHy8PE6STASrTHXoLDTmc+g0BcTSyBSbMVn7OWgcJh9h1sBF4
	mzzdUesrIo0dACdiwQTEseKHI8hPekrNYsX/8UoeFEo5PxjniaAM8CvQ8tXEWZmthR9d85njzmpH4
	42VDL7zUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nRt-0005hr-6R; Thu, 05 Sep 2019 08:49:01 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nRh-0005hW-AS
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 08:48:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1567673320;
 bh=shlqMDrOPL2mFQcbMrl3Dmhn8G7cJYEwFhacKBjb9uk=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=VjwV1nM5HPPWdBdmj0Bw9BD8tUUlZ3FOcTPMicBGoDUUnhHz7zrG+LwuLnUP0e/gU
 dOeF2C6L3cHdCPF6BHsXylSaC6O1JAdQGFE6BO9GRTEQ5jCFZTHe/WLXaENUJ4C+IP
 vduDGfY29gfawgXia3MkfAxYxaW3xgdvtTLTWTRM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.123.51] ([84.118.159.3]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0MMpYB-1i5Wzw3GSl-008ZJA; Thu, 05
 Sep 2019 10:48:39 +0200
Subject: Re: [PATCH 1/1] KVM: inject data abort if instruction cannot be
 decoded
To: Peter Maydell <peter.maydell@linaro.org>, Marc Zyngier <maz@kernel.org>
References: <20190904180736.29009-1-xypron.glpk@gmx.de>
 <86r24vrwyh.wl-maz@kernel.org>
 <CAFEAcA-mc6cLmRGdGNOBR0PC1f_VBjvTdAL6xYtKjApx3NoPgQ@mail.gmail.com>
From: Heinrich Schuchardt <xypron.glpk@gmx.de>
Message-ID: <a65029ac-a10d-35cb-97a1-70a786db9ddf@gmx.de>
Date: Thu, 5 Sep 2019 10:48:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAFEAcA-mc6cLmRGdGNOBR0PC1f_VBjvTdAL6xYtKjApx3NoPgQ@mail.gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:KxYUVwdwyV1sgcHyPJ9Y1C3193d8A9orrGeFRwziwaWw1v+3X7Y
 O5NZp0DxxFeMqvZaV1/ZSIEBlpH0lCwoSIMdq5vrOPkMIpFNv2P8t1eqsWMyDavj6V46I7z
 GaUVCnRKvOtVMmaNJ7uSBLld0LnIDj0ax5WeS1wc7/GBosx6Aq6qm1/ha9OluHZq3GOZ0SB
 jtuxt32IhbCU1Du6eZ2ww==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zbIUV7C6j3s=:lOzWjIAKXP73Hcz0gQnMG+
 PNSuwte4nimIq7L1qzyDL4veP4IPcMkxTz/I0DyBEE+QojSiD6gYTMPFrgvzGkOhP+J9AA0KM
 39OW2AQn0sLZV7RtAiyCxo7fs+YQjVv9V0sP6zsEmMd2TkZOSk6/Q1IRGIecWIy9sA8FTB/mE
 rLdpkApY5zvBda8z+MZGCwpN/a+uaTwmhiONGlUTBqcyyBbQBBM0RnM8rq60HPkXVoHQB5K7X
 gUzfJjiDlo8pp6qbotmMlpYChLCtcYBdCzAChFsrftHaedexzPRVWOSIRKnFe003ig2APn62G
 YVifG4NqQkmtuhR5mWmzysmtwYKvzQoa9pT0Cnj75iC2jbpSumfuxLANat0tO0LtmKsThbeXC
 kQ/BypnVguqmZOs77gh4E17Inw6Z2f/6bOfUUYTrcEHMasl6Qh4OEbfxJhGj09yyoeCFupzJD
 om7AqNFhmceqxOYRDTZQD2OwbfHC2rAGyRyrNG6Ero8hWVVsv/2HqloW5VXgghXDw9NeK26fo
 JqMDh0ygkyAnCTZ67CZa0ROxzM0rFj7kbPogjQ+Ha1OaVTpqNHdIEKhM4QfQNx6RMGrpOHAhL
 lt9srD9U2VXGIePTlU9USGP1B7uBZS3xE8sxykjlZtbrRn24qc2YQfPM9OP/++hogYj88Bxen
 IKX69orI2ng3no6Zw0a8dfbf8KFMEhEqUOolgT4T/tBvpNlKu9giMnlqM6VTY3I6R+8JYMZ4U
 D6e+8M6JQQamt/7bujo1UVvb4pA7RUn7yyysD3BeteEtTCrzvsEmcD2NiRpcSzW3Xa6RQzzuH
 w2lgV0oBCj6tbQgvPcpdq17PPBS3QLcSELQ7YSCgs4kHPW6y9e/DVhH0B+pfsp6jhmcrLER32
 W7Wdga5VmXMijVgR64OkBPMZRGrO+QBJHk4hmPjgDfbTc6qppRp2xcEBBuxIKdos45dS7FWxw
 Vu4vhcPRaE7nhEuW4+mbKKn1+EPXK/3Mrue1e03HnZY2kqC1rNmVxJKFG2lFLwoNMxX8rTanv
 0AwymqKXVItoqqHIU1o4haYjA4gwGouI6I/iqnvw6MbCBDa/Noanb922sHCZQmiNCctQhxXnG
 N7rwYxkh/8mKDuCTA4oY0+/bBKlNsTo2P8i4o6aqQ/iSQbQnk3Ll6L/7uWRukS8e5N4Z92T6G
 dghUzZTzeNknRCurHvlvOD3ew5sRt7N860zt9vjHGP9oZ5FrvqrcusOS8hZ6q513cnza+1ZDW
 JROa5SVVQse+umGt0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_014849_662810_65538DB2 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (xypron.glpk[at]gmx.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?Q?Daniel_P_=2e_Berrang=c3=a9?= <berrange@redhat.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Julien Thierry <julien.thierry@arm.com>,
 lkml - Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>, Stefan Hajnoczi <stefanha@redhat.com>,
 kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/5/19 10:16 AM, Peter Maydell wrote:
> On Thu, 5 Sep 2019 at 09:04, Marc Zyngier <maz@kernel.org> wrote:
>> How can you tell that the access would fault? You have no idea at that
>> stage (the kernel doesn't know about the MMIO ranges that userspace
>> handles). All you know is that you're faced with a memory access that
>> you cannot emulate in the kernel. Injecting a data abort at that stage
>> is not something that the architecture allows.
>
> To be fair, locking up the whole CPU (which is effectively
> what the kvm_err/ENOSYS is going to do to the VM) isn't
> something the architecture allows either :-)
>
>> Of course, the best thing would be to actually fix the guest so that
>> it doesn't use non-emulatable MMIO accesses. In general, that the sign
>> of a bug in low-level accessors.
>
> This is true, but the problem is that barfing out to userspace
> makes it harder to debug the guest because it means that
> the VM is immediately destroyed, whereas AIUI if we
> inject some kind of exception then (assuming you're set up
> to do kernel-debug via gdbstub) you can actually examine
> the offending guest code with a debugger because at least
> your VM is still around to inspect...

Stopping the CPU and debugging is not what I am interested in. I want
the QEMU guest to be able to react to an incorrect memory access.

Imagine Apollo 11's computer not restarting when hitting an exception.
They would never have reached the moon. - I think allowing an emulation
guest to react to an exception, e.g. by resetting, is a necessity.

In my case U-Boot as a guest creates an output like the one below when a
data abort occurs:

"Synchronous Abort" handler, esr 0x02000000
elr: fffffffffdeac19c lr : fffffffffdeac19c (reloc)
elr: 000000007ddd719c lr : 000000007ddd719c
x0 : 0000000000000000 x1 : 000000007ffbc000
x2 : 000000000000000a x3 : 000000007ffbcd80
x4 : 0000000000002800 x5 : 000000007ffbcdb0
x6 : 0000000000000001 x7 : 000000007eef8b80
x8 : 000000000000003f x9 : 0000000000000004
x10: 0000000000000001 x11: 000000000000000d
x12: 0000000000000006 x13: 000000000001869f
x14: 0000000047f00000 x15: 0000000000000000
x16: 000000007ff5b194 x17: 0000000000000000
x18: 0000000000000000 x19: 000000007ffbcd30
x20: 0000000000000000 x21: 000000007ffeb000
x22: 0000000000000009 x23: 000000007eef5cf0
x24: 0000000000000000 x25: 000000007ffa7806
x26: 000000007ffa7834 x27: 0000000000000024
x28: 000000007dddd040 x29: 000000007ede9990

UEFI image [0x000000007ddd7000:0x000000007ddd749f] pc=0x19c '/bug.efi'
Resetting CPU ...

With this information I see that the problem occurred at 0x019C from the
start of the loaded binary bug.efi. Next thing is to look at the map
file of bug.efi to find out in which instruction the problem occurred.

After providing the dump U-Boot continues to reset the system.

When U-Boot is running the EDK II SCT (a test suite for UEFI firmware),
SCT will log that a restart occurred (indicating that a test failed) and
continue to run the next test.

Best regards

Heinrich

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
