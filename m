Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3D0EA968
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 04:05:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3HKUKUe6Z+qCv29K3G6srSvkPv2ZGmpEQd/KTIYHQVY=; b=lo/KbVpcIrZGld
	5NgnZBj46TNaJRxWuvem+hfTXoaT5c+jSupFf5LXL/963R5dqeFF2CdulDI3awndUsMWVCA+bM1W5
	uLhVOvQuB8JWLgI8N+vmIRDqQpScu2dtVOUd3IXokEhF38wfk/la945mvqpNpNtG+5dVk78OtfXY7
	MoKas+KghmigJtGxlFqqYi5LCDaNE5AO47YNaV3GO8QMDNdxmo6UDLNGCIxef4DuSXxs3uL/2EKnl
	3xuIz6khScP7g7c9ve/4dNRiuW7BVzviyX26wvPiYWmjBHquZMP+gtaKpfD6Wa8uO4cVSqYUkl9D0
	4wpCxibDmiSGb92Iz1RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ0mF-00021j-4l; Thu, 31 Oct 2019 03:05:35 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ0m3-000211-Dw
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 03:05:25 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20191031030518epoutp03d0869a8537391a199a03f0f4b238fa59~SnFc8bdxt2350723507epoutp03e
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 03:05:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20191031030518epoutp03d0869a8537391a199a03f0f4b238fa59~SnFc8bdxt2350723507epoutp03e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1572491118;
 bh=4pJYfAQIOHvZ/EwGHd79+fMQuHEO2zbx2yBIhPMLpno=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=WpR7+bT4eiAVhzmKtOYkFXbV6sYxj+WmOmnMufm5Hfc6FdOECPcmWhwo9yiDbJ1q8
 zECxAZpeK58GWrx6+NLq3VT2rHtic6FCTth/lBoisMNsAzHFm+zM2+QkknECokcXzO
 B92zO0uu4cjoGNu06FusvFaH6Fffpe2EcUqwPJO4=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20191031030517epcas1p37352d7c9e84c543705ed98cc6da73250~SnFcWYs8s2768927689epcas1p3S;
 Thu, 31 Oct 2019 03:05:17 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.152]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 473VYl4DcDzMqYlh; Thu, 31 Oct
 2019 03:05:15 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 36.AE.04085.B6F4ABD5; Thu, 31 Oct 2019 12:05:15 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191031030515epcas1p115f0adeafdfaddbc089878e9c496906f~SnFaC86wT1568715687epcas1p17;
 Thu, 31 Oct 2019 03:05:15 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191031030515epsmtrp26a5798310c6bd67ea2a1cda13223b435~SnFaCCIx91561315613epsmtrp2D;
 Thu, 31 Oct 2019 03:05:15 +0000 (GMT)
X-AuditID: b6c32a37-e31ff70000000ff5-7c-5dba4f6b97b1
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 6C.BD.25663.B6F4ABD5; Thu, 31 Oct 2019 12:05:15 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191031030514epsmtip1430ccb11724718607308c9e023b90f45~SnFZoDOcn1578615786epsmtip1y;
 Thu, 31 Oct 2019 03:05:14 +0000 (GMT)
Subject: Re: [PATCH v9 8/8] PM / devfreq: Use PM QoS for sysfs min/max_freq
To: Leonard Crestez <leonard.crestez@nxp.com>, Matthias Kaehlcke
 <mka@chromium.org>, MyungJoo Ham <myungjoo.ham@samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <e96ab4af-68ad-ac0e-9671-2df62a21dbf4@samsung.com>
