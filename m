Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CA76EEEB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 12:08:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:From:Subject:Message-ID:In-Reply-To:Date:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ZcpZzaLZzfNsUIvWyy4mKFKgo0sh4u9LpGCVu27YG+c=; b=K3jnP74GZWYMTC
	P954KwhDBweSbdCBrYnCIgnq21M1H7ZW+PDoLeij/dZjCBX0KDjy1HI3rZZRTGr3O4iPouU5XghYj
	NWAPj/QZy/nnEHDqTl77UFEX+qAS3z3LUb4Bj+qO/OfVoKfIgPz6LuE38R2V2nmyZKKWIcUnji0gp
	kNamHCCER9sGTw4b0C/G6gwGxrgiydxesxPLmyAp7QK5TTlRCNq1+pR70q1gNnWs1NrRowu1v5HZD
	mCDsDfC7XuqwEkObiA/bl6AVRQJZ1pxT+C0tvC1IOqclU4YscowctgQ4wcD7VGaBSJY/hHmxQvPdQ
	U7Y/Pwda9Ng+QbF0yWdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1homHr-0003Y2-B8; Sat, 20 Jul 2019 10:08:19 +0000
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1homHc-0003XF-Ch
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 10:08:05 +0000
Received: by mail-io1-f71.google.com with SMTP id h4so37540341iol.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 20 Jul 2019 03:08:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=aIptGodPgqjQ+OCeW9XKeJdzrs6DHyh1FKeEsnaxVbM=;
 b=aBnTillpH1U5XZdpjXqOz+4YkWIJoTwtcB87wDnqW4VLWn2t4wO7SX5i+v4SkcS3jx
 kCi3S6pbwPGQJ9V8bBtg7Vh52SnWCdyDn6Gph/vXHaWJ/z5HlreCQBh5dWx6YE/xtHXQ
 u97k6JIKSsPqIX/coaEloQu/uTLPzzZ6rMUSuXxvIqTD4Xlckc5KsG+RKnaFcvnSZFj0
 5g00pU8BtKq72ffOZG+rSwYtK6lW6IHPtdWhBhSmw7n3Fm+P6knaF1pZvDl2jqBHcxF7
 cVEllTfEtfYm7lJPqFVQbhnVygeFW4Gk9hiDD0kDkJUyff5t+yWmN6VVZZbCnOXQFfi5
 idCw==
X-Gm-Message-State: APjAAAV7SWgHLhz7+EEfAsg1siVArnepUemzQmyyTOE92AeQR54w8O8Q
 IDRFowaVUj0TzED/k5b8jh3y/4drMO++nu8oYMbUbTxMhEsm
X-Google-Smtp-Source: APXvYqxejQK5TJXgPG7zDzFOcVKgb6JtNNiEgaZkAwUZNQxIY+uT88/YtfjAsG3qEv0NnxidVHOC8aWEo8R9Py88FYjmq9+IoaCH
MIME-Version: 1.0
X-Received: by 2002:a6b:f90f:: with SMTP id j15mr48006883iog.43.1563617280803; 
 Sat, 20 Jul 2019 03:08:00 -0700 (PDT)
Date: Sat, 20 Jul 2019 03:08:00 -0700
In-Reply-To: <0000000000008dd6bb058e006938@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000964b0d058e1a0483@google.com>
Subject: Re: WARNING in __mmdrop
From: syzbot <syzbot+e58112d71f77113ddb7b@syzkaller.appspotmail.com>
To: aarcange@redhat.com, akpm@linux-foundation.org, christian@brauner.io, 
 davem@davemloft.net, ebiederm@xmission.com, elena.reshetova@intel.com, 
 guro@fb.com, hch@infradead.org, james.bottomley@hansenpartnership.com, 
 jasowang@redhat.com, jglisse@redhat.com, keescook@chromium.org, 
 ldv@altlinux.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, 
 linux-parisc@vger.kernel.org, luto@amacapital.net, mhocko@suse.com, 
 mingo@kernel.org, mst@redhat.com, namit@vmware.com, peterz@infradead.org, 
 syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk, wad@chromium.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_030804_434526_00509BE8 
X-CRM114-Status: UNSURE (   3.41  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

commit 7f466032dc9e5a61217f22ea34b2df932786bbfc
Author: Jason Wang <jasowang@redhat.com>
Date:   Fri May 24 08:12:18 2019 +0000

     vhost: access vq metadata through kernel virtual address

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=149a8a20600000
start commit:   6d21a41b Add linux-next specific files for 20190718
git tree:       linux-next
final crash:    https://syzkaller.appspot.com/x/report.txt?x=169a8a20600000
console output: https://syzkaller.appspot.com/x/log.txt?x=129a8a20600000
kernel config:  https://syzkaller.appspot.com/x/.config?x=3430a151e1452331
dashboard link: https://syzkaller.appspot.com/bug?extid=e58112d71f77113ddb7b
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10139e68600000

Reported-by: syzbot+e58112d71f77113ddb7b@syzkaller.appspotmail.com
Fixes: 7f466032dc9e ("vhost: access vq metadata through kernel virtual  
address")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
