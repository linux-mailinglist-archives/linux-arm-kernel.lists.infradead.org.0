Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FBD71044
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 05:56:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=klpcz6LPauBZUChWwx8l8UldW2GuKvUzpBcc0bV9Qis=; b=k7df5SSkQZrRS05gKTCPINAJl
	yVRk4yY+Xm+jWlIIdWmQT19RhaYqb7pNryij+Mab2+lOUrAbLq2FaIXHG/xBS8MQuTiObW5Aysx8V
	vqA02ysiwSx1PDDWAuoPDuodTz2mZ1FS26ykQZXrf7Dpiq9lx47yemOxYKLx18/OX6Ej4fTOFWEhp
	kqkJLn1OwntNpXlEHKdqnvwy/Z8Bmd7Qc9Gta7jr8S9GPpP4G60z9D8bdABFVXjtHKrdnzY1y57G1
	6xMqEytKLxZkxuMcy7rmMswSjo9lVaAyNRn8wbkipvqJ+kHhgJJAl8sxTXesiblfyPySa9VfCtdel
	9k1RghsLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpluS-0004YF-Q2; Tue, 23 Jul 2019 03:56:16 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hplu1-0004XH-2Z
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 03:55:50 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 461C43082E51;
 Tue, 23 Jul 2019 03:55:47 +0000 (UTC)
Received: from [10.72.12.57] (ovpn-12-57.pek2.redhat.com [10.72.12.57])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C02205D9C8;
 Tue, 23 Jul 2019 03:55:29 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <75c43998-3a1c-676f-99ff-3d04663c3fcc@redhat.com>
 <20190722035657-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <cfcd330d-5f4a-835a-69f7-c342d5d0d52d@redhat.com>
Date: Tue, 23 Jul 2019 11:55:28 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190722035657-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Tue, 23 Jul 2019 03:55:47 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_205549_172827_DE7B42DA 
X-CRM114-Status: GOOD (  17.74  )
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