Date: Thu, 31 Oct 2019 12:10:47 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <62584a1e5c08d0f9254df505883fb220ba53d57b.1570044052.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrOJsWRmVeSWpSXmKPExsWy7bCmnm62/65Yg0vHlSwOHdvKbvH19ClG
 i2WXjjJaTN+7ic3i/PkN7BZnm96wW9xqkLFYcfcjq8Wmx9dYLbp+rWS2+Nx7hNHi84bHjBa3
 G1ewWaw+d5DNouvQXzaLjV89HAQ83t9oZfeY3XCRxWPBplKPTas62TzuXNvD5rF5Sb3Hxnc7
 mDwOvtvD5NG3ZRWjx+dNcgFcUdk2GamJKalFCql5yfkpmXnptkrewfHO8aZmBoa6hpYW5koK
 eYm5qbZKLj4Bum6ZOUCPKCmUJeaUAoUCEouLlfTtbIryS0tSFTLyi0tslVILUnIKLAv0ihNz
 i0vz0vWS83OtDA0MjEyBChOyM3p62tgLHjhXfF3wiq2B8YxZFyMnh4SAicTqtWdZuxi5OIQE
 djBKHH58iR3C+cQosXf/axYI5xujxLdZTUBlHGAtOx94QcT3Mkrc3tgOVfSeUeLKrEksIHOF
 BbwlOj73MYHYIgJ1ErcWn2AGKWIWmMgi8f9XF1gRm4CWxP4XN9hAbH4BRYmrPx4zgti8AnYS
 M1/PA4uzCKhKdCx/wg6yWVQgQuL010SIEkGJkzOfgI3hFIiTaDryGsxmFhCXuPVkPhOELS/R
 vHU22F4JgUvsEkfXd7BCPO0iMa35DDuELSzx6vgWKFtK4vO7vWwQdrXEypNH2CCaOxgltuy/
 ANVsLLF/6WQmkIOYBTQl1u/ShwgrSuz8PZcRYjGfxLuvPdDQ4pXoaBOCKFGWuPzgLhOELSmx
 uL2TbQKj0iwk78xC8sIsJC/MQli2gJFlFaNYakFxbnpqsWGBMXJsb2IEJ3It8x2MG875HGIU
 4GBU4uGdULYzVog1say4MvcQowQHs5II7zcboBBvSmJlVWpRfnxRaU5q8SFGU2BgT2SWEk3O
 B2aZvJJ4Q1MjY2NjCxNDM1NDQyVxXsflS2OFBNITS1KzU1MLUotg+pg4OKUaGKv4z59YbRx9
 XMVDz7GsNrtEs0kwe7JWyuzyw3IVRmrqqqnTKy4s7DL61n6098uE71WrX/0XmCU17f5Bn00h
 TSZCK6tfChzyN18e/nhNx2QzKbvtG/rvbM9ct/U+11OZlhNbrT5csmcWV/fgtt1SKtboqnvd
 g7klds190+nxs1dYZE54eLHcQImlOCPRUIu5qDgRACJikb/6AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrEIsWRmVeSWpSXmKPExsWy7bCSnG62/65Yg+bn3BaHjm1lt/h6+hSj
 xbJLRxktpu/dxGZx/vwGdouzTW/YLW41yFisuPuR1WLT42usFl2/VjJbfO49wmjxecNjRovb
 jSvYLFafO8hm0XXoL5vFxq8eDgIe72+0snvMbrjI4rFgU6nHplWdbB53ru1h89i8pN5j47sd
 TB4H3+1h8ujbsorR4/MmuQCuKC6blNSczLLUIn27BK6Mnp429oIHzhVfF7xia2A8Y9bFyMEh
 IWAisfOBVxcjF4eQwG5Gib33vrF1MXICxSUlpl08ygxRIyxx+HAxRM1bRokJMyaygtQIC3hL
 dHzuYwKxRQTqJP4838cEUsQsMJlF4uDRfYwQHY8YJV61PAKrYhPQktj/4gbYBn4BRYmrPx4z
 gti8AnYSM1/PA4uzCKhKdCx/wg5iiwpESDzffgOqRlDi5MwnLCA2p0CcRNOR12A2s4C6xJ95
 l5ghbHGJW0/mM0HY8hLNW2czT2AUnoWkfRaSlllIWmYhaVnAyLKKUTK1oDg3PbfYsMAoL7Vc
 rzgxt7g0L10vOT93EyM4prW0djCeOBF/iFGAg1GJh3dC2c5YIdbEsuLK3EOMEhzMSiK832yA
 QrwpiZVVqUX58UWlOanFhxilOViUxHnl849FCgmkJ5akZqemFqQWwWSZODilGhjTZKQF/L+e
 uTZj/Za1t4p+OBWe82I5upJR50HM8brJh1yXR513O/p56nPWmr+Jpc7bpv44tGpx0b/Xv/yX
 P9o9Qc5wO3fW7QO39sm2C6npfIprdX1+V6MgXs/f52D8kgMvXHfc+rW+QqVb3L1zxcXHSpKf
 3wQJGr7f8+2KzLbXpWen6QZ9EV7frMRSnJFoqMVcVJwIACE4LRblAgAA
