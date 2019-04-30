Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4F5101BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 23:24:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/4O5r1sXvbSFAlX3wVinFtyuhnsb9YOw3i3RTZ/23w=; b=DlV57hqKPEMgOl
	2ejousgDTAMXUc2XK74eYFDEPaRol7MFeiYdSsdn6WsA3IijreURK6YDKlqDMdgWBBUZQTHcf7wx0
	Hn/k5GpXVADifQcJkSbFtD+4CMhmH+BtT814YEhpcQUit2dP593dEy3DzuzWppsz+/7xYssRrZa2O
	3d5Tne2cAlsX6g0YwuPfslZVA6fglNwsEi3EntiryDuvFzMrvnOb4BM9NgEm8J1nNhM2+5/T1YR26
	eCwFsEGH/WI4cknExenp7jie3foGvUhCCVumbYTCwNdza8mVmP4OLZIaVkQXYFf9QOxVmfP4+o5k7
	3mwG0fvCvOuCtsvXNy4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLaF7-0005Bq-UX; Tue, 30 Apr 2019 21:24:49 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLaEz-0005BO-P1
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 21:24:43 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190430212432euoutp017b9110cf64f372e0e70b0a73b70f866b~aXYr57Ib00683206832euoutp019
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 21:24:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190430212432euoutp017b9110cf64f372e0e70b0a73b70f866b~aXYr57Ib00683206832euoutp019
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1556659472;
 bh=JOZLpmB1tmFont7oMkIPI2hxuxW5qxxPRMV6ScYkV90=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=rAa6/+Ddxxi+lWpP7syKSvJYtv3/VUvx+mhLYaEh6lrNca2BcIPktmBEgS9HNDMSB
 kcqpaguKlOQy/w3hBWg70BVUCToCwQm1rZANI7gQWb5j611Y/2PlWWGdB8Msr/8pA2
 ZnTATpejv8PBdHir0wvAcXpl4gv6LqcZZEt0nr9Y=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190430212431eucas1p248819b7788ae13f33d9dca8cafafc89a~aXYq8qs962985829858eucas1p2h;
 Tue, 30 Apr 2019 21:24:31 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 27.B5.04298.F0DB8CC5; Tue, 30
 Apr 2019 22:24:31 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190430212429eucas1p1d42dd180f478aa49bfd5419eab05b1a7~aXYpUI4ln0035200352eucas1p1u;
 Tue, 30 Apr 2019 21:24:29 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190430212429eusmtrp1d7eefc8cbfabff6bb5ecd968797759d7~aXYpEesWJ2100921009eusmtrp17;
 Tue, 30 Apr 2019 21:24:29 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-17-5cc8bd0f1883
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 85.54.04146.D0DB8CC5; Tue, 30
 Apr 2019 22:24:29 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190430212428eusmtip15666f96bbe9cfaf73cbcef92cde7c1d3~aXYoXqPVj1048010480eusmtip1w;
 Tue, 30 Apr 2019 21:24:28 +0000 (GMT)
Subject: Re: [PATCH v3 4/4] DT: arm: exynos4412: add event data type which
 is monitored
