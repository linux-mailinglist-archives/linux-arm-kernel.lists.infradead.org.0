Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A83B874689
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 07:53:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1vyRLN4sDRi7OwQc/8zgrBtTH5x2UH+EKq/ByYkMoKA=; b=l29quaNy1Z7KTZ
	cvS+Wyl2ejML4nrkpnUWvKQ8OwwngtfwdVn0fXCjKwy1gQzVCHm+cBy3TwwSffZ6EPEdLzprDFKWs
	iSXa6MuskyDoESnc7pXmuOgflChtsTzKBHK7NG69UkeiK5pLze/LN9ZSZO9p4tBr3JuTK9UIx8b2Y
	ttbh9i/IJI3gTPbDtkCl3YUMVfM9JhV6kYW2nz7rZUKfioJIksGaW4gDXC0jn7BfrB4efuru4YqFS
	D4Xqspo2pFxZwKo0Y8HoWpUGozv/PDlBKWT+7joxpzM9agcF1rGFbtQXJdGAkbi612SD9BY+K5IJ9
	xD6sIPvWx03ntRaQdb2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqWgw-0000Iv-8B; Thu, 25 Jul 2019 05:53:26 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqWga-0000IW-NF
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 05:53:06 +0000
Received: by mail-qk1-f195.google.com with SMTP id d15so35561861qkl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 22:53:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=JO71JAUQG8v5NWS9aFNJS8lKMgEFxdUfgocNmFAYG40=;
 b=GRRmeW8hlTE7VFIJl+LjDrj5/KY565dyMOyQa9rvaM1ANl5mDJgaCa/UcDkVNF45PH
 n6vNdSYIblgwT9iv7QKNUyQ7rmtLpGsNiwCkjV176vDdLc+wRANzwT9apPWoWLMiZz+R
 K5ybz5fXFJeB5mtULg0+KQ2Sh4H3uaXXjXlY4GkYmqlCLuRAI8PDsThRDUpBH0miOaPt
 ZU7rhBbqVhpEubavHMgw7YEbyxXD4l4CdaqwJPcFdTxehplC57XZArvGD/R+AmZLX5YG
 1FfbAaRTlHlw0Bi/DNaW3HTzmioGNzUzSijZKRjO/UlffmA4a7njo/aClxBBmHLjPZcU
 nSfQ==
X-Gm-Message-State: APjAAAWxmQcJrhB2mq7GqAQlu1Vl1aQTYDEL32kmG6fkf6VWIy+9M5ED
 dH4x268S80ox++N6vb0iKvCH4w==
X-Google-Smtp-Source: APXvYqzSdjCF8KfvPtVJQN/Fq3QA2lZs756ix2x+aw9grYNxhN50Gd3YATAXPDQIBe87A663Tz88jg==
X-Received: by 2002:a37:91c2:: with SMTP id
 t185mr56548270qkd.193.1564033982538; 
 Wed, 24 Jul 2019 22:53:02 -0700 (PDT)
Received: from redhat.com (bzq-79-181-91-42.red.bezeqint.net. [79.181.91.42])
 by smtp.gmail.com with ESMTPSA id
 p3sm33849924qta.12.2019.07.24.22.52.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 22:53:01 -0700 (PDT)
Date: Thu, 25 Jul 2019 01:52:53 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190725012149-mutt-send-email-mst@kernel.org>
References: <20190722040230-mutt-send-email-mst@kernel.org>
 <4bd2ff78-6871-55f2-44dc-0982ffef3337@redhat.com>
 <20190723010019-mutt-send-email-mst@kernel.org>
 <b4696f2e-678a-bdb2-4b7c-fb4ce040ec2a@redhat.com>
 <20190723032024-mutt-send-email-mst@kernel.org>
 <1d14de4d-0133-1614-9f64-3ded381de04e@redhat.com>
 <20190723035725-mutt-send-email-mst@kernel.org>
 <3f4178f1-0d71-e032-0f1f-802428ceca59@redhat.com>
 <20190723051828-mutt-send-email-mst@kernel.org>
 <caff362a-e208-3468-3688-63e1d093a9d3@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <caff362a-e208-3468-3688-63e1d093a9d3@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_225304_760973_7450B351 
