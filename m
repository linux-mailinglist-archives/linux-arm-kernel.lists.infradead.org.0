Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1BA1D9E45
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 19:54:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TlmpzA5Lmcd8pfkejLT6u0tNNZ1aShUp4ibvXuYeCKk=; b=cDWIGBskmd9lNg
	ac9PTwN8RFxurRjv00mLW+gBi+nBJ0+2Z826aBbbMv2SDKuV4Xmq9eVShFqne/rZsn+/+avSmt/AX
	ghfJBmVBpI66mXxiDUtJz1upV0aYF0VeoyzWmjaunWoxvgkQnQYgpZyV8o3yOxzgMhsdFhOuAh7eI
	tMKpJxlvIsSG/OdVbzB7OoaxradhW5TDCSjT2hplenAjM6ZDGYffdPsI6PpGqaqe91UYorWB5drOO
	aOCwXiLlSc44fVywWIwQar15+s2Db2Qe2zohOYsoMQOg91TvLwVaN48Uivi5JlBP5AeWIJeE1jPnW
	q+gy3M+sK93DndbB+zJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6RY-0007K5-GB; Tue, 19 May 2020 17:54:20 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6RN-0007Il-Al
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 17:54:10 +0000
Received: by mail-oi1-f196.google.com with SMTP id i22so494323oik.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 10:54:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=oLkdDiI5HFWL8C7O6W36h9N6UH3412FNuY/4J1ySuKI=;
 b=rT2AY7nay9pp7qUI6pbynX/5Ck665DZkSK5yAFmiZxx462SXyZ2I4mQcnaVjK1znef
 jPLbJbIL6TOFgJmN/B4RqwN9BaXhXOOecyPo8A7v2GvRUpHiI5Hm1+pCkJv8vmMJVfI+
 MCSsD/YaCtBlyOr51JIJmB1g6LRpxPDbLVgZhQylY3cSzs50t9L+NTi0NEIPHmlPtK2v
 +Wz1XCGIWdDTEmLRBaX7OVhwBkxXkDjW7C4IzdGHS9c+YypoSPX0w3a9mXj1y8lwN8rr
 cRK1CKKDCVu/uLUXv7ymL5aBop/uNJKT/SosBtBhBBIRQRaD8jzR0ix9a2WEK0DLiQXf
 jggA==
X-Gm-Message-State: AOAM531GDgmrTwJQjUHQ0D0t9y+l2qyExhGmTv4ZO+NYesT1nMLJx2Zi
 ap/W72yqRf9BnmE6CmxLk0iyrtB4hQE6lOeN/AE=
X-Google-Smtp-Source: ABdhPJyQZS1Xr8gnb53yM7SiKuoBHfAVWDm0sXFCpKkYsNKzAITxSaP4lvBa4TN4o5V50bKrrF/ZMaRIevhXPrGZPZs=
X-Received: by 2002:aca:4254:: with SMTP id p81mr454025oia.68.1589910847813;
 Tue, 19 May 2020 10:54:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200501164543.24423-1-james.morse@arm.com>
 <20200501164543.24423-2-james.morse@arm.com>
 <49686237.p6yG9EJavU@kreacher>
 <20200518125828.e4e3973c743556e976c5ee65@linux-foundation.org>
 <20200519031511.GA31023@hori.linux.bs1.fc.nec.co.jp>
In-Reply-To: <20200519031511.GA31023@hori.linux.bs1.fc.nec.co.jp>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 19 May 2020 19:53:56 +0200
Message-ID: <CAJZ5v0g0295WMiNUzwnJE+SuCrEt2FOCor5QNdUFEyfv3pTpcQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] mm/memory-failure: Add memory_failure_queue_kick()
To: =?UTF-8?B?SE9SSUdVQ0hJIE5BT1lBKOWggOWPoyDnm7TkuZ8p?=
 <naoya.horiguchi@nec.com>, James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_105409_374760_1020477A 