To: Chanwoo Choi <cw00.choi@samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <f8873863-9524-1ef0-9633-868edc3b56d3@partner.samsung.com>
Date: Tue, 30 Apr 2019 23:24:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <cee7b5a2-377e-59d6-7c6e-b6f9b3140d4f@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SWUwTURSGvZ2ZzrS1eKkIxxUokYCGIonGMRqXSLDKi76BYLTYCSCL2AFU
 1EjdQGQxaLRWENEq2OBWCqkmGC27CIhGMAXEWI2JQjRAXeISHUYib99/zn/u/c/NZQjVADWH
 SU7P5AzpulS1VE7Wt3zvCpvR0Ba/xPhExd413abYvvH3FFvR1EWxJe6PBNvdfYdmO48M06zN
 3Uuxz++XSdmxoibEmrofSNibTYM0e62vR8L2G6ul7PGGJpptHM6j2C9tb9BarK25VIO098yD
 tNZmPSnV1loOa4vtVqQdsy3YLN0qX6XnUpOzOUP46h3yJMdANZnRjPd9uXIK5SKXogDJGMBL
 YXi0hC5AckaFqxEc8wz+E+MIRq0WQhRjCFyXXNTkiH38Myk2qhBUOH5KRDGCoLzgqURwzcSx
 UDhciISGD25HUGQcpARBCGe1v+79KxhGijXgsO4RBpQ4Ct69eEwLTOKF8O76J1LgWTgGhlru
 UKLHG9ovvJ2oy/AayPt2ixCYwH7gelshEdkfjtZdnMgN2MiAp8wuFXNHwo3+YkLkmfCh1U6L
 PA86zhSSIvOQW1SJRD4I7pLyf56V0NjaM5GZwKFw+364WF4HDZ6HSCgD9oKXI95iBC8orT9P
 iGUl5J9Qie4QsBeKzwPYF6pqztGnkdo8ZTHzlGXMU5Yx/7/3MiKtyI/L4tMSOT4indur4XVp
 fFZ6ombn7jQb+vvnOn63jjqQ51mCE2EGqacrQza2xasoXTa/P82JgCHUPkpta3O8SqnX7c/h
 DLu3G7JSOd6J5jKk2k95YNrrOBVO1GVyKRyXwRkmuxJGNicXLZD3OFJGciWvKgPGD5mi+KE9
 o7DEop9b++vEjATTtL6AwJzQZINi+Qof03ziYie5K5KPDYw5G803hsTpg4Jmb9uUY4terygN
 rvuwOfGqvzPlVtijbMJTHRdkzMbAWGoVTstXWdWPTrfCcK44P7hu2dFlWzRHlvuGBsQvfv5z
 g5rkk3QRiwgDr/sDJWCXr28DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrLIsWRmVeSWpSXmKPExsVy+t/xu7q8e0/EGHzZqGCxccZ6VovrX56z
 Wsw/co7Vov/xa2aL8+c3sFucbXrDbrHp8TVWi8u75rBZfO49wmgx4/w+Jou1R+6yWyy9fpHJ
 4nbjCjaL1r1H2C0Ov2lntfh24hGjg4DHmnlrGD12zrrL7rFpVSebx+Yl9R59W1YxenzeJBfA
 FqVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Kak1mWWqRvl6CXsePO
 CpaCowIV3xZ1MzYw3uLuYuTkkBAwkdjy5QMLiC0ksJRR4uO1Yoi4mMSkfdvZIWxhiT/Xutgg
 al4zSmzezdvFyMEhLBApcbCvoIuRi0NE4CSjxOwJf5lAHGaBz4wS09dcZgZxhASmMEn8ftPM
 DtLBJqAnsWNVIcggXgE3iadXT4EtYBFQlXi67D3YEaICERJn3q9ggagRlDg58wmYzSlgL9H+
 Yx0ziM0sYCYxb/NDKFtc4taT+UwQtrxE89bZzBMYhWYhaZ+FpGUWkpZZSFoWMLKsYhRJLS3O
 Tc8tNtQrTswtLs1L10vOz93ECIzqbcd+bt7BeGlj8CFGAQ5GJR7eC24nYoRYE8uKK3MPMUpw
 MCuJ8HocPxojxJuSWFmVWpQfX1Sak1p8iNEU6LmJzFKiyfnAhJNXEm9oamhuYWlobmxubGah
 JM7bIXAwRkggPbEkNTs1tSC1CKaPiYNTqoFRKvHTw5fbO4MjE1LcLtXvDmZI3X+Pe25wgFp3
 zfKjujLelblnPxR831fDtrXv/LQqNdnc+n375zx/92pF57YTfDMmvGl6t0vWp+GV+N3D7bOE
 L313ePlDJf5890XxNotWH1PxzwdPau/PnSHygn9aslLG4fX/jQSXb4wPvHNUgKfjyf/U6v1F
 SizFGYmGWsxFxYkA7tpLnAADAAA=
X-CMS-MailID: 20190430212429eucas1p1d42dd180f478aa49bfd5419eab05b1a7
X-Msg-Generator: CA
X-RootMTR: 20190419134823eucas1p1ff852194b1db655ed2dbce72b5f7f3a6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190419134823eucas1p1ff852194b1db655ed2dbce72b5f7f3a6
References: <1555681688-19643-1-git-send-email-l.luba@partner.samsung.com>
 <CGME20190419134823eucas1p1ff852194b1db655ed2dbce72b5f7f3a6@eucas1p1.samsung.com>
 <1555681688-19643-5-git-send-email-l.luba@partner.samsung.com>
 <cee7b5a2-377e-59d6-7c6e-b6f9b3140d4f@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_142441_946112_439AE835 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, kgene@kernel.org,
 b.zolnierkie@samsung.com, krzk@kernel.org, kyungmin.park@samsung.com,
 robh+dt@kernel.org, myungjoo.ham@samsung.com, s.nawrocki@samsung.com,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA0LzMwLzE5IDg6MTAgQU0sIENoYW53b28gQ2hvaSB3cm90ZToKPiBIaSwKPiAKPiBPbiAx
