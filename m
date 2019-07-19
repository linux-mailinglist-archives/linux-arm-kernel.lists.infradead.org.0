Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0F86EB6E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 22:04:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:From:Subject:Message-ID:In-Reply-To:Date:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=U1sVB7EGTlUbuee122Jc6D5TuCzADbpMVjBT6AvGesE=; b=Gv5klURXE/TXyV
	FgPdiVKmRme0Y3p8vcgIkEZnjVMwO7t5Ga5wl1a0QHq0/I1tFcy/CwZlKedZQbGOG2xDcB/GSuqDO
	ZT47H18iurnzLUpQIeRvMTqaaiW6f4wudex5xLH6NMRBqj3Wy7JWNThOwBdh7bYk/s4EO13Oy2eoR
	J6AM+9WIFNzNvNz9J93gQ0niGpZMfrKYIVLuaBFid8N+Smw618TdkJZNqlcYd9iP9N1G7mUnDu/oG
	8jkihvFXtM/sbPaKMcZaCWkDQrfiDrIMU1KMF8DwfQOybBROWHbYZrya3vHOBXZY78wvxOSdwrqx9
	JdG1Ojr0ZRcerUQQbswg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoZ7G-0000uT-7T; Fri, 19 Jul 2019 20:04:30 +0000
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoZ6r-0000tD-89
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 20:04:07 +0000
Received: by mail-io1-f69.google.com with SMTP id k21so35767916ioj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 13:04:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=aPsM7izy0lsHgieRMKZNuSLjrGTa3/1dak1h6g1FuBU=;
 b=qEO191bSxtcqAGdHcOG/jx02LFeYyRcwZf9DFU+HFrfJFIT/GgXorUBYm9eADKQFSl
 8L2Dq8+yRA5ICW1j1td1CS1t7sMaL8myT1AjLKObCffNQCrKCzDpq859t7t/RuiqJrVL
 aKjzEEHJH30U4fPJGThza+VJPPb3fPBFmAKJ6r+McEsUMgY08Q+0kE5HisPCNlllqCHu
 Q5qkBU85VHMia1fcodhOrbRCf7Lk1BLZ6Ydlbp8i2932h5c7qadM4XA5hmdCt39j8LMA
 DJFaYAZ+6MeEQZIe0tHkVjIpj0e62mkfWXOePdmzoWkfucci8Gffb5H5Nv/m2mREQF3l
 GSjQ==
X-Gm-Message-State: APjAAAVnRiHpmPpHLhYEd67k1Vax5j+o2tql48t50grKDuAVRBVhQlC+
 HpOwvOX1vMKUrqgEG/tnK94AhMa8sLRxl25V/KgyeorhqpJE
X-Google-Smtp-Source: APXvYqxidYggLhCDlKDPPoGD3FSWeBWxwtOzAyrvnQyzo3ixpa+XRzwDjKZfxioOdAVAMIp4fTiorW0EVPKAU++mh06/cyXjSy0g
MIME-Version: 1.0
X-Received: by 2002:a5d:87c6:: with SMTP id q6mr29436327ios.115.1563566640206; 
 Fri, 19 Jul 2019 13:04:00 -0700 (PDT)
Date: Fri, 19 Jul 2019 13:04:00 -0700
In-Reply-To: <00000000000045e7a1058e02458a@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000002c183d058e0e3abd@google.com>
Subject: Re: KASAN: use-after-free Write in tlb_finish_mmu
From: syzbot <syzbot+8267e9af795434ffadad@syzkaller.appspotmail.com>
To: aarcange@redhat.com, davem@davemloft.net, hch@infradead.org, 
 james.bottomley@hansenpartnership.com, jasowang@redhat.com, 
 jglisse@redhat.com, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, 
 linux-parisc@vger.kernel.org, mst@redhat.com, syzkaller-bugs@googlegroups.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_130405_556940_DD01A501 
X-CRM114-Status: UNSURE (   3.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

commit 7f466032dc9e5a61217f22ea34b2df932786bbfc
Author: Jason Wang <jasowang@redhat.com>
Date:   Fri May 24 08:12:18 2019 +0000

     vhost: access vq metadata through kernel virtual address

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=11642a58600000
start commit:   22051d9c Merge tag 'platform-drivers-x86-v5.3-2' of git://..
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=13642a58600000
console output: https://syzkaller.appspot.com/x/log.txt?x=15642a58600000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d831b9cbe82e79e4
dashboard link: https://syzkaller.appspot.com/bug?extid=8267e9af795434ffadad
userspace arch: i386
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10d58784600000

Reported-by: syzbot+8267e9af795434ffadad@syzkaller.appspotmail.com
Fixes: 7f466032dc9e ("vhost: access vq metadata through kernel virtual  
address")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
