Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6202343B31
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:27:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4J2Mjgz2guoB6VUnu6ftl+LZT2uj+S/mJ2GqtNnfOc=; b=HATfwqPWGxgx5j
	Svfh7LudEyavVLnacm8+hOlmNI/gDBuIBXXl9JEP0Rb7wpYUJESYBioON5X5nhETJmwDFggj1tVKz
	03swrCW7yJvkLLCE4kNld7LozFEahWaJLNk16Y+Z4m8cSQpkcb7ArpFOpeSPwO7RWSQlZOPlMfbzR
	Hz0YU+SErx6/6QAIoe1S1gFbFdDvCMCEcQOtodmD+hYS+Iz6IBtzBClk149dkRTE1OieDo6Hoxp0I
	ECPHKP1AMwyzOU1w6Int81/ydVe+p0VrobNOX4fyarK3Fn9b9Rd6gNxclexVx33UjurahWRVUM2ix
	E13DQdBSCLFF/gFrE08Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRd4-00025L-5J; Thu, 13 Jun 2019 15:27:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRcr-000241-1W
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:26:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A46BD3EF;
 Thu, 13 Jun 2019 08:26:49 -0700 (PDT)
Received: from C02TF0J2HF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3FA233F718;
 Thu, 13 Jun 2019 08:26:36 -0700 (PDT)
Date: Thu, 13 Jun 2019 16:26:32 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v17 03/15] arm64: Introduce prctl() options to control
 the tagged user addresses ABI
Message-ID: <20190613152632.GT28951@C02TF0J2HF1T.local>
References: <cover.1560339705.git.andreyknvl@google.com>
 <a7a2933bea5fe57e504891b7eec7e9432e5e1c1a.1560339705.git.andreyknvl@google.com>
 <20190613110235.GW28398@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613110235.GW28398@e103592.cambridge.arm.com>
User-Agent: Mutt/1.11.2 (2019-01-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_082653_177709_D63C6697 
X-CRM114-Status: GOOD (  26.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Christian Koenig <Christian.Koenig@amd.com>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, Kostya Serebryany <kcc@google.com>,
 Khalid Aziz <khalid.aziz@oracle.com>, Lee Smith <Lee.Smith@arm.com>,
 linux-kselftest@vger.kernel.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Evgeniy Stepanov <eugenis@google.com>,
 linux-media@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>, Yishai Hadas <yishaih@mellanox.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On Thu, Jun 13, 2019 at 12:02:35PM +0100, Dave P Martin wrote:
> On Wed, Jun 12, 2019 at 01:43:20PM +0200, Andrey Konovalov wrote:
> > +/*
> > + * Global sysctl to disable the tagged user addresses support. This control
> > + * only prevents the tagged address ABI enabling via prctl() and does not
> > + * disable it for tasks that already opted in to the relaxed ABI.
> > + */
> > +static int zero;
> > +static int one = 1;
> 
> !!!
> 
> And these can't even be const without a cast.  Yuk.
> 
> (Not your fault though, but it would be nice to have a proc_dobool() to
> avoid this.)

I had the same reaction. Maybe for another patch sanitising this pattern
across the kernel.

> > --- a/include/uapi/linux/prctl.h
> > +++ b/include/uapi/linux/prctl.h
> > @@ -229,4 +229,9 @@ struct prctl_mm_map {
> >  # define PR_PAC_APDBKEY			(1UL << 3)
> >  # define PR_PAC_APGAKEY			(1UL << 4)
> >  
> > +/* Tagged user address controls for arm64 */
> > +#define PR_SET_TAGGED_ADDR_CTRL		55
> > +#define PR_GET_TAGGED_ADDR_CTRL		56
> > +# define PR_TAGGED_ADDR_ENABLE		(1UL << 0)
> > +
> 
> Do we expect this prctl to be applicable to other arches, or is it
> strictly arm64-specific?

I kept it generic, at least the tagged address part. The MTE bits later
on would be arm64-specific.

> > @@ -2492,6 +2498,16 @@ SYSCALL_DEFINE5(prctl, int, option, unsigned long, arg2, unsigned long, arg3,
> >  			return -EINVAL;
> >  		error = PAC_RESET_KEYS(me, arg2);
> >  		break;
> > +	case PR_SET_TAGGED_ADDR_CTRL:
> > +		if (arg3 || arg4 || arg5)
> 
> <bikeshed>
> 
> How do you anticipate these arguments being used in the future?

I don't expect them to be used at all. But since I'm not sure, I'd force
them as zero for now rather than ignored. The GET is supposed to return
the SET arg2, hence I'd rather not used the other arguments.

> For the SVE prctls I took the view that "get" could only ever mean one
> thing, and "put" already had a flags argument with spare bits for future
> expansion anyway, so forcing the extra arguments to zero would be
> unnecessary.
> 
> Opinions seem to differ on whether requiring surplus arguments to be 0
> is beneficial for hygiene, but the glibc prototype for prctl() is
> 
> 	int prctl (int __option, ...);
> 
> so it seemed annoying to have to pass extra arguments to it just for the
> sake of it.  IMHO this also makes the code at the call site less
> readable, since it's not immediately apparent that all those 0s are
> meaningless.

It's fine by me to ignore the other arguments. I just followed the
pattern of some existing prctl options. I don't have a strong opinion
either way.

> > +			return -EINVAL;
> > +		error = SET_TAGGED_ADDR_CTRL(arg2);
> > +		break;
> > +	case PR_GET_TAGGED_ADDR_CTRL:
> > +		if (arg2 || arg3 || arg4 || arg5)
> > +			return -EINVAL;
> > +		error = GET_TAGGED_ADDR_CTRL();
> 
> Having a "get" prctl is probably a good idea, but is there a clear
> usecase for it?

Not sure, maybe some other library (e.g. a JIT compiler) would like to
check whether tagged addresses have been enabled during application
start and decide to generate tagged pointers for itself. It seemed
pretty harmless, unless we add more complex things to the prctl() that
cannot be returned in one request).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
