Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73523419CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 03:00:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xao2VifvozCVX2IQNtMlTd3IOfup1uP/Z3oi+VSgPB8=; b=L/U4Sors8IwVJ+
	r2UC3BkL3eH6XLDzAswjPpVBETq2eONCfQeCT5y8hT3neqYkZd5KD4rDj8/audocfh0fBAMAsJAqg
	zR4w/h+fUGBbCupymJ8wmbzdmMFUGpO6ZqNObYoS5r8tfgzL0VXW29ZMtM+hhdPktqCF1iTz1V8E4
	nSwVIP1s0wbvHyu4b+69Glw5p1V/vz9762TbwjkVlqrk3pdL3YUhEBqSflJlIv4pIUzIpwyqqSNYG
	ZS/p5dLioorni9Tac3g68PrT9jJnijeKLtQIn+RKR7LVuhYdOMmNFeBs9wuMDg9UfBkep0dt9zAX1
	QgruEepBpESiwT8vmbPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1harcp-0005jS-H8; Wed, 12 Jun 2019 01:00:27 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1harcf-0005hq-MG
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 01:00:18 +0000
Received: by mail-qt1-x842.google.com with SMTP id h21so16871678qtn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 18:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=kGCYosRguXq4elehaPFOveEwgPcblLIUUh1tydiqlv0=;
 b=h5JueMEL7krh+Lb8jEoJH4vzMieW9Ynm0WMNBzCOFjIznSTZa7pc332ziUaX7BXKJ3
 pXHzyqkatzuzJneWeW7w9rbl7kg/VRwj+ApC7uDfSQVDTMekZStH2lvgviPm+9ZBTMEq
 GdXEzbiYevwqVMZ8KpQZLdc7zGrbM8OLA7wKKtZFEwnDI0sEaF9/U9YRVe0P9ViIjz0l
 DWoeIeyBgstsX0aObxmXHDz8HDCvqyLf3IefResEwj6NIad/+82M3bmTIiT/CdFAYgHA
 mMy1WBGFRyGkbArSW8o2UvGVTGq84vm/oxhq2k7cCB21LRqAbT9pxMDOVEVxkVq6UuvM
 uUag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=kGCYosRguXq4elehaPFOveEwgPcblLIUUh1tydiqlv0=;
 b=Q9u4obHpiqR1LjmZZzxBbkUaExRLuSr+A4/9JkvijTkPfuRzt6MWB11kUz34c3nYNU
 5DU85XVs7/GPhBqIIBe7papB0UVffFgVACOaI7/7MwF+f6whhXjBfOqXmpt3pYBxTrQ9
 r8ujbeEDAPbaP1ltg6WMWnu6qRt1v1NRDH1YCunuijbmVpHPc942jDxpeXSH/uw1HUET
 rF9zCfYIAQTHPrLcm5YXfAMqHS4oEz+RAVJXP4WofX9YRwpEtZRm1rPZrA3cV0dhBSId
 Vb3TUzF7I7k3Sl6rm6zYTHMCqQM73212kwwMX1Y49HAk3WMDssO3mhfJjv7ny2zuKlPU
 Cd9w==
X-Gm-Message-State: APjAAAUJkMEFCnxaWCQoToGZV/khSffaXzR0s8fkzAy12cc/BacduJLg
 sgDfLNKywj6np9MGzmqArs6Udw==
X-Google-Smtp-Source: APXvYqxZuRR2hJ2pElF2t/9lGshSakTd6RGMsXt59FPQH7rSPXBg4udJBQ0orZJzB6AngdKEjeJO+w==
X-Received: by 2002:ac8:2af8:: with SMTP id c53mr22206710qta.387.1560301214655; 
 Tue, 11 Jun 2019 18:00:14 -0700 (PDT)
Received: from skullcanyon ([192.222.193.21])
 by smtp.gmail.com with ESMTPSA id d188sm7473200qkf.40.2019.06.11.18.00.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 18:00:14 -0700 (PDT)
