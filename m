Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE81124A2F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 15:50:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhbVmHMUbieKOHm8pOC5kr5VScC9u3UiHJ3nAV8kgLE=; b=FnTkWA/CFJiPkH
	qnV8PFtyUYjiHnRnpOj24qk+H81jeXR2xU0supKWSr4V+4kjBDvF0e0cZK0sey9Iv1SvpcjReIe/I
	LAUzt4Xraiz8rJqQPtcFCuRY054Zh1bFWjyzZb9ffhpCNBmiZweyNSBs0Zz3umDabY+HkkaOaLV1A
	aggmHN0OI1aNw7zSsYEnX4zaRTcB/QGfI6n8I/c6jXKi2AbGvoW6OwSPutC9n3OZPCET/OG8IOw3+
	q8LbgrpnND8wZXz1wwKiQvMzqGWtzhpjIXC51v+wE5+aehKNwOPxrkpbhED9SLqS0HlTU9GlNTeNq
	wdeIS3fUKSgm6UNNKmbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihaeZ-0007T7-L3; Wed, 18 Dec 2019 14:50:19 +0000
Received: from smtp2.axis.com ([195.60.68.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihae8-0007Cc-Ek
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 14:49:57 +0000
IronPort-SDR: vTUCunjVXjVdRehuOm46Tk7M0Sq5tcfe897Iy+3eq8hNMAkvYYuPyyY8s1+XbFPzDkR0aUXi0i
 6mx2DlMFWULC+a/bYxL23AzOJN4feB/IHpQg4cD5uweDmpuAaoxs2KhCzU3qYJ/t83erwAXtPj
 TfikBrJigFx/wYnKm0sZ0ifmWoRaDTySZL8CO2pt71l6tSuv20bA76DM4YvGOJP069Cozcs0jn
 h8mcaVDbp2bTBII9/YlWJiCdPcsd5aJRZZ7vhwgpRaUIIUh08LFDRLwfjaeTKx6cpc+t8sXZRJ
 Iuk=
X-IronPort-AV: E=Sophos;i="5.69,329,1571695200"; 
   d="scan'208";a="3614878"
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Date: Wed, 18 Dec 2019 15:49:43 +0100
From: Vincent Whitchurch <vincent.whitchurch@axis.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] asm/sections: Check for overflow in memory_contains()
Message-ID: <20191218144943.bf5vqykvggtfnph7@axis.com>
References: <20191217102238.14792-1-vincent.whitchurch@axis.com>
 <20191217102831.GP25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217102831.GP25745@shell.armlinux.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-TM-AS-GCONF: 00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_064952_839395_966D5032 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [195.60.68.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "treding@nvidia.com" <treding@nvidia.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 11:28:31AM +0100, Russell King - ARM Linux admin wrote:
> On Tue, Dec 17, 2019 at 11:22:38AM +0100, Vincent Whitchurch wrote:
> > ARM uses memory_contains() from its stacktrace code via this function:
> > 
> >  static inline bool in_entry_text(unsigned long addr)
> >  {
> >  	return memory_contains(__entry_text_start, __entry_text_end,
> >  			       (void *)addr, 1);
> >  }
> > 
> > addr is taken from the stack and can be a completely invalid.  If addr
> > is 0xffffffff, there is an overflow in the pointer arithmetic in
> > memory_contains() and in_entry_text() incorrectly returns true.
> > 
> > Fix this by adding an overflow check.  The check is done on unsigned
> > longs to avoid undefined behaviour.
> > 
> > Signed-off-by: Vincent Whitchurch <vincent.whitchurch@axis.com>
> > ---
> >  include/asm-generic/sections.h | 10 +++++++++-
> >  1 file changed, 9 insertions(+), 1 deletion(-)
> > 
> > diff --git a/include/asm-generic/sections.h b/include/asm-generic/sections.h
> > index d1779d442aa5..e6e1b381c5df 100644
> > --- a/include/asm-generic/sections.h
> > +++ b/include/asm-generic/sections.h
> > @@ -105,7 +105,15 @@ static inline int arch_is_kernel_initmem_freed(unsigned long addr)
> >  static inline bool memory_contains(void *begin, void *end, void *virt,
> >  				   size_t size)
> >  {
> > -	return virt >= begin && virt + size <= end;
> > +	unsigned long membegin = (unsigned long)begin;
> > +	unsigned long memend = (unsigned long)end;
> > +	unsigned long objbegin = (unsigned long)virt;
> > +	unsigned long objend = objbegin + size;
> > +
> > +	if (objend < objbegin)
> > +		return false;
> > +
> > +	return objbegin >= membegin && objend <= memend;
> 
> Would merely changing to:
> 
> 	return virt >= begin && virt <= end - size;
> 
> be sufficient ?  Is end - size possible to underflow?

Something like this would trigger an underflow and return an incorrect
result with that expression, wouldn't it?

 memory_contains((void *)0x0000, (void *)0x1000, (void *)0x0, 0x1001))

AFAICS no current callers actually send in an object size which is
larger than the size of the memory, but perhaps it's best to be
defensive?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
