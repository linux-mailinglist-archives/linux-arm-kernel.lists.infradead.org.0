Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4997660C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:38:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0qnva7Je+v7mK5Sxm2TT/3I2MBYE3wtaARJqK50pphs=; b=bjoS2TPXc83JZ2
	097tGxNX4YqCUHbVoA/X6Blfcg0VWjqM1lrqk8rerfYrGtmWbeUxsENTWEmFuDquTOhQjKD9ZHt1o
	KCT0srKBvAopdYb7KcPY9C5qk5kFMHAC4twEYTH81yiwLJCBTW4SoAl2CrMiSXH+JYFlA63Tlm4+7
	k7VhuaNOb80QlI/vXRwU7tnIqpISoaTKU10MsRa4NLU1FFbpxetxxnOvR/LTi9nK5tk2G+D5hj7IR
	CkmU7eDrVenzvyA5Alv4u1akwJmGvT8kaH+9Pdor2NVGvMM0hO2a447TF+gnm4IHtsY5ouw7REjCv
	j1FVuyZoWEXqZj8GhN6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqzUf-00005p-IF; Fri, 26 Jul 2019 12:38:41 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqzUO-00005A-Uf
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 12:38:26 +0000
Received: by mail-qt1-f194.google.com with SMTP id w17so8076042qto.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 05:38:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=7AAahzA3S5OmAp3WHwhPen11x5qmdYBmT/Y66i6DKGs=;
 b=iVMIhhnMb+AKZHvGD/VeiktvQmZmhASxRBKlMqg/qV5wGM8JfpAMGfoPnP9R7RJyCj
 cGrJQldbDbsUPmFsiPwbrDLgA3QcKObxQrqlqRlb3IZHbA+anyTffIJgWPgxvLnD9omV
 S8A36S2wn4p6/2QR3f+iUdly6yHKRGC24ZsB6u8JKKN91u87RohsSJg/iqYWmVMrOVmT
 xUsRTqNd6MC8yC2yWpVmfwSs8MtRWCqGu2Yt8D7zCzwnkEkZPLb+ocDqflwwniIFmyBy
 6aMJBPmFIVyiJdTzrkV0Sv6II11YJGHx4+o5+4kudfE/u+LGzZswfQB+r5G5O6WKNWVQ
 78HA==
X-Gm-Message-State: APjAAAXFdzFLqjXrLvpdgVBeyyYM5KJlYHvgKmCE0LHdSAKjBmHkY+mg
 Mx4fiSglTDaHYo//r/Xbi5hDVA==
X-Google-Smtp-Source: APXvYqzmq5+4vWxaDwMY+05UXlQp7huBRpq3YhuBZEQ2PajFPNo/CMYsaRV1rBY4ljt21ew7Zf/M7w==
X-Received: by 2002:ac8:37b8:: with SMTP id d53mr65290476qtc.227.1564144703827; 
 Fri, 26 Jul 2019 05:38:23 -0700 (PDT)
Received: from redhat.com ([212.92.104.165])
 by smtp.gmail.com with ESMTPSA id v7sm25082729qte.86.2019.07.26.05.38.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 05:38:23 -0700 (PDT)
Date: Fri, 26 Jul 2019 08:38:13 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190726082837-mutt-send-email-mst@kernel.org>
References: <20190723051828-mutt-send-email-mst@kernel.org>
 <caff362a-e208-3468-3688-63e1d093a9d3@redhat.com>
 <20190725012149-mutt-send-email-mst@kernel.org>
 <55e8930c-2695-365f-a07b-3ad169654d28@redhat.com>
 <20190725042651-mutt-send-email-mst@kernel.org>
 <84bb2e31-0606-adff-cf2a-e1878225a847@redhat.com>
 <20190725092332-mutt-send-email-mst@kernel.org>
 <11802a8a-ce41-f427-63d5-b6a4cf96bb3f@redhat.com>
 <20190726074644-mutt-send-email-mst@kernel.org>
 <5cc94f15-b229-a290-55f3-8295266edb2b@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5cc94f15-b229-a290-55f3-8295266edb2b@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_053824_991154_9E88C5D4 
