Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58BB07C290
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 15:01:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:Mime-Version:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7+gU5ZlFDUaScTou+zXR7J/Rvic//6laO3LVcsjJwTU=; b=H5RxUeVukC85+Q
	h+mB1pCbMdYM3DaFbe7o5e5K3dS0MDf+QinDrjlzfHJHU5lQ7hEUNDKMFoHIMGZ/EAI0SKxJc/nQH
	ZWsCGu0oocUt9Nj/NK/oxXGXzK8SOefIrTJpiIEeZqG7zFruGErPnyDYPspRoGW5SqkRfh/MkwPVe
	CLkqJ0WIqLWOFgFzultL7pb5QD9EEr4Bu40UdmYa5othKoJgZfr9VCDSrrLgDjCaFVuw4nWsEjU80
	2G0enPPlR3baJZ4x4ezXOoO37JX425zzHkOdDHE6FWGDo/H5SunCxgh3oNJICb2yhw15eUfbnHDeH
	L90nxEhW7XNEEoauofBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsoE8-0001J5-0j; Wed, 31 Jul 2019 13:01:08 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsoDl-00013N-Na
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 13:00:47 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190731130041euoutp01b558815f340af6ba087a8563b5ced471~2f3B8JDjS0881108811euoutp016
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 13:00:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190731130041euoutp01b558815f340af6ba087a8563b5ced471~2f3B8JDjS0881108811euoutp016
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1564578041;
 bh=JsNx/ZHEmr3Y2W5flkOZT9mCwHMMMBpVVzqBmYmdqj4=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=O81N3EBanXKhvrBiNL3HGbRPygFqWv+/GNOjmSI1LWSKREZgWXY+5Wfn2h5vAwWHh
 eShQVuIDr6YgXvdSZxAlZqVji8Mh5Em5vCvq5Nxb0ix8kCQg8+r0wd9y4IC1vVj+Fx
 mXmhrNUx2dG7MZIvlhW8iH9MD8qoNOnMAW3TwdGA=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190731130041eucas1p19e84a77affa1a2061579443d5423efb3~2f3BbLg3y1122111221eucas1p1o;
 Wed, 31 Jul 2019 13:00:41 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 71.D1.04298.8F0914D5; Wed, 31
 Jul 2019 14:00:40 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190731130040eucas1p2859eec7357e99337050852d040001a4c~2f3AvP8YZ3273932739eucas1p2o;
 Wed, 31 Jul 2019 13:00:40 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190731130040eusmtrp2eadfe3c7214c3ff3e30fd51299504523~2f3AululZ0511305113eusmtrp2v;
 Wed, 31 Jul 2019 13:00:40 +0000 (GMT)
X-AuditID: cbfec7f2-f2dff700000010ca-4f-5d4190f80d53
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id F0.1A.04146.8F0914D5; Wed, 31
 Jul 2019 14:00:40 +0100 (BST)
