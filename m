Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F042523B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 16:33:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wYGEIlTiaxaA4kuSEFd8xxcVqb0EPm/bW5GDSrByVDw=; b=KKHauVm9OC7Zh/
	GUvK+k/izU9stOPNZjDT5bikyoF0W74kPAZ9+aQxnNdDLeN9KA0T1jmpC5TTjkHYoIEvM079fVhnN
	gtjGw6rTVjDmXi4iUU3IHOH85kzQcg/fcQKMUac0WewbpGw0yLXCBM0BN8saCZ6xLT2JobY7u8dKO
	9sA8nFZ1J8mN7rzNhY0x4hv7RkTylZOD5JwEJucPQFi7DT5lgU4oio6XlWnq4K6zdskzJ/smHfnW5
	1/jWQ9eNj620SC+hn4Q9oSGjMnVd1onfnx8sy7JOA6/IAXcBlGrhZ/zHqb2ESarfWp47fYI97jz3P
	E9eVOGxT8wbky9qfpZnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT5pV-0003MA-Gc; Tue, 21 May 2019 14:33:25 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT5om-0002f6-Sw
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 14:33:04 +0000
Received: by mail-pl1-x641.google.com with SMTP id c5so8515318pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 07:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CyEpPRrV9RS3Zg004GbU3opzLF2psDEeRox6G2Dzgi4=;
 b=R7tC9jV5a+mxQO62x+PWvbdzprD7UnwlstIi1E921IR8MQwvIjqpWXEjFq96wgtFnG
 fTY3nrMJ7vCArpwoCVItDxzdQ40Qirw2JBMtmG9CODfWHtTXbOzlgqZAKYfvraG5V/E/
 frjGG7jnSr228cVlsj/AYjMiDaehudskW3T4AmnYaTekKHbr2YRWH9MAzfQSuPvXNkig
 nGR3hP9fBOFFBpPON8OQVuBm2SSMmqqE80W+7bGmI4VUShRRrCVcCUx8VLhizIP/+v8d
 eMhf2YFuLCOUzRqivSwvxO5aWPP4xWsn3q69TEqczL5TXIDQcUFBiSLNtQvcQ37Ukm91
 n7lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CyEpPRrV9RS3Zg004GbU3opzLF2psDEeRox6G2Dzgi4=;
 b=c5KK8hO+8Je/KPhyz6/gWccqXPFzBw+2FI9eVox1KRIqnDnJEIpC3UzVp2QiZ8YFak
 shKbvBNAR2/BRZoz2oCEIkoSTjO4SQYwCmmzbhW1IjskHnPD46ygm+eIKN1bR3YKZAMK
 IHyeHpK4RrWW+LQS6mjH4NGY7Ay8ozJrc2kmH8675eWrZbbVjgfAt0c5wbDnGMMJbvin
 frKlC3wo9CWpuTBBG/k4acq+Om7/SO3lRFVRarA+3qpGRH+3A/eiwUFoZBkuThorTYeY
 vRAJu/TZHoSKs2t47bCo0sHX65j0hH53bXaJwna1pt60Ji0g9qZFpL8NVfycq0pY7HVP
 /4kw==
X-Gm-Message-State: APjAAAXVDrP8tQU2ToMI375uy6i45ojvCpVkOvQ3js4TTalSg6vDtuzz
 hEskgcz/SFLHjsOKWKgFS2tHUA==
X-Google-Smtp-Source: APXvYqzfSnHKDaWx/UeH1zZV9VxL0yBVD2SxGAqwuR5ORrqMhe2WMo1TCAFF94hkLIeOM4eQM6MVkw==
X-Received: by 2002:a17:902:ba88:: with SMTP id
 k8mr9263163pls.16.1558449159148; 
 Tue, 21 May 2019 07:32:39 -0700 (PDT)
