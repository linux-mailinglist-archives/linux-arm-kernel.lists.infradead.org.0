Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7D01C381D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 13:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IwqIZQpnVMwVrw08xYAZ2cQUq2cIwuZWEC2OS90iFHo=; b=OO2CVUho25Z5G+
	PfX1/XswQuYo5XKCaNdeHaPkQEUc3sZ98zG4DhbXm8xhnC729/6vIH0g4rrZD69E7Jw8GUexrqZ86
	QuGbsGoNFchfY9cAnDVf16ZAOTMB7HyR7Zit4ybN64RxmgmV7GN0jW+QTkcBijVidUP8UI33N1kM4
	xiWAEWE6dxDY7kJcTZdMU9hi3VJ580AGmAVaoLz5mUo/E7Ri3Z0dwwQ9j+o0+ajBx93KiK8/kTl5t
	9p+VeCxIa+eVw0rcirRP4KSfhqAvmAi62Hsw4jtonF1WFyNcAPiimrqFz6fICJ57og4LGS3bwGNCT
	Fh9NQHdrE4Ke1pwWAXAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZJR-0002CA-9Q; Mon, 04 May 2020 11:31:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZJJ-0002Bi-M1
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 11:30:58 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 44F3D2073E;
 Mon,  4 May 2020 11:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588591857;
 bh=VZLtzlcQTt1eJsb0z5+z2NjKOOqUX3h5X2JO4zv9pDo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2OhI4xd+rijq0aBcmEM/iBxzF5t4ZID7LjsEROOxJ3U+rl8zzzZODfvwMGpGOIVOU
 hyTIJfu0kwTZZqy5wn/cm2xQcjZSwI8zFeAX/Cml8tlVeHtrwun8MrVVhu0ozgFYpj
 OhL5v6lGFQghRa1mpUK69u+KkaktGLi9EQgJ7HiM=
Date: Mon, 4 May 2020 12:30:52 +0100
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <maz@kernel.org>, pbonzini@redhat.com
Subject: Re: [GIT PULL] KVM/arm fixes for 5.7, take #2
Message-ID: <20200504113051.GB1326@willie-the-truck>
References: <20200501101204.364798-1-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501101204.364798-1-maz@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_043057_741134_385EFEEB 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Fangrui Song <maskray@google.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Zenghui Yu <yuzenghui@huawei.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc, Paolo,

On Fri, May 01, 2020 at 11:12:00AM +0100, Marc Zyngier wrote:
> This is the second batch of KVM/arm fixes for 5.7. A compilation fix,
> a GICv4.1 fix, plus a couple of sanity checks (SP_EL0 save/restore,
> and the sanitising of AArch32 registers).
> 
> Note that the pull request I sent a week ago[1] is still valid, and
> that this new series is built on top of the previous one.
> 
> Please pull,

I don't see this queued up in the kvm tree, which appears to have been
sitting dormant for 10 days. Consequently, there are fixes sitting in
limbo and we /still/ don't have a sensible base for arm64/kvm patches
targetting 5.8.

Paolo -- how can I help get this stuff moving again? I'm more than happy
to send this lot up to Linus via arm64 if you're busy atm. Please just
let me know.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
