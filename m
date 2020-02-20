Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB99165C58
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 12:02:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L9w/SFdAT9CzHTVuQbnfBTSxqN68ibsPkYHRhdgapU8=; b=ebDlXxkbUJO2TcwIja+N/Wdad
	n5m+O7GVBnVqx1aO1NHmxW/d3dI/G7YZV5NfbEv+ARkUjiXJBhvPOhtK7GT2ezhowe6EXhOTtSaTI
	p7BnpfqjpXFgzNcF0i1T4Bl0vjWlA44g2x78qYVMN0I2KPPuyP14mx+Gojt9bUR9QAJAIXF9ZvMoQ
	3necyXt6W0x20jbiLBQ36O/rGvzJGfCVH+v58dCFY9hMelkxYotxoidWdU4zsevvPF1ZwbG33V5Cn
	GhqwdWyWX25LrvBZuXxjrIgoBqzjZWL/1SA0qCvIG//Ro73+2ycXQ7qUrLifXUQAsO5JOo0pVfsF2
	Iy2E9EIhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4jak-0003iZ-94; Thu, 20 Feb 2020 11:02:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4jaZ-0003gg-5I
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 11:01:52 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 10B40208C4;
 Thu, 20 Feb 2020 11:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582196510;
 bh=75+xq+IHwaECZYb5L8KpYt15Oi/0cJIf79a3hrpZIN8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=w5d0iEJzl0jpxf97qkGXu/YehoA7Pybk3x+f8K45sCWbaTxVfd3oe12dwnZE8qiZi
 n8e9gykzGpCyv+O2oLVZWcmKHzjyTnCxuPzva+1TrudkCwvZbXXxlr/4FPQDlFrxAp
 5c7olFr7AlBeRQsjVGrouBbIORKa5yzmQYFLZUIY=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j4jaW-006i86-95; Thu, 20 Feb 2020 11:01:48 +0000
MIME-Version: 1.0
Date: Thu, 20 Feb 2020 11:01:48 +0000
From: Marc Zyngier <maz@kernel.org>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: [RFC PATCH 0/5] Removing support for 32bit KVM/arm host
In-Reply-To: <69845f739bbd91e73cd82e7c4683ab5a@agner.ch>
References: <20200210141324.21090-1-maz@kernel.org>
 <69845f739bbd91e73cd82e7c4683ab5a@agner.ch>
Message-ID: <cbad8640f275b9beab471ddd3136da72@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: stefan@agner.ch, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, vladimir.murzin@arm.com,
 linux@arm.linux.org.uk, arnd@arndb.de, suzuki.poulose@arm.com,
 qperret@google.com, Christoffer.Dall@arm.com, james.morse@arm.com,
 pbonzini@redhat.com, will@kernel.org, julien.thierry.kdev@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_030151_230608_BA8819B2 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vladimir Murzin <vladimir.murzin@arm.com>,
 Russell King <linux@arm.linux.org.uk>, kvm@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Quentin Perret <qperret@google.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-19 13:53, Stefan Agner wrote:
> On 2020-02-10 15:13, Marc Zyngier wrote:
>> KVM/arm was merged just over 7 years ago, and has lived a very quiet
>> life so far. It mostly works if you're prepared to deal with its
>> limitations, it has been a good prototype for the arm64 version,
>> but it suffers a few problems:
>> 
>> - It is incomplete (no debug support, no PMU)
>> - It hasn't followed any of the architectural evolutions
>> - It has zero users (I don't count myself here)
>> - It is more and more getting in the way of new arm64 developments
>> 
>> So here it is: unless someone screams and shows that they rely on
>> KVM/arm to be maintained upsteam, I'll remove 32bit host support
>> form the tree. One of the reasons that makes me confident nobody is
>> using it is that I never receive *any* bug report. Yes, it is perfect.
> 
> Not entirely true:
> https://lore.kernel.org/m/e2f7196ca6c70c55463a45b490f6731a@agner.ch

And I thank you for that. This bug was actually hitting both arm and
arm64, and triggered by a bogus DT (that KVM should have handled in a
nicer way). What I was trying to say is that nobody reports bugs that
are specific to 32bit KVM/arm.

> But, after that was fixed, it actually was perfect :-D
> https://blog.printk.io/2016/09/kvm-with-kvmtool-on-armv7/

Hey, neat! not sure how useful, but neat nonetheless... ;-)

> That said, I never used it in a real-world application, so from my side
> removing it is fine.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
