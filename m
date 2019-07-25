Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE73746C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 08:03:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2Nq1HGh0fJjKKNglYhr4ePqzvC1r/x+2OmBGA1aLF4=; b=Re1Fb7C1s2JWm7
	U8JDBTZqwlbmKbbtYyJY6FuaAt5gw5YKXV6jzryy6EkJyr8ZxnNSZZqRlOIBU2S8+KNwa9ReAy7d3
	m6V0duwDFcxbyF2xqFlEKUFbvheskLBMXvyonGn4zZ3jV9t2VsQt/HmJysHVbgJSxKn7hQP25N+DJ
	RYCmRIO2osdgQGgErE9frWoQxs7mMQxY0s/hF+FPc1L32eZRo2dC7KsfGj1XNDFWMewpLm41wuBXv
	RRMMe0U5FiJ4htVTpEiKWLN8gQU3i32q03eGGarSSohrAVy25nBMTYLRSfD4I81RkObqX5Od3T41p
	2NWTj01/NGwQR3w5MEKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqWqS-0004jW-Ky; Thu, 25 Jul 2019 06:03:17 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqWq4-0004dZ-Tt
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 06:02:56 +0000
Received: by mail-qk1-f194.google.com with SMTP id w190so35578132qkc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 23:02:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zOvrC4jRrz0ugoagicTAba2I/X1iVC+b4ZZraA+kmso=;
 b=oJ0jfsqwoVYV6ef8LPeMYY2RepMknQnZykLw9yJc8InreFJvajUuBaS/qt1LABMrAs
 bEMbXBYefiIT69mxHETFaj/Bi8PA7lQXekFqOhpWuNIGMEKDN2FVpNzVQq1p2cP1fB3Q
 d5yIxlCL7IjxW9Irl7qQe7L21a8swtHoam+FJ699+OT48ykslcO+g1pfLubfockq1Vtj
 TeZKuL/l04rcbZ532Wru2mHON6L3AGiG+m7C+LRabgB1btqGqrGIRKaHp1f/vU1Rtv6U
 juP5V1rjZUCBDAZiAkI4Cb8OwcndEsuE9ho6tH+Kbk4XJawfUKbQrPOT1T6Zw8bEELsE
 kBgw==
X-Gm-Message-State: APjAAAVvoEEtBm8T1Q++qsj5s16ZAoW8lsFOsHkJPZgGvZdhlEPOAe84
 9xFfaX8qOYHhJW9+olWny5zAMw==
X-Google-Smtp-Source: APXvYqwbxlaMB/Ups0MK5ym5+FoeShoFD8maMViZfmHscXpKdz4RszQUYRwaBR+eewotyh05tZCO4w==
X-Received: by 2002:a37:aa04:: with SMTP id t4mr57308995qke.359.1564034571775; 
 Wed, 24 Jul 2019 23:02:51 -0700 (PDT)
Received: from redhat.com (bzq-79-181-91-42.red.bezeqint.net. [79.181.91.42])
 by smtp.gmail.com with ESMTPSA id
 i62sm22519634qke.52.2019.07.24.23.02.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 23:02:50 -0700 (PDT)
Date: Thu, 25 Jul 2019 02:02:41 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190725015402-mutt-send-email-mst@kernel.org>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <20190722141152.GA13711@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722141152.GA13711@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_230253_151058_666B1AE0 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
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
Cc: mhocko@suse.com, peterz@infradead.org, jasowang@redhat.com,
 ldv@altlinux.org, james.bottomley@hansenpartnership.com, linux-mm@kvack.org,
 namit@vmware.com, mingo@kernel.org, elena.reshetova@intel.com,
 keescook@chromium.org, aarcange@redhat.com, davem@davemloft.net,
 hch@infradead.org, christian@brauner.io,
 syzbot <syzbot+e58112d71f77113ddb7b@syzkaller.appspotmail.com>,
 syzkaller-bugs@googlegroups.com, jglisse@redhat.com, viro@zeniv.linux.org.uk,
 linux-arm-kernel@lists.infradead.org, wad@chromium.org,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 luto@amacapital.net, ebiederm@xmission.com, akpm@linux-foundation.org,
 guro@fb.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 11:11:52AM -0300, Jason Gunthorpe wrote:
> On Sun, Jul 21, 2019 at 06:02:52AM -0400, Michael S. Tsirkin wrote:
> > On Sat, Jul 20, 2019 at 03:08:00AM -0700, syzbot wrote:
> > > syzbot has bisected this bug to:
> > > 
> > > commit 7f466032dc9e5a61217f22ea34b2df932786bbfc
> > > Author: Jason Wang <jasowang@redhat.com>
> > > Date:   Fri May 24 08:12:18 2019 +0000
> > > 
> > >     vhost: access vq metadata through kernel virtual address
> > > 
> > > bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=149a8a20600000
> > > start commit:   6d21a41b Add linux-next specific files for 20190718
> > > git tree:       linux-next
> > > final crash:    https://syzkaller.appspot.com/x/report.txt?x=169a8a20600000
> > > console output: https://syzkaller.appspot.com/x/log.txt?x=129a8a20600000
> > > kernel config:  https://syzkaller.appspot.com/x/.config?x=3430a151e1452331
> > > dashboard link: https://syzkaller.appspot.com/bug?extid=e58112d71f77113ddb7b
> > > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10139e68600000
> > > 
> > > Reported-by: syzbot+e58112d71f77113ddb7b@syzkaller.appspotmail.com
> > > Fixes: 7f466032dc9e ("vhost: access vq metadata through kernel virtual
> > > address")
> > > 
> > > For information about bisection process see: https://goo.gl/tpsmEJ#bisection
> > 
> > 
> > OK I poked at this for a bit, I see several things that
> > we need to fix, though I'm not yet sure it's the reason for
> > the failures:
> 
> This stuff looks quite similar to the hmm_mirror use model and other
> places in the kernel. I'm still hoping we can share this code a bit more.

Right. I think hmm is something we should look at.

-- 
MST

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