Received: from brauner.io ([208.54.39.182])
 by smtp.gmail.com with ESMTPSA id q5sm25819914pfb.51.2019.05.21.07.32.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 21 May 2019 07:32:38 -0700 (PDT)
Date: Tue, 21 May 2019 16:32:22 +0200
From: Christian Brauner <christian@brauner.io>
To: jannh@google.com, oleg@redhat.com, viro@zeniv.linux.org.uk,
 torvalds@linux-foundation.org, linux-kernel@vger.kernel.org, arnd@arndb.de
Subject: Re: [PATCH v3 1/2] pid: add pidfd_open()
Message-ID: <20190521143220.crb2zyvdov3fl4g7@brauner.io>
References: <20190520155630.21684-1-christian@brauner.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520155630.21684-1-christian@brauner.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_073241_539841_60066146 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-mips@vger.kernel.org, dhowells@redhat.com, joel@joelfernandes.org,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org,
 elena.reshetova@intel.com, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, dancol@google.com, kernel-team@android.com,
 serge@hallyn.com, linux-xtensa@linux-xtensa.org, keescook@chromium.org,
 linux-m68k@lists.linux-m68k.org, luto@kernel.org, tglx@linutronix.de,
 surenb@google.com, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, linux-api@vger.kernel.org, cyphar@cyphar.com,
 luto@amacapital.net, ebiederm@xmission.com, linux-alpha@vger.kernel.org,
 akpm@linux-foundation.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 05:56:29PM +0200, Christian Brauner wrote:
> This adds the pidfd_open() syscall. It allows a caller to retrieve pollable
> pidfds for a process which did not get created via CLONE_PIDFD, i.e. for a
> process that is created via traditional fork()/clone() calls that is only
> referenced by a PID:
> 
> int pidfd = pidfd_open(1234, 0);
> ret = pidfd_send_signal(pidfd, SIGSTOP, NULL, 0);
> 
> With the introduction of pidfds through CLONE_PIDFD it is possible to
> created pidfds at process creation time.
> However, a lot of processes get created with traditional PID-based calls
> such as fork() or clone() (without CLONE_PIDFD). For these processes a
> caller can currently not create a pollable pidfd. This is a problem for
> Android's low memory killer (LMK) and service managers such as systemd.
> Both are examples of tools that want to make use of pidfds to get reliable
> notification of process exit for non-parents (pidfd polling) and race-free
> signal sending (pidfd_send_signal()). They intend to switch to this API for
> process supervision/management as soon as possible. Having no way to get
> pollable pidfds from PID-only processes is one of the biggest blockers for
> them in adopting this api. With pidfd_open() making it possible to retrieve
> pidfds for PID-based processes we enable them to adopt this api.
> 
> In line with Arnd's recent changes to consolidate syscall numbers across
> architectures, I have added the pidfd_open() syscall to all architectures
> at the same time.
> 
> Signed-off-by: Christian Brauner <christian@brauner.io>
> Reviewed-by: Oleg Nesterov <oleg@redhat.com>

This now also carries a Reviewed-by from David.

> Acked-by: Arnd Bergmann <arnd@arndb.de>
> Cc: "Eric W. Biederman" <ebiederm@xmission.com>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Joel Fernandes (Google) <joel@joelfernandes.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Jann Horn <jannh@google.com>
> Cc: David Howells <dhowells@redhat.com>
> Cc: Andy Lutomirsky <luto@kernel.org>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Aleksa Sarai <cyphar@cyphar.com>
> Cc: Linus Torvalds <torvalds@linux-foundation.org>
> Cc: Al Viro <viro@zeniv.linux.org.uk>
> Cc: linux-api@vger.kernel.org

I've moved pidfd_open() into my for-next branch together with Joel's
pidfd polling changes. Everything is based on v5.2-rc1.

The chosen syscall number for now is 434. David is going to send out
another pile of mount api related syscalls. I'll coordinate with him
accordingly prior to the 5.3 merge window.

Thanks!
Christian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