X-CRM114-Status: GOOD (  23.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDg6MDA6NThQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiAKPiBPbiAyMDE5LzcvMjYg5LiL5Y2INzo0OSwgTWljaGFlbCBTLiBUc2lya2luIHdyb3Rl
Ogo+ID4gT24gVGh1LCBKdWwgMjUsIDIwMTkgYXQgMTA6MjU6MjVQTSArMDgwMCwgSmFzb24gV2Fu
ZyB3cm90ZToKPiA+ID4gT24gMjAxOS83LzI1IOS4i+WNiDk6MjYsIE1pY2hhZWwgUy4gVHNpcmtp
biB3cm90ZToKPiA+ID4gPiA+IEV4YWN0bHksIGFuZCB0aGF0J3MgdGhlIHJlYXNvbiBhY3R1YWxs
eSBJIHVzZSBzeW5jaHJvbml6ZV9yY3UoKSB0aGVyZS4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gU28g
dGhlIGNvbmNlcm4gaXMgc3RpbGwgdGhlIHBvc3NpYmxlIHN5bmNocm9uaXplX2V4cGVkaXRlZCgp
Pwo+ID4gPiA+IEkgdGhpbmsgc3luY2hyb25pemVfc3JjdV9leHBlZGl0ZWQuCj4gPiA+ID4gCj4g
PiA+ID4gc3luY2hyb25pemVfZXhwZWRpdGVkIHNlbmRzIGxvdHMgb2YgSVBJIGFuZCBpcyBiYWQg
Zm9yIHJlYWx0aW1lIFZNcy4KPiA+ID4gPiAKPiA+ID4gPiA+IENhbiBJIGRvIHRoaXMKPiA+ID4g
PiA+IG9uIHRocm91Z2ggYW5vdGhlciBzZXJpZXMgb24gdG9wIG9mIHRoZSBpbmNvbWluZyBWMj8K
PiA+ID4gPiA+IAo+ID4gPiA+ID4gVGhhbmtzCj4gPiA+ID4gPiAKPiA+ID4gPiBUaGUgcXVlc3Rp
b24gaXMgdGhpczogaXMgdGhpcyBzdGlsbCBhIGdhaW4gaWYgd2Ugc3dpdGNoIHRvIHRoZQo+ID4g
PiA+IG1vcmUgZXhwZW5zaXZlIHNyY3U/IElmIHllcyB0aGVuIHdlIGNhbiBrZWVwIHRoZSBmZWF0
dXJlIG9uLAo+ID4gPiAKPiA+ID4gSSB0aGluayB3ZSBvbmx5IGNhcmUgYWJvdXQgdGhlIGNvc3Qg
b24gc3JjdV9yZWFkX2xvY2soKSB3aGljaCBsb29rcyBwcmV0dHkKPiA+ID4gdGlueSBmb3JtIG15
IHBvaW50IG9mIHZpZXcuIFdoaWNoIGlzIGJhc2ljYWxseSBhIFJFQURfT05DRSgpICsgV1JJVEVf
T05DRSgpLgo+ID4gPiAKPiA+ID4gT2YgY291cnNlIEkgY2FuIGJlbmNobWFyayB0byBzZWUgdGhl
IGRpZmZlcmVuY2UuCj4gPiA+IAo+ID4gPiAKPiA+ID4gPiBpZiBub3Qgd2UnbGwgcHV0IGl0IG9m
ZiB1bnRpbCBuZXh0IHJlbGVhc2UgYW5kIHRoaW5rCj4gPiA+ID4gb2YgYmV0dGVyIHNvbHV0aW9u
cy4gcmN1LT5zcmN1IGlzIGp1c3QgYSBmaW5kIGFuZCByZXBsYWNlLAo+ID4gPiA+IGRvbid0IHNl
ZSB3aHkgd2UgbmVlZCB0byBkZWZlciB0aGF0LiBjYW4gYmUgYSBzZXBhcmF0ZSBwYXRjaAo+ID4g
PiA+IGZvciBzdXJlLCBidXQgd2UgbmVlZCB0byBrbm93IGhvdyB3ZWxsIGl0IHdvcmtzLgo+ID4g
PiAKPiA+ID4gSSB0aGluayBJIGdldCBoZXJlLCBsZXQgbWUgdHJ5IHRvIGRvIHRoYXQgaW4gVjIg
YW5kIGxldCdzIHNlZSB0aGUgbnVtYmVycy4KPiA+ID4gCj4gPiA+IFRoYW5rcwo+IAo+IAo+IEl0
IGxvb2tzIHRvIG1lIGZvciB0cmVlIHJjdSwgaXRzIHNyY3VfcmVhZF9sb2NrKCkgaGF2ZSBhIG1i
KCkgd2hpY2ggaXMgdG9vCj4gZXhwZW5zaXZlIGZvciB1cy4KCkkgd2lsbCB0cnkgdG8gcG9uZGVy
IHVzaW5nIHZxIGxvY2sgaW4gc29tZSB3YXkuCk1heWJlIHdpdGggdHJ5bG9jayBzb21laG93IC4u
LgoKCj4gSWYgd2UganVzdCB3b3JyeSBhYm91dCB0aGUgSVBJLAoKV2l0aCBzeW5jaHJvbml6ZV9y
Y3Ugd2hhdCBJIHdvdWxkIHdvcnJ5IGFib3V0IGlzIHRoYXQgZ3Vlc3QgaXMgc3RhbGxlZApiZWNh
dXNlIHN5c3RlbSBpcyBidXN5IGJlY2F1c2Ugb2Ygb3RoZXIgZ3Vlc3RzLgpXaXRoIGV4cGVkaXRl
ZCBpdCdzIHRoZSBJUElzLi4uCgoKPiBjYW4gd2UgZG8gc29tZXRoaW5nIGxpa2UgaW4KPiB2aG9z
dF9pbnZhbGlkYXRlX3ZxX3N0YXJ0KCk/Cj4gCj4gwqDCoMKgwqDCoMKgwqAgaWYgKG1hcCkgewo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBJbiBvcmRlciB0byBhdm9pZCBwb3Nz
aWJsZSBJUElzIHdpdGgKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIHN5bmNo
cm9uaXplX3JjdV9leHBlZGl0ZWQoKSB3ZSB1c2UgY2FsbF9yY3UoKSArCj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBjb21wbGV0aW9uLgo+ICovCj4gaW5pdF9jb21wbGV0aW9u
KCZjLmNvbXBsZXRpb24pOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjYWxsX3Jj
dSgmYy5yY3VfaGVhZCwgdmhvc3RfZmluaXNoX3ZxX2ludmFsaWRhdGlvbik7Cj4gd2FpdF9mb3Jf
Y29tcGxldGlvbigmYy5jb21wbGV0aW9uKTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgdmhvc3Rfc2V0X21hcF9kaXJ0eSh2cSwgbWFwLCBpbmRleCk7Cj4gdmhvc3RfbWFwX3VucHJl
ZmV0Y2gobWFwKTsKPiDCoMKgwqDCoMKgwqDCoCB9Cj4gCj4gPwoKV2h5IHdvdWxkIHRoYXQgYmUg
ZmFzdGVyIHRoYW4gc3luY2hyb25pemVfcmN1PwoKCgo+IAo+ID4gVGhlcmUncyBvbmUgb3RoZXIg
dGhpbmcgdGhhdCBib3RoZXJzIG1lLCBhbmQgdGhhdCBpcyB0aGF0Cj4gPiBmb3IgbGFyZ2Ugcmlu
Z3Mgd2hpY2ggYXJlIG5vdCBwaHlzaWNhbGx5IGNvbnRpZ3VvdXMKPiA+IHdlIGRvbid0IGltcGxl
bWVudCB0aGUgb3B0aW1pemF0aW9uLgo+ID4gCj4gPiBGb3Igc3VyZSwgdGhhdCBjYW4gd2FpdCwg
YnV0IEkgdGhpbmsgZXZlbnR1YWxseSB3ZSBzaG91bGQKPiA+IHZtYXAgbGFyZ2UgcmluZ3MuCj4g
Cj4gCj4gWWVzLCB3b3J0aCB0byB0cnkuIEJ1dCB1c2luZyBkaXJlY3QgbWFwIGhhcyBpdHMgb3du
IGFkdmFudGFnZTogaXQgY2FuIHVzZQo+IGh1Z2VwYWdlIHRoYXQgdm1hcCBjYW4ndAo+IAo+IFRo
YW5rcwoKU3VyZSwgc28gd2UgY2FuIGRvIHRoYXQgZm9yIHNtYWxsIHJpbmdzLgoKLS0gCk1TVAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
