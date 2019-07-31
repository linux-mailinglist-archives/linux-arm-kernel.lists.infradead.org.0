Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF6D7D1A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 01:01:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jEJYYM60c1TPe2EdZMsHqwWEUlaTDBOlIFr99lK8R6I=; b=CekfK/OwNjBoPW
	4IuaTgam0TReSJOwSGBdU07EZnI7sSp6S0GGEiUISQyH7R49WoChtBKmQop062f9l0GoDOPnk3ii9
	9M1qeA8xWwy1mJYmKecj4hJYFrwQ2ZJ3nw2vEchPEZNttuX1S3kV4/MvF5tQJvMgEBsh9DEE04+sj
	uzTfsa2wwFhI2IjBCt0ShjLwwQEFO6d/rcDeIQyII3G4wk5/JX2r8YcpH4Bif3Qzz0ZZk+Ww9Pn0W
	HYhzPNyE4QvxIudYrLnzll33HOW3BLDUoEd1ctL58B265KPkcedbvXZslft4BS40yZ4eG+KDo03ni
	M3G2vyzNHGXg+iyPumvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsxam-0003pW-PM; Wed, 31 Jul 2019 23:01:08 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsxaf-0003oy-An
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 23:01:02 +0000
Received: by mail-qt1-x844.google.com with SMTP id d23so68286881qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 16:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=his7K/u+JOrtxUOs2Ekh5bM+KWEwFmVBgmJqXbtUu9E=;
 b=ZqOvaIKn5gpXMKF0lFuPBJqJcfbMtb3MPGVVmN3aQsXXr9MSvDSwnBIoLdfs4Cduzu
 QRA8c1QAxNjNjf8z0l9WF9x2Kw8+F1laR/NQxc3pyjTGetdSmplJvdURFUqnq6fIi7Y5
 JS4Uvm5qizwTDtKpRb8KoH2QzFqssZQiMkXG494iOUBy1xVC1xhi6b5WNlWd0gIvaub2
 W1XaQLBaV1YKYGli71I0JUa9mD2l2THlCEAFuHc01L/n1KcqIaj1oCEo7xdECmJqx39w
 8DGqiJA1GV5ZIbSfFrgl6Pwwxp6UZXG3UZ0N0Nuntbj6x+BE/tlQ9FyXqpoxRRJYgrFQ
 ADTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=his7K/u+JOrtxUOs2Ekh5bM+KWEwFmVBgmJqXbtUu9E=;
 b=jS3WZJSq0OSqupCverzekGvhP70i1SXKIvhd234qyMzz7kP7QGfOSylS08FSiW78MH
 0OmoW6aNERnexaUJXfHXXyr2SMaPFjqpXEBJ2f8Vut9Ni3cKBMpJQwOVctmTDNz3fldn
 UeYybtX+YJma3GlB/E5Brdp3V+D0FotbQabl9Jla59EQp/pTkaEPafrll8Rl4/VFavx2
 KgvIpjDbKyH1nDbyw9aN/5FJtKb4xcbAzbXNoshkOIkyKc7iSMdcqsObD6SOH5cMLcgy
 29aEdEwEdu+X0KGlPnUeA469YRu52bWqSeCgeDw+UFS1QSv0nVYnV54go8yCDvbM6LTX
 EzyA==
X-Gm-Message-State: APjAAAXWLJKfu/gMLuNuUEjSrVHadT+r5nJFhwR01amIAwYKFHgPQfhw
 NPdML71hz7sk2Ewes46xCKyeXg==
X-Google-Smtp-Source: APXvYqwJPf0PqUhqgGpVR2IzxGvlfGykM1M7nRsba5YS0Ne3y5wjASuoEvOh6D7uIAmXvcUuYYR1nQ==
X-Received: by 2002:ac8:688:: with SMTP id f8mr11797584qth.130.1564614059446; 
 Wed, 31 Jul 2019 16:00:59 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id n18sm29218512qtr.28.2019.07.31.16.00.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 31 Jul 2019 16:00:58 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hsxab-00009Y-B9; Wed, 31 Jul 2019 20:00:57 -0300
Date: Wed, 31 Jul 2019 20:00:57 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190731230057.GA32346@ziepe.ca>
References: <ada10dc9-6cab-e189-5289-6f9d3ff8fed2@redhat.com>
 <aaefa93e-a0de-1c55-feb0-509c87aae1f3@redhat.com>
 <20190726094756-mutt-send-email-mst@kernel.org>
 <0792ee09-b4b7-673c-2251-e5e0ce0fbe32@redhat.com>
 <20190729045127-mutt-send-email-mst@kernel.org>
 <4d43c094-44ed-dbac-b863-48fc3d754378@redhat.com>
 <20190729104028-mutt-send-email-mst@kernel.org>
 <96b1d67c-3a8d-1224-e9f0-5f7725a3dc10@redhat.com>
 <20190730110633-mutt-send-email-mst@kernel.org>
 <421a1af6-df06-e4a6-b34f-526ac123bc4a@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <421a1af6-df06-e4a6-b34f-526ac123bc4a@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_160101_515989_EBFA06A2 
X-CRM114-Status: UNSURE (   6.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mhocko@suse.com, "Michael S. Tsirkin" <mst@redhat.com>,
 peterz@infradead.org, ldv@altlinux.org, james.bottomley@hansenpartnership.com,
 linux-mm@kvack.org, namit@vmware.com, mingo@kernel.org,
 elena.reshetova@intel.com, keescook@chromium.org, aarcange@redhat.com,
 davem@davemloft.net, hch@infradead.org, christian@brauner.io,
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

On Wed, Jul 31, 2019 at 04:49:32PM +0800, Jason Wang wrote:
> Yes, looking at the synchronization implemented by other MMU notifiers.
> Vhost is even the simplest.

I think that is only because it calls gup under a spinlock, which is,
IMHO, not great.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
