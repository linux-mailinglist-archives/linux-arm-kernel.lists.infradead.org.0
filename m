Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C28BB41E17
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 09:44:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ZT++1BRUqQEOun+wM4smb7f09qAkgW/omY3hOhgJ4c=; b=e+apsK0Etqd+TB
	qOu7A7vydZff04lbKhkuQBh+T2kn/UOFHWggh1Rr8utuJEEO8ZJW98fc4rU8mn1DEOy3B3Tggy9Hp
	92jSIO0sbj7nQj7RW+XIZyaCCQo7W/fujseOOCo3yPoup748rV62tJxkUHm5hh+MfDqOjOYcU6GtZ
	vWvQLflMn/D5U5AEd/I1enovq9b9EmswIXkF4VZEANEQG+ZQG5ishpvq/zPTxDTrJ+mLFjdgeeu75
	wDAStgVZnA3j8lb7qbVu+2//mP0ueqp+SuAtHJiOzT2q503ydhEMzIND6Um+yKaGJEXfsxNOgTZWi
	Zyec76frRGdPlKVH00sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haxvI-00006b-Rb; Wed, 12 Jun 2019 07:43:56 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haxv4-00005k-C9
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 07:43:43 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190612074341euoutp02ed813ebbd1bacf8f6d9c49b0a7e5cba3~nY7QZvZ_y1631116311euoutp02d
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 07:43:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190612074341euoutp02ed813ebbd1bacf8f6d9c49b0a7e5cba3~nY7QZvZ_y1631116311euoutp02d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1560325421;
 bh=BflzyiBYm085cEE1kffZhowCXmhBFQyDftFupG8Lb/8=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=YVwHWRA7sEWsmeL0EniVGD1xNrRhlxZOcqsmhFUJiRV/7umoHNuZlHKTyo46sCzeP
 ZK11UhAEjraGzwwbVIhs7/zRSoSocfS5mDy2vMs9/onWD5byiboQsOo70D44z5B3RR
 2YuCBa/1yK+XHQYLHveAMv7jrhjDmzgMt1rvA4ZY=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190612074340eucas1p1f7982446a026bd20f2f5bc9135ce2b4f~nY7PoPk5E0774807748eucas1p1j;
 Wed, 12 Jun 2019 07:43:40 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 1D.C2.04325.B2DA00D5; Wed, 12
 Jun 2019 08:43:39 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190612074339eucas1p1301c7549d46f4f58be9b31a17b149df8~nY7O0ylZv0737807378eucas1p1g;
 Wed, 12 Jun 2019 07:43:39 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190612074339eusmtrp28f3f709953fc6beeb6215b44fd7766d0~nY7Ols0EE1016810168eusmtrp2P;
 Wed, 12 Jun 2019 07:43:39 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-aa-5d00ad2b5b8f
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 06.F8.04140.B2DA00D5; Wed, 12
 Jun 2019 08:43:39 +0100 (BST)
