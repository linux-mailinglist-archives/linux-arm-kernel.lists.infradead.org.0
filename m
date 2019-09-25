Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9BCBD609
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 03:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5B5sl9OAZEz2b074LeA4bJSrKVLcBdvxnSuveGJ3gM=; b=WzwQA6CAmIlays
	nejb7jephP7LCz0wT1DjKnOsU1nxyEvLp3LJZQzu7O+Y4J44bmkIp/gtEZEkIsqBh6oDodcOZCF4v
	fTwMelNAaZI4Y7rQPltdHPsRBsRXfR5aiiyj5ceuemtOEzxUkyPxm52VxFF63wssWj6HwMCPy2n0C
	vyhx1Npr85PFU7MuU9G9aqaz5Mizb/KC+Cu7/1SVjsyO8fhMMKYYJh+53Lgfzi5i8S6NBmtMp4xD6
	eonucs5Awq6N0oCVtVpyt51Dqpv2DvUqAAdVlAkeuziMc4/babtwfS10d7AJJ62AQH0s6lHZLL05Y
	RGjmrIMSLFjV+MLDBAOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCvw0-00070B-13; Wed, 25 Sep 2019 01:17:36 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCvvZ-0006zN-69
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 01:17:11 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190925011705epoutp04561206f8ade5f19c182eb374b8751789~HiYsOZdwZ0076100761epoutp04g
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 01:17:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190925011705epoutp04561206f8ade5f19c182eb374b8751789~HiYsOZdwZ0076100761epoutp04g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569374225;
 bh=xkaCLWrLKj+AkjeEu7zrWGqv27T5WLC7y3MFPMEtPSU=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=A7KLROs5UlLDgSRIIw1ecamfhd2txsc0t/6p7SWw1dkfRSHWFCBia+ZktR/fL4tVu
 52fImgPwH5UehVzfoA+hWoaf2P93CJE/qmOQlbCH5ntbxDmkCJUqzyGRvDlRjJWP0p
 4/5QxQY9WeOHPeXd9KYa4b408n/Jrl/JQ/QPe2TI=
Received: from epsnrtp5.localdomain (unknown [182.195.42.166]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190925011705epcas1p195a41cd92587eacfbdf138ced7b8af7a~HiYr4gzbZ3260032600epcas1p1z;
 Wed, 25 Sep 2019 01:17:05 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.152]) by
 epsnrtp5.localdomain (Postfix) with ESMTP id 46dKsV01nwzMqYkb; Wed, 25 Sep
 2019 01:17:02 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 DE.F2.04224.D00CA8D5; Wed, 25 Sep 2019 10:17:01 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20190925011701epcas1p449a16c4eec6162795025fe27bb543243~HiYohVL4K1436714367epcas1p4w;
 Wed, 25 Sep 2019 01:17:01 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190925011701epsmtrp13de392985aa725327020543f74c4b9de~HiYogaU9i1264112641epsmtrp1W;
 Wed, 25 Sep 2019 01:17:01 +0000 (GMT)
X-AuditID: b6c32a38-d5bff70000001080-5f-5d8ac00dc6d2
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 64.22.04081.D00CA8D5; Wed, 25 Sep 2019 10:17:01 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190925011701epsmtip13f1014b02bfcd3beb2026c45b594451e~HiYoTxEyx2014920149epsmtip1W;
 Wed, 25 Sep 2019 01:17:01 +0000 (GMT)
Subject: Re: [PATCH] PM / devfreq: Lock devfreq in trans_stat_show
To: Leonard Crestez <leonard.crestez@nxp.com>, Matthias Kaehlcke
 <mka@chromium.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <98042a95-40cc-7f05-ede7-d042640b135b@samsung.com>
