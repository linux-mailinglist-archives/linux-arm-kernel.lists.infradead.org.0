Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6553EEA943
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 03:37:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bxx7jswdfm95V5O6MMY8eUAYM1voe+8kXPb4hEBIzJ8=; b=mSEw//PYYM6ER0
	PVMcL35mr7oBN8UDl78puBtAUtRhMSd1efJzWy3GBSV+oyc6pYDkQCRxl+EURW1kcu0u2KKGqzYd4
	9jU7EchQ8KSsOqAU0EBa/D815AV/9c2bggV0ITSTruyiBQ9GQh8Cng3aW/RJp/KQb6VftWu8e1zD9
	Vg1rEdWnBsS9JaBbeK6Adi6Gr8PIBIcF1WilPk/TO6DMAeWvYBTXpHIrcwRFwPmf2bCzddzWkOWZU
	wvdP+3RbOu7BwI/SZ/STKO71k59ndhjImh+hxgB1Y61dZwoN6mapmTvVA1RdMuT2EZ/AG432S48N5
	yf9RnDtx+1QNlmLg9rCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ0Kj-00085r-NN; Thu, 31 Oct 2019 02:37:09 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ0Ka-00085B-FJ
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 02:37:02 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20191031023656epoutp04b52dd9cb3b99e594226001d84850713b~Smsr7EIRV2486924869epoutp04c
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 02:36:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20191031023656epoutp04b52dd9cb3b99e594226001d84850713b~Smsr7EIRV2486924869epoutp04c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1572489416;
 bh=iehrdFm5CutsFXROtsw4VE1utE2XL17fTyD0RjmlvyU=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=b4yBKbkVjOXJLDP5kph9CQu8jWxp/eLUCgXRhxWpm78BnknebDGK2FLyThdmzX6ur
 c5Ghvdd/eRMMk3Or0/5ItuuH6cieC76ihvoLBj+F0uFtowEsHpol+IDxaPxC+qLd/S
 s98URe5WbwmYOTKpIzGRQKx7MIC54cCH5a5uANwo=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191031023655epcas1p1a1893c38891f40dfa3affca92c87992c~SmsrblChl2081620816epcas1p1r;
 Thu, 31 Oct 2019 02:36:55 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.157]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 473Tx12t4yzMqYlp; Thu, 31 Oct
 2019 02:36:53 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 C4.AA.04144.5C84ABD5; Thu, 31 Oct 2019 11:36:53 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191031023653epcas1p2c9723f4c6074a3782c96239402df9459~SmsoszM3H1285412854epcas1p2W;
 Thu, 31 Oct 2019 02:36:53 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191031023653epsmtrp139bea8c5d015e1fe0ed2c70ad1d9fb88~SmsorHSTz2319823198epsmtrp1v;
 Thu, 31 Oct 2019 02:36:52 +0000 (GMT)
X-AuditID: b6c32a35-2dfff70000001030-e4-5dba48c57b18
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 AB.2C.24756.4C84ABD5; Thu, 31 Oct 2019 11:36:52 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191031023652epsmtip277f3036a6db630096e96a115ae534cf4~SmsoWrmZE0651806518epsmtip2k;
 Thu, 31 Oct 2019 02:36:52 +0000 (GMT)
Subject: Re: [PATCH v9 6/8] PM / devfreq: Introduce get_freq_range helper
To: Leonard Crestez <leonard.crestez@nxp.com>, Matthias Kaehlcke
 <mka@chromium.org>, MyungJoo Ham <myungjoo.ham@samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <a4b4c295-b230-5f15-61a2-d0e826584393@samsung.com>
