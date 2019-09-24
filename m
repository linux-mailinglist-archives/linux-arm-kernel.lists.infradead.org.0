Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AE6BC277
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 09:22:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g8ItRFtZT8o63R54+ZRTgh4coi7AhT4B1uYgFb9nLZs=; b=vEHV8YNgwlqTgJ
	UKJSuEfQ9Zx0xUS4gmgpbdhpZF+/CK8oEWFV8RbIJzufh8Y4SwTgWB5h0sKvLp/5h3d1WCtKvKq0h
	woTfgIi0EkU3zsdrZoardEeLyNsJL7N/usBinEK+oB3UtweKy3BeJgJdDmwqNOstRaGn5VINCH5pd
	1RJbAUiLiOlUJUxUbsSNwqiTQSSXC7boR3QMBvdVcv3Gk14hjJWRQ6c/cZrTFzW5llMcrf7juE03g
	cPS5ggoeyBvB2tFhQ1msT6jaMCSZaqx6lMIrIr7D5j7onUBhjseSuUmtWpXy/64O39m+8T91cnDCJ
	DclfJxIjdnz5AN5cUR2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCf9I-0000yZ-9g; Tue, 24 Sep 2019 07:22:12 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCf7x-0000xj-Dt
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 07:20:51 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190924072044epoutp02088ccda663c6bd8cdc0a1a52e57b6b58~HTs6JdOqI1165311653epoutp02B
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 07:20:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190924072044epoutp02088ccda663c6bd8cdc0a1a52e57b6b58~HTs6JdOqI1165311653epoutp02B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569309644;
 bh=saSSDc4xlsXQ/We3wuexCjzjZrXJpSPi6UGK1QUa7JY=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=q9csBnjnsULHiBDRuiyCwCVu97nzRnaQhqdHna2oDB24S9l5TS3d/I6BEWgTR8wJy
 yN2Q/Z+iQ5afMAuHmlJopWylcJMQyOxHrNOWiO7UOAWZaCwzPPAQoOBfeeL36et+0I
 vAaJ1Vj+xeua43wQ3vRutjPGzted7R+d1eS6kkH0=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190924072043epcas1p1f1773510d2d0a6cc41aa0200788673fa~HTs5ynO0P1907719077epcas1p1X;
 Tue, 24 Sep 2019 07:20:43 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.157]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 46cszY3yKHzMqYkh; Tue, 24 Sep
 2019 07:20:41 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 C1.2F.04144.9C3C98D5; Tue, 24 Sep 2019 16:20:41 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20190924072040epcas1p4b3dc4391e2dd396d219a7fda95e7d914~HTs3NWAMA1446914469epcas1p4g;
 Tue, 24 Sep 2019 07:20:40 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190924072040epsmtrp1083e95ba69dc7cb7bdce62c69e7559bb~HTs3MgaAy2530125301epsmtrp11;
 Tue, 24 Sep 2019 07:20:40 +0000 (GMT)
X-AuditID: b6c32a35-2dfff70000001030-85-5d89c3c94937
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 57.47.04081.8C3C98D5; Tue, 24 Sep 2019 16:20:40 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190924072040epsmtip14a983e1ec76c8042d4a41b0fe960e26f~HTs24zm1l2318723187epsmtip1S;
 Tue, 24 Sep 2019 07:20:40 +0000 (GMT)
Subject: Re: [PATCH] PM / devfreq: Check NULL governor in
 available_governors_show
To: Leonard Crestez <leonard.crestez@nxp.com>, Matthias Kaehlcke
 <mka@chromium.org>, MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <cf1d1470-e62c-84e4-a926-156baf8aed18@samsung.com>
