Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0754D42228
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 12:17:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tOZNJkGHF6R04GZOM+5JU3df4AFoUb1QKJ01WsA0M7w=; b=nkcDo/9mdi8xNf
	yN9TBfsyg+56qhaK23z1wfbEMTUnK462lQ1jVeqR3+FsTLJYYU9SyqWdUQpSsdOnUCGChTj2zcSlk
	UB1UeAas11r1jY68a5+2Ked6P7iXPnatXfrYsNFlklCD8H+uIsznMwil6jW0rQYvI6hliZyHvY9Yq
	Ij3CoUfiR01A8LdCKeMSAMCr6B1sk9/qh/hU4eANLBDPiNpzHdwiExGAtTb3lIxFuK6iBDrfAvAT+
	QVZvr+drvwBrcwN7vwiCNUwNSIKRZ+JR4Neh6+Os2x+fo9agW/DpbQofpU5aU2SOA5P4sYjjDLGao
	A5hSBZoxEB380FJMNsQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb0KA-0000ax-SP; Wed, 12 Jun 2019 10:17:48 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb0JQ-0000Wg-Tf
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 10:17:03 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190612101658euoutp02dc38c748b1fbc3193c80d6c9bb8bc202~nbBGJxtDt0448804488euoutp02z
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 10:16:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190612101658euoutp02dc38c748b1fbc3193c80d6c9bb8bc202~nbBGJxtDt0448804488euoutp02z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1560334618;
 bh=nenqkDXBlGquYGp2/Nq01svR1C1yL5SreYVqcUsRLu4=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=a4pnaBEipqqcGjNqpOPKEw8iI+jO6LM2RJzx/2aXYnDaXnrSC2XRE8Mqrjf+xtB2N
 CVxJssaPGC1eRGiP/if1q8ibtrkRDjHUHeKptXTSRtGHD8qgvgy92bHpBS9dDkloKD
 /s8gGVfaZOiVaF1lwgdHHwgD+uxz8xwxesdz6B3c=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190612101657eucas1p2ed277e7786ff4a14f9a9814768548461~nbBFK42EZ0234702347eucas1p2g;
 Wed, 12 Jun 2019 10:16:57 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 90.9B.04298.911D00D5; Wed, 12
 Jun 2019 11:16:57 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190612101656eucas1p2bacf1537ff5aff54d1e24f3c7ac878be~nbBEYh7yf0232502325eucas1p2r;
 Wed, 12 Jun 2019 10:16:56 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190612101656eusmtrp2a67b60e92b619fc30e4296fca7e7eaf0~nbBEJcHxk0080900809eusmtrp2W;
 Wed, 12 Jun 2019 10:16:56 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-bd-5d00d1193e4b
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 59.04.04146.811D00D5; Wed, 12
 Jun 2019 11:16:56 +0100 (BST)
