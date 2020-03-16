Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0E1186366
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 03:48:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Message-ID:In-Reply-To:
	Date:MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=3aG4nOHZ0MLgX/xpErUoSRcqEKTWKfinc9NFV8LxevY=; b=L0APqP5v/hrsrp
	j4WryQZJGCWNAmTy1KlMCd9f4tH8rp2fA+3OhvYB6AEb66/u7/f2ZXfhjr/eTLxTNtNlJZyhOfon7
	7HW4uJj9NrqUEXN92H23pp2ZIALjOb69msZlcsoYsCUg0lQFlYkGJkWNYLigMZYgXylsKKtSv3c4R
	z0vDMkneJjVvsXPUuPwsfLsq/rQXCPnrGkexh5H9MdganAL0lvqrmkzFyjWCZX9Ero81D9TSO6xGC
	Yg8xVtx81SSaYsBk/R6qlH9kB03/auynrCmDTy38RQNxtpbJ0nokSjf/S5vBniJNr2wyxOj7gmn2c
	tQujg4C0TcrQVB8zd5zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDfnL-0002Hc-5B; Mon, 16 Mar 2020 02:47:59 +0000
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDffi-0000yk-LT
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 02:40:08 +0000
Received: by mail-il1-f200.google.com with SMTP id j88so12716392ilg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 19:40:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to:content-transfer-encoding;
 bh=G7pIHMXafOLm3F/2/i2LvBMFMIvTzROgcOUTWFn2X6I=;
 b=NiZ7VE/tP6VOk5la1d1xffvng9DpYe01SzxWHCIUxJRW+lMzvinJf/yZBdKiTYHzCP
 bMp71udIa3Tu94pYWdHkklZ+Rp/E3BItM+B846OpU+y0ykiZcXHXEQBX2bYJev10wfaL
 Hy/g6rBGb7qOScilU9fEgchSnEa2UxmDg39rJegxsp1OhYCBD9au/VMsCkCozCB4Q9nR
 yxOQrkN8UJnc4nFdl8xiXZt4uXIMrcQqtirRy/yAAHp25M2zkcQJyz1ubrUsUMNsHf6X
 XRYINpz+pQNq9f9kypvInU/SgjsqaKZY3KLo0RgMQLDxM5nfZvVCkijD4Q6gsrNGXwT7
 cHSQ==
X-Gm-Message-State: ANhLgQ1k8i7Zl+y5ALWmPfG/nv34OwK9agZ0kA98SRa+3ZFLZdu77YXm
 yOLcIVBRWDChqfaUIT20++ft/kvZHdKk5iTtgNMnpbwfTBlT
X-Google-Smtp-Source: ADFU+vsoZxccOxRhbL4Y/MIwgxSx220g7zIbktYsAfwneEMRwc/N8lW0/7POXMyHaJ8GuPRqszlVeuTTjg5as1yqhzbhVmbrzHSZ
MIME-Version: 1.0
X-Received: by 2002:a05:6638:3dd:: with SMTP id
 r29mr2463944jaq.94.1584326403449; 
 Sun, 15 Mar 2020 19:40:03 -0700 (PDT)
