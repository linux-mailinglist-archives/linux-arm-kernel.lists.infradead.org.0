Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 893601BF485
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 11:51:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2XiuFRYDHaep8ivUVgBKQs/VkcnDHyiJQsfJEN37/zI=; b=GLmCSmJLA3Q6oL
	gNUWjHDaUgnKu3PGr4+frjKRznkQHqo8CS6HKdyZwcVqmYKyA+UGV975tYRSPGU/a0hAa5VZ3/vRA
	eHdYFEgV/ClWM9eW3WVUqbbTlUNzr1oMHbLx3nMS7svmYuKRQaI8lcOjV+zRwbfFvst2D+FSjUBp0
	stTMJK/SmUT6EeBu/ISNSWSzOe8KVoiWCY2/I91HmcrZLKF3Al2Gw1x7XZS8TDe+Aedm6aD2D7ALZ
	ezd9Zz5PJmNeYA1Mpr0rb1hin517KpAGjbaFmeol3MEyM6F63yLrR4NE9UEod2yXUx4yr6qReW0oM
	9duE28mu2+jHiMELhg3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU5qN-00059v-Ji; Thu, 30 Apr 2020 09:50:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU5qB-000594-30
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 09:50:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E8842082E;
 Thu, 30 Apr 2020 09:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588240245;
 bh=2m/uMwubJU0+KIoLz1IiF/eJGyPbsWV2OVU8vrOQqBo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2NRs0g5xV7M8d3FZI52+oAVxuGVFjMu5w2Mtg08swn4HAuP9oO90gxHDaPWncU2UL
 LHZJg7J1RhAMhIQhXIHKyOLmHY9dQlwhRuRCVLx4RQskm5Pe4dqAJsLx2cEZ4Q1UHw
 DI8NdPhL4/nhgDpGR/qDoTIRy7rNQwpQDiXhw35A=
Date: Thu, 30 Apr 2020 10:50:37 +0100
From: Will Deacon <will@kernel.org>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [PATCH] arm64: kvm: fix gcc-10 shift warning
Message-ID: <20200430095037.GA19932@willie-the-truck>
References: <20200429185657.4085975-1-arnd@arndb.de>
 <20200430090251.715f6bf0@why>
 <20200430082927.GA18615@willie-the-truck>
 <20200430193910.294842c4@canb.auug.org.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430193910.294842c4@canb.auug.org.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_025047_148194_ADB7D042 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rich Felker <dalias@libc.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>, Paul Mackerras <paulus@samba.org>,
 kvmarm@lists.cs.columbia.edu, Jonas Bonn <jonas@southpole.se>,
 Brian Cain <bcain@codeaurora.org>, Marc Zyngier <maz@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Mike Rapoport <rppt@linux.ibm.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Fenghua Yu <fenghua.yu@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 07:39:10PM +1000, Stephen Rothwell wrote:
> On Thu, 30 Apr 2020 09:29:28 +0100 Will Deacon <will@kernel.org> wrote:
> > On Thu, Apr 30, 2020 at 09:02:51AM +0100, Marc Zyngier wrote:
> > > On Wed, 29 Apr 2020 20:56:20 +0200
> > > Arnd Bergmann <arnd@arndb.de> wrote:
> > >   
> > > > Fixes: 22998131ab33 ("arm64: add support for folded p4d page tables")
> > 
> > Happy to queue via arm64 for 5.8. Does that work for you, Arnd, or were you
> > planning to get this in sooner than that?
> 
> The commit that this fixes is in Andrew's patch series in linux-next,
> so it should just go in there.

Yes, you're right. Sorry for the noise.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
