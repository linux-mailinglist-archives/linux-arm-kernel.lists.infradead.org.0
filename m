Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CB71DA123
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 21:42:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKl59GXO9Y1MBZvKybzmVtQraGWhhYaQOXOzokkYGxc=; b=dKFe76ODghsitj
	bs1m92ZOOC5sV3Sz6XuJl3t8zvrefZcx7EoGbnhvJQW4gunchusEAGGfwG+wz68wEpn1it7Zfg5ic
	bOcgbB459MkGA25xd3AKksY5AmdMJ5t6IKLlYDWmxaDdEo9l/eKqz12XDjic80VA59agSFYq7r62o
	/4mmUY+ZRFPWRy/OIa0KLv0BwcRcjrMuRDzWIvRLvFiORipH0/Tp3/bC2Gd6Qn1e8Gvtwg/RSTQVF
	HYEY4u/4zBqm9qODHwzrJWWfjwrOreLtfH06fn7ZqN/d/N39QFN0FFpALF9hNor7Q5Z+ZVRaAgNYO
	wfihiVpqnJ+k7MSqIS0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb88B-0000qG-Rq; Tue, 19 May 2020 19:42:27 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb882-0000pj-5h; Tue, 19 May 2020 19:42:20 +0000
Received: by mail-pj1-x1043.google.com with SMTP id ci21so130444pjb.3;
 Tue, 19 May 2020 12:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1PbPu9MDpsX7CWlzIANvDidpxlS/QMPqApRlwiiHNw8=;
 b=Azzo19mxTglIY2DWsdeqvJCJvbRFWfMvCqe910K+bLoZcz9A0rEclUKyMtzUQpeHzC
 onlWdkJh3IcWILK4c2hRtOtl7mRzAbiyLlEcJdxmOebPU1v944BfCUyeskdH4MaSANGB
 mG1De8kuL8xqrOY6I9z2/irGnDdt+dXuW+nblD5+Bi7nB5W52s0/6ICGfZDepT9Noian
 auesxCt7/j2cCzmSLOIHL82Wa50HphpyDMpe82o3c9PeVBitNH+3VinlNYT9yXfWiYMK
 CoPZr98AYh6qGXAhrwf3fwANeJXKXy93GRy48lcmGQT0TIdmPLv0mxuhYKT+dVSO6mfx
 T51Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=1PbPu9MDpsX7CWlzIANvDidpxlS/QMPqApRlwiiHNw8=;
 b=PMDECkFtsAr2R698PtT9WC9/xcJbQBT5gvO/RxY+PtOYFp/TIGssL7/43ZmSZGBgJA
 Au+OSy5Hjd9wz8kw4YcGQayh42ZQ9fUYSdWqnqHhabh3OeDh+qGw/oVVRXPz9BbjZGE4
 PZ4a/tGJB1AeR4ppOpEvCG4OiTnO834XFH16CyZl2ehmbXlD/zz/HtsTdao+mUIwac/3
 p21/f61xYO9ERCU4sZ+JhT6IVbHnViv5HQRTVxR87rpBqn5TBqWreHawVkHXieIEDEMB
 vdo+GmJgDKSwRdwZcDByC3KfFp11Tt4wuYnqQWmSgG9ZBdUF6dL6QX+4FjwGpY/Kac+w
 zaTA==
X-Gm-Message-State: AOAM532N9ZnLnS0U8zQMwlbKBR1JWKSxQw7FsSBh/YUbsbg1qAkcB0t/
 6Pl8gkdznUR7RMm9jOf7J8E=
X-Google-Smtp-Source: ABdhPJyHaPx1l/c1P1VXN2zRGyOacWb0vDLgVVmiFhoO/p9Se1Yt0uzr0GEQ80rPSqJdr43xSsWcZA==
X-Received: by 2002:a17:90a:4811:: with SMTP id
 a17mr1198137pjh.130.1589917337613; 
 Tue, 19 May 2020 12:42:17 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id x5sm234038pfq.196.2020.05.19.12.42.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 19 May 2020 12:42:16 -0700 (PDT)
Date: Tue, 19 May 2020 12:42:15 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Ira Weiny <ira.weiny@intel.com>
Subject: Re: [PATCH] arch/{mips,sparc,microblaze,powerpc}: Don't enable
 pagefault/preempt twice
Message-ID: <20200519194215.GA71941@roeck-us.net>
References: <20200507150004.1423069-8-ira.weiny@intel.com>
 <20200518184843.3029640-1-ira.weiny@intel.com>
 <20200519165422.GA5838@roeck-us.net>
 <20200519184031.GB3356843@iweiny-DESK2.sc.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519184031.GB3356843@iweiny-DESK2.sc.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_124218_261089_B0C64B34 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, linux-csky@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Ingo Molnar <mingo@redhat.com>, linux-snps-arc@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, Borislav Petkov <bp@alien8.de>,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian Koenig <christian.koenig@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 11:40:32AM -0700, Ira Weiny wrote:
> On Tue, May 19, 2020 at 09:54:22AM -0700, Guenter Roeck wrote:
> > On Mon, May 18, 2020 at 11:48:43AM -0700, ira.weiny@intel.com wrote:
> > > From: Ira Weiny <ira.weiny@intel.com>
> > > 
> > > The kunmap_atomic clean up failed to remove one set of pagefault/preempt
> > > enables when vaddr is not in the fixmap.
> > > 
> > > Fixes: bee2128a09e6 ("arch/kunmap_atomic: consolidate duplicate code")
> > > Signed-off-by: Ira Weiny <ira.weiny@intel.com>
> > 
> > microblazeel works with this patch,
> 
> Awesome...  Andrew in my rush yesterday I should have put a reported by on the
> patch for Guenter as well.
> 
> Sorry about that Guenter,

No worries.

> Ira
> 
> > as do the nosmp sparc32 boot tests,
> > but sparc32 boot tests with SMP enabled still fail with lots of messages
> > such as:
> > 
> > BUG: Bad page state in process swapper/0  pfn:006a1
> > page:f0933420 refcount:0 mapcount:1 mapping:(ptrval) index:0x1
> > flags: 0x0()
> > raw: 00000000 00000100 00000122 00000000 00000001 00000000 00000000 00000000
> > page dumped because: nonzero mapcount
> > Modules linked in:
> > CPU: 0 PID: 1 Comm: swapper/0 Tainted: G    B             5.7.0-rc6-next-20200518-00002-gb178d2d56f29 #1
> > [f00e7ab8 :
> > bad_page+0xa8/0x108 ]
> > [f00e8b54 :
> > free_pcppages_bulk+0x154/0x52c ]
> > [f00ea024 :
> > free_unref_page+0x54/0x6c ]
> > [f00ed864 :
> > free_reserved_area+0x58/0xec ]
> > [f0527104 :
> > kernel_init+0x14/0x110 ]
> > [f000b77c :
> > ret_from_kernel_thread+0xc/0x38 ]
> > [00000000 :
> > 0x0 ]
> > 
> > Code path leading to that message is different but always the same
> > from free_unref_page().
> > 
> > Still testing ppc images.
> > 

ppc image tests are passing with this patch.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