Received: from AMDC3555 (unknown [106.120.51.67]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20190731130039eusmtip1d0339c5e75c212b63d4c8db640cbc5eb~2f3AFK48M2353623536eusmtip1P;
 Wed, 31 Jul 2019 13:00:39 +0000 (GMT)
Message-ID: <bda10bcc66aae96355e74c4739229d72bcc95b0d.camel@partner.samsung.com>
Subject: Re: [RFC PATCH 01/11] devfreq: exynos-bus: Extract
 exynos_bus_profile_init()
From: Artur =?UTF-8?Q?=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 31 Jul 2019 15:00:38 +0200
In-Reply-To: <20190724190741.GD14346@kozik-lap>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMKsWRmVeSWpSXmKPExsWy7djP87o/JjjGGpzfZGyxccZ6VovrX56z
 Wsw/co7V4srX92wW0/duYrOYdH8Ci8X58xvYLTY9vsZqcXnXHDaLz71HGC1mnN/HZLH2yF12
 i9uNK9gsZkx+yebA57FpVSebx51re9g87ncfZ/LYvKTeo2/LKkaPz5vkAtiiuGxSUnMyy1KL
 9O0SuDKeLO5kK9gvWLH9cgtbA2MTXxcjJ4eEgInE1r4mpi5GLg4hgRWMEmcOfmCBcL4wStz8
 sIMNwvnMKLHg+gxGmJYn35aygthCAssZJWbfEIQoesYosbLtBQtIglcgQOLE6U5mEFtYIFzi
 5bIvbCA2m4C7xL/nV8CaRQQ0Ja7//c4K0swscIBZ4uDeqewgCRYBVYlNP6aAFXEK6EvsWPaK
 GWKzjsTbU31ACziAFghK/N0hDBJmFpCXaN46mxlkjoTALXaJQ493sUDUu0jMu30FqldY4tXx
 LewQtozE/53zmSDsYomnO++zQjQ3MEpsWnYEqsFa4vDxi6wgy5iBLl2/Sx8i7Chx5PcpZpCw
 hACfxI23ghA38ElM2jYdKswr0dEmBGFqSSz4HQ3RKCHRtPoa1GwPif371jFNYFSchfDLLCS/
 zELYuoCReRWjeGppcW56arFhXmq5XnFibnFpXrpecn7uJkZg0jr97/inHYxfLyUdYhTgYFTi
 4T3R6RgrxJpYVlyZe4hRgoNZSYR3sbh9rBBvSmJlVWpRfnxRaU5q8SFGaQ4WJXHeaoYH0UIC
 6YklqdmpqQWpRTBZJg5OqQZGDvkp3oLrF+0/eXO718nG2qsRn+w66mxT5rPaXmtr4O2vMtuY
 m3vTJuVe+8qr/8/aWfm5/EvdN/VxxqSEXZtCgmNuex3aWdmfoWz5Z+/yksj/2oeOFNgpMLv2
 uq2YET57/wSjVy3/Te5Ixf/oefXyDfuuCGfxjKn5j+t1Fe6XbXcJ8vefN/GZEktxRqKhFnNR
 cSIAKDdUblYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDIsWRmVeSWpSXmKPExsVy+t/xu7o/JjjGGtw5wW+xccZ6VovrX56z
 Wsw/co7V4srX92wW0/duYrOYdH8Ci8X58xvYLTY9vsZqcXnXHDaLz71HGC1mnN/HZLH2yF12
 i9uNK9gsZkx+yebA57FpVSebx51re9g87ncfZ/LYvKTeo2/LKkaPz5vkAtii9GyK8ktLUhUy
 8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S9DKeLO5kK9gvWLH9cgtb
 A2MTXxcjJ4eEgInEk29LWbsYuTiEBJYySuxsv84OkZCQ+Lj+BiuELSzx51oXG0TRE0aJyZM2
 M4IkeAUCJE6c7mQGsYUFwiVeLvvCBmKzCbhL/Ht+BaxZREBT4vrf72AbmAUOMUusO9ANlmAR
 UJXY9GMKmM0poC+xY9krZogNXxklLj9sApvKDNTduv031Ek6Em9P9bF0MXIAbRaU+LtDGKJE
 XqJ562zmCYyCs5B0zEKomoWkagEj8ypGkdTS4tz03GJDveLE3OLSvHS95PzcTYzAmNx27Ofm
 HYyXNgYfYhTgYFTi4T3R6RgrxJpYVlyZe4hRgoNZSYR3sbh9rBBvSmJlVWpRfnxRaU5q8SFG
 U6B/JjJLiSbnA9NFXkm8oamhuYWlobmxubGZhZI4b4fAwRghgfTEktTs1NSC1CKYPiYOTqkG
 RkOLbx4M2RXmzson/N3W898OXPj/o/9UvSNr3Yy74iLeuqzKMbMXTaxcvdMytLXz4d4rMftj
 uAXCUgp/3Mq+KFsR26VdUfKhm0UsQvvC3yr1EH/GGq8FT34dX+MpEddfwZLc8UK/U4G7Kj3a
 yt/x5S5L16qP2yoOzoi+fXlS/durvOd+r1RWYinOSDTUYi4qTgQAuqR9dt8CAAA=
X-CMS-MailID: 20190731130040eucas1p2859eec7357e99337050852d040001a4c
X-Msg-Generator: CA
X-RootMTR: 20190723122022eucas1p1266d90873d564894bd852c20140f8474
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190723122022eucas1p1266d90873d564894bd852c20140f8474
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122022eucas1p1266d90873d564894bd852c20140f8474@eucas1p1.samsung.com>
 <20190723122016.30279-2-a.swigon@partner.samsung.com>
 <20190724190741.GD14346@kozik-lap>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_060045_972630_C55EC564 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org,
 =?UTF-8?Q?Bart=C5=82omiej_?= =?UTF-8?Q?=C5=BBo=C5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>, sw0312.kim@samsung.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, myungjoo.ham@samsung.com,
 georgi.djakov@linaro.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBXZWQsIDIwMTktMDctMjQgYXQgMjE6MDcgKzAyMDAsIEtyenlzenRvZiBLb3psb3dz
a2kgd3JvdGU6Cj4gT24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDI6MjA6MDZQTSArMDIwMCwgQXJ0
dXIgxZp3aWdvxYQgd3JvdGU6Cj4gPiBUaGlzIHBhdGNoIGFkZHMgYSBuZXcgc3RhdGljIGZ1bmN0
aW9uLCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdCgpLCBleHRyYWN0ZWQKPiA+IGZyb20gZXh5bm9z
X2J1c19wcm9iZSgpLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5z
d2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZGV2ZnJlcS9l
eHlub3MtYnVzLmMgfCAxMDYgKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0KPiA+
ICAxIGZpbGUgY2hhbmdlZCwgNjAgaW5zZXJ0aW9ucygrKSwgNDYgZGVsZXRpb25zKC0pCj4gPiAK
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIGIvZHJpdmVycy9k
ZXZmcmVxL2V4eW5vcy1idXMuYwo+ID4gaW5kZXggZDlmMzc3OTEyYzEwLi5kOGYxZWZhZjJkNDkg
MTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4gPiArKysgYi9k
cml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4gPiBAQCAtMzcyLDEyICszNzIsNjkgQEAgc3Rh
dGljIGludCBleHlub3NfYnVzX3BhcnNlX29mKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCj4gPiAg
CXJldHVybiByZXQ7Cj4gPiAgfQo+ID4gIAo+ID4gK3N0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9m
aWxlX2luaXQoc3RydWN0IGV4eW5vc19idXMgKmJ1cywKPiA+ICsJCQkJICAgc3RydWN0IGRldmZy
ZXFfZGV2X3Byb2ZpbGUgKnByb2ZpbGUpCj4gPiArewo+ID4gKwlzdHJ1Y3QgZGV2aWNlICpkZXYg
PSBidXMtPmRldjsKPiA+ICsJc3RydWN0IGRldmZyZXFfc2ltcGxlX29uZGVtYW5kX2RhdGEgKm9u
ZGVtYW5kX2RhdGE7Cj4gPiArCWludCByZXQ7Cj4gPiArCj4gPiArCS8qIEluaXRpYWxpemUgdGhl
IHN0cnVjdCBwcm9maWxlIGFuZCBnb3Zlcm5vciBkYXRhIGZvciBwYXJlbnQgZGV2aWNlICovCj4g
PiArCXByb2ZpbGUtPnBvbGxpbmdfbXMgPSA1MDsKPiA+ICsJcHJvZmlsZS0+dGFyZ2V0ID0gZXh5
bm9zX2J1c190YXJnZXQ7Cj4gPiArCXByb2ZpbGUtPmdldF9kZXZfc3RhdHVzID0gZXh5bm9zX2J1
c19nZXRfZGV2X3N0YXR1czsKPiA+ICsJcHJvZmlsZS0+ZXhpdCA9IGV4eW5vc19idXNfZXhpdDsK
PiA+ICsKPiA+ICsJb25kZW1hbmRfZGF0YSA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqb25k
ZW1hbmRfZGF0YSksIEdGUF9LRVJORUwpOwo+ID4gKwlpZiAoIW9uZGVtYW5kX2RhdGEpIHsKPiA+
ICsJCXJldCA9IC1FTk9NRU07Cj4gPiArCQlnb3RvIGVycjsKPiAKPiBKdXN0IHJldHVybiBwcm9w
ZXIgZXJyb3IgY29kZS4gTGVzcyBsaW5lcywgb2J2aW91cyBjb2RlIHNpbmNlIHlvdSBkbyBub3QK
PiBoYXZlIGFueSBjbGVhbnVwIGluIGVycm9yIHBhdGguCgpJIHdhcyBhZHZpc2VkIHRvIGF2b2lk
IG1vZGlmeWluZyBjb2RlIGJlaW5nIG1vdmVkIChpbiBvbmUgcGF0Y2gpLiBJIGRvIG1ha2UKY2hh
bmdlcyBpbiB0aGVzZSBwbGFjZXMgaW4gcGF0Y2ggMDQvMTEsIGkuZS4gY2hhbmdlIHRoZSBvcmln
aW5hbCBsYWJlbCAnZXJyJyB0bwonb3V0Jy4gV2hhdCdzIHlvdXIgb3BpbmlvbiBvbiBtYWtpbmcg
dGhlIHByb3Bvc2VkIGNoYW5nZXMgdG8gcGF0Y2hlcyAwMSBhbmQgMDIKKHMvZ290byBlcnIvcmV0
dXJuIHJldC8pIGluIHBhdGNoIDA0IGluc3RlYWQ/Cgo+ID4gKwo+ID4gKwkvKiBSZWdpc3RlciBv
cHBfbm90aWZpZXIgdG8gY2F0Y2ggdGhlIGNoYW5nZSBvZiBPUFAgICovCj4gPiArCXJldCA9IGRl
dm1fZGV2ZnJlcV9yZWdpc3Rlcl9vcHBfbm90aWZpZXIoZGV2LCBidXMtPmRldmZyZXEpOwo+ID4g
KwlpZiAocmV0IDwgMCkgewo+ID4gKwkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gcmVnaXN0ZXIg
b3BwIG5vdGlmaWVyXG4iKTsKPiA+ICsJCWdvdG8gZXJyOwo+IAo+IFRoZSBzYW1lIC0gcmV0dXJu
IGVyci4KPiAKPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCgpCZXN0IHJlZ2FyZHMsCi0tIApB
cnR1ciDFmndpZ2/FhApTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kClNhbXN1bmcgRWxlY3Ry
b25pY3MKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