Received: from [106.120.51.74] (unknown [106.120.51.74]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190612101655eusmtip1c605a516b0d1dc52b5159c6165ce6322~nbBDWHlfv2408224082eusmtip1A;
 Wed, 12 Jun 2019 10:16:55 +0000 (GMT)
Subject: Re: [PATCH v2 1/7] drm/bridge: move ANA78xx driver to analogix
 subdirectory
To: Torsten Duwe <duwe@lst.de>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Thierry Reding <thierry.reding@gmail.com>, David
 Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>, Icenowy Zheng <icenowy@aosc.io>, Sean
 Paul <seanpaul@chromium.org>, Vasily Khoruzhick <anarsoul@gmail.com>, Harald
 Geyer <harald@ccbib.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>
From: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <5617d9f2-9935-eec6-748b-02cd00450d76@samsung.com>
Date: Wed, 12 Jun 2019 12:16:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190604122251.676BF68B05@newverein.lst.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRj2O7cdpdVxFnsrK1pIGnQxCr6opMjgUD/qV3TRctXBhpvaTqvM
 ouUNtaIMuzhN10USGzSmU2eZMafrpjWz0m5KapBiiTphdDHnUfLf8z7P+7zf88DHkopiZh6r
 STwm6BPVWhUTRFU1+V4tn+sJiF1l75Xhiy3PCJzZ9A3hsao8Epe4Wmjc5v3J4NG25wROv/OA
 wZW1zTQevvWFwDl5d2XY1v2Oxm9qixhc+t5D4K7v9Qhn1rlk+LO1GeEK21US+2qLKexzviI2
 hfB3fH8J3lJsQXyxJZXvbeiX8YVGD8Vbv96n+bpRM8U7TJ/HuewCmreV5zD8j5YWGV892kXz
 9TctMr7zvJvgK+6e5R92GJmdwXuDNhwWtJrjgn5lVFzQkfzSXCK5fcnJX0O3kBFdXpiLAlng
 1kBOu5HMRUGsgitDcLusHknDCILMc2mENAwj6La8JKYs+Y9rKEm4h2C0um/SP4Dg0aVW2r8V
 wu0CS961iVuzuQYK8i89p/0DyWUiMFcMU/4thouAPxUdTC5iWTkXBUV1rJ+muDDo8/rNgewc
 bjeMOGwTWM4Fw7OCnglrILcOujsbST8muUWQbi+cxEr40FMykRu4Tyxc7TMyUu5oaOuZ6hAC
 fe5KmYRDYcxRMsmfhc6yDFIyZyOwWx2kJKyHBreH9gclx0M/qF0p0ZvB/vGXzE8DNxPaB4Kl
 DDPhStV1UqLlkJ2lkLYXQ2ezffKgEkpfe5nLSGWa1sw0rY1pWhvT/3fNiCpHSsEg6uIFMTJR
 OLFCVOtEQ2L8ikNJOhsa/7Uv/rqHapC39aATcSxSzZA/uT4Wo6DVx8UUnRMBS6pmy1cnBMQq
 5IfVKacEfdIBvUEriE40n6VUSnlqQNc+BRevPiYkCEKyoJ9SCTZwnhFho2awe8MSXVavpqCk
 8OmTxXGuhft/R8Ro32RE+VIbN0W6rM7vwUPbS7cV1CS3GkbIsLTYhEjzxWuaPO+etdHVS7/d
 sJZfeGood4W//p02K6utRrHgTPrpdUehYzhUbHzb0+/QZww2Dap3JIUrz23OD0lZtWWu2a29
 udqztWjj0EcVJR5RRy4j9aL6H2juCJKxAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHfc85OzsTF6ep+WJ0Yd1I6NSZma/XCgpe6EsUVJRSow5auU12
 Nsn60EIEXRcbWNnUOW9RNiidmW1Na6aWoWGlXUAXZYJKSZbSyLRNDfz2f57/83su8DCkol4S
 zZzUGgS9Vp2lpEOplzOdA5tgb0j6loohBbrc84JA+R3DAM02WUhU8axHgt5OjtNo6m0XgfKq
 79Go0dUtQT8rBwlUaKmRooYv/RL0xlVGo9p3vQT6NNIKUL7nmRQN3O8GyNlwjUR+l41Cfu8r
 Ykc4rvbPENhhcwBsc5zDX9vGpLjU1Evh+5/vSrBnyk7hR9aBQK7gpgQ31BXS+HtPjxQ/nPok
 wa3lDin2XewksLPmPHZ/MNF7lx7mkvU6o0FYnakTDSnKIzxScXwC4lRbEzg+Nj49URWn3Jya
 fELIOpkj6DenHuMyi2vNRPb7NWf+TFQCE7i60gxkDGS3wuKWZsoMQhkFWwug/0IfPW9EQXfF
 N3Jeh8PpfjM9XzQGYPs9FxU0wtkD0GG5DoJGBNtJQfN4CREMSDYfwOlLI9J5xA3gtUGLNIjQ
 7Eb41/kh0Ith5GwqLPMwwTTFroOjk8FOMiaSPQRLXaa5CXJ2KXxxc2hOy9gE+MXXPrcSyW6A
 07bXC3oVzHtQuqCj4MehCuIqUFgX4dZFiHURYl2E2AFVByIEo6jJ0Ig8J6o1olGbwR3XaRpA
 4F2aOvzOZvC6fr8XsAxQhsmf3JhNU0jUOWKuxgsgQyoj5KrTIekK+Ql17llBrzuqN2YJohfE
 BY6zkNGRx3WB59MajvJxfDxK4ONj42O3IWWUvIB9mqZgM9QG4bQgZAv6/xzByKJNIC3MZ/es
 8Pt2Pb69a9/vpK64STse4a68ait2970ZGH8XXgT3FLUN91fyeGNSDBipKomW5St8g94y+06l
 xxdyzHiJ6msZ5X4sm4lVjZd3LFm/ovvXoTsbHldNnGKdKQWJjbw39ev27GSb9pZBVWjNbGEM
 z3cfdKiXr3WL7aUqJSVmqvkYUi+q/wE8TxNWRAMAAA==
X-CMS-MailID: 20190612101656eucas1p2bacf1537ff5aff54d1e24f3c7ac878be
X-Msg-Generator: CA
X-RootMTR: 20190604122320epcas3p3bdb18dc38aaad91e8c132625649db9ba
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190604122320epcas3p3bdb18dc38aaad91e8c132625649db9ba
References: <20190604122150.29D6468B05@newverein.lst.de>
 <CGME20190604122320epcas3p3bdb18dc38aaad91e8c132625649db9ba@epcas3p3.samsung.com>
 <20190604122251.676BF68B05@newverein.lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_031701_259113_4C867C7C 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDQuMDYuMjAxOSAxNDoyMiwgVG9yc3RlbiBEdXdlIHdyb3RlOgo+IEZyb206IEljZW5vd3kg
WmhlbmcgPGljZW5vd3lAYW9zYy5pbz4KPgo+IEFzIEFOQTc4eHggY2hpcHMgYXJlIGRlc2lnbmVk
IGFuZCBwcm9kdWNlZCBieSBBbmFsb2dpeCBTZW1pY29uZHVjdG9yLAo+IEluYywgbW92ZSB0aGVp
ciBkcml2ZXIgY29kZXMgaW50byBhbmFsb2dpeCBzdWJkaXJlY3RvcnkuCj4KPiBTaWduZWQtb2Zm
LWJ5OiBJY2Vub3d5IFpoZW5nIDxpY2Vub3d5QGFvc2MuaW8+Cj4gU2lnbmVkLW9mZi1ieTogVmFz
aWx5IEtob3J1emhpY2sgPGFuYXJzb3VsQGdtYWlsLmNvbT4KPiBSZXZpZXdlZC1ieTogTGF1cmVu
dCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IFRvcnN0ZW4gRHV3ZSA8ZHV3ZUBzdXNlLmRlPgpSZXZpZXdlZC1ieTogQW5kcnplaiBI
YWpkYSA8YS5oYWpkYUBzYW1zdW5nLmNvbT4KCsKgLS0KUmVnYXJkcwpBbmRyemVqCj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgMTAgLS0tLS0tLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL01ha2VmaWxlICAgICAg
ICAgICAgICAgICAgICAgICAgICB8ICA0ICsrLS0KPiAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9h
bmFsb2dpeC9LY29uZmlnICAgICAgICAgICAgICAgICAgfCAxMCArKysrKysrKysrCj4gIGRyaXZl
cnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgIDEg
Kwo+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3sgPT4gYW5hbG9naXh9L2FuYWxvZ2l4LWFueDc4
eHguYyB8ICAwCj4gIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UveyA9PiBhbmFsb2dpeH0vYW5hbG9n
aXgtYW54Nzh4eC5oIHwgIDAKPiAgNiBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAx
MiBkZWxldGlvbnMoLSkKPiAgcmVuYW1lIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UveyA9PiBhbmFs
b2dpeH0vYW5hbG9naXgtYW54Nzh4eC5jICgxMDAlKQo+ICByZW5hbWUgZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS97ID0+IGFuYWxvZ2l4fS9hbmFsb2dpeC1hbng3OHh4LmggKDEwMCUpCj4KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9LY29uZmlnIGIvZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS9LY29uZmlnCj4gaW5kZXggZWU3Nzc0NjkyOTNhLi44NjI3ODliZjY0YTAgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2JyaWRnZS9LY29uZmlnCj4gQEAgLTE2LDE2ICsxNiw2IEBAIGNvbmZpZyBEUk1fUEFO
RUxfQlJJREdFCj4gIG1lbnUgIkRpc3BsYXkgSW50ZXJmYWNlIEJyaWRnZXMiCj4gIAlkZXBlbmRz
IG9uIERSTSAmJiBEUk1fQlJJREdFCj4gIAo+IC1jb25maWcgRFJNX0FOQUxPR0lYX0FOWDc4WFgK
PiAtCXRyaXN0YXRlICJBbmFsb2dpeCBBTlg3OFhYIGJyaWRnZSIKPiAtCXNlbGVjdCBEUk1fS01T
X0hFTFBFUgo+IC0Jc2VsZWN0IFJFR01BUF9JMkMKPiAtCS0tLWhlbHAtLS0KPiAtCSAgQU5YNzhY
WCBpcyBhbiB1bHRyYS1sb3cgRnVsbC1IRCBTbGltUG9ydCB0cmFuc21pdHRlcgo+IC0JICBkZXNp
Z25lZCBmb3IgcG9ydGFibGUgZGV2aWNlcy4gVGhlIEFOWDc4WFggdHJhbnNmb3Jtcwo+IC0JICB0
aGUgSERNSSBvdXRwdXQgb2YgYW4gYXBwbGljYXRpb24gcHJvY2Vzc29yIHRvIE15RFAKPiAtCSAg
b3IgRGlzcGxheVBvcnQuCj4gLQo+ICBjb25maWcgRFJNX0NETlNfRFNJCj4gIAl0cmlzdGF0ZSAi
Q2FkZW5jZSBEUEkvRFNJIGJyaWRnZSIKPiAgCXNlbGVjdCBEUk1fS01TX0hFTFBFUgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS9NYWtlZmlsZQo+IGluZGV4IDQ5MzRmY2Y1YTZmOC4uYTZjN2RkNzcyN2VhIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvTWFrZWZpbGUKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vYnJpZGdlL01ha2VmaWxlCj4gQEAgLTEsNSArMSw0IEBACj4gICMgU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiAtb2JqLSQoQ09ORklHX0RSTV9BTkFMT0dJWF9BTlg3
OFhYKSArPSBhbmFsb2dpeC1hbng3OHh4Lm8KPiAgb2JqLSQoQ09ORklHX0RSTV9DRE5TX0RTSSkg
Kz0gY2Rucy1kc2kubwo+ICBvYmotJChDT05GSUdfRFJNX0RVTUJfVkdBX0RBQykgKz0gZHVtYi12
Z2EtZGFjLm8KPiAgb2JqLSQoQ09ORklHX0RSTV9MVkRTX0VOQ09ERVIpICs9IGx2ZHMtZW5jb2Rl
ci5vCj4gQEAgLTEyLDggKzExLDkgQEAgb2JqLSQoQ09ORklHX0RSTV9TSUk5MjM0KSArPSBzaWk5
MjM0Lm8KPiAgb2JqLSQoQ09ORklHX0RSTV9USElORV9USEM2M0xWRDEwMjQpICs9IHRoYzYzbHZk
MTAyNC5vCj4gIG9iai0kKENPTkZJR19EUk1fVE9TSElCQV9UQzM1ODc2NCkgKz0gdGMzNTg3NjQu
bwo+ICBvYmotJChDT05GSUdfRFJNX1RPU0hJQkFfVEMzNTg3NjcpICs9IHRjMzU4NzY3Lm8KPiAt
b2JqLSQoQ09ORklHX0RSTV9BTkFMT0dJWF9EUCkgKz0gYW5hbG9naXgvCj4gIG9iai0kKENPTkZJ
R19EUk1fSTJDX0FEVjc1MTEpICs9IGFkdjc1MTEvCj4gIG9iai0kKENPTkZJR19EUk1fVElfU042
NURTSTg2KSArPSB0aS1zbjY1ZHNpODYubwo+ICBvYmotJChDT05GSUdfRFJNX1RJX1RGUDQxMCkg
Kz0gdGktdGZwNDEwLm8KPiArCj4gK29iai15ICs9IGFuYWxvZ2l4Lwo+ICBvYmoteSArPSBzeW5v
cHN5cy8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9LY29u
ZmlnIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9LY29uZmlnCj4gaW5kZXggZTkz
MGZmOWI1Y2Q0Li43MDRmYjBmNDFkYzMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2Jy
aWRnZS9hbmFsb2dpeC9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFs
b2dpeC9LY29uZmlnCj4gQEAgLTEsNCArMSwxNCBAQAo+ICAjIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiBHUEwtMi4wLW9ubHkKPiArY29uZmlnIERSTV9BTkFMT0dJWF9BTlg3OFhYCj4gKwl0cmlz
dGF0ZSAiQW5hbG9naXggQU5YNzhYWCBicmlkZ2UiCj4gKwlzZWxlY3QgRFJNX0tNU19IRUxQRVIK
PiArCXNlbGVjdCBSRUdNQVBfSTJDCj4gKwloZWxwCj4gKwkgIEFOWDc4WFggaXMgYW4gdWx0cmEt
bG93IEZ1bGwtSEQgU2xpbVBvcnQgdHJhbnNtaXR0ZXIKPiArCSAgZGVzaWduZWQgZm9yIHBvcnRh
YmxlIGRldmljZXMuIFRoZSBBTlg3OFhYIHRyYW5zZm9ybXMKPiArCSAgdGhlIEhETUkgb3V0cHV0
IG9mIGFuIGFwcGxpY2F0aW9uIHByb2Nlc3NvciB0byBNeURQCj4gKwkgIG9yIERpc3BsYXlQb3J0
Lgo+ICsKPiAgY29uZmlnIERSTV9BTkFMT0dJWF9EUAo+ICAJdHJpc3RhdGUKPiAgCWRlcGVuZHMg
b24gRFJNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvTWFr
ZWZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L01ha2VmaWxlCj4gaW5kZXgg
ZmRiZjNmZDJmMDg3Li42ZmNiZmQzZWU1NjAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS9hbmFsb2dpeC9NYWtlZmlsZQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uv
YW5hbG9naXgvTWFrZWZpbGUKPiBAQCAtMSwzICsxLDQgQEAKPiAgIyBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogR1BMLTIuMC1vbmx5Cj4gIGFuYWxvZ2l4X2RwLW9ianMgOj0gYW5hbG9naXhfZHBf
Y29yZS5vIGFuYWxvZ2l4X2RwX3JlZy5vCj4gK29iai0kKENPTkZJR19EUk1fQU5BTE9HSVhfQU5Y
NzhYWCkgKz0gYW5hbG9naXgtYW54Nzh4eC5vCj4gIG9iai0kKENPTkZJR19EUk1fQU5BTE9HSVhf
RFApICs9IGFuYWxvZ2l4X2RwLm8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9hbmFsb2dpeC1hbng3OHh4LmMgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2Fu
YWxvZ2l4LWFueDc4eHguYwo+IHNpbWlsYXJpdHkgaW5kZXggMTAwJQo+IHJlbmFtZSBmcm9tIGRy
aXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgtYW54Nzh4eC5jCj4gcmVuYW1lIHRvIGRyaXZl
cnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXgtYW54Nzh4eC5jCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgtYW54Nzh4eC5oIGIvZHJpdmVycy9n
cHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeC1hbng3OHh4LmgKPiBzaW1pbGFyaXR5IGlu
ZGV4IDEwMCUKPiByZW5hbWUgZnJvbSBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4LWFu
eDc4eHguaAo+IHJlbmFtZSB0byBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxv
Z2l4LWFueDc4eHguaAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
