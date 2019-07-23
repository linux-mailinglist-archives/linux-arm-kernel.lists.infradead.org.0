Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DE37145D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9DT3L4qvGkYxxPZrEBXn3ATSuXMzwWYrc1VDdm1SwK8=; b=KxW5NQFFwGT4dKVF8NkF0YCBM
	Ogyp+dO/f/GdSREobVGuI6pMa4Iz56NW6AKsrnaE5xFW3VEyKoBdSJb3sqw/UyXbvjE82EET1CsTp
	XCkd0Xgi3e0dVr68F/BnkrYz+v0kIvV12gzcWsxo9K4MVt2Vci+wY5Wr/WwAHamaLkO+hb2+HyZgX
	tmeroF4ZNwLCjZOqSqmbyOeyLhg7yVqckUOM8esHAVcgBxLxwAzKHCxGjpqXZde06NW0f6iSpDDkF
	CzvalEdibnCMIB3yR9y8sIAdKqSaKb04AZHprUUOnOqlWiKDhL51L+L7m3pplqC1aWY+i8lUnZnch
	FNbNpi40w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqUD-0002ZU-Gs; Tue, 23 Jul 2019 08:49:29 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpqTv-0002Y3-2C
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:49:12 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 85FD183F4C;
 Tue, 23 Jul 2019 08:49:10 +0000 (UTC)
Received: from [10.72.12.26] (ovpn-12-26.pek2.redhat.com [10.72.12.26])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C1353600CD;
 Tue, 23 Jul 2019 08:49:00 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <20190721081447-mutt-send-email-mst@kernel.org>
 <85dd00e2-37a6-72b7-5d5a-8bf46a3526cf@redhat.com>
 <20190722040230-mutt-send-email-mst@kernel.org>
 <4bd2ff78-6871-55f2-44dc-0982ffef3337@redhat.com>
 <20190723010019-mutt-send-email-mst@kernel.org>
 <b4696f2e-678a-bdb2-4b7c-fb4ce040ec2a@redhat.com>
 <20190723032024-mutt-send-email-mst@kernel.org>
 <1d14de4d-0133-1614-9f64-3ded381de04e@redhat.com>
 <20190723035725-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <3f4178f1-0d71-e032-0f1f-802428ceca59@redhat.com>
Date: Tue, 23 Jul 2019 16:49:01 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723035725-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Tue, 23 Jul 2019 08:49:10 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_014911_146663_1B7AC8EF 
X-CRM114-Status: GOOD (  26.97  )
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

