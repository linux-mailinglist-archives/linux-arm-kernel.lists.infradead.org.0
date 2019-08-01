Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A355B7D6CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 09:59:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:Mime-Version:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e3TFnRf3zYtgMsS+v7qfvJCHPsyt7sYXkzh8dx/cVvs=; b=IUg8swXAsv946n
	cX3uHxG5hJG6qSUHHTVOsmvzOeyT7Bdcdq+8KempMOxObq/GkD9fMvjHklS74529uM8yYm5mcISvT
	1E6cVnCThXiZfeo/LLLvWCbVlkOymUUk+hAFLV+EGYs2FWuEeER9KN+GGSYfDTK9w1AHyJVn7NoQd
	VngTElPUjbqtof0ZrkqUQiOse6+q3XnNViXdtP/JHpTSph5f1Uzp60YPPi6NzBOZT2cExMxkV2utL
	me2kUaU3jAwYVZbyptbcoReULqOConaWOzD5gR11STIo3FJo1u8uWNCG/2ogI4EM1E+eoGptpHbsu
	unKt3NqmEUQp6HC317jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht60C-0004NZ-8Y; Thu, 01 Aug 2019 07:59:56 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht606-0004Mh-1C
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 07:59:51 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190801075946euoutp0191e6e56fcd3e5cd1a02fc6eb068c10ec~2vZk4w-Ry1819418194euoutp014
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  1 Aug 2019 07:59:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190801075946euoutp0191e6e56fcd3e5cd1a02fc6eb068c10ec~2vZk4w-Ry1819418194euoutp014
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1564646386;
 bh=uCq2MLxSrtJv6mtG5c2BOzfNDZhr5+amxgb65dHy6RI=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=ds1V6aYMuCCKMDH/NjpiXFm8lRbBr1Bu1QfnNfxwT3VHpuf0dQFP0ufzFAYxj/BC+
 YB0yBchnYdgT3sCT8yZLu5OD0eZYRcAlKm2VH33MiPpyuRVqFtkc9ipMedlitc7UXD
 hhYvqQHSHAvgB6MB63YFPifkdMIRXm44W8NDW+Cc=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190801075945eucas1p148c54c5c41f014ec4238e03d73209f3d~2vZkNXfay1104411044eucas1p1V;
 Thu,  1 Aug 2019 07:59:45 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 88.6E.04377.1FB924D5; Thu,  1
 Aug 2019 08:59:45 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190801075944eucas1p10f92b2f34172c4c8f85656983d335f64~2vZjRx4fk2237322373eucas1p15;
 Thu,  1 Aug 2019 07:59:44 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190801075944eusmtrp24b52198052c3e8764b8e81666c050d5b~2vZjDhtfg0694206942eusmtrp2o;
 Thu,  1 Aug 2019 07:59:44 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-b6-5d429bf12fd3
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 48.83.04140.0FB924D5; Thu,  1
 Aug 2019 08:59:44 +0100 (BST)