X-CRM114-Status: GOOD (  27.08  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rjwysocki[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Tony Luck <tony.luck@intel.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Xie XiuQi <xiexiuqi@huawei.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Tyler Baicar <tyler@amperecomputing.com>, Borislav Petkov <bp@alien8.de>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMTksIDIwMjAgYXQgNToxNSBBTSBIT1JJR1VDSEkgTkFPWUEo5aCA5Y+j44CA
55u05LmfKQo8bmFveWEuaG9yaWd1Y2hpQG5lYy5jb20+IHdyb3RlOgo+Cj4gT24gTW9uLCBNYXkg
MTgsIDIwMjAgYXQgMTI6NTg6MjhQTSAtMDcwMCwgQW5kcmV3IE1vcnRvbiB3cm90ZToKPiA+IE9u
IE1vbiwgMTggTWF5IDIwMjAgMTQ6NDU6MDUgKzAyMDAgIlJhZmFlbCBKLiBXeXNvY2tpIiA8cmp3
QHJqd3lzb2NraS5uZXQ+IHdyb3RlOgo+ID4KPiA+ID4gT24gRnJpZGF5LCBNYXkgMSwgMjAyMCA2
OjQ1OjQxIFBNIENFU1QgSmFtZXMgTW9yc2Ugd3JvdGU6Cj4gPiA+ID4gVGhlIEdIRVMgY29kZSBj
YWxscyBtZW1vcnlfZmFpbHVyZV9xdWV1ZSgpIGZyb20gSVJRIGNvbnRleHQgdG8gc2NoZWR1bGUK
PiA+ID4gPiB3b3JrIG9uIHRoZSBjdXJyZW50IENQVSBzbyB0aGF0IG1lbW9yeV9mYWlsdXJlKCkg
Y2FuIHNsZWVwLgo+ID4gPiA+Cj4gPiA+ID4gRm9yIHN5bmNocm9ub3VzIG1lbW9yeSBlcnJvcnMg
dGhlIGFyY2ggY29kZSBuZWVkcyB0byBrbm93IGFueSBzaWduYWxzCj4gPiA+ID4gdGhhdCBtZW1v
cnlfZmFpbHVyZSgpIHdpbGwgdHJpZ2dlciBhcmUgcGVuZGluZyBiZWZvcmUgaXQgcmV0dXJucyB0
bwo+ID4gPiA+IHVzZXItc3BhY2UsIHBvc3NpYmx5IHdoZW4gZXhpdGluZyBmcm9tIHRoZSBJUlEu
Cj4gPiA+ID4KPiA+ID4gPiBBZGQgYSBoZWxwZXIgdG8ga2ljayB0aGUgbWVtb3J5IGZhaWx1cmUg
cXVldWUsIHRvIGVuc3VyZSB0aGUgc2NoZWR1bGVkCj4gPiA+ID4gd29yayBoYXMgaGFwcGVuZWQu
IFRoaXMgaGFzIHRvIGJlIGNhbGxlZCBmcm9tIHByb2Nlc3MgY29udGV4dCwgc28gbWF5Cj4gPiA+
ID4gaGF2ZSBiZWVuIG1pZ3JhdGVkIGZyb20gdGhlIG9yaWdpbmFsIGNwdS4gUGFzcyB0aGUgY3B1
IHRoZSB3b3JrIHdhcwo+ID4gPiA+IHF1ZXVlZCBvbi4KPiA+ID4gPgo+ID4gPiA+IENoYW5nZSBt
ZW1vcnlfZmFpbHVyZV93b3JrX2Z1bmMoKSB0byBwZXJtaXQgYmVpbmcgY2FsbGVkIG9uIHRoZSAn
d3JvbmcnCj4gPiA+ID4gY3B1Lgo+ID4gPiA+Cj4gPiA+ID4gLS0tIGEvaW5jbHVkZS9saW51eC9t
bS5oCj4gPiA+ID4gKysrIGIvaW5jbHVkZS9saW51eC9tbS5oCj4gPiA+ID4gQEAgLTMwMTIsNiAr
MzAxMiw3IEBAIGVudW0gbWZfZmxhZ3Mgewo+ID4gPiA+ICB9Owo+ID4gPiA+ICBleHRlcm4gaW50
IG1lbW9yeV9mYWlsdXJlKHVuc2lnbmVkIGxvbmcgcGZuLCBpbnQgZmxhZ3MpOwo+ID4gPiA+ICBl
eHRlcm4gdm9pZCBtZW1vcnlfZmFpbHVyZV9xdWV1ZSh1bnNpZ25lZCBsb25nIHBmbiwgaW50IGZs
YWdzKTsKPiA+ID4gPiArZXh0ZXJuIHZvaWQgbWVtb3J5X2ZhaWx1cmVfcXVldWVfa2ljayhpbnQg
Y3B1KTsKPiA+ID4gPiAgZXh0ZXJuIGludCB1bnBvaXNvbl9tZW1vcnkodW5zaWduZWQgbG9uZyBw
Zm4pOwo+ID4gPiA+ICBleHRlcm4gaW50IGdldF9od3BvaXNvbl9wYWdlKHN0cnVjdCBwYWdlICpw
YWdlKTsKPiA+ID4gPiAgI2RlZmluZSBwdXRfaHdwb2lzb25fcGFnZShwYWdlKSAgcHV0X3BhZ2Uo
cGFnZSkKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvbW0vbWVtb3J5LWZhaWx1cmUuYyBiL21tL21lbW9y
eS1mYWlsdXJlLmMKPiA+ID4gPiBpbmRleCBhOTYzNjRiZThhYjQuLmM0YWZiNDA3YmYwZiAxMDA2
NDQKPiA+ID4gPiAtLS0gYS9tbS9tZW1vcnktZmFpbHVyZS5jCj4gPiA+ID4gKysrIGIvbW0vbWVt
b3J5LWZhaWx1cmUuYwo+ID4gPiA+IEBAIC0xNDkzLDcgKzE0OTMsNyBAQCBzdGF0aWMgdm9pZCBt
ZW1vcnlfZmFpbHVyZV93b3JrX2Z1bmMoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+ID4gPiA+
ICAgdW5zaWduZWQgbG9uZyBwcm9jX2ZsYWdzOwo+ID4gPiA+ICAgaW50IGdvdHRlbjsKPiA+ID4g
Pgo+ID4gPiA+IC0gbWZfY3B1ID0gdGhpc19jcHVfcHRyKCZtZW1vcnlfZmFpbHVyZV9jcHUpOwo+
ID4gPiA+ICsgbWZfY3B1ID0gY29udGFpbmVyX29mKHdvcmssIHN0cnVjdCBtZW1vcnlfZmFpbHVy
ZV9jcHUsIHdvcmspOwo+ID4gPiA+ICAgZm9yICg7Oykgewo+ID4gPiA+ICAgICAgICAgICBzcGlu
X2xvY2tfaXJxc2F2ZSgmbWZfY3B1LT5sb2NrLCBwcm9jX2ZsYWdzKTsKPiA+ID4gPiAgICAgICAg
ICAgZ290dGVuID0ga2ZpZm9fZ2V0KCZtZl9jcHUtPmZpZm8sICZlbnRyeSk7Cj4gPiA+ID4gQEAg
LTE1MDcsNiArMTUwNywxOSBAQCBzdGF0aWMgdm9pZCBtZW1vcnlfZmFpbHVyZV93b3JrX2Z1bmMo
c3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+ID4gPiA+ICAgfQo+ID4gPiA+ICB9Cj4gPiA+ID4K
PiA+ID4gPiArLyoKPiA+ID4gPiArICogUHJvY2VzcyBtZW1vcnlfZmFpbHVyZSB3b3JrIHF1ZXVl
ZCBvbiB0aGUgc3BlY2lmaWVkIENQVS4KPiA+ID4gPiArICogVXNlZCB0byBhdm9pZCByZXR1cm4t
dG8tdXNlcnNwYWNlIHJhY2luZyB3aXRoIHRoZSBtZW1vcnlfZmFpbHVyZSB3b3JrcXVldWUuCj4g
PiA+ID4gKyAqLwo+ID4gPiA+ICt2b2lkIG1lbW9yeV9mYWlsdXJlX3F1ZXVlX2tpY2soaW50IGNw
dSkKPiA+ID4gPiArewo+ID4gPiA+ICsgc3RydWN0IG1lbW9yeV9mYWlsdXJlX2NwdSAqbWZfY3B1
Owo+ID4gPiA+ICsKPiA+ID4gPiArIG1mX2NwdSA9ICZwZXJfY3B1KG1lbW9yeV9mYWlsdXJlX2Nw
dSwgY3B1KTsKPiA+ID4gPiArIGNhbmNlbF93b3JrX3N5bmMoJm1mX2NwdS0+d29yayk7Cj4gPiA+
ID4gKyBtZW1vcnlfZmFpbHVyZV93b3JrX2Z1bmMoJm1mX2NwdS0+d29yayk7Cj4gPiA+ID4gK30K
PiA+ID4gPiArCj4gPiA+ID4gIHN0YXRpYyBpbnQgX19pbml0IG1lbW9yeV9mYWlsdXJlX2luaXQo
dm9pZCkKPiA+ID4gPiAgewo+ID4gPiA+ICAgc3RydWN0IG1lbW9yeV9mYWlsdXJlX2NwdSAqbWZf
Y3B1Owo+ID4gPiA+Cj4gPiA+Cj4gPiA+IEkgY291bGQgYXBwbHkgdGhpcyBwcm92aWRlZCBhbiBB
Q0sgZnJvbSB0aGUgbW0gcGVvcGxlLgo+ID4gPgo+ID4KPiA+IE5hb3lhIEhvcmlndWNoaSBpcyB0
aGUgbWVtb3J5LWZhaWx1cmUuYyBwZXJzb24uICBBIHJldmlldyB3b3VsZCBiZQo+ID4gYXBwcmVj
aWF0ZWQgcGxlYXNlPwo+ID4KPiA+IEknbSBzdHJ1Z2dsaW5nIHdpdGggaXQgYSBiaXQuICBtZW1v
cnlfZmFpbHVyZV9xdWV1ZV9raWNrKCkgc2hvdWxkIGJlCj4gPiBjYWxsZWQgb24gdGhlIGNwdSB3
aGljaCBpcyBpZGVudGlmaWVkIGJ5IGFyZyBgY3B1JywgeWVzPwo+ID4gbWVtb3J5X2ZhaWx1cmVf
d29ya19mdW5jKCkgYXBwZWFycyB0byBhc3N1bWUgdGhpcy4KPiA+Cj4gPiBJZiB0aGF0J3Mgcmln
aHQgdGhlbiBhKSB3aHkgYm90aGVyIHBhc3NpbmcgaW4gdGhlIGBjcHUnIGFyZz8gIGFuZCBiKQo+
ID4gd2hhdCBrZWVwcyB0aGlzIHRocmVhZCBwaW5uZWQgdG8gdGhhdCBDUFU/ICBjYW5jZWxfd29y
a19zeW5jKCkgY2FuCj4gPiBzY2hlZHVsZS4KPgo+IElmIEkgcmVhZCBjb3JyZWN0bHksIG1lbW9y
eV9mYWlsdXJlIHdvcmsgaXMgcXVldWUgb24gdGhlIENQVSBvbiB3aGljaCB0aGUKPiB1c2VyIHBy
b2Nlc3MgcmFuIHdoZW4gaXQgdG91Y2hlZCB0aGUgY29ycnVwdGVkIG1lbW9yeSwgYW5kIHRoZSBw
cm9jZXNzIGNhbgo+IGJlIHNjaGVkdWxlZCBvbiBhbm90aGVyIENQVSB3aGVuIHRoZSBrZXJuZWwg
cmV0dXJuZWQgYmFjayB0byB1c2Vyc3BhY2UgYWZ0ZXIKPiBoYW5kbGluZyB0aGUgR0hFUyBldmVu
dC4gIFNvIHdlIG5lZWQgdG8gcmVtZW1iZXIgd2hlcmUgdGhlIG1lbW9yeV9mYWlsdXJlCj4gZXZl
bnQgaXMgcXVldWVkIHRvIGZsdXNoIHByb3BlciB3b3JrIHF1ZXVlLiAgU28gSSBmZWVsIHRoYXQg
dGhpcyBwcm9wZXJseQo+IGltcGxlbWVudHMgaXQuCj4KPiBDb25zaWRlcmluZyB0aGUgZWZmZWN0
IHRvIHRoZSBvdGhlciBjYWxsZXIsIGN1cnJlbnRseSBtZW1vcnlfZmFpbHVyZV9xdWV1ZSgpCj4g
aGFzIDIgY2FsbGVycywgZ2hlc19oYW5kbGVfbWVtb3J5X2ZhaWx1cmUoKSBhbmQgY2VjX2FkZF9l
bGVtKCkuIFRoZSBmb3JtZXIKPiBpcyB3aGF0IHdlIHRyeSB0byBjaGFuZ2Ugbm93LiAgQW5kIHRo
ZSBsYXR0ZXIgaXMgdG8gZXhlY3V0ZSBzb2Z0IG9mZmxpbmUKPiAod2hpY2ggaXMgcmVsYXRlZCB0
byBjb3JyZWN0ZWQgbm9uLWZhdGFsIGVycm9ycyksIHNvIHRoYXQncyBub3QgYWZmZWN0ZWQgYnkK
PiB0aGUgcmVwb3J0ZWQgaXNzdWUuICBTbyBJIGRvbid0IHRoaW5rIHRoYXQgdGhpcyBjaGFuZ2Ug
YnJlYWtzIHRoZSBvdGhlcgo+IGNhbGxlci4KPgo+IFNvIEknbSBmaW5lIHdpdGggdGhlIHN1Z2dl
c3RlZCBjaGFuZ2UuCj4KPiBBY2tlZC1ieTogTmFveWEgSG9yaWd1Y2hpIDxuYW95YS5ob3JpZ3Vj
aGlAbmVjLmNvbT4KCk9LLCB0aGFua3MhCgpTbyBiZWNhdXNlIHBhdGNoIFsxLzNdIGhhcyBiZWVu
IEFDS2VkIGFscmVhZHksIEknbSBhcHBseWluZyB0aGlzCnNlcmllcyBhcyA1LjggbWF0ZXJpYWwu
CgpUaGFua3MgZXZlcnlvbmUhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
