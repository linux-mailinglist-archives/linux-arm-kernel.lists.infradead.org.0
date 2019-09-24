Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EE7BBFCD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 03:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6gQ8ya6VN7AOaA0ffSezLj3r9OHIV9LGUBM5WDG1ms=; b=oAICjMVLpMtCot
	z4Zyy57A+hZ25GqsfSTzOBpiSZEzXv4irJodApbRCaNRZbVL1RFbS9URA8RrwXtV+IPVw8Z6fuOo3
	yObnHjcCmMrxTnc6Llxq93rZmdpYbYO6TU+iI6BUdPLk5mkJLeMcnWNj9OFRuU+9B6ScIN6SFS33i
	0vS+pg+tExxBGIU5sAs4EXi8ZsHdd7L9UQk4FewFpiOrx8xTXlMFIR3tF9MFAyrGxAOi0dLwsVhAP
	6wjkJqb8I5TeDg2tZAy9sx1yqsGq+s5soxHQ5rflfAbXQkeh7F/aBWB9wmx5YfTZggkF64ILg7ub9
	DdZ9HHY9QGmMsrdc3cbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCZwj-0006JH-5y; Tue, 24 Sep 2019 01:48:53 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCZwa-0006Ie-Cd
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 01:48:46 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190924014840epoutp033b4f774cfe1fc8ba8898d20bd19a244b~HPK_ez0i92790027900epoutp03s
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 01:48:40 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190924014840epoutp033b4f774cfe1fc8ba8898d20bd19a244b~HPK_ez0i92790027900epoutp03s
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569289720;
 bh=pJpHgTiVkNpubEJdZxNYCQu8eOFl0FLblp7ke2xtmf0=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=o2AJKqm8449qKKw+a7es/bzWGOrQSBi4x6rgpf/lit2uasPJ/KHW/FY6xyV+Zxalu
 p2i141blPw1DHZySR38rQF458nyC5nxNBR2OotRnrcaqkaXog7wEiLrfPyv+cbWCT1
 ktOEQ5A529McFnpOrN/FG9gRQ8o/lnYSe/0417EY=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20190924014839epcas1p36af68c6e22c22a0b1657c067d86065c6~HPK_DIj-F0605906059epcas1p3D;
 Tue, 24 Sep 2019 01:48:39 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.155]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 46ckcL6CTSzMqYlr; Tue, 24 Sep
 2019 01:48:34 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 18.C0.04068.DE5798D5; Tue, 24 Sep 2019 10:48:29 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190924014828epcas1p2051e6043f723fb31f124e33d96f1d9d2~HPKz9b8h52249722497epcas1p2v;
 Tue, 24 Sep 2019 01:48:28 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190924014828epsmtrp1e1d592f9fba9c92ba0622f993aa8975d~HPKz4HvTn0112501125epsmtrp1w;
 Tue, 24 Sep 2019 01:48:28 +0000 (GMT)
X-AuditID: b6c32a39-f5fff70000000fe4-9c-5d8975ed6da2
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 7F.9D.03889.CE5798D5; Tue, 24 Sep 2019 10:48:28 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190924014828epsmtip2b25f355d8bcd37a7bfa96664b0f50f2e~HPKzr6mpL1407214072epsmtip2L;
 Tue, 24 Sep 2019 01:48:28 +0000 (GMT)
Subject: Re: [PATCH] PM / devfreq: Check NULL governor in
 available_governors_show
To: Leonard Crestez <leonard.crestez@nxp.com>, Matthias Kaehlcke
 <mka@chromium.org>, MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <d6ea004f-4fbb-9a16-407e-ad8542abe1dc@samsung.com>
