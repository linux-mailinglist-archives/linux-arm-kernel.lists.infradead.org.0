Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 637E4D5A14
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 05:57:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:From:Subject:Message-ID:In-Reply-To:Date:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=7yNeHIxCHlZFDl65Sl8HeQUt7B3bqA8JJVlLHhQGZJ8=; b=f6FMcWHmhqtGIz
	Ca3NOslu6ykNs1jOKbHeE6IFR/gXYPS/wJ0dI0gmsZyQf+VQpNB5UcBOGAq/3x+mFlMTJXt8iEO6K
	9on4zUvHZiszlWOI1fmcKaa/ymGJnJ1pT2dEwLH9zb8BlgvMFLP7CdnRlJNiSblYEqZRF85rpeAAt
	ufBboDHGh5ITZNSBqTLLycYinA0+1Ndg5mKa40CD6G8sjUPRP9ngm/sKlxP1tKMpsFRf4Y1B+hR4G
	EQpf5mNgykPZjzD1DbYkeGF6j3GNZIVzOsYbFvULKPJ8trEaLN2ClPqCqsxrx1R5CncfriuYtht6T
	oM4ulxOmHJ3SDNjidqTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJrTv-0006sm-LL; Mon, 14 Oct 2019 03:57:15 +0000
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJrTn-0006sC-KJ
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 03:57:09 +0000
Received: by mail-io1-f71.google.com with SMTP id g15so24836138ioc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 13 Oct 2019 20:57:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=OuWAyTtmm63QQUGDPXR+DkHDOHPMuPnOWQaHNFnyLBY=;
 b=knybkoxJbsuecfO+MlSWwYhhmsXIJruZkE56+m7I2oYGZdESVY3vKtIXwVa5LxSWfq
 h3Dj8zssSrDX9Z8/TrWyL+yi8/jsu6T62nUcB6QNLNYaopfZ/lc4Y19tjQ67bw5Pdtwk
 6cAViNCnwbu2XvaeZ+pNVBKhQoTiH8HjzBHeAMb7QngCV818DKKutQpbwe9O1L8Bfvt/
 lry1x5onJh2Z35YZ15bnnXqPai3j0YoYHmGc1pWQGmuoyul6sPg/5q/LMsn/E4cz4qLl
 MolxANqnMBbszoMZ40dmzc7HaMWDKoFhSz6MhdMy5cTNb7DxYz9H83CHCFDxBPAspJZl
 IAIQ==
X-Gm-Message-State: APjAAAUR7Fo/nma3COn1xIOOvnUAXMnQ+L69NApXmnLki1eewMKwuJOG
 CaiP28XwmJzbaZGquudZ4xdUcvOXNI/NoGzr/gvJ/tKGXBJ9
X-Google-Smtp-Source: APXvYqwVwyIy9nSYbsyJl/5Ky7DslcWs3entkTykv54QRnqMyvOOoULUzhOD3mtwNZ2fJRFRwM9mAxsY/zpxHu8l3i0Nylw2l3P/
MIME-Version: 1.0
X-Received: by 2002:a5d:93c7:: with SMTP id j7mr6139939ioo.167.1571025421311; 
 Sun, 13 Oct 2019 20:57:01 -0700 (PDT)
Date: Sun, 13 Oct 2019 20:57:01 -0700
In-Reply-To: <00000000000059b6d40594d0f776@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000002ba5570594d6dc99@google.com>
Subject: Re: WARNING in batadv_iv_send_outstanding_bat_ogm_packet
From: syzbot <syzbot+c0b807de416427ff3dd1@syzkaller.appspotmail.com>
To: a@unstable.cc, akpm@osdl.org, arvind.yadav.cs@gmail.com, 
 b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, kgene@kernel.org, 
 krzk@kernel.org, kyungmin.park@samsung.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 mareklindner@neomailbox.ch, mchehab@kernel.org, mchehab@s-opensource.com, 
 mingo@kernel.org, netdev@vger.kernel.org, oleg@tv-sign.ru, roland@redhat.com, 
 s.nawrocki@samsung.com, sven@narfation.org, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_205707_666677_04B5FD41 
X-CRM114-Status: UNSURE (   4.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

syzbot has bisected this bug to:

commit 26d051e301f67cdd2ea3404abb43902f13214efa
Author: Arvind Yadav <arvind.yadav.cs@gmail.com>
Date:   Thu Jun 29 08:21:35 2017 +0000

     media: exynos4-is: fimc-is-i2c: constify dev_pm_ops structures

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=10a0aff0e00000
start commit:   da940012 Merge tag 'char-misc-5.4-rc3' of git://git.kernel..
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=12a0aff0e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=14a0aff0e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=2d2fd92a28d3e50
dashboard link: https://syzkaller.appspot.com/bug?extid=c0b807de416427ff3dd1
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=141ffd77600000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11edd580e00000

Reported-by: syzbot+c0b807de416427ff3dd1@syzkaller.appspotmail.com
Fixes: 26d051e301f6 ("media: exynos4-is: fimc-is-i2c: constify dev_pm_ops  
structures")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
