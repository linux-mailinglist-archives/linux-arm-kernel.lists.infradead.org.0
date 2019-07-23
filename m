Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD9671163
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 07:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kIT4Y8TYmP87LxZqDlDffN3Dkil9mENmY8LY1RAbV9g=; b=dBOHbPZRJEx28z7bR6xGkr2qk
	FRFgFAAq8B/D/PEra7pdOXze78zzVCRt8lO2HhjwiJ5P1z/YIUQLhgLp17YCTuK+Qmru80mcHWAFv
	lBacfWLJsYfq3tJA1e4iiclvqMTiAWywC/jlh9P5b9ZbGTtO8A/80S5HMxalnQJ+317Npw9LBm5bE
	tygw8H6OTm4exFpGBAW2MWHnWTKMFheS6IxLUO0eK6Mrf14UGTMJ1XF9RSztTi9LX417nWlJrKOZq
	GZky8u01ZSiIyN/8syL69VoEnczCRupvchxU5JWksz3xvRzJ+yh74YAJm1Et6SyXymIephr7S2n7e
	ZzDIp2mvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpnfs-0001cM-QY; Tue, 23 Jul 2019 05:49:21 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpnfc-0001bZ-0Y
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 05:49:06 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8462F3083339;
 Tue, 23 Jul 2019 05:49:03 +0000 (UTC)
Received: from [10.72.12.26] (ovpn-12-26.pek2.redhat.com [10.72.12.26])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 07AAE5B684;
 Tue, 23 Jul 2019 05:48:52 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <75c43998-3a1c-676f-99ff-3d04663c3fcc@redhat.com>
 <20190722035657-mutt-send-email-mst@kernel.org>
 <cfcd330d-5f4a-835a-69f7-c342d5d0d52d@redhat.com>
 <20190723010156-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <124be1a2-1c53-8e65-0f06-ee2294710822@redhat.com>
Date: Tue, 23 Jul 2019 13:48:52 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723010156-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Tue, 23 Jul 2019 05:49:03 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_224904_618538_7FCAE6BB 
X-CRM114-Status: GOOD (  18.21  )
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

