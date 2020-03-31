Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 397D1199CFF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 19:36:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Message-ID:In-Reply-To:
	Date:MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=I9WbZqizMrEsGWFgedG2BarmnuCx9KDocPrq9+e4fOI=; b=KMsGkw0xVxJQwu
	Uokn+aJTA1nvoa9F8N3MiThAG/+Gg9sj95/ZkE8l1ZsBIMqB4Dz7MfXDR4AoXUYqITMfcsKvy1RSt
	Ot0u1+AiHRNrWIwb8VSAXq7JMYYW6NiO+gRAdt3Qk8tzCktlulzHHBxiay9iSkKxswG1REHlt5ZXS
	Huw1/4q7JrjF9BdZ03OFE+D/dkEx0wYw+tdFS5MRHg2A+dmAWwv7MU8VFu4hMTVIjz3YgBtm6xaVd
	t1oOtHpoFZJhnDaoCEo+SY+Zk/JlERBN+FS6weHCABB8sSnHlJO/aGlR5wU2TyuTyWRTvI/o0a8WA
	KeZxPIh8X9FHjGcUS6ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJKoB-0005eE-7Z; Tue, 31 Mar 2020 17:36:15 +0000
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJKnz-0005dC-VF
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 17:36:07 +0000
Received: by mail-io1-f71.google.com with SMTP id p4so19843825ioo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 10:36:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=EkBmF5uXCWrM6aOPYLh3R3gAH7wKc57Bigw1PTLooMY=;
 b=JP2IYoKFVhQejsI3Komho73vvU5jtcZF0yOWXGGBSEBqyn7KxoohG3zVYhWkOg5pQp
 jj5xBXMccwvOiadPdw3IpjgIiMwnx+RqwXcvXPKbXmjcQtXMHpVG2GcjXr3HkmG+z376
 n5WZQMJhuZGvxIcnUkG4iAKONqbN2MKqxdNR+vKRuBW/j5fh9u2B69ktk1xYwuQN88vr
 QZ9ew7l0StBB3sHJE5625Q+zy6ELrGlhhXMdMb/U0n6EzWr0iZAvlSG7WsS3uz4o1nz8
 A3qRuuTIOcqWdhtk+gHbmpsNKGH8xH08nA4BCz5MSXHsbucNLO5Psmyu1XJbXulk6dfQ
 AtEQ==
X-Gm-Message-State: ANhLgQ1RqHfnqcnbDAozC0SKaCXd5dV2jL7Lv+nL0dGBkQ+daQ5v635y
 7wjeZtLDW7uP8MHAI+pruoBjEhCN+Heh8LXeY34FRhz+xORM
X-Google-Smtp-Source: ADFU+vvHwabh6/XT3HQsMvsns9bvDqN3/9G4mkXHM92526jZauR7yd6nL/ccsz/Mvu+hTOSZfNJXAFtWrHfa8tJOTfHuhC7B/BNp
MIME-Version: 1.0
X-Received: by 2002:a5e:880e:: with SMTP id l14mr15608634ioj.8.1585676161841; 
 Tue, 31 Mar 2020 10:36:01 -0700 (PDT)
Date: Tue, 31 Mar 2020 10:36:01 -0700
In-Reply-To: <000000000000da6059059fcfdcf9@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000005b022005a22a0050@google.com>
Subject: Re: KASAN: use-after-free Read in skb_release_data (2)
From: syzbot <syzbot+a66a7c2e996797bb4acb@syzkaller.appspotmail.com>
To: davem@davemloft.net, festevam@gmail.com, gregkh@linuxfoundation.org, 
 grundler@chromium.org, hayeswang@realtek.com, johan.hedberg@gmail.com, 
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org, 
 linux-bluetooth@vger.kernel.org, linux-imx@nxp.com, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, marcel@holtmann.org, 
 nishadkamdar@gmail.com, peter.chen@nxp.com, pmalani@chromium.org, 
 s.hauer@pengutronix.de, shawnguo@kernel.org, syzkaller-bugs@googlegroups.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_103604_001087_208AE7A0 
X-CRM114-Status: UNSURE (   4.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

syzbot suspects this bug was fixed by commit:

commit d9958306d4be14f4c7466242b38ed3893a7b1386
Author: Nishad Kamdar <nishadkamdar@gmail.com>
Date:   Sun Mar 15 10:55:07 2020 +0000

    USB: chipidea: Use the correct style for SPDX License Identifier

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16d4940be00000
start commit:   63623fd4 Merge tag 'for-linus' of git://git.kernel.org/pub..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=5d2e033af114153f
dashboard link: https://syzkaller.appspot.com/bug?extid=a66a7c2e996797bb4acb
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13c25a81e00000

If the result looks correct, please mark the bug fixed by replying with:

#syz fix: USB: chipidea: Use the correct style for SPDX License Identifier

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