Date: Tue, 24 Sep 2019 16:25:05 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB70231013FC39AA9A4AD46AC0EE840@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrOJsWRmVeSWpSXmKPExsWy7bCmvu7Jw52xBnfXSVocOraV3eL8+Q3s
 Fmeb3rBb3GqQsVhx9yOrxabH11gtPvceYbT4vOExo8XtxhVsDpwesxsusnhsWtXJ5rF5Sb3H
 xnc7mDwOvtvD5NG3ZRWjx+dNcgHsUdk2GamJKalFCql5yfkpmXnptkrewfHO8aZmBoa6hpYW
 5koKeYm5qbZKLj4Bum6ZOUCHKSmUJeaUAoUCEouLlfTtbIryS0tSFTLyi0tslVILUnIKLAv0
 ihNzi0vz0vWS83OtDA0MjEyBChOyM5ZencFUMFe4ovfLG8YGxsX8XYycHBICJhIPlq5h6WLk
 4hAS2MEoce/QVHYI5xOjxPdjN5lAqoQEvjFKHO5gh+nomH6DGaJoL6PE0eenmCCc94wSG3p6
 wDqEBUIkrh+7CDZXRGA1o8SUE1/A5jILLGKSuLO4A6yKTUBLYv+LG2wgNr+AosTVH48ZQWxe
 ATuJRZ+eA+3g4GARUJWYMTENJCwqECHx6cFhVogSQYmTM5+wgNicArESr2b8BLOZBcQlbj2Z
 zwRhy0s0b50NdqqEQDu7xIqep+wgMyUEXCRezSyEeEdY4tXxLVCvSUm87G+DsqslVp48wgbR
 28EosWX/BVaIhLHE/qWTmUDmMAtoSqzfpQ8RVpTY+XsuI8RePol3X3tYIVbxSnS0CUGUKEtc
 fnCXCcKWlFjc3sk2gVFpFpJvZiH5YBaSD2YhLFvAyLKKUSy1oDg3PbXYsMAQObY3MYITrZbp
 DsYp53wOMQpwMCrx8Bbs6IgVYk0sK67MPcQowcGsJMK7SastVog3JbGyKrUoP76oNCe1+BCj
 KTCsJzJLiSbnA7NAXkm8oamRsbGxhYmhmamhoZI4r0d6Q6yQQHpiSWp2ampBahFMHxMHp1QD
 o7BNx939r1fqL3rG+zPzoMut5jNl0Xtyc96/37kj4eC3mVX5NU+3vijKmLCWO3NX2WGJExua
 5KVOeRw41b5EZYvVpqPvYx4wa/CmHIrkznI8+pKZs8HX/ePVFxLZE3z49wRPOSbUYjRNLnGC
 2MXtaqt7v/65c0KtXL/ZMkNhZ3uu4M56/TJ/OyWW4oxEQy3mouJEAMfVPIfKAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsWy7bCSnO6Jw52xBs3rTS0OHdvKbnH+/AZ2
 i7NNb9gtbjXIWKy4+5HVYtPja6wWn3uPMFp83vCY0eJ24wo2B06P2Q0XWTw2repk89i8pN5j
 47sdTB4H3+1h8ujbsorR4/MmuQD2KC6blNSczLLUIn27BK6MpVdnMBXMFa7o/fKGsYFxMX8X
 IyeHhICJRMf0G8xdjFwcQgK7GSV2vexlh0hISky7eBQowQFkC0scPlwMUfOWUWL9835WkBph
 gRCJ68cusoDYIgKrGSXe9PqD2MwCi5gkJh/Lh2jYySTRc/4/WBGbgJbE/hc32EBsfgFFias/
 HjOC2LwCdhKLPj0HW8YioCoxY2IaSFhUIELi8I5ZUCWCEidnPgEbwykQK/Fqxk8WiF3qEn/m
 XWKGsMUlbj2ZzwRhy0s0b53NPIFReBaS9llIWmYhaZmFpGUBI8sqRsnUguLc9NxiwwLDvNRy
 veLE3OLSvHS95PzcTYzgiNPS3MF4eUn8IUYBDkYlHt6CHR2xQqyJZcWVuYcYJTiYlUR4N2m1
 xQrxpiRWVqUW5ccXleakFh9ilOZgURLnfZp3LFJIID2xJDU7NbUgtQgmy8TBKdXAaFmVrpvD
 nMibUNvG+cNr5S5Pxgih9y8m5C8LW8Q3y6jyzWMOrQv8btbXe1z+nc05c79h7lpPV9+De5SC
 NgScKNp+Ush147/Ea5sfKq8X2R9ubX1ST7Lgwbp6U8PC31Hrf9nEvOPxWamrl6YtpXcr74jr
 1c9Xar6eMpSQlTvR6220r3pdzJoPSizFGYmGWsxFxYkAe/pa2bQCAAA=
