Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5705C18237A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 21:46:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AedN/C/p3KZ2WYm14IAXZqtWdx6+BqwHAhlOmR2uy7o=; b=Sx/nhLipYmRts0
	5cAWrsKeiQZLjr8rC+PvCzN9WB3jI3hakDFqufi5dijs0e7ZPa02Ynu0mag010bbA23C3F6+y385z
	hxvcnaX0jD208QBKrYsUCyvCAqsX/yM0iaOPc1xWOxztp0WNeWa/FkkBgt02vjXi4GtO54QjHL7br
	U8PRJta7w3Es+23TYXrtxfsXzYgWfanN4SMhxCNyD6KPehqara08ohOSEDY+WR1vm0tdZ6m77tCMf
	z/k1f7xottWa50o54f+P68pYOl93taAYx+KkGu9Q1NyJnFTkToHYFBTIzJnaRfdw84BGRZF3cjyHK
	NOmoBW5A2TCKRc7olJWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC8Ew-0002fQ-54; Wed, 11 Mar 2020 20:46:06 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC8Em-0002eT-27
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 20:45:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lWqnS0cz202pymudp+fi5S2BVavTcKkGDJBwh6JxRl4=; b=Kiv1J97Q8JPE8ZCa5dB851mFp
 W4a0looOhxyYJXowNd7RWtL2s5gl1JqNnoQpNvCjfnx3oMdzxjDkwALD0SK3hJMDW9r+E5netNRw2
 gTa6OnqbDYIr3mEoYzRUvgGElWRkLcCaqPqiInqHIk8QujnuQo+raQFv7Ltv+4td/t4Lk27id2OpA
 Ik1RbOzbuLpGG1Pcs/cOXF4/nX0Pfc+QXXQdwAmI7s0Jn92cKyosaw2vEwSHMfcQbJU/maS0+GPOw
 mA62cq5sKkvh3YDW3uKLukGmsWpKjwuufduP7KtP1o/E4TL0TQbGJsM8lsDNbDAXdsH/8B9TZjnw+
 OTd58mRnA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:51728)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jC8ET-0005Qw-MZ; Wed, 11 Mar 2020 20:45:37 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jC8EN-0005di-5m; Wed, 11 Mar 2020 20:45:31 +0000
Date: Wed, 11 Mar 2020 20:45:31 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v3] ARM: smp: add support for per-task stack canaries
Message-ID: <20200311204531.GU25745@shell.armlinux.org.uk>
References: <20181206083257.9596-1-ard.biesheuvel@linaro.org>
 <20200309164931.GA23889@roeck-us.net>
 <202003111020.D543B4332@keescook>
 <04a8c31a-3c43-3dcf-c9fd-82ba225a19f6@roeck-us.net>
 <202003111146.E3FC1924@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202003111146.E3FC1924@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_134556_103545_66DC2A13 
X-CRM114-Status: GOOD (  22.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 kernel-hardening@lists.openwall.com, linux-kernel@vger.kernel.org,
 Emese Revfy <re.emese@gmail.com>, Guenter Roeck <linux@roeck-us.net>,
 Laura Abbott <labbott@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 11:47:20AM -0700, Kees Cook wrote:
> On Wed, Mar 11, 2020 at 11:31:13AM -0700, Guenter Roeck wrote:
> > On 3/11/20 10:21 AM, Kees Cook wrote:
> > > On Mon, Mar 09, 2020 at 09:49:31AM -0700, Guenter Roeck wrote:
> > >> On Thu, Dec 06, 2018 at 09:32:57AM +0100, Ard Biesheuvel wrote:
> > >>> On ARM, we currently only change the value of the stack canary when
> > >>> switching tasks if the kernel was built for UP. On SMP kernels, this
> > >>> is impossible since the stack canary value is obtained via a global
> > >>> symbol reference, which means
> > >>> a) all running tasks on all CPUs must use the same value
> > >>> b) we can only modify the value when no kernel stack frames are live
> > >>>    on any CPU, which is effectively never.
> > >>>
> > >>> So instead, use a GCC plugin to add a RTL pass that replaces each
> > >>> reference to the address of the __stack_chk_guard symbol with an
> > >>> expression that produces the address of the 'stack_canary' field
> > >>> that is added to struct thread_info. This way, each task will use
> > >>> its own randomized value.
> > >>>
> > >>> Cc: Russell King <linux@armlinux.org.uk>
> > >>> Cc: Kees Cook <keescook@chromium.org>
> > >>> Cc: Emese Revfy <re.emese@gmail.com>
> > >>> Cc: Arnd Bergmann <arnd@arndb.de>
> > >>> Cc: Laura Abbott <labbott@redhat.com>
> > >>> Cc: kernel-hardening@lists.openwall.com
> > >>> Acked-by: Nicolas Pitre <nico@linaro.org>
> > >>> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > >>
> > >> Since this patch is in the tree, cc-option no longer works on
> > >> the arm architecture if CONFIG_STACKPROTECTOR_PER_TASK is enabled.
> > >>
> > >> Any idea how to fix that ? 
> > > 
> > > I thought Arnd sent a patch to fix it and it got picked up?
> > > 
> > 
> > Yes, but the fix is not upstream (it is only in -next), and I missed it.
> 
> Ah, yes, I found it again now too; it went through rmk's tree.
> 
> For thread posterity:
> 
> ARM: 8961/2: Fix Kbuild issue caused by per-task stack protector GCC plugin
> https://www.arm.linux.org.uk/developer/patches/viewpatch.php?id=8961/2

It's in my fixes branch, waiting for me to do my (now usual) push
of fixes to Linus.

I'm not sure whether the above discussion is suggesting that there's
a problem with this patch, or whether it's trying to encourage me
to send it up to Linus.  I _think_ there's the suggestion that it
causes a regression, hmm?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