Received: from [106.120.51.74] (unknown [106.120.51.74]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190612074338eusmtip1abafa004f82171b60a13298663e44d33~nY7N1AFru0249202492eusmtip1K;
 Wed, 12 Jun 2019 07:43:38 +0000 (GMT)
Subject: Re: [PATCH v2 4/7] drm/bridge: Prepare Analogix anx6345 support
To: Torsten Duwe <duwe@lst.de>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Thierry Reding <thierry.reding@gmail.com>, David
 Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>, Icenowy Zheng <icenowy@aosc.io>, Sean
 Paul <seanpaul@chromium.org>, Vasily Khoruzhick <anarsoul@gmail.com>, Harald
 Geyer <harald@ccbib.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>
From: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <3533d7ba-5d07-89c7-a86d-8f66660413a8@samsung.com>
Date: Wed, 12 Jun 2019 09:43:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190604122258.664D468BFE@newverein.lst.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRj2O7cdV6vjNPy6UDkSyrB78IUhBUUfRJZQdFHJlSeLvLWjdvGH
 5qVsEWpU1tG84CqxibY5y4mXNFpa07SV3Te0jAoLMq1FaW5nkf/e53mf9/2e5+VjSWUJM4s9
 lJDMaxLUcSpGTtXfd3YHL672ilpmKA5B57o6CJRzfxCg8foCEpXe66KRbeQrg0ZtnQTKqqhh
 UJ3ZSqPh8rcEOlOgkyHDwDMaPTEXM+haXw+BHB9bAMppuidDb2qtABkNF0nkNJdQyNnWTazz
 xRXOMQLrS/QAl+jT8Pv2zzJclNFD4dr+mzRuGi2jcIP4ZoLLvUJjQ9UZBn/p6pLh26MOGrdc
 1cuw/ayFwEZdOm58kcFs89kjXxvDxx1K5TVLQ6PlB8V8O5Ekzjx2Mr+fyACjflrAspBbBW1i
 uBbIWSVXCWD2ndeEBL4DaHowIpPAMIC6W09JLfB2T4gFpxipcQPAoc4aSgJDAPZXVwOXypfD
 8HpPBelq+HHtFLyQ10m7AMnlAFhmHKZcKoZbBP8YXzCuWsGFwkyt2c1TXCBs/fDcvWkGtwt+
 bzAASeMDO668c2u8uTWwsPyZ2xPJzYNZpiJP7Q9fvit1p4CcjYU12eO0ZHwDtOQ1ElLtCz9Z
 6mRSPQeON5R6+HRor8wmpeHciRPUNnhSh8B2Sw/tuhk54brGvFSi18O8R42kdMpp8PmQj+Rh
 GjxfX+ihFTD3lFJSB0C71eRZ6A+vPR5h8oFKnJRMnJRGnJRG/P9uGaCqgD+fIsTH8sLKBP7o
 EkEdL6QkxC7ZnxhvABO/9uGYZeQOaP69rw1wLFBNVbQWjkcqaXWqcDy+DUCWVPkpVhz2ilIq
 YtTHT/CaxL2alDheaAOzWUrlr0jzckQouVh1Mn+Y55N4zb8uwXrPygDltuY1czf3hjsGtzT/
 Smpp0ldiOd0XuSDQEqQ+XW/KHQhbPWX/77w5oX3f5vfW7j4RmXV3YLnjsa4709p4idgZU23c
 nniEi07L6ohwatOFrQHJr3p/vCXWT/mWaX+tCzt3wJm9afrCzhWGkIc/lT/N9Mf0seDLYa8S
 d2ysuK494B2hooSD6uVBpEZQ/wX8plBOsQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0iTURjHO+9tWzR6mwtPfrAYRVT02ma2MzGTijzSFfpipdSoNw3dZnun
 ZEWtzNKZ4ZAwp6nhKlhKNa1sIpVFXsJbiZm0Ft1ETE20wci0zRn47XfO///jPAceMSlz0mHi
 E3oTb9Rr0xXMQurNdIt7/braBckb2j5SqLCzjUC5r38ANPPYSqLKV5006v09xiBvbzuBcqrv
 M6je1UGjiVufCJRvtYuQ82sfjd65yhl0+30PgT4PPQMot+mVCLkfdABU57xOIp+rgkK+5i4i
 LgRX+6YJXFNRA3BFzRn8/eWwCJeZeyj84Ms9Gjd5qyj81Ob23+WV0tjpyGfwaGenCD/xfqbx
 s5s1IuwpaCFwnf08bvxgZvYtOcjFGA2ZJn5FqkEwbVYcUiIVp9QgTrVRwykj1cnRqihFRGzM
 MT79RBZvjIg9wqXaijxEhm3ZqQtFXwgz8MotQCKG7EZos15mLGChWMbeBvDCYDkVDEJhY+UI
 GeQQONVnmSsNAzgy+UgUCEJYDO/0VJOBQM62UNAydoMIHEg2F8Cpq0OioNII4JXyUhBQGHYN
 /Fv3gQmwlI2FFy2u2fcodhV8Ptg/21nKJsIyl5kKdpbAttJvsyxhNbDkVt/sTCS7Gk5VvJ3j
 5TDnUdkch8KBb5VEEZDZ5um2eYptnmKbp1QBygHkfKagS9EJKk7Q6oRMfQp31KBzAv++PH7t
 q28AltH9zYAVA8Ui6fOSmSQZrc0SsnXNAIpJhVyqSluQLJMe02af5o2Gw8bMdF5oBlH+z1nJ
 sKVHDf7t05sOK6OUaqRRqiPVkZuQIlSax75IkrEpWhOfxvMZvPG/R4glYWbQMJnXnr9NsrZ1
 gChhTuZKcDEZVVCwq85RyP089Ke26eyW6D318vjw41aP++VgiLb4zabwroSEvY0T3epLdJLa
 6/CFJ8Q3FBZ1t3J/7vJpKx2Ljck9vGfcwv06V7kjiR6vX7/Tcy1ut/vd0Ha7eme3pLdptP/h
 AX1i2OgQ2GpXUEKqVrmWNAraf/GMe89FAwAA
X-CMS-MailID: 20190612074339eucas1p1301c7549d46f4f58be9b31a17b149df8
X-Msg-Generator: CA
X-RootMTR: 20190604122327epcas3p40004116ce83af448b156583d0fc7b37f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190604122327epcas3p40004116ce83af448b156583d0fc7b37f
References: <20190604122150.29D6468B05@newverein.lst.de>
 <CGME20190604122327epcas3p40004116ce83af448b156583d0fc7b37f@epcas3p4.samsung.com>
 <20190604122258.664D468BFE@newverein.lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_004342_554200_D054EE60 
X-CRM114-Status: GOOD (  18.52  )
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

T24gMDQuMDYuMjAxOSAxNDoyMiwgVG9yc3RlbiBEdXdlIHdyb3RlOgo+IEFkZCBiaXQgZGVmaW5p
dGlvbnMgcmVxdWlyZWQgZm9yIHRoZSBhbng2MzQ1IGFuZCBhZGQgYQo+IHNhbml0eSBjaGVjayBp
biBhbnhfZHBfYXV4X3RyYW5zZmVyLgo+Cj4gU2lnbmVkLW9mZi1ieTogSWNlbm93eSBaaGVuZyA8
aWNlbm93eUBhb3NjLmlvPgo+IFNpZ25lZC1vZmYtYnk6IFZhc2lseSBLaG9ydXpoaWNrIDxhbmFy
c291bEBnbWFpbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVG9yc3RlbiBEdXdlIDxkdXdlQHN1c2Uu
ZGU+CgoKUmV2aWV3ZWQtYnk6IEFuZHJ6ZWogSGFqZGEgPGEuaGFqZGFAc2Ftc3VuZy5jb20+CgrC
oC0tClJlZ2FyZHMKQW5kcnplagoKCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2Fu
YWxvZ2l4L2FuYWxvZ2l4LWkyYy1kcHR4LmMgICAgIHwgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0v
YnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4LWkyYy1kcHR4LmggICAgIHwgOCArKysrKysrKwo+ICBk
cml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4LWkyYy10eGNvbW1vbi5oIHwg
MyArKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dp
eC1pMmMtZHB0eC5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeC1p
MmMtZHB0eC5jCj4gaW5kZXggZDYwMTZmNzg5ZDgwLi5lOWQyZWQ0ZDQxMGQgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeC1pMmMtZHB0eC5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeC1pMmMtZHB0eC5j
Cj4gQEAgLTEyNCw3ICsxMjQsNyBAQCBzc2l6ZV90IGFueF9kcF9hdXhfdHJhbnNmZXIoc3RydWN0
IHJlZ21hcCAqbWFwX2RwdHgsCj4gIAllbHNlCS8qIEZvciBub24temVyby1zaXplZCBzZXQgdGhl
IGxlbmd0aCBmaWVsZC4gKi8KPiAgCQljdHJsMSB8PSAobXNnLT5zaXplIC0gMSkgPDwgU1BfQVVY
X0xFTkdUSF9TSElGVDsKPiAgCj4gLQlpZiAoKG1zZy0+cmVxdWVzdCAmIERQX0FVWF9JMkNfUkVB
RCkgPT0gMCkgewo+ICsJaWYgKChtc2ctPnNpemUgPiAwKSAmJiAoKG1zZy0+cmVxdWVzdCAmIERQ
X0FVWF9JMkNfUkVBRCkgPT0gMCkpIHsKPiAgCQkvKiBXaGVuIFdSSVRFIHwgTU9UIHdyaXRlIHZh
bHVlcyB0byBkYXRhIGJ1ZmZlciAqLwo+ICAJCWVyciA9IHJlZ21hcF9idWxrX3dyaXRlKG1hcF9k
cHR4LAo+ICAJCQkJCVNQX0RQX0JVRl9EQVRBMF9SRUcsIGJ1ZmZlciwKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeC1pMmMtZHB0eC5oIGIvZHJp
dmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeC1pMmMtZHB0eC5oCj4gaW5kZXgg
MzA0MzZjODhmMTgxLi45NWFiODllZWNjNjAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeC1pMmMtZHB0eC5oCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeC1pMmMtZHB0eC5oCj4gQEAgLTgzLDcgKzgzLDEx
IEBACj4gICNkZWZpbmUgU1BfQ0hBX1NUQQkJCUJJVCgyKQo+ICAvKiBCaXRzIGZvciBEUCBTeXN0
ZW0gQ29udHJvbCBSZWdpc3RlciAzICovCj4gICNkZWZpbmUgU1BfSFBEX1NUQVRVUwkJCUJJVCg2
KQo+ICsjZGVmaW5lIFNQX0hQRF9GT1JDRQkJCUJJVCg1KQo+ICsjZGVmaW5lIFNQX0hQRF9DVFJM
CQkJQklUKDQpCj4gICNkZWZpbmUgU1BfU1RSTV9WQUxJRAkJCUJJVCgyKQo+ICsjZGVmaW5lIFNQ
X1NUUk1fRk9SQ0UJCQlCSVQoMSkKPiArI2RlZmluZSBTUF9TVFJNX0NUUkwJCQlCSVQoMCkKPiAg
LyogQml0cyBmb3IgRFAgU3lzdGVtIENvbnRyb2wgUmVnaXN0ZXIgNCAqLwo+ICAjZGVmaW5lIFNQ
X0VOSEFOQ0VEX01PREUJCUJJVCgzKQo+ICAKPiBAQCAtMTI4LDYgKzEzMiw5IEBACj4gICNkZWZp
bmUgU1BfTElOS19CV19TRVRfTUFTSwkJMHgxZgo+ICAjZGVmaW5lIFNQX0lOSVRJQUxfU0xJTV9N
X0FVRF9TRUwJQklUKDUpCj4gIAo+ICsvKiBEUCBMYW5lIENvdW50IFNldHRpbmcgUmVnaXN0ZXIg
Ki8KPiArI2RlZmluZSBTUF9EUF9MQU5FX0NPVU5UX1NFVF9SRUcJMHhhMQo+ICsKPiAgLyogRFAg
VHJhaW5pbmcgUGF0dGVybiBTZXQgUmVnaXN0ZXIgKi8KPiAgI2RlZmluZSBTUF9EUF9UUkFJTklO
R19QQVRURVJOX1NFVF9SRUcJMHhhMgo+ICAKPiBAQCAtMTQxLDYgKzE0OCw3IEBACj4gIAo+ICAv
KiBEUCBMaW5rIFRyYWluaW5nIENvbnRyb2wgUmVnaXN0ZXIgKi8KPiAgI2RlZmluZSBTUF9EUF9M
VF9DVFJMX1JFRwkJMHhhOAo+ICsjZGVmaW5lIFNQX0RQX0xUX0lOUFJPR1JFU1MJCTB4ODAKPiAg
I2RlZmluZSBTUF9MVF9FUlJPUl9UWVBFX01BU0sJCTB4NzAKPiAgIyAgZGVmaW5lIFNQX0xUX05P
X0VSUk9SCQkweDAwCj4gICMgIGRlZmluZSBTUF9MVF9BVVhfV1JJVEVfRVJST1IJCTB4MDEKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeC1pMmMt
dHhjb21tb24uaCBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXgtaTJj
LXR4Y29tbW9uLmgKPiBpbmRleCBmNDgyOTNmODZmOWQuLmUzMzkxYTUwYjVkMSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4LWkyYy10eGNvbW1v
bi5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeC1pMmMt
dHhjb21tb24uaAo+IEBAIC0xODgsNiArMTg4LDkgQEAKPiAgI2RlZmluZSBTUF9WQklUCQkJCUJJ
VCgxKQo+ICAjZGVmaW5lIFNQX0FVRElPX0xBWU9VVAkJCUJJVCgwKQo+ICAKPiArLyogQW5hbG9n
IERlYnVnIFJlZ2lzdGVyIDEgKi8KPiArI2RlZmluZSBTUF9BTkFMT0dfREVCVUcxX1JFRwkJMHhk
Ywo+ICsKPiAgLyogQW5hbG9nIERlYnVnIFJlZ2lzdGVyIDIgKi8KPiAgI2RlZmluZSBTUF9BTkFM
T0dfREVCVUcyX1JFRwkJMHhkZAo+ICAjZGVmaW5lIFNQX0ZPUkNFX1NXX09GRl9CWVBBU1MJCTB4
MjAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