Date: Tue, 24 Sep 2019 10:52:53 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <96f459015e6418cee4fa20fdbdb80c4caf417c19.1569256298.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Ta0hTYRjm29nOzqzVcVm9WZme0Egwd5yrY2UESQwyEupHN1sHd5zibu1s
 mfXDdWG57GLY1RCDFGwZ2ryw7DKapkmUShfFEqsJXTTDS1HUj7YdI/89z/c+D8/3fBcCU7Ti
 0US+ycZZTayBwiPELW0rk5PG7K5sZV1LDOPvaJYy3d0NUubZsVEpM+BYwtQOjksYT+C1hJk8
 046YyYYAYt4crcU3yjTXHL1ijcftwjWN1cWaO2NekebR2H2R5myTG2kmPTFZ0t0F6/M4VsdZ
 YzlTjlmXb9KnU1u2azdp1auVdBKdxqyhYk2skUunMjKzkjbnG4Ibo2IPsgZ7cCmL5XkqecN6
 q9lu42LzzLwtneIsOoMlzbKKZ4283aRflWM2rqWVyhR1ULi/IK9h5DFmqZEfet/WiTlQX8Qp
 JCOATIWnz5+hUyiCUJBeBC/7AyKBTCCoap7CBfIDQc3b29J/lkv1/dOWBwg6S+vEAvmGwHn8
 MRZSzSN3QF9Hb3gQRd5CcOHJlDREMHIAQWX5lCikwslE8H3qx0N4LhkHr34GUAjLyQ0w+GFc
 HMJiMh7aR31hzXxyJ0y8a5MImkjoujoc1sjIfTDUfCWcjJELYWC4SiTgZXC8+RoWCgayVApD
 3T9woUQGBBorMQHPgy+dTdPlouHzOec0PgI3u9pxwVyCoMnXIxEGKvDVlAcTiGDCSqhvTRaW
 4+Du70okBM+Bse+nJSEJkHIocSoEyXJ48W5QJOBFcOOkCy9DVMWMOhUzKlTMqFDxP+w6ErvR
 As7CG/UcT1vUMy/cg8LvNjHNizqeZ/oRSSBqttziLclWSNiDfJHRj4DAqCi5J9GZrZDr2KLD
 nNWstdoNHO9H6uBpn8ei5+eYg7/AZNPS6hSVSsWk0qvVNE0tlGv0jmwFqWdtXAHHWTjrP5+I
 kEU70AOXJPXyggRXhnnJ/bpCedHhb72dS/foTnTtr084pI0f7COqicK9sxZ37yrcqrLdKXsU
 +SuztilX9TW398BSmS9HeXHv2aGJuFvx7uKyk+OO0p4Uz+XGmFa3M7L4472SdS8fuj06k18/
 mvTne4b2aUz5itxtOusRb1Talte+kfKeMkrM57F0Imbl2b93WiIrzQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsWy7bCSvO6b0s5Yg95rGhaHjm1ltzh/fgO7
 xdmmN+wWtxpkLFbc/chqsenxNVaLz71HGC0+b3jMaHG7cQWbA6fH7IaLLB6bVnWyeWxeUu+x
 8d0OJo+D7/YwefRtWcXo8XmTXAB7FJdNSmpOZllqkb5dAlfGhtdHmQuW8lY8PHycuYHxOlcX
 IyeHhICJxLT1Nxi7GLk4hAR2M0qcOPmCGSIhKTHt4lEgmwPIFpY4fLgYouYto8SkjtuMIDXC
 AiES149dZAGxRQRWM0q86fUHKWIWuMUo8WzXYbBBQgIbGSUuLXUCsdkEtCT2v7jBBmLzCyhK
 XP3xGGwQr4CdxN1HH8EGsQioShx5sx+sRlQgQuLwjllQNYISJ2c+AavhFIiTuL91Bth8ZgF1
 iT/zLkHZ4hK3nsxngrDlJZq3zmaewCg8C0n7LCQts5C0zELSsoCRZRWjZGpBcW56brFhgVFe
 arlecWJucWleul5yfu4mRnDMaWntYDxxIv4QowAHoxIPr8S2jlgh1sSy4srcQ4wSHMxKIryb
 tNpihXhTEiurUovy44tKc1KLDzFKc7AoifPK5x+LFBJITyxJzU5NLUgtgskycXBKNTDy2vE+
 LcvoMmTbYae/8d0xRrZi4UMTuC6yWXgJdoRumG3N1pOxZvb0xs0T2t+qFKzJig7vcvENf1Lb
 Mjmhw676ZNEuvu8fD/Ev4l3Zv+OHx24JoWnmPUt+XbTYV23E/ejTHqvFN27kJj6+eNXoD88R
 NcGwd71nr+mfKHfa/nuXIqt7oXGbvZYSS3FGoqEWc1FxIgAqLJSKtQIAAA==
X-CMS-MailID: 20190924014828epcas1p2051e6043f723fb31f124e33d96f1d9d2
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190923163453epcas4p1f9cff7d9f1a33fabcf4c980560d6c27d
References: <CGME20190923163453epcas4p1f9cff7d9f1a33fabcf4c980560d6c27d@epcas4p1.samsung.com>
 <96f459015e6418cee4fa20fdbdb80c4caf417c19.1569256298.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_184844_763875_8255445F 
