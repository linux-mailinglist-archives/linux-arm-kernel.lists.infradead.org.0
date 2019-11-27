Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EAC10B4E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 18:54:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cQAEroS4dhyOIuiP/I6BiihXDgGnLJn9bIUiWJ9FW6M=; b=LPsxsWRNdaj897
	ns1G36nClbftitCP0WI6GnCtUnCVr6vIC9vqDzObeeyz+ZCuz3PPGvzkJCD7jrUnZZ91zJItEXkwo
	04+Iwh69hUmwuJ1OhLt4k08IpssngWPVH24EvarNjZu4/MU83Ki6qIqrzbMT+pcqCfeGhWRPB34tY
	mrjEpdd0wDrvCvycMSsQcHbVumqbXNN/6XwK9pMamOn0QaouxicKOLMjuOn2kJ1zLjWPXCgTk5PDc
	ffRIebTmti55d7wGJaCjblgWsp7GuFwXfrHn/9B6nb7ZyKIbYsnimmjTLqwhGTiquD0lfUGaF7rkt
	3ews6roYbQLbdt1prfZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia1WJ-000592-F9; Wed, 27 Nov 2019 17:54:31 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia1W5-00058N-9C
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 17:54:19 +0000
Received: by mail-oi1-x244.google.com with SMTP id 14so20827851oir.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 09:54:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=j1uL8EIFRnejXKC3Wu4TGj0S2WQZnkPOERdW/pVhOGI=;
 b=XjtFrydqZvajT2xaWwxrGVw5dMcspa11VOieabyc83RmYo52u9CDBM+Tg+4R1wGxmS
 zXy+0IDfzohGFbGbmfHMIn1hkJmeDlPe9a3HpgLe//nmlJ3HM0mHCJQekfdmUXH2OjKu
 tXOV8/SrUiBEC6rI4+hu3AHQBjjHljBc8VWBc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=j1uL8EIFRnejXKC3Wu4TGj0S2WQZnkPOERdW/pVhOGI=;
 b=eASWjcAV3OySRPK0jqrl5M8MeORIy2oyPNkCQ2Tdy6U5Bwn1Ku098CQTSPo4LUH0G5
 pwwEGTg/RyW293Ph0XWUgzficuMkFNCn7AEhju5WzQ1Zrf7m26nKvZmTlruFnP5u+Ln4
 ii4BvBnXM5GfzAQ29S/6RGNKiFUgMJp4FLWbWbFywe1baN0s8PjpSLh/5exYfErvFUHi
 k81eyiym0zMRDv8a4CNZ/nlICQ9VY5q7+w/ER7Ve1VvCzOgh1ai0WakN6zvGz3fN91sH
 9RVY7n13PspuLGwPieAxl8NjgZVyh8qm3H4HI3jxgExKzDPiOLWkODiwSSRhg0JQnjB6
 ahLA==
X-Gm-Message-State: APjAAAXffqhKDflLprrQCn/C2WH4iR3sRCDuzFv0EtoGWCBmT8EyY0+s
 TvhiFsxmBidvzI++l3IWOdBiKyBzcoV5DC7TxfCXhg==
X-Google-Smtp-Source: APXvYqwVFUzqNetwlZXOe9z3UkV3RiAERScaVC0MdcPeV0v+pUktwGMzsLTQ/eMaCUfdx0xMqtcb1M3spLdauLRjAIo=
X-Received: by 2002:a05:6808:4cf:: with SMTP id
 a15mr5069107oie.132.1574877255963; 
 Wed, 27 Nov 2019 09:54:15 -0800 (PST)
MIME-Version: 1.0
References: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
 <20191115092120.4445-5-daniel.vetter@ffwll.ch>
 <023053cb-9f72-c29a-ec2f-cf7532ff5c43@collabora.com>