Ck9uIDIwMTkvNy8yMyDkuIvljYg0OjEwLCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24g
VHVlLCBKdWwgMjMsIDIwMTkgYXQgMDM6NTM6MDZQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90ZToK
Pj4gT24gMjAxOS83LzIzIOS4i+WNiDM6MjMsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4+
Pj4gUmVhbGx5IGxldCdzIGp1c3QgdXNlIGtmcmVlX3JjdS4gSXQncyB3YXkgY2xlYW5lcjogZmly
ZSBhbmQgZm9yZ2V0Lgo+Pj4+IExvb2tzIG5vdCwgeW91IG5lZWQgcmF0ZSBsaW1pdCB0aGUgZmly
ZSBhcyB5b3UndmUgZmlndXJlZCBvdXQ/Cj4+PiBTZWUgdGhlIGRpc2N1c3Npb24gdGhhdCBmb2xs
b3dlZC4gQmFzaWNhbGx5IG5vLCBpdCdzIGdvb2QgZW5vdWdoCj4+PiBhbHJlYWR5IGFuZCBpcyBv
bmx5IGdvaW5nIHRvIGJlIGJldHRlci4KPj4+Cj4+Pj4gQW5kIGluIGZhY3QsCj4+Pj4gdGhlIHN5
bmNocm9uaXphdGlvbiBpcyBub3QgZXZlbiBuZWVkZWQsIGRvZXMgaXQgaGVscCBpZiBJIGxlYXZl
IGEgY29tbWVudCB0bwo+Pj4+IGV4cGxhaW4/Cj4+PiBMZXQncyB0cnkgdG8gZmlndXJlIGl0IG91
dCBpbiB0aGUgbWFpbCBmaXJzdC4gSSdtIHByZXR0eSBzdXJlIHRoZQo+Pj4gY3VycmVudCBsb2dp
YyBpcyB3cm9uZy4KPj4KPj4gSGVyZSBpcyB3aGF0IHRoZSBjb2RlIHdoYXQgdG8gYWNoaWV2ZToK
Pj4KPj4gLSBUaGUgbWFwIHdhcyBwcm90ZWN0ZWQgYnkgUkNVCj4+Cj4+IC0gV3JpdGVycyBhcmU6
IE1NVSBub3RpZmllciBpbnZhbGlkYXRpb24gY2FsbGJhY2tzLCBmaWxlIG9wZXJhdGlvbnMgKGlv
Y3Rscwo+PiBldGMpLCBtZXRhX3ByZWZldGNoIChkYXRhcGF0aCkKPj4KPj4gLSBSZWFkZXJzIGFy
ZTogbWVtb3J5IGFjY2Vzc29yCj4+Cj4+IFdyaXRlciBhcmUgc3luY2hyb25pemVkIHRocm91Z2gg
bW11X2xvY2suIFJDVSBpcyB1c2VkIHRvIHN5bmNocm9uaXplZAo+PiBiZXR3ZWVuIHdyaXRlcnMg
YW5kIHJlYWRlcnMuCj4+Cj4+IFRoZSBzeW5jaHJvbml6ZV9yY3UoKSBpbiB2aG9zdF9yZXNldF92
cV9tYXBzKCkgd2FzIHVzZWQgdG8gc3luY2hyb25pemVkIGl0Cj4+IHdpdGggcmVhZGVycyAobWVt
b3J5IGFjY2Vzc29ycykgaW4gdGhlIHBhdGggb2YgZmlsZSBvcGVyYXRpb25zLiBCdXQgaW4gdGhp
cwo+PiBjYXNlLCB2cS0+bXV0ZXggd2FzIGFscmVhZHkgaGVsZCwgdGhpcyBtZWFucyBpdCBoYXMg
YmVlbiBzZXJpYWxpemVkIHdpdGgKPj4gbWVtb3J5IGFjY2Vzc29yLiBUaGF0J3Mgd2h5IEkgdGhp
bmsgaXQgY291bGQgYmUgcmVtb3ZlZCBzYWZlbHkuCj4+Cj4+IEFueXRoaW5nIEkgbWlzcyBoZXJl
Pwo+Pgo+IFNvIGludmFsaWRhdGUgY2FsbGJhY2tzIG5lZWQgdG8gcmVzZXQgdGhlIG1hcCwgYW5k
IHRoZXkgZG8KPiBub3QgaGF2ZSB2cSBtdXRleC4gSG93IGNhbiB0aGV5IGRvIHRoaXMgYW5kIGZy
ZWUKPiB0aGUgbWFwIHNhZmVseT8gVGhleSBuZWVkIHN5bmNocm9uaXplX3JjdSBvciBrZnJlZV9y
Y3UgcmlnaHQ/CgoKSW52YWxpZGF0aW9uIGNhbGxiYWNrcyBuZWVkIGJ1dCBmaWxlIG9wZXJhdGlv
bnMgKGUuZyBpb2N0bCkgbm90LgoKCj4KPiBBbmQgSSB3b3JyeSBzb21ld2hhdCB0aGF0IHN5bmNo
cm9uaXplX3JjdSBpbiBhbiBNTVUgbm90aWZpZXIKPiBpcyBhIHByb2JsZW0sIE1NVSBub3RpZmll
cnMgYXJlIHN1cHBvc2VkIHRvIGJlIHF1aWNrOgoKCkxvb2tzIG5vdCwgc2luY2UgaXQgY2FuIGFs
bG93IHRvIGJlIGJsb2NrZWQgYW5kIGxvdHMgb2YgZHJpdmVyIGRlcGVuZHMgCm9uIHRoaXMuIChF
LmcgbW11X25vdGlmaWVyX3JhbmdlX2Jsb2NrYWJsZSgpKS4KCgo+IHRoZXkgYXJlIG9uIGEgcmVh
ZCBzaWRlIGNyaXRpY2FsIHNlY3Rpb24gb2YgU1JDVS4KPgo+IElmIHdlIGNvdWxkIGdldCByaWQg
b2YgUkNVIHRoYXQgd291bGQgYmUgZXZlbiBiZXR0ZXIuCj4KPiBCdXQgbm93IEkgd29uZGVyOgo+
IAlpbnZhbGlkYXRlX3N0YXJ0IGhhcyB0byBtYXJrIHBhZ2UgYXMgZGlydHkKPiAJKHRoaXMgaXMg
d2hhdCBteSBwYXRjaCBhZGRlZCwgY3VycmVudCBjb2RlIG1pc3NlcyB0aGlzKS4KCgpOb3BlLCBj
dXJyZW50IGNvZGUgZGlkIHRoaXMgYnV0IG5vdCB0aGUgY2FzZSB3aGVuIG1hcCBuZWVkIHRvIGJl
IAppbnZhbGlkYXRlZCBpbiB0aGUgdmhvc3QgY29udHJvbCBwYXRoIChpb2N0bCBldGMpLgoKCj4K
PiAJYXQgdGhhdCBwb2ludCBrZXJuZWwgY2FuIGNvbWUgYW5kIG1ha2UgdGhlIHBhZ2UgY2xlYW4g
YWdhaW4uCj4KPiAJQXQgdGhhdCBwb2ludCBWUSBoYW5kbGVycyBjYW4ga2VlcCBhIGNvcHkgb2Yg
dGhlIG1hcAo+IAlhbmQgY2hhbmdlIHRoZSBwYWdlIGFnYWluLgoKCldlIHdpbGwgaW5jcmVhc2Ug
aW52YWxpZGF0ZV9jb3VudCB3aGljaCBwcmV2ZW50IHRoZSBwYWdlIGJlaW5nIHVzZWQgYnkgbWFw
LgoKVGhhbmtzCgoKPgo+Cj4gQXQgdGhpcyBwb2ludCBJIGRvbid0IHVuZGVyc3RhbmQgaG93IHdl
IGNhbiBtYXJrIHBhZ2UgZGlydHkKPiBzYWZlbHkuCj4KPj4+Pj4+IEJ0dywgZm9yIGt2bSBpb2N0
bCBpdCBzdGlsbCB1c2VzIHN5bmNocm9uaXplX3JjdSgpIGluIGt2bV92Y3B1X2lvY3RsKCksCj4+
Pj4+PiAoanVzdCBhIGxpdHRsZSBiaXQgbW9yZSBoYXJkIHRvIHRyaWdnZXIpOgo+Pj4+PiBBRkFJ
SyB0aGVzZSBuZXZlciBydW4gaW4gcmVzcG9uc2UgdG8gZ3Vlc3QgZXZlbnRzLgo+Pj4+PiBTbyB0
aGV5IGNhbiB0YWtlIHZlcnkgbG9uZyBhbmQgZ3Vlc3RzIHN0aWxsIHdvbid0IGNyYXNoLgo+Pj4+
IFdoYXQgaWYgZ3Vlc3QgbWFuYWdlcyB0byBlc2NhcGUgdG8gcWVtdT8KPj4+Pgo+Pj4+IFRoYW5r
cwo+Pj4gVGhlbiBpdCdzIGdvaW5nIHRvIGJlIHNsb3cuIFdoeSBkbyB3ZSBjYXJlPwo+Pj4gV2hh
dCB3ZSBkbyBub3Qgd2FudCBpcyBzeW5jaHJvbml6ZV9yY3UgdGhhdCBndWVzdCBpcyBibG9ja2Vk
IG9uLgo+Pj4KPj4gT2ssIHRoaXMgbG9va3MgbGlrZSB0aGF0IEkgaGF2ZSBzb21lIG1pc3VuZGVy
c3RhbmRpbmcgaGVyZSBvZiB0aGUgcmVhc29uIHdoeQo+PiBzeW5jaHJvbml6ZV9yY3UoKSBpcyBu
b3QgcHJlZmVyYWJsZSBpbiB0aGUgcGF0aCBvZiBpb2N0bC4gQnV0IGluIGt2bSBjYXNlLAo+PiBp
ZiByY3VfZXhwZWRpdGVkIGlzIHNldCwgaXQgY2FuIHRyaWdnZXJzIElQSXMgQUZBSUsuCj4+Cj4+
IFRoYW5rcwo+Pgo+IFllcywgZXhwZWRpdGVkIGlzIG5vdCBnb29kIGZvciBzb21ldGhpbmcgZ3Vl
c3QgY2FuIHRyaWdnZXIuCj4gTGV0J3MganVzdCB1c2Uga2ZyZWVfcmN1IGlmIHdlIGNhbi4gUGF1
bCBzYWlkIGV2ZW4gdGhvdWdoCj4gZG9jdW1lbnRhdGlvbiBzdGlsbCBzYXlzIGl0IG5lZWRzIHRv
IGJlIHJhdGUtbGltaXRlZCwgdGhhdAo+IHBhcnQgaXMgYmFzaWNhbGx5IHN0YWxlIGFuZCB3aWxs
IGdldCB1cGRhdGVkLgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