Message-ID: <09e608da8abeb4cd9c84bf9f559af2438540eb2b.camel@ndufresne.ca>
Subject: Re: [PATCH v7 2/4] media: videodev2: add
 V4L2_FMT_FLAG_FIXED_RESOLUTION
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Philipp Zabel <p.zabel@pengutronix.de>, Hans Verkuil
 <hverkuil@xs4all.nl>,  Maxime Jourdan <mjourdan@baylibre.com>, Mauro
 Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>
Date: Tue, 11 Jun 2019 21:00:12 -0400
In-Reply-To: <1d2adae2b6d0f370f17b9bac94ae4e9207dccbad.camel@ndufresne.ca>
References: <20190531093126.26956-1-mjourdan@baylibre.com>
 <20190531093126.26956-3-mjourdan@baylibre.com>
 <9731b2db-efd4-87d0-c48d-87adec433747@xs4all.nl>
 <1560243127.13886.3.camel@pengutronix.de>
 <1d2adae2b6d0f370f17b9bac94ae4e9207dccbad.camel@ndufresne.ca>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_180017_729349_27C79BE6 
X-CRM114-Status: GOOD (  22.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgbWFyZGkgMTEganVpbiAyMDE5IMOgIDIwOjU4IC0wNDAwLCBOaWNvbGFzIER1ZnJlc25lIGEg
w6ljcml0IDoKPiBMZSBtYXJkaSAxMSBqdWluIDIwMTkgw6AgMTA6NTIgKzAyMDAsIFBoaWxpcHAg
WmFiZWwgYSDDqWNyaXQgOgo+ID4gT24gV2VkLCAyMDE5LTA2LTA1IGF0IDE1OjM5ICswMjAwLCBI
YW5zIFZlcmt1aWwgd3JvdGU6Cj4gPiA+IEhpIE1heGltZSwKPiA+ID4gCj4gPiA+IEkgYW0gd29u
ZGVyaW5nIGlmIHRoaXMgZmxhZyBzaG91bGRuJ3QgYmUgaW52ZXJ0ZWQ6IHlvdSBzZXQKPiA+ID4g
VjRMMl9GTVRfRkxBR19EWU5fUkVTT0xVVElPTiBpZiBkeW5hbWljIHJlc29sdXRpb24gaXMgc3Vw
cG9ydGVkLAo+ID4gPiBvdGhlcndpc2UgaXQgaXNuJ3QuCj4gPiA+IAo+ID4gPiBDYW4gYWxsIHRo
ZSBleGlzdGluZyBtYWlubGluZWQgY29kZWMgZHJpdmVycyBoYW5kbGUgbWlkc3RyZWFtCj4gPiA+
IHJlc29sdXRpb24gY2hhbmdlcz8KPiA+ID4gCj4gPiA+IHM1cC1tZmMsIHZlbnVzIGFuZCBtZWRp
YXRlayBjYW4sIGJ1dCBJIHNlZSBubyBTT1VSQ0VfQ0hBTkdFIGV2ZW50IGluCj4gPiA+IHRoZSBj
b2RhIGRyaXZlcnMsIHNvIEkgc3VzcGVjdCB0aGF0IHRoYXQgY2FuJ3QgaGFuZGxlIHRoaXMuCj4g
PiA+IAo+ID4gPiBQaGlsaXBwLCB3aGF0IGlzIHRoZSBzdGF0dXMgb2YgdGhlIGNvZGEgZHJpdmVy
IGZvciBkeW5hbWljIHJlc29sdXRpb24KPiA+ID4gY2hhbmdlcz8KPiA+IAo+ID4gRlRSLCB0byBt
eSBrbm93bGVkZ2UgdGhlcmUgaXMgbm8gZHluYW1pYyByZXNvbHV0aW9uIGNoYW5nZSBzdXBwb3J0
IGluCj4gPiB0aGUgZmlybXdhcmUsIGFzIHRoZXJlIGlzIG5vIHNpZ25hbCAoaW50ZXJydXB0IG5v
ciBwaWN0dXJlIHJ1biByZXR1cm4KPiA+IHZhbHVlKSB0byBpbmRpY2F0ZSB0aGF0IGRpZmZlcmVu
dCBoZWFkZXJzIHdlcmUgcGFyc2VkLgo+ID4gCj4gPiBJIGFtIHBsYW5uaW5nIHRvIGFkZCB0aGUg
aW5pdGlhbCBzb3VyY2UgY2hhbmdlIGV2ZW50IHJlcXVpcmVkIGJ5IHRoZQo+ID4gY3VycmVudCBk
ZWNvZGVyIEFQSSBkb2N1bWVudGF0aW9uLCBidXQgSSBhbSBhZnJhaWQgdGhlcmUgd2lsbCBiZSBu
bwo+ID4gc3VwcG9ydCBmb3Igc291cmNlIGNoYW5nZXMgZHVlIHRvIG1pZC1zdHJlYW0gcmVzb2x1
dGlvbiBjaGFuZ2VzIGR1ZSB0bwo+ID4gZmlybXdhcmUgbGltaXRhdGlvbnMuCj4gCj4gSSdtIGZh
ciBmcm9tIGZhbWlsaWFyIHdpdGggdGhpcyBJUCwgYnV0IGF0IGxlYXN0IG9uIENPREE5ODgsIEkg
Y2FuIHJlYWQKPiBmcm9tIHRoZSBtYW51YWwgdGhhdCB0aGUgd29ya2Zsb3cgaXMgdG8gZmlyc3Qg
Z3Vlc3MgdGhlIGFsbG9jYXRpb24sIGFuZAo+IGlmIHlvdSBndWVzcyBpdCB3cm9uZywgYW4gZXJy
b3IgaXMgcmV0dXJuZWQuIFdoYXQgc2VlbXMgdG8gbWF0Y2ggdGhlCj4gU09VUkNFX0NIQU5HRSBl
dmVudCBpbiB0aGF0IHZlcnNpb24gd291bGQgYmUgaW4gdGhlIHBpY3R1cmUgc3RhdHVzCj4gcmVn
aXN0ZXIsIHRoZSBiaXQgMjAsIHdoaWNoIGlzIGRvY3VtZW50ZWQgYXMgdHJpZ2dlcmVkIGlmIHRo
ZSBzdHJlYW0KPiByZXF1aXJlcyBiaWdnZXIgYnVmZmVycyBzaXplcywgb3IgbW9yZSBidWZmZXJz
LiBBZnRlciBmaXhpbmcgdGhhdCwgeW91Cj4gc2hvdWxkLCBpZiBJIHJlYWQgY29ycmVjdGx5LCBy
ZXRyeS4KPiAKPiBJdCBkb2VzIG5vdCBub3RpZnkgaWYgdGhlIGJ1ZmZlcnMgYXJlIHRvbyBsYXJn
ZSwgYnV0IHlvdSBjYW4gZGV0ZWN0LAo+IHNpbmNlIHRoZXJlIGlzIHJlZ2lzdGVyIHdpdGggdGhl
IG91dHB1dCBzdHJlYW0gaW5mb3JtYXRpb24uIFRoaXMKPiBiYXNpY2FsbHkgbWVhbnMgdGhhdCBm
b3IgVjRMMiByZXN0cmljdGlvbiwgeW91J2QgaGF2ZSB0byBib3VuY2UgdGhlCj4gYnVmZmVycyBv
biBmcmFtZSBzaXplIGJvdW5kYXJ5IG9yIHNvbWV0aGluZyBsaWtlIHRoaXPDqQo+IAo+IFRoaXMg
d29ya2Zsb3cgaXMgdmVyeSBzaW1pbGFyIHRvIGhvdyBPTVggd29ya3MsIGJ1dCBWNEwyIGlzIGV2
ZW4gbGVzcwo+IGZsZXhpYmxlIG9uIGFsbG9jYXRpb24gdnMgZm9ybWF0LCBmb3JjaW5nIG1vcmUg
cmUtYWxsb2NhdGlvbi4KCk9oLCBhY3R1YWxseSwgeW91IGFscmVhZHkgYm91bmNlIHRoZSBidWZm
ZXJzIHRocm91Z2ggdGhlIGNvbG9yCmNvbnZlcnRlciwgc28gSSBndWVzcyB0aGlzIGNhbiBhbGwg
YmUgaGlkZGVuIGludGVybmFsbHkuCgo+IAo+ID4gcmVnYXJkcwo+ID4gUGhpbGlwcAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