Date: Thu, 31 Oct 2019 11:42:24 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <c453bb60a74b41a5192e270f286dfc81c1088449.1570044052.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrEJsWRmVeSWpSXmKPExsWy7bCmru5Rj12xBitXClocOraV3eLr6VOM
 FssuHWW0mL53E5vF+fMb2C3ONr1ht1hx9yOrxabH11gtun6tZLb43HuE0eLzhseMFrcbV7BZ
 rD53kM2i69BfNouNXz0c+D3e32hl95jdcJHFY8GmUo9NqzrZPO5c28PmsXlJvcfGdzuYPA6+
 28Pk0bdlFaPH501yAVxR2TYZqYkpqUUKqXnJ+SmZeem2St7B8c7xpmYGhrqGlhbmSgp5ibmp
 tkouPgG6bpk5QE8oKZQl5pQChQISi4uV9O1sivJLS1IVMvKLS2yVUgtScgosC/SKE3OLS/PS
 9ZLzc60MDQyMTIEKE7Iz5sz5xF5w0qhiz72sBsbn6l2MnBwSAiYSd5d2snUxcnEICexglLjY
 9x3K+cQoMa3rGSOE841R4ubmHSwwLd9+XWIFsYUE9jJKHLhhA1H0nlFiRcNLsCJhAU+JzUs7
 2EFsEYE6iVuLTzCDFDELPGeWeHpwJjNIgk1AS2L/ixtsIDa/gKLE1R+PGUFsXgE7iQkdN5hA
 bBYBVYnnkx8AxTk4RAUiJE5/TYQoEZQ4OfMJ2C5OgTiJ3Wd3g+1iFhCXuPVkPhOELS/RvHU2
 2F4JgXPsEu2PnrFCfOAicaHpBxOELSzx6vgWdghbSuJlfxuUXS2x8uQRNojmDkaJLfsvQDUb
 S+xfOpkJ5CBmAU2J9bv0IcKKEjt/z2WEWMwn8e5rDytIiYQAr0RHmxBEibLE5Qd3odZKSixu
 72SbwKg0C8k7s5C8MAvJC7MQli1gZFnFKJZaUJybnlpsWGCIHNmbGMHpW8t0B+OUcz6HGAU4
 GJV4eCeU7YwVYk0sK67MPcQowcGsJML7zQYoxJuSWFmVWpQfX1Sak1p8iNEUGNgTmaVEk/OB
 uSWvJN7Q1MjY2NjCxNDM1NBQSZzXcfnSWCGB9MSS1OzU1ILUIpg+Jg5OqQbGlDsSuf2T51iI
 xhacOTM5/P3irNNntskqSmuy1S072sNaPntu5Tm93Nq7ZzkEb9brPtl606FGpWPNLeVJpn19
 z+Qu6LO+1Gia+ftSUUnLqjNrs6+oOSb2Gdh/kuqRNVzVeHii6EpGPQa+iRyyG71UEkrZitre
 V9b9qeiMqL7z0IHroFed7WMlluKMREMt5qLiRABHhF4v9QMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLIsWRmVeSWpSXmKPExsWy7bCSvO4Rj12xBievmVkcOraV3eLr6VOM
 FssuHWW0mL53E5vF+fMb2C3ONr1ht1hx9yOrxabH11gtun6tZLb43HuE0eLzhseMFrcbV7BZ
 rD53kM2i69BfNouNXz0c+D3e32hl95jdcJHFY8GmUo9NqzrZPO5c28PmsXlJvcfGdzuYPA6+
 28Pk0bdlFaPH501yAVxRXDYpqTmZZalF+nYJXBlz5nxiLzhpVLHnXlYD43P1LkZODgkBE4lv
 vy6xdjFycQgJ7GaUWND9hg0iISkx7eJR5i5GDiBbWOLw4WKImreMEquW/GQGqREW8JTYvLSD
 HcQWEaiT+PN8HxNIEbPAc2aJDfe/soIkhAQeMUpMf5wKYrMJaEnsf3EDbAG/gKLE1R+PGUFs
 XgE7iQkdN5hAbBYBVYnnkx+AxUUFIiSeb78BVSMocXLmExYQm1MgTmL32d1gi5kF1CX+zLvE
 DGGLS9x6Mp8JwpaXaN46m3kCo/AsJO2zkLTMQtIyC0nLAkaWVYySqQXFuem5xYYFhnmp5XrF
 ibnFpXnpesn5uZsYwZGspbmD8fKS+EOMAhyMSjy8E8p2xgqxJpYVV+YeYpTgYFYS4f1mAxTi
 TUmsrEotyo8vKs1JLT7EKM3BoiTO+zTvWKSQQHpiSWp2ampBahFMlomDU6qBMejSfyuZpH09
 x3PXuqq0rlv4K8Jzz7q/ms+q8sWDyz8GRn9hkxKK/upu8sefi2mlVf/FDCv+6BctPa0l4uan
 51kePuV3ytpCIVakbr/0p9/n51nZXku8lGjwIHnnotNzfM5yFfSbVEe4BzZKKqh16U14Pe9f
 VpfnGt3tJ8+1zTRwuaj02cZSiaU4I9FQi7moOBEAEvxHU+ACAAA=