Date: Wed, 25 Sep 2019 10:21:25 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB7023BF1AD2C61C8A5ABAD5FEEE840@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrKJsWRmVeSWpSXmKPExsWy7bCmgS7vga5Ygxk3rC0OHdvKbjF97yY2
 i/PnN7BbnG16w25xq0HGYsXdj6wWmx5fY7Xo+rWS2eJz7xFGi88bHjNa3G5cwebA7TG74SKL
 x6ZVnWwed67tYfPYvKTeY+O7HUweB9/tYfLo27KK0ePzJrkAjqhsm4zUxJTUIoXUvOT8lMy8
 dFsl7+B453hTMwNDXUNLC3MlhbzE3FRbJRefAF23zBygO5UUyhJzSoFCAYnFxUr6djZF+aUl
 qQoZ+cUltkqpBSk5BZYFesWJucWleel6yfm5VoYGBkamQIUJ2Rl7u7awFKyRq9g5+zRLA+NU
 iS5GDg4JAROJ93vEuxg5OYQEdjBKvP5i2MXIBWR/YpR4tegTK4TzjVFi9c+dLDANK+4VQ8T3
 Mkqcb9zNDOG8Z5R4/qObEWSUsICTxKs3b9hAbBGBUIkvTy+BFTELnGCW6N7zFqyITUBLYv+L
 G2BF/AKKEld/PAaL8wrYSfzdMQssziKgKvHgQg9YXFQgQuLTg8OsEDWCEidnPmEBsTkFYiWe
 Pe0Hq2cWEJe49WQ+E4QtL9G8dTbYYgmBRewSR752gCUkBFwkFt18xwJhC0u8Or6FHcKWknjZ
 3wZlV0usPHmEDaK5g1Fiy/4LrBAJY4n9SyczgcKCWUBTYv0ufYiwosTO33MZIRbzSbz72sMK
 CS5eiY42IYgSZYnLD+5CnSApsbi9k20Co9IsJO/MQvLCLCQvzEJYtoCRZRWjWGpBcW56arFh
 gQlyZG9iBCdhLYsdjHvO+RxiFOBgVOLhdWDtihViTSwrrsw9xCjBwawkwjtLBijEm5JYWZVa
 lB9fVJqTWnyI0RQY2hOZpUST84EZIq8k3tDUyNjY2MLE0MzU0FBJnNcjvSFWSCA9sSQ1OzW1
 ILUIpo+Jg1OqgbFuw3vuuiaLaE1HocU2c1YWFuW3emrsOHSlxyFpM+PBvBaeFpb+okjvIxqf
 T5jfCq9aFhZzQW7Bkklqc2fMu8PQw3S8du4N/cdiOe3tcUunhbAKf3B67dP5oHHHmgvmH6vv
 Cq04ZraOV1Ff98isu5u81x83Kt8Wdf6AgtO07ROdLi9iPHr8XqcSS3FGoqEWc1FxIgBvseZg
 2AMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrIIsWRmVeSWpSXmKPExsWy7bCSnC7vga5YgzlfJS0OHdvKbjF97yY2
 i/PnN7BbnG16w25xq0HGYsXdj6wWmx5fY7Xo+rWS2eJz7xFGi88bHjNa3G5cwebA7TG74SKL
 x6ZVnWwed67tYfPYvKTeY+O7HUweB9/tYfLo27KK0ePzJrkAjigum5TUnMyy1CJ9uwSujL1d
 W1gK1shV7Jx9mqWBcapEFyMHh4SAicSKe8VdjFwcQgK7GSVWTd3M2sXICRSXlJh28SgzRI2w
 xOHDUDVvGSXOfm5mB6kRFnCSePXmDRuILSIQKvGnczkrSBGzwAlmiVMTOxkhOnYySTy/v4gJ
 pIpNQEti/4sbYB38AooSV388ZgSxeQXsJP7umAUWZxFQlXhwoQcsLioQIXF4xyyoGkGJkzOf
 sIDYnAKxEs+e9oPVMwuoS/yZd4kZwhaXuPVkPhOELS/RvHU28wRG4VlI2mchaZmFpGUWkpYF
 jCyrGCVTC4pz03OLDQsM81LL9YoTc4tL89L1kvNzNzGCI1JLcwfj5SXxhxgFOBiVeHgdWLti
 hVgTy4orcw8xSnAwK4nwzpIBCvGmJFZWpRblxxeV5qQWH2KU5mBREud9mncsUkggPbEkNTs1
 tSC1CCbLxMEp1cDY2B65N6H9ZgXj7GzLh0tDZ5UvtezxiZ9UqTZLQkZ+J6PXDuPU66ds2+fd
 L/j9Kmm/yMFzpYEH29s6GLc+UbHmD2Zs3GK+7EnHdo42tZb7DwIOikn937RBPuXpvL7WBYWZ
 L4MMWkx7l7AzHDtydKGP2Kn+bysjRGoKXaL+TbPOr/0k2dInsUaJpTgj0VCLuag4EQCkm8OL
 xAIAAA==