X-CRM114-Status: GOOD (  21.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
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
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxOS4gOS4gMjQuIOyYpOyghCAxOjM0LCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4g
VGhlIGdvdmVybm9yIGlzIGluaXRpYWxpemVkIGFmdGVyIHN5c2ZzIGF0dHJpYnV0ZXMgYmVjb21l
IHZpc2libGUgc28gaW4KPiB0aGVvcnkgdGhlIGdvdmVybm9yIGZpZWxkIGNhbiBiZSBOVUxMIGhl
cmUuCj4gCj4gU2lnbmVkLW9mZi1ieTogTGVvbmFyZCBDcmVzdGV6IDxsZW9uYXJkLmNyZXN0ZXpA
bnhwLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYyB8IDIgKy0KPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gRm91bmQgdGhp
cyBieSBoYWNraW5nIGRldmljZSBjb3JlIHRvIGNhbGwgYXR0cmlidXRlICJzaG93IiBmdW5jdGlv
bnMKPiBmcm9tIGluc2lkZSBkZXZpY2VfYWRkLgo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Rl
dmZyZXEvZGV2ZnJlcS5jIGIvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYwo+IGluZGV4IDAwZmMy
M2ZlYTViMi4uODk2ZmIyMzEyZjJmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9kZXZm
cmVxLmMKPiArKysgYi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4gQEAgLTEzMjIsMTEgKzEz
MjIsMTEgQEAgc3RhdGljIHNzaXplX3QgYXZhaWxhYmxlX2dvdmVybm9yc19zaG93KHN0cnVjdCBk
ZXZpY2UgKmQsCj4gIAo+ICAJLyoKPiAgCSAqIFRoZSBkZXZmcmVxIHdpdGggaW1tdXRhYmxlIGdv
dmVybm9yIChlLmcuLCBwYXNzaXZlKSBzaG93cwo+ICAJICogb25seSBvd24gZ292ZXJub3IuCj4g
IAkgKi8KPiAtCWlmIChkZi0+Z292ZXJub3ItPmltbXV0YWJsZSkgewo+ICsJaWYgKGRmLT5nb3Zl
cm5vciAmJiBkZi0+Z292ZXJub3ItPmltbXV0YWJsZSkgewo+ICAJCWNvdW50ID0gc2NucHJpbnRm
KCZidWZbY291bnRdLCBERVZGUkVRX05BTUVfTEVOLAo+ICAJCQkJICAiJXMgIiwgZGYtPmdvdmVy
bm9yX25hbWUpOwo+ICAJLyoKPiAgCSAqIFRoZSBkZXZmcmVxIGRldmljZSBzaG93cyB0aGUgcmVn
aXN0ZXJlZCBnb3Zlcm5vciBleGNlcHQgZm9yCj4gIAkgKiBpbW11dGFibGUgZ292ZXJub3JzIHN1
Y2ggYXMgcGFzc2l2ZSBnb3Zlcm5vciAuCj4gCgpBcyB5b3UgbWVudGlvbmVkLCBpdCBjcmVhdGUg
c3lzZnMgYW5kIHRoZW4gaW5pdGlhbGl6ZSB0aGUgZ292ZXJub3IgaW5zdGFuY2UKYXMgZm9sbG93
aW5nOgoKCWRldmljZV9yZWdpc3RlcigpCgkJZGV2aWNlX2FkZCgpCgkJCWRldmljZV9hZGRfYXR0
cnMoKQoJCQkJY3JlYXRpbmcgc3lzZnMgZW50cmllcy4KCWdvdmVybm9yID0gdHJ5X3RoZW5fcmVx
dWVzdF9nb3Zlcm5vciguLi4pCgoKVGhhbmtzIGZvciBmaXgtdXAuClJldmlld2VkLWJ5OiBDaGFu
d29vIENob2kgPGN3MDAuY2hvaUBzYW1zdW5nLmNvbT4KCgpBZGRpdGlvbmFsbHksIHlvdSBoYXZl
IHRvIGFkZCB0aGUgZm9sbG93aW5nICdmaXhlcycgdGFnCmFuZCB0aGVuIHNlbmQgaXQgdG8gc3Rh
YmxlIG1haWxpbmcgbGlzdChzdGFibGVAdmdlci5rZXJuZWwub3JnKS4KLSBGaXhlczogYmNmMjNj
NzljNGU0NiAoIlBNIC8gZGV2ZnJlcTogRml4IGF2YWlsYWJsZV9nb3Zlcm5vciBzeXNmcyIpCgot
LSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
