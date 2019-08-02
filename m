Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DAF7EC47
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 07:50:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rym/oQJExb99G/f9rbED+rL10Gme9SwtnyXDcMo25bg=; b=o8U8qdkPfLKpOLkiGgHOkYLxG
	6fIUWzxgHjomrGhW+6zvRirOU9trpqMSQk/TZ70OnimMRDnpW8o4BJmbeySF71EkEGRR8pGa9pW8v
	l7HAqUiTL13tYzUNu28oTUvZ0EjZTSlmHLJEoh3wuzNYEuyY5KOdIcLu6UEimzgzNYPtuZb4+gfFm
	uOZV1ouc8foLwOWRzNOuhMk4cwYmcZkeTV6il77VItuDB68lmmKQf28x2M1I3znqSjz8n2jX0jQ+e
	1EvbGOz+4vAtfTL5RqU/vm4Dglwhc+MYaQTrETCvr2+ucQXvsVoV/VxJDkzJVupWgECZjq/hGe3K/
	/F+zb4uzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htQS7-00053y-4L; Fri, 02 Aug 2019 05:50:07 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htQRw-00053U-4L; Fri, 02 Aug 2019 05:49:57 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d43cf030000>; Thu, 01 Aug 2019 22:49:55 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 01 Aug 2019 22:49:54 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 01 Aug 2019 22:49:54 -0700
Received: from [10.2.171.217] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 2 Aug
 2019 05:49:53 +0000
Subject: Re: [PATCH 20/34] xen: convert put_page() to put_user_page*()
To: Juergen Gross <jgross@suse.com>, <john.hubbard@gmail.com>, Andrew Morton
 <akpm@linux-foundation.org>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802022005.5117-21-jhubbard@nvidia.com>
 <4471e9dc-a315-42c1-0c3c-55ba4eeeb106@suse.com>
X-Nvconfidentiality: public
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <d5140833-e9ee-beb5-ff0a-2d13a4fe819f@nvidia.com>
Date: Thu, 1 Aug 2019 22:48:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <4471e9dc-a315-42c1-0c3c-55ba4eeeb106@suse.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1564724995; bh=OWvjPY2RJnSXiNaT1G8Eyahp8MUAsm98cTkExQmaDUY=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=g4+wbBM5eRNl11+v4FSAl8PrvEnWACjbjTJMUv4Ewv3g+h7PgD8hueH5dPeoF8sW5
 c20eFrVi38BUjWugKSUxA2GH7CM3A3OrXQMppFfNCHg/NTgln/g1EuAeIEfsheR70J
 47ajhTYRdBziMz0qVCHRjvKDjLN869T+rpjyKMqZQbhfLl80UOF5a6wxQMkyYeuu5C
 +SnQBQbOJUSigTfdZ2ZjmuC0GsGJhOMqTD72slI2rg2m1d7LKmLad2tBrS2UUN+9aI
 ixGXEdOyIH0YMQhEWsNGgp8xCyCNq0cOZ0EzzfGMekaZZJReXbXnLe2japHjsnQzSN
 gxuwPmkfTC8TQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_224956_190048_B97FFE24 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 Dan Williams <dan.j.williams@intel.com>, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, ceph-devel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gOC8xLzE5IDk6MzYgUE0sIEp1ZXJnZW4gR3Jvc3Mgd3JvdGU6Cj4gT24gMDIuMDguMTkgMDQ6
