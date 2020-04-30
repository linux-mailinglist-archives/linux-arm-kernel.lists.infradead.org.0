Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C927C1BEEFD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 06:20:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VPpnJs3napfFGkt5iGctCgIE4S4IrfV5WooCX5YVQG4=; b=h4d/7hg0WHtBNO
	kYG7za0m7BP3lvei5DkFMkteYpjjGXX2kTMHVotFWC+Prqvwade6XNVr+lCm7pgBGynunzLmQY0Fu
	0VOhfIpESvapQfAMJLhZZ2EinOFioZ5TpENJ5wRQkhvaY9T5V+kBNqatbxXXGgzSlS7dOEc3ppRLS
	y0GsbyhJg6xQR7MDdcIW/J2lBqA7XlzJIDJ5WxWLELqnMWwF1oiaE4a4u5jx1zlofU2xnNlef8Qmj
	0VWOZ1OVJOilbhR/zZ73Dh+IkzAdpPNHx+Wmw8mg+9gCcKGrk24iJZZ95htZuEbcyRVfZ45+BjNPL
	92VHAvypoyLSBQk9qhgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU0g2-0000bw-Tr; Thu, 30 Apr 2020 04:19:58 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU0ft-0000aF-SP
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 04:19:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588220386;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pKeDb+G73Y1fhvr2sbvxveBAFjhm8ykk8Eol1hZCnTo=;
 b=b32Iy/LUYZbBte7LA24Ot0H5/A9H1ipASzn1Pp5zc1FpQzGMzxutKWJaSgHnqc/rz4NUxY
 K3pGMzEY2YlxI05r9gLqEnBcsgFK4t1NWYMVYtudU2ZUnM0Xu1p/oyPWwRohekHPYAJGel
 yfORug4Io7r4m/YVDT0d30lDQNZbW/E=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-381-Xoea1DQGNZeUurLWXE0d9A-1; Thu, 30 Apr 2020 00:19:41 -0400
X-MC-Unique: Xoea1DQGNZeUurLWXE0d9A-1
Received: by mail-qv1-f70.google.com with SMTP id z14so5117975qvv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 21:19:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y3qA5YQectFk94IrJZbga3NnhiVolyAIIRBNdV0hWko=;
 b=CFZD5KXTKSypRdW9sl26BgzC3LdPjSEi5DAkDbWmjl6iWCBJQifN8qONQl3WXsPlyt
 PQydHAfcLwyEP6p+KCLKiY0rphS/8Ee+iNcJFAEpo7UGpeBKjFFLVvjMdoQ8DSRUycch
 NNd8OMp1eAzfUvAmWr/HOc+u1DhAYx8dQfLJtf2t4Pv6tupkvnK9h+z+UmzCjEfTp32W
 WZGDzBzW5yg0CV1MKXd4QS6yw62aKa66haXW/Wo7vJjhdijPAP1Q82mSnmQ7HAUL+zZE
 Gk/v88K+CecxL+q09sxvgVe5FFZ2fjjHgSCmcIXIZd17BxR/40k2FNgs1orxw4naa3Sb
 aSXw==
X-Gm-Message-State: AGi0PubPoExO/g9eYqdeQVtqkVydo1imyNcc0NeCAPz+a5doo6iz+nHZ
 e+GurwAgxSalbF3t61ARSrlicpQ1wFM/wvcpISJtCLfiHLyijwkf/Wf5Wm99JhYnegl8NvrdAhq
 LwLXDpUGt2XW25glKeJz5odwN5ddHX54rhbnCPkn2EaGpfBjRVJo=
X-Received: by 2002:ac8:4a06:: with SMTP id x6mr1781022qtq.163.1588220381016; 
 Wed, 29 Apr 2020 21:19:41 -0700 (PDT)
