Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C85511AAE6F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 18:49:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDukRUx84MzpO5rNvbwVwY8QyImFJ15ziAGrwtt2jok=; b=b4BvhPC5xQNCeV
	Iw6oFXBWH6JK8q98YnWFl99xIrmxSlY+rTTB+X38j3B4JiOkrD2BRie6wnBRRjfqGUarcXCzWFRG1
	AVD4Bq8CV8K8z+7qv5IUMW+MJj2WToFTam8Ch5qFFQOAVNlub3hVzjIvA7x3688yKvlxt/5Ytyft9
	YUR/fvcSr46rQZQ4+rvcHthTxX5pNryDtNi330pY9YCydh29FjZy/y4NOuWMxCnvvs7TLjv2T3Xhq
	TLXM+d4c7kcPK86125jsdqPoXiV684D/ciJma/er9SeDx70fYio05Sh+8IFFVjqfdL2gkz46BlRPS
	EltOE9IeGnFw0T8imFgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOlE4-0004c9-Cs; Wed, 15 Apr 2020 16:49:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOlDv-0004bp-V3
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 16:49:17 +0000
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
 [209.85.166.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D98C4208FE
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 16:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586969354;
 bh=F9GmaurKbAsn0X4HPrA0BeOP+nd3evkoARWIjfwwJ94=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2QYfucGH83QacyGRLcm5xQ5CPVMhF/U54RicpamklvDd0aE+Z6xkO9b+wSGsNI5SJ
 EID1rbhXnSGx0yQW/y+Kro5T/06cGmBO7HR8orKvwkdAorJyTvck96oGbJvEdDIZ2J
 Jc/IFNk4KSj8ubaMgJprOR67aY35EY4YeZmq0CtI=
Received: by mail-io1-f53.google.com with SMTP id o127so17888838iof.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 09:49:14 -0700 (PDT)
X-Gm-Message-State: AGi0Pual41/A0cvjpFhQpFvZyzOfS/3I2u1g7BjYgb/jmRGoGtBEO16Q
 ulFE9PhJpB6r/rxI1ISF0WCt7hXTS1bndBPv6Pw=
X-Google-Smtp-Source: APiQypJWGMRiNduUYPB9oJ7u8KNJwMs3LO6HUvUASLH07gImZaYwmVp66Og1pCmupdLk+f0b5w/3jrmg4Ku7V8LKgKI=
X-Received: by 2002:a5e:8b47:: with SMTP id z7mr26739930iom.16.1586969354138; 
 Wed, 15 Apr 2020 09:49:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200221165532.90618-1-andre.przywara@arm.com>
 <2d3bad43-10a5-3ee1-72e7-e1da1d6c65dd@arm.com>
 <CAMj1kXGUiCLvmJUwrxCc8aHdE30WWfa95ou-tEM8Kv0nj2GdDA@mail.gmail.com>
 <CAMj1kXF6iw47MM_tg5izB9KC-N2zrnQbhwT2TVPOuKdpOBX=ow@mail.gmail.com>
 <d9ae6d29-c2c5-6aa7-15b6-6549fc89c043@arm.com>
 <CAMj1kXHKOBbCKsgYOYuLU+vOALBUbNRysVfVRpKXkh00GvTtEA@mail.gmail.com>
 <32355204-30b1-4615-0d08-b484f0340e82@arm.com>
In-Reply-To: <32355204-30b1-4615-0d08-b484f0340e82@arm.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 15 Apr 2020 18:49:02 +0200
X-Gmail-Original-Message-ID: <CAMj1kXG5aE9AjpKG28Ftsta6hOrP3aHMMYLvmVNUkRYsSeBfGg@mail.gmail.com>
Message-ID: <CAMj1kXG5aE9AjpKG28Ftsta6hOrP3aHMMYLvmVNUkRYsSeBfGg@mail.gmail.com>
Subject: Re: [PATCH kvmtool v3] Add emulation for CFI compatible flash memory
To: =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_094916_040211_8E77FCD8 
X-CRM114-Status: GOOD (  36.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kvm@vger.kernel.org, Alexandru Elisei <alexandru.elisei@arm.com>,
 Raphael Gault <raphael.gault@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, sami.mujawar@arm.com,
 Will Deacon <will@kernel.org>, kvmarm <kvmarm@lists.cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxNSBBcHIgMjAyMCBhdCAxODozNiwgQW5kcsOpIFByenl3YXJhIDxhbmRyZS5wcnp5
d2FyYUBhcm0uY29tPiB3cm90ZToKPgo+IE9uIDE1LzA0LzIwMjAgMTc6MjAsIEFyZCBCaWVzaGV1
dmVsIHdyb3RlOgo+ID4gT24gV2VkLCAxNSBBcHIgMjAyMCBhdCAxODoxMSwgQW5kcsOpIFByenl3
YXJhIDxhbmRyZS5wcnp5d2FyYUBhcm0uY29tPiB3cm90ZToKPiA+Pgo+ID4+IE9uIDE1LzA0LzIw
MjAgMTY6NTUsIEFyZCBCaWVzaGV1dmVsIHdyb3RlOgo+ID4+PiBPbiBXZWQsIDE1IEFwciAyMDIw
IGF0IDE3OjQzLCBBcmQgQmllc2hldXZlbCA8YXJkYkBrZXJuZWwub3JnPiB3cm90ZToKPiA+Pj4+
Cj4gPj4+PiBPbiBUdWUsIDcgQXByIDIwMjAgYXQgMTc6MTUsIEFsZXhhbmRydSBFbGlzZWkgPGFs
ZXhhbmRydS5lbGlzZWlAYXJtLmNvbT4gd3JvdGU6Cj4gPj4+Pj4KPiA+Pj4+PiBIaSwKPiA+Pj4+
Pgo+ID4+Pj4+IEkndmUgdGVzdGVkIHRoaXMgcGF0Y2ggYnkgcnVubmluZyBiYWRibG9ja3MgYW5k
IGZpbyBvbiBhIGZsYXNoIGRldmljZSBpbnNpZGUgYQo+ID4+Pj4+IGd1ZXN0LCBldmVyeXRoaW5n
IHdvcmtlZCBhcyBleHBlY3RlZC4KPiA+Pj4+Pgo+ID4+Pj4+IEkndmUgYWxzbyBsb29rZWQgYXQg
dGhlIGZsb3djaGFydHMgZm9yIGRldmljZSBvcGVyYXRpb24gZnJvbSBJbnRlbCBBcHBsaWNhdGlv
bgo+ID4+Pj4+IE5vdGUgNjQ2LCBwYWdlcyAxMi0yMSwgYW5kIHRoZXkgc2VlbSBpbXBsZW1lbnRl
ZCBjb3JyZWN0bHkuCj4gPj4+Pj4KPiA+Pj4+PiBBIGZldyBtaW5vciBpc3N1ZXMgYmVsb3cuCj4g
Pj4+Pj4KPiA+Pj4+PiBPbiAyLzIxLzIwIDQ6NTUgUE0sIEFuZHJlIFByenl3YXJhIHdyb3RlOgo+
ID4+Pj4+PiBGcm9tOiBSYXBoYWVsIEdhdWx0IDxyYXBoYWVsLmdhdWx0QGFybS5jb20+Cj4gPj4+
Pj4+Cj4gPj4+Pj4+IFRoZSBFREsgSUkgVUVGSSBmaXJtd2FyZSBpbXBsZW1lbnRhdGlvbiByZXF1
aXJlcyBzb21lIHN0b3JhZ2UgZm9yIHRoZSBFRkkKPiA+Pj4+Pj4gdmFyaWFibGVzLCB3aGljaCBp
cyB0eXBpY2FsbHkgc29tZSBmbGFzaCBzdG9yYWdlLgo+ID4+Pj4+PiBTaW5jZSB0aGlzIGlzIGFs
cmVhZHkgc3VwcG9ydGVkIG9uIHRoZSBFREsgSUkgc2lkZSwgd2UgYWRkIGEgQ0ZJIGZsYXNoCj4g
Pj4+Pj4+IGVtdWxhdGlvbiB0byBrdm10b29sLgo+ID4+Pj4+PiBUaGlzIGlzIGJhY2tlZCBieSBh
IGZpbGUsIHNwZWNpZmllZCB2aWEgdGhlIC0tZmxhc2ggb3IgLUYgY29tbWFuZCBsaW5lCj4gPj4+
Pj4+IG9wdGlvbi4gQW55IGZsYXNoIHdyaXRlcyBkb25lIGJ5IHRoZSBndWVzdCB3aWxsIGltbWVk
aWF0ZWx5IGJlIHJlZmxlY3RlZAo+ID4+Pj4+PiBpbnRvIHRoaXMgZmlsZSAoa3ZtdG9vbCBtbWFw
J3MgdGhlIGZpbGUpLgo+ID4+Pj4+PiBUaGUgZmxhc2ggd2lsbCBiZSBsaW1pdGVkIHRvIHRoZSBu
ZWFyZXN0IHBvd2VyLW9mLTIgc2l6ZSwgc28gb25seSB0aGUKPiA+Pj4+Pj4gZmlyc3QgMiBNQiBv
ZiBhIDMgTUIgZmlsZSB3aWxsIGJlIHVzZWQuCj4gPj4+Pj4+Cj4gPj4+Pj4+IFRoaXMgaW1wbGVt
ZW50cyBhIENGSSBmbGFzaCB1c2luZyB0aGUgIkludGVsL1NoYXJwIGV4dGVuZGVkIGNvbW1hbmQK
PiA+Pj4+Pj4gc2V0IiwgYXMgc3BlY2lmaWVkIGluOgo+ID4+Pj4+PiAtIEpFREVDIEpFU0Q2OC4w
MQo+ID4+Pj4+PiAtIEpFREVDIEpFUDEzN0IKPiA+Pj4+Pj4gLSBJbnRlbCBBcHBsaWNhdGlvbiBO
b3RlIDY0Ngo+ID4+Pj4+PiBTb21lIGdhcHMgaW4gdGhvc2Ugc3BlY3MgaGF2ZSBiZWVuIGZpbGxl
ZCBieSBsb29raW5nIGF0IHJlYWwgZGV2aWNlcyBhbmQKPiA+Pj4+Pj4gb3RoZXIgaW1wbGVtZW50
YXRpb25zIChRRU1VLCBMaW51eCBrZXJuZWwgZHJpdmVyKS4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gQXQg
dGhlIG1vbWVudCB0aGlzIHJlbGllcyBvbiBEVCB0byBhZHZlcnRpc2UgdGhlIGJhc2UgYWRkcmVz
cyBvZiB0aGUKPiA+Pj4+Pj4gZmxhc2ggbWVtb3J5IChtYXBwZWQgaW50byB0aGUgTU1JTyBhZGRy
ZXNzIHNwYWNlKSBhbmQgaXMgb25seSBlbmFibGVkCj4gPj4+Pj4+IGZvciBBUk0vQVJNNjQuIFRo
ZSBlbXVsYXRpb24gaXRzZWxmIGlzIGFyY2hpdGVjdHVyZSBhZ25vc3RpYywgdGhvdWdoLgo+ID4+
Pj4+Pgo+ID4+Pj4+PiBUaGlzIGlzIG9uZSBtaXNzaW5nIHBpZWNlIHRvd2FyZCBhIHdvcmtpbmcg
VUVGSSBib290IHdpdGgga3ZtdG9vbCBvbgo+ID4+Pj4+PiBBUk0gZ3Vlc3RzLCB0aGUgb3RoZXIg
aXMgdG8gcHJvdmlkZSB3cml0YWJsZSBQQ0kgQkFScywgd2hpY2ggaXMgV0lQLgo+ID4+Pj4+Pgo+
ID4+Pj4KPiA+Pj4+IEkgaGF2ZSBnaXZlbiB0aGlzIGEgc3BpbiB3aXRoIFVFRkkgYnVpbHQgZm9y
IGt2bXRvb2wsIGFuZCBpdCBhcHBlYXJzCj4gPj4+PiB0byBiZSB3b3JraW5nIGNvcnJlY3RseS4g
SG93ZXZlciwgSSBub3RpY2VkIHRoYXQgaXQgaXMgaW50b2xlcmFibHkKPiA+Pj4+IHNsb3csIHdo
aWNoIHNlZW1zIHRvIGJlIGNhdXNlZCBieSB0aGUgZmFjdCB0aGF0IGJvdGggYXJyYXkgbW9kZSBh
bmQKPiA+Pj4+IGNvbW1hbmQgbW9kZSAob3Igd2hhdGV2ZXIgaXQgaXMgY2FsbGVkIGluIHRoZSBD
Rkkgc3BlYykgYXJlIGZ1bGx5Cj4gPj4+PiBlbXVsYXRlZCwgd2hlcmVhcyBpbiB0aGUgUUVNVSBp
bXBsZW1lbnRhdGlvbiAoZm9yIGluc3RhbmNlKSwgdGhlCj4gPj4+PiByZWdpb24gaXMgYWN0dWFs
bHkgZXhwb3NlZCB0byB0aGUgZ3Vlc3QgdXNpbmcgYSByZWFkLW9ubHkgS1ZNIG1lbXNsb3QKPiA+
Pj4+IGluIGFycmF5IG1vZGUsIGFuZCBzbyB0aGUgcmVhZCBhY2Nlc3NlcyBhcmUgbWFkZSBuYXRp
dmVseS4KPiA+Pj4+Cj4gPj4+PiBJdCBpcyBhbHNvIGNhdXNpbmcgcHJvYmxlbXMgaW4gdGhlIFVF
RkkgaW1wbGVtZW50YXRpb24sIGFzIHdlIGNhbiBubwo+ID4+Pj4gbG9uZ2VyIHVzZSB1bmFsaWdu
ZWQgYWNjZXNzZXMgdG8gcmVhZCBmcm9tIHRoZSByZWdpb24sIHdoaWNoIGlzCj4gPj4+PiBzb21l
dGhpbmcgdGhlIGNvZGUgY3VycmVudGx5IHJlbGllcyBvbiAoYW5kIHdoaWNoIHdvcmtzIGZpbmUg
b24gYWN0dWFsCj4gPj4+PiBoYXJkd2FyZSBhcyBsb25nIGFzIHlvdSB1c2Ugbm9ybWFsIG5vbi1j
YWNoZWFibGUgbWFwcGluZ3MpCj4gPj4+Pgo+ID4+Pgo+ID4+PiBBY3R1YWxseSwgdGhlIGlzc3Vl
IGlzIG5vdCBhbGlnbm1lbnQuIFRoZSBpc3N1ZSBpcyB3aXRoIGluc3RydWN0aW9ucwo+ID4+PiB3
aXRoIG11bHRpcGxlIG91dHB1dHMsIHdoaWNoIG1lYW5zIHlvdSBjYW5ub3QgZG8gYW4gb3JkaW5h
cnkgbWVtY3B5KCkKPiA+Pj4gZnJvbSB0aGUgTk9SIHJlZ2lvbiB1c2luZyBsZHAgaW5zdHJ1Y3Rp
b25zLCBhbGlnbmVkIG9yIG5vdC4KPiA+Pgo+ID4+IFllcywgd2UgdHJhY2VkIHRoYXQgZG93biB0
byBhbiAibGRyYiB3aXRoIHBvc3QtaW5jIiwgaW4gdGhlIG1lbWNweSBjb2RlLgo+ID4+IE15IHN1
Z2dlc3Rpb24gd2FzIHRvIHByb3ZpZGUgYSB2ZXJzaW9uIG9mIG1lbWNweV97ZnJvbSx0b31faW8o
KSwgYXMKPiA+PiBMaW51eCBkb2VzLCB3aGljaCBvbmx5IHVzZXMgTU1JTyBhY2Nlc3NvcnMgdG8g
YXZvaWQgImZhbmN5IiBpbnN0cnVjdGlvbnMuCj4gPj4KPiA+Cj4gPiBUaGF0IGlzIHBvc3NpYmxl
LCBhbmQgdGhlIGltcGFjdCBvbiB0aGUgY29kZSBpcyBtYW5hZ2VhYmxlLCBnaXZlbiB0aGUKPiA+
IG1vZHVsYXIgbmF0dXJlIG9mIEVESzIuCj4gPgo+ID4+IEJhY2sgYXQgdGhpcyBwb2ludCBJIHdh
cyBjaGFsbGVuZ2luZyB0aGUgaWRlYSBvZiBhY2Nlc3NpbmcgYSBmbGFzaAo+ID4+IGRldmljZSB3
aXRoIGEgbm9ybWFsIG1lbW9yeSBtYXBwaW5nLCBiZWNhdXNlIG9mIGl0IGZhaWxpbmcgd2hlbiBi
ZWluZyBpbgo+ID4+IHNvbWUgcXVlcnkgbW9kZS4gRG8geW91IGtub3cgb2YgYW55IGJlc3QgcHJh
Y3RpY2VzIGZvciBmbGFzaCBtYXBwaW5ncz8KPiA+PiBBcmUgdHdvIG1hcHBpbmdzIGNvbW1vbj8K
PiA+Pgo+ID4KPiA+IEluIHRoZSBRRU1VIHBvcnQgb2YgRURLMiwgd2UgdXNlIG5vcm1hbCBub24t
Y2FjaGVhYmxlIGZvciB0aGUgZmlyc3QKPiA+IGZsYXNoIGRldmljZSwgd2hpY2ggY29udGFpbnMg
dGhlIGV4ZWN1dGFibGUgaW1hZ2UsIGFuZCBpcyBub3QKPiA+IHVwZGF0YWJsZSBieSB0aGUgZ3Vl
c3QuIFRoZSBzZWNvbmQgZmxhc2ggYmFuayBpcyB1c2VkIGZvciB0aGUgdmFyaWFibGUKPiA+IHN0
b3JlLCBhbmQgaXMgYWN0dWFsbHkgbWFwcGVkIGFzIGEgZGV2aWNlIGFsbCB0aGUgdGltZS4KPiA+
Cj4gPiBBbm90aGVyIHRoaW5nIEkganVzdCByZWFsaXplZCBpcyB0aGF0IHlvdSBjYW5ub3QgZmV0
Y2ggaW5zdHJ1Y3Rpb25zCj4gPiBmcm9tIGFuIGVtdWxhdGVkIGZsYXNoIGRldmljZSBlaXRoZXIs
IHNvIHRvIGV4ZWN1dGUgZnJvbSBOT1IgZmxhc2gsCj4gPiB5b3Ugd2lsbCBuZWVkIGEgdHJ1ZSBt
ZW1vcnkgbWFwcGluZyBhcyB3ZWxsLgo+Cj4gV2FpdCwgZGlkIHlvdSBwdXQgdGhlIHdob2xlIG9m
IEVESy0yIGltYWdlIGluIHRoZSBmbGFzaD8KCk5vLCBteSBwb2ludCBpcyB0aGF0IHlvdSBjYW5u
b3QgYWN0dWFsbHkgZG8gdGhhdCwgc2luY2UgSSBkb24ndCB0aGluawp5b3UgY2FuIGZldGNoIGlu
c3RydWN0aW9ucyB1c2luZyBNTUlPIGVtdWxhdGlvbi4KCj4gTXkgYXNzdW1wdGlvbgo+IChhbmQg
dGVzdGluZykgd2FzIHRvIHVzZQo+Cj4gJCBsa3ZtIHJ1biAtZiBLVk1UT09MX0VGSS5mZCAtLWZs
YXNoIGp1c3RfdGhlX3ZhcmlhYmxlcy5pbWcKPgo+IEhlbmNlIG15IGlnbm9yYW5jZSBhYm91dCBw
ZXJmb3JtYW5jZSwgYmVjYXVzZSBpdCB3b3VsZCBqdXN0IGJlIGEgZmV3Cj4gYnl0ZXMgd3JpdHRl
bi9yZWFkLiAtZiBsb2FkcyB0aGUgZmlybXdhcmUgaW1hZ2UgaW50byBndWVzdCBSQU0uCj4KCk5v
LCB0aGUgcGVyZm9ybWFuY2UgaW1wYWN0IGlzIGR1ZSB0byB0aGUgbnVtZXJvdXMgdmFyaWFibGUg
YWNjZXNzZXMKZG9uZSBieSBVRUZJIGR1cmluZyBib290LgoKPiA+IFNvIGluIHN1bW1hcnksIEkg
dGhpbmsgdGhlIG1vZGUgc3dpdGNoIGlzIG5lZWRlZCB0byBiZSBnZW5lcmFsbHkKPiA+IHVzZWZ1
bCwgZXZlbiBpZiB0aGUgY3VycmVudCBhcHByb2FjaCBpcyBzdWZmaWNpZW50IGZvciAoc2xvdykK
PiA+IHJlYWQvd3JpdGUgdXNpbmcgc3BlY2lhbCBtZW1vcnkgYWNjZXNzb3JzLgo+Cj4gV2VsbCxp
biBoaW5kc2lnaHQgSSByZWdyZXQgcHVyc3VpbmcgdGhpcyB3aG9sZSBmbGFzaCBlbXVsYXRpb24g
YXBwcm9hY2gKPiBpbiBrdm10b29sIGluIHRoZSBmaXJzdCBwbGFjZS4gSnVzdCBzb21lIG1hZ2lj
ICJ0aGlzIG1lbW9yeSByZWdpb24gaXMKPiBwZXJzaXN0ZW50IiAobW1hcHBpbmcgYSBmaWxlIGFu
ZCBwcmVzZW50aW5nIGFzIGEgbWVtc2xvdCkgd291bGQgYmUKPiAqbXVjaCogZWFzaWVyIG9uIHRo
ZSBrdm10b29sIHNpZGUuIEl0IGp1c3Qgc2VlbXMgdGhhdCB0aGVyZSB3YXNuJ3QgYW55Cj4gZ29v
ZCBEVCBiaW5kaW5nIG9yIGV4aXN0aW5nIGRldmljZSBjbGFzcyBmb3IgdGhpcyAodG8gbXkgc3Vy
cHJpc2UpLCBvcgo+IGF0IGxlYXN0IG5vdCBvbmUgd2l0aG91dCBpc3N1ZXMuIEFuZCB0aGVuIEVE
Sy0yIGhhZCB0aGlzIENGSSBmbGFzaAo+IHN1cHBvcnQgYWxyZWFkeSwgc28gd2UgZmlndXJlZCB0
aGlzIHNob3VsZCBiZSB0aGUgd2F5IHRvIGdvLiBXZSBqdXN0Cj4gbmVlZCBzb21lIGVtdWxhdGlv
biBjb2RlIC4uLiBtb250aHMgbGF0ZXIgLi4uCj4KPiBTbyBkbyB5b3Uga25vdyBvZiBzb21lIHBl
cnNpc3RlbnQgc3RvcmFnZSBkZXZpY2Ugd2UgY291bGQgdXNlPyBUaGlzCj4gd291bGQgY29tZSBh
dCB0aGUgY29zdCBvZiBhZGRpbmcgc3VwcG9ydCB0byBFREstMiwgYnV0IEkgZ3Vlc3MgaXQgc2hv
dWxkCj4gYmUgc3RyYWlnaHQtZm9yd2FyZCBnaXZlbiB0aGUgc2ltcGxlIHNlbWFudGljPwo+CgpJ
IHRoaW5rIGVtdWxhdGluZyBDRkkgaXMgc3RpbGwgdGhlIHJpZ2h0IGFwcHJvYWNoLCBzaW5jZSBp
dCBnaXZlcyB1cwpwYXJpdHkgd2l0aCBRRU1VIGFuZCBhY3R1YWwgaGFyZHdhcmUuIEFsdGVybmF0
aXZlbHksIHdlIGNvdWxkIGV4cGxvcmUKcGFyYXZpcnR1YWxpemF0aW9uIG9mIHRoZSBzZWN1cmUg
VUVGSSB2YXJpYWJsZSBzdG9yZSBpbXBsZW1lbnRhdGlvbgp1c2luZyB0aGUgc3RhbmRhbG9uZSBN
TSBzdGFjayAod2hpY2ggcnVucyBhdCBTLUVMMCBidXQgY291bGQgZWFzaWx5CnJ1biBhdCBOUy1F
TDAgYXMgd2VsbCkgYW5kIGFuIGltcGxlbWVudGF0aW9uIG9mIHRoZSBzZWN1cmUgcGFydGl0aW9u
Cm1hbmFnZXIgaW50ZXJmYWNlIGluc2lkZSBrdm10b29sLiBUaGlzIHdvdWxkIGFjdHVhbGx5IGdp
dmUgdXMgYW4KaW1wbGVtZW50YXRpb24gb2YgVUVGSSBzZWN1cmUgYm9vdCB0aGF0IGFjdHVhbGx5
IG1ha2VzIHNlbnNlLCBzaW5jZQp0aGUgZ3Vlc3Qgd291bGQgbm90IGJlIGFibGUgdG8gbWFuaXB1
bGF0ZSB0aGUgYmFja2luZyBzdG9yZSBkaXJlY3RseS4KCkJ1dCB0aGlzIGlzIGEgd2hvbGUgb3Ro
ZXIgcHJvamVjdCAuLi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