X-CMS-MailID: 20191031023653epcas1p2c9723f4c6074a3782c96239402df9459
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191002192528epcas4p4d6fd2e70c8ffe0fd319990c744ddd8d2
References: <cover.1570044052.git.leonard.crestez@nxp.com>
 <CGME20191002192528epcas4p4d6fd2e70c8ffe0fd319990c744ddd8d2@epcas4p4.samsung.com>
 <c453bb60a74b41a5192e270f286dfc81c1088449.1570044052.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_193700_750490_71A53A65 
X-CRM114-Status: GOOD (  27.66  )
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
 Kyungmin Park <kyungmin.park@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkuIDEwLiAzLiDsmKTsoIQgNDoyNSwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+IE1vdmlu
ZyBoYW5kbGluZyBvZiBtaW4vbWF4IGZyZXEgdG8gYSBzaW5nbGUgZnVuY3Rpb24gYW5kIGNhbGwg
aXQgZnJvbQo+IHVwZGF0ZV9kZXZmcmVxIGFuZCBmb3IgcHJpbnRpbmcgbWluL21heCBmcmVxIHZh
bHVlcyBpbiBzeXNmcy4KPiAKPiBUaGlzIGNoYW5nZXMgdGhlIGJlaGF2aW9yIG9mIG91dC1vZi1y
YW5nZSBtaW5fZnJlcS9tYXhfZnJlcTogY2xhbXBpbmcKPiBpcyBub3cgZG9uZSBhdCBldmFsdWF0
aW9uIHRpbWUuIFRoaXMgbWVhbnMgdGhhdCBpZiBhbiBvdXQtb2YtcmFuZ2UKPiBjb25zdHJhaW50
IGlzIGltcG9zZWQgYnkgc3lzZnMgYW5kIGl0IGxhdGVyIGJlY29tZXMgdmFsaWQgdGhlbiBpdCB3
aWxsCj4gYmUgZW5mb3JjZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTGVvbmFyZCBDcmVzdGV6IDxs
ZW9uYXJkLmNyZXN0ZXpAbnhwLmNvbT4KPiBSZXZpZXdlZC1ieTogTWF0dGhpYXMgS2FlaGxja2Ug
PG1rYUBjaHJvbWl1bS5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMgfCAx
MTAgKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDYyIGluc2VydGlvbnMoKyksIDQ4IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jIGIvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYwo+IGlu
ZGV4IDg3ZWZmNzg5Y2UyNC4uMmQ2MzY5MjkwM2ZmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZGV2
ZnJlcS9kZXZmcmVxLmMKPiArKysgYi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4gQEAgLTk2
LDEwICs5Niw1MyBAQCBzdGF0aWMgdW5zaWduZWQgbG9uZyBmaW5kX2F2YWlsYWJsZV9tYXhfZnJl
cShzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSkKPiAgCQlkZXZfcG1fb3BwX3B1dChvcHApOwo+ICAK
PiAgCXJldHVybiBtYXhfZnJlcTsKPiAgfQo+ICAKPiArLyoqCj4gKyAqIGdldF9mcmVxX3Jhbmdl
KCkgLSBHZXQgdGhlIGN1cnJlbnQgZnJlcSByYW5nZQo+ICsgKiBAZGV2ZnJlcToJdGhlIGRldmZy
ZXEgaW5zdGFuY2UKPiArICogQG1pbl9mcmVxOgl0aGUgbWluIGZyZXF1ZW5jeQo+ICsgKiBAbWF4
X2ZyZXE6CXRoZSBtYXggZnJlcXVlbmN5Cj4gKyAqCj4gKyAqIFRoaXMgdGFrZXMgaW50byBjb25z
aWRlcmF0aW9uIGFsbCBjb25zdHJhaW50cy4KPiArICovCj4gK3N0YXRpYyB2b2lkIGdldF9mcmVx
X3JhbmdlKHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxLAo+ICsJCQkgICB1bnNpZ25lZCBsb25nICpt
aW5fZnJlcSwKPiArCQkJICAgdW5zaWduZWQgbG9uZyAqbWF4X2ZyZXEpCj4gK3sKPiArCXVuc2ln
bmVkIGxvbmcgKmZyZXFfdGFibGUgPSBkZXZmcmVxLT5wcm9maWxlLT5mcmVxX3RhYmxlOwo+ICsK
PiArCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmRldmZyZXEtPmxvY2spOwo+ICsKPiArCS8qCj4gKwkg
KiBJbml0aWFsaXplIG1pbmltdW0vbWF4aW11bSBmcmVxdWVuY3kgZnJvbSBmcmVxIHRhYmxlLgo+
ICsJICogVGhlIGRldmZyZXEgZHJpdmVycyBjYW4gaW5pdGlhbGl6ZSB0aGlzIGluIGVpdGhlciBh
c2NlbmRpbmcgb3IKPiArCSAqIGRlc2NlbmRpbmcgb3JkZXIgYW5kIGRldmZyZXEgY29yZSBzdXBw
b3J0cyBib3RoLgo+ICsJICovCj4gKwlpZiAoZnJlcV90YWJsZVswXSA8IGZyZXFfdGFibGVbZGV2
ZnJlcS0+cHJvZmlsZS0+bWF4X3N0YXRlIC0gMV0pIHsKPiArCQkqbWluX2ZyZXEgPSBmcmVxX3Rh
YmxlWzBdOwo+ICsJCSptYXhfZnJlcSA9IGZyZXFfdGFibGVbZGV2ZnJlcS0+cHJvZmlsZS0+bWF4
X3N0YXRlIC0gMV07Cj4gKwl9IGVsc2Ugewo+ICsJCSptaW5fZnJlcSA9IGZyZXFfdGFibGVbZGV2
ZnJlcS0+cHJvZmlsZS0+bWF4X3N0YXRlIC0gMV07Cj4gKwkJKm1heF9mcmVxID0gZnJlcV90YWJs
ZVswXTsKPiArCX0KPiArCj4gKwkvKiBBcHBseSBjb25zdHJhaW50cyBmcm9tIHN5c2ZzICovCj4g
KwkqbWluX2ZyZXEgPSBtYXgoKm1pbl9mcmVxLCBkZXZmcmVxLT5taW5fZnJlcSk7Cj4gKwkqbWF4
X2ZyZXEgPSBtaW4oKm1heF9mcmVxLCBkZXZmcmVxLT5tYXhfZnJlcSk7Cj4gKwo+ICsJLyogQXBw
bHkgY29uc3RyYWludHMgZnJvbSBPUFAgaW50ZXJmYWNlICovCj4gKwkqbWluX2ZyZXEgPSBtYXgo
Km1pbl9mcmVxLCBkZXZmcmVxLT5zY2FsaW5nX21pbl9mcmVxKTsKPiArCS8qIHNjYWxpbmdfbWF4
X2ZyZXEgY2FuIGJlIHplcm8gb24gZXJyb3IgKi8KPiArCWlmIChkZXZmcmVxLT5zY2FsaW5nX21h
eF9mcmVxKQoKbml0cGljazoKVGhpcyBpZiBzdGF0ZW1lbnQgaXMgbmVjZXNzYXJ5PwoKVGhlIHBh
dGNoMyBpbiB0aGlzIHNlcmllcyBpbml0aWFsaXplcyB0aGUgJ2RldmZyZXEtPnNjYWxpbmdfbWF4
X2ZyZXEnCmlzIFVMT05HX01BWCBpZiBmYWlsZWQgdG8gZ2V0IHRoZSBhdmFpbGFibGUgZnJlcXVl
bmN5IGZyb20gZmluZF9hdmFpbGFibGVfbWF4X2ZyZXEuCgo+ICsJCSptYXhfZnJlcSA9IG1pbigq
bWF4X2ZyZXEsIGRldmZyZXEtPnNjYWxpbmdfbWF4X2ZyZXEpOwo+ICsKPiArCWlmICgqbWluX2Zy
ZXEgPiAqbWF4X2ZyZXEpCj4gKwkJKm1pbl9mcmVxID0gKm1heF9mcmVxOwo+ICt9Cj4gKwo+ICAv
KioKPiAgICogZGV2ZnJlcV9nZXRfZnJlcV9sZXZlbCgpIC0gTG9va3VwIGZyZXFfdGFibGUgZm9y
IHRoZSBmcmVxdWVuY3kKPiAgICogQGRldmZyZXE6CXRoZSBkZXZmcmVxIGluc3RhbmNlCj4gICAq
IEBmcmVxOgl0aGUgdGFyZ2V0IGZyZXF1ZW5jeQo+ICAgKi8KPiBAQCAtMzQ4LDIwICszOTEsMTEg
QEAgaW50IHVwZGF0ZV9kZXZmcmVxKHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxKQo+ICAKPiAgCS8q
IFJlZXZhbHVhdGUgdGhlIHByb3BlciBmcmVxdWVuY3kgKi8KPiAgCWVyciA9IGRldmZyZXEtPmdv
dmVybm9yLT5nZXRfdGFyZ2V0X2ZyZXEoZGV2ZnJlcSwgJmZyZXEpOwo+ICAJaWYgKGVycikKPiAg
CQlyZXR1cm4gZXJyOwo+IC0KPiAtCS8qCj4gLQkgKiBBZGp1c3QgdGhlIGZyZXF1ZW5jeSB3aXRo
IHVzZXIgZnJlcSwgUW9TIGFuZCBhdmFpbGFibGUgZnJlcS4KPiAtCSAqCj4gLQkgKiBMaXN0IGZy
b20gdGhlIGhpZ2hlc3QgcHJpb3JpdHkKPiAtCSAqIG1heF9mcmVxCj4gLQkgKiBtaW5fZnJlcQo+
IC0JICovCj4gLQltYXhfZnJlcSA9IG1pbihkZXZmcmVxLT5zY2FsaW5nX21heF9mcmVxLCBkZXZm
cmVxLT5tYXhfZnJlcSk7Cj4gLQltaW5fZnJlcSA9IG1heChkZXZmcmVxLT5zY2FsaW5nX21pbl9m
cmVxLCBkZXZmcmVxLT5taW5fZnJlcSk7Cj4gKwlnZXRfZnJlcV9yYW5nZShkZXZmcmVxLCAmbWlu
X2ZyZXEsICZtYXhfZnJlcSk7Cj4gIAo+ICAJaWYgKGZyZXEgPCBtaW5fZnJlcSkgewo+ICAJCWZy
ZXEgPSBtaW5fZnJlcTsKPiAgCQlmbGFncyAmPSB+REVWRlJFUV9GTEFHX0xFQVNUX1VQUEVSX0JP
VU5EOyAvKiBVc2UgR0xCICovCj4gIAl9Cj4gQEAgLTEyODEsNDAgKzEzMTUsMjggQEAgc3RhdGlj
IHNzaXplX3QgbWluX2ZyZXFfc3RvcmUoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNl
X2F0dHJpYnV0ZSAqYXR0ciwKPiAgCXJldCA9IHNzY2FuZihidWYsICIlbHUiLCAmdmFsdWUpOwo+
ICAJaWYgKHJldCAhPSAxKQo+ICAJCXJldHVybiAtRUlOVkFMOwo+ICAKPiAgCW11dGV4X2xvY2so
JmRmLT5sb2NrKTsKPiAtCj4gLQlpZiAodmFsdWUpIHsKPiAtCQlpZiAodmFsdWUgPiBkZi0+bWF4
X2ZyZXEpIHsKPiAtCQkJcmV0ID0gLUVJTlZBTDsKPiAtCQkJZ290byB1bmxvY2s7Cj4gLQkJfQo+
IC0JfSBlbHNlIHsKPiAtCQl1bnNpZ25lZCBsb25nICpmcmVxX3RhYmxlID0gZGYtPnByb2ZpbGUt
PmZyZXFfdGFibGU7Cj4gLQo+IC0JCS8qIEdldCBtaW5pbXVtIGZyZXF1ZW5jeSBhY2NvcmRpbmcg
dG8gc29ydGluZyBvcmRlciAqLwo+IC0JCWlmIChmcmVxX3RhYmxlWzBdIDwgZnJlcV90YWJsZVtk
Zi0+cHJvZmlsZS0+bWF4X3N0YXRlIC0gMV0pCj4gLQkJCXZhbHVlID0gZnJlcV90YWJsZVswXTsK
PiAtCQllbHNlCj4gLQkJCXZhbHVlID0gZnJlcV90YWJsZVtkZi0+cHJvZmlsZS0+bWF4X3N0YXRl
IC0gMV07Cj4gLQl9Cj4gLQo+ICAJZGYtPm1pbl9mcmVxID0gdmFsdWU7Cj4gIAl1cGRhdGVfZGV2
ZnJlcShkZik7Cj4gLQlyZXQgPSBjb3VudDsKPiAtdW5sb2NrOgo+ICAJbXV0ZXhfdW5sb2NrKCZk
Zi0+bG9jayk7Cj4gLQlyZXR1cm4gcmV0Owo+ICsKPiArCXJldHVybiBjb3VudDsKPiAgfQo+ICAK
PiAgc3RhdGljIHNzaXplX3QgbWluX2ZyZXFfc2hvdyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVj
dCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAo+ICAJCQkgICAgIGNoYXIgKmJ1ZikKPiAgewo+ICAJ
c3RydWN0IGRldmZyZXEgKmRmID0gdG9fZGV2ZnJlcShkZXYpOwo+ICsJdW5zaWduZWQgbG9uZyBt
aW5fZnJlcSwgbWF4X2ZyZXE7Cj4gIAo+IC0JcmV0dXJuIHNwcmludGYoYnVmLCAiJWx1XG4iLCBt
YXgoZGYtPnNjYWxpbmdfbWluX2ZyZXEsIGRmLT5taW5fZnJlcSkpOwo+ICsJbXV0ZXhfbG9jaygm
ZGYtPmxvY2spOwo+ICsJZ2V0X2ZyZXFfcmFuZ2UoZGYsICZtaW5fZnJlcSwgJm1heF9mcmVxKTsK
PiArCW11dGV4X3VubG9jaygmZGYtPmxvY2spOwo+ICsKPiArCXJldHVybiBzcHJpbnRmKGJ1Ziwg
IiVsdVxuIiwgbWluX2ZyZXEpOwo+ICB9Cj4gIAo+ICBzdGF0aWMgc3NpemVfdCBtYXhfZnJlcV9z
dG9yZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAo+
ICAJCQkgICAgICBjb25zdCBjaGFyICpidWYsIHNpemVfdCBjb3VudCkKPiAgewo+IEBAIC0xMzI2
LDQwICsxMzQ4LDMyIEBAIHN0YXRpYyBzc2l6ZV90IG1heF9mcmVxX3N0b3JlKHN0cnVjdCBkZXZp
Y2UgKmRldiwgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsCj4gIAlpZiAocmV0ICE9IDEp
Cj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gIAo+ICAJbXV0ZXhfbG9jaygmZGYtPmxvY2spOwo+ICAK
PiAtCWlmICh2YWx1ZSkgewo+IC0JCWlmICh2YWx1ZSA8IGRmLT5taW5fZnJlcSkgewo+IC0JCQly
ZXQgPSAtRUlOVkFMOwo+IC0JCQlnb3RvIHVubG9jazsKPiAtCQl9Cj4gLQl9IGVsc2Ugewo+IC0J
CXVuc2lnbmVkIGxvbmcgKmZyZXFfdGFibGUgPSBkZi0+cHJvZmlsZS0+ZnJlcV90YWJsZTsKPiAt
Cj4gLQkJLyogR2V0IG1heGltdW0gZnJlcXVlbmN5IGFjY29yZGluZyB0byBzb3J0aW5nIG9yZGVy
ICovCj4gLQkJaWYgKGZyZXFfdGFibGVbMF0gPCBmcmVxX3RhYmxlW2RmLT5wcm9maWxlLT5tYXhf
c3RhdGUgLSAxXSkKPiAtCQkJdmFsdWUgPSBmcmVxX3RhYmxlW2RmLT5wcm9maWxlLT5tYXhfc3Rh
dGUgLSAxXTsKPiAtCQllbHNlCj4gLQkJCXZhbHVlID0gZnJlcV90YWJsZVswXTsKPiAtCX0KPiAr
CWlmICghdmFsdWUpCj4gKwkJdmFsdWUgPSBVTE9OR19NQVg7Cj4gIAo+ICAJZGYtPm1heF9mcmVx
ID0gdmFsdWU7Cj4gIAl1cGRhdGVfZGV2ZnJlcShkZik7Cj4gLQlyZXQgPSBjb3VudDsKPiAtdW5s
b2NrOgo+ICAJbXV0ZXhfdW5sb2NrKCZkZi0+bG9jayk7Cj4gLQlyZXR1cm4gcmV0Owo+ICsKPiAr
CXJldHVybiBjb3VudDsKPiAgfQo+ICBzdGF0aWMgREVWSUNFX0FUVFJfUlcobWluX2ZyZXEpOwo+
ICAKPiAgc3RhdGljIHNzaXplX3QgbWF4X2ZyZXFfc2hvdyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0
cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAo+ICAJCQkgICAgIGNoYXIgKmJ1ZikKPiAgewo+
ICAJc3RydWN0IGRldmZyZXEgKmRmID0gdG9fZGV2ZnJlcShkZXYpOwo+ICsJdW5zaWduZWQgbG9u
ZyBtaW5fZnJlcSwgbWF4X2ZyZXE7Cj4gKwo+ICsJbXV0ZXhfbG9jaygmZGYtPmxvY2spOwo+ICsJ
Z2V0X2ZyZXFfcmFuZ2UoZGYsICZtaW5fZnJlcSwgJm1heF9mcmVxKTsKPiArCW11dGV4X3VubG9j
aygmZGYtPmxvY2spOwo+ICAKPiAtCXJldHVybiBzcHJpbnRmKGJ1ZiwgIiVsdVxuIiwgbWluKGRm
LT5zY2FsaW5nX21heF9mcmVxLCBkZi0+bWF4X2ZyZXEpKTsKPiArCXJldHVybiBzcHJpbnRmKGJ1
ZiwgIiVsdVxuIiwgbWF4X2ZyZXEpOwo+ICB9Cj4gIHN0YXRpYyBERVZJQ0VfQVRUUl9SVyhtYXhf
ZnJlcSk7Cj4gIAo+ICBzdGF0aWMgc3NpemVfdCBhdmFpbGFibGVfZnJlcXVlbmNpZXNfc2hvdyhz
dHJ1Y3QgZGV2aWNlICpkLAo+ICAJCQkJCSAgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIs
Cj4gCgpSZXZpZXdlZC1ieTogQ2hhbndvbyBDaG9pIDxjdzAwLmNob2lAc2Ftc3VuZy5jb20+Cgot
LSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
