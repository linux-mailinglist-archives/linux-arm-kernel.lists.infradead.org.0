Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F244CBB01C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 11:00:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rIoxK/N4qEfTgyUuoGBaBmpXzyCz2ATsaMU75cigOXQ=; b=JoZ0pNav2Sux+o
	hWvwfur+NFyJNfUul/JBYBM4NYXFz1fqjx6b5Pa9EM4dAi8KBO2hTjrzftdfpixOdR8PR2t6rGJI8
	+1qgUbR1WDbNnUcaq9Ht0YQcxBfHDr6FJgbnWXPsnvzgf0LXyCPBHQkjDq2EslGIZgU+7vlTOALSh
	/Qend94lbPv6sJ8MuysFv7mARckrUneswCpd0B3V+kC17BwRTnN7plCyoq8WJAtwMfvEMFhwFcwsz
	vuMjfoeu1X+PFLE5ihakxDhdCoJaohzVZDCvGQRpIvEMsSHX2oVK3pb6XnGwNeq3uur1ooSKq936o
	N1/zQ9dVProk0cW92wug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKCI-000111-0d; Mon, 23 Sep 2019 08:59:54 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKC4-0000zD-E6
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 08:59:42 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190923085936euoutp012e5fd9083281c2c3bbf1a6c130ab5594~HBZ8XG6hb1890218902euoutp016
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 08:59:36 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190923085936euoutp012e5fd9083281c2c3bbf1a6c130ab5594~HBZ8XG6hb1890218902euoutp016
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569229176;
 bh=n+Pp880jnFM0iccPSEpCzg0MYcWPdHFdFFri+tpf0lM=;
 h=Subject:To:From:Date:In-Reply-To:References:From;
 b=KkIlznElKejS+tX5d1yixx6cNrABgP345VNLnatqjT+iikeG8pifVQU+HKhHybtA/
 jPSD+fkfiKs1Ynujbvhxl8WN70en4Imixgd1v60R1uOE3BC88pTz4wm5dHeVRr7wVK
 aWNm6rO0BKrTxVu3UKdYgSrLSph3h59klnCQNXYA=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190923085935eucas1p26db86ed226166527103fa2ed9270dbc9~HBZ79qrSS0371203712eucas1p2I;
 Mon, 23 Sep 2019 08:59:35 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 32.99.04309.779888D5; Mon, 23
 Sep 2019 09:59:35 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190923085935eucas1p262d0484a4fc9b6b174c382c8d4a4e942~HBZ7rmCZb1673316733eucas1p2O;
 Mon, 23 Sep 2019 08:59:35 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190923085935eusmtrp29652c30fa5a7bbcfebcd61d7c8f5a423~HBZ7osPBg0328103281eusmtrp2-;
 Mon, 23 Sep 2019 08:59:35 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-72-5d8889772ca0
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id BE.38.04166.779888D5; Mon, 23
 Sep 2019 09:59:35 +0100 (BST)
