Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1667518983B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 10:44:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2dHFQBuDIm+HQFW11Wh+3JDd/s9WHX5ljbaacWFgpjw=; b=oGF/4qdQQwqwqt
	U6PMn54rG2s1krxydA9LPDzDaaN06aMRER+Frk5VZEGSlbwXPbsai80aj71MlZw/0W2dFRgO/+DJd
	43RQn3OZ+VFK+tpMsVoOxRLpPKRT1wL+Qx6Kst9w8BhnH+JrQdBM5aa+WTwFIfrNAUsqaxcqAh89s
	DxnIQSdYiYNgcU6M0lzGHOqA7BVEhBqyJAYVhvpsK8y2UMqhp7tSe7S/+ZFh0I1HN6RMDfvZutuX3
	CtL1hS/3aH8XmhOgMlPah1Yg366sDaHLtkQG0VyQZCZSKb8pQBpdqJU4J+LTs3ki/yDa9s+qrNudO
	LUR6Suillgq9gv9sszsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEVFl-0001SM-0b; Wed, 18 Mar 2020 09:44:45 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEVFc-0001Rh-4Q
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 09:44:37 +0000
Received: from mail-qv1-f45.google.com ([209.85.219.45]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M8hIl-1j9qQC2IFt-004nYz for <linux-arm-kernel@lists.infradead.org>; Wed,
 18 Mar 2020 10:44:33 +0100
Received: by mail-qv1-f45.google.com with SMTP id h20so8577527qvr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 02:44:33 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0fG+6AX0cMy047Zdce94Yi2L9ebII6TMfuKhSnZRKixOXDOG86
 bQp7IKB6+mMbdf1s7M6hW79chAR6tyaNwuT8+To=
X-Google-Smtp-Source: ADFU+vtLo+GOWNxMC15V2TiH90BEPvu2JmMbmtc3AvFP8wu5z0vI2xAgHqQbsb7yudqWQcePXGno6172j7v0a1xP4uw=
X-Received: by 2002:a0c:a602:: with SMTP id s2mr3333321qva.222.1584524672422; 
 Wed, 18 Mar 2020 02:44:32 -0700 (PDT)
MIME-Version: 1.0
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-8-git-send-email-mikelley@microsoft.com>
 <CAK8P3a0+uBsurfQ4smjPDGkJQSkMe-TxJ4cWR_EZXgDR4-bAWQ@mail.gmail.com>
 <MW2PR2101MB1052281E5B197F2AA8E4D622D7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
In-Reply-To: <MW2PR2101MB1052281E5B197F2AA8E4D622D7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 18 Mar 2020 10:44:16 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2fzFdXoMKz_-Bryq0HUar=Tgs7SwJL4JFw2_KjzpOPdg@mail.gmail.com>
Message-ID: <CAK8P3a2fzFdXoMKz_-Bryq0HUar=Tgs7SwJL4JFw2_KjzpOPdg@mail.gmail.com>
Subject: Re: [PATCH v6 07/10] arm64: hyperv: Initialize hypervisor on boot
To: Michael Kelley <mikelley@microsoft.com>
X-Provags-ID: V03:K1:BjmO55CThJUvBKaV9mGGQdjCM5DUiYwUeN2xmTt3qN4u90W0Z61
 sso9KUKQsds8qHas7kWoE0ZLqngxDd4QzBSI7iD3aS2j0YPmh3VLrCNWnK4KHmTqaJa6gbQ
 xUWy3i2ZDtSJkqjSU1EOBL9Xt+ZCw/7ll75MXYg9pHKf5iR7OO9rLGqfHNYDuD6EJK999u3
 qhM5I+BMHwLKl3fv1nOiQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RHgvtXwhKDU=:FRzlibRl1WPus41jMJUefA
 XN8Q7UPwRyH6F7Q9FuE9AKfkWU43k37R/45HbxFMQ7lU48Fy5miLs4+Gu5em+Bwcj7kz7P44T
 Q2Yq+Fw0ic7SUJ4fxesox8FATP1tNBT72A5NgVJyZM59YaRTes+Fcs9ZkpNzEH5Mk7RwXeUnw
 0XCnpx1myU5T4MoRJj7sZspxYtJCBGso4Uu7MUbODtwFsdduBT9oZxxnjDen8Sikq4nFvzyrv
 1a57wtsX/5F0AUQxzov9ENJVSl9Hvxj+I7M/W4To+PS+mJLyeYgr8kvD7fz3klFbMa+Pt3ySi
 RVmJYJsSHtzfQB57TxsTdpvJvs2q/Rxo+aBbUsoGQKYkUWfrnFjHm7eZBC6iipD+hs8H3uWWo
 IQcC4zxB2vKtXDnCUs5wxRyTJrww0a5dPlNyhgrZUkU0yFXSjN28LPTi6B9pGLdgTPKvFb5T6
 I3qGmvQAcmQ4X2JToKICsxjyJmONZDFElDy3ZR/VYe0tZHBt67gtd3IxRL7x/i00cMmYxnvLR
 4hAzrERo3oCSlJOwadR3NQV+qeW9AYkutp84/z/TaiPKwARisRSa2olyJ1YM+9YkTHrm205BT
 vSQVRLhXxsW9wi4Q3Fge9KLqrZ7SmvLmDB8FVFe9gbQ0kT+vLUpqhax6lh17NbM3b55RB5rt0
 nS3SNpZhslOoAGZpbxV9bEjGyVOsMnpbu7KOJH9y+VoAoDuGFYnU8nRPwNPJ1/rdX3PRRmlWW
 PelEcSUDc3LqYr9vXSL9RDRH2KfCpHsSxnlaIWedSyqK+LdpvBvtQD6tq3nXbYMv1BhTsUlWz
 xn5ieQ/8l/17tAT8qXO4wLpbs6YZhZiLli9phR1qNdeduTH+6s=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_024436_470342_B5629541 
X-CRM114-Status: GOOD (  23.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 linux-efi <linux-efi@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jason Wang <jasowang@redhat.com>,
 KY Srinivasan <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Sunil Muthuswamy <sunilmut@microsoft.com>,
 linux-arch <linux-arch@vger.kernel.org>, Marc Zyngier <maz@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>, Boqun Feng <boqun.feng@gmail.com>,
 John Stultz <john.stultz@linaro.org>, Andy Whitcroft <apw@canonical.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>, gregkh <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 vkuznets <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 1:18 AM Michael Kelley <mikelley@microsoft.com> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de> Sent: Monday, March 16, 2020 1:30 AM
> >
> > As you are effectively adding a new clocksource driver here, please move the
> > code to drivers/clocksource and send the patch to the respective maintainers
> > (added to Cc here), splitting it out from the rest of the patch.
> >
> > You should also describe why your platform doesn't just use the normal
> > architected timer interface.
> >
> > > +TIMER_ACPI_DECLARE(hyperv, ACPI_SIG_GTDT, hyperv_init);
> >
> > This looks like it registers a driver for the same device as the normal
> > arch timer. Won't that clash?
>
> There is a Hyper-V clocksource driver in drivers/clocksource/hyperv_timer.c.
> It is architecture independent and works for both x86 and ARM64.
>
> The requirement here is really for a place to hang the general Hyper-V
> initialization code.   On the x86 side, there's infrastructure already in place
> to do hypervisor initialization, but nothing corresponding on the ARM64 side.
> The TIMER_ACPI_DECLARE hook is admittedly a temporary approach, and I'm
> happy to hear if someone has a better way to handle this.
>
> FWIW, Hyper-V doesn't currently virtualize the ARM arch counter/timer for
> guest VMs.  The Hyper-V synthetic counter/timer in the Hyper-V clocksource
> driver is used on both ARM64 and x86.  But this Hyper-V init code doesn't actually
> touch the GTDT device, so it won't interfere with the ARM arch counter/timer
> when a future Hyper-V version does virtualize it.

I don't have a good idea to solve it, just a few more thoughts:

- if your platform does not actually provide the generic timer, then the
  ACPI tables should not list one either. Instead, create a separate
  description for your custom timer, and have that added to the ACPI
  spec.

- To treat the timer more like a normal driver, better have the
   TIMER_ACPI_DECLARE() function live only in the driver itself,
   and use an early initcall (arch_initcall, subsys_initcall, etc)
   it initialize the rest as late as you can.

- Some of the other code added to arch/arm64/ might be able to
  live in drivers/virt/hyperv in order to be shared between x86 and
  arm64. (No idea how much of it there is).

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
