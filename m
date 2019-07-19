Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 398016E8D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 18:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:From:Subject:Message-ID:In-Reply-To:Date:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=NdiZfaargUCKoeCCY4SvZWF37ZMw35s5IjSbPFF32zM=; b=m+U0D8t7NQ1xxQ
	rndHFONbAzOSqpVgoBwWok5P5oydYcUvk8FvNorrXZs1UuDQFwPQNQOEkyl1Z6CziVRbOiH5AcbGJ
	OlmS5QheVQbdU7GVwCRht2C260nWMw4rf8G+gHSGhR6hD+Lpwq0PpQzk024jfOYu9JPBsih7HK5Ij
	IdNXB4CFp5SfnOPzmE3jsh0e7W6WeBT/NSlSLV0Olv+5KUuPjr6GaRTTL2LlyRp67j71yLCMigG97
	mPf78BK+s+yg+Do6VUiezIOIDNJ9pHk8LSICbU+wqf8zoy+UfWir6TzfsC0TJejdtiD9LQ6WukV59
	yCcf4j3vxfiDnNX1qM6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoVpn-0002n4-1s; Fri, 19 Jul 2019 16:34:15 +0000
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoVpb-0002iO-5W
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 16:34:04 +0000
Received: by mail-io1-f71.google.com with SMTP id x17so34928890iog.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 09:34:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=K0tO5uO221nvtR7gnlqeSa9IqFZGmt58DDiOBmYEiu8=;
 b=fL330op0Z02PyKgwm4vHVVfQ4/vhOcQng5+jHtLNrYNHaxLmJw12i9olFHyx2ogWj7
 hvz59cpEwjVgF/AhqKr6bmpt1tPtnvIAyA68gnrmwigVyvhTlXG0rdoWdNueOrYgohqU
 q6w/H3nImNpwqZN5TOY8j8ZP8WMLAh/Pu3FQKF007n4yr6OqAapMg5rHPvH5shbjO6P7
 UlEYMXz9pURdeJJil4ewcdL2LaUI8X/g/Cbu9ZepHwvvoNR/jMG6Xaa6kPOBgyVZzf3x
 BWq7EBMG+yML/xXil+ET2VA1l5ILD51tCX/uxc+QFunM2kdsPWXULoW9ndBR9zYk7GHk
 g3Sw==
X-Gm-Message-State: APjAAAXvcmviuTPMhe+pQ85m2bv6ZvrDvap1JcuCLPnpXpPc2uARmnrq
 xaDXA5uxrX5sRq65GQt7/r7uQ8fPrr4tGxYCB/nWpkI99OgF
X-Google-Smtp-Source: APXvYqzXnjpSQV9iFQbyh8yurehonYeDVnnn919X9PLqsJYbWXJy2VpoCVH3ZDalQ76trhEOtpL1aMd4nm27xBBAS+sOD1mk8YpL
MIME-Version: 1.0
X-Received: by 2002:a5d:8c87:: with SMTP id g7mr47222471ion.85.1563554040200; 
 Fri, 19 Jul 2019 09:34:00 -0700 (PDT)
Date: Fri, 19 Jul 2019 09:34:00 -0700
In-Reply-To: <000000000000490679058e0245ee@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000027494e058e0b4b3f@google.com>
Subject: Re: KASAN: use-after-free Read in finish_task_switch (2)
From: syzbot <syzbot+7f067c796eee2acbc57a@syzkaller.appspotmail.com>
To: aarcange@redhat.com, akpm@linux-foundation.org, christian@brauner.io, 
 davem@davemloft.net, ebiederm@xmission.com, elena.reshetova@intel.com, 
 guro@fb.com, hch@infradead.org, james.bottomley@hansenpartnership.com, 
 jasowang@redhat.com, jglisse@redhat.com, keescook@chromium.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-mm@kvack.org, linux-parisc@vger.kernel.org, luto@amacapital.net, 
 mhocko@suse.com, mingo@kernel.org, mst@redhat.com, namit@vmware.com, 
 peterz@infradead.org, syzkaller-bugs@googlegroups.com, wad@chromium.org, 
 yuehaibing@huawei.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_093403_211135_239E9C71 
X-CRM114-Status: UNSURE (   3.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=123faf70600000
start commit:   22051d9c Merge tag 'platform-drivers-x86-v5.3-2' of git://..
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=113faf70600000
console output: https://syzkaller.appspot.com/x/log.txt?x=163faf70600000
kernel config:  https://syzkaller.appspot.com/x/.config?x=135cb826ac59d7fc
dashboard link: https://syzkaller.appspot.com/bug?extid=7f067c796eee2acbc57a
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12c1898fa00000

Reported-by: syzbot+7f067c796eee2acbc57a@syzkaller.appspotmail.com
Fixes: 7f466032dc9e ("vhost: access vq metadata through kernel virtual  
address")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