Received: from [106.120.51.74] (unknown [106.120.51.74]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190923085934eusmtip29debb2717068212c94470229fe6850d7~HBZ6k5Ncz1176911769eusmtip2z;
 Mon, 23 Sep 2019 08:59:33 +0000 (GMT)
Subject: Re: [PATCH v6 1/2] dt-bindings: display/bridge: Add binding for NWL
 mipi dsi host controller
To: =?UTF-8?Q?Guido_G=c3=bcnther?= <agx@sigxcpu.org>, David Airlie
 <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP
 Linux Team <linux-imx@nxp.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>, Lee Jones
 <lee.jones@linaro.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Robert Chiras <robert.chiras@nxp.com>, Sam
 Ravnborg <sam@ravnborg.org>, Arnd Bergmann <arnd@arndb.de>
From: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <18619804-ffe8-f3a5-aa54-ab590b3a83c0@samsung.com>
Date: Mon, 23 Sep 2019 10:59:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3bef8eb6a7dd32406e31c68f39ccde3accb58222.1569170717.git.agx@sigxcpu.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0yTZxTm/W79aFb28YHrCZohTbZMjOjUH28y08zEH2/iD8UfxAzZ7OAL
 OGkhrYhoNl0mt+IFaphQmuEaiOUyhUqLgGyxIIgCDpCbYStEfwAZwuRiQCvafhj595znOec8
 z3nz8rTo4CL4Y4YTktGgS9VwSsbdsdy7LTM/L2HH3IUo/P/PEyy+2NtFYZ+lQ4FX3UU0Lm/v
 ZfHjxVkOTwwewIMvp2jc9d8gg6uLmxicX1ShwN7Fewg7nw6x2LxSReOBZhuHK4f7KOy5FI/v
 lntYnN3arsC+RieDHcsuhCcb1F9/Qmp/q0Xk1YoFkdmRbAVpXbrGkCbrPwpSllfKEmd1Pkfu
 F/ZTZGzoDkcal8ZZ4i3opMitirOk/vltilz27SAVvw5yxFrgRgfFb5R7kqTUYycl43btUWXK
 4mUzk96z7ZSvYZ47h2Y3mRHPg7AbSuwfm5GSFwUHgm7HFCUXCwiuT71h5GIewchYP2tGwYGJ
 K7nDnCxcR5D9uBnJxQyCpar7Cn9XmJAMDy2vA7vChS4OiuxWxi9wwhbw3Rrl/OYqQQslud/6
 aUb4DEYHagItG4TD8GK8LeCmEkKhq/RZgA8W4qB7tJvyY1qIhF9cZbSM1fDkWXnAC4RxHjrq
 hxk56j6orqnjZBwG050NChlvgtWmckrGZ8HrOE/Lw3kIXHVNtCx8BW2dfaw/KP0u9M3m7TK9
 F9wtTxXy44XAyEyonCEELO6rtEyrIC9HlLujwNvjWluohsq/F9fSEKhY/oMtRFHWdVda111m
 XXeZ9UOGa4ipRmopw6RPlkw7DVJmjEmnN2UYkmMS0/RO9O7/PnzTuXAbNb/+3oMEHmk+Us3V
 5yaIrO6kKUvvQcDTmnCVMzonQVQl6bJOS8a074wZqZLJgzbyjEatOhM0Hi8KyboT0nFJSpeM
 71WKD444hyJbW0ZnJqMnlUFpG2d+HEiy9fXHaLN6/qK36Ob/fTG9YN8ctvWHT+fO1Ec+2rP7
 J1v8xJOyUP3prZmndi0kWsTKtpslhQ9u3F39gjC//xl3sbhBtA2NaY947LGxRbsi7BN3XFXa
 OEPdfg17xfucPZhme9nvceYcCiqotMZ8vk+70q5hTCm6L6Npo0n3Fhn686m7AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrAKsWRmVeSWpSXmKPExsVy+t/xe7rlnR2xBp8ecFt8bHzIatF77iST
 xd9Jx9gt/m+byGwx/8g5VosrX9+zWTy86m9x9ftLZouTb66yWKyaupPFonPiEnaL+1+PMlps
 enyN1aLr10pmi8u75rBZLL1+kcniUF+0xcH5h1gtWvceYbf4u30Ti8WKn1sZLV5sEXcQ81gz
 bw2jx+9fkxg93t9oZffY+20Bi8fOWXfZPWZ3zGT12LSqk83jxIRLTB53ru1h89j+7QGrx/3u
 40wem5fUe2x8t4PJo/+vgceSaVfZPGZ1b2MMEIrSsynKLy1JVcjILy6xVYo2tDDSM7S00DMy
 sdQzNDaPtTIyVdK3s0lJzcksSy3St0vQy/ja38VScFa34u+Wz2wNjO9luhg5OSQETCQmt19n
 62Lk4hASWMooMbvjMwtEQlxi9/y3zBC2sMSfa11QRa8ZJfa1PGEESQgLpEucnvSHCSQhInCa
 TeJf726oqkuMEp0TD4O1swloSvzdfBMowcHBK2AnMaM9DiTMIqAqcfPyarBtogIREod3zAIb
 yisgKHFy5hOwOKdAmMSZm2eYQGxmAXWJP/MuMUPY8hLNW2dD2eISt57MZ5rAKDgLSfssJC2z
 kLTMQtKygJFlFaNIamlxbnpusaFecWJucWleul5yfu4mRmBq2Xbs5+YdjJc2Bh9iFOBgVOLh
 /bCxPVaINbGsuDL3EKMEB7OSCO8mrbZYId6UxMqq1KL8+KLSnNTiQ4ymQM9NZJYSTc4Hpr28
 knhDU0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2M07x830kKJrpsMdm2
 4lZqUrAGR41UpPj2TyYHlfgT9q/+WRXGvCS117W7z6jEZZNae4df3smTEdah5z0bMruO7Uh2
 u8xy0GBrrqOXYMv+RkfrwL95c2/M5mVZfPOv+oJ0psRJLYr7e9871AuH7p3R/n+J8GlNGQ7e
 vqM3sqe+FbgiotnN26jEUpyRaKjFXFScCACmq0OKQwMAAA==
X-CMS-MailID: 20190923085935eucas1p262d0484a4fc9b6b174c382c8d4a4e942
X-Msg-Generator: CA
X-RootMTR: 20190922164722epcas3p2c44bddf9e6fd86cae5ab72ca078296b8
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190922164722epcas3p2c44bddf9e6fd86cae5ab72ca078296b8
References: <cover.1569170717.git.agx@sigxcpu.org>
 <CGME20190922164722epcas3p2c44bddf9e6fd86cae5ab72ca078296b8@epcas3p2.samsung.com>
 <3bef8eb6a7dd32406e31c68f39ccde3accb58222.1569170717.git.agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_015940_686780_AD25CE71 
X-CRM114-Status: GOOD (  22.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjIuMDkuMjAxOSAxODo0NywgR3VpZG8gR8O8bnRoZXIgd3JvdGU6Cj4gVGhlIE5vcnRod2Vz
dCBMb2dpYyBNSVBJIERTSSBJUCBjb3JlIGNhbiBiZSBmb3VuZCBpbiBOWFBzIGkuTVg4IFNvQ3Mu
Cj4KPiBTaWduZWQtb2ZmLWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgo+IFRl
c3RlZC1ieTogUm9iZXJ0IENoaXJhcyA8cm9iZXJ0LmNoaXJhc0BueHAuY29tPgo+IFJldmlld2Vk
LWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+IC0tLQo+ICAuLi4vYmluZGluZ3Mv
ZGlzcGxheS9icmlkZ2UvbndsLWRzaS55YW1sICAgICAgfCAxNzYgKysrKysrKysrKysrKysrKysr
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxNzYgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2
NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL253bC1k
c2kueWFtbAo+Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9kaXNwbGF5L2JyaWRnZS9ud2wtZHNpLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvZGlzcGxheS9icmlkZ2UvbndsLWRzaS55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2
NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLjMxMTE5Yzc4ODVmZgo+IC0tLSAvZGV2L251bGwKPiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2Uvbnds
LWRzaS55YW1sCj4gQEAgLTAsMCArMSwxNzYgQEAKPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogKEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UpCj4gKyVZQU1MIDEuMgo+ICstLS0KPiAr
JGlkOiBodHRwczovL3Byb3RlY3QyLmZpcmVleWUuY29tL3VybD9rPTdjOTM5N2ZiZGJiZTNmZDUu
N2M5MjFjYjQtODdmYzQ1NDJiNWY0MTUwMiZ1PWh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFz
L2Rpc3BsYXkvYnJpZGdlL253bC1kc2kueWFtbCMKPiArJHNjaGVtYTogaHR0cDovL2RldmljZXRy
ZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4gKwo+ICt0aXRsZTogTm9ydGh3ZXN0IExv
Z2ljIE1JUEktRFNJIGNvbnRyb2xsZXIgb24gaS5NWCBTb0NzCj4gKwo+ICttYWludGFpbmVyczoK
PiArICAtIEd1aWRvIEfDum50aGVyIDxhZ3hAc2lneGNwdS5vcmc+Cj4gKyAgLSBSb2JlcnQgQ2hp
cmFzIDxyb2JlcnQuY2hpcmFzQG54cC5jb20+Cj4gKwo+ICtkZXNjcmlwdGlvbjogfAo+ICsgIE5X
TCBNSVBJLURTSSBob3N0IGNvbnRyb2xsZXIgZm91bmQgb24gaS5NWDggcGxhdGZvcm1zLiBUaGlz
IGlzIGEgZHNpIGJyaWRnZSBmb3IKPiArICB0aGUgU09DcyBOV0wgTUlQSS1EU0kgaG9zdCBjb250
cm9sbGVyLgo+ICsKPiArcHJvcGVydGllczoKPiArICBjb21wYXRpYmxlOgo+ICsgICAgY29uc3Q6
IGZzbCxpbXg4bXEtbndsLWRzaQo+ICsKPiArICByZWc6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsK
PiArICBpbnRlcnJ1cHRzOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArCj4gKyAgJyNhZGRyZXNzLWNl
bGxzJzoKPiArICAgIGNvbnN0OiAxCj4gKwo+ICsgICcjc2l6ZS1jZWxscyc6Cj4gKyAgICBjb25z
dDogMAo+ICsKPiArICBjbG9ja3M6Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBkZXNjcmlwdGlv
bjogRFNJIGNvcmUgY2xvY2sKPiArICAgICAgLSBkZXNjcmlwdGlvbjogUlhfRVNDIGNsb2NrICh1
c2VkIGluIGVzY2FwZSBtb2RlKQo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBUWF9FU0MgY2xvY2sg
KHVzZWQgaW4gZXNjYXBlIG1vZGUpCj4gKyAgICAgIC0gZGVzY3JpcHRpb246IFBIWV9SRUYgY2xv
Y2sKPiArCj4gKyAgY2xvY2stbmFtZXM6Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBjb25zdDog
Y29yZQo+ICsgICAgICAtIGNvbnN0OiByeF9lc2MKPiArICAgICAgLSBjb25zdDogdHhfZXNjCj4g
KyAgICAgIC0gY29uc3Q6IHBoeV9yZWYKPiArCj4gKyAgbXV4LWNvbnRyb2xzOgo+ICsgICAgZGVz
Y3JpcHRpb246Cj4gKyAgICAgIG11eCBjb250cm9sbGVyIG5vZGUgdG8gdXNlIGZvciBvcGVyYXRp
bmcgdGhlIGlucHV0IG11eAo+ICsKPiArICBwaHlzOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArICAg
IGRlc2NyaXB0aW9uOgo+ICsgICAgICBBIHBoYW5kbGUgdG8gdGhlIHBoeSBtb2R1bGUgcmVwcmVz
ZW50aW5nIHRoZSBEUEhZCj4gKwo+ICsgIHBoeS1uYW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAg
ICAtIGNvbnN0OiBkcGh5Cj4gKwo+ICsgIHBvd2VyLWRvbWFpbnM6Cj4gKyAgICBtYXhJdGVtczog
MQo+ICsKPiArICByZXNldHM6Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBkZXNjcmlwdGlvbjog
ZHNpIGJ5dGUgcmVzZXQgbGluZQo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBkc2kgZHBpIHJlc2V0
IGxpbmUKPiArICAgICAgLSBkZXNjcmlwdGlvbjogZHNpIGVzYyByZXNldCBsaW5lCj4gKyAgICAg
IC0gZGVzY3JpcHRpb246IGRzaSBwY2xrIHJlc2V0IGxpbmUKPiArCj4gKyAgcmVzZXQtbmFtZXM6
Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBjb25zdDogYnl0ZQo+ICsgICAgICAtIGNvbnN0OiBk
cGkKPiArICAgICAgLSBjb25zdDogZXNjCj4gKyAgICAgIC0gY29uc3Q6IHBjbGsKPiArCj4gKyAg
cG9ydHM6Cj4gKyAgICB0eXBlOiBvYmplY3QKPiArICAgIGRlc2NyaXB0aW9uOgo+ICsgICAgICBB
IG5vZGUgY29udGFpbmluZyBEU0kgaW5wdXQgJiBvdXRwdXQgcG9ydCBub2RlcyB3aXRoIGVuZHBv
aW50Cj4gKyAgICAgIGRlZmluaXRpb25zIGFzIGRvY3VtZW50ZWQgaW4KPiArICAgICAgRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dyYXBoLnR4dC4KPiArICAgIHByb3BlcnRpZXM6
Cj4gKyAgICAgIHBvcnRAMDoKPiArICAgICAgICB0eXBlOiBvYmplY3QKPiArICAgICAgICBkZXNj
cmlwdGlvbjoKPiArICAgICAgICAgIElucHV0IHBvcnQgbm9kZSB0byByZWNlaXZlIHBpeGVsIGRh
dGEgZnJvbSB0aGUKPiArICAgICAgICAgIGRpc3BsYXkgY29udHJvbGxlcgo+ICsKPiArICAgICAg
cG9ydEAxOgo+ICsgICAgICAgIHR5cGU6IG9iamVjdAo+ICsgICAgICAgIGRlc2NyaXB0aW9uOgo+
ICsgICAgICAgICAgRFNJIG91dHB1dCBwb3J0IG5vZGUgdG8gdGhlIHBhbmVsIG9yIHRoZSBuZXh0
IGJyaWRnZQo+ICsgICAgICAgICAgaW4gdGhlIGNoYWluCj4gKwo+ICsgICAgICAnI2FkZHJlc3Mt
Y2VsbHMnOgo+ICsgICAgICAgIGNvbnN0OiAxCj4gKwo+ICsgICAgICAnI3NpemUtY2VsbHMnOgo+
ICsgICAgICAgIGNvbnN0OiAwCj4gKwo+ICsgICAgcmVxdWlyZWQ6Cj4gKyAgICAgIC0gJyNhZGRy
ZXNzLWNlbGxzJwo+ICsgICAgICAtICcjc2l6ZS1jZWxscycKPiArICAgICAgLSBwb3J0QDAKPiAr
ICAgICAgLSBwb3J0QDEKPiArCj4gKyAgICBhZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKPiAr
Cj4gK3BhdHRlcm5Qcm9wZXJ0aWVzOgo+ICsgICJecGFuZWxAWzAtOV0rJCI6Cj4gKyAgICB0eXBl
OiBvYmplY3QKPiArCj4gK3JlcXVpcmVkOgo+ICsgIC0gJyNhZGRyZXNzLWNlbGxzJwo+ICsgIC0g
JyNzaXplLWNlbGxzJwo+ICsgIC0gY2xvY2stbmFtZXMKPiArICAtIGNsb2Nrcwo+ICsgIC0gY29t
cGF0aWJsZQo+ICsgIC0gaW50ZXJydXB0cwo+ICsgIC0gbXV4LWNvbnRyb2xzCgoKQXMgSSB1bmRl
cnN0YW5kIG11eCBpcyBub3QgYSBwYXJ0IG9mIHRoZSBkZXZpY2UsIHNvIG1heWJlIHdvdWxkIGJl
IHNhZmVyCnRvIG1ha2UgaXQgb3B0aW9uYWwuCgoKUmVnYXJkcwoKQW5kcnplagoKCj4gKyAgLSBw
aHktbmFtZXMKPiArICAtIHBoeXMKPiArICAtIHBvcnRzCj4gKyAgLSByZWcKPiArICAtIHJlc2V0
LW5hbWVzCj4gKyAgLSByZXNldHMKPiArCj4gK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQo+
ICsKPiArZXhhbXBsZXM6Cj4gKyAtIHwKPiArCj4gKyAgIG1pcGlfZHNpOiBtaXBpX2RzaUAzMGEw
MDAwMCB7Cj4gKyAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gKyAgICAgICAg
ICAgICAgI3NpemUtY2VsbHMgPSA8MD47Cj4gKyAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJm
c2wsaW14OG1xLW53bC1kc2kiOwo+ICsgICAgICAgICAgICAgIHJlZyA9IDwweDMwQTAwMDAwIDB4
MzAwPjsKPiArICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNsayAxNjM+LCA8JmNsayAyNDQ+LCA8
JmNsayAyNDU+LCA8JmNsayAxNjQ+Owo+ICsgICAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gImNv
cmUiLCAicnhfZXNjIiwgInR4X2VzYyIsICJwaHlfcmVmIjsKPiArICAgICAgICAgICAgICBpbnRl
cnJ1cHRzID0gPDAgMzQgND47Cj4gKyAgICAgICAgICAgICAgbXV4LWNvbnRyb2xzID0gPCZtdXgg
MD47Cj4gKyAgICAgICAgICAgICAgcG93ZXItZG9tYWlucyA9IDwmcGdjX21pcGk+Owo+ICsgICAg
ICAgICAgICAgIHJlc2V0cyA9IDwmc3JjIDA+LCA8JnNyYyAxPiwgPCZzcmMgMj4sIDwmc3JjIDM+
Owo+ICsgICAgICAgICAgICAgIHJlc2V0LW5hbWVzID0gImJ5dGUiLCAiZHBpIiwgImVzYyIsICJw
Y2xrIjsKPiArICAgICAgICAgICAgICBwaHlzID0gPCZkcGh5PjsKPiArICAgICAgICAgICAgICBw
aHktbmFtZXMgPSAiZHBoeSI7Cj4gKwo+ICsgICAgICAgICAgICAgIHBhbmVsQDAgewo+ICsgICAg
ICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrdGVjaCxqaDA1N24wMDkwMCI7Cj4g
KyAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MD47Cj4gKyAgICAgICAgICAgICAgICAgICAg
ICBwb3J0QDAgewo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBwYW5lbF9pbjogZW5kcG9p
bnQgewo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVtb3RlLWVuZHBv
aW50ID0gPCZtaXBpX2RzaV9vdXQ+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+
ICsgICAgICAgICAgICAgICAgICAgICAgfTsKPiArICAgICAgICAgICAgICB9Owo+ICsKPiArICAg
ICAgICAgICAgICBwb3J0cyB7Cj4gKyAgICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMg
PSA8MT47Cj4gKyAgICAgICAgICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47Cj4gKwo+ICsg
ICAgICAgICAgICAgICAgICAgIHBvcnRAMCB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
IHJlZyA9IDwwPjsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgbWlwaV9kc2lfaW46IGVu
ZHBvaW50IHsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlbW90
ZS1lbmRwb2ludCA9IDwmbGNkaWZfbWlwaV9kc2k+Owo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICB9Owo+ICsgICAgICAgICAgICAgICAgICAgIH07Cj4gKyAgICAgICAgICAgICAgICAgICAg
cG9ydEAxIHsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDE+Owo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICBtaXBpX2RzaV9vdXQ6IGVuZHBvaW50IHsKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JnBh
bmVsX2luPjsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiArICAgICAgICAgICAg
ICAgICAgICB9Owo+ICsgICAgICAgICAgICAgIH07Cj4gKyAgICAgIH07CgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
