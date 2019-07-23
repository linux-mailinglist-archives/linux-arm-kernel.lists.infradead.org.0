Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E05C171973
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 15:38:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p4oaoZ6Cpe3JPMzhziDSx/lAAs/iMZeCdMmP8mp2hDA=; b=hvQN21njZ/5Rpes80+SqNy+Lf
	1rgYyhwHZIJ/fIp6c/IzLuPWwIiudT/IB3Lp8G9kpCHzxHt1U3ewQzwDaCecvS+gnrPGDi+QJXExi
	QV0sSx7/hZNAO+Lb9AXRuM51/f0o7SHo+IQavnYFJWCy0l9tSXucfAyLqM+AWwbs6Okpr3qAVSJLd
	nsUvQQ17vQU1lFtg9Z2n7BbLERPFiM5ZQozdMJct05kKACCofisTzz2tpWNN1yIs5xrxmVgjs1QSQ
	uk6Ar2JK9B387vuQ5gcKrec/JkQBtp9HD382G1I5lQogDwng/WzWJWQ2uccPRoGM7W1JGhuTfTJrD
	1+hnFxlxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpuzg-00052l-OP; Tue, 23 Jul 2019 13:38:16 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpuzF-0004tW-Ph
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 13:37:51 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4B9B230C34D1;
 Tue, 23 Jul 2019 13:37:48 +0000 (UTC)
Received: from [10.72.12.26] (ovpn-12-26.pek2.redhat.com [10.72.12.26])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D55375D9C5;
 Tue, 23 Jul 2019 13:37:18 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
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
 <20190723062842-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <025aa12a-c789-7eac-ba96-48e4dd3dd551@redhat.com>
Date: Tue, 23 Jul 2019 21:37:23 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723062842-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Tue, 23 Jul 2019 13:37:48 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_063750_024526_E55AC84B 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8yMyDkuIvljYg2OjQyLCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24g
VHVlLCBKdWwgMjMsIDIwMTkgYXQgMDQ6NDI6MTlQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90ZToK
Pj4+IFNvIGhvdyBhYm91dCB0aGlzOiBkbyBleGFjdGx5IHdoYXQgeW91IHByb3Bvc2UgYnV0IGFz
IGEgMiBwYXRjaCBzZXJpZXM6Cj4+PiBzdGFydCB3aXRoIHRoZSBzbG93IHNhZmUgcGF0Y2gsIGFu
ZCBhZGQgdGhlbiByZXR1cm4gdWFkZHIgb3B0aW1pemF0aW9ucwo+Pj4gb24gdG9wLiBXZSBjYW4g
dGhlbiBtb3JlIGVhc2lseSByZWFzb24gYWJvdXQgd2hldGhlciB0aGV5IGFyZSBzYWZlLgo+Pgo+
PiBJZiB5b3Ugc3RpY2ssIEkgY2FuIGRvIHRoaXMuCj4gU28gSSBkZWZpbml0ZWx5IGRvbid0IGlu
c2lzdCBidXQgSSdkIGxpa2UgdXMgdG8gZ2V0IGJhY2sgdG8gd2hlcmUKPiB3ZSBrbm93IGV4aXN0
aW5nIGNvZGUgaXMgdmVyeSBzYWZlIChpZiBub3Qgc3VwZXIgZmFzdCkgYW5kCj4gb3B0aW1pemlu
ZyBmcm9tIHRoZXJlLiAgQnVncyBoYXBwZW4gYnV0IEknZCBsaWtlIHRvIHNlZSBhIGJpc2VjdAo+
IGdpdmluZyB1cyAib2ggaXQncyBiZWNhdXNlIG9mIFhZWiBvcHRpbWl6YXRpb24iIGFuZCBub3Qg
dGhlCj4gZ2VuZXJhbCAiaXQncyBzb21ld2hlcmUgd2l0aGluIHRoaXMgZHJpdmVyIiB0aGF0IHdl
IGFyZSBnZXR0aW5nCj4gbm93LgoKClN5emJvdCBoYXMgYmlzZWN0ZWQgdG8gdGhlIGNvbW1pdCBv
ZiBtZXRhZGF0YSBhY2NlbGVyYXRpb24gaW4gZmFjdCA6KQoKCj4KPiBNYXliZSB0aGUgd2F5IHRv
IGRvIHRoaXMgaXMgdG8gcmV2ZXJ0IGZvciB0aGlzIHJlbGVhc2UgY3ljbGUKPiBhbmQgdGFyZ2V0
IHRoZSBuZXh0IG9uZS4gV2hhdCBkbyB5b3UgdGhpbms/CgoKSSB3b3VsZCB0cnkgdG8gZml4IHRo
ZSBpc3N1ZXMgY29uc2lkZXIgcGFja2VkIHZpcnRxdWV1ZSB3aGljaCBtYXkgdXNlIAp0aGlzIGZv
ciBhIGdvb2QgcGVyZm9ybWFuY2UgbnVtYmVyLiBCdXQgaWYgeW91IGluc2lzdCwgSSdtIG9rIHRv
IHJldmVydC4gCk9yIG1heWJlIGludHJvZHVjZSBhIGNvbmZpZyBvcHRpb24gdG8gZGlzYWJsZSBp
dCBieSBkZWZhdWx0IChhbG1vc3QgYWxsIApvcHRpbWl6ZWQgY291bGQgYmUgcnVsZWQgb3V0KS4K
ClRoYW5rcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