X-CMS-MailID: 20191031030515epcas1p115f0adeafdfaddbc089878e9c496906f
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191002192528epcas3p2e546b4081abb8cadaf80bd811d5d3e8c
References: <cover.1570044052.git.leonard.crestez@nxp.com>
 <CGME20191002192528epcas3p2e546b4081abb8cadaf80bd811d5d3e8c@epcas3p2.samsung.com>
 <62584a1e5c08d0f9254df505883fb220ba53d57b.1570044052.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_200523_874663_832586C2 
X-CRM114-Status: GOOD (  30.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGVvbmFyZCwKCkl0IGxvb2tzIGdvb2QgdG8gbWUuIFRoYW5rcyBmb3IgeW91ciBlZmZvcnQu
CkJ1dCwgSSBoYXZlIG9uZSBtaW5vciBjb21tZW50IHJlbGF0ZWQgdG8gJ292ZXIgODAgY2hhcicu
CgpQbGVhc2UgZWRpdCB0aGlzIGxpbmUgYXMgZm9sbG93aW5nIGluIG9yZGVyIHRvIHByZXZlbnQg
dGhlICdvdmVyIDgwIGNoYXInCgoJZGV2X3dhcm4oZGV2LT5wYXJlbnQsCgkJIkZhaWxlZCB0byBy
ZW1vdmUgREVWX1BNX1FPU19NQVhfRlJFUVVFTkNZIHJlcXVlc3Q6ICVkXG4iLCBlcnIpOwoKCWRl
dl93YXJuKGRldi0+cGFyZW50LAoJCSJGYWlsZWQgdG8gcmVtb3ZlIERFVl9QTV9RT1NfTUlOX0ZS
RVFVRU5DWSByZXF1ZXN0OiAlZFxuIiwgZXJyKTsKCgpJZiB5b3UgZWRpdCB0aGVtLCBmZWVsIGZy
ZWUgdG8gYWRkIG15IHJldmlld2VkLWJ5IHRhZzoKClJldmlld2VkLWJ5OiBDaGFud29vIENob2kg
PGN3MDAuY2hvaUBzYW1zdW5nLmNvbT4KCk9uIDE5LiAxMC4gMy4g7Jik7KCEIDQ6MjUsIExlb25h
cmQgQ3Jlc3RleiB3cm90ZToKPiBTd2l0Y2ggdGhlIGhhbmRsaW5nIG9mIG1pbl9mcmVxIGFuZCBt
YXhfZnJlcSBmcm9tIHN5c2ZzIHRvIHVzZSB0aGUKPiBkZXZfcG1fcW9zX3JlcXVlc3QgaW50ZXJm
YWNlLgo+IAo+IFNpbmNlIFBNIFFvUyBoYW5kbGVzIGZyZXF1ZW5jaWVzIGFzIGtIeiB0aGlzIGNo
YW5nZSByZWR1Y2VzIHRoZQo+IHByZWNpc2lvbiBvZiBtaW5fZnJlcSBhbmQgbWF4X2ZyZXEuIFRo
aXMgc2hvdWxkbid0IGludHJvZHVjZSBwcm9ibGVtcwo+IGJlY2F1c2UgZnJlcXVlbmNpZXMgd2hp
Y2ggYXJlIG5vdCBhbiBpbnRlZ2VyIG51bWJlciBvZiBrSHogYXJlIGxpa2VseQo+IG5vdCBhbiBp
bnRlZ2VyIG51bWJlciBvZiBIeiBlaXRoZXIuCj4gCj4gVHJ5IHRvIGVuc3VyZSBjb21wYXRpYmls
aXR5IGJ5IHJvdW5kaW5nIG1pbiB2YWx1ZXMgZG93biBhbmQgcm91bmRpbmcKPiBtYXggdmFsdWVz
IHVwLgo+IAo+IFNpZ25lZC1vZmYtYnk6IExlb25hcmQgQ3Jlc3RleiA8bGVvbmFyZC5jcmVzdGV6
QG54cC5jb20+Cj4gUmV2aWV3ZWQtYnk6IE1hdHRoaWFzIEthZWhsY2tlIDxta2FAY2hyb21pdW0u
b3JnPgo+IC0tLQo+ICBkcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jIHwgNjMgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tCj4gIGluY2x1ZGUvbGludXgvZGV2ZnJlcS5oICAg
fCAgOSArKystLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA1MSBpbnNlcnRpb25zKCspLCAyMSBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYyBiL2Ry
aXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMKPiBpbmRleCA0NmY2OTliODRhMjIuLjRmZjVmYmM0ZWU4
NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4gKysrIGIvZHJpdmVy
cy9kZXZmcmVxL2RldmZyZXEuYwo+IEBAIC0xMzksMTQgKzEzOSwxMCBAQCBzdGF0aWMgdm9pZCBn
ZXRfZnJlcV9yYW5nZShzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSwKPiAgCSptaW5fZnJlcSA9IG1h
eCgqbWluX2ZyZXEsICh1bnNpZ25lZCBsb25nKUhaX1BFUl9LSFogKiBxb3NfbWluX2ZyZXEpOwo+
ICAJaWYgKHFvc19tYXhfZnJlcSAhPSBQTV9RT1NfTUFYX0ZSRVFVRU5DWV9ERUZBVUxUX1ZBTFVF
KQo+ICAJCSptYXhfZnJlcSA9IG1pbigqbWF4X2ZyZXEsCj4gIAkJCQkodW5zaWduZWQgbG9uZylI
Wl9QRVJfS0haICogcW9zX21heF9mcmVxKTsKPiAgCj4gLQkvKiBBcHBseSBjb25zdHJhaW50cyBm
cm9tIHN5c2ZzICovCj4gLQkqbWluX2ZyZXEgPSBtYXgoKm1pbl9mcmVxLCBkZXZmcmVxLT5taW5f
ZnJlcSk7Cj4gLQkqbWF4X2ZyZXEgPSBtaW4oKm1heF9mcmVxLCBkZXZmcmVxLT5tYXhfZnJlcSk7
Cj4gLQo+ICAJLyogQXBwbHkgY29uc3RyYWludHMgZnJvbSBPUFAgaW50ZXJmYWNlICovCj4gIAkq
bWluX2ZyZXEgPSBtYXgoKm1pbl9mcmVxLCBkZXZmcmVxLT5zY2FsaW5nX21pbl9mcmVxKTsKPiAg
CS8qIHNjYWxpbmdfbWF4X2ZyZXEgY2FuIGJlIHplcm8gb24gZXJyb3IgKi8KPiAgCWlmIChkZXZm
cmVxLT5zY2FsaW5nX21heF9mcmVxKQo+ICAJCSptYXhfZnJlcSA9IG1pbigqbWF4X2ZyZXEsIGRl
dmZyZXEtPnNjYWxpbmdfbWF4X2ZyZXEpOwo+IEBAIC02OTAsMTAgKzY4NiwxOCBAQCBzdGF0aWMg
dm9pZCBkZXZmcmVxX2Rldl9yZWxlYXNlKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgCQkJIGVycik7
Cj4gIAo+ICAJaWYgKGRldmZyZXEtPnByb2ZpbGUtPmV4aXQpCj4gIAkJZGV2ZnJlcS0+cHJvZmls
ZS0+ZXhpdChkZXZmcmVxLT5kZXYucGFyZW50KTsKPiAgCj4gKwllcnIgPSBkZXZfcG1fcW9zX3Jl
bW92ZV9yZXF1ZXN0KCZkZXZmcmVxLT51c2VyX21heF9mcmVxX3JlcSk7Cj4gKwlpZiAoZXJyKQo+
ICsJCWRldl93YXJuKGRldi0+cGFyZW50LCAiRmFpbGVkIHRvIHJlbW92ZSBERVZfUE1fUU9TX01B
WF9GUkVRVUVOQ1kgcmVxdWVzdDogJWRcbiIsCj4gKwkJCSBlcnIpOwoKUGxlYXNlIGVkaXQgdGhp
cyBsaW5lIGFzIGZvbGxvd2luZyBpbiBvcmRlciB0byBwcmV2ZW50IHRoZSAnb3ZlciA4MCBjaGFy
JwoKCQlkZXZfd2FybihkZXYtPnBhcmVudCwKCQkJIkZhaWxlZCB0byByZW1vdmUgREVWX1BNX1FP
U19NQVhfRlJFUVVFTkNZIHJlcXVlc3Q6ICVkXG4iLCBlcnIpOwoKPiArCWVyciA9IGRldl9wbV9x
b3NfcmVtb3ZlX3JlcXVlc3QoJmRldmZyZXEtPnVzZXJfbWluX2ZyZXFfcmVxKTsKPiArCWlmIChl
cnIpCj4gKwkJZGV2X3dhcm4oZGV2LT5wYXJlbnQsICJGYWlsZWQgdG8gcmVtb3ZlIERFVl9QTV9R
T1NfTUlOX0ZSRVFVRU5DWSByZXF1ZXN0OiAlZFxuIiwKPiArCQkJIGVycik7CgpkaXR0by4gUGxl
YXNlIGVkaXQgdGhpcyBsaW5lIGFzIGZvbGxvd2luZzoKCQlkZXZfd2FybihkZXYtPnBhcmVudCwK
CQkJIkZhaWxlZCB0byByZW1vdmUgREVWX1BNX1FPU19NSU5fRlJFUVVFTkNZIHJlcXVlc3Q6ICVk
XG4iLCBlcnIpOwoKPiAgCWtmcmVlKGRldmZyZXEtPnRpbWVfaW5fc3RhdGUpOwo+ICAJa2ZyZWUo
ZGV2ZnJlcS0+dHJhbnNfdGFibGUpOwo+ICAJbXV0ZXhfZGVzdHJveSgmZGV2ZnJlcS0+bG9jayk7
Cj4gIAlrZnJlZShkZXZmcmVxKTsKPiAgfQo+IEBAIC03NTgsMTggKzc2MiwyNiBAQCBzdHJ1Y3Qg
ZGV2ZnJlcSAqZGV2ZnJlcV9hZGRfZGV2aWNlKHN0cnVjdCBkZXZpY2UgKmRldiwKPiAgCWRldmZy
ZXEtPnNjYWxpbmdfbWluX2ZyZXEgPSBmaW5kX2F2YWlsYWJsZV9taW5fZnJlcShkZXZmcmVxKTsK
PiAgCWlmICghZGV2ZnJlcS0+c2NhbGluZ19taW5fZnJlcSkgewo+ICAJCWVyciA9IC1FSU5WQUw7
Cj4gIAkJZ290byBlcnJfZGV2Owo+ICAJfQo+IC0JZGV2ZnJlcS0+bWluX2ZyZXEgPSBkZXZmcmVx
LT5zY2FsaW5nX21pbl9mcmVxOwo+ICAKPiAgCWRldmZyZXEtPnNjYWxpbmdfbWF4X2ZyZXEgPSBm
aW5kX2F2YWlsYWJsZV9tYXhfZnJlcShkZXZmcmVxKTsKPiAgCWlmICghZGV2ZnJlcS0+c2NhbGlu
Z19tYXhfZnJlcSkgewo+ICAJCWVyciA9IC1FSU5WQUw7Cj4gIAkJZ290byBlcnJfZGV2Owo+ICAJ
fQo+IC0JZGV2ZnJlcS0+bWF4X2ZyZXEgPSBkZXZmcmVxLT5zY2FsaW5nX21heF9mcmVxOwo+ICsK
PiArCWVyciA9IGRldl9wbV9xb3NfYWRkX3JlcXVlc3QoZGV2LCAmZGV2ZnJlcS0+dXNlcl9taW5f
ZnJlcV9yZXEsCj4gKwkJCQkgICAgIERFVl9QTV9RT1NfTUlOX0ZSRVFVRU5DWSwgMCk7Cj4gKwlp
ZiAoZXJyIDwgMCkKPiArCQlnb3RvIGVycl9kZXY7Cj4gKwllcnIgPSBkZXZfcG1fcW9zX2FkZF9y
ZXF1ZXN0KGRldiwgJmRldmZyZXEtPnVzZXJfbWF4X2ZyZXFfcmVxLAo+ICsJCQkJICAgICBERVZf
UE1fUU9TX01BWF9GUkVRVUVOQ1ksCj4gKwkJCQkgICAgIFBNX1FPU19NQVhfRlJFUVVFTkNZX0RF
RkFVTFRfVkFMVUUpOwo+ICsJaWYgKGVyciA8IDApCj4gKwkJZ290byBlcnJfZGV2Owo+ICAKPiAg
CWRldmZyZXEtPnN1c3BlbmRfZnJlcSA9IGRldl9wbV9vcHBfZ2V0X3N1c3BlbmRfb3BwX2ZyZXEo
ZGV2KTsKPiAgCWF0b21pY19zZXQoJmRldmZyZXEtPnN1c3BlbmRfY291bnQsIDApOwo+ICAKPiAg
CWRldmZyZXEtPnRyYW5zX3RhYmxlID0ga3phbGxvYygKPiBAQCAtODQ4LDEwICs4NjAsMTYgQEAg
c3RydWN0IGRldmZyZXEgKmRldmZyZXFfYWRkX2RldmljZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4g
IGVycl9kZXY6Cj4gIAkvKgo+ICAJICogQ2xlYW51cCBwYXRoIGZvciBlcnJvcnMgdGhhdCBoYXBw
ZW4gYmVmb3JlIHJlZ2lzdHJhdGlvbi4KPiAgCSAqIE90aGVyd2lzZSB3ZSByZWx5IG9uIGRldmZy
ZXFfZGV2X3JlbGVhc2UuCj4gIAkgKi8KPiArCWlmIChkZXZfcG1fcW9zX3JlcXVlc3RfYWN0aXZl
KCZkZXZmcmVxLT51c2VyX21heF9mcmVxX3JlcSkpCj4gKwkJaWYgKGRldl9wbV9xb3NfcmVtb3Zl
X3JlcXVlc3QoJmRldmZyZXEtPnVzZXJfbWF4X2ZyZXFfcmVxKSkKPiArCQkJZGV2X3dhcm4oZGV2
LCAiRmFpbGVkIHRvIHJlbW92ZSBERVZfUE1fUU9TX01BWF9GUkVRVUVOQ1kgcmVxdWVzdFxuIik7
Cj4gKwlpZiAoZGV2X3BtX3Fvc19yZXF1ZXN0X2FjdGl2ZSgmZGV2ZnJlcS0+dXNlcl9taW5fZnJl
cV9yZXEpKQo+ICsJCWlmIChkZXZfcG1fcW9zX3JlbW92ZV9yZXF1ZXN0KCZkZXZmcmVxLT51c2Vy
X21pbl9mcmVxX3JlcSkpCj4gKwkJCWRldl93YXJuKGRldiwgIkZhaWxlZCB0byByZW1vdmUgREVW
X1BNX1FPU19NSU5fRlJFUVVFTkNZIHJlcXVlc3RcbiIpOwo+ICAJa2ZyZWUoZGV2ZnJlcS0+dGlt
ZV9pbl9zdGF0ZSk7Cj4gIAlrZnJlZShkZXZmcmVxLT50cmFuc190YWJsZSk7Cj4gIAlrZnJlZShk
ZXZmcmVxKTsKPiAgZXJyX291dDoKPiAgCXJldHVybiBFUlJfUFRSKGVycik7Cj4gQEAgLTEzOTIs
MTQgKzE0MTAsMTUgQEAgc3RhdGljIHNzaXplX3QgbWluX2ZyZXFfc3RvcmUoc3RydWN0IGRldmlj
ZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwKPiAgCj4gIAlyZXQgPSBzc2Nh
bmYoYnVmLCAiJWx1IiwgJnZhbHVlKTsKPiAgCWlmIChyZXQgIT0gMSkKPiAgCQlyZXR1cm4gLUVJ
TlZBTDsKPiAgCj4gLQltdXRleF9sb2NrKCZkZi0+bG9jayk7Cj4gLQlkZi0+bWluX2ZyZXEgPSB2
YWx1ZTsKPiAtCXVwZGF0ZV9kZXZmcmVxKGRmKTsKPiAtCW11dGV4X3VubG9jaygmZGYtPmxvY2sp
Owo+ICsJLyogUm91bmQgZG93biB0byBrSHogZm9yIFBNIFFvUyAqLwo+ICsJcmV0ID0gZGV2X3Bt
X3Fvc191cGRhdGVfcmVxdWVzdCgmZGYtPnVzZXJfbWluX2ZyZXFfcmVxLAo+ICsJCQkJCXZhbHVl
IC8gSFpfUEVSX0tIWik7Cj4gKwlpZiAocmV0IDwgMCkKPiArCQlyZXR1cm4gcmV0Owo+ICAKPiAg
CXJldHVybiBjb3VudDsKPiAgfQo+ICAKPiAgc3RhdGljIHNzaXplX3QgbWluX2ZyZXFfc2hvdyhz
dHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAo+IEBAIC0x
NDI0LDE4ICsxNDQzLDI4IEBAIHN0YXRpYyBzc2l6ZV90IG1heF9mcmVxX3N0b3JlKHN0cnVjdCBk
ZXZpY2UgKmRldiwgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsCj4gIAo+ICAJcmV0ID0g
c3NjYW5mKGJ1ZiwgIiVsdSIsICZ2YWx1ZSk7Cj4gIAlpZiAocmV0ICE9IDEpCj4gIAkJcmV0dXJu
IC1FSU5WQUw7Cj4gIAo+IC0JbXV0ZXhfbG9jaygmZGYtPmxvY2spOwo+IC0KPiAtCWlmICghdmFs
dWUpCj4gLQkJdmFsdWUgPSBVTE9OR19NQVg7Cj4gKwkvKgo+ICsJICogUE0gUW9TIGZyZXF1ZW5j
aWVzIGFyZSBpbiBrSHogc28gd2UgbmVlZCB0byBjb252ZXJ0LiBDb252ZXJ0IGJ5Cj4gKwkgKiBy
b3VuZGluZyB1cHdhcmRzIHNvIHRoYXQgdGhlIGFjY2VwdGFibGUgaW50ZXJ2YWwgbmV2ZXIgc2hy
aW5rcy4KPiArCSAqCj4gKwkgKiBGb3IgZXhhbXBsZSBpZiB0aGUgdXNlciB3cml0ZXMgIjY2NjY2
NjY2NiIgdG8gc3lzZnMgdGhpcyB2YWx1ZSB3aWxsCj4gKwkgKiBiZSBjb252ZXJ0ZWQgdG8gNjY2
NjY3IGtIeiBhbmQgYmFjayB0byA2NjY2NjcwMDAgSHogYmVmb3JlIGFuIE9QUAo+ICsJICogbG9v
a3VwLCB0aGlzIGVuc3VyZXMgdGhhdCBhbiBPUFAgb2YgNjY2NjY2NjY2SHogaXMgc3RpbGwgYWNj
ZXB0ZWQuCj4gKwkgKgo+ICsJICogQSB2YWx1ZSBvZiB6ZXJvIG1lYW5zICJubyBsaW1pdCIuCj4g
KwkgKi8KPiArCWlmICh2YWx1ZSkKPiArCQl2YWx1ZSA9IERJVl9ST1VORF9VUCh2YWx1ZSwgSFpf
UEVSX0tIWik7Cj4gKwllbHNlCj4gKwkJdmFsdWUgPSBQTV9RT1NfTUFYX0ZSRVFVRU5DWV9ERUZB
VUxUX1ZBTFVFOwo+ICAKPiAtCWRmLT5tYXhfZnJlcSA9IHZhbHVlOwo+IC0JdXBkYXRlX2RldmZy
ZXEoZGYpOwo+IC0JbXV0ZXhfdW5sb2NrKCZkZi0+bG9jayk7Cj4gKwlyZXQgPSBkZXZfcG1fcW9z
X3VwZGF0ZV9yZXF1ZXN0KCZkZi0+dXNlcl9tYXhfZnJlcV9yZXEsIHZhbHVlKTsKPiArCWlmIChy
ZXQgPCAwKQo+ICsJCXJldHVybiByZXQ7Cj4gIAo+ICAJcmV0dXJuIGNvdW50Owo+ICB9Cj4gIHN0
YXRpYyBERVZJQ0VfQVRUUl9SVyhtaW5fZnJlcSk7Cj4gIAo+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L2xpbnV4L2RldmZyZXEuaCBiL2luY2x1ZGUvbGludXgvZGV2ZnJlcS5oCj4gaW5kZXggOGI5MmNj
YmQxOTYyLi5mYjM3NmI1YjcyODEgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9kZXZmcmVx
LmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L2RldmZyZXEuaAo+IEBAIC0xMSwxMCArMTEsMTEgQEAK
PiAgI2RlZmluZSBfX0xJTlVYX0RFVkZSRVFfSF9fCj4gIAo+ICAjaW5jbHVkZSA8bGludXgvZGV2
aWNlLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9ub3RpZmllci5oPgo+ICAjaW5jbHVkZSA8bGludXgv
cG1fb3BwLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9wbV9xb3MuaD4KPiAgCj4gICNkZWZpbmUgREVW
RlJFUV9OQU1FX0xFTiAxNgo+ICAKPiAgLyogREVWRlJFUSBnb3Zlcm5vciBuYW1lICovCj4gICNk
ZWZpbmUgREVWRlJFUV9HT1ZfU0lNUExFX09OREVNQU5ECSJzaW1wbGVfb25kZW1hbmQiCj4gQEAg
LTEyMSwxMiArMTIyLDEyIEBAIHN0cnVjdCBkZXZmcmVxX2Rldl9wcm9maWxlIHsKPiAgICoJCWRl
dmZyZXEubmIgdG8gdGhlIGNvcnJlc3BvbmRpbmcgcmVnaXN0ZXIgbm90aWZpZXIgY2FsbCBjaGFp
bi4KPiAgICogQHdvcms6CWRlbGF5ZWQgd29yayBmb3IgbG9hZCBtb25pdG9yaW5nLgo+ICAgKiBA
cHJldmlvdXNfZnJlcToJcHJldmlvdXNseSBjb25maWd1cmVkIGZyZXF1ZW5jeSB2YWx1ZS4KPiAg
ICogQGRhdGE6CVByaXZhdGUgZGF0YSBvZiB0aGUgZ292ZXJub3IuIFRoZSBkZXZmcmVxIGZyYW1l
d29yayBkb2VzIG5vdAo+ICAgKgkJdG91Y2ggdGhpcy4KPiAtICogQG1pbl9mcmVxOglMaW1pdCBt
aW5pbXVtIGZyZXF1ZW5jeSByZXF1ZXN0ZWQgYnkgdXNlciAoMDogbm9uZSkKPiAtICogQG1heF9m
cmVxOglMaW1pdCBtYXhpbXVtIGZyZXF1ZW5jeSByZXF1ZXN0ZWQgYnkgdXNlciAoMDogbm9uZSkK
PiArICogQHVzZXJfbWluX2ZyZXFfcmVxOglQTSBRb1MgbWluaW11bSBmcmVxdWVuY3kgcmVxdWVz
dCBmcm9tIHVzZXIgKHZpYSBzeXNmcykKPiArICogQHVzZXJfbWF4X2ZyZXFfcmVxOglQTSBRb1Mg
bWF4aW11bSBmcmVxdWVuY3kgcmVxdWVzdCBmcm9tIHVzZXIgKHZpYSBzeXNmcykKPiAgICogQHNj
YWxpbmdfbWluX2ZyZXE6CUxpbWl0IG1pbmltdW0gZnJlcXVlbmN5IHJlcXVlc3RlZCBieSBPUFAg
aW50ZXJmYWNlCj4gICAqIEBzY2FsaW5nX21heF9mcmVxOglMaW1pdCBtYXhpbXVtIGZyZXF1ZW5j
eSByZXF1ZXN0ZWQgYnkgT1BQIGludGVyZmFjZQo+ICAgKiBAc3RvcF9wb2xsaW5nOgkgZGV2ZnJl
cSBwb2xsaW5nIHN0YXR1cyBvZiBhIGRldmljZS4KPiAgICogQHN1c3BlbmRfZnJlcToJIGZyZXF1
ZW5jeSBvZiBhIGRldmljZSBzZXQgZHVyaW5nIHN1c3BlbmQgcGhhc2UuCj4gICAqIEByZXN1bWVf
ZnJlcToJIGZyZXF1ZW5jeSBvZiBhIGRldmljZSBzZXQgaW4gcmVzdW1lIHBoYXNlLgo+IEBAIC0x
NjEsMTIgKzE2MiwxMiBAQCBzdHJ1Y3QgZGV2ZnJlcSB7Cj4gIAl1bnNpZ25lZCBsb25nIHByZXZp
b3VzX2ZyZXE7Cj4gIAlzdHJ1Y3QgZGV2ZnJlcV9kZXZfc3RhdHVzIGxhc3Rfc3RhdHVzOwo+ICAK
PiAgCXZvaWQgKmRhdGE7IC8qIHByaXZhdGUgZGF0YSBmb3IgZ292ZXJub3JzICovCj4gIAo+IC0J
dW5zaWduZWQgbG9uZyBtaW5fZnJlcTsKPiAtCXVuc2lnbmVkIGxvbmcgbWF4X2ZyZXE7Cj4gKwlz
dHJ1Y3QgZGV2X3BtX3Fvc19yZXF1ZXN0IHVzZXJfbWluX2ZyZXFfcmVxOwo+ICsJc3RydWN0IGRl
dl9wbV9xb3NfcmVxdWVzdCB1c2VyX21heF9mcmVxX3JlcTsKPiAgCXVuc2lnbmVkIGxvbmcgc2Nh
bGluZ19taW5fZnJlcTsKPiAgCXVuc2lnbmVkIGxvbmcgc2NhbGluZ19tYXhfZnJlcTsKPiAgCWJv
b2wgc3RvcF9wb2xsaW5nOwo+ICAKPiAgCXVuc2lnbmVkIGxvbmcgc3VzcGVuZF9mcmVxOwo+IAoK
Ci0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
