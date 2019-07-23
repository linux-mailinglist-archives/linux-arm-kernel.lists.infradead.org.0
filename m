Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F20C17134D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 09:53:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cwlq3x9lhxzSG6xDW/mJIoM8O2t0XeXbnNZhn2Imy28=; b=JzV7dAXMcroe5Of31KsYANB8Q
	0x+B/jhvAeuDiG7+r9hl4jHikD0e0rWqwwEzg/LyS4CIrUThYK7LHXgkgS1UXoivSHTBU0R2hNBKW
	6/mWhDUuNvJ0YVnMLFXQEO8ys5h5pBeyHbdKj+31CMI7u4P+VbYQSSEwRailbyCd4MeFpJhYXqMZ7
	ZJPf0N2cfWtBDqB3nt+yLTc1gi3DGvYAge/SW2u7vdBwkFruMuAXeWq17gWLXkNAiZRV6Wly7kIlU
	MfvVobKF6mgvMzTI7aJ/GS0RoX19HXUPGF6qzrxJQ5KAcSgXf2298MqdyzbwF0rjpgDipme0dx64o
	JTExPbG9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hppc3-0006aD-OV; Tue, 23 Jul 2019 07:53:31 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hppbp-0006Zs-K0
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 07:53:18 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4F9A983F42;
 Tue, 23 Jul 2019 07:53:16 +0000 (UTC)
Received: from [10.72.12.26] (ovpn-12-26.pek2.redhat.com [10.72.12.26])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 68E0B60497;
 Tue, 23 Jul 2019 07:53:05 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <20190721081447-mutt-send-email-mst@kernel.org>
 <85dd00e2-37a6-72b7-5d5a-8bf46a3526cf@redhat.com>
 <20190722040230-mutt-send-email-mst@kernel.org>
 <4bd2ff78-6871-55f2-44dc-0982ffef3337@redhat.com>
 <20190723010019-mutt-send-email-mst@kernel.org>
 <b4696f2e-678a-bdb2-4b7c-fb4ce040ec2a@redhat.com>
 <20190723032024-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <1d14de4d-0133-1614-9f64-3ded381de04e@redhat.com>
Date: Tue, 23 Jul 2019 15:53:06 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723032024-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Tue, 23 Jul 2019 07:53:16 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_005317_689825_05364965 
X-CRM114-Status: GOOD (  17.32  )
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

