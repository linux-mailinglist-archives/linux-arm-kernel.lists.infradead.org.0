Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B245165F64
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 15:01:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YndE7dyVUgDIes9IRW6Iyx9GUkjCSzJdL2Ge7AYEK7Y=; b=m39vhiLDuwCmsZUmSZB8GCpL0
	owUZ5331XwhsG7G1a41RsELkx+hgvdQQxPoXmvG8a5UbebyX9fTI81x+13GAMzXOEt5jXMvhVAfi2
	zhCTV6ehzYxuglOQFWt1J9ctmLbwL1DOvflNBe8Dke0EcLWPnHjOvClkULNJy8/dinZS/bp4IeDuv
	P7BbF6ZXw4eKNKXfGCDWr2k67FsR0hyVJD86vreXj8fhe9ciQKxhkXFXplgsHvPTbo/67DgK/GXIa
	J5aR+61forgDldlu2EBn4ePZ+C9cRhPCLJtuhj3v8VDC569HZV5fU/P45Wlx8oLQy/rruvl3eQXhr
	BBV5lLDUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4mOj-0005Rg-K7; Thu, 20 Feb 2020 14:01:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4mOY-0005Qz-3u
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 14:01:39 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B11220722;
 Thu, 20 Feb 2020 14:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582207295;
 bh=PeA7JgpdUfYYu08f+gwb07KtDNRbAIcQO/afXvu/VJ4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=J2WQoS5XpWvVpW/EISmOiSkv/8LK6KNtcbTp6U8D8GyWJBA2ZMG0aAko5epk80vGu
 jYWo1/3CLzV32fdWpoy49UlpNlhad2EXZ7/pcrne6xx+AqNc5Zm5EvoYpmLjeUdMsG
 YgU6Zv8zoErOHPEJH6zIzdxBC0imCHec0oJq36aw=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j4mOT-006k7A-Q9; Thu, 20 Feb 2020 14:01:34 +0000
MIME-Version: 1.0
Date: Thu, 20 Feb 2020 14:01:33 +0000
From: Marc Zyngier <maz@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [RFC PATCH 0/5] Removing support for 32bit KVM/arm host
In-Reply-To: <b3faa8be-29ef-e637-bda6-ff76864ff388@arm.com>
References: <CGME20200210141344eucas1p25a6da0b0251931ef3659397a6f34c0c3@eucas1p2.samsung.com>
 <20200210141324.21090-1-maz@kernel.org>
 <621a0a92-6432-6c3e-cb69-0b601764fa69@samsung.com>
 <43446bd5e884ae92f243799cbe748871@kernel.org>
 <b3faa8be-29ef-e637-bda6-ff76864ff388@arm.com>
Message-ID: <3f7f3b6c8b758b6d2134364616c6bc1e@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: robin.murphy@arm.com, m.szyprowski@samsung.com,
 vladimir.murzin@arm.com, linux@arm.linux.org.uk, kvm@vger.kernel.org,
 arnd@arndb.de, suzuki.poulose@arm.com, qperret@google.com,
 Christoffer.Dall@arm.com, krzk@kernel.org, b.zolnierkie@samsung.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, pbonzini@redhat.com,
 will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_060138_201294_8FC66A7F 
X-CRM114-Status: GOOD (  13.55  )
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
 Christoffer Dall <Christoffer.Dall@arm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-20 13:32, Robin Murphy wrote:
> On 20/02/2020 1:15 pm, Marc Zyngier wrote:
>> Hi Marek,
>> 
>> On 2020-02-20 12:44, Marek Szyprowski wrote:
>>> Hi Marc,
>>> 
>>> On 10.02.2020 15:13, Marc Zyngier wrote:
>>>> KVM/arm was merged just over 7 years ago, and has lived a very quiet
>>>> life so far. It mostly works if you're prepared to deal with its
>>>> limitations, it has been a good prototype for the arm64 version,
>>>> but it suffers a few problems:
>>>> 
>>>> - It is incomplete (no debug support, no PMU)
>>>> - It hasn't followed any of the architectural evolutions
>>>> - It has zero users (I don't count myself here)
>>>> - It is more and more getting in the way of new arm64 developments
>>> 
>>> That is a bit sad information. Mainline Exynos finally got everything
>>> that was needed to run it on the quite popular Samsung 
>>> Exynos5422-based
>>> Odroid XU4/HC1/MC1 boards. According to the Odroid related forums it 
>>> is
>>> being used. We also use it internally at Samsung.
>> 
>> Something like "too little, too late" springs to mind, but let's be
>> constructive. Is anyone using it in a production environment, where
>> they rely on the latest mainline kernel having KVM support?
>> 
>> The current proposal is to still have KVM support in 5.6, as well as
>> ongoing support for stable kernels. If that's not enough, can you 
>> please
>> explain your precise use case?
> 
> Presumably there's no *technical* reason why the stable subset of v7
> support couldn't be stripped down and brought back private to arch/arm
> if somebody really wants and is willing to step up and look after it?

There is no technical reason at all, just a maintenance effort.

The main killer is the whole MMU code, which I'm butchering with NV,
and that I suspect Will will also turn upside down with his stuff.
Not to mention the hypercall interface that will need a complete 
overhaul.

If we wanted to decouple the two, we'd need to make the MMU code, the
hypercalls, arm.c and a number of other bits private to 32bit.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
