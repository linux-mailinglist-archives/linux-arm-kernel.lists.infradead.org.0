Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E2B157F22
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 16:46:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=41ABRHsQwcNrzw+R25C+8M/AdJqoiP9pPlZhcomQn24=; b=EQZDV+/5qPCedE
	mPJnxy/r3+7uQ7rGBcT22CDvW5IxWWh9SeIyGOkl6blWjFD8RSIrpQW1ZiUUHl1b09bCMY5F4YCDt
	cV+7x6OJLTUAci48yYw4KpuPNc1mFk0Iso9KiMx8opOWblJexpfHErpnBPMG+v9zcG6nwwW6IlYuw
	GM6eD92vA6YPgxVc9pyRwg8SZ+nZTaVGheg7NttKZ6S10iFLSEsbWBnHt3nYNUPi7fxOwTLAWD7h9
	L/44IQXWf8OFjvg+UvfUHsF7+guT9CKoPPh6ya3hma4S0rk/6qtNL7zdwU9RPy2BOgDlNaAZzcv5L
	pCf5cgea+lGp/Fys5xxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1BGR-0007P4-4D; Mon, 10 Feb 2020 15:46:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1BGK-0007Nm-QW
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 15:46:18 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 53B6620733;
 Mon, 10 Feb 2020 15:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581349574;
 bh=TTGiUvb9RHz3hdhmJfOzp0KIapqFPLU42O9zSWvHhOE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Nbgh66A2RBEWvXx6MerEIUd9giZyvTUtyT0g89HKzIxi8UAO5FFSC3DotkWGBZgWh
 8VmqH2A4GRYx8VmqwMzWPYlvCHE9g4TRJiKoqXV66JFgqs70vggQKyGjqiH94fc6A/
 x27HEPnRKKPuNUTsEcUCTryiOPmjdOg06CwR+Wdo=
Date: Mon, 10 Feb 2020 15:46:08 +0000
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [RFC PATCH 0/5] Removing support for 32bit KVM/arm host
Message-ID: <20200210154608.GA21086@willie-the-truck>
References: <20200210141324.21090-1-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210141324.21090-1-maz@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_074616_880257_AAB27FE7 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anders Berg <anders.berg@lsi.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Russell King <linux@arm.linux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Quentin Perret <qperret@google.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Paolo Bonzini <pbonzini@redhat.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
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

I tend to use it to test that it still works, but that's it.

> - It is more and more getting in the way of new arm64 developments

To echo this last point, we're currently looking at the possibility of
using KVM to isolate VMs from the host in Android. The scope of the
changes we think we'll have to make would mean effectively duplicating
the existing code for 32-bit or implementing a whole load of unused and
untested functionality to keep the current structure. Neither of these
options are particularly satisfactory from a maintainance point of view,
so removing the 32-bit code if it doesn't have any significant use would
be welcomed:

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