MTksIGpvaG4uaHViYmFyZEBnbWFpbC5jb20gd3JvdGU6Cj4+IEZyb206IEpvaG4gSHViYmFyZCA8
amh1YmJhcmRAbnZpZGlhLmNvbT4KLi4uCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3hlbi9wcml2
Y21kLmMgYi9kcml2ZXJzL3hlbi9wcml2Y21kLmMKPj4gaW5kZXggMmY1Y2U3MjMwYTQzLi4yOWU0
NjFkYmVlMmQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMveGVuL3ByaXZjbWQuYwo+PiArKysgYi9k
cml2ZXJzL3hlbi9wcml2Y21kLmMKPj4gQEAgLTYxMSwxNSArNjExLDEwIEBAIHN0YXRpYyBpbnQg
bG9ja19wYWdlcygKPj4gwqAgc3RhdGljIHZvaWQgdW5sb2NrX3BhZ2VzKHN0cnVjdCBwYWdlICpw
YWdlc1tdLCB1bnNpZ25lZCBpbnQgbnJfcGFnZXMpCj4+IMKgIHsKPj4gLcKgwqDCoCB1bnNpZ25l
ZCBpbnQgaTsKPj4gLQo+PiDCoMKgwqDCoMKgIGlmICghcGFnZXMpCj4+IMKgwqDCoMKgwqDCoMKg
wqDCoCByZXR1cm47Cj4+IC3CoMKgwqAgZm9yIChpID0gMDsgaSA8IG5yX3BhZ2VzOyBpKyspIHsK
Pj4gLcKgwqDCoMKgwqDCoMKgIGlmIChwYWdlc1tpXSkKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcHV0X3BhZ2UocGFnZXNbaV0pOwo+PiAtwqDCoMKgIH0KPj4gK8KgwqDCoCBwdXRfdXNlcl9w
YWdlcyhwYWdlcywgbnJfcGFnZXMpOwo+IAo+IFlvdSBhcmUgbm90IGhhbmRsaW5nIHRoZSBjYXNl
IHdoZXJlIHBhZ2VzW2ldIGlzIE5VTEwgaGVyZS4gT3IgYW0gSQo+IG1pc3NpbmcgYSBwZW5kaW5n
IHBhdGNoIHRvIHB1dF91c2VyX3BhZ2VzKCkgaGVyZT8KPiAKCkhpIEp1ZXJnZW4sCgpZb3UgYXJl
IGNvcnJlY3QtLXRoaXMgbm8gbG9uZ2VyIGhhbmRsZXMgdGhlIGNhc2VzIHdoZXJlIHBhZ2VzW2ld
CmlzIE5VTEwuIEl0J3MgaW50ZW50aW9uYWwsIHRob3VnaCBwb3NzaWJseSB3cm9uZy4gOikKCkkg
c2VlIHRoYXQgSSBzaG91bGQgaGF2ZSBhZGRlZCBteSBzdGFuZGFyZCBibHVyYiB0byB0aGlzCmNv
bW1pdCBkZXNjcmlwdGlvbi4gSSBtaXNzZWQgdGhpcyBvbmUsIGJ1dCBzb21lIG9mIHRoZSBvdGhl
ciBwYXRjaGVzCmhhdmUgaXQuIEl0IG1ha2VzIHRoZSBmb2xsb3dpbmcsIHBvc3NpYmx5IGluY29y
cmVjdCBjbGFpbToKCiJUaGlzIGNoYW5nZXMgdGhlIHJlbGVhc2UgY29kZSBzbGlnaHRseSwgYmVj
YXVzZSBlYWNoIHBhZ2Ugc2xvdCBpbiB0aGUKcGFnZV9saXN0W10gYXJyYXkgaXMgbm8gbG9uZ2Vy
IGNoZWNrZWQgZm9yIE5VTEwuIEhvd2V2ZXIsIHRoYXQgY2hlY2sKd2FzIHdyb25nIGFueXdheSwg
YmVjYXVzZSB0aGUgZ2V0X3VzZXJfcGFnZXMoKSBwYXR0ZXJuIG9mIHVzYWdlIGhlcmUKbmV2ZXIg
YWxsb3dlZCBmb3IgTlVMTCBlbnRyaWVzIHdpdGhpbiBhIHJhbmdlIG9mIHBpbm5lZCBwYWdlcy4i
CgpUaGUgd2F5IEkndmUgc2VlbiB0aGVzZSBwYWdlIGFycmF5cyB1c2VkIHdpdGggZ2V0X3VzZXJf
cGFnZXMoKSwKdGhpbmdzIGFyZSBlaXRoZXIgZG9uZSBzaW5nbGUgcGFnZSwgb3Igd2l0aCBhIGNv
bnRpZ3VvdXMgcmFuZ2UuIFNvCnVubGVzcyBJJ20gbWlzc2luZyBhIGNhc2Ugd2hlcmUgc29tZW9u
ZSBpcyBlaXRoZXIKCmEpIHJlbGVhc2luZyBpbmRpdmlkdWFsIHBhZ2VzIHdpdGhpbiBhIHJhbmdl
IChhbmQgdGh1cyBsaWtlbHkgbWVzc2luZwp1cCB0aGVpciBjb3VudCBvZiBwYWdlcyB0aGV5IGhh
dmUpLCBvcgoKYikgYWxsb2NhdGluZyB0d28gZ3VwIHJhbmdlcyB3aXRoaW4gdGhlIHNhbWUgcGFn
ZXNbXSBhcnJheSwgd2l0aCBhCmdhcCBiZXR3ZWVuIHRoZSBhbGxvY2F0aW9ucywKCi4uLnRoZW4g
aXQgc2hvdWxkIGJlIGNvcnJlY3QuIElmIHNvLCB0aGVuIEknbGwgYWRkIHRoZSBhYm92ZSBibHVy
Ygp0byB0aGlzIHBhdGNoJ3MgY29tbWl0IGRlc2NyaXB0aW9uLgoKSWYgdGhhdCdzIG5vdCB0aGUg
Y2FzZSAoYm90aCBoZXJlLCBhbmQgaW4gMyBvciA0IG90aGVyIHBhdGNoZXMgaW4gdGhpcwpzZXJp
ZXMsIHRoZW4gYXMgeW91IHNhaWQsIEkgc2hvdWxkIGFkZCBOVUxMIGNoZWNrcyB0byBwdXRfdXNl
cl9wYWdlcygpCmFuZCBwdXRfdXNlcl9wYWdlc19kaXJ0eV9sb2NrKCkuCgoKdGhhbmtzLAotLSAK
Sm9obiBIdWJiYXJkCk5WSURJQQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