OS4gNC4gMTkuIOyYpO2bhCAxMDo0OCwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4+IFRoZSBwYXRjaCBh
ZGRzIG5ldyBmaWVsZCBpbiB0aGUgUFBNVSBldmVudCB3aGljaCBzaG93cyBleHBsaWNpdGx5Cj4+
IHdoYXQga2luZCBvZiBkYXRhIHRoZSBldmVudCBpcyBtb25pdG9yaW5nLiBJdCBpcyBwb3NzaWJs
ZSB0byBjaGFuZ2UgaXQKPj4gdXNpbmcgZGVmaW5lZCB2YWx1ZXMgaW4gZXh5bm9zX3BwbXUuaCBm
aWxlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBMdWthc3ogTHViYSA8bC5sdWJhQHBhcnRuZXIuc2Ft
c3VuZy5jb20+Cj4+IC0tLQo+PiAgIGFyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItcHBtdS1j
b21tb24uZHRzaSB8IDEwICsrKysrKysrKysKPj4gICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0
aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1w
cG11LWNvbW1vbi5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1wcG11LWNvbW1v
bi5kdHNpCj4+IGluZGV4IDNhM2IyZmEuLjU0OWZhYmEgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJt
L2Jvb3QvZHRzL2V4eW5vczQ0MTItcHBtdS1jb21tb24uZHRzaQo+PiArKysgYi9hcmNoL2FybS9i
b290L2R0cy9leHlub3M0NDEyLXBwbXUtY29tbW9uLmR0c2kKPj4gQEAgLTYsMTIgKzYsMTYgQEAK
Pj4gICAgKiBBdXRob3I6IENoYW53b28gQ2hvaSA8Y3cwMC5jaG9pQHNhbXN1bmcuY29tPgo+PiAg
ICAqLwo+PiAgIAo+PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3BtdS9leHlub3NfcHBtdS5oPgo+
PiArCj4+ICAgJnBwbXVfZG1jMCB7Cj4+ICAgICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPj4gICAK
Pj4gICAgICAgICAgZXZlbnRzIHsKPj4gICAJICAgICAgIHBwbXVfZG1jMF8zOiBwcG11LWV2ZW50
My1kbWMwIHsKPj4gICAJCSAgICAgICBldmVudC1uYW1lID0gInBwbXUtZXZlbnQzLWRtYzAiOwo+
PiArCQkgICAgICAgZXZlbnQtZGF0YS10eXBlID0gPChQUE1VX1JPX0RBVEFfQ05UIHwKPj4gKwkJ
CQkJICAgUFBNVV9XT19EQVRBX0NOVCk+Owo+PiAgIAkgICAgICAgfTsKPj4gICAgICAgICAgfTsK
Pj4gICB9Owo+PiBAQCAtMjIsNiArMjYsOCBAQAo+PiAgICAgICAgICBldmVudHMgewo+PiAgIAkg
ICAgICAgcHBtdV9kbWMxXzM6IHBwbXUtZXZlbnQzLWRtYzEgewo+PiAgIAkJICAgICAgIGV2ZW50
LW5hbWUgPSAicHBtdS1ldmVudDMtZG1jMSI7Cj4+ICsJCSAgICAgICBldmVudC1kYXRhLXR5cGUg
PSA8KFBQTVVfUk9fREFUQV9DTlQgfAo+PiArCQkJCQkgICBQUE1VX1dPX0RBVEFfQ05UKT47Cj4+
ICAgCSAgICAgICB9Owo+PiAgICAgICAgICB9Owo+PiAgIH07Cj4+IEBAIC0zMiw2ICszOCw4IEBA
Cj4+ICAgICAgICAgIGV2ZW50cyB7Cj4+ICAgCSAgICAgICBwcG11X2xlZnRidXNfMzogcHBtdS1l
dmVudDMtbGVmdGJ1cyB7Cj4+ICAgCQkgICAgICAgZXZlbnQtbmFtZSA9ICJwcG11LWV2ZW50My1s
ZWZ0YnVzIjsKPj4gKwkJICAgICAgIGV2ZW50LWRhdGEtdHlwZSA9IDwoUFBNVV9ST19EQVRBX0NO
VCB8Cj4+ICsJCQkJCSAgIFBQTVVfV09fREFUQV9DTlQpPjsKPj4gICAJICAgICAgIH07Cj4+ICAg
ICAgICAgIH07Cj4+ICAgfTsKPj4gQEAgLTQyLDYgKzUwLDggQEAKPj4gICAgICAgICAgZXZlbnRz
IHsKPj4gICAJICAgICAgIHBwbXVfcmlnaHRidXNfMzogcHBtdS1ldmVudDMtcmlnaHRidXMgewo+
PiAgIAkJICAgICAgIGV2ZW50LW5hbWUgPSAicHBtdS1ldmVudDMtcmlnaHRidXMiOwo+PiArCQkg
ICAgICAgZXZlbnQtZGF0YS10eXBlID0gPChQUE1VX1JPX0RBVEFfQ05UIHwKPj4gKwkJCQkJICAg
UFBNVV9XT19EQVRBX0NOVCk+Owo+PiAgIAkgICAgICAgfTsKPj4gICAgICAgICAgfTsKPj4gICB9
Owo+Pgo+IAo+IEFja2VkLWJ5OiBDaGFud29vIENob2kgPGN3MDAuY2hvaUBzYW1zdW5nLmNvbT4K
VGhhbmsgeW91LCBhZGRlZCB0byB0aGUgcGF0Y2guCgpSZWdhcmRzLApMdWthc3oKPiAKPiAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