X-Google-Smtp-Source: APiQypIIKuSa5A+bA3rxaYpbMr2qY1S5iFmZ3KbqmvVuXVRobXja+joDUE5FfWMDx8MBIFnGysBfmL5Fe5CK6jPRK2U=
X-Received: by 2002:ac8:4a06:: with SMTP id x6mr1780995qtq.163.1588220380778; 
 Wed, 29 Apr 2020 21:19:40 -0700 (PDT)
MIME-Version: 1.0
References: <1588063937-5744-1-git-send-email-bhsharma@redhat.com>
 <20200428100745.GA15300@C02TD0UTHF1T.local>
In-Reply-To: <20200428100745.GA15300@C02TD0UTHF1T.local>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Thu, 30 Apr 2020 09:49:27 +0530
Message-ID: <CACi5LpM9_O6gRgMgfAXrmZuaO111xJk3=xtjYXK5rKhTF7Znsg@mail.gmail.com>
Subject: Re: [PATCH] hw_breakpoint: Remove unused
 '__register_perf_hw_breakpoint' declaration
To: Mark Rutland <mark.rutland@arm.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_211950_001215_81CFF16E 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Frederic Weisbecker <fweisbec@gmail.com>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

Thanks for the review.

On Tue, Apr 28, 2020 at 3:37 PM Mark Rutland <mark.rutland@arm.com> wrote:
>
> Hi Bhupesh,
>
> On Tue, Apr 28, 2020 at 02:22:17PM +0530, Bhupesh Sharma wrote:
> > commit b326e9560a28 ("hw-breakpoints: Use overflow handler instead of
> > the event callback") removed '__register_perf_hw_breakpoint' function
> > usage and replaced it with 'register_perf_hw_breakpoint' function.
> >
> > Remove the left-over unused '__register_perf_hw_breakpoint' declaration
> > from 'hw_breakpoint.h' as well.
> >
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
>
> This is generic code, so I'm a bit confused as to why you've sent it to
> us. I'd expect this to go via the perf core maintainers (cc'd).

Oops, my bad. Seems my git patch sending script messed up while
picking up the perf maintainers (who should have been Cc'ed on the
patch) :(

Thanks for adding them in the Cc list.

Hi Peter, Frederic, Ingo - Kindly help review this patch and help
apply the patch (if suitable).

Thanks,
Bhupesh

> FWIW, this looks sane to me, so:
>
> Acked-by: Mark Rutland <mark.rutland@arm.com>
>
> Mark.
>
> > ---
> >  include/linux/hw_breakpoint.h | 3 ---
> >  1 file changed, 3 deletions(-)
> >
> > diff --git a/include/linux/hw_breakpoint.h b/include/linux/hw_breakpoint.h
> > index 6058c3844a76..fe1302da8e0f 100644
> > --- a/include/linux/hw_breakpoint.h
> > +++ b/include/linux/hw_breakpoint.h
> > @@ -72,7 +72,6 @@ register_wide_hw_breakpoint(struct perf_event_attr *attr,
> >                           void *context);
> >
> >  extern int register_perf_hw_breakpoint(struct perf_event *bp);
> > -extern int __register_perf_hw_breakpoint(struct perf_event *bp);
> >  extern void unregister_hw_breakpoint(struct perf_event *bp);
> >  extern void unregister_wide_hw_breakpoint(struct perf_event * __percpu *cpu_events);
> >
> > @@ -115,8 +114,6 @@ register_wide_hw_breakpoint(struct perf_event_attr *attr,
> >                           void *context)              { return NULL; }
> >  static inline int
> >  register_perf_hw_breakpoint(struct perf_event *bp)   { return -ENOSYS; }
> > -static inline int
> > -__register_perf_hw_breakpoint(struct perf_event *bp)         { return -ENOSYS; }
> >  static inline void unregister_hw_breakpoint(struct perf_event *bp)   { }
> >  static inline void
> >  unregister_wide_hw_breakpoint(struct perf_event * __percpu *cpu_events)      { }
> > --
> > 2.7.4
> >
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
