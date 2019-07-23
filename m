Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1688E7104B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 06:02:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MDmgernUGLPUuVhmvjZ+6dFFO8hNIcCqV1xBuG7Ezp4=; b=IkWBigLbcc6yrTndiIfYtCzda
	KRJX/A3hKtqxhAx/fQMCTkREljLKwwGfEWeHIYY2VhVOboSwJXJ++O5qFg6bhUgXiEsl5dB0wJq76
	9Y8LLy05AMUVTUCw6qmNFVx4ItgpCDoFKCB457c7cc7SUg1B+LNhvvAVPi67IblICRWirNgqCq1xL
	7EOv7ypJ4dVkSTuLUfR0rLebjA99GkajGjaHO/l25yhCm1QGZ+WoBtaHOnX1EgjVIXQB1NHQYM3bQ
	eP4q47+TD3n4EHvFHe6C4XAzBrYVt7aY9+zMhWNTPSCQcKTVod8cJ8T3G0vaJH3fGPM5bts5XtNYj
	86CQmhsXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpm0J-00072l-R9; Tue, 23 Jul 2019 04:02:20 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hplzz-00072C-CI
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 04:02:02 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9871C308FBB1;
 Tue, 23 Jul 2019 04:01:58 +0000 (UTC)
Received: from [10.72.12.57] (ovpn-12-57.pek2.redhat.com [10.72.12.57])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D8ABF60BEC;
 Tue, 23 Jul 2019 04:01:42 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <20190721081447-mutt-send-email-mst@kernel.org>
 <85dd00e2-37a6-72b7-5d5a-8bf46a3526cf@redhat.com>
 <20190722040230-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <4bd2ff78-6871-55f2-44dc-0982ffef3337@redhat.com>
Date: Tue, 23 Jul 2019 12:01:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190722040230-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Tue, 23 Jul 2019 04:01:59 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_210159_844485_9763C68C 
X-CRM114-Status: GOOD (  26.07  )
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

