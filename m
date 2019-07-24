Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6501731D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 16:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Zk0UBlnwbiQ3+RL3Cl6/YIMl2fic6VkJvemPtOET9Q=; b=eonxCahfZHCCCs
	8UH6HNJfRlMgET5E3VzCz7lhlTbCMnaPgBLDbvifFVkR2QCDG6js78kAFroYHSWs35ARwTv2Kle2w
	8oP1I5Uk0N2PQq44d2rgEUElhDlyOqS03m50p3X+VelK/TGXThfVkdKWMTKLPay3svsO+6WegreA0
	R4cBoIdiWJV/1r6zk57JPxKX/l+X0B+bOj4hFUKPOSZIpCQ/tPv0cGZTok2mkoWL7zZQLXs188AsV
	gR7rRL2JQyjvxSSGVFnS5egCVP+WrCAGTwM2br1RnhlxkEPfXHjr2Fr7x1OwXASL3Z4YGDqQho2yE
	HOlct2n1s6aUOHbVlc0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqIPK-0006PS-Be; Wed, 24 Jul 2019 14:38:18 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqIP9-0006Ob-CH
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 14:38:08 +0000
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hqIOx-0002MW-0J; Wed, 24 Jul 2019 16:37:55 +0200
Date: Wed, 24 Jul 2019 16:37:53 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v9 00/21] Generic page walk and ptdump
In-Reply-To: <fd898367-b44e-9328-bdab-7a3de0db6bda@arm.com>
Message-ID: <alpine.DEB.2.21.1907241620140.1791@nanos.tec.linutronix.de>
References: <20190722154210.42799-1-steven.price@arm.com>
 <20190723101639.GD8085@lakrids.cambridge.arm.com>
 <e108b8a6-deca-e69c-b338-52a98b14be86@arm.com>
 <alpine.DEB.2.21.1907241541570.1791@nanos.tec.linutronix.de>
 <fd898367-b44e-9328-bdab-7a3de0db6bda@arm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_073807_567262_9C5F1BDE 
X-CRM114-Status: GOOD (  24.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, =?ISO-8859-15?Q?J=E9r=F4me_Glisse?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org, "Liang,
 Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 24 Jul 2019, Steven Price wrote:
> On 24/07/2019 14:57, Thomas Gleixner wrote:
> > From your 14/N changelog:
> > 
> >> This keeps the output shorter and will help with a future change
> > 
> > I don't care about shorter at all. It's debug information.
> 
> Sorry, the "shorter" part was because Dave Hansen originally said[1]:
> > I think I'd actually be OK with the holes just not showing up.  I
> > actually find it kinda hard to read sometimes with the holes in there.
> > I'd be curious what others think though.

I missed that otherwise I'd have disagreed right away.

> > I really do not understand why you think that WE no longer care about the
> > level (and the size) of the holes. I assume that WE is pluralis majestatis
> > and not meant to reflect the opinion of you and everyone else.
> 
> Again, I apologise - that was sloppy wording in the commit message. By
> "we" I meant the code not any particular person.

Nothing to apologize. Common mistake of trying to impersonate code. That
always reads wrong :)

> > I have no idea whether you ever had to do serious work with PT dump, but I
> > surely have at various occasions including the PTI mess and I definitely
> > found the size and the level information from holes very useful.
> 
> On arm64 we don't have those lines, but equally it's possible they might
> be useful in the future. So this might be something to add.
> 
> As I said in a previous email[3] I was dropping the lines from the
> output assuming nobody had any objections. Since you find these lines
> useful, I'll see about reworking the change to retain the lines.

That would be great and as I saw in the other mail, Mark wants to have them
as well :)

That reminds me, that I had a patch when dealing with L1TF which printed
the PFNs so I could verify that the mitigations do what they are supposed
to do, but that patch got obviously lost somewhere down the road.

Thanks,

	tglx


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