In-Reply-To: <023053cb-9f72-c29a-ec2f-cf7532ff5c43@collabora.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 27 Nov 2019 18:54:04 +0100
Message-ID: <CAKMK7uGw3y2h6VhH1JgjERmwSJRw0WP5OSnmh8cFtVEXe0Hr1A@mail.gmail.com>
Subject: Re: [PATCH 4/8] drm/rockchip: Use drm_gem_fb_create_with_dirty
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_095417_383557_5C76CF81 
X-CRM114-Status: GOOD (  23.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBOb3YgMjcsIDIwMTkgYXQgNjozMyBQTSBBbmRyemVqIFBpZXRyYXNpZXdpY3oKPGFu
ZHJ6ZWoucEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IEhpIERhbmllbCwKPgo+IEFmdGVyIGFw
cGx5aW5nIHRoaXMgcGF0Y2ggdGhlcmUgYXJlIHNvbWUgc2xpZ2h0IGRpZmZlcmVuY2VzCj4gaW4g
dGhlIGVmZmVjdGl2ZSBiZWhhdmlvciBvZiB0aGUgY29kZS4KPgo+IEkgY2FuJ3QgdGVsbCBpZiB0
aGV5IGFyZSBpbXBvcnRhbnQsIHBsZWFzZSBzZWUgYmVsb3cuCj4KPiBBbmRyemVqCj4KPiBXIGRu
aXUgMTUuMTEuMjAxOSBvIDEwOjIxLCBEYW5pZWwgVmV0dGVyIHBpc3plOgo+ID4gSWYgcm9ja2No
aXAgd291bGQgc3dpdGNoIG92ZXIgdG8gdGhlIGdlbmVyaWMgZmJkZXYgc2V0dXAgd2UgY291bGQK
PiA+IGdyYWJhZ2UgY29sbGVjdCBldmVuIG1vcmUgb2YgYWxsIHRoaXMgY29kZSAoYWxsIG9mIHRo
ZSByZW1haW5pbmcgZmIKPiA+IGhhbmRsaW5nIGNvZGUgcmVhbGx5KS4KPiA+Cj4gPiBTaWduZWQt
b2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiA+IENjOiBT
YW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgo+ID4gQ2M6ICJIZWlrbyBTdMO8Ym5lciIg
PGhlaWtvQHNudGVjaC5kZT4KPiA+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKPiA+IENjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiAtLS0K
PiA+ICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9mYi5jIHwgNTQgKy0t
LS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDUzIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBfZHJtX2ZiLmMKPiA+IGluZGV4IGNhMDEyMzRjMDM3Yy4uMDgxZGJkYWEwYjA3IDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9mYi5jCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMKPiA+IEBAIC01
Myw2NCArNTMsMTIgQEAgcm9ja2NoaXBfZmJfYWxsb2Moc3RydWN0IGRybV9kZXZpY2UgKmRldiwg
Y29uc3Qgc3RydWN0IGRybV9tb2RlX2ZiX2NtZDIgKm1vZGVfY20KPiA+ICAgICAgIHJldHVybiBm
YjsKPiA+ICAgfQo+ID4KPiA+IC1zdGF0aWMgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqCj4gPiAt
cm9ja2NoaXBfdXNlcl9mYl9jcmVhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgc3RydWN0IGRy
bV9maWxlICpmaWxlX3ByaXYsCj4gPiAtICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0
IGRybV9tb2RlX2ZiX2NtZDIgKm1vZGVfY21kKQo+ID4gLXsKPiA+IC0gICAgIGNvbnN0IHN0cnVj
dCBkcm1fZm9ybWF0X2luZm8gKmluZm8gPSBkcm1fZ2V0X2Zvcm1hdF9pbmZvKGRldiwKPiA+IC0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIG1vZGVfY21kKTsKPiA+IC0gICAgIHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiOwo+ID4g
LSAgICAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmpzW1JPQ0tDSElQX01BWF9GQl9CVUZGRVJd
Owo+ID4gLSAgICAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmo7Cj4gPiAtICAgICBpbnQgbnVt
X3BsYW5lcyA9IG1pbl90KGludCwgaW5mby0+bnVtX3BsYW5lcywgUk9DS0NISVBfTUFYX0ZCX0JV
RkZFUik7Cj4gPiAtICAgICBpbnQgcmV0Owo+ID4gLSAgICAgaW50IGk7Cj4gPiAtCj4gPiAtICAg
ICBmb3IgKGkgPSAwOyBpIDwgbnVtX3BsYW5lczsgaSsrKSB7Cj4KPiBkcm1fZ2VtX2ZiX2NyZWF0
ZV93aXRoX2Z1bmNzKCksIGlmIG5vIGVycm9yIGhhcHBlbnMsCj4gaXRlcmF0ZXMgZXhhY3RseSBp
bmZvLT5udW1fcGxhbmVzIHRpbWVzLAo+IGJ1dCB0aGUgZnVuY3Rpb24gYmVpbmcgcmVtb3ZlZCBo
ZXJlIGl0ZXJhdGVzCj4gbWluX3QoaW50LCBpbmZvLT5udW1fcGxhbmVzLCAzKSB0aW1lcy4KPgo+
IElzIGl0IGVuc3VyZWQgZWFybGllciBlbHNld2hlcmUgdGhhdCBpbmZvLT5udW1fcGxhbmVzIGRv
ZXMgbm90IGV4Y2VlZCAzPwoKcm9ja2NoaXAgb25seSBzdXBwb3J0cyBmb3VyY2MgY29kZXMgd2l0
aCBhdCBtb3N0IDMgcGxhbmVzLiBOb3cgd2UncmUKbm90IGNoZWNraW5nIGZvciB0aGF0IGhlcmUs
IGl0J2xsIG9ubHkgYmUgY2F1Z2h0IGxhdGVyIG9uIGluIHRoZQpBVE9NSUMgaW9jdGwuIFNvIHdv
dWxkIGJlIG5pY2UgdG8gZml4LCBidXQgaXQncyBhIHByZWV4aXN0aW5nIGJ1ZyAodGhlCnRvZG8u
cnN0IHBhdGNoIGhhcyBhbiBpZGVhIGhvdyB0byBmaXggdGhpcyBmb3IgZ29vZCkuIFNvIHJlYWxs
eQpkb2Vzbid0IG1hdHRlciB3aGV0aGVyIHdlIGZpbGwgb3V0IHRoZSA0dGggcGxhbmUgb3Igbm90
LiBBbHNvIGlpcmMgd2UKZG9uJ3QgaGF2ZSBhbnkgZm91cmNjIGNvZGUgd2l0aCA0IHBsYW5lcyBy
aWdodCBub3cuCgo+ID4gLSAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgd2lkdGggPSBtb2RlX2Nt
ZC0+d2lkdGggLyAoaSA/IGluZm8tPmhzdWIgOiAxKTsKPiA+IC0gICAgICAgICAgICAgdW5zaWdu
ZWQgaW50IGhlaWdodCA9IG1vZGVfY21kLT5oZWlnaHQgLyAoaSA/IGluZm8tPnZzdWIgOiAxKTsK
PiA+IC0gICAgICAgICAgICAgdW5zaWduZWQgaW50IG1pbl9zaXplOwo+ID4gLQo+ID4gLSAgICAg
ICAgICAgICBvYmogPSBkcm1fZ2VtX29iamVjdF9sb29rdXAoZmlsZV9wcml2LCBtb2RlX2NtZC0+
aGFuZGxlc1tpXSk7Cj4gPiAtICAgICAgICAgICAgIGlmICghb2JqKSB7Cj4gPiAtICAgICAgICAg
ICAgICAgICAgICAgRFJNX0RFVl9FUlJPUihkZXYtPmRldiwKPiA+IC0gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICJGYWlsZWQgdG8gbG9va3VwIEdFTSBvYmplY3RcbiIpOwo+ID4g
LSAgICAgICAgICAgICAgICAgICAgIHJldCA9IC1FTlhJTzsKPiA+IC0gICAgICAgICAgICAgICAg
ICAgICBnb3RvIGVycl9nZW1fb2JqZWN0X3VucmVmZXJlbmNlOwo+ID4gLSAgICAgICAgICAgICB9
Cj4gPiAtCj4gPiAtICAgICAgICAgICAgIG1pbl9zaXplID0gKGhlaWdodCAtIDEpICogbW9kZV9j
bWQtPnBpdGNoZXNbaV0gKwo+ID4gLSAgICAgICAgICAgICAgICAgICAgIG1vZGVfY21kLT5vZmZz
ZXRzW2ldICsKPiA+IC0gICAgICAgICAgICAgICAgICAgICB3aWR0aCAqIGluZm8tPmNwcFtpXTsK
Pgo+IFRoaXMgY29tcHV0YXRpb24gaW4gZHJtX2dlbV9mYl9jcmVhdGVfd2l0aF9mdW5jcyBsb29r
cyBsaWtlIHRoaXM6Cj4KPiAgICAgICAgICAgICAgICAgbWluX3NpemUgPSAoaGVpZ2h0IC0gMSkg
KiBtb2RlX2NtZC0+cGl0Y2hlc1tpXQo+ICAgICAgICAgICAgICAgICAgICAgICAgICArIGRybV9m
b3JtYXRfaW5mb19taW5fcGl0Y2goaW5mbywgaSwgd2lkdGgpCj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICsgbW9kZV9jbWQtPm9mZnNldHNbaV07Cj4KPiBQZXJoYXBzIHRoYXQncyBhY3R1YWxs
eSB0aGUgc2FtZSB0aGluZz8KPgo+ID4gLQo+ID4gLSAgICAgICAgICAgICBpZiAob2JqLT5zaXpl
IDwgbWluX3NpemUpIHsKPiA+IC0gICAgICAgICAgICAgICAgICAgICBkcm1fZ2VtX29iamVjdF9w
dXRfdW5sb2NrZWQob2JqKTsKPiA+IC0gICAgICAgICAgICAgICAgICAgICByZXQgPSAtRUlOVkFM
Owo+ID4gLSAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyX2dlbV9vYmplY3RfdW5yZWZlcmVu
Y2U7Cj4gPiAtICAgICAgICAgICAgIH0KPiA+IC0gICAgICAgICAgICAgb2Jqc1tpXSA9IG9iajsK
PiA+IC0gICAgIH0KPiA+IC0KPiA+IC0gICAgIGZiID0gcm9ja2NoaXBfZmJfYWxsb2MoZGV2LCBt
b2RlX2NtZCwgb2JqcywgaSk7Cj4gPiAtICAgICBpZiAoSVNfRVJSKGZiKSkgewo+ID4gLSAgICAg
ICAgICAgICByZXQgPSBQVFJfRVJSKGZiKTsKPiA+IC0gICAgICAgICAgICAgZ290byBlcnJfZ2Vt
X29iamVjdF91bnJlZmVyZW5jZTsKPiA+IC0gICAgIH0KPiA+IC0KPiA+IC0gICAgIHJldHVybiBm
YjsKPiA+IC0KPiA+IC1lcnJfZ2VtX29iamVjdF91bnJlZmVyZW5jZToKPiA+IC0gICAgIGZvciAo
aS0tOyBpID49IDA7IGktLSkKPiA+IC0gICAgICAgICAgICAgZHJtX2dlbV9vYmplY3RfcHV0X3Vu
bG9ja2VkKG9ianNbaV0pOwo+ID4gLSAgICAgcmV0dXJuIEVSUl9QVFIocmV0KTsKPiA+IC19Cj4g
PiAtCj4gPiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX21vZGVfY29uZmlnX2hlbHBlcl9mdW5j
cyByb2NrY2hpcF9tb2RlX2NvbmZpZ19oZWxwZXJzID0gewo+ID4gICAgICAgLmF0b21pY19jb21t
aXRfdGFpbCA9IGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF90YWlsX3JwbSwKPiA+ICAgfTsKPiA+
Cj4gPiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX21vZGVfY29uZmlnX2Z1bmNzIHJvY2tjaGlw
X2RybV9tb2RlX2NvbmZpZ19mdW5jcyA9IHsKPiA+IC0gICAgIC5mYl9jcmVhdGUgPSByb2NrY2hp
cF91c2VyX2ZiX2NyZWF0ZSwKPiA+ICsgICAgIC5mYl9jcmVhdGUgPSBkcm1fZ2VtX2ZiX2NyZWF0
ZSwKPgo+IFRoYXQgd2F5IHlvdSBsZWF2ZSBvdXQgdGhlIC0+ZGlydHkoKSBjYWxsYmFjayBmcm9t
Cj4gc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXJfZnVuY3Mgcm9ja2NoaXBfZHJt
X2ZiX2Z1bmNzCgpPb3BzIGluZGVlZC4gU3ViamVjdCBvZiB0aGlzIHBhdGNoIGlzIHJpZ2h0LCBi
dXQgdGhlIGFjdHVhbCBwYXRjaAppc24ndCwgdGhpcyBzaG91bGQgYmUgZHJtX2dlbV9mYl9jcmVh
dGVfd2l0aF9kaXJ0eSwgdGhlbiBpdCdzIGEgMTAwJQptYXRjaGluZyByZXBsYWNlbWVudC4gVGhh
bmtzIGZvciBjYXRjaGluZyB0aGlzLCBJJ2xsIHNlbmQgb3V0IGFuCnVwZGF0ZWQgcGF0Y2guCi1E
YW5pZWwKCj4KPiBJJ2Qgc2F5IGluc3RlYWQ6Cj4KPiBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICoK
PiByb2NrY2hpcF9nZW1fZmJfY3JlYXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHN0cnVjdCBk
cm1fZmlsZSAqZmlsZSwKPiAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBkcm1f
bW9kZV9mYl9jbWQyICptb2RlX2NtZCkKPiB7Cj4gICAgICAgICByZXR1cm4gZHJtX2dlbV9mYl9j
cmVhdGVfd2l0aF9mdW5jcyhkZXYsIGZpbGUsIG1vZGVfY21kLAo+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgJnJvY2tjaGlwX2RybV9mYl9mdW5jcyk7Cj4gfQo+
Cj4gYW5kIHRoZW4KPgo+ICsgICAgICAgLmZiX2NyZWF0ZSA9IHJvY2tjaGlwX2dlbV9mYl9jcmVh
dGUsCj4KPiA+ICAgICAgIC5vdXRwdXRfcG9sbF9jaGFuZ2VkID0gZHJtX2ZiX2hlbHBlcl9vdXRw
dXRfcG9sbF9jaGFuZ2VkLAo+ID4gICAgICAgLmF0b21pY19jaGVjayA9IGRybV9hdG9taWNfaGVs
cGVyX2NoZWNrLAo+ID4gICAgICAgLmF0b21pY19jb21taXQgPSBkcm1fYXRvbWljX2hlbHBlcl9j
b21taXQsCj4gPgo+CgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVs
IENvcnBvcmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