Ck9uIDIwMTkvNy8yMiDkuIvljYg0OjA4LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24g
TW9uLCBKdWwgMjIsIDIwMTkgYXQgMDE6MjQ6MjRQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90ZToK
Pj4gT24gMjAxOS83LzIxIOS4i+WNiDg6MTgsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4+
IE9uIFN1biwgSnVsIDIxLCAyMDE5IGF0IDA2OjAyOjUyQU0gLTA0MDAsIE1pY2hhZWwgUy4gVHNp
cmtpbiB3cm90ZToKPj4+PiBPbiBTYXQsIEp1bCAyMCwgMjAxOSBhdCAwMzowODowMEFNIC0wNzAw
LCBzeXpib3Qgd3JvdGU6Cj4+Pj4+IHN5emJvdCBoYXMgYmlzZWN0ZWQgdGhpcyBidWcgdG86Cj4+
Pj4+Cj4+Pj4+IGNvbW1pdCA3ZjQ2NjAzMmRjOWU1YTYxMjE3ZjIyZWEzNGIyZGY5MzI3ODZiYmZj
Cj4+Pj4+IEF1dGhvcjogSmFzb24gV2FuZzxqYXNvd2FuZ0ByZWRoYXQuY29tPgo+Pj4+PiBEYXRl
OiAgIEZyaSBNYXkgMjQgMDg6MTI6MTggMjAxOSArMDAwMAo+Pj4+Pgo+Pj4+PiAgICAgICB2aG9z
dDogYWNjZXNzIHZxIG1ldGFkYXRhIHRocm91Z2gga2VybmVsIHZpcnR1YWwgYWRkcmVzcwo+Pj4+
Pgo+Pj4+PiBiaXNlY3Rpb24gbG9nOmh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvYmlz
ZWN0LnR4dD94PTE0OWE4YTIwNjAwMDAwCj4+Pj4+IHN0YXJ0IGNvbW1pdDogICA2ZDIxYTQxYiBB
ZGQgbGludXgtbmV4dCBzcGVjaWZpYyBmaWxlcyBmb3IgMjAxOTA3MTgKPj4+Pj4gZ2l0IHRyZWU6
ICAgICAgIGxpbnV4LW5leHQKPj4+Pj4gZmluYWwgY3Jhc2g6aHR0cHM6Ly9zeXprYWxsZXIuYXBw
c3BvdC5jb20veC9yZXBvcnQudHh0P3g9MTY5YThhMjA2MDAwMDAKPj4+Pj4gY29uc29sZSBvdXRw
dXQ6aHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9sb2cudHh0P3g9MTI5YThhMjA2MDAw
MDAKPj4+Pj4ga2VybmVsIGNvbmZpZzpodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94Ly5j
b25maWc/eD0zNDMwYTE1MWUxNDUyMzMxCj4+Pj4+IGRhc2hib2FyZCBsaW5rOmh0dHBzOi8vc3l6
a2FsbGVyLmFwcHNwb3QuY29tL2J1Zz9leHRpZD1lNTgxMTJkNzFmNzcxMTNkZGI3Ygo+Pj4+PiBz
eXogcmVwcm86aHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9yZXByby5zeXo/eD0xMDEz
OWU2ODYwMDAwMAo+Pj4+Pgo+Pj4+PiBSZXBvcnRlZC1ieTpzeXpib3QrZTU4MTEyZDcxZjc3MTEz
ZGRiN2JAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQo+Pj4+PiBGaXhlczogN2Y0NjYwMzJkYzll
ICgidmhvc3Q6IGFjY2VzcyB2cSBtZXRhZGF0YSB0aHJvdWdoIGtlcm5lbCB2aXJ0dWFsCj4+Pj4+
IGFkZHJlc3MiKQo+Pj4+Pgo+Pj4+PiBGb3IgaW5mb3JtYXRpb24gYWJvdXQgYmlzZWN0aW9uIHBy
b2Nlc3Mgc2VlOmh0dHBzOi8vZ29vLmdsL3Rwc21FSiNiaXNlY3Rpb24KPj4+PiBPSyBJIHBva2Vk
IGF0IHRoaXMgZm9yIGEgYml0LCBJIHNlZSBzZXZlcmFsIHRoaW5ncyB0aGF0Cj4+Pj4gd2UgbmVl
ZCB0byBmaXgsIHRob3VnaCBJJ20gbm90IHlldCBzdXJlIGl0J3MgdGhlIHJlYXNvbiBmb3IKPj4+
PiB0aGUgZmFpbHVyZXM6Cj4+Pj4KPj4+Pgo+Pj4+IDEuIG1tdV9ub3RpZmllcl9yZWdpc3RlciBz
aG91bGRuJ3QgYmUgY2FsbGVkIGZyb20gdmhvc3RfdnJpbmdfc2V0X251bV9hZGRyCj4+Pj4gICAg
ICBUaGF0J3MganVzdCBhIGJhZCBoYWNrLCBpbiBwYXJ0aWN1bGFyIEkgZG9uJ3QgdGhpbmsgZGV2
aWNlCj4+Pj4gICAgICBtdXRleCBpcyB0YWtlbiBhbmQgc28gcG9raW5nIGF0IHR3byBWUXMgd2ls
bCBjb3JydXB0Cj4+Pj4gICAgICBtZW1vcnkuCj4+Pj4gICAgICBTbyB3aGF0IHRvIGRvPyBIb3cg
YWJvdXQgYSBwZXIgdnEgbm90aWZpZXI/Cj4+Pj4gICAgICBPZiBjb3Vyc2Ugd2UgYWxzbyBoYXZl
IHN5bmNocm9uaXplX3JjdQo+Pj4+ICAgICAgaW4gdGhlIG5vdGlmaWVyIHdoaWNoIGlzIHNsb3cg
YW5kIGlzIG5vdyBnb2luZyB0byBiZSBjYWxsZWQgdHdpY2UuCj4+Pj4gICAgICBJIHRoaW5rIGNh
bGxfcmN1IHdvdWxkIGJlIG1vcmUgYXBwcm9wcmlhdGUgaGVyZS4KPj4+PiAgICAgIFdlIHRoZW4g
bmVlZCByY3VfYmFycmllciBvbiBtb2R1bGUgdW5sb2FkLgo+Pj4+ICAgICAgT1RPSCBpZiB3ZSBt
YWtlIHBhZ2VzIGxpbmVhciB3aXRoIG1hcCB0aGVuIHdlIGFyZSBnb29kCj4+Pj4gICAgICB3aXRo
IGtmcmVlX3JjdSB3aGljaCBpcyBldmVuIG5pY2VyLgo+Pj4+Cj4+Pj4gMi4gRG9lc24ndCBtYXAg
bGVhayBhZnRlciB2aG9zdF9tYXBfdW5wcmVmZXRjaD8KPj4+PiAgICAgIEFuZCB3aHkgZG9lcyBp
dCBwb2tlIGF0IGNvbnRlbnRzIG9mIHRoZSBtYXA/Cj4+Pj4gICAgICBObyBvbmUgc2hvdWxkIHVz
ZSBpdCByaWdodD8KPj4+Pgo+Pj4+IDMuIG5vdGlmaWVyIHVucmVnaXN0ZXIgaGFwcGVucyBsYXN0
IGluIHZob3N0X2Rldl9jbGVhbnVwLAo+Pj4+ICAgICAgYnV0IHJlZ2lzdGVyIGhhcHBlbnMgZmly
c3QuIFRoaXMgbG9va3Mgd3JvbmcgdG8gbWUuCj4+Pj4KPj4+PiA0LiBPSyBzbyB3ZSB1c2UgdGhl
IGludmFsaWRhdGUgY291bnQgdG8gdHJ5IGFuZCBkZXRlY3QgdGhhdAo+Pj4+ICAgICAgc29tZSBp
bnZhbGlkYXRlIGlzIGluIHByb2dyZXNzLgo+Pj4+ICAgICAgSSBhbSBub3QgMTAwJSBzdXJlIHdo
eSBkbyB3ZSBjYXJlLgo+Pj4+ICAgICAgQXNzdW1pbmcgd2UgZG8sIHVhZGRyIGNhbiBjaGFuZ2Ug
YmV0d2VlbiBzdGFydCBhbmQgZW5kCj4+Pj4gICAgICBhbmQgdGhlbiB0aGUgY291bnRlciBjYW4g
Z2V0IG5lZ2F0aXZlLCBvciBnZW5lcmFsbHkKPj4+PiAgICAgIG91dCBvZiBzeW5jLgo+Pj4+Cj4+
Pj4gU28gd2hhdCB0byBkbyBhYm91dCBhbGwgdGhpcz8KPj4+PiBJIGFtIGluY2xpbmVkIHRvIHNh
eSBsZXQncyBqdXN0IGRyb3AgdGhlIHVhZGRyIG9wdGltaXphdGlvbgo+Pj4+IGZvciBub3cuIEUu
Zy4ga3ZtIGludmFsaWRhdGVzIHVuY29uZGl0aW9uYWxseS4KPj4+PiAzIHNob3VsZCBiZSBmaXhl
ZCBpbmRlcGVuZGVudGx5Lgo+Pj4gQWJvdmUgaW1wbGVtZW50cyB0aGlzIGJ1dCBpcyBvbmx5IGJ1
aWxkLXRlc3RlZC4KPj4+IEphc29uLCBwbHMgdGFrZSBhIGxvb2suIElmIHlvdSBsaWtlIHRoZSBh
cHByb2FjaCBmZWVsCj4+PiBmcmVlIHRvIHRha2UgaXQgZnJvbSBoZXJlLgo+Pj4KPj4+IE9uZSB0
aGluZyB0aGUgYmVsb3cgZG9lcyBub3QgaGF2ZSBpcyBhbnkga2luZCBvZiByYXRlLWxpbWl0aW5n
Lgo+Pj4gR2l2ZW4gaXQncyBzbyBlYXN5IHRvIHJlc3RhcnQgSSdtIHRoaW5raW5nIGl0IG1ha2Vz
IHNlbnNlCj4+PiB0byBhZGQgYSBnZW5lcmljIGluZnJhc3RydWN0dXJlIGZvciB0aGlzLgo+Pj4g
Q2FuIGJlIGEgc2VwYXJhdGUgcGF0Y2ggSSBndWVzcy4KPj4KPj4gSSBkb24ndCBnZXQgd2h5IG11
c3QgdXNlIGtmcmVlX3JjdSgpIGluc3RlYWQgb2Ygc3luY2hyb25pemVfcmN1KCkgaGVyZS4KPiBz
eW5jaHJvbml6ZV9yY3UgaGFzIHZlcnkgaGlnaCBsYXRlbmN5IG9uIGJ1c3kgc3lzdGVtcy4KPiBJ
dCBpcyBub3Qgc29tZXRoaW5nIHRoYXQgc2hvdWxkIGJlIHVzZWQgb24gYSBzeXNjYWxsIHBhdGgu
Cj4gS1ZNIGhhZCB0byBzd2l0Y2ggdG8gU1JDVSB0byBrZWVwIGl0IHNhbmUuCj4gT3RoZXJ3aXNl
IG9uZSBndWVzdCBjYW4gdHJpdmlhbGx5IHNsb3cgZG93biBhbm90aGVyIG9uZS4KCgpJIHRoaW5r
IHlvdSBtZWFuIHRoZSBzeW5jaHJvbml6ZV9yY3VfZXhwZWRpdGVkKCk/IFJldGhpbmsgb2YgdGhl
IGNvZGUsIAp0aGUgc3luY2hyb25pemVfcmN1KCkgaW4gaW9jdGwoKSBjb3VsZCBiZSByZW1vdmVk
LCBzaW5jZSBpdCB3YXMgCnNlcmlhbGl6ZWQgd2l0aCBtZW1vcnkgYWNjZXNzb3IuCgpCdHcsIGZv
ciBrdm0gaW9jdGwgaXQgc3RpbGwgdXNlcyBzeW5jaHJvbml6ZV9yY3UoKSBpbiBrdm1fdmNwdV9p
b2N0bCgpLCAKKGp1c3QgYSBsaXR0bGUgYml0IG1vcmUgaGFyZCB0byB0cmlnZ2VyKToKCgogwqDC
oMKgIGNhc2UgS1ZNX1JVTjogewouLi4KIMKgwqDCoCDCoMKgwqAgaWYgKHVubGlrZWx5KG9sZHBp
ZCAhPSB0YXNrX3BpZChjdXJyZW50KSkpIHsKIMKgwqDCoCDCoMKgwqAgwqDCoMKgIC8qIFRoZSB0
aHJlYWQgcnVubmluZyB0aGlzIFZDUFUgY2hhbmdlZC4gKi8KIMKgwqDCoCDCoMKgwqAgwqDCoMKg
IHN0cnVjdCBwaWQgKm5ld3BpZDsKCiDCoMKgwqAgwqDCoMKgIMKgwqDCoCByID0ga3ZtX2FyY2hf
dmNwdV9ydW5fcGlkX2NoYW5nZSh2Y3B1KTsKIMKgwqDCoCDCoMKgwqAgwqDCoMKgIGlmIChyKQog
wqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIGJyZWFrOwoKIMKgwqDCoCDCoMKgwqAgwqDCoMKg
IG5ld3BpZCA9IGdldF90YXNrX3BpZChjdXJyZW50LCBQSURUWVBFX1BJRCk7CiDCoMKgwqAgwqDC
oMKgIMKgwqDCoCByY3VfYXNzaWduX3BvaW50ZXIodmNwdS0+cGlkLCBuZXdwaWQpOwogwqDCoMKg
IMKgwqDCoCDCoMKgwqAgaWYgKG9sZHBpZCkKIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgwqDCoCBz
eW5jaHJvbml6ZV9yY3UoKTsKIMKgwqDCoCDCoMKgwqAgwqDCoMKgIHB1dF9waWQob2xkcGlkKTsK
IMKgwqDCoCDCoMKgwqAgfQouLi4KIMKgwqDCoCDCoMKgwqAgYnJlYWs7CgoKPgo+Pj4gU2lnbmVk
LW9mZi1ieTogTWljaGFlbCBTLiBUc2lya2luPG1zdEByZWRoYXQuY29tPgo+Pgo+PiBMZXQgbWUg
dHJ5IHRvIGZpZ3VyZSBvdXQgdGhlIHJvb3QgY2F1c2UgdGhlbiBkZWNpZGUgd2hldGhlciBvciBu
b3QgdG8gZ28gZm9yCj4+IHRoaXMgd2F5Lgo+Pgo+PiBUaGFua3MKPiBUaGUgcm9vdCBjYXVzZSBv
ZiB0aGUgY3Jhc2ggaXMgcmVsZXZhbnQsIGJ1dCB3ZSBzdGlsbCBuZWVkCj4gdG8gZml4IGlzc3Vl
cyAxLTQuCj4KPiBNb3JlIGlzc3VlcyAobXkgcGF0Y2ggdHJpZXMgdG8gZml4IHRoZW0gdG9vKToK
Pgo+IDUuIHBhZ2Ugbm90IGRpcnRpZWQgd2hlbiBtYXBwaW5ncyBhcmUgdG9ybiBkb3duIG91dHNp
ZGUKPiAgICAgb2YgaW52YWxpZGF0ZSBjYWxsYmFjawoKClllcy4KCgo+Cj4gNi4gcG90ZW50aWFs
IGNyb3NzLVZNIERPUyBieSBvbmUgZ3Vlc3Qga2VlcGluZyBzeXN0ZW0gYnVzeQo+ICAgICBhbmQg
aW5jcmVhc2luZyBzeW5jaHJvbml6ZV9yY3UgbGF0ZW5jeSB0byB0aGUgcG9pbnQgd2hlcmUKPiAg
ICAgYW5vdGhlciBndWVzdCBzdGFycyB0aW1pbmcgb3V0IGFuZCBjcmFzaGVzCj4KPgo+CgpUaGlz
IHdpbGwgYmUgYWRkcmVzc2VkIGFmdGVyIEkgcmVtb3ZlIHRoZSBzeW5jaHJvbml6ZV9yY3UoKSBm
cm9tIGlvY3RsIHBhdGguCgpUaGFua3MKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
