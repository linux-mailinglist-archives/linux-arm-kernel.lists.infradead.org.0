Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D723D18D462
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 17:29:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v+S6hExPmvVOXZZxtJ7494vQEyViMvJy8kAPPn0b83s=; b=MrCQbysUCmvw1V
	IAqxiZM/BgbSR5TjSGhjLdxRXLtSNqJN25vtuBisyXDluoMgoJLBN6C2qgbdC2x43VBVJAAqO6tzL
	Co//wpBdu7+Tof5jebw/dN1WWDiPtQycUHIs74cX/tu++Ca7HkOQrMIc4K3O2njME+yi/pLvd31Ka
	tABBfkpJVYD0lifA1ejgLkaUTgGq+u5TpG+5jLgSjWRf4jpuE67/PCEpklv0H66VrPeYVh2iwapqK
	OJZUjHuPMYmN/LRk8dHk6M3CpCqq1Rx1u8YuGRk5tLj8j1NW71jXtY9UVK6bXi2yHqGf8ZkFnVX9W
	txMmZfgOQWjyWmgvfPQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFKVx-0001ry-Lk; Fri, 20 Mar 2020 16:28:53 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFKVo-0001r4-V6
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 16:28:46 +0000
Received: from mail-lj1-f172.google.com ([209.85.208.172]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MFK8N-1j4Zva0JC5-00Fk3A for <linux-arm-kernel@lists.infradead.org>; Fri,
 20 Mar 2020 17:28:39 +0100
Received: by mail-lj1-f172.google.com with SMTP id g12so7092905ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 09:28:39 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3cXqRkEUv9lHnghe/r5Cd5sZvbLzfPIBeV4PRwJQ6N3awRDynr
 1rtW4hhyCoWTqph8j1xmxZi+FR0KQykmx/2sNRA=
X-Google-Smtp-Source: ADFU+vvpQzCbtjOU/ac9luh0iy3YFl0a9lDUyyVpQqCoBSJMe7aSkeTdT1zPnEUT/etuCU6Df1Q0pOh+XidX5WSpNxk=
X-Received: by 2002:a2e:811a:: with SMTP id d26mr5709626ljg.128.1584721718522; 
 Fri, 20 Mar 2020 09:28:38 -0700 (PDT)
MIME-Version: 1.0
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-5-git-send-email-mikelley@microsoft.com>
 <CAK8P3a2Hnm74aUMNFHbjMr4HwHGZn1+xa4ERsxAJY6hMzhEOhQ@mail.gmail.com>
 <632eb459dbe53a9b69df2a4f030a755b@kernel.org>
 <CAK8P3a3aihZeriUWAhWJMsOtdiY4Lo29syrRbB4Po3v4dsLhvA@mail.gmail.com>
 <MW2PR2101MB1052D91D3A9CEEBD7E2EA82FD7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
 <CAK8P3a2AO4k3vJ7WuJQz7ick+XPgGY3Jfk8-ROqtwyNs0nWkDA@mail.gmail.com>
 <MW2PR2101MB10520CEF065A41EEBC17FFC2D7F40@MW2PR2101MB1052.namprd21.prod.outlook.com>
In-Reply-To: <MW2PR2101MB10520CEF065A41EEBC17FFC2D7F40@MW2PR2101MB1052.namprd21.prod.outlook.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 20 Mar 2020 17:28:22 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1MfYDTiQ9j0o3tnd=ymZukPoSmuExLhEMRR+GRwVD7xA@mail.gmail.com>
Message-ID: <CAK8P3a1MfYDTiQ9j0o3tnd=ymZukPoSmuExLhEMRR+GRwVD7xA@mail.gmail.com>
Subject: Re: [PATCH v6 04/10] arm64: hyperv: Add memory alloc/free functions
 for Hyper-V size pages
To: Michael Kelley <mikelley@microsoft.com>
X-Provags-ID: V03:K1:J+R71t0PPRQdEME84oEiQYS6PjOmfGiqE06kxqrbL1b9zIyKpCn
 2KtkLVjzocwnLm8jWMKuPPR1+snPxYLsrKMj0D5bycHP3cRrZr0OQJ+FWyHIhl+DAmi+X8Q
 0hRU+MiEUrMr5PYD8gGicB9GyEuF+pIma1lN/3WEGODYAykZLRGbIwbQkusDmcyp4IV9Ki7
 Wbm65WEYlQsHDNG+lnCgA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Es/f2wT4hD8=:Hqb3LwUooA5iTd6xKYonjn
 5LByXBWpqx+o3xDusUwgn97jGNy9JNV5N2XnuOrrnDD9/1sI0B6KK40SGDGCloaw9SbpXCDE7
 1O4YyI9RQUG+HLWUmOuGD0hFJdLnFZmSGoKVvtvMSviabN2EHwfBHRFx5TlhhYG+pJSWB2+mE
 EfdxJRpkEr8Mneqv8qKeKBAHGbz6E9S3eQPLI2XiDLIUGC3JSbPe0ehCwVMvmlgp+GueYFwD2
 9GVVvRyVAKM72qMU3utCBz7lEG3t0rKg5G1mhd53QhRkhmATl4+d4ohJralF2t+PtUXyPlmqm
 AYvoCnhk984VgCHKzKYJ2Gi+D5VCcjword197MMUwFckHSh98+B7uHGYmZ77S0Kx0YOeIsm2x
 v8rKLyT4gNQB1WeqTyf9HGI8cg6d5X0Vn4l/OwVWOeZDNVA8a+H7nok3k75VU5chGvWnEDa6+
 xmoy5BfQhuPay1Wua3WgeQ5s9JzEEo+Jyd31qnX5RH0yMmhlRb746z7XIMwxiEVVFlFyLsixa
 Bt9s6ZPCdVpa6qPbYHfIXiYPdDUhlVXpMydDSvTx93aapW/qKU+mHEbjX54Zmzwe2WNzsqHoj
 4NuM17edrX16zGDsCBNpKtPwkhObrA8bXXi8v+s1lRilyNTuZ6vBOs8sVV+KvniDZ1FTmofET
 k2IDni3AYq/Fnw0w6dyYXOUn26/v4cwnZWbj3KOXJn6wxfRJZoyaTo0kmwhDcIN3PTxBti+eH
 +aP5lRPni5txzsekyoSKPRdsla92EGUvXVxfq4p5+iKK0bZiFJT6PhtpwEJwutbo2XoHJVGJn
 xg4CCTzRwYyqlZ34+TiX41kTEM3tuLUV1kU0BsLSA9ZsSPfA0Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_092845_296738_782ADD56 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-arch <linux-arch@vger.kernel.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 linux-efi <linux-efi@vger.kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 gregkh <gregkh@linuxfoundation.org>, Marc Zyngier <maz@kernel.org>,
 Jason Wang <jasowang@redhat.com>, Sunil Muthuswamy <sunilmut@microsoft.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Andy Whitcroft <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 KY Srinivasan <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 10:43 PM Michael Kelley <mikelley@microsoft.com> wrote:
> From: Arnd Bergmann <arnd@arndb.de> Sent: Wednesday, March 18, 2020 2:58 AM
> > On Wed, Mar 18, 2020 at 1:15 AM Michael Kelley <mikelley@microsoft.com> wrote:
> > My point was to keep the functions but use alloc_pages() internally,
> > so you can deal with the hypervisor having a larger page size than
> > the guest, which seems to be a more important scenario if I correctly
> > understand the differences between the way Windows and Linux
> > deal with page cache.
>
> OK, I see now what you are getting at.  I should spell out my
> assumption, which is the opposite.  Hyper-V won't have a page
> size other than 4K anytime in the foreseeable future.  The
> code is too wedded to the x86 4K page size, and the host-guest
> interfaces have a lot of implicit assumptions that the page size is
> 4K (unfortunately).  But the last time I looked, RHEL for ARM64 is
> delivered with a 64K page size.  So my assumption is that the only
> combination that really matters is the guest page size being larger
> than the Hyper-V page size.  The other way around just won't
> happen without a major overhaul to Hyper-V, including a rework
> of the guest-host interface.

Ok, got it. We should really ask Red Hat to change the page size,
but as long as you care existing systems, and you expect this to
result in gigabytes of allocation on future systems, having the
wrapper seems reasonable.

Maybe you could fall back to alloc_page when PAGE_SIZE equals
HV_HYP_PAGE_SIZE though? I'm not sure what the tradeoff
between kmalloc and alloc_page is these days, other than the
feeling that alloc_page is the more obvious choice when you know
you always want exactly a page here.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
