Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C51D14217D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 02:35:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Message-ID:In-Reply-To:
	Date:MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=zmJNwjWI9NXrPhB/03nG1NxCWKBWWCBhyr/g50pd2/k=; b=VjmtpppVGFHcmd
	ChRCR2COzsEjargRWN0yqJe2HlGy3ILKa5lTPW7t9OkfQndSPKM4PAWztfUysiDelLSCsIYxvqbYi
	jsz4Ir1oKHzx/IcKQLt50ELKYgpft7bXZITuBBhQHUH92OLMXfFLXIRFCO/4J671jsOSlemASQEQm
	Mb4hB7DxRxMJlAAqwESEIRhik1mT4W9kiaX/VTq2uztD7NIpRi+46Cz0u0ObL3vkfl2y8iau2dZMx
	UMdUy4KxC78YCAdbNmjkmwXd9KamqDv0j30hdVMrB8eUAoAPlelaDSSHwTpmWIl5e3i1kXal3cqJ+
	CqSl0mNjxm/Kxp9DpnGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itLyF-0005rd-Gm; Mon, 20 Jan 2020 01:35:15 +0000
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itLy6-0004gT-5f
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 01:35:07 +0000
Received: by mail-io1-f72.google.com with SMTP id w22so14160225ior.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Jan 2020 17:35:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=SIy1Y3nZuLhuVMewjZxysiWahWNFeojJqO9vrYtj798=;
 b=h9Bw9P89C0bnPig52pinYrcoA+RKlT61oSwUjbUk4g+/SZ1JZKXK/0u+hGuPNu9iPi
 8knluFAF2BLxcpd1kKhx2szO4FcJFxpTidn751MqNV7aFMuG+FBtXlhilztBbRdeAZO3
 HY+oEQDE6wAO/vKNI5OKAYYW7SBLAwYMY0eyHbrOp7afPgV0Ol5PVIx8Pw7EUGxY6vdZ
 89DM5rf/XIWrCqO4SYEQ260vl4c9gGxXxCFNOOzBUtySGyFJYLqh/P5q/m10lwAEQlXw
 TlolkGMzl3jruv+UCqnfLAYL5+smLl0Qr40y7OGiJOTK+xjE5LEFZgJJu2XqTNzkHWJa
 mruw==
X-Gm-Message-State: APjAAAVlZEmSQxVBZC50icbdVZ1uVqF7CWtm/QN+uVk0bgsygtdpcBij
 ej7ky5y628ovbV/qobzJulG/JOZnS7aFQ1Bnb2dU2KGJahBx
X-Google-Smtp-Source: APXvYqwxdtT4a7BzshbFsXu5QysWavFxC8kpPU9PQQ8ENYkxIBwMzu1UUle0sf0x3jxjUjZL+Uhywd3DMA1wzvJ6JCkPaqCidVsU
MIME-Version: 1.0
X-Received: by 2002:a92:8307:: with SMTP id f7mr8911636ild.73.1579484101183;
 Sun, 19 Jan 2020 17:35:01 -0800 (PST)
Date: Sun, 19 Jan 2020 17:35:01 -0800
In-Reply-To: <000000000000bdb5b2059c865f5c@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000c795fa059c884c21@google.com>
Subject: Re: KASAN: slab-out-of-bounds Read in bitmap_ip_ext_cleanup
From: syzbot <syzbot+6491ea8f6dddbf04930e@syzkaller.appspotmail.com>
To: a@unstable.cc, akpm@linux-foundation.org, allison@lohutok.net, 
 arnd@arndb.de, axboe@kernel.dk, b.a.t.m.a.n@lists.open-mesh.org, bp@alien8.de, 
 catalin.marinas@arm.com, chris@zankel.net, christian@brauner.io, 
 coreteam@netfilter.org, davem@davemloft.net, elena.reshetova@intel.com, 
 florent.fourcot@wifirst.fr, fw@strlen.de, geert@linux-m68k.org, hare@suse.com, 
 heiko.carstens@de.ibm.com, hpa@zytor.com, info@metux.net, jcmvbkbc@gmail.com, 
 jeremy@azazel.net, johannes.berg@intel.com, kadlec@netfilter.org, 
 linux-api@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-xtensa@linux-xtensa.org, 
 linux@armlinux.org.uk, mareklindner@neomailbox.ch, mingo@redhat.com, 
 netdev@vger.kernel.org, netfilter-devel@vger.kernel.org, pablo@netfilter.org, 
 peterz@infradead.org, sw@simonwunderlich.de, syzkaller-bugs@googlegroups.com, 
 tglx@linutronix.de, viro@zeniv.linux.org.uk, will@kernel.org, x86@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_173506_224598_7A1D8BB5 
X-CRM114-Status: UNSURE (   3.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

syzbot has bisected this bug to:

commit d68dbb0c9ac8b1ff52eb09aa58ce6358400fa939
Author: Christian Brauner <christian@brauner.io>
Date:   Thu Jun 20 23:26:35 2019 +0000

    arch: handle arches who do not yet define clone3

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1456fed1e00000
start commit:   09d4f10a net: sched: act_ctinfo: fix memory leak
git tree:       net
final crash:    https://syzkaller.appspot.com/x/report.txt?x=1656fed1e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=1256fed1e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7e89bd00623fe71e
dashboard link: https://syzkaller.appspot.com/bug?extid=6491ea8f6dddbf04930e
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=141af959e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1067fa85e00000

Reported-by: syzbot+6491ea8f6dddbf04930e@syzkaller.appspotmail.com
Fixes: d68dbb0c9ac8 ("arch: handle arches who do not yet define clone3")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