Received: from AMDC3555 (unknown [106.120.51.67]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20190801075943eusmtip1f5f38bb917a2d719f295ac3ea68eae5d~2vZidr86Z1476114761eusmtip1I;
 Thu,  1 Aug 2019 07:59:43 +0000 (GMT)
Message-ID: <62557522be4924a01d3822d4734c30f2965c608b.camel@partner.samsung.com>
Subject: Re: [RFC PATCH 09/11] devfreq: exynos-bus: Add interconnect
 functionality to exynos-bus
From: Artur =?UTF-8?Q?=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 dri-devel@lists.freedesktop.org
Date: Thu, 01 Aug 2019 09:59:42 +0200
In-Reply-To: <6e8b2081-2fb3-9ab8-37d1-8b5fe5fd8e11@linaro.org>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMKsWRmVeSWpSXmKPExsWy7djP87ofZzvFGhz+KGqxccZ6VovrX56z
 Wsw/co7V4srX92wW0/duYrOYdH8Ci8X58xvYLTY9vsZqcXnXHDaLz71HGC1mnN/HZLH2yF12
 i9uNK9gsZkx+yebA57FpVSebx51re9g87ncfZ/LYvKTeo2/LKkaPz5vkAtiiuGxSUnMyy1KL
 9O0SuDJ+H3rJWLBBpuLKcs8Gxh7xLkZODgkBE4mX23cwdTFycQgJrGCU2LvnNwuE84VRYsq3
 VewQzmdGifam92xdjBxgLXdb+CHiyxklTv6fDlX0jFHiyp5TzCBzeQUCJC5dfcgKYgsLJEks
 eHQRzGYTcJf49/wKK0iDiMAnRomzS2YzgjjMAh8ZJRp+tYN1swioSizt280EYnMK2En8vrWU
 DeJaHYm3p/pYQM7gFRCU+LtDGCTMLCAv0bx1NjPIHAmBe+wSK6d0QNW7SPRtXMEOYQtLvDq+
 BcqWkfi/cz4ThF0s8XTnfVaI5gZGiU3LjjBDJKwlDh8HOZsDaIOmxPpd+hBhR4m3fUeZIUHB
 J3HjrSDEDXwSk7ZNhwrzSnS0CUGYWhILfkdDNEpINK2+BjXbQ6Ll0XP2CYyKsxB+mYXkl1kI
 WxcwMq9iFE8tLc5NTy02ykst1ytOzC0uzUvXS87P3cQITFqn/x3/soNx15+kQ4wCHIxKPLwK
 PY6xQqyJZcWVuYcYJTiYlUR4F4vbxwrxpiRWVqUW5ccXleakFh9ilOZgURLnrWZ4EC0kkJ5Y
 kpqdmlqQWgSTZeLglGpgnLni6xnpLQGJwfNuRr/glW86JHIzhrupyPahbfujSf1e9SdyHi/q
 eln+MmHF7w+ykyX/tOTYGFquef277K+5/9Q6/+DLhg7t7sq6X3r+JSos7TXcfKRfbq+zj9nD
 m2V7Zn1MiHzuLdvymOvQidfta6fpCNRq8TblWbDf+eN4m6Pt0G9+3iwtJZbijERDLeai4kQA
 C54i6lYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJIsWRmVeSWpSXmKPExsVy+t/xu7ofZjvFGvT1iVpsnLGe1eL6l+es
 FvOPnGO1uPL1PZvF9L2b2Cwm3Z/AYnH+/AZ2i02Pr7FaXN41h83ic+8RRosZ5/cxWaw9cpfd
 4nbjCjaLGZNfsjnweWxa1cnmcefaHjaP+93HmTw2L6n36NuyitHj8ya5ALYoPZui/NKSVIWM
 /OISW6VoQwsjPUNLCz0jE0s9Q2PzWCsjUyV9O5uU1JzMstQifbsEvYzfh14yFmyQqbiy3LOB
 sUe8i5GDQ0LAROJuC38XIxeHkMBSRonvB9cydzFyAsUlJD6uv8EKYQtL/LnWxQZiCwk8YZTY
 c50HxOYVCJC4dPUhWI2wQJLEgkcXwWw2AXeJf8+vsIIMFRH4zChxeNEnFpAEM4hzY1kOiM0i
 oCqxtG83E4jNKWAn8fvWUjaIK1qZJK5N2ssK0aAp0br9NzvEFToSb0/1sYBczSsgKPF3hzBE
 ibxE89bZzBMYBWch6ZiFUDULSdUCRuZVjCKppcW56bnFRnrFibnFpXnpesn5uZsYgdG47djP
 LTsYu94FH2IU4GBU4uE90ekYK8SaWFZcmXuIUYKDWUmEd7G4fawQb0piZVVqUX58UWlOavEh
 RlOgfyYyS4km5wMTRV5JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6p
 Bsb1q25rmmglLj/orXzOP+9HfIvQPAbDC5Vb7t53ZZXVUI1ecvfDntMdte1PzX9+8IlLKvud
 sfBB5pYVUd8eq69unzHLuUn4/b1jbGcE//8O2yWb7rn54uRbdWaZvhNE3h60UPN/vsYs7ubD
 2Defz29q8Fx288Sp2W/Yty4zWXwxbp+V6RqdA18TlViKMxINtZiLihMBIkRDMdwCAAA=
X-CMS-MailID: 20190801075944eucas1p10f92b2f34172c4c8f85656983d335f64
X-Msg-Generator: CA
X-RootMTR: 20190723122028eucas1p2eb75f35b810e71d6c590370aaff0997b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190723122028eucas1p2eb75f35b810e71d6c590370aaff0997b
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122028eucas1p2eb75f35b810e71d6c590370aaff0997b@eucas1p2.samsung.com>
 <20190723122016.30279-10-a.swigon@partner.samsung.com>
 <6e8b2081-2fb3-9ab8-37d1-8b5fe5fd8e11@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_005950_282055_0488F292 
X-CRM114-Status: GOOD (  21.16  )
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
Cc: =?UTF-8?Q?Bart=C5=82omiej_?= =?UTF-8?Q?=C5=BBo=C5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>, sw0312.kim@samsung.com, krzk@kernel.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, myungjoo.ham@samsung.com,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR2VvcmdpLAoKT24gRnJpLCAyMDE5LTA3LTI2IGF0IDExOjA1ICswMzAwLCBHZW9yZ2kgRGph
a292IHdyb3RlOgo+IEhpIEFydHVyLAo+IAo+IE9uIDcvMjMvMTkgMTU6MjAsIEFydHVyIMWad2ln
b8WEIHdyb3RlOgo+ID4gVGhpcyBwYXRjaCBhZGRzIGludGVyY29ubmVjdCBmdW5jdGlvbmFsaXR5
IHRvIHRoZSBleHlub3MtYnVzIGRldmZyZXEKPiA+IGRyaXZlci4KPiA+IAo+ID4gVGhlIFNvQyB0
b3BvbG9neSBpcyBhIGdyYXBoIChvciwgbW9yZSBzcGVjaWZpY2FsbHksIGEgdHJlZSkgYW5kIG1v
c3Qgb2YgaXRzCj4gPiBlZGdlcyBhcmUgdGFrZW4gZnJvbSB0aGUgZGV2ZnJlcSBwYXJlbnQtY2hp
bGQgaGllcmFyY2h5IChjZi4KPiA+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9k
ZXZmcmVxL2V4eW5vcy1idXMudHh0KS4gVGhlIHByZXZpb3VzCj4gPiBwYXRjaCBhZGRzIG1pc3Np
bmcgZWRnZXMgdG8gdGhlIERUICh1bmRlciB0aGUgbmFtZSAncGFyZW50JykuIER1ZSB0bwo+ID4g
dW5zcGVjaWZpZWQgcmVsYXRpdmUgcHJvYmluZyBvcmRlciwgLUVQUk9CRV9ERUZFUiBtYXkgYmUg
cHJvcGFnYXRlZCB0bwo+ID4gZ3VhcmFudGVlIHRoYXQgYSBjaGlsZCBpcyBwcm9iZWQgYmVmb3Jl
IGl0cyBwYXJlbnQuCj4gPiAKPiA+IEVhY2ggYnVzIGlzIG5vdyBhbiBpbnRlcmNvbm5lY3QgcHJv
dmlkZXIgYW5kIGFuIGludGVyY29ubmVjdCBub2RlIGFzIHdlbGwKPiA+IChjZi4gRG9jdW1lbnRh
dGlvbi9pbnRlcmNvbm5lY3QvaW50ZXJjb25uZWN0LnJzdCksIGkuZS4gZXZlcnkgYnVzIHJlZ2lz
dGVycwo+ID4gaXRzZWxmIGFzIGEgbm9kZS4gTm9kZSBJRHMgYXJlIG5vdCBoYXJkY29kZWQgYnV0
IHJhdGhlciBhc3NpZ25lZCBhdAo+ID4gcnVudGltZSwgaW4gcHJvYmluZyBvcmRlciAoc3ViamVj
dCB0byB0aGUgYWJvdmUtbWVudGlvbmVkIGV4Y2VwdGlvbgo+ID4gcmVnYXJkaW5nIHJlbGF0aXZl
IG9yZGVyKS4gVGhpcyBhcHByb2FjaCBhbGxvd3MgZm9yIHVzaW5nIHRoaXMgZHJpdmVyIHdpdGgK
PiA+IHZhcmlvdXMgRXh5bm9zIFNvQ3MuCj4gCj4gSSBhbSBub3QgZmFtaWxpYXIgd2l0aCB0aGUg
RXh5bm9zIGJ1cyB0b3BvbG9neSwgYnV0IGl0IHNlZW1zIHRvIG1lIHRoYXQgaXQncyBub3QKPiBy
ZXByZXNlbnRlZCBjb3JyZWN0bHkuIEFuIGludGVyY29ubmVjdCBwcm92aWRlciB3aXRoIGp1c3Qg
YSBzaW5nbGUgbm9kZSAocG9ydCkKPiBpcyBvZGQuIEkgd291bGQgZXhwZWN0IHRoYXQgZWFjaCBw
cm92aWRlciBjb25zaXN0cyBvZiBtdWx0aXBsZSBtYXN0ZXIgYW5kIHNsYXZlCj4gbm9kZXMuIFRo
aXMgZGF0YSB3b3VsZCBiZSB1c2VkIGJ5IGEgZnJhbWV3b3JrIHRvIHVuZGVyc3RhbmQgd2hhdCBh
cmUgdGhlIGxpbmtzCj4gYW5kIGhvdyB0aGUgdHJhZmZpYyBmbG93cyBiZXR3ZWVuIHRoZSBJUCBi
bG9ja3MgYW5kIHRocm91Z2ggd2hpY2ggYnVzZXMuCgpUbyBzdW1tYXJpemUgdGhlIGV4eW5vcy1i
dXMgdG9wb2xvZ3lbMV0gdXNlZCBieSB0aGUgZGV2ZnJlcSBkcml2ZXI6IFRoZXJlIGFyZQptYW55
IGRhdGEgYnVzZXMgZm9yIGRhdGEgdHJhbnNmZXIgaW4gU2Ftc3VuZyBFeHlub3MgU29DLiBFdmVy
eSBidXMgaGFzIGl0cyBvd24KY2xvY2suIEJ1c2VzIG9mdGVuIHNoYXJlIHBvd2VyIGxpbmVzLCBp
biB3aGljaCBjYXNlIG9uZSBvZiB0aGUgYnVzZXMgb24gdGhlCnBvd2VyIGxpbmUgaXMgcmVmZXJy
ZWQgdG8gYXMgJ3BhcmVudCcgKG9yIGFzICdkZXZmcmVxJyBpbiB0aGUgRFQpLiBJbiB0aGUKcGFy
dGljdWxhciBjYXNlIG9mIEV4eW5vczQ0MTJbMV1bMl0sIHRoZSB0b3BvbG9neSBjYW4gYmUgZXhw
cmVzc2VkIGFzIGZvbGxvd3M6CgpidXNfZG1jCi0tIGJ1c19hY3AKLS0gYnVzX2MyYwoKYnVzX2xl
ZnRidXMKLS0gYnVzX3JpZ2h0YnVzCi0tIGJ1c19kaXNwbGF5Ci0tIGJ1c19mc3lzCi0tIGJ1c19w
ZXJpCi0tIGJ1c19tZmMKCldoZXJlIGJ1c19kbWMgYW5kIGJ1c19sZWZ0YnVzIHByb2JhYmx5IGNv
dWxkIGJlIHJlZmVycmVkIHRvIGFzIG1hc3RlcnMsIGFuZCB0aGUKZm9sbG93aW5nIGluZGVudGVk
IG5vZGVzIGFzIHNsYXZlcy4gUGF0Y2ggMDgvMTEgb2YgdGhpcyBSRkMgYWRkaXRpb25hbGx5IGFk
ZHMKdGhlIGZvbGxvd2luZyB0byB0aGUgRFQ6CgpidXNfZG1jCi0tIGJ1c19sZWZ0YnVzCgpXaGlj
aCBtYWtlcyB0aGUgdG9wb2xvZ3kgYSB2YWxpZCB0cmVlLgoKVGhlIGV4eW5vcy1idXMgY29uY2Vw
dCBpbiBkZXZmcmVxWzNdIGlzIGRlc2lnbmVkIGluIHN1Y2ggYSB3YXkgdGhhdCBldmVyeSBidXMg
aXMKcHJvYmVkIHNlcGFyYXRlbHkgYXMgYSBwbGF0Zm9ybSBkZXZpY2UsIGFuZCBpcyBhIGxhcmdl
bHkgaW5kZXBlbmRlbnQgZW50aXR5LgpUaGlzIFJGQyBwcm9wb3NlcyBhbiBleHRlbnNpb24gdG8g
dGhlIGV4aXN0aW5nIGRldmZyZXEgZHJpdmVyIHRoYXQgYmFzaWNhbGx5CnByb3ZpZGVzIGEgc2lt
cGxlIFFvUyB0byBlbnN1cmUgbWluaW11bSBjbG9jayBmcmVxdWVuY3kgZm9yIHNlbGVjdGVkIGJ1
c2VzCihwb3NzaWJseSBvdmVycmlkaW5nIGRldmZyZXEgZ292ZXJub3IgY2FsY3VsYXRpb25zKSB1
c2luZyB0aGUgaW50ZXJjb25uZWN0CmZyYW1ld29yay4KClRoZSBoaWVyYXJjaHkgaXMgbW9kZWxs
ZWQgaW4gc3VjaCBhIHdheSB0aGF0IGV2ZXJ5IGJ1cyBpcyBhbiBpbnRlcmNvbm5lY3Qgbm9kZS4K
T24gdGhlIG90aGVyIGhhbmQsIHdoYXQgaXMgY29uc2lkZXJlZCBhbiBpbnRlcmNvbm5lY3QgcHJv
dmlkZXIgaGVyZSBpcyBxdWl0ZQphcmJpdHJhcnksIGJ1dCBmb3IgdGhlIHJlYXNvbnMgbWVudGlv
bmVkIGluIHRoZSBhYm92ZSBwYXJhZ3JhcGgsIHRoaXMgUkZDCmFzc3VtZXMgdGhhdCBldmVyeSBi
dXMgaXMgYSBwcm92aWRlciBvZiBpdHNlbGYgYXMgYSBub2RlLiBVc2luZyBhbiBhbHRlcm5hdGl2
ZQpzaW5nbGV0b24gcHJvdmlkZXIgYXBwcm9hY2ggd2FzIGRlZW1lZCBtb3JlIGNvbXBsaWNhdGVk
IHNpbmNlIHRoZSAnZGV2JyBmaWVsZCBpbgonc3RydWN0IGljY19wcm92aWRlcicgaGFzIHRvIGJl
IHNldCB0byBzb21ldGhpbmcgbWVhbmluZ2Z1bCBhbmQgd2UgYXJlIHRpZWQgdG8KdGhlICdzYW1z
dW5nLGV4eW5vcy1idXMnIGNvbXBhdGlibGUgc3RyaW5nIGluIHRoZSBkcml2ZXIgKGFuZCBtdWx0
aXBsZSBpbnN0YW5jZXMKb2YgZXh5bm9zLWJ1cyBwcm9iZWQgaW4gaW5kZXRlcm1pbmF0ZSByZWxh
dGl2ZSBvcmRlcikuCgpJJ20gbG9va2luZyBmb3J3YXJkIHRvIGhlYXJpbmcgYW55IGFkZGl0aW9u
YWwgdGhvdWdodHMgeW91IG1heSBoYXZlIG9uIHRoaXMKdG9waWMuCgpCZXN0IHJlZ2FyZHMsCi0t
IApBcnR1ciDFmndpZ2/FhApTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kClNhbXN1bmcgRWxl
Y3Ryb25pY3MKClsxXSBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGV2ZnJlcS9l
eHlub3MtYnVzLnR4dApbMl0KYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29t
bW9uLmR0c2kKWzNdIGRyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKKHN1YmplY3Qgb2YgdGhp
cyBwYXRjaCkKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
