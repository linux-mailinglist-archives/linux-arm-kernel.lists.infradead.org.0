Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BD910C41B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 07:52:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:From:Subject:Message-ID:In-Reply-To:Date:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=AKJPVwwtwa0S8jE4u7UHsZHfvDbx9LjAjdMJ31TWdBU=; b=LmB1ZXEGTs8M7p
	pLhWFmME/TOOqxJ0qEq1YAXYxkwpTYEfVrHmOSGIvH+FXdk8eDqcYXHf2Ye8YI0pyEaW8vreML9yH
	3dMRBqyfp+oAmSXfF9KTasyx9cl4NeCk5YW7FBSs5phNivvC2fwS/Dnov3EGTzBj89TbdcrKC9flH
	QVDxIaXVAz2O5roC3qIoN6ocjaC0/WSQNQx6tQUijBaGV79v1nQWvfnFMv3MJvcZbHf5ZZ3kY3D2K
	SM/YsdwyNGZ0mRdgefQj2DiN6UC9ySKVL84EqVJTbdwNSCTUGtqUtvg4J1ao+5N32x0J/hY9YEfx5
	DeqJZJBzDx5T172Ncs0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaDf0-0003BQ-6U; Thu, 28 Nov 2019 06:52:18 +0000
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaDer-0003AB-5L
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 06:52:10 +0000
Received: by mail-il1-f197.google.com with SMTP id n16so21532872ilm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 22:52:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=2d9JKwKzyEklAE9Y0Al7lbLvDjVGrJsOdz2MW8XRI6k=;
 b=XVPf/ss9tdjMEUgRR6dS4eieY/YLcvOGgadk0TF9IsqxUUES07ImMbhhZXdHmpWW97
 ojNKOaavEWmXkTEAukQjKVQAi9f6AoTKI3y/xwXgukMZAXxVfV4W3XaUC6CXqNDXYZkg
 WEHQHgj5lfRPjiuXOLRPwehNhIqIMqrkp9AEOvcaQdgcZG0y367gfXG9/EchWNHzgDZU
 d7iQcsUX5c9wr39NJVsbAg184QscyTLPjWXjHz3cBXXlF8xdmC9FtxEfFuIYZ0emkuLd
 FzZNM9Nn8Ti/DNkwuk6HUnignHBfTH1enEjPi2q4UztJxeqNCgdit834RH4JFAdbNzwz
 Vgxw==
X-Gm-Message-State: APjAAAXHISa7TjDOqxBfF4bl+tgx4haptYPrCK15LvY156dK9xOXr6Ga
 KKEV5CdORkymE3eA5f7k7nQRURkThvG61iIspq/66aCDFQvH
X-Google-Smtp-Source: APXvYqx5W1RZO7+3nd+L3OfHiIN1nhLb8vKwT1pMfJipAjyN/TdB0OArpLiFIBjYuYMxGprFVYmxz6y+5YYKemJMGYyZ2IplBP7m
MIME-Version: 1.0
X-Received: by 2002:a5d:8953:: with SMTP id b19mr13030362iot.168.1574923920949; 
 Wed, 27 Nov 2019 22:52:00 -0800 (PST)
Date: Wed, 27 Nov 2019 22:52:00 -0800
In-Reply-To: <001a11447acae6b4560568e08829@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000db46890598628cf4@google.com>
Subject: Re: KASAN: slab-out-of-bounds Read in ntfs_attr_find
From: syzbot <syzbot+aed06913f36eff9b544e@syzkaller.appspotmail.com>
To: anton@tuxera.com, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-ntfs-dev@lists.sourceforge.net, matthias.bgg@gmail.com, olof@lixom.net, 
 s.hauer@pengutronix.de, syzkaller-bugs@googlegroups.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_225209_198108_850B9A51 
X-CRM114-Status: UNSURE (   4.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

commit 9dd068a4b85a68733213c874d08ef768bbec8d01
Author: Matthias Brugger <matthias.bgg@gmail.com>
Date:   Fri Jul 31 15:03:13 2015 +0000

     soc: mediatek: Fix SCPSYS compilation

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=10880f02e00000
start commit:   0adb3285 Linux 4.16
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=12880f02e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=14880f02e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=df0c336cc3b55d45
dashboard link: https://syzkaller.appspot.com/bug?extid=aed06913f36eff9b544e
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1430ded3800000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1533214b800000

Reported-by: syzbot+aed06913f36eff9b544e@syzkaller.appspotmail.com
Fixes: 9dd068a4b85a ("soc: mediatek: Fix SCPSYS compilation")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
