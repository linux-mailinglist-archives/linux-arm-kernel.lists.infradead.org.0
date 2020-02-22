Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB76E1691E6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 22:32:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1K8a7L2Z7ZWQyLWEYixbKI+yYxncUQH7wHF+y9UmF4=; b=tHZdq+8B1HDYdQ
	+q2tK+DstZkwNadjEFsVP80Wh6LiporwB9URrHDuKzaFim8NqBJ3FXbPcusJ/6KQTiY1d+1nawhEM
	7kPQw5Vrvm0zm+wTpCBj1x04LAyQS0VaVZAGMy+Ig3SD8BnEmEexhDS6SNWzvKVwTB6o0eJ2WBLrU
	aAnp7IhCVjKlOQ316M+7lgGtF6qcM+js05pYsnUOoPtlPk2KQ5dWNpzaCX0YU0KfT1SWu3EdW0ejm
	meVMQ2U0hza60t9yfVFbjDkxl78yuR5qeI1vqPNM4WmxbxteY+DGIPxBD7QPP10OzAuaBzzGOaoR+
	tkTROIlwFav9MBiMLMlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5cNh-0002q3-O7; Sat, 22 Feb 2020 21:32:13 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5cNV-0002ow-9l
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 21:32:03 +0000
Received: from mail-lf1-f49.google.com ([209.85.167.49]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MQ5jC-1ijfeC2UWe-00M6Lu for <linux-arm-kernel@lists.infradead.org>; Sat,
 22 Feb 2020 22:31:52 +0100
Received: by mail-lf1-f49.google.com with SMTP id 7so4045341lfz.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 13:31:51 -0800 (PST)
X-Gm-Message-State: APjAAAXhLulIc6iJqn/+8U8msRE+i6b3OMbTKo8ywClaj4+QMFzFkUrD
 mZ385A016RDLYGuaFAR0nbLI0HrHjjJkl2rLEjU=
X-Google-Smtp-Source: APXvYqw08WaVpwqyvapB9jwmtZ9FkkkQyrz5uYJ12nY2XRMB6nrK7EaFW5taPH3fOq3Exia34Hd+8TSqfX93FnPLHNA=
X-Received: by 2002:ac2:5f62:: with SMTP id c2mr4862268lfc.207.1582407110902; 
 Sat, 22 Feb 2020 13:31:50 -0800 (PST)
MIME-Version: 1.0
References: <20200210141324.21090-1-maz@kernel.org>
 <20200222154030.5625fa5f.takashi@yoshi.email>
In-Reply-To: <20200222154030.5625fa5f.takashi@yoshi.email>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 22 Feb 2020 22:31:40 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3iaDqU7RRpoL2XyempBiKN8k22rNAM7C23n8JNpPm4qw@mail.gmail.com>
Message-ID: <CAK8P3a3iaDqU7RRpoL2XyempBiKN8k22rNAM7C23n8JNpPm4qw@mail.gmail.com>
Subject: Re: [RFC PATCH 0/5] Removing support for 32bit KVM/arm host
To: Takashi Yoshi <takashi@yoshi.email>
X-Provags-ID: V03:K1:INSxYxS3EfKBhKrjAg8YOzdaJ80sIWP2/7MXPuBaekg04BZC8zM
 4u2qFc/iSSKOWzB/fSQtHUsu0phHb1FOwlCAFfg6wYNd3WAOUfhGqWXt044PGBhO0fCpSFd
 ahkOMbs30XwxZY/F4jSrGfNX+jP/0fJiFi3RudMubbA732Hr/Tq382YaVGGJy08u7m9SOJU
 gnKgJG5hiNchnxZXPfisA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tKIG9PEum8U=:smWscvzp7KuVpnfv5UItAb
 EGdixgdcnRAD7FhMoEkGXS3srveSShbfx+Cx/Pc7X7tTWTLE48AwXz+g4A9Dn8HZnm1akPqhJ
 nOgvwSMi9WIGJlKOgfvAMz9E0y5GY4MYluDwCGw7UDQxVIkRg32YJeLVAmNhtpq53G5+cb81C
 NS+q/EPQ/TD4NG77n83Z0Q8owcVtzD2gPhkwXk/I/jGvLQ0EG/7LyCUISd4GETuFay4a8aY+7
 SHbezglSbX4R6duQdFx96xF2IEZFM1mAuDMPFBnhVo2dbG7mYb6I4txjAg5ClDumio0lUOXTh
 X1rJrXGVJRNTE4wwkymEZjPkanO5LcXiQEb8CLNDeSTYcOgVXCJF3xy3xnptwaUbUUcZkiyd6
 r2udAioHuUbeHA4twLrUd7LK0hepTW156+DzjPCArZuyljGOoLwD3t7iM6vxAuZEDn+H9Ox8H
 w3+9r5+hGQa1kgPjISxYAN0OEHEG08sqV7JhQn0P5o6i7rIvdraCGrHSP1EiSl9Gjmh9snUmQ
 VueXK0NHNa66DGhce6H/ClpWXvxcw054gzFODBSVZHXN8+7+/4OQEngDl0fyzAaY3J859VFwo
 UYSQ5zMQAwNX7ugpdC7Q6noc8hYaVmh4/bwruuOqtrBHTUUaqdQhRPSG3JvUOeJ42rsJ09JsZ
 jgZu9iwhOXudPGjuMOKdjkJk5CpMusJURLNjASaDKao/cJE9OUupX04oFMDhADiyvXFe2v1ju
 zi+04e9zu33DYXJR3V3sukOSbOmLksa7vVreRzBxc9egus2BmK6giNckM+1zs1eC9Mr/AGLcd
 NDCc3MxjTKKQASkRtQFXk7G5y+3VbnG7ZH5au96pYBcoL+uM1U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_133201_634457_1464D423 
X-CRM114-Status: GOOD (  29.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
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
Cc: Anders Berg <anders.berg@lsi.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Russell King <linux@arm.linux.org.uk>, kvm list <kvm@vger.kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Quentin Perret <qperret@google.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 22, 2020 at 3:40 PM Takashi Yoshi <takashi@yoshi.email> wrote:
> On Monday, 10.02.2020, 14:13 +0000 Marc Zyngier wrote:
> > KVM/arm was merged just over 7 years ago, and has lived a very quiet
> > life so far. It mostly works if you're prepared to deal with its
> > limitations, it has been a good prototype for the arm64 version,
> > but it suffers a few problems:
> >
> > - It is incomplete (no debug support, no PMU)
> > - It hasn't followed any of the architectural evolutions
> > - It has zero users (I don't count myself here)
>
> I might not be an important user, but I have been for multiple years
> and still am a regular user of KVM/arm32 on different devices.
>
> I use KVM on my Tegra K1 Chromebook for app development and have
> multiple SBCs at home on which I run VMs on using KVM+libvirt.
>
> Sure, neither of these devices has many resources available, but they
> are working fine. I would love to keep them in service since I haven't
> found arm64-based replacements that don't require hours upon hours of
> tinkering to just get a basic OS installation running with a mainline
> kernel.
>
> As an example that they can still be of use in 2020 I'd like to point
> out that one of the SBCs is running my DNS resolver, LDAP server,
> RSS reader, IRC bouncer, and shared todo list just fine, each in their
> separate VM.

Thank you for providing an important data point to this question.

> > - It is more and more getting in the way of new arm64 developments
> >
> > So here it is: unless someone screams and shows that they rely on
> > KVM/arm to be maintained upsteam, I'll remove 32bit host support
> > form the tree.
>
> *scream*
>
> > One of the reasons that makes me confident nobody is
> > using it is that I never receive *any* bug report. Yes, it is
> > perfect.
>
> This assumption is deeply flawed. Most users (including me) are not
> subscribed to this mailing list and will never find this thread at all.
> I myself stumbled upon this discussion just by chance while I was
> browsing the web trying to find something completely unrelated.
>
> I've been using KVM on x86, ppc and arm for many years, yet I never
> felt the need to report a bug on the mailing list.
> (This is to be interpreted as a compliment to the great work the devs
> of KVM have done!)
>
> Just going by the number of bugs reported on a developers mailing list
> is not going to paint an accurate picture.
>
> I am convinced that I'm not the only one relying on KVM/arm32 in the
> mainline kernel and would ask you to please reconsider keeping arm32 in
> the mainline kernel for a few more years until adequate arm64
> replacements are available on the market and have gained proper support
> in the mainline kernel.

Can you provide some more information about how you use KVM on 32-bit
machines, to make it possible to better estimate how many others might
do the same, and how long you will need to upgrade to newer kernels for?

In particular:

- What is the smallest amount of physical RAM that you have to found to
   make a usable ARM/KVM host? Note that the 4GB configuration of the
   Tegra K1 (an rk3288) Chromebooks seems to be extremely rare in other
   devices, while most new 32-bit SBCs come with 1GB or less these days.

- How often do you update the host kernels on those 32-bit machines that
  you still use to newer releases? What is the oldest/newest you run at the
  moment?

- Are you able to move the host installation to a distribution with a long-term
  stable release cycle such as Debian, Ubuntu that gives you a ~five year
  support after a kernel release?

         Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
