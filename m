Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D30168F60
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 15:40:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NkH72rHKTlUtdubQKwurK2fhWrPTDpQIYWZQS2bYkSA=; b=jtrOQWolKxbsuy
	dp9k4a+zengKS7j0IKTAPRnzF05rCyIdTMVRQBc8A4lmqIIPTgB0o2QFpfelNbOoSuvFEG6Qz9ocR
	g7zhiJi+YazYev58lqR7+KWpryZE97gxYWw3fN91EXUkWGhBJaOSGegQTvISkUVSdN2vmoN3cY1uX
	sZiZt75n0kNtXysyoNDxtYXmhGKh9QlDPijvMRJ6DAkqDEdb/h7iZR7fychAJS94NISnsQn/e4VPd
	FepQ0+MFrglHYW6caLzMExNTaEmlO70SXPwLKIpVPOfZqanPeCCCaHgyp5E6d4N0WoQUitBkpNn7H
	wR8LbWYmqzHhPtMZspmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5VxW-0005nc-Gk; Sat, 22 Feb 2020 14:40:46 +0000
Received: from mail-gateway-shared10.cyon.net ([194.126.200.61])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5VxN-0005nH-J8
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 14:40:39 +0000
Received: from s054.cyon.net ([149.126.4.63])
 by mail-gateway-shared10.cyon.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim)
 (envelope-from <takashi@yoshi.email>) id 1j5VxJ-0001zT-N4
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 15:40:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=yoshi.email
 ; s=default;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References
 :In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pY8QHspx3GjurZhopnwNDDR9kkSIXqX19Xrqh436IEY=; b=RVAIacea5JXySvXDZ/XPBnrpCC
 Y7j3kbj1i62sZwbvRVhYg8YlM+KKazyyoqSybS19W5Vb+AwWjakqPE/Xhr9ZB4p7FTFOHltRmjF1G
 6wLKBF9UW6aBu4itascnuSs9lb9WteYeO4OxeVihTdnDSi1jgY4cijRZOISsrx95Z5GcTaxEXXhtC
 xc54+Ies8Y2fuom7QTReHakdF9+VBHu218KWX9v1H8Qr0Kvt8Dbdzv00tScZBBew+p9WB827mRzBF
 Kkpr/y/rbb7fvI5rFkd35QwqwFhqAr7J9C7R0NGO3YRcEcC2Br3y8mV0kVw6UsFhQ0pL5JD3akk3b
 cO36zGgA==;
Received: from [10.20.10.233] (port=37274 helo=mail.cyon.ch)
 by s054.cyon.net with esmtpa (Exim 4.92)
 (envelope-from <takashi@yoshi.email>)
 id 1j5VxI-006jaL-BJ; Sat, 22 Feb 2020 15:40:32 +0100
Date: Sat, 22 Feb 2020 15:40:30 +0100
From: Takashi Yoshi <takashi@yoshi.email>
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
Subject: Re: [RFC PATCH 0/5] Removing support for 32bit KVM/arm host
Message-ID: <20200222154030.5625fa5f.takashi@yoshi.email>
In-Reply-To: <20200210141324.21090-1-maz@kernel.org>
References: <20200210141324.21090-1-maz@kernel.org>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; armv7a-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - s054.cyon.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - yoshi.email
X-Get-Message-Sender-Via: s054.cyon.net: authenticated_id: takashi@yoshi.email
X-Authenticated-Sender: s054.cyon.net: takashi@yoshi.email
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-OutGoing-Spam-Status: No, score=-1.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_064037_633538_C9080A29 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.126.200.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anders Berg <anders.berg@lsi.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Russell King <linux@arm.linux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Quentin Perret <qperret@google.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>, James Morse <james.morse@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

I found this mailing list thread and would like to express my opinion
and dependence on KVM/arm32.

I hope that I'm not too late already.


On Monday, 10.02.2020, 14:13 +0000 Marc Zyngier wrote:
> KVM/arm was merged just over 7 years ago, and has lived a very quiet
> life so far. It mostly works if you're prepared to deal with its
> limitations, it has been a good prototype for the arm64 version,
> but it suffers a few problems:
> 
> - It is incomplete (no debug support, no PMU)
> - It hasn't followed any of the architectural evolutions
> - It has zero users (I don't count myself here)

I might not be an important user, but I have been for multiple years
and still am a regular user of KVM/arm32 on different devices.

I use KVM on my Tegra K1 Chromebook for app development and have
multiple SBCs at home on which I run VMs on using KVM+libvirt.

Sure, neither of these devices has many resources available, but they
are working fine. I would love to keep them in service since I haven't
found arm64-based replacements that don't require hours upon hours of
tinkering to just get a basic OS installation running with a mainline
kernel.

As an example that they can still be of use in 2020 I'd like to point
out that one of the SBCs is running my DNS resolver, LDAP server,
RSS reader, IRC bouncer, and shared todo list just fine, each in their
separate VM.

> - It is more and more getting in the way of new arm64 developments
> 
> So here it is: unless someone screams and shows that they rely on
> KVM/arm to be maintained upsteam, I'll remove 32bit host support
> form the tree.

*scream*

> One of the reasons that makes me confident nobody is
> using it is that I never receive *any* bug report. Yes, it is
> perfect.

This assumption is deeply flawed. Most users (including me) are not
subscribed to this mailing list and will never find this thread at all.
I myself stumbled upon this discussion just by chance while I was
browsing the web trying to find something completely unrelated.

I've been using KVM on x86, ppc and arm for many years, yet I never
felt the need to report a bug on the mailing list.
(This is to be interpreted as a compliment to the great work the devs
of KVM have done!)

Just going by the number of bugs reported on a developers mailing list
is not going to paint an accurate picture.

I am convinced that I'm not the only one relying on KVM/arm32 in the
mainline kernel and would ask you to please reconsider keeping arm32 in
the mainline kernel for a few more years until adequate arm64
replacements are available on the market and have gained proper support
in the mainline kernel.

I myself unfortunately do neither have the knowledge nor resources to
help with development in KVM or maintaining a non-mainline kernel.

> But if you depend on KVM/arm being available in mainline, please
> shout.
> 
> To reiterate: 32bit guest support for arm64 stays, of course. Only
> 32bit host goes. Once this is merged, I plan to move virt/kvm/arm to
> arm64, and cleanup all the now unnecessary abstractions.
> 
> The patches have been generated with the -D option to avoid spamming
> everyone with huge diffs, and there is a kvm-arm/goodbye branch in
> my kernel.org repository.
> 
> [...]

Thanks for your understanding.

Kind regards

- Yoshi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
