Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 201BA71660
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 12:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yk43b1I+BGxeYxSc0dfw5PhbNb9WGk6gsn2Z3s1sgwc=; b=Q8lAya1MElSGoY
	5nK17O9SN5JGa9kGXKrwomVmsAbEnqlaTPmYMCmLFj0qNGF7kOpZVgC6f85gwwIVS4og2y9exikBF
	xtjj/4r6xMVF1RqrkDSICB0NJziBOFStvo30N5a/gUqaiye1/d2FK3z7nZ8UNw0mqcN6j41sxM3vQ
	HN+wOSHbJtG4COkE1+bzX0KOe5bY8S79oGRW5DB1oCqxCCND1M+KrZ4gcMA45rp0X9mB0GmgaBrwh
	yhKj3kN9WPzgwU2XjtQFSH+nx/ODb52UMaDi7l0RrcWPa7DE418WijBt7KPIO+grBq3va6t8We4ZX
	NTtsBWgbQUYBk0LlCuDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpsGD-0005wq-UP; Tue, 23 Jul 2019 10:43:10 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpsFu-0005jN-5s
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 10:42:51 +0000
Received: by mail-qt1-f195.google.com with SMTP id y26so41394353qto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 03:42:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=N4xK5veZG09uUkAaPdHZto+xy99VCECeBtRkb6sAB/w=;
 b=Cr3MRyKzduTcJmo/kzFx3Pv6Rz+ednvTAxhzFdlNqd6V6OsB6jhNLrPWNgDBd5Pfo8
 oU0BpI5yh6MXiaJtYkCqPJyrOpe9qu97uiHplSgDXJbgcgfDtq3KOBtloeT3B/dNI5e2
 CMhvJr/btvZC3HPmeOXS+H3626YaZJeG/thdZZwCa5/HZRq04D5BSl/PYS+0ROTJXwjg
 yvS4MZZ5Hp50TToptcbQ74CX+Xj1JbVCbZ4Q01ZM4LXtlLHUt7d5qH/UQz7aoEytllAB
 9o5kto/27SAt3Ws6S9JsG3E8gQXHRFwDxS6AmCwRgSxhJ1BQ65bpzOIw3pSBRiG6svCn
 XwZQ==
X-Gm-Message-State: APjAAAWNv3vDVM3GspQrqPaTi9/xYtPIOk5kmzHoBSOOfsC1DeyZVivf
 //L10vaZ1XAeM5YKu+GHKK9f1Q==
X-Google-Smtp-Source: APXvYqyaExRlYw/QlDd/NWuqasay2jAYk3JOBnWzJfjESy3cklpZQkiKPy3zfhsnVUYaS/Q/QI1fjQ==
X-Received: by 2002:a0c:d4d0:: with SMTP id y16mr52541534qvh.191.1563878568268; 
 Tue, 23 Jul 2019 03:42:48 -0700 (PDT)
Received: from redhat.com (bzq-79-181-91-42.red.bezeqint.net. [79.181.91.42])
 by smtp.gmail.com with ESMTPSA id
 b7sm18536990qtt.38.2019.07.23.03.42.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 03:42:47 -0700 (PDT)
Date: Tue, 23 Jul 2019 06:42:38 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190723062842-mutt-send-email-mst@kernel.org>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <75c43998-3a1c-676f-99ff-3d04663c3fcc@redhat.com>
 <20190722035657-mutt-send-email-mst@kernel.org>
 <cfcd330d-5f4a-835a-69f7-c342d5d0d52d@redhat.com>
 <20190723010156-mutt-send-email-mst@kernel.org>
 <124be1a2-1c53-8e65-0f06-ee2294710822@redhat.com>
 <20190723032800-mutt-send-email-mst@kernel.org>
 <e2e01a05-63d8-4388-2bcd-b2be3c865486@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e2e01a05-63d8-4388-2bcd-b2be3c865486@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_034250_249818_75D1EC3C 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
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
Cc: mhocko@suse.com, peterz@infradead.org, ldv@altlinux.org,
 james.bottomley@hansenpartnership.com, linux-mm@kvack.org, namit@vmware.com,
 mingo@kernel.org, elena.reshetova@intel.com, keescook@chromium.org,
 aarcange@redhat.com, davem@davemloft.net, hch@infradead.org,
 christian@brauner.io,
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

On Tue, Jul 23, 2019 at 04:42:19PM +0800, Jason Wang wrote:
> > So how about this: do exactly what you propose but as a 2 patch series:
> > start with the slow safe patch, and add then return uaddr optimizations
> > on top. We can then more easily reason about whether they are safe.
> 
> 
> If you stick, I can do this.

So I definitely don't insist but I'd like us to get back to where
we know existing code is very safe (if not super fast) and
optimizing from there.  Bugs happen but I'd like to see a bisect
giving us "oh it's because of XYZ optimization" and not the
general "it's somewhere within this driver" that we are getting
now.

Maybe the way to do this is to revert for this release cycle
and target the next one. What do you think?

-- 
MST

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
