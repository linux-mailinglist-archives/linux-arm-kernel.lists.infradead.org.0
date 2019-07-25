Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D68C74921
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 10:29:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o/AfKef2SVVYjT31u2Pr/RmHhoazelYDRQzvHkGTW5Q=; b=G3PcaQV7cPIOfe
	hTbIvOkgMTx5y+E28rRWznlchbfLuOAWnUYPsIi3d+xokY9Yq3qRreIPnlZwtECxEfs0jECoLCnJX
	D41O8WDuzsr89+tinQdGd2Wc5HOtb0VQ768AGkTCdUe+48QNQ1CmS5x3TV+8yTGHJvsqdWEkOwetv
	+lBEeIybt3J6OQrxRhdkYrgns54msKA+zE5OTh/KhxGHNWHo7++VAVAAQclrBwLsWO4/KELd1K8ll
	GrA40JXIs14tZbNYP8kG7lRTxZvDVL8F1X6PjU/hLh4UtfyAgkI8c+6M6Bu07vdREcj/wFgwMY8uG
	eF0nwJWGgqYW1lv0yckg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqZ7Z-0001MJ-Uy; Thu, 25 Jul 2019 08:29:06 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqZ7L-0001Ky-0F
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 08:28:52 +0000
Received: by mail-qt1-f171.google.com with SMTP id r6so44035764qtt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 01:28:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=W9gVDQuWc00uLJaqP5LZiohnBPPDA5P8er6pMpADl+8=;
 b=CEFypJzWdDddwLv7/GcuG2tGCQqGJtYfZeWU8POB1S+H0jhiHsANjyp3f9es4XkEFB
 eZe367y7Y4n8bcnlxa45HUV1QlKANSHRAovExZUeRdH8jblMt45DsjJidv80YS5yhRMl
 oU9m2s+jgdNrFAzYNP2KRxd+2aQI9+IkepRn+6qISjXFEWZowBpAAFr/y2aONGXyy6qY
 CYZXWTYqZNHOv/VSBgBve6wA6FZ0Yh60I7O9qBoF56Uslexg2v5m1+f3hqOXQELTZKm5
 5qMf3GpX0Z6HJAvS3FTSfwzptXpJfZdP56wk8sa2oyUIE7iO0S4Y8b1g61NFVaVVjkQ6
 7faA==
X-Gm-Message-State: APjAAAWzWoLAKTaxOCh/+hf78Kf7Q6dS6VtQnms/P3NAUNoG8BEycQVo
 7Xd+MbP3861Ijtgvovs8046LYw==
X-Google-Smtp-Source: APXvYqypxxYh1SBYrdx7sBULiRodWoRyZYhZUU0NIqTYlxg9WD9pqSvNPlHTYL+xZ+kptrKYhL64aw==
X-Received: by 2002:aed:3667:: with SMTP id e94mr55831866qtb.382.1564043329003; 
 Thu, 25 Jul 2019 01:28:49 -0700 (PDT)
Received: from redhat.com (bzq-79-181-91-42.red.bezeqint.net. [79.181.91.42])
 by smtp.gmail.com with ESMTPSA id
 z21sm19762286qto.48.2019.07.25.01.28.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 01:28:48 -0700 (PDT)
Date: Thu, 25 Jul 2019 04:28:39 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190725042651-mutt-send-email-mst@kernel.org>
References: <20190723010019-mutt-send-email-mst@kernel.org>
 <b4696f2e-678a-bdb2-4b7c-fb4ce040ec2a@redhat.com>
 <20190723032024-mutt-send-email-mst@kernel.org>
 <1d14de4d-0133-1614-9f64-3ded381de04e@redhat.com>
 <20190723035725-mutt-send-email-mst@kernel.org>
 <3f4178f1-0d71-e032-0f1f-802428ceca59@redhat.com>
 <20190723051828-mutt-send-email-mst@kernel.org>
 <caff362a-e208-3468-3688-63e1d093a9d3@redhat.com>
 <20190725012149-mutt-send-email-mst@kernel.org>
 <55e8930c-2695-365f-a07b-3ad169654d28@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55e8930c-2695-365f-a07b-3ad169654d28@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_012851_051897_40DC0B6E 
