Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2CB27339
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 02:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zw5v0yvQvZBAtuhsbOY+WYkX9e7dTaV5HLCPu3cjgf0=; b=t/LVsXz2JR9X70
	YK2dVUuLoPzzUAh7cS8RFIvIVXC4JI+1ceSAKJn+poDyiAPpzrtIhmD53xTUnSZ9dZJAP/DZzcEyT
	hKumbNfjtLwfOlsZVN7H06U+3cotflodjrc66OPMPcB2Ttk+sATJAbT9atwRYRKgAvcltFb5R5JMe
	5lPmBUdlE1rL2OcnlehY0Ggvlv8n+NzSLCw7E9j55jedsqvQVE/tczIZmn1H6WfFLeCFF3+2gGs2R
	RHcop325TNjwyebPShWzWxaxv1HIlOReMsdvHVxlU3m5RPAh0C4d1rEi/+xUHKOwshttCjCFLdfaM
	mhCxpOja6fY14UuprubA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTbTk-0005TT-D4; Thu, 23 May 2019 00:21:04 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTbTc-0005T5-11
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 00:20:57 +0000
Received: by mail-qt1-x842.google.com with SMTP id j53so4695567qta.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 17:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kja4wR6FLtasYFQS1xUbhik8iG88bHuMFvf2ArrK0nw=;
 b=b1PxbkXji6rxJkxXzX+E8hmtsDc4EAG6spndGBpqTY6Mtd1Z82qmKG7IFdzEDWmzKK
 cpfPgmFkndIKUtDn3lZmf4ZAYcKRjit4YkqMU72A44nfyHayfu0+OGxh9SgysS/YRAv2
 RDEnuh2qly9nvvswbClZIbFXuZCzwJj2KYSwWCU/YgJUugR9fRVuJUTKIe2+8zLwiPOj
 anBDeIuRaK3lpaZn56KojfHXM/H6EWmNRZuecl/6erGrJ5dc4+VdWT4yxUQf8Rpv9nUY
 hRDkUmUo3tTzvQuC1Vf8iYC9BBrTle8EWAWahcABrO+2gaF43DLowx5aiqsiUBpSVZlJ
 7EAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kja4wR6FLtasYFQS1xUbhik8iG88bHuMFvf2ArrK0nw=;
 b=RCfaxsdBzPbmWmLMicIlYQUNRa/TOtrN9+QrDDY3mtRBrm+muJH/79zLeEJfoEQ3bg
 gCnop8ZyDJY+G3udTfD7SSOZR6UiPFiJ/WLsRMRlh+OJM5HZF9uMXtljbV4FBSpqYCkJ
 UTXITQ6AwwGs2wfgaP8UIMQQDCLA4K/UPoJoqNzCIsM8b1dp3sUFKMwVEsX24aNyg01x
 TE79GS3JjieIdC2a9Z1zYQiIY4WmZYHbl7+xkqltYOl06Op85AYetGjB7/fqrwb6fMOF
 g255IVb3LiYa8Eptf6WoATGvdnf1eLUmLe8XE8Um67KYeYSGF9BGYXFBBx1Hn0VUKysA
 lqcA==
X-Gm-Message-State: APjAAAWmLfgMo/Y+dE+uUazFTiJOA+zrByJfRBwJmLrC+QaohWw0m+gD
 JNfEsKi5da7jWoJ+iRiMzhc2ww==
X-Google-Smtp-Source: APXvYqwzvo9H/aW7qSfx2OQVIHnUtdd1Cyzpi6J44RNo2JLbDhDXh7kfDH2OJy33sD2sQGXynL6VQQ==
X-Received: by 2002:ac8:f71:: with SMTP id l46mr70609860qtk.321.1558570854263; 
 Wed, 22 May 2019 17:20:54 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-49-251.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.49.251])
 by smtp.gmail.com with ESMTPSA id t30sm15637238qtc.80.2019.05.22.17.20.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 May 2019 17:20:53 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hTbTZ-0001Zh-03; Wed, 22 May 2019 21:20:53 -0300
Date: Wed, 22 May 2019 21:20:52 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
Message-ID: <20190523002052.GF15389@ziepe.ca>
References: <cover.1557160186.git.andreyknvl@google.com>
 <20190517144931.GA56186@arrakis.emea.arm.com>
 <20190521184856.GC2922@ziepe.ca>
 <20190522134925.GV28398@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522134925.GV28398@e103592.cambridge.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_172056_072891_93AD212E 
X-CRM114-Status: GOOD (  24.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Christian Koenig <Christian.Koenig@amd.com>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Lee Smith <Lee.Smith@arm.com>, linux-kselftest@vger.kernel.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, Evgeniy Stepanov <eugenis@google.com>,
 linux-media@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Yishai Hadas <yishaih@mellanox.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 02:49:28PM +0100, Dave Martin wrote:
> On Tue, May 21, 2019 at 03:48:56PM -0300, Jason Gunthorpe wrote:
> > On Fri, May 17, 2019 at 03:49:31PM +0100, Catalin Marinas wrote:
> > 
> > > The tagged pointers (whether hwasan or MTE) should ideally be a
> > > transparent feature for the application writer but I don't think we can
> > > solve it entirely and make it seamless for the multitude of ioctls().
> > > I'd say you only opt in to such feature if you know what you are doing
> > > and the user code takes care of specific cases like ioctl(), hence the
> > > prctl() proposal even for the hwasan.
> > 
> > I'm not sure such a dire view is warrented.. 
> > 
> > The ioctl situation is not so bad, other than a few special cases,
> > most drivers just take a 'void __user *' and pass it as an argument to
> > some function that accepts a 'void __user *'. sparse et al verify
> > this. 
> > 
> > As long as the core functions do the right thing the drivers will be
> > OK.
> > 
> > The only place things get dicy is if someone casts to unsigned long
> > (ie for vma work) but I think that reflects that our driver facing
> > APIs for VMAs are compatible with static analysis (ie I have no
> > earthly idea why get_user_pages() accepts an unsigned long), not that
> > this is too hard.
> 
> If multiple people will care about this, perhaps we should try to
> annotate types more explicitly in SYSCALL_DEFINEx() and ABI data
> structures.
> 
> For example, we could have a couple of mutually exclusive modifiers
> 
> T __object *
> T __vaddr * (or U __vaddr)
> 
> In the first case the pointer points to an object (in the C sense)
> that the call may dereference but not use for any other purpose.

How would you use these two differently?

So far the kernel has worked that __user should tag any pointer that
is from userspace and then you can't do anything with it until you
transform it into a kernel something

> to tell static analysers the real type of pointers smuggled through
> UAPI disguised as other types (*cough* KVM, etc.)

Yes, that would help alot, we often have to pass pointers through a
u64 in the uAPI, and there is no static checker support to make sure
they are run through the u64_to_user_ptr() helper.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
