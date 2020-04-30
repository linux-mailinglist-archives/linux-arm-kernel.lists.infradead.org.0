Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A712E1C0333
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXgc0DuM+UZK806b3CTYEz9e4r7oLbLMGVPySfAsHU8=; b=WzAXTAhEtmmiF2
	xPuZHGOVcFPA+s4oLpuREUVZnZNCh62qhXBpxXoS8u/xPurXXREAl4XyxiqZymgXjDdpuZjzVS7vV
	ouoidNz4h9oiz13n9VXdgRooeznQTB1a7QjzjAwUYZtbiIZSUpSgpKcoIADYdBa8KlbjXUDiLjvHG
	uvsqtpoNS9v8gfPF5m/VSRJQzI3YlH/V7WRt7d5jQnZ4sRs1QnSBzaI+/Qpt218+Td+YJpuuSB+3+
	QCzgGp8U0vAPS1bxPAVNXm8mwf256XKF5h6G3SCbxaW/ofrsoTuJVYRq4GNt4fCeupa2wtFatiVuC
	kg9MvcuiEv3I7M9fTLKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUCSt-00081s-0u; Thu, 30 Apr 2020 16:55:11 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUCSY-00081C-O2
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:54:52 +0000
Received: by mail-lf1-x141.google.com with SMTP id b24so1819500lfp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 09:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jusIkjp3Dz4is1PZPLtprnCAT5bOhq5lF7YlVU3AWyQ=;
 b=K/L1x2WLoEDVhKcajWjRfk8di4UnhY9fQ857BctryF99FXnh8lvm/+FMFP7To9VzLC
 Oeh5Zl2gS6/3rwg+PAIfEpUDm0vFKxb3sBkuIMd/j+tdM33ErRljDKSRox35DyrhVqQy
 cxTvpJRHT1GSdzAq5WmfU86CiiQNmQ4AcXgOg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jusIkjp3Dz4is1PZPLtprnCAT5bOhq5lF7YlVU3AWyQ=;
 b=W2GYNGEyw0hwe4Tg30i+SLHT97DwDmwpib9MeVRPNH3wPUx8DcJJ+FQcu/HmjmrxoJ
 K9GgVyFZlQP4/n7StAc1PD7KsXQ+Fzzf9QjZPYqS3Y4ugM6a8DZEbQ06ps1eHAltd11b
 f3hqpC430zi8aIYi5Wn1JDVbd4FwwXebnhGN9sPcX/G0+YrkKXy+mD7gSBtvvE60jhzp
 wY1bht/ENvZLqSF8r4GcP6D+t6DTfbIn3zhc6S6Ppdun5FUCFX0rqqihNgwxNqd73VJZ
 G4NnC/9AQKjiPkHmeprYpOTbpJLriQgogJqS1bAO+KuNL0yrIe9Jo8IemVcwSLx4ahpT
 LGiw==
X-Gm-Message-State: AGi0PuY8H1Vcw/IL0FT8VjgrKWwBxk/Urc052jvn69dL8xnJQVEtzkDj
 bnwISLvkIBaaURmbp42Gu8+TJo4MXAI=
X-Google-Smtp-Source: APiQypJo6XVK7ThzYduWWHPNiJrZuKu37m5kv8+dchGllJm+cflrcwVapkY+5bhmKZ0bj/tcW8mWsw==
X-Received: by 2002:ac2:50ce:: with SMTP id h14mr2802847lfm.76.1588265687327; 
 Thu, 30 Apr 2020 09:54:47 -0700 (PDT)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com.
 [209.85.167.44])
 by smtp.gmail.com with ESMTPSA id v2sm192087ljv.86.2020.04.30.09.54.45
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 09:54:46 -0700 (PDT)
Received: by mail-lf1-f44.google.com with SMTP id y3so1823729lfy.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 09:54:45 -0700 (PDT)
X-Received: by 2002:a05:6512:405:: with SMTP id
 u5mr2728777lfk.192.1588265685113; 
 Thu, 30 Apr 2020 09:54:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200429214954.44866-1-jannh@google.com>
 <20200429215620.GM1551@shell.armlinux.org.uk>
 <CAHk-=wgpoEr33NJwQ+hqK1dz3Rs9jSw+BGotsSdt2Kb3HqLV7A@mail.gmail.com>
 <31196268-2ff4-7a1d-e9df-6116e92d2190@linux-m68k.org>
In-Reply-To: <31196268-2ff4-7a1d-e9df-6116e92d2190@linux-m68k.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 30 Apr 2020 09:54:28 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjau_zmdLaFDLcY3xnqiFaC7VZDXnnzFG9QDHL4kqStYQ@mail.gmail.com>
Message-ID: <CAHk-=wjau_zmdLaFDLcY3xnqiFaC7VZDXnnzFG9QDHL4kqStYQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] Fix ELF / FDPIC ELF core dumping, and use mmap_sem
 properly in there
To: Greg Ungerer <gerg@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_095450_790773_9CE9882F 
X-CRM114-Status: GOOD (  20.45  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Salter <msalter@redhat.com>, Rich Felker <dalias@libc.org>,
 linux-c6x-dev@linux-c6x.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Nicolas Pitre <nico@fluxnic.net>, Linux-sh list <linux-sh@vger.kernel.org>,
 Jann Horn <jannh@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux-MM <linux-mm@kvack.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Oleg Nesterov <oleg@redhat.com>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "Eric W . Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 7:10 AM Greg Ungerer <gerg@linux-m68k.org> wrote:
>
> > in load_flat_file() - which is also used to loading _libraries_. Where
> > it makes no sense at all.
>
> I haven't looked at the shared lib support in there for a long time,
> but I thought that "id" is only 0 for the actual final program.
> Libraries have a slot or id number associated with them.

Yes, that was my assumption, but looking at the code, it really isn't
obvious that that is the case at all.

'id' gets calculated from fields that very much look like they could
be zero (eg by taking the top bits from another random field).

> > Most of that file goes back to pre-git days. And most of the commits
> > since are not so much about binfmt_flat, as they are about cleanups or
> > changes elsewhere where binfmt_flat was just a victim.
>
> I'll have a look at this.

Thanks.

> Quick hack test shows moving setup_new_exec(bprm) to be just before
> install_exec_creds(bprm) works fine for the static binaries case.
> Doing the flush_old_exec(bprm) there too crashed out - I'll need to
> dig into that to see why.

Just moving setup_new_exec() would at least allow us to then join the
two together, and just say "setup_new_exec() does the credential
installation too".

So to some degree, that's the important one.

But that flush_old_exec() does look odd in load_flat_file(). It's not
like anything but executing a binary should flush the old exec.
Certainly not loading a library, however odd that flat library code
is.

My _guess_ is that the reason for this is that "load_flat_file()" also
does a lot of verification of the file and does that whole "return
-ENOEXEC if the file format isn't right". So we don't want to flush
the old exec before that is done, but we obviously also don't want to
flush the old exec after we've actually loaded the new one into
memory..

So the location of flush_old_exec() makes that kind of sense, but it
would have made it better if that flat file support had a clear
separation of "check the file" from "load the file".

Oh well. As mentioned, the whole "at least put setup_new_exec() and
install_exec_creds() together" is the bigger thing.

But if it's true that nobody really uses the odd flat library support
any more and there are no testers, maybe we should consider ripping it
out...

                Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