X-CRM114-Status: GOOD (  25.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
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

T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDk6MzE6MzVQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiAKPiBPbiAyMDE5LzcvMjMg5LiL5Y2INToyNiwgTWljaGFlbCBTLiBUc2lya2luIHdyb3Rl
Ogo+ID4gT24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDQ6NDk6MDFQTSArMDgwMCwgSmFzb24gV2Fu
ZyB3cm90ZToKPiA+ID4gT24gMjAxOS83LzIzIOS4i+WNiDQ6MTAsIE1pY2hhZWwgUy4gVHNpcmtp
biB3cm90ZToKPiA+ID4gPiBPbiBUdWUsIEp1bCAyMywgMjAxOSBhdCAwMzo1MzowNlBNICswODAw
LCBKYXNvbiBXYW5nIHdyb3RlOgo+ID4gPiA+ID4gT24gMjAxOS83LzIzIOS4i+WNiDM6MjMsIE1p
Y2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPiA+ID4gPiA+ID4gPiA+IFJlYWxseSBsZXQncyBqdXN0
IHVzZSBrZnJlZV9yY3UuIEl0J3Mgd2F5IGNsZWFuZXI6IGZpcmUgYW5kIGZvcmdldC4KPiA+ID4g
PiA+ID4gPiBMb29rcyBub3QsIHlvdSBuZWVkIHJhdGUgbGltaXQgdGhlIGZpcmUgYXMgeW91J3Zl
IGZpZ3VyZWQgb3V0Pwo+ID4gPiA+ID4gPiBTZWUgdGhlIGRpc2N1c3Npb24gdGhhdCBmb2xsb3dl
ZC4gQmFzaWNhbGx5IG5vLCBpdCdzIGdvb2QgZW5vdWdoCj4gPiA+ID4gPiA+IGFscmVhZHkgYW5k
IGlzIG9ubHkgZ29pbmcgdG8gYmUgYmV0dGVyLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBB
bmQgaW4gZmFjdCwKPiA+ID4gPiA+ID4gPiB0aGUgc3luY2hyb25pemF0aW9uIGlzIG5vdCBldmVu
IG5lZWRlZCwgZG9lcyBpdCBoZWxwIGlmIEkgbGVhdmUgYSBjb21tZW50IHRvCj4gPiA+ID4gPiA+
ID4gZXhwbGFpbj8KPiA+ID4gPiA+ID4gTGV0J3MgdHJ5IHRvIGZpZ3VyZSBpdCBvdXQgaW4gdGhl
IG1haWwgZmlyc3QuIEknbSBwcmV0dHkgc3VyZSB0aGUKPiA+ID4gPiA+ID4gY3VycmVudCBsb2dp
YyBpcyB3cm9uZy4KPiA+ID4gPiA+IEhlcmUgaXMgd2hhdCB0aGUgY29kZSB3aGF0IHRvIGFjaGll
dmU6Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IC0gVGhlIG1hcCB3YXMgcHJvdGVjdGVkIGJ5IFJDVQo+
ID4gPiA+ID4gCj4gPiA+ID4gPiAtIFdyaXRlcnMgYXJlOiBNTVUgbm90aWZpZXIgaW52YWxpZGF0
aW9uIGNhbGxiYWNrcywgZmlsZSBvcGVyYXRpb25zIChpb2N0bHMKPiA+ID4gPiA+IGV0YyksIG1l
dGFfcHJlZmV0Y2ggKGRhdGFwYXRoKQo+ID4gPiA+ID4gCj4gPiA+ID4gPiAtIFJlYWRlcnMgYXJl
OiBtZW1vcnkgYWNjZXNzb3IKPiA+ID4gPiA+IAo+ID4gPiA+ID4gV3JpdGVyIGFyZSBzeW5jaHJv
bml6ZWQgdGhyb3VnaCBtbXVfbG9jay4gUkNVIGlzIHVzZWQgdG8gc3luY2hyb25pemVkCj4gPiA+
ID4gPiBiZXR3ZWVuIHdyaXRlcnMgYW5kIHJlYWRlcnMuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRo
ZSBzeW5jaHJvbml6ZV9yY3UoKSBpbiB2aG9zdF9yZXNldF92cV9tYXBzKCkgd2FzIHVzZWQgdG8g
c3luY2hyb25pemVkIGl0Cj4gPiA+ID4gPiB3aXRoIHJlYWRlcnMgKG1lbW9yeSBhY2Nlc3NvcnMp
IGluIHRoZSBwYXRoIG9mIGZpbGUgb3BlcmF0aW9ucy4gQnV0IGluIHRoaXMKPiA+ID4gPiA+IGNh
c2UsIHZxLT5tdXRleCB3YXMgYWxyZWFkeSBoZWxkLCB0aGlzIG1lYW5zIGl0IGhhcyBiZWVuIHNl
cmlhbGl6ZWQgd2l0aAo+ID4gPiA+ID4gbWVtb3J5IGFjY2Vzc29yLiBUaGF0J3Mgd2h5IEkgdGhp
bmsgaXQgY291bGQgYmUgcmVtb3ZlZCBzYWZlbHkuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IEFueXRo
aW5nIEkgbWlzcyBoZXJlPwo+ID4gPiA+ID4gCj4gPiA+ID4gU28gaW52YWxpZGF0ZSBjYWxsYmFj
a3MgbmVlZCB0byByZXNldCB0aGUgbWFwLCBhbmQgdGhleSBkbwo+ID4gPiA+IG5vdCBoYXZlIHZx
IG11dGV4LiBIb3cgY2FuIHRoZXkgZG8gdGhpcyBhbmQgZnJlZQo+ID4gPiA+IHRoZSBtYXAgc2Fm
ZWx5PyBUaGV5IG5lZWQgc3luY2hyb25pemVfcmN1IG9yIGtmcmVlX3JjdSByaWdodD8KPiA+ID4g
SW52YWxpZGF0aW9uIGNhbGxiYWNrcyBuZWVkIGJ1dCBmaWxlIG9wZXJhdGlvbnMgKGUuZyBpb2N0
bCkgbm90Lgo+ID4gPiAKPiA+ID4gCj4gPiA+ID4gQW5kIEkgd29ycnkgc29tZXdoYXQgdGhhdCBz
eW5jaHJvbml6ZV9yY3UgaW4gYW4gTU1VIG5vdGlmaWVyCj4gPiA+ID4gaXMgYSBwcm9ibGVtLCBN
TVUgbm90aWZpZXJzIGFyZSBzdXBwb3NlZCB0byBiZSBxdWljazoKPiA+ID4gTG9va3Mgbm90LCBz
aW5jZSBpdCBjYW4gYWxsb3cgdG8gYmUgYmxvY2tlZCBhbmQgbG90cyBvZiBkcml2ZXIgZGVwZW5k
cyBvbgo+ID4gPiB0aGlzLiAoRS5nIG1tdV9ub3RpZmllcl9yYW5nZV9ibG9ja2FibGUoKSkuCj4g
PiBSaWdodCwgdGhleSBjYW4gYmxvY2suIFNvIHdoeSBkb24ndCB3ZSB0YWtlIGEgVlEgbXV0ZXgg
YW5kIGJlCj4gPiBkb25lIHdpdGggaXQgdGhlbj8gTm8gUkNVIHRyaWNrcy4KPiAKPiAKPiBUaGlz
IGlzIGhvdyBJIHdhbnQgdG8gZ28gd2l0aCBSRkMgYW5kIFYxLiBCdXQgSSBlbmQgdXAgd2l0aCBk
ZWFkbG9jayBiZXR3ZWVuCj4gdnEgbG9ja3MgYW5kIHNvbWUgTU0gaW50ZXJuYWwgbG9ja3MuIFNv
IEkgZGVjaWRlIHRvIHVzZSBSQ1Ugd2hpY2ggaXMgMTAwJQo+IHVuZGVyIHRoZSBjb250cm9sIG9m
IHZob3N0Lgo+IAo+IFRoYW5rcwoKQW5kIEkgZ3Vlc3MgdGhlIGRlYWRsb2NrIGlzIGJlY2F1c2Ug
R1VQIGlzIHRha2luZyBtbXUgbG9ja3Mgd2hpY2ggYXJlCnRha2VuIG9uIG1tdSBub3RpZmllciBw
YXRoLCByaWdodD8gIEhvdyBhYm91dCB3ZSBhZGQgYSBzZXFsb2NrIGFuZCB0YWtlCnRoYXQgaW4g
aW52YWxpZGF0ZSBjYWxsYmFja3M/ICBXZSBjYW4gdGhlbiBkcm9wIHRoZSBWUSBsb2NrIGJlZm9y
ZSBHVVAsCmFuZCB0YWtlIGl0IGFnYWluIGltbWVkaWF0ZWx5IGFmdGVyLgoKc29tZXRoaW5nIGxp
a2UKCWlmICghdnFfbWV0YV9tYXBwZWQodnEpKSB7CgkJdnFfbWV0YV9zZXR1cCgmdWFkZHJzKTsK
CQltdXRleF91bmxvY2sodnEtPm11dGV4KQoJCXZxX21ldGFfbWFwKCZ1YWRkcnMpOwoJCW11dGV4
X2xvY2sodnEtPm11dGV4KQoKCQkvKiByZWNoZWNrIGJvdGggc29jay0+cHJpdmF0ZV9kYXRhIGFu
ZCBzZXFsb2NrIGNvdW50LiAqLwoJCWlmIGNoYW5nZWQgLSBiYWlsIG91dAoJfQoKQW5kIGFsc28g
cmVxdWlyZXMgdGhhdCBWUSB1YWRkcnMgaXMgZGVmaW5lZCBsaWtlIHRoaXM6Ci0gd3JpdGVycyBt
dXN0IGhhdmUgYm90aCB2cSBtdXRleCBhbmQgZGV2IG11dGV4Ci0gcmVhZGVycyBtdXN0IGhhdmUg
ZWl0aGVyIHZxIG11dGV4IG9yIGRldiBtdXRleAoKClRoYXQncyBhIGJpZyBjaGFuZ2UgdGhvdWdo
LiBGb3Igbm93LCBob3cgYWJvdXQgc3dpdGNoaW5nIHRvIGEgcGVyLXZxIFNSQ1U/ClRoYXQgaXMg
b25seSBhIGxpdHRsZSBiaXQgbW9yZSBleHBlbnNpdmUgdGhhbiBSQ1UsIGFuZCB3ZQpjYW4gdXNl
IHN5bmNocm9uaXplX3NyY3VfZXhwZWRpdGVkLgoKLS0gCk1TVAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