X-CMS-MailID: 20190925011701epcas1p449a16c4eec6162795025fe27bb543243
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190923162736epcas3p2c1db3bf767a07f17b609bc91fbbd9648
References: <CGME20190923162736epcas3p2c1db3bf767a07f17b609bc91fbbd9648@epcas3p2.samsung.com>
 <714675448e7fbf3c930b0dca6fbe54fa5f87211b.1569256001.git.leonard.crestez@nxp.com>
 <979d107f-0a52-3aa4-a397-acb0ff754a3c@samsung.com>
 <VI1PR04MB7023BF1AD2C61C8A5ABAD5FEEE840@VI1PR04MB7023.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_181709_497577_14527B61 
X-CRM114-Status: GOOD (  24.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkuIDkuIDI0LiDsmKTtm4QgNDo0NCwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+IE9uIDIw
MTktMDktMjQgNTowNyBBTSwgQ2hhbndvbyBDaG9pIHdyb3RlOgo+PiBIaSwKPj4KPj4gT24gMTku
IDkuIDI0LiDsmKTsoIQgMToyNywgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+Pj4gVGhlcmUgaXMg
bm8gbG9ja2luZyBpbiB0aGlzIHN5c2ZzIHNob3cgZnVuY3Rpb24gc28gc3RhdHMgcHJpbnRpbmcg
Y2FuCj4+PiByYWNlIHdpdGggYSBkZXZmcmVxX3VwZGF0ZV9zdGF0dXMgY2FsbGVkIGFzIHBhcnQg
b2YgZnJlcSBzd2l0Y2hpbmcgb3IKPj4+IHdpdGggaW5pdGlhbGl6YXRpb24uCj4+Pgo+Pj4gQWxz
byBhZGQgYW4gYXNzZXJ0IGluIGRldmZyZXFfdXBkYXRlX3N0YXR1cyB0byBtYWtlIGl0IGNsZWFy
IHRoYXQgbG9jawo+Pj4gbXVzdCBiZSBoZWxkIGJ5IGNhbGxlci4KPj4+Cj4+PiBTaWduZWQtb2Zm
LWJ5OiBMZW9uYXJkIENyZXN0ZXogPGxlb25hcmQuY3Jlc3RlekBueHAuY29tPgo+Pj4gLS0tCj4+
PiAgIGRyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMgfCAxMyArKysrKysrKysrLS0tCj4+PiAgIDEg
ZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pj4KPj4+IENo
YW5nZXMgc2luY2UgdjE6Cj4+PiAqIFNwbGl0IGZyb20gc2VyaWVzOiBsb3ctcHJpb3JpdHkgYnVn
Zml4IG5vdCBzdHJpY3RseSByZXF1aXJlZCBmb3IgUE0gUW9TCj4+PiAqIE9ubHkga2VlcCBsb2Nr
IGR1cmluZyB1cGRhdGUsIHJlbGVhc2UgYmVmb3JlIHNwcmludGYKPj4+Cj4+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYyBiL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMK
Pj4+IGluZGV4IDRjNThmYmY3ZDRlNC4uMDBmYzIzZmVhNWIyIDEwMDY0NAo+Pj4gLS0tIGEvZHJp
dmVycy9kZXZmcmVxL2RldmZyZXEuYwo+Pj4gKysrIGIvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEu
Ywo+Pj4gQEAgLTIwNiwxMCArMjA2LDExIEBAIGludCBkZXZmcmVxX3VwZGF0ZV9zdGF0dXMoc3Ry
dWN0IGRldmZyZXEgKmRldmZyZXEsIHVuc2lnbmVkIGxvbmcgZnJlcSkKPj4+ICAgewo+Pj4gICAJ
aW50IGxldiwgcHJldl9sZXYsIHJldCA9IDA7Cj4+PiAgIAl1bnNpZ25lZCBsb25nIGN1cl90aW1l
Owo+Pj4gICAKPj4+ICAgCWN1cl90aW1lID0gamlmZmllczsKPj4+ICsJbG9ja2RlcF9hc3NlcnRf
aGVsZCgmZGV2ZnJlcS0+bG9jayk7Cj4+Cj4+IEl0IGJldHRlciB0byBtb3ZlIGxvY2sgY2hlY2tp
bmcgYmVmb3JlICdjdXJfdGltZSA9IGppZmZpZXMnCj4+IGluIG9yZGVyIHRvIHJlZHVjZSB0aGUg
cmVkdW5kYW50IGNvZGUgZXhlY3V0aW9uLgo+IAo+IE9LIGJ1dCBJIGRvbid0IHNlZSBob3cgdGhp
cyBtYWtlcyBhIGRpZmZlcmVuY2UgZm9yIGFuIGFzc2VydD8gSXQganVzdCAKPiBwcmludHMgYSB3
YXJuaW5nIGFuZCBjYXJyaWVzIG9uLgoKQWNjb3JkaW5nIHRvIHRoZSBzZXF1ZW5jZSBiZXR3ZWVu
ICdsb2NrZGVwX2Fzc2VydF9oZWxkJyBhbmQgJ2N1cl90aW1lID0gamlmZmllcycsCmN1cl90aW1l
IHdpbGwgYmUgaW5pdGlhbGl6ZWQgd2l0aCBkaWZmZXJlbnQgamlmZmllcyBiZWNhdXNlICdqaWZm
aWVzJyBpcyBjb250aW51b3VzbHkKY2hhbmdlZC4gSW4gb3JkZXIgdG8gZ2V0IHRoZSBtb3JlIGNv
cnJlY3QgdGltZSBmcm9tICdqaWZmaWVzJywKd2UgYmV0dGVyIHRvIGdldCAnamlmZmllcycgYWZ0
ZXIgcmVsZWFzaW5nIHRoZSBsb2NrLgoKPiAKPj4+ICAgCS8qIEltbWVkaWF0ZWx5IGV4aXQgaWYg
cHJldmlvdXNfZnJlcSBpcyBub3QgaW5pdGlhbGl6ZWQgeWV0LiAqLwo+Pj4gICAJaWYgKCFkZXZm
cmVxLT5wcmV2aW91c19mcmVxKQo+Pj4gICAJCWdvdG8gb3V0Owo+Pj4gICAKPj4+IEBAIC0xNTA3
LDE2ICsxNTA4LDIyIEBAIHN0YXRpYyBzc2l6ZV90IHRyYW5zX3N0YXRfc2hvdyhzdHJ1Y3QgZGV2
aWNlICpkZXYsCj4+PiAgIAlzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSA9IHRvX2RldmZyZXEoZGV2
KTsKPj4+ICAgCXNzaXplX3QgbGVuOwo+Pj4gICAJaW50IGksIGo7Cj4+PiAgIAl1bnNpZ25lZCBp
bnQgbWF4X3N0YXRlID0gZGV2ZnJlcS0+cHJvZmlsZS0+bWF4X3N0YXRlOwo+Pj4gICAKPj4+IC0J
aWYgKCFkZXZmcmVxLT5zdG9wX3BvbGxpbmcgJiYKPj4+IC0JCQlkZXZmcmVxX3VwZGF0ZV9zdGF0
dXMoZGV2ZnJlcSwgZGV2ZnJlcS0+cHJldmlvdXNfZnJlcSkpCj4+PiAtCQlyZXR1cm4gMDsKPj4+
ICAgCWlmIChtYXhfc3RhdGUgPT0gMCkKPj4+ICAgCQlyZXR1cm4gc3ByaW50ZihidWYsICJOb3Qg
U3VwcG9ydGVkLlxuIik7Cj4+PiAgIAo+Pj4gKwkvKiBsb2NrIGFuZCB1cGRhdGUgKi8KPj4KPj4g
SXQgaXMgbm90IG5lY2Vzc2FyeS4gQW55b25lIGNhbiBrbm93IHRoYXQgdGhpcyBjb2RlIGlzIHJl
bGF0ZWQgdG8gbXV0ZXggbG9jay91bmxvY2suCj4gCj4gT0suIFlvdSdyZSB0aGUgc2Vjb25kIHBl
cnNvbiB0byBtZW50aW9uIHRoaXMgYnV0IGl0J3MgcXVpdGUgc3RyYW5nZSB0byAKPiBzZWUgb2Jq
ZWN0aW9ucyByYWlzZWQgYWdhaW5zdCBjb21tZW50cy4KClRoZSBjb21tZW50IGlzIHZlcnkgaW1w
b3J0YW50IHRvIHVuZGVyc3RhbmQgdGhlIGNvZGUKZm9yIGV2ZXJ5b25lLiBCdXQsIGluIHRoaXMg
Y2FzZSwgYWxtb3N0IHBlb3BsZSB1bmRlcnN0YW5kCnRoZSB1c2FnZSBvZiBtdXRleF9sb2NrL211
dGV4X3VubG9jay4gSXQgaXMgbm8gZGlmZmljdWx0CnRvIHVuZGVyc3RhbmQgdGhlIG1lYW5pbmcg
b2YgYmVsb3cgY29kZXMuCgpVc3VhbGx5LCB3ZSB3b3VsZCBhZGQgdGhlIGNvbW1lbnRzIGlmIHNv
bWUgY29kZXMgYXJlIHZlcnkgZGlmZmljdWx0CndpdGhvdXQgY29tbWVudHMgb3Igc29tZSBjb2Rl
cyBoYXZlIGRlcGVuZCBvbiBzb21lIGNhbGwgc2VxdWVuY2UgYW5kIHNvIG9uLgoKPiAKPj4+ICsJ
bXV0ZXhfbG9jaygmZGV2ZnJlcS0+bG9jayk7Cj4+PiArCWlmICghZGV2ZnJlcS0+c3RvcF9wb2xs
aW5nICYmCj4+PiArCQkJZGV2ZnJlcV91cGRhdGVfc3RhdHVzKGRldmZyZXEsIGRldmZyZXEtPnBy
ZXZpb3VzX2ZyZXEpKSB7Cj4+PiArCQltdXRleF91bmxvY2soJmRldmZyZXEtPmxvY2spOwo+Pj4g
KwkJcmV0dXJuIDA7Cj4+PiArCX0KPj4+ICsJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxLT5sb2NrKTsK
Pj4+ICsKPj4+ICAgCWxlbiA9IHNwcmludGYoYnVmLCAiICAgICBGcm9tICA6ICAgVG9cbiIpOwo+
Pj4gICAJbGVuICs9IHNwcmludGYoYnVmICsgbGVuLCAiICAgICAgICAgICA6Iik7Cj4+PiAgIAlm
b3IgKGkgPSAwOyBpIDwgbWF4X3N0YXRlOyBpKyspCj4+PiAgIAkJbGVuICs9IHNwcmludGYoYnVm
ICsgbGVuLCAiJTEwbHUiLAo+Pj4gICAJCQkJZGV2ZnJlcS0+cHJvZmlsZS0+ZnJlcV90YWJsZVtp
XSk7Cj4+Pgo+Pgo+PiBCYXNpY2FsbHksIGl0IGlzIG5lY2Vzc2FyeS4gUGxlYXNlIGVkaXQgaXQg
YnkgbXkgY29tbWVudHMuCj4+IEFsc28sIHlvdSBoYXZlIHRvIGFkZCB0aGUgZm9sbG93aW5nICdm
aXhlcycgYXMgZm9sbG93aW5nOgo+PiBhbmQgc2VuZCBpdCBzdGFibGUgbWFpbGluZyBsaXN0Lgo+
Pgo+PiBGaXhlczogMzk2ODhjZTZmYWNkICgiUE0gLyBkZXZmcmVxOiBhY2NvdW50IHN1c3BlbmQv
cmVzdW1lIGZvciBzdGF0cyIpCj4+Cj4+IElmIHlvdSBlZGl0IGl0IGJ5IG15IGNvbW1lbnRzLCBm
ZWVsIGZyZWUgdG8gYWRkIG15IHRhZzoKPj4gUmV2aWV3ZWQtYnk6IENoYW53b28gQ2hvaSA8Y3cw
MC5jaG9pQHNhbXN1bmcuY29tPgoKCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1z
dW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