Ck9uIDIwMTkvNy8yMyDkuIvljYgxOjAyLCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24g
VHVlLCBKdWwgMjMsIDIwMTkgYXQgMTE6NTU6MjhBTSArMDgwMCwgSmFzb24gV2FuZyB3cm90ZToK
Pj4gT24gMjAxOS83LzIyIOS4i+WNiDQ6MDIsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4+
IE9uIE1vbiwgSnVsIDIyLCAyMDE5IGF0IDAxOjIxOjU5UE0gKzA4MDAsIEphc29uIFdhbmcgd3Jv
dGU6Cj4+Pj4gT24gMjAxOS83LzIxIOS4i+WNiDY6MDIsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90
ZToKPj4+Pj4gT24gU2F0LCBKdWwgMjAsIDIwMTkgYXQgMDM6MDg6MDBBTSAtMDcwMCwgc3l6Ym90
IHdyb3RlOgo+Pj4+Pj4gc3l6Ym90IGhhcyBiaXNlY3RlZCB0aGlzIGJ1ZyB0bzoKPj4+Pj4+Cj4+
Pj4+PiBjb21taXQgN2Y0NjYwMzJkYzllNWE2MTIxN2YyMmVhMzRiMmRmOTMyNzg2YmJmYwo+Pj4+
Pj4gQXV0aG9yOiBKYXNvbiBXYW5nIDxqYXNvd2FuZ0ByZWRoYXQuY29tPgo+Pj4+Pj4gRGF0ZTog
ICBGcmkgTWF5IDI0IDA4OjEyOjE4IDIwMTkgKzAwMDAKPj4+Pj4+Cj4+Pj4+PiAgICAgICAgdmhv
c3Q6IGFjY2VzcyB2cSBtZXRhZGF0YSB0aHJvdWdoIGtlcm5lbCB2aXJ0dWFsIGFkZHJlc3MKPj4+
Pj4+Cj4+Pj4+PiBiaXNlY3Rpb24gbG9nOiAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20v
eC9iaXNlY3QudHh0P3g9MTQ5YThhMjA2MDAwMDAKPj4+Pj4+IHN0YXJ0IGNvbW1pdDogICA2ZDIx
YTQxYiBBZGQgbGludXgtbmV4dCBzcGVjaWZpYyBmaWxlcyBmb3IgMjAxOTA3MTgKPj4+Pj4+IGdp
dCB0cmVlOiAgICAgICBsaW51eC1uZXh0Cj4+Pj4+PiBmaW5hbCBjcmFzaDogICAgaHR0cHM6Ly9z
eXprYWxsZXIuYXBwc3BvdC5jb20veC9yZXBvcnQudHh0P3g9MTY5YThhMjA2MDAwMDAKPj4+Pj4+
IGNvbnNvbGUgb3V0cHV0OiBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94L2xvZy50eHQ/
eD0xMjlhOGEyMDYwMDAwMAo+Pj4+Pj4ga2VybmVsIGNvbmZpZzogIGh0dHBzOi8vc3l6a2FsbGVy
LmFwcHNwb3QuY29tL3gvLmNvbmZpZz94PTM0MzBhMTUxZTE0NTIzMzEKPj4+Pj4+IGRhc2hib2Fy
ZCBsaW5rOiBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS9idWc/ZXh0aWQ9ZTU4MTEyZDcx
Zjc3MTEzZGRiN2IKPj4+Pj4+IHN5eiByZXBybzogICAgICBodHRwczovL3N5emthbGxlci5hcHBz
cG90LmNvbS94L3JlcHJvLnN5ej94PTEwMTM5ZTY4NjAwMDAwCj4+Pj4+Pgo+Pj4+Pj4gUmVwb3J0
ZWQtYnk6IHN5emJvdCtlNTgxMTJkNzFmNzcxMTNkZGI3YkBzeXprYWxsZXIuYXBwc3BvdG1haWwu
Y29tCj4+Pj4+PiBGaXhlczogN2Y0NjYwMzJkYzllICgidmhvc3Q6IGFjY2VzcyB2cSBtZXRhZGF0
YSB0aHJvdWdoIGtlcm5lbCB2aXJ0dWFsCj4+Pj4+PiBhZGRyZXNzIikKPj4+Pj4+Cj4+Pj4+PiBG
b3IgaW5mb3JtYXRpb24gYWJvdXQgYmlzZWN0aW9uIHByb2Nlc3Mgc2VlOiBodHRwczovL2dvby5n
bC90cHNtRUojYmlzZWN0aW9uCj4+Pj4+IE9LIEkgcG9rZWQgYXQgdGhpcyBmb3IgYSBiaXQsIEkg
c2VlIHNldmVyYWwgdGhpbmdzIHRoYXQKPj4+Pj4gd2UgbmVlZCB0byBmaXgsIHRob3VnaCBJJ20g
bm90IHlldCBzdXJlIGl0J3MgdGhlIHJlYXNvbiBmb3IKPj4+Pj4gdGhlIGZhaWx1cmVzOgo+Pj4+
Pgo+Pj4+Pgo+Pj4+PiAxLiBtbXVfbm90aWZpZXJfcmVnaXN0ZXIgc2hvdWxkbid0IGJlIGNhbGxl
ZCBmcm9tIHZob3N0X3ZyaW5nX3NldF9udW1fYWRkcgo+Pj4+PiAgICAgICBUaGF0J3MganVzdCBh
IGJhZCBoYWNrLAo+Pj4+IFRoaXMgaXMgdXNlZCB0byBhdm9pZCBob2xkaW5nIGxvY2sgd2hlbiBj
aGVja2luZyB3aGV0aGVyIHRoZSBhZGRyZXNzZXMgYXJlCj4+Pj4gb3ZlcmxhcHBlZC4gT3RoZXJ3
aXNlIHdlIG5lZWQgdG8gdGFrZSBzcGlubG9jayBmb3IgZWFjaCBpbnZhbGlkYXRpb24gcmVxdWVz
dAo+Pj4+IGV2ZW4gaWYgaXQgd2FzIHRoZSB2YSByYW5nZSB0aGF0IGlzIG5vdCBpbnRlcmVzdGVk
IGZvciB1cy4gVGhpcyB3aWxsIGJlIHZlcnkKPj4+PiBzbG93IGUuZyBkdXJpbmcgZ3Vlc3QgYm9v
dC4KPj4+IEtWTSBzZWVtcyB0byBkbyBleGFjdGx5IHRoYXQuCj4+PiBJIHRyaWVkIGFuZCBndWVz
dCBkb2VzIG5vdCBzZWVtIHRvIGJvb3QgYW55IHNsb3dlci4KPj4+IERvIHlvdSBvYnNlcnZlIGFu
eSBzbG93ZG93bj8KPj4KPj4gWWVzIEkgZG8uCj4+Cj4+Cj4+PiBOb3cgSSB0b29rIGEgaGFyZCBs
b29rIGF0IHRoZSB1YWRkciBoYWNrZXJ5IGl0IHJlYWxseSBtYWtlcwo+Pj4gbWUgbmVydmlvdXMu
IFNvIEkgdGhpbmsgZm9yIHRoaXMgcmVsZWFzZSB3ZSB3YW50IHNvbWV0aGluZwo+Pj4gc2FmZSwg
YW5kIG9wdGltaXphdGlvbnMgb24gdG9wLiBBcyBhbiBhbHRlcm5hdGl2ZSByZXZlcnQgdGhlCj4+
PiBvcHRpbWl6YXRpb24gYW5kIHRyeSBhZ2FpbiBmb3IgbmV4dCBtZXJnZSB3aW5kb3cuCj4+Cj4+
IFdpbGwgcG9zdCBhIHNlcmllcyBvZiBmaXhlcywgbGV0IG1lIGtub3cgaWYgeW91J3JlIG9rIHdp
dGggdGhhdC4KPj4KPj4gVGhhbmtzCj4gSSdkIHByZWZlciB5b3UgdG8gdGFrZSBhIGhhcmQgbG9v
ayBhdCB0aGUgcGF0Y2ggSSBwb3N0ZWQKPiB3aGljaCBtYWtlcyBjb2RlIGNsZWFuZXIsCgoKSSBk
aWQuIEJ1dCBpdCBsb29rcyB0byBtZSBhIHNlcmllcyB0aGF0IGlzIG9ubHkgYWJvdXQgNjAgbGlu
ZXMgb2YgY29kZSAKY2FuIGZpeCBhbGwgdGhlIGlzc3VlcyB3ZSBmb3VuZCB3aXRob3V0IHJldmVy
dGluZyB0aGUgdWFkZHIgb3B0aW1pemF0aW9uLgoKCj4gICBhbmQgYWQgb3B0aW1pemF0aW9ucyBv
biB0b3AuCj4gQnV0IG90aGVyIHdheXMgY291bGQgYmUgb2sgdG9vLgoKCkknbSB3YWl0aW5nIGZv
ciB0aGUgdGVzdCByZXN1bHQgZnJvbSBzeXpib3QgYW5kIHdpbGwgcG9zdC4gTGV0J3Mgc2VlIGlm
IAp5b3UgYXJlIE9LIHdpdGggdGhhdC4KClRoYW5rcwoKCj4+PgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
