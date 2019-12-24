Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F6712A1D6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 14:46:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TParvIfFxc40ON4KPJw4bysXadKVEYTzdvpqqeYETw4=; b=VerE/IMOh2VZM6o5BAYrBY7Dw
	hYPueTtFYRZZP8QRa1LvlYASovX71lT0sRNeG4mtnff2uL03HDf2qoeVhNOaBFn4jwmsq3/ZRRuj2
	hn/J5n1V19KPYaVjPVDXwioZfFWPJTW6nI6VQxFaN/k+BX8qdRY+ah3QKgul1rSg9ro96Qhr/huif
	jQHs+/7djVviqboyIaqcba2TE/Q6k6Llc26Nkt2ZRksCMpGna1W6T4VwnMmw76lzEs2lY+kle6x/V
	AUSwDzqT8D6/lMIAKzRgcKXDcnA0GyJsL309vwddCO2fkLuI9/q0SCAc+kHwwYovtfUfc9ZE8aKH4
	Lqi0yhoTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijkW3-0002Bz-2E; Tue, 24 Dec 2019 13:46:27 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijkVu-0002B7-2i
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 13:46:19 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ijkVo-0003p4-RU; Tue, 24 Dec 2019 14:46:12 +0100
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 14/18] KVM: arm64: spe: Provide guest virtual
 interrupts for SPE
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Tue, 24 Dec 2019 13:46:12 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191224133647.GO42593@e119886-lin.cambridge.arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220143025.33853-15-andrew.murray@arm.com>
 <867e2oimw9.wl-maz@kernel.org>
 <20191224115031.GG42593@e119886-lin.cambridge.arm.com>
 <1f3fbff6c9db0f14c92a6e3fb800fa0f@www.loen.fr>
 <20191224130853.GN42593@e119886-lin.cambridge.arm.com>
 <a2b8846377b3f5884feeb9728b16f826@www.loen.fr>
 <20191224133647.GO42593@e119886-lin.cambridge.arm.com>
Message-ID: <ddd39371e1aa95747d42efdb55f73b51@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: andrew.murray@arm.com, marc.zyngier@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, sudeep.holla@arm.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_054618_267098_B4F5EE9D 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: kvm@vger.kernel.org, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-24 13:36, Andrew Murray wrote:
> On Tue, Dec 24, 2019 at 01:22:46PM +0000, Marc Zyngier wrote:
>> On 2019-12-24 13:08, Andrew Murray wrote:

[...]

>> > This does feel like the pragmatic approach - a larger black hole 
>> in
>> > exchange
>> > for performance. I imagine the blackhole would be naturally 
>> reduced on
>> > machines with high workloads.
>>
>> Why? I don't see the relation between how busy the vcpu is and the 
>> size
>> of the blackhole. It is strictly a function of the frequency of 
>> exits.
>
> Indeed, my assumption being that the busier a system is the more
> interrupts, thus leading to more exits and so an increased frequency 
> of
> SPE interrupt evaluation and thus smaller black hole.

On a GICv4-enabled system, this isn't true anymore. My bet is that
people won't use SPE to optimize IO-oriented workloads, but more CPU
intensive workloads (that don't necessarily exit at all).

But never mind. Let's start with this approach, as it is simple and 
easy
to verify. If the black hole aspect becomes problematic, we know how
to reduce it (at the expense of entry/exit performance).

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
