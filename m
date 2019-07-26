Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FE576C47
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 17:03:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pdzm9XGzNE99AVbFGAxObONHUu7VTbppcaRZB4U0Oms=; b=tJgaCehj7pNGHz
	NIdv6hqV6wbjcOmQ5XPgGsfU3ApZjhpyEuPJ6mIhI1TVeq8rILla86CN4blRK5uDr/ZBqIRZhYfRa
	jj75/9NqkbBRjtRboxy0rA7vchdydEH2F8Y+iAOUHN4k8fEke9fOg94LhVj87KpRJmkMdCt/wbrvD
	xR6RiTD15+LiPFbNJQPUdvQIgzAM4GhMtJ+7QYJbrXgs5v5Es2Y3GPq31d33ukZ//G0+vdYG38h+m
	K+poTeBkn9DwRgtT4OmfQQIwTCWGfmgt00GTjwInEBuFwe7s+FrovjQl7Jb0fB6Gtce8pDhoIoEqz
	YtIl7R2FUl/hUuk7w6VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr1ky-0003rB-8j; Fri, 26 Jul 2019 15:03:40 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr1kk-0003qI-TR
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 15:03:28 +0000
Received: by mail-qt1-x844.google.com with SMTP id h18so52883048qtm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 08:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=GJNtLWUjNKGuqf/4gWb/0hY3o63IJN+bigrvbnAEvoQ=;
 b=O6JUVwIuDaoRGTyw9VDj8CvDSgLGWaKe8W4Wqb4w+dbn+4ZFH7a+6nHcjk/wUFFm6c
 0OYFTUoD9kHzSda3BQ8LyYRfdBubXwXZJVnNplw+uVLkHyKDz4X4NKH3Iz+7fyGTXvHZ
 SAmJImRDUCcOoWsYveIBTPNVruXFj0AXDPvuupRJe2nNzzPjk3KJWpIwPdb/PyZI5Fwj
 1x+AzU4fu6Hr7MypuEf996Ujkld5D3SALeRfN0ESQsNEl+iLcmRk7VOM3gFucanIizsp
 TEtB+vFjXNcz2vsGefQVJGHCZUG+6dpBQ5WpVqBd3HCf7f1KtoQETLm3B6MhLgC1B2Ry
 ndDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=GJNtLWUjNKGuqf/4gWb/0hY3o63IJN+bigrvbnAEvoQ=;
 b=T7a9hxm692E0pBBTlbWMy3X9/fV9+3xUy7z+gjcaKpnbBisWfHZFtKCP+XyebpfbCk
 8FDzlRLzI7SIs2h5BhFjUs2OJwuA7wjtqCF9o27FFIGuDdoUNKM5Y4E6nP8NwtHn8U3p
 7GIGUx9Tr5LqcLZZ+u00bv2iVHd60tbeIIt/9Uof2uG2gJUXcUnJDewDtRQbXBRyMpiq
 cRo4jjiu/5YKn9hFbSvcpxGQ2lQcQ3UHXbIRZRGvbjLAPaVbO4jqghsH9QiwaHEIINXj
 4vxNz4OWUL/bA8dyV5AEYIP3oEDC0uY846owTg3na/E4TrEiEb0//SFr9Sk/wd7y6FGH
 TNhQ==
X-Gm-Message-State: APjAAAUfX4zoX7SjzjU3vPavpOuLr+vGfFay7vth7njWXHLD2DxaykJk
 MdahaKOMo3bEf626MDRQ/VEscg==
X-Google-Smtp-Source: APXvYqw5bM9aE7bDAsR6CkrbhbbwLJ5RGlTlhcmaAHdDamcGQSO6zz4CR/XGVWg0EnLb37ZxhxrkYw==
X-Received: by 2002:a0c:d14e:: with SMTP id c14mr68086462qvh.206.1564153405057; 
 Fri, 26 Jul 2019 08:03:25 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id u71sm25391649qka.21.2019.07.26.08.03.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 26 Jul 2019 08:03:24 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hr1kg-0000d9-RM; Fri, 26 Jul 2019 12:03:22 -0300
Date: Fri, 26 Jul 2019 12:03:22 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190726150322.GB8695@ziepe.ca>
References: <20190725042651-mutt-send-email-mst@kernel.org>
 <84bb2e31-0606-adff-cf2a-e1878225a847@redhat.com>
 <20190725092332-mutt-send-email-mst@kernel.org>
 <11802a8a-ce41-f427-63d5-b6a4cf96bb3f@redhat.com>
 <20190726074644-mutt-send-email-mst@kernel.org>
 <5cc94f15-b229-a290-55f3-8295266edb2b@redhat.com>
 <20190726082837-mutt-send-email-mst@kernel.org>
 <ada10dc9-6cab-e189-5289-6f9d3ff8fed2@redhat.com>
 <20190726094353-mutt-send-email-mst@kernel.org>
 <63754251-a39a-1e0e-952d-658102682094@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <63754251-a39a-1e0e-952d-658102682094@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_080327_024471_17EE27B4 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMTA6MDA6MjBQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiBUaGUgcXVlc3Rpb24gaXMsIE1NVSBub3RpZmllciBhcmUgYWxsb3dlZCB0byBiZSBibG9j
a2VkIG9uCj4gaW52YWxpZGF0ZV9yYW5nZV9zdGFydCgpIHdoaWNoIGNvdWxkIGJlIG11Y2ggc2xv
d2VyIHRoYW4gc3luY2hyb25pemVfcmN1KCkKPiB0byBmaW5pc2guCj4gCj4gTG9va2luZyBhdCBh
bWRncHVfbW5faW52YWxpZGF0ZV9yYW5nZV9zdGFydF9nZngoKSB3aGljaCBjYWxscwo+IGFtZGdw
dV9tbl9pbnZhbGlkYXRlX25vZGUoKSB3aGljaCBkaWQ6Cj4gCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHIgPSByZXNlcnZhdGlvbl9vYmplY3Rfd2FpdF90aW1lb3V0X3JjdShiby0+
dGJvLnJlc3YsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB0cnVlLCBmYWxzZSwgTUFYX1NDSEVEVUxFX1RJTUVPVVQpOwo+IAo+IC4uLgoKVGhlIGdlbmVy
YWwgZ3VpZGFuY2UgaGFzIGJlZW4gdGhhdCBpbnZhbGlkYXRlX3N0YXJ0IHNob3VsZCBibG9jawpt
aW5pbWFsbHksIGlmIGF0IGFsbC4KCkkgd291bGQgc2F5IHN5bmNocm9uaXplX3JjdSBpcyBvdXRz
aWRlIHRoYXQgZ3VpZGFuY2UuCgpCVFcsIGFsd2F5cyByZXR1cm5pbmcgRUFHQUlOIGZvciBtbXVf
bm90aWZpZXJfcmFuZ2VfYmxvY2thYmxlKCkgaXMgbm90Cmdvb2QgZWl0aGVyLCBpdCBzaG91bGQg
aW5zdGVhZCBvbmx5IHJldHVybiBFQUdBSU4gaWYgYW55CnZob3N0X21hcF9yYW5nZV9vdmVybGFw
KCkgaXMgdHJ1ZS4KCkphc29uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