Date: Sun, 15 Mar 2020 19:40:03 -0700
In-Reply-To: <000000000000bdb5b2059c865f5c@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000007c695f05a0efbc52@google.com>
Subject: Re: KASAN: slab-out-of-bounds Read in bitmap_ip_ext_cleanup
From: syzbot <syzbot+6491ea8f6dddbf04930e@syzkaller.appspotmail.com>
To: a@unstable.cc, akpm@linux-foundation.org, allison@lohutok.net, 
 arnd@arndb.de, axboe@kernel.dk, b.a.t.m.a.n@lists.open-mesh.org, bp@alien8.de, 
 catalin.marinas@arm.com, chris@zankel.net, christian.brauner@ubuntu.com, 
 christian@brauner.io, coreteam@netfilter.org, dan.carpenter@oracle.com, 
 davem@davemloft.net, elena.reshetova@intel.com, florent.fourcot@wifirst.fr, 
 fw@strlen.de, geert@linux-m68k.org, hare@suse.com, heiko.carstens@de.ibm.com, 
 hpa@zytor.com, info@drgreenstore.com, info@metux.net, jcmvbkbc@gmail.com, 
 jeremy@azazel.net, johannes.berg@intel.com, kadlec@blackhole.kfki.hu, 
 kadlec@netfilter.org, linux-api@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-xtensa@linux-xtensa.org, linux@armlinux.org.uk, 
 mareklindner@neomailbox.ch, mingo@redhat.com, netdev@vger.kernel.org, 
 netfilter-core-owner@lists.netfilter.org, netfilter-devel@vger.kernel.org, 
 pablo@netfilter.org, peterz@infradead.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com, tglx@linutronix.de, viro@zeniv.linux.org.uk, 
 will@kernel.org, x86@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_194006_738727_C9E3DA10 
X-CRM114-Status: UNSURE (   4.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

c3l6Ym90IHN1c3BlY3RzIHRoaXMgYnVnIHdhcyBmaXhlZCBieSBjb21taXQ6Cgpjb21taXQgMzJj
NzIxNjVkYmQwZTI0NmU2OWQxNmEzYWQzNDhhNDg1MWFmZDQxNQpBdXRob3I6IEthZGxlY3NpayBK
w7N6c2VmIDxrYWRsZWNAYmxhY2tob2xlLmtma2kuaHU+CkRhdGU6ICAgU3VuIEphbiAxOSAyMTow
Njo0OSAyMDIwICswMDAwCgogICAgbmV0ZmlsdGVyOiBpcHNldDogdXNlIGJpdG1hcCBpbmZyYXN0
cnVjdHVyZSBjb21wbGV0ZWx5CgpiaXNlY3Rpb24gbG9nOiAgaHR0cHM6Ly9zeXprYWxsZXIuYXBw
c3BvdC5jb20veC9iaXNlY3QudHh0P3g9MTZiOGU1NDVlMDAwMDAKc3RhcnQgY29tbWl0OiAgIGQ5
NmQ4NzVlIE1lcmdlIHRhZyAnZml4ZXNfZm9yX3Y1LjUtcmM4JyBvZiBnaXQ6Ly9naXQua2VybmUu
LgpnaXQgdHJlZTogICAgICAgdXBzdHJlYW0Ka2VybmVsIGNvbmZpZzogIGh0dHBzOi8vc3l6a2Fs
bGVyLmFwcHNwb3QuY29tL3gvLmNvbmZpZz94PWNmOGUyODg4ODNlNDBhYmEKZGFzaGJvYXJkIGxp
bms6IGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL2J1Zz9leHRpZD02NDkxZWE4ZjZkZGRi
ZjA0OTMwZQpzeXogcmVwcm86ICAgICAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9y
ZXByby5zeXo/eD0xMjY3NDhkNmUwMDAwMApDIHJlcHJvZHVjZXI6ICAgaHR0cHM6Ly9zeXprYWxs
ZXIuYXBwc3BvdC5jb20veC9yZXByby5jP3g9MTM4NWY5NTllMDAwMDAKCklmIHRoZSByZXN1bHQg
bG9va3MgY29ycmVjdCwgcGxlYXNlIG1hcmsgdGhlIGJ1ZyBmaXhlZCBieSByZXBseWluZyB3aXRo
OgoKI3N5eiBmaXg6IG5ldGZpbHRlcjogaXBzZXQ6IHVzZSBiaXRtYXAgaW5mcmFzdHJ1Y3R1cmUg
Y29tcGxldGVseQoKRm9yIGluZm9ybWF0aW9uIGFib3V0IGJpc2VjdGlvbiBwcm9jZXNzIHNlZTog
aHR0cHM6Ly9nb28uZ2wvdHBzbUVKI2Jpc2VjdGlvbgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