Ck9uIDIwMTkvNy8yMiDkuIvljYg0OjAyLCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24g
TW9uLCBKdWwgMjIsIDIwMTkgYXQgMDE6MjE6NTlQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90ZToK
Pj4gT24gMjAxOS83LzIxIOS4i+WNiDY6MDIsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4+
IE9uIFNhdCwgSnVsIDIwLCAyMDE5IGF0IDAzOjA4OjAwQU0gLTA3MDAsIHN5emJvdCB3cm90ZToK
Pj4+PiBzeXpib3QgaGFzIGJpc2VjdGVkIHRoaXMgYnVnIHRvOgo+Pj4+Cj4+Pj4gY29tbWl0IDdm
NDY2MDMyZGM5ZTVhNjEyMTdmMjJlYTM0YjJkZjkzMjc4NmJiZmMKPj4+PiBBdXRob3I6IEphc29u
IFdhbmcgPGphc293YW5nQHJlZGhhdC5jb20+Cj4+Pj4gRGF0ZTogICBGcmkgTWF5IDI0IDA4OjEy
OjE4IDIwMTkgKzAwMDAKPj4+Pgo+Pj4+ICAgICAgIHZob3N0OiBhY2Nlc3MgdnEgbWV0YWRhdGEg
dGhyb3VnaCBrZXJuZWwgdmlydHVhbCBhZGRyZXNzCj4+Pj4KPj4+PiBiaXNlY3Rpb24gbG9nOiAg
aHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9iaXNlY3QudHh0P3g9MTQ5YThhMjA2MDAw
MDAKPj4+PiBzdGFydCBjb21taXQ6ICAgNmQyMWE0MWIgQWRkIGxpbnV4LW5leHQgc3BlY2lmaWMg
ZmlsZXMgZm9yIDIwMTkwNzE4Cj4+Pj4gZ2l0IHRyZWU6ICAgICAgIGxpbnV4LW5leHQKPj4+PiBm
aW5hbCBjcmFzaDogICAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9yZXBvcnQudHh0
P3g9MTY5YThhMjA2MDAwMDAKPj4+PiBjb25zb2xlIG91dHB1dDogaHR0cHM6Ly9zeXprYWxsZXIu
YXBwc3BvdC5jb20veC9sb2cudHh0P3g9MTI5YThhMjA2MDAwMDAKPj4+PiBrZXJuZWwgY29uZmln
OiAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC8uY29uZmlnP3g9MzQzMGExNTFlMTQ1
MjMzMQo+Pj4+IGRhc2hib2FyZCBsaW5rOiBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS9i
dWc/ZXh0aWQ9ZTU4MTEyZDcxZjc3MTEzZGRiN2IKPj4+PiBzeXogcmVwcm86ICAgICAgaHR0cHM6
Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9yZXByby5zeXo/eD0xMDEzOWU2ODYwMDAwMAo+Pj4+
Cj4+Pj4gUmVwb3J0ZWQtYnk6IHN5emJvdCtlNTgxMTJkNzFmNzcxMTNkZGI3YkBzeXprYWxsZXIu
YXBwc3BvdG1haWwuY29tCj4+Pj4gRml4ZXM6IDdmNDY2MDMyZGM5ZSAoInZob3N0OiBhY2Nlc3Mg
dnEgbWV0YWRhdGEgdGhyb3VnaCBrZXJuZWwgdmlydHVhbAo+Pj4+IGFkZHJlc3MiKQo+Pj4+Cj4+
Pj4gRm9yIGluZm9ybWF0aW9uIGFib3V0IGJpc2VjdGlvbiBwcm9jZXNzIHNlZTogaHR0cHM6Ly9n
b28uZ2wvdHBzbUVKI2Jpc2VjdGlvbgo+Pj4gT0sgSSBwb2tlZCBhdCB0aGlzIGZvciBhIGJpdCwg
SSBzZWUgc2V2ZXJhbCB0aGluZ3MgdGhhdAo+Pj4gd2UgbmVlZCB0byBmaXgsIHRob3VnaCBJJ20g
bm90IHlldCBzdXJlIGl0J3MgdGhlIHJlYXNvbiBmb3IKPj4+IHRoZSBmYWlsdXJlczoKPj4+Cj4+
Pgo+Pj4gMS4gbW11X25vdGlmaWVyX3JlZ2lzdGVyIHNob3VsZG4ndCBiZSBjYWxsZWQgZnJvbSB2
aG9zdF92cmluZ19zZXRfbnVtX2FkZHIKPj4+ICAgICAgVGhhdCdzIGp1c3QgYSBiYWQgaGFjaywK
Pj4KPj4gVGhpcyBpcyB1c2VkIHRvIGF2b2lkIGhvbGRpbmcgbG9jayB3aGVuIGNoZWNraW5nIHdo
ZXRoZXIgdGhlIGFkZHJlc3NlcyBhcmUKPj4gb3ZlcmxhcHBlZC4gT3RoZXJ3aXNlIHdlIG5lZWQg
dG8gdGFrZSBzcGlubG9jayBmb3IgZWFjaCBpbnZhbGlkYXRpb24gcmVxdWVzdAo+PiBldmVuIGlm
IGl0IHdhcyB0aGUgdmEgcmFuZ2UgdGhhdCBpcyBub3QgaW50ZXJlc3RlZCBmb3IgdXMuIFRoaXMg
d2lsbCBiZSB2ZXJ5Cj4+IHNsb3cgZS5nIGR1cmluZyBndWVzdCBib290Lgo+IEtWTSBzZWVtcyB0
byBkbyBleGFjdGx5IHRoYXQuCj4gSSB0cmllZCBhbmQgZ3Vlc3QgZG9lcyBub3Qgc2VlbSB0byBi
b290IGFueSBzbG93ZXIuCj4gRG8geW91IG9ic2VydmUgYW55IHNsb3dkb3duPwoKClllcyBJIGRv
LgoKCj4KPiBOb3cgSSB0b29rIGEgaGFyZCBsb29rIGF0IHRoZSB1YWRkciBoYWNrZXJ5IGl0IHJl
YWxseSBtYWtlcwo+IG1lIG5lcnZpb3VzLiBTbyBJIHRoaW5rIGZvciB0aGlzIHJlbGVhc2Ugd2Ug
d2FudCBzb21ldGhpbmcKPiBzYWZlLCBhbmQgb3B0aW1pemF0aW9ucyBvbiB0b3AuIEFzIGFuIGFs
dGVybmF0aXZlIHJldmVydCB0aGUKPiBvcHRpbWl6YXRpb24gYW5kIHRyeSBhZ2FpbiBmb3IgbmV4
dCBtZXJnZSB3aW5kb3cuCgoKV2lsbCBwb3N0IGEgc2VyaWVzIG9mIGZpeGVzLCBsZXQgbWUga25v
dyBpZiB5b3UncmUgb2sgd2l0aCB0aGF0LgoKVGhhbmtzCgoKPgo+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