Ck9uIDIwMTkvNy8yMyDkuIvljYgzOjIzLCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4+PiBS
ZWFsbHkgbGV0J3MganVzdCB1c2Uga2ZyZWVfcmN1LiBJdCdzIHdheSBjbGVhbmVyOiBmaXJlIGFu
ZCBmb3JnZXQuCj4+IExvb2tzIG5vdCwgeW91IG5lZWQgcmF0ZSBsaW1pdCB0aGUgZmlyZSBhcyB5
b3UndmUgZmlndXJlZCBvdXQ/Cj4gU2VlIHRoZSBkaXNjdXNzaW9uIHRoYXQgZm9sbG93ZWQuIEJh
c2ljYWxseSBubywgaXQncyBnb29kIGVub3VnaAo+IGFscmVhZHkgYW5kIGlzIG9ubHkgZ29pbmcg
dG8gYmUgYmV0dGVyLgo+Cj4+IEFuZCBpbiBmYWN0LAo+PiB0aGUgc3luY2hyb25pemF0aW9uIGlz
IG5vdCBldmVuIG5lZWRlZCwgZG9lcyBpdCBoZWxwIGlmIEkgbGVhdmUgYSBjb21tZW50IHRvCj4+
IGV4cGxhaW4/Cj4gTGV0J3MgdHJ5IHRvIGZpZ3VyZSBpdCBvdXQgaW4gdGhlIG1haWwgZmlyc3Qu
IEknbSBwcmV0dHkgc3VyZSB0aGUKPiBjdXJyZW50IGxvZ2ljIGlzIHdyb25nLgoKCkhlcmUgaXMg
d2hhdCB0aGUgY29kZSB3aGF0IHRvIGFjaGlldmU6CgotIFRoZSBtYXAgd2FzIHByb3RlY3RlZCBi
eSBSQ1UKCi0gV3JpdGVycyBhcmU6IE1NVSBub3RpZmllciBpbnZhbGlkYXRpb24gY2FsbGJhY2tz
LCBmaWxlIG9wZXJhdGlvbnMgCihpb2N0bHMgZXRjKSwgbWV0YV9wcmVmZXRjaCAoZGF0YXBhdGgp
CgotIFJlYWRlcnMgYXJlOiBtZW1vcnkgYWNjZXNzb3IKCldyaXRlciBhcmUgc3luY2hyb25pemVk
IHRocm91Z2ggbW11X2xvY2suIFJDVSBpcyB1c2VkIHRvIHN5bmNocm9uaXplZCAKYmV0d2VlbiB3
cml0ZXJzIGFuZCByZWFkZXJzLgoKVGhlIHN5bmNocm9uaXplX3JjdSgpIGluIHZob3N0X3Jlc2V0
X3ZxX21hcHMoKSB3YXMgdXNlZCB0byBzeW5jaHJvbml6ZWQgCml0IHdpdGggcmVhZGVycyAobWVt
b3J5IGFjY2Vzc29ycykgaW4gdGhlIHBhdGggb2YgZmlsZSBvcGVyYXRpb25zLiBCdXQgCmluIHRo
aXMgY2FzZSwgdnEtPm11dGV4IHdhcyBhbHJlYWR5IGhlbGQsIHRoaXMgbWVhbnMgaXQgaGFzIGJl
ZW4gCnNlcmlhbGl6ZWQgd2l0aCBtZW1vcnkgYWNjZXNzb3IuIFRoYXQncyB3aHkgSSB0aGluayBp
dCBjb3VsZCBiZSByZW1vdmVkIApzYWZlbHkuCgpBbnl0aGluZyBJIG1pc3MgaGVyZT8KCgo+Cj4+
Pj4gQnR3LCBmb3Iga3ZtIGlvY3RsIGl0IHN0aWxsIHVzZXMgc3luY2hyb25pemVfcmN1KCkgaW4g
a3ZtX3ZjcHVfaW9jdGwoKSwKPj4+PiAoanVzdCBhIGxpdHRsZSBiaXQgbW9yZSBoYXJkIHRvIHRy
aWdnZXIpOgo+Pj4gQUZBSUsgdGhlc2UgbmV2ZXIgcnVuIGluIHJlc3BvbnNlIHRvIGd1ZXN0IGV2
ZW50cy4KPj4+IFNvIHRoZXkgY2FuIHRha2UgdmVyeSBsb25nIGFuZCBndWVzdHMgc3RpbGwgd29u
J3QgY3Jhc2guCj4+IFdoYXQgaWYgZ3Vlc3QgbWFuYWdlcyB0byBlc2NhcGUgdG8gcWVtdT8KPj4K
Pj4gVGhhbmtzCj4gVGhlbiBpdCdzIGdvaW5nIHRvIGJlIHNsb3cuIFdoeSBkbyB3ZSBjYXJlPwo+
IFdoYXQgd2UgZG8gbm90IHdhbnQgaXMgc3luY2hyb25pemVfcmN1IHRoYXQgZ3Vlc3QgaXMgYmxv
Y2tlZCBvbi4KPgoKT2ssIHRoaXMgbG9va3MgbGlrZSB0aGF0IEkgaGF2ZSBzb21lIG1pc3VuZGVy
c3RhbmRpbmcgaGVyZSBvZiB0aGUgcmVhc29uIAp3aHkgc3luY2hyb25pemVfcmN1KCkgaXMgbm90
IHByZWZlcmFibGUgaW4gdGhlIHBhdGggb2YgaW9jdGwuIEJ1dCBpbiBrdm0gCmNhc2UsIGlmIHJj
dV9leHBlZGl0ZWQgaXMgc2V0LCBpdCBjYW4gdHJpZ2dlcnMgSVBJcyBBRkFJSy4KClRoYW5rcwoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
