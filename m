Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE22416478B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 15:56:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zsPFsyJQF+KtQR+n8VMjZJrjxwlP0Ow6WyzP/9V2BgQ=; b=D9heFYMGGG4uTA
	yqSdw2FK8IbgZNe8OKI9P2JZLhjyI1TxO5m/sN5OJxzYY5p8HoL5uYTwJY7YXT+PuMHo58H1CTRDz
	cPzIxLty13Cep0OHe+Ufqj/Dhm3yEMhjhCUyf5wa3GfUMPw41YnZeJvEmIZt/Cn9XBXIg8NPHb3NB
	W3ysE5z1YR8qfGc7OtBykD3kFZfTxZ5ZeZeIHiuCAlwWSICE1ivT3+IFbhIfNroPmR/4PyJdTamTy
	FOMHqHASa6S+gZFJIw8uACkEftxEuV14YmdbjspQ12UzWc2bRJj/z5YTuQwgRAUsNafoNmNqTz4Bf
	Cc0dhyurkWqge4y+d05w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4QmD-00015z-Ru; Wed, 19 Feb 2020 14:56:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Qm4-00014t-Ci
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 14:56:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 272D81FB;
 Wed, 19 Feb 2020 06:56:26 -0800 (PST)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.145.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B16633F68F;
 Wed, 19 Feb 2020 06:56:25 -0800 (PST)
Date: Wed, 19 Feb 2020 15:56:24 +0100
From: Christoffer Dall <christoffer.dall@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [RFC PATCH 0/5] Removing support for 32bit KVM/arm host
Message-ID: <20200219145624.GD26684@e113682-lin.lund.arm.com>
References: <20200210141324.21090-1-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210141324.21090-1-maz@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_065628_473359_038DC288 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Russell King <linux@arm.linux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Quentin Perret <qperret@google.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 02:13:19PM +0000, Marc Zyngier wrote:
> KVM/arm was merged just over 7 years ago, and has lived a very quiet
> life so far. It mostly works if you're prepared to deal with its
> limitations, it has been a good prototype for the arm64 version,
> but it suffers a few problems:
> 
> - It is incomplete (no debug support, no PMU)
> - It hasn't followed any of the architectural evolutions
> - It has zero users (I don't count myself here)
> - It is more and more getting in the way of new arm64 developments
> 
> So here it is: unless someone screams and shows that they rely on
> KVM/arm to be maintained upsteam, I'll remove 32bit host support
> form the tree. One of the reasons that makes me confident nobody is
> using it is that I never receive *any* bug report. Yes, it is perfect.
> But if you depend on KVM/arm being available in mainline, please shout.
> 
> To reiterate: 32bit guest support for arm64 stays, of course. Only
> 32bit host goes. Once this is merged, I plan to move virt/kvm/arm to
> arm64, and cleanup all the now unnecessary abstractions.
> 
> The patches have been generated with the -D option to avoid spamming
> everyone with huge diffs, and there is a kvm-arm/goodbye branch in
> my kernel.org repository.

Acked-by: Christoffer Dall <christoffer.dall@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
