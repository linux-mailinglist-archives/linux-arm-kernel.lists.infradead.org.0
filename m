Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2923F73442
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 18:54:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kx2E+uO0abAgy5A8QOO51yUIgiXO+HdC13LklhCxzCo=; b=FTdtAB1WOgD+Kp
	1QEVTOnrQmnQH2CilMfYTChMWQfzGPlf6+LahInGevktD1nXIJnpdqYbKhRzcXA7utJJF1KFNYkBD
	DeSXo8Rv1X/bYvMSHil8YJLMYGCShz/3sJWAlsJ+LgofFOQl+vn89xsBAl9WB9HvOtt+wlKiQ57NS
	bdcuRgdBcmsEZVzLC6yXvehGwabjffQqKhFjhnudY43ftigd6ZC5GsSFirLfFpe3Qi7HttbmbSRMX
	xitj6UJmzhwng807ZM+xVecsqK9X7UgM1BSGAh79VLTKoSJ2e1BGnhIPNLLO1Fosdcvhw0oGIHMzE
	OS1b1IWUkZ+8I3+FKSGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKX4-0006A6-8G; Wed, 24 Jul 2019 16:54:26 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKW1-00068x-4J
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 16:53:22 +0000
Received: by mail-qk1-x744.google.com with SMTP id d15so34241749qkl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 09:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=N+5GDocIaGJNeeiAfHSOPi2SmVdT4rQLPHKSD9PsZ+I=;
 b=YDxsaLxkea1VSwYyvtzIkxG5oCvSkigPxhBkQShb6z3NiUMmOxfDu1eZ6zFkom7daU
 u8h/zoLkQOxwJRbiaCw2/8hNE/Bht5HY3TCoiCttwyptVd1mPoS+GRxRkwK0cCm3iq22
 7qkf+dpbC+KGjNEaO8b5+LWigp5rJLzAXzsj2ylO1gPUf+tQ5JrgQJnV1nENWsjnyYa9
 9VarDOham+q+ATGl5AwzqF39bSfue6F3vqwEURcqG21pxm9lVbVSoUgMl1phRmPztF8C
 CtiYbpiK44hufWFvehcheJDYUXoVOSEOaAY2meip1/99aZ9WTovpxbewVKfaicsyRLaG
 Ke3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=N+5GDocIaGJNeeiAfHSOPi2SmVdT4rQLPHKSD9PsZ+I=;
 b=DRwwc6er7ckEZeYBpEU7Sz5JoFQxot8jdg4/qFLH7m/xP4hBQ2uhwzpR4RBJMbi1TH
 pKk2KGZ4k52PVnoQhrNhrzlG84jsds3/HUZQQMiCrEuzFGJKzPvAT6+TOpzCow+UBQbO
 sRpBpAmS7tcESDugbe+XQBWJ0sf+WyWVvst/q+bRTdQyHdyZF3Epbti0A3vCRaq8RgEn
 d5a2LT/7XlPnvaOYNg2crHs1TGngJ7GOEOYDoXiw+IEaxmFN11toQSiAkfqhTvKfh71M
 BTKqha5e2f47yRgQnxWOidV7YBs98Cr60wZe2PWCOfayb9VPme0nFi6IgXGrSOc3RZrF
 0LMQ==
X-Gm-Message-State: APjAAAUz6Y2YuNBq1He5EVwoyuMX89vhuebJvO9bXGCtJWeVpAApC7YU
 pbFrf9NoKzBtAHYz6ei5xRo70g==
X-Google-Smtp-Source: APXvYqwTV2my7RFNNmAmi8390juQo6CDY6coH8KBA9OiHHx09ixIjX0uw+ns25AF40VQtymPk2wh6Q==
X-Received: by 2002:a05:620a:232:: with SMTP id
 u18mr53141490qkm.131.1563987199405; 
 Wed, 24 Jul 2019 09:53:19 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id q12sm19415581qkm.126.2019.07.24.09.53.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 24 Jul 2019 09:53:18 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hqKVx-0002lr-R9; Wed, 24 Jul 2019 13:53:17 -0300
Date: Wed, 24 Jul 2019 13:53:17 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: "Michael S. Tsirkin" <mst@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190724165317.GD28493@ziepe.ca>
References: <cfcd330d-5f4a-835a-69f7-c342d5d0d52d@redhat.com>
 <20190723010156-mutt-send-email-mst@kernel.org>
 <124be1a2-1c53-8e65-0f06-ee2294710822@redhat.com>
 <20190723032800-mutt-send-email-mst@kernel.org>
 <e2e01a05-63d8-4388-2bcd-b2be3c865486@redhat.com>
 <20190723062221-mutt-send-email-mst@kernel.org>
 <9baa4214-67fd-7ad2-cbad-aadf90bbfc20@redhat.com>
 <20190723110219-mutt-send-email-mst@kernel.org>
 <e0c91b89-d1e8-9831-00fe-23fe92d79fa2@redhat.com>
 <20190724040238-mutt-send-email-mst@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724040238-mutt-send-email-mst@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_095321_486961_9AEABF27 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mhocko@suse.com, peterz@infradead.org, Jason Wang <jasowang@redhat.com>,
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

On Wed, Jul 24, 2019 at 04:05:17AM -0400, Michael S. Tsirkin wrote:
> On Wed, Jul 24, 2019 at 10:17:14AM +0800, Jason Wang wrote:
> > So even PTE is read speculatively before reading invalidate_count (only in
> > the case of invalidate_count is zero). The spinlock has guaranteed that we
> > won't read any stale PTEs.
> 
> I'm sorry I just do not get the argument.
> If you want to order two reads you need an smp_rmb
> or stronger between them executed on the same CPU.

No, that is only for unlocked algorithms.

In this case the spinlock provides all the 'or stronger' ordering
required.

For invalidate_count going 0->1 the spin_lock ensures that any
following PTE update during invalidation does not order before the
spin_lock()

While holding the lock and observing 1 in invalidate_count the PTE
values might be changing, but are ignored. C's rules about sequencing
make this safe.

For invalidate_count going 1->0 the spin_unlock ensures that any
preceeding PTE update during invalidation does not order after the
spin_unlock

While holding the lock and observing 0 in invalidating_count the PTE
values cannot be changing.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