X-CMS-MailID: 20190924072040epcas1p4b3dc4391e2dd396d219a7fda95e7d914
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190923163453epcas4p1f9cff7d9f1a33fabcf4c980560d6c27d
References: <CGME20190923163453epcas4p1f9cff7d9f1a33fabcf4c980560d6c27d@epcas4p1.samsung.com>
 <96f459015e6418cee4fa20fdbdb80c4caf417c19.1569256298.git.leonard.crestez@nxp.com>
 <d6ea004f-4fbb-9a16-407e-ad8542abe1dc@samsung.com>
 <VI1PR04MB70231013FC39AA9A4AD46AC0EE840@VI1PR04MB7023.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_002049_710424_9BD69DBF 
X-CRM114-Status: GOOD (  25.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkuIDkuIDI0LiDsmKTtm4QgNDoxNywgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+IE9uIDIw
MTktMDktMjQgNDo0OCBBTSwgQ2hhbndvbyBDaG9pIHdyb3RlOgo+PiBPbiAxOS4gOS4gMjQuIOyY
pOyghCAxOjM0LCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4+PiBUaGUgZ292ZXJub3IgaXMgaW5p
dGlhbGl6ZWQgYWZ0ZXIgc3lzZnMgYXR0cmlidXRlcyBiZWNvbWUgdmlzaWJsZSBzbyBpbgo+Pj4g
dGhlb3J5IHRoZSBnb3Zlcm5vciBmaWVsZCBjYW4gYmUgTlVMTCBoZXJlLgo+Pj4KPj4+IFNpZ25l
ZC1vZmYtYnk6IExlb25hcmQgQ3Jlc3RleiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+Cj4+PiAt
LS0KPj4+ICAgZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYyB8IDIgKy0KPj4+ICAgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Pgo+Pj4gRm91bmQgdGhpcyBi
eSBoYWNraW5nIGRldmljZSBjb3JlIHRvIGNhbGwgYXR0cmlidXRlICJzaG93IiBmdW5jdGlvbnMK
Pj4+IGZyb20gaW5zaWRlIGRldmljZV9hZGQuCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
ZGV2ZnJlcS9kZXZmcmVxLmMgYi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4+PiBpbmRleCAw
MGZjMjNmZWE1YjIuLjg5NmZiMjMxMmYyZiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZGV2ZnJl
cS9kZXZmcmVxLmMKPj4+ICsrKyBiL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMKPj4+IEBAIC0x
MzIyLDExICsxMzIyLDExIEBAIHN0YXRpYyBzc2l6ZV90IGF2YWlsYWJsZV9nb3Zlcm5vcnNfc2hv
dyhzdHJ1Y3QgZGV2aWNlICpkLAo+Pj4gICAKPj4+ICAgCS8qCj4+PiAgIAkgKiBUaGUgZGV2ZnJl
cSB3aXRoIGltbXV0YWJsZSBnb3Zlcm5vciAoZS5nLiwgcGFzc2l2ZSkgc2hvd3MKPj4+ICAgCSAq
IG9ubHkgb3duIGdvdmVybm9yLgo+Pj4gICAJICovCj4+PiAtCWlmIChkZi0+Z292ZXJub3ItPmlt
bXV0YWJsZSkgewo+Pj4gKwlpZiAoZGYtPmdvdmVybm9yICYmIGRmLT5nb3Zlcm5vci0+aW1tdXRh
YmxlKSB7Cj4+PiAgIAkJY291bnQgPSBzY25wcmludGYoJmJ1Zltjb3VudF0sIERFVkZSRVFfTkFN
RV9MRU4sCj4+PiAgIAkJCQkgICIlcyAiLCBkZi0+Z292ZXJub3JfbmFtZSk7Cj4+PiAgIAkvKgo+
Pj4gICAJICogVGhlIGRldmZyZXEgZGV2aWNlIHNob3dzIHRoZSByZWdpc3RlcmVkIGdvdmVybm9y
IGV4Y2VwdCBmb3IKPj4+ICAgCSAqIGltbXV0YWJsZSBnb3Zlcm5vcnMgc3VjaCBhcyBwYXNzaXZl
IGdvdmVybm9yIC4KPj4+Cj4+Cj4+IEFzIHlvdSBtZW50aW9uZWQsIGl0IGNyZWF0ZSBzeXNmcyBh
bmQgdGhlbiBpbml0aWFsaXplIHRoZSBnb3Zlcm5vciBpbnN0YW5jZQo+PiBhcyBmb2xsb3dpbmc6
Cj4+Cj4+IAlkZXZpY2VfcmVnaXN0ZXIoKQo+PiAJCWRldmljZV9hZGQoKQo+PiAJCQlkZXZpY2Vf
YWRkX2F0dHJzKCkKPj4gCQkJCWNyZWF0aW5nIHN5c2ZzIGVudHJpZXMuCj4+IAlnb3Zlcm5vciA9
IHRyeV90aGVuX3JlcXVlc3RfZ292ZXJub3IoLi4uKQo+Pgo+Pgo+PiBUaGFua3MgZm9yIGZpeC11
cC4KPj4gUmV2aWV3ZWQtYnk6IENoYW53b28gQ2hvaSA8Y3cwMC5jaG9pQHNhbXN1bmcuY29tPgo+
Pgo+PiBBZGRpdGlvbmFsbHksIHlvdSBoYXZlIHRvIGFkZCB0aGUgZm9sbG93aW5nICdmaXhlcycg
dGFnCj4+IGFuZCB0aGVuIHNlbmQgaXQgdG8gc3RhYmxlIG1haWxpbmcgbGlzdChzdGFibGVAdmdl
ci5rZXJuZWwub3JnKS4KPj4gLSBGaXhlczogYmNmMjNjNzljNGU0NiAoIlBNIC8gZGV2ZnJlcTog
Rml4IGF2YWlsYWJsZV9nb3Zlcm5vciBzeXNmcyIpCj4gCj4gT0ssIGJ1dCBJJ20gbm90IHN1cmUg
dGhpcyBtZWV0cyB0aGUgY3JpdGVyaWEgZm9yIGluY2x1c2lvbiBpbnRvIGxpbnV4IAo+IHN0YWJs
ZToKPiAKPiAqIEl0IG11c3QgZml4IGEgcmVhbCBidWcgdGhhdCBib3RoZXJzIHBlb3BsZSAobm90
IGEsICJUaGlzIGNvdWxkIGJlIGEgCj4gcHJvYmxlbS4uLiIgdHlwZSB0aGluZykuCj4gKiBObyAi
dGhlb3JldGljYWwgcmFjZSBjb25kaXRpb24iIGlzc3VlcywgdW5sZXNzIGFuIGV4cGxhbmF0aW9u
IG9mIGhvdyAKPiB0aGUgcmFjZSBjYW4gYmUgZXhwbG9pdGVkIGlzIGFsc28gcHJvdmlkZWQuCgpP
Sy4gSWYgeW91IHRoaW5rIHRoYXQgaXQgaXMgbm90IG5lY2Vzc2FyeSB0byBzZW5kIGl0IHRvIHN0
YWJsZSBtYWlsaW5nIGxpc3QsCmRvbid0IHNlbmQgaXQuIFRoYW5rcy4KCj4gCj4gVGhpcyBwYXRj
aCBmaXhlcyBhIHRoZW9yZXRpY2FsIHJhY2UgY29uZGl0aW9uIHdoaWNoIGhhcyBiZWVuIHRoZXJl
IHNpbmNlIAo+IHRoZSBzdGFydC4KPiAKPiAtLQo+IFJlZ2FyZHMsCj4gTGVvbmFyZAo+IAoKCi0t
IApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
