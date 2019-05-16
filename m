Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8296320B37
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 17:29:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PIPaSgYEQWDGKdHnpIXTI/5Gqjarw7U1PmDF8aIQv2Q=; b=FDLit/1Wm5r9CX
	hFhuySZik6z+M9whABwet6FdIhCLQS0GnSME1qHrYz7S4Cf4CWs0pCs7wyDxIQqO+eI8llTa6Nm+L
	ocovV09KLeTyH3LAY87GekVSbnNYWdlTQLGMdkjjnPRUL+c7e7YtmRCrJx8mx9G2xzkQPwrZ3gpka
	GgUCNXA/95MAmdcxvAw2C84dyQwu31uxm5H6ExWAnl0kreW3w24jrIzH8niSqaBTcFkFKwx0UYKk2
	Es5eahbWs0BoiyrYxVjzYYPP9WEpwy87VWuwBn143Wredz0wz8G+AZPr9W3zQZjkh6jwXJFvO3smn
	tEuj8DpTQjXaCa+CJ/ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRIK4-0003Un-Ah; Thu, 16 May 2019 15:29:32 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRIJv-0003Ts-T2
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 15:29:25 +0000
Received: by mail-ed1-x542.google.com with SMTP id a8so5848600edx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 08:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZqfBKUXmncS+f99++ptXSxdqupLw9zmhEoHFhOKQ3+w=;
 b=TH4z/rM7ErguN84LC3AmRg3JM/hVu0pzNCfG54H90jzb63FEyWpgQxI/RMgxJKMw0P
 YMcyNk31xsPD9o3Q8SwKVFbPkeg8kucRDIsE3yDY3iiXnyBwTwnYxeZvDW5/V+wBXU6a
 4Whkmp9tF7azl07xuKt/fN1RfMwR7c1B7epJGJ4YizDr1inzgV4yUswyquIaazuD7NSA
 +Y7PT7f4mQIjQrv4yQyYO9MGe0DD0FnBStZnFHo1gVuPfCi9qKCZU5pU6DsIxSnGA9Ik
 9SEOtQn5L4G4624dzeKPE3TTelvggQSyZJ+x/s6KcHf9L4yAiTiSgxh1JqlUq122MXzB
 4CVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZqfBKUXmncS+f99++ptXSxdqupLw9zmhEoHFhOKQ3+w=;
 b=IhA5y0Btbyp65CUH+rqza262hrMPqC8+BrDTw4TDQMEPc4J+S+U8AzwLd3Kd83p4JU
 i3RLHEMnD5d9gNGtkxOBp9+WOwnuTIelW92oJ0R+qRBCDO6BMyfMiE1iQg2xX1tVjyOh
 o48WZJZtFpq/nHu3gUWrFeyvsVC1P+MdVT5dAtm6DShvDpsYSKvrfpSt3/Q9G2ZZT6xW
 /TobvoLxRIRmYjr0ckHuBkgPQADRERJfpzuRd+T0IyO8gepUX2E7xtzRBI6vX16YjcbH
 igNffFLD78XRszgTEgSnld5GKkYoveju9UU5qHdnbrTqlCuLsrQ/m9wkA8dzfdxGRDlB
 6rzg==
X-Gm-Message-State: APjAAAXqpOgY6pbhg5mcnX2FQ3fcvE3u1hXduGK3rxqrWTQGBuRJtRJ+
 5AKkpKzprdb0VfOdVSvKwAWpWg==
X-Google-Smtp-Source: APXvYqzND3qJO+X7rGwmXjyWOGo7yuQQOnxCqVFCr+1kxGCEKNbb6bF5poI+TQvkmuF3C5Oy1BVzkw==
X-Received: by 2002:a50:a886:: with SMTP id k6mr51048650edc.211.1558020559731; 
 Thu, 16 May 2019 08:29:19 -0700 (PDT)
Received: from brauner.io ([193.96.224.243])
 by smtp.gmail.com with ESMTPSA id b4sm1889513edf.7.2019.05.16.08.29.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 16 May 2019 08:29:19 -0700 (PDT)
Date: Thu, 16 May 2019 17:29:16 +0200
From: Christian Brauner <christian@brauner.io>
To: Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH v1 1/2] pid: add pidfd_open()
Message-ID: <20190516152915.3t2wofeu3xsyhfbd@brauner.io>
References: <20190516135944.7205-1-christian@brauner.io>
 <20190516142659.GB22564@redhat.com>
 <20190516145607.j43xyj26k6l5vmbd@yavin>
 <20190516150611.GC22564@redhat.com>
 <20190516151202.hrawrx7hxllmz2di@yavin>
 <20190516152252.GD22564@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516152252.GD22564@redhat.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_082923_952217_D7ADFE29 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-mips@vger.kernel.org, dhowells@redhat.com, joel@joelfernandes.org,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-api@vger.kernel.org, elena.reshetova@intel.com,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org, dancol@google.com,
 Geert Uytterhoeven <geert@linux-m68k.org>, serge@hallyn.com,
 linux-xtensa@linux-xtensa.org, keescook@chromium.org, arnd@arndb.de,
 jannh@google.com, linux-m68k@lists.linux-m68k.org, viro@zeniv.linux.org.uk,
 luto@kernel.org, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, Aleksa Sarai <cyphar@cyphar.com>,
 torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
 luto@amacapital.net, ebiederm@xmission.com, linux-alpha@vger.kernel.org,
 akpm@linux-foundation.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 05:22:53PM +0200, Oleg Nesterov wrote:
> On 05/17, Aleksa Sarai wrote:
> >
> > On 2019-05-16, Oleg Nesterov <oleg@redhat.com> wrote:
> > > On 05/17, Aleksa Sarai wrote:
> > > > On 2019-05-16, Oleg Nesterov <oleg@redhat.com> wrote:
> > > > > On 05/16, Christian Brauner wrote:
> > > > > > With the introduction of pidfds through CLONE_PIDFD it is possible to
> > > > > > created pidfds at process creation time.
> > > > >
> > > > > Now I am wondering why do we need CLONE_PIDFD, you can just do
> > > > >
> > > > > 	pid = fork();
> > > > > 	pidfd_open(pid);
> > > >
> > > > While the race window would be exceptionally short, there is the
> > > > possibility that the child will die
> > >
> > > Yes,
> > >
> > > > and their pid will be recycled
> > > > before you do pidfd_open().
> > >
> > > No.
> > >
> > > Unless the caller's sub-thread does wait() before pidfd_open(), of course.
> > > Or unless you do signal(SIGCHILD, SIG_IGN).
> >
> > What about CLONE_PARENT?
> 
> I should have mentioned CLONE_PARENT ;)
> 
> Of course in this case the child can be reaped before pidfd_open(). But how often
> do you or other people use clone(CLONE_PARENT) ? not to mention you can trivially
> eliminate/detect this race if you really need this.
> 
> Don't get me wrong, I am not trying to say that CLONE_PIDFD is a bad idea.
> 
> But to me pidfd_open() is much more useful. Say, as a perl programmer I can easily
> use pidfd_open(), but not CLONE_PIDFD.

Right, but for a libc, service- or container manager CLONE_PIDFD is much
nicer when spawning processes quickly. :) I think both are very good to
have.

Thanks, Oleg. As always super helpful reviews. :)
Christian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
