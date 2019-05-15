Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CEF1F7CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 17:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDPFmHZlUqDw40TmyfIBhf5mx37FH9Pi5i/FYoh2vo8=; b=JMibE16OX1gJyo
	0jKM8/Cab5eMh8ukYNMaLGhHxFQ4WvG1AfuRJANNZjBuJADSqt9UNCSMQVK+ZlDOt02RvF4ND5hcr
	lI8U2x5zqpYV56m0Mhqv9BNAi+Ju20H8ZNGQSpunDzJdriknGHcrrftNA9QGOvoiJscKKu8mg8Gem
	CNV7E6ov+VSLTYI14kwRFbCY6zp7UUUOyxNpUcph/DlnfUMUvZJtq95CWHL1nPXQLsKwdKjstW0+f
	9fdBnF8RrBjfnuEq/WKuv7skhK0hQG8hwSU7cH2cr1TY3uD6Rgg9ar8fScWiTqFFcZex8DJoFgccj
	UD7doJNEKsIvWyRQPw+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQw17-0002z7-2Q; Wed, 15 May 2019 15:40:29 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQw0z-0002yX-7t
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 15:40:22 +0000
Received: by mail-ed1-x544.google.com with SMTP id f37so384685edb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 08:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xdgkq7E7+92ZW8x2Wkn7bfn+NRy1PNeG8DcUh6bxPio=;
 b=bfuTPZdAtZJEgr+LRkX72jzoj84BPgpwvQPX7TINdboNhdzKNjJGvDzVvqvaaAh8Km
 iqTakFfgT4CJH4/cI6DSpX88s8Sfap4XoOKg2RDeLLxirLNHPqbOEbbj/6aCt06XF/9P
 X/us6CYYROr8DPKhgLY3SLh3ZeL1/eih/MR9PMbtrWfnl7CFIcBUAogBL0DY90Buod6x
 uECgJQv/SirIkuk/ECloyg95oA5R0oldoWVKg0CvJmRDjoeJEJ6edtPOwuBN6C4fcGnO
 BW2YYNw0hfraOKLIXAT/1qzfZOA/kv0yJLeVZCoYp69fdwL2bHQEsKScA+TLGS8z8aPr
 de9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xdgkq7E7+92ZW8x2Wkn7bfn+NRy1PNeG8DcUh6bxPio=;
 b=HYxi3aMLpU4Wzg6SaUbh3rP43qeL0YD1j7lyb1/Gyo9qeS0PqwD1srAL+86aN9uHUw
 fmpSjtBsJixNCa2Omgygt9BOo78bhFbtdGst11U1twdMB4qS+4OH5eOiQKGijbnyICmo
 fe+gseFn2W9b46ytUGHNknLhAJ90Fvu+bi8binqifPJ2dDo4TY7mIaiRWhh2TsP0Cepu
 eLfzvWJ1cLqOT9HjedXsFxQE/vqAAGAUn/bXu7pihvzjPxU+5PdSPj8mYIktAjr/x/I1
 EtpgdGaBmcYBEygQHXgTf9/vDddIxcffJYZLp5O0letakC54N5tqtDeqoq4bZFn8GGOa
 NJJQ==
X-Gm-Message-State: APjAAAXJgvlGUufcfVOYhliX3cLifFJZERIyxd9bbCTUSs8iB5iIpL/d
 oKrefUgL0HZV9RvXxJYvcpDDzQ==
X-Google-Smtp-Source: APXvYqwxmqRE9VJlOAD22A4kr7WHnyESSHU1d/yh8q05kzTP6OSdD5czfo3EsMWHZUHFy4XAQOiyOg==
X-Received: by 2002:a50:87b5:: with SMTP id a50mr42379905eda.118.1557934819122; 
 Wed, 15 May 2019 08:40:19 -0700 (PDT)
Received: from brauner.io ([193.96.224.243])
 by smtp.gmail.com with ESMTPSA id p52sm887134eda.79.2019.05.15.08.40.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 15 May 2019 08:40:18 -0700 (PDT)
Date: Wed, 15 May 2019 17:40:15 +0200
From: Christian Brauner <christian@brauner.io>
To: Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH 1/2] pid: add pidfd_open()
Message-ID: <20190515154014.4jaxuw4fcgbusnbt@brauner.io>
References: <20190515100400.3450-1-christian@brauner.io>
 <20190515143857.GB18892@redhat.com>
 <20190515153515.GA20783@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515153515.GA20783@redhat.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_084021_288275_5F7B7B14 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-mips@vger.kernel.org, dhowells@redhat.com,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-api@vger.kernel.org, elena.reshetova@intel.com,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, keescook@chromium.org, arnd@arndb.de,
 jannh@google.com, linux-m68k@lists.linux-m68k.org, viro@zeniv.linux.org.uk,
 luto@kernel.org, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, cyphar@cyphar.com, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, luto@amacapital.net, ebiederm@xmission.com,
 linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 05:35:15PM +0200, Oleg Nesterov wrote:
> On 05/15, Oleg Nesterov wrote:
> >
> > On 05/15, Christian Brauner wrote:
> > >
> > > +SYSCALL_DEFINE2(pidfd_open, pid_t, pid, unsigned int, flags)
> > > +{
> > > +	int fd, ret;
> > > +	struct pid *p;
> > > +	struct task_struct *tsk;
> > > +
> > > +	if (flags)
> > > +		return -EINVAL;
> > > +
> > > +	if (pid <= 0)
> > > +		return -EINVAL;
> > > +
> > > +	p = find_get_pid(pid);
> > > +	if (!p)
> > > +		return -ESRCH;
> > > +
> > > +	rcu_read_lock();
> > > +	tsk = pid_task(p, PIDTYPE_PID);
> >
> > You do not need find_get_pid() before rcu_lock and put_pid() at the end.
> > You can just do find_vpid() under rcu_read_lock().
> 
> Ah, sorry. Somehow I forgot you need to call pidfd_create(pid), you can't
> do this under rcu_read_lock().
> 
> So I was wrong, you can't avoid get/put_pid.

Yeah, I haven't made any changes yet.

Christian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
