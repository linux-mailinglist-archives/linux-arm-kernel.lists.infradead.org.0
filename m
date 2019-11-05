Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFF5F04FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 19:22:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v70llrOUo6sxZvR5dMJMQEmheJyoyQ0FrX7KR15aPQo=; b=Tcs6e2cVGfJzSz
	K+E3yjnnAS2hKRJDKsujdLfnE+4RBtANioMqAUsbDmwY75vlDX4UQwYVCulznA6JEoRicleZhoPRr
	pZi4Fzpy8u1cTTkpsCodpyY5amIDlKOr43tdZ6u/OvJgdUUqZmpNfazKVBq6hd0az/8J/LopC+iUb
	lynpSxe+CG/+aM08VDmotHaYRVErcHz1KwpiAim/yL4kFEgl2jmwF/MK1xL0uF6Ao8C4s8WwJDSnL
	NnD4qD01tyQec7P2lF0mKXpNLq0maJhMwrpMBdZOHOItLaoKdG/YKnzUoinTIht+5AVtFdk66MCEK
	uQKRc3rxZW2i9WC/jakw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS3TY-0001FV-Mc; Tue, 05 Nov 2019 18:22:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS3TP-0001FA-Ii
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 18:22:36 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B5B0F20656;
 Tue,  5 Nov 2019 18:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572978153;
 bh=2PpdqCgtXuVnsFpdkcLkVmqLIbzVGdR/tiI6Ud/y9SQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oA659C/SaDyW4wKF4dDC7UmaM5b4VqXmNQwJdpBlvFX1FygyLep/7X3ECuYAk8+aj
 Vtt+25WG3La5pHDmsxj16olIEjKbIdq0jtBh1AzNOOemuRsGW66+EKRw2+TgG1G3gM
 RWL5HVL4uvsYPSscbChRFCA3fkj8IYDYKBCIzXVE=
Date: Tue, 5 Nov 2019 18:22:29 +0000
From: Will Deacon <will@kernel.org>
To: John Stultz <john.stultz@linaro.org>
Subject: Re: [PATCH] arm64: Ensure VM_WRITE|VM_SHARED ptes are clean by default
Message-ID: <20191105182228.GA388@willie-the-truck>
References: <20191029153051.24367-1-catalin.marinas@arm.com>
 <CALAqxLXuxZVg0kqNQXF_dH17NzH9m14-Ci_rzruHzmms0V7pvg@mail.gmail.com>
 <20191105102902.GB29852@willie-the-truck>
 <CALAqxLVT-SK0-nNUmbDWa3kkZED2z+pcryzuue9c=n42shu3kA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALAqxLVT-SK0-nNUmbDWa3kkZED2z+pcryzuue9c=n42shu3kA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_102235_635554_16632FD7 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alistair Delva <adelva@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Sandeep Patil <sspatil@google.com>,
 stable <stable@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 09:06:43AM -0800, John Stultz wrote:
> On Tue, Nov 5, 2019 at 2:29 AM Will Deacon <will@kernel.org> wrote:
> > On Mon, Nov 04, 2019 at 05:16:42PM -0800, John Stultz wrote:
> > >   So I'm not yet sure why, but I've just validated that this patch is
> > > causing trouble with booting AOSP on HiKey960 with 5.4-rc6 (-rc5 works
> > > fine).

[...]

> > As an experiment, can you try reverting just the part of the patch that
> > removes PTE_DIRTY from the PROT_* definitions? (see below)
> 
> I'll give this a try! Feel free to let me know if there's anything
> else I should test.

Thanks. Also worth trying to revert 747a70e60b72 instead of this patch, as
Catalin suggested.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