X-CRM114-Status: GOOD (  29.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.171 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.171 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

T24gVGh1LCBKdWwgMjUsIDIwMTkgYXQgMDM6NDM6NDFQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiAKPiBPbiAyMDE5LzcvMjUg5LiL5Y2IMTo1MiwgTWljaGFlbCBTLiBUc2lya2luIHdyb3Rl
Ogo+ID4gT24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDk6MzE6MzVQTSArMDgwMCwgSmFzb24gV2Fu
ZyB3cm90ZToKPiA+ID4gT24gMjAxOS83LzIzIOS4i+WNiDU6MjYsIE1pY2hhZWwgUy4gVHNpcmtp
biB3cm90ZToKPiA+ID4gPiBPbiBUdWUsIEp1bCAyMywgMjAxOSBhdCAwNDo0OTowMVBNICswODAw
LCBKYXNvbiBXYW5nIHdyb3RlOgo+ID4gPiA+ID4gT24gMjAxOS83LzIzIOS4i+WNiDQ6MTAsIE1p
Y2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPiA+ID4gPiA+ID4gT24gVHVlLCBKdWwgMjMsIDIwMTkg
YXQgMDM6NTM6MDZQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90ZToKPiA+ID4gPiA+ID4gPiBPbiAy
MDE5LzcvMjMg5LiL5Y2IMzoyMywgTWljaGFlbCBTLiBUc2lya2luIHdyb3RlOgo+ID4gPiA+ID4g
PiA+ID4gPiA+IFJlYWxseSBsZXQncyBqdXN0IHVzZSBrZnJlZV9yY3UuIEl0J3Mgd2F5IGNsZWFu
ZXI6IGZpcmUgYW5kIGZvcmdldC4KPiA+ID4gPiA+ID4gPiA+ID4gTG9va3Mgbm90LCB5b3UgbmVl
ZCByYXRlIGxpbWl0IHRoZSBmaXJlIGFzIHlvdSd2ZSBmaWd1cmVkIG91dD8KPiA+ID4gPiA+ID4g
PiA+IFNlZSB0aGUgZGlzY3Vzc2lvbiB0aGF0IGZvbGxvd2VkLiBCYXNpY2FsbHkgbm8sIGl0J3Mg
Z29vZCBlbm91Z2gKPiA+ID4gPiA+ID4gPiA+IGFscmVhZHkgYW5kIGlzIG9ubHkgZ29pbmcgdG8g
YmUgYmV0dGVyLgo+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+IEFuZCBpbiBmYWN0
LAo+ID4gPiA+ID4gPiA+ID4gPiB0aGUgc3luY2hyb25pemF0aW9uIGlzIG5vdCBldmVuIG5lZWRl
ZCwgZG9lcyBpdCBoZWxwIGlmIEkgbGVhdmUgYSBjb21tZW50IHRvCj4gPiA+ID4gPiA+ID4gPiA+
IGV4cGxhaW4/Cj4gPiA+ID4gPiA+ID4gPiBMZXQncyB0cnkgdG8gZmlndXJlIGl0IG91dCBpbiB0
aGUgbWFpbCBmaXJzdC4gSSdtIHByZXR0eSBzdXJlIHRoZQo+ID4gPiA+ID4gPiA+ID4gY3VycmVu
dCBsb2dpYyBpcyB3cm9uZy4KPiA+ID4gPiA+ID4gPiBIZXJlIGlzIHdoYXQgdGhlIGNvZGUgd2hh
dCB0byBhY2hpZXZlOgo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IC0gVGhlIG1hcCB3YXMg
cHJvdGVjdGVkIGJ5IFJDVQo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IC0gV3JpdGVycyBh
cmU6IE1NVSBub3RpZmllciBpbnZhbGlkYXRpb24gY2FsbGJhY2tzLCBmaWxlIG9wZXJhdGlvbnMg
KGlvY3Rscwo+ID4gPiA+ID4gPiA+IGV0YyksIG1ldGFfcHJlZmV0Y2ggKGRhdGFwYXRoKQo+ID4g
PiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IC0gUmVhZGVycyBhcmU6IG1lbW9yeSBhY2Nlc3Nvcgo+
ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IFdyaXRlciBhcmUgc3luY2hyb25pemVkIHRocm91
Z2ggbW11X2xvY2suIFJDVSBpcyB1c2VkIHRvIHN5bmNocm9uaXplZAo+ID4gPiA+ID4gPiA+IGJl
dHdlZW4gd3JpdGVycyBhbmQgcmVhZGVycy4KPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBU
aGUgc3luY2hyb25pemVfcmN1KCkgaW4gdmhvc3RfcmVzZXRfdnFfbWFwcygpIHdhcyB1c2VkIHRv
IHN5bmNocm9uaXplZCBpdAo+ID4gPiA+ID4gPiA+IHdpdGggcmVhZGVycyAobWVtb3J5IGFjY2Vz
c29ycykgaW4gdGhlIHBhdGggb2YgZmlsZSBvcGVyYXRpb25zLiBCdXQgaW4gdGhpcwo+ID4gPiA+
ID4gPiA+IGNhc2UsIHZxLT5tdXRleCB3YXMgYWxyZWFkeSBoZWxkLCB0aGlzIG1lYW5zIGl0IGhh
cyBiZWVuIHNlcmlhbGl6ZWQgd2l0aAo+ID4gPiA+ID4gPiA+IG1lbW9yeSBhY2Nlc3Nvci4gVGhh
dCdzIHdoeSBJIHRoaW5rIGl0IGNvdWxkIGJlIHJlbW92ZWQgc2FmZWx5Lgo+ID4gPiA+ID4gPiA+
IAo+ID4gPiA+ID4gPiA+IEFueXRoaW5nIEkgbWlzcyBoZXJlPwo+ID4gPiA+ID4gPiA+IAo+ID4g
PiA+ID4gPiBTbyBpbnZhbGlkYXRlIGNhbGxiYWNrcyBuZWVkIHRvIHJlc2V0IHRoZSBtYXAsIGFu
ZCB0aGV5IGRvCj4gPiA+ID4gPiA+IG5vdCBoYXZlIHZxIG11dGV4LiBIb3cgY2FuIHRoZXkgZG8g
dGhpcyBhbmQgZnJlZQo+ID4gPiA+ID4gPiB0aGUgbWFwIHNhZmVseT8gVGhleSBuZWVkIHN5bmNo
cm9uaXplX3JjdSBvciBrZnJlZV9yY3UgcmlnaHQ/Cj4gPiA+ID4gPiBJbnZhbGlkYXRpb24gY2Fs
bGJhY2tzIG5lZWQgYnV0IGZpbGUgb3BlcmF0aW9ucyAoZS5nIGlvY3RsKSBub3QuCj4gPiA+ID4g
PiAKPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBBbmQgSSB3b3JyeSBzb21ld2hhdCB0aGF0IHN5bmNo
cm9uaXplX3JjdSBpbiBhbiBNTVUgbm90aWZpZXIKPiA+ID4gPiA+ID4gaXMgYSBwcm9ibGVtLCBN
TVUgbm90aWZpZXJzIGFyZSBzdXBwb3NlZCB0byBiZSBxdWljazoKPiA+ID4gPiA+IExvb2tzIG5v
dCwgc2luY2UgaXQgY2FuIGFsbG93IHRvIGJlIGJsb2NrZWQgYW5kIGxvdHMgb2YgZHJpdmVyIGRl
cGVuZHMgb24KPiA+ID4gPiA+IHRoaXMuIChFLmcgbW11X25vdGlmaWVyX3JhbmdlX2Jsb2NrYWJs
ZSgpKS4KPiA+ID4gPiBSaWdodCwgdGhleSBjYW4gYmxvY2suIFNvIHdoeSBkb24ndCB3ZSB0YWtl
IGEgVlEgbXV0ZXggYW5kIGJlCj4gPiA+ID4gZG9uZSB3aXRoIGl0IHRoZW4/IE5vIFJDVSB0cmlj
a3MuCj4gPiA+IAo+ID4gPiBUaGlzIGlzIGhvdyBJIHdhbnQgdG8gZ28gd2l0aCBSRkMgYW5kIFYx
LiBCdXQgSSBlbmQgdXAgd2l0aCBkZWFkbG9jayBiZXR3ZWVuCj4gPiA+IHZxIGxvY2tzIGFuZCBz
b21lIE1NIGludGVybmFsIGxvY2tzLiBTbyBJIGRlY2lkZSB0byB1c2UgUkNVIHdoaWNoIGlzIDEw
MCUKPiA+ID4gdW5kZXIgdGhlIGNvbnRyb2wgb2Ygdmhvc3QuCj4gPiA+IAo+ID4gPiBUaGFua3MK
PiA+IEFuZCBJIGd1ZXNzIHRoZSBkZWFkbG9jayBpcyBiZWNhdXNlIEdVUCBpcyB0YWtpbmcgbW11
IGxvY2tzIHdoaWNoIGFyZQo+ID4gdGFrZW4gb24gbW11IG5vdGlmaWVyIHBhdGgsIHJpZ2h0Pwo+
IAo+IAo+IFllcywgYnV0IGl0J3Mgbm90IHRoZSBvbmx5IGxvY2suIEkgZG9uJ3QgcmVtZW1iZXIg
dGhlIGRldGFpbHMsIGJ1dCBJIGNhbgo+IGNvbmZpcm0gSSBtZWV0IGlzc3VlcyB3aXRoIG9uZSBv
ciB0d28gb3RoZXIgbG9ja3MuCj4gCj4gCj4gPiAgICBIb3cgYWJvdXQgd2UgYWRkIGEgc2VxbG9j
ayBhbmQgdGFrZQo+ID4gdGhhdCBpbiBpbnZhbGlkYXRlIGNhbGxiYWNrcz8gIFdlIGNhbiB0aGVu
IGRyb3AgdGhlIFZRIGxvY2sgYmVmb3JlIEdVUCwKPiA+IGFuZCB0YWtlIGl0IGFnYWluIGltbWVk
aWF0ZWx5IGFmdGVyLgo+ID4gCj4gPiBzb21ldGhpbmcgbGlrZQo+ID4gCWlmICghdnFfbWV0YV9t
YXBwZWQodnEpKSB7Cj4gPiAJCXZxX21ldGFfc2V0dXAoJnVhZGRycyk7Cj4gPiAJCW11dGV4X3Vu
bG9jayh2cS0+bXV0ZXgpCj4gPiAJCXZxX21ldGFfbWFwKCZ1YWRkcnMpOwo+IAo+IAo+IFRoZSBw
cm9ibGVtIGlzIHRoZSB2cSBhZGRyZXNzIGNvdWxkIGJlIGNoYW5nZWQgYXQgdGhpcyB0aW1lLgo+
IAo+IAo+ID4gCQltdXRleF9sb2NrKHZxLT5tdXRleCkKPiA+IAo+ID4gCQkvKiByZWNoZWNrIGJv
dGggc29jay0+cHJpdmF0ZV9kYXRhIGFuZCBzZXFsb2NrIGNvdW50LiAqLwo+ID4gCQlpZiBjaGFu
Z2VkIC0gYmFpbCBvdXQKPiA+IAl9Cj4gPiAKPiA+IEFuZCBhbHNvIHJlcXVpcmVzIHRoYXQgVlEg
dWFkZHJzIGlzIGRlZmluZWQgbGlrZSB0aGlzOgo+ID4gLSB3cml0ZXJzIG11c3QgaGF2ZSBib3Ro
IHZxIG11dGV4IGFuZCBkZXYgbXV0ZXgKPiA+IC0gcmVhZGVycyBtdXN0IGhhdmUgZWl0aGVyIHZx
IG11dGV4IG9yIGRldiBtdXRleAo+ID4gCj4gPiAKPiA+IFRoYXQncyBhIGJpZyBjaGFuZ2UgdGhv
dWdoLiBGb3Igbm93LCBob3cgYWJvdXQgc3dpdGNoaW5nIHRvIGEgcGVyLXZxIFNSQ1U/Cj4gPiBU
aGF0IGlzIG9ubHkgYSBsaXR0bGUgYml0IG1vcmUgZXhwZW5zaXZlIHRoYW4gUkNVLCBhbmQgd2UK
PiA+IGNhbiB1c2Ugc3luY2hyb25pemVfc3JjdV9leHBlZGl0ZWQuCj4gPiAKPiAKPiBDb25zaWRl
ciB3ZSBzd2l0Y2ggdG8gdXNlIGtmcmVlX3JjdSgpLCB3aGF0J3MgdGhlIGFkdmFudGFnZSBvZiBw
ZXItdnEgU1JDVT8KPiAKPiBUaGFua3MKCgpJIHRob3VnaHQgd2UgZXN0YWJsaXNoZWQgdGhhdCBu
b3RpZmllcnMgbXVzdCB3YWl0IGZvcgphbGwgcmVhZGVycyB0byBmaW5pc2ggYmVmb3JlIHRoZXkg
bWFyayBwYWdlIGRpcnR5LCB0bwpwcmV2ZW50IHBhZ2UgZnJvbSBiZWNvbWluZyBkaXJ0eSBhZnRl
ciBhZGRyZXNzCmhhcyBiZWVuIGludmFsaWRhdGVkLgpSaWdodD8KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
