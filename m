Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CD2BC13D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 07:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qCEZtOrISm4v7Y+RSUlYB4XkFagnVx951+IMUa1zbA=; b=dooAZPOTxGuPYW
	kHHesa3kl3/Z4z5dehzrS/+/EF7nX8M1x6I/RLskGcSSU3M1foo571JLPEWcFMbPSBKk/akplCEBl
	kDyYzFIdb+GEHXdD+bw8sKKrb0bwG5FgsESc3h4IbQMNWC7tUVq51wGj54DJDhfEdAm9AxF8YZqWd
	mDo7gsXVeKGgSvyXR99wc2uTOS+6bf7sSN6h2es9lSH0ILf6VzaP3BeyWkBpjlWLe4aPNFNXv/pNF
	FykJn+WY+NSr+oNUphGjeaopXu4XdW9JkIkdzHQxRncu/HFe7vH5e8MXhG44arKaQuV36K77i3SVj
	Vflp4lABN+F+xyA48QHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCd4l-0005uS-9g; Tue, 24 Sep 2019 05:09:23 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCd4V-0005tj-T5
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 05:09:13 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190924050904epoutp02439623ed0c2e8d0c123dfb4d0a69518e~HR59AbbNN0417204172epoutp02i
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 05:09:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190924050904epoutp02439623ed0c2e8d0c123dfb4d0a69518e~HR59AbbNN0417204172epoutp02i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569301744;
 bh=b73FgEfXE10YC+KSaEs4tPAQu12P0kC5+J3rv2iL/Ds=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=erTqGVgT2/QTmxfRUT4iKtZ+Q+UYtJg1tL5Cs4pi6jplURVM+yS7KfypYomaGJ8jz
 47KAXyFfRd4Ze8jor4kqjHVMuWz7BmMOO2blRUIINai5wWxicVWhKdOYgwL/szPGgQ
 Rv3nLUqyv4ikCj3ejQ/7Vu9yGE1dwAt+zUyj6MHE=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190924050903epcas1p2d6c1689fbf4b6e2186e648996089c369~HR58PvFni0587605876epcas1p2i;
 Tue, 24 Sep 2019 05:09:03 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.157]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 46cq3H6FYszMqYm5; Tue, 24 Sep
 2019 05:08:43 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 4B.A3.04144.BD4A98D5; Tue, 24 Sep 2019 14:08:43 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20190924050843epcas1p4a27cfce9cfb41ca9d1077a4268c8efb3~HR5parfXr0913209132epcas1p4F;
 Tue, 24 Sep 2019 05:08:43 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190924050843epsmtrp2f705e97a54e811e28152bf2434437ab0~HR5pZduy_0149201492epsmtrp2r;
 Tue, 24 Sep 2019 05:08:43 +0000 (GMT)
X-AuditID: b6c32a35-2c7ff70000001030-93-5d89a4db14fe
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 49.BB.03889.BD4A98D5; Tue, 24 Sep 2019 14:08:43 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190924050842epsmtip1653b9f85fa39d975dc06398a4c8caaa5~HR5o_C2AI0629406294epsmtip1F;
 Tue, 24 Sep 2019 05:08:42 +0000 (GMT)
Subject: Re: [PATCH v7 4/6] PM / devfreq: Introduce devfreq_get_freq_range
To: Leonard Crestez <leonard.crestez@nxp.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <e8d1d04a-1e8e-0765-179f-2146271787bb@samsung.com>
Date: Tue, 24 Sep 2019 14:13:07 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <15e599188c5b50edad3efc37787dc2b70d6efead.1569272883.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrPJsWRmVeSWpSXmKPExsWy7bCmge7tJZ2xBi+3GlkcOraV3eLr6VOM
 FssuHWW0mL53E5vF+fMb2C3ONr1ht7jVIGOx4u5HVotNj6+xWnT9Wsls8bn3CKPFtRUTWS0+
 b3jMaHG7cQWbxepzB9ksug79ZbPY+NXDQdDj/Y1Wdo/ZDRdZPBZsKvXYtKqTzePOtT1sHpuX
 1HtsfLeDyePguz1MHr8Oi3r0bVnF6PF5k1wAd1S2TUZqYkpqkUJqXnJ+SmZeuq2Sd3C8c7yp
 mYGhrqGlhbmSQl5ibqqtkotPgK5bZg7QR0oKZYk5pUChgMTiYiV9O5ui/NKSVIWM/OISW6XU
 gpScAssCveLE3OLSvHS95PxcK0MDAyNToMKE7Iy+cx2MBeusK74cXcrawHhMr4uRk0NCwERi
 4f925i5GLg4hgR2MEiu/LWSBcD4xSiy8+o8NwvnGKPHswTbWLkYOsJY5+4sg4nsZJQ7sncsE
 MkpI4D2jxK77biC2sICXRNu0ZWDNIgKrGSValt5hBHGYBXpZJHbc72ABqWIT0JLY/+IGG4jN
 L6AocfXHY0YQm1fATmLxzidsINtYBFQlZuzSAgmLCkRIfHpwmBWiRFDi5MwnYGM4BeIktv2b
 DHYEs4C4xK0n86FseYnmrbOZIf58xC7R9VkAwnaR2Nw+GSouLPHq+BZ2CFtK4vO7vWwQdrXE
 ypNHwB6QEOhglNiy/wIrRMJYYv9SkGUcQAs0Jdbv0ocIK0rs/D2XEWIvn8S7rz3QwOKV6GgT
 gihRlrj84C4ThC0psbi9k20Co9IsJN/MQvLBLCQfzEJYtoCRZRWjWGpBcW56arFhgSFyZG9i
 BCd2LdMdjFPO+RxiFOBgVOLhLdjRESvEmlhWXJl7iFGCg1lJhHeTVlusEG9KYmVValF+fFFp
 TmrxIUZTYFhPZJYSTc4HZp28knhDUyNjY2MLE0MzU0NDJXFej/SGWCGB9MSS1OzU1ILUIpg+
 Jg5OqQbGGSw7G9ZskpJdr+l4fsWHzCe2ngc5Y6UNxM7Vv533qCR86t59G931emsPbQqak1Zz
 c/a5p3sClh/+knhAQfnXVXanhRLyi25UKj4zsk2N5dt5+mepkHuRfPaW6lVXnS0Z3J4zfTp7
 jynp5r7S42K/3hk9/8518VIZh9khno/XhQMEdHlmvG4UUWIpzkg01GIuKk4EACutOaACBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrFIsWRmVeSWpSXmKPExsWy7bCSnO7tJZ2xBk+3CFscOraV3eLr6VOM
 FssuHWW0mL53E5vF+fMb2C3ONr1ht7jVIGOx4u5HVotNj6+xWnT9Wsls8bn3CKPFtRUTWS0+
 b3jMaHG7cQWbxepzB9ksug79ZbPY+NXDQdDj/Y1Wdo/ZDRdZPBZsKvXYtKqTzePOtT1sHpuX
 1HtsfLeDyePguz1MHr8Oi3r0bVnF6PF5k1wAdxSXTUpqTmZZapG+XQJXRt+5DsaCddYVX44u
 ZW1gPKbXxcjBISFgIjFnf1EXIxeHkMBuRonp+y4zdTFyAsUlJaZdPMoMUSMscfhwMUTNW0aJ
 v11bwWqEBbwk2qYtYwOxRQTWMkrMOe8AUsQs0Msi0XRwBTtExyNGiZ0zz7KCVLEJaEnsf3ED
 rINfQFHi6o/HjCA2r4CdxOKdT9hAtrEIqErM2KUFEhYViJA4vGMWVImgxMmZT1hAbE6BOIlt
 /yaDHcEsoC7xZ94lZghbXOLWk/lQcXmJ5q2zmScwCs9C0j4LScssJC2zkLQsYGRZxSiZWlCc
 m55bbFhglJdarlecmFtcmpeul5yfu4kRHONaWjsYT5yIP8QowMGoxMMrsa0jVog1say4MvcQ
 owQHs5II7yattlgh3pTEyqrUovz4otKc1OJDjNIcLErivPL5xyKFBNITS1KzU1MLUotgskwc
 nFINjPEliyc65fJHR/n5Wm113fLA6C6X8tmdZ89tmHS743hcXdhG+Z1hBiFnGS5XbdnwL0R2
 8ZpXdtouM9d0mzN8OCnHGPdr8YUv516t2yuh/p2XfcKs4JS0/I0HWxqLPba/0n/06431hIhY
 /gudNounPJtbxrxU3XpKslnc+lda9/m+Vf24+qQ464ESS3FGoqEWc1FxIgDx7oP+7QIAAA==
X-CMS-MailID: 20190924050843epcas1p4a27cfce9cfb41ca9d1077a4268c8efb3
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190923211045epcas1p2358d39cbc6f38af8ae0b7923550d919e
References: <cover.1569272883.git.leonard.crestez@nxp.com>
 <CGME20190923211045epcas1p2358d39cbc6f38af8ae0b7923550d919e@epcas1p2.samsung.com>
 <15e599188c5b50edad3efc37787dc2b70d6efead.1569272883.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_220911_359735_265F7F17 
X-CRM114-Status: GOOD (  32.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
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
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Martin Kepplinger <martink@posteo.de>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxOS4gOS4gMjQuIOyYpOyghCA2OjEwLCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4g
TW92aW5nIGhhbmRsaW5nIG9mIG1pbi9tYXggZnJlcSB0byBhIHNpbmdsZSBmdW5jdGlvbiBhbmQg
Y2FsbCBpdCBmcm9tCj4gdXBkYXRlX2RldmZyZXEgYW5kIGZvciBwcmludGluZyBtaW4vbWF4IGZy
ZXEgdmFsdWVzIGluIHN5c2ZzLgo+IAo+IFRoaXMgY2hhbmdlcyB0aGUgYmVoYXZpb3Igb2Ygb3V0
LW9mLXJhbmdlIG1pbl9mcmVxL21heF9mcmVxOiBjbGFtcGluZwo+IGlzIG5vdyBkb25lIGF0IGV2
YWx1YXRpb24gdGltZS4gVGhpcyBtZWFucyB0aGF0IGlmIGFuIG91dC1vZi1yYW5nZQo+IGNvbnN0
cmFpbnQgaXMgaW1wb3NlZCBieSBzeXNmcyBhbmQgaXQgbGF0ZXIgYmVjb21lcyB2YWxpZCB0aGVu
IGl0IHdpbGwKPiBiZSBlbmZvcmNlZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBMZW9uYXJkIENyZXN0
ZXogPGxlb25hcmQuY3Jlc3RlekBueHAuY29tPgo+IFJldmlld2VkLWJ5OiBNYXR0aGlhcyBLYWVo
bGNrZSA8bWthQGNocm9taXVtLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9kZXZmcmVxL2RldmZyZXEu
YyB8IDExMSArKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgNjMgaW5zZXJ0aW9ucygrKSwgNDggZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMgYi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5j
Cj4gaW5kZXggMWNlYzgxNmQzZDAwLi43ZjE1MmE1ODJlNzggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9kZXZmcmVxL2RldmZyZXEuYwo+ICsrKyBiL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMKPiBA
QCAtMjQsMTAgKzI0LDEyIEBACj4gICNpbmNsdWRlIDxsaW51eC9wcmludGsuaD4KPiAgI2luY2x1
ZGUgPGxpbnV4L2hydGltZXIuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L29mLmg+Cj4gICNpbmNsdWRl
ICJnb3Zlcm5vci5oIgo+ICAKPiArI2RlZmluZSBIWl9QRVJfS0haIDEwMDAKCkl0IGlzIG5vdCB1
c2VkIG9uIHRoaXMgcGF0Y2guIElmIGl0IGlzIHVzZWQgb24gbGF0ZXIgcGF0Y2gsCm1vdmUgaXQg
dG8gb3RoZXIgcGF0Y2guCgo+ICsKPiAgI2RlZmluZSBDUkVBVEVfVFJBQ0VfUE9JTlRTCj4gICNp
bmNsdWRlIDx0cmFjZS9ldmVudHMvZGV2ZnJlcS5oPgo+ICAKPiAgc3RhdGljIHN0cnVjdCBjbGFz
cyAqZGV2ZnJlcV9jbGFzczsKPiAgCj4gQEAgLTk2LDEwICs5OCw1MCBAQCBzdGF0aWMgdW5zaWdu
ZWQgbG9uZyBmaW5kX2F2YWlsYWJsZV9tYXhfZnJlcShzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSkK
PiAgCQlkZXZfcG1fb3BwX3B1dChvcHApOwo+ICAKPiAgCXJldHVybiBtYXhfZnJlcTsKPiAgfQo+
ICAKPiArLyoqCj4gKyAqIGRldmZyZXFfZ2V0X2ZyZXFfcmFuZ2UoKSAtIEdldCB0aGUgY3VycmVu
dCBmcmVxIHJhbmdlCj4gKyAqIEBkZXZmcmVxOgl0aGUgZGV2ZnJlcSBpbnN0YW5jZQo+ICsgKiBA
bWluX2ZyZXE6CXRoZSBtaW4gZnJlcXVlbmN5Cj4gKyAqIEBtYXhfZnJlcToJdGhlIG1heCBmcmVx
dWVuY3kKPiArICoKPiArICogVGhpcyB0YWtlcyBpbnRvIGNvbnNpZGVyYXRpb24gYWxsIGNvbnN0
cmFpbnRzLgo+ICsgKi8KPiArc3RhdGljIHZvaWQgZGV2ZnJlcV9nZXRfZnJlcV9yYW5nZShzdHJ1
Y3QgZGV2ZnJlcSAqZGV2ZnJlcSwKClRoaXMgZnVuY3Rpb24gaXMgdXNlZCBpbiB0aGUgb25seSBk
ZXZmcmVxIGNvcmUuCkkgdGhpbmsgdGhhdCB0aGUgaW50ZXJuYWwgZnVuY3Rpb24gZG9lc24ndCBu
ZWVkIHRvIGFkZCAnZGV2ZnJlcScgcHJlZml4LgpBbHNvLCB3aGVuIEkgZGV2ZWxvcGVkIHRoZSBw
YXRjaGVzLCBJIGRpZG4ndCB1c2UgJ2RldmZyZXEnIHByZWZpeApmb3IgaW50ZXJuYWwgZnVuY3Rp
b24uCgo+ICsJCQkJICAgdW5zaWduZWQgbG9uZyAqbWluX2ZyZXEsCj4gKwkJCQkgICB1bnNpZ25l
ZCBsb25nICptYXhfZnJlcSkKPiArewo+ICsJdW5zaWduZWQgbG9uZyAqZnJlcV90YWJsZSA9IGRl
dmZyZXEtPnByb2ZpbGUtPmZyZXFfdGFibGU7Cj4gKwo+ICsJbG9ja2RlcF9hc3NlcnRfaGVsZCgm
ZGV2ZnJlcS0+bG9jayk7Cj4gKwo+ICsJLyogSW5pdCBtaW4vbWF4IGZyZXF1ZW5jeSBmcm9tIGZy
ZXEgdGFibGUgKi8KCkkgdGhpbmsgdGhhdCB0aGUgY29tbWVudHMgaW4gdGhlIGRldmZyZXFfZ2V0
X2ZyZXFfcmFuZ2UoKSwKaXQgaXMgbm90IG5lY2Vzc2FyeS4gQnV0IGlmIHlvdSB0aGluayB0aGF0
IGl0IGlzIG5lY2Vzc2FyeSwKcGxlYXNlIGFkZCBtb3JlIGRldGFpbGVkIGRlc2NyaXB0aW9uIGxp
a2UgYXMgZm9sbG93aW5nOgoKCS8qCgkgKiBUaGUgZGV2ZnJlcSByZWNvbW1lbmQgdGhhdCBmcmVx
X3RhYmxlIG11c3QgYmUgZ2VuZXJhdGVkCgkgKiBpbiBhc2NlbmRpbmcgb3JkZXIgYnV0LCBzb21l
IGRldmZyZXEgZHJpdmVyIHVzZWQgdGhlIGRlc2NlbmRpbmcgb3JkZXIKCSAqIGZvciBmcmVxX3Rh
YmxlLiBJbiBvcmRlciB0byBzdXBwb3J0IGFsbCBjYXNlcywgY2hlY2sgdGhlIG9yZGVyCgkgKiBv
ZiBmcmVxX3RhYmxlIGFuZCB0aGVuIGluaXRpYWxpemUgdGhlIG1pbi9tYXggZnJlcXVlbmN5IGZy
b20gZnJlcV90YWJsZS4KCSAqLwoKPiArCWlmIChmcmVxX3RhYmxlWzBdIDwgZnJlcV90YWJsZVtk
ZXZmcmVxLT5wcm9maWxlLT5tYXhfc3RhdGUgLSAxXSkgewo+ICsJCSptaW5fZnJlcSA9IGZyZXFf
dGFibGVbMF07Cj4gKwkJKm1heF9mcmVxID0gZnJlcV90YWJsZVtkZXZmcmVxLT5wcm9maWxlLT5t
YXhfc3RhdGUgLSAxXTsKPiArCX0gZWxzZSB7Cj4gKwkJKm1pbl9mcmVxID0gZnJlcV90YWJsZVtk
ZXZmcmVxLT5wcm9maWxlLT5tYXhfc3RhdGUgLSAxXTsKPiArCQkqbWF4X2ZyZXEgPSBmcmVxX3Rh
YmxlWzBdOwo+ICsJfQo+ICsKPiArCS8qIGNvbnN0cmFpbnRzIGZyb20gc3lzZnMgKi8KCmRpdHRv
LiBOZWVkIHRvIGFkZCBtb3JlIGRldGFpbGVkIGNvbW1lbnQgYnkga2VlcGluZyB0aGUgY29tbWVu
dCBzdHlsZSBvZiBkZXZmcmVxLgoKCj4gKwkqbWluX2ZyZXEgPSBtYXgoKm1pbl9mcmVxLCBkZXZm
cmVxLT5taW5fZnJlcSk7Cj4gKwkqbWF4X2ZyZXEgPSBtaW4oKm1heF9mcmVxLCBkZXZmcmVxLT5t
YXhfZnJlcSk7Cj4gKwo+ICsJLyogY29uc3RyYWludHMgZnJvbSBPUFAgaW50ZXJmYWNlICovCgpk
aXR0by4KCj4gKwkqbWluX2ZyZXEgPSBtYXgoKm1pbl9mcmVxLCBkZXZmcmVxLT5zY2FsaW5nX21p
bl9mcmVxKTsKPiArCS8qIHNjYWxpbmdfbWF4X2ZyZXEgY2FuIGJlIHplcm8gb24gZXJyb3IgKi8K
PiArCWlmIChkZXZmcmVxLT5zY2FsaW5nX21heF9mcmVxKQo+ICsJCSptYXhfZnJlcSA9IG1pbigq
bWF4X2ZyZXEsIGRldmZyZXEtPnNjYWxpbmdfbWF4X2ZyZXEpOwo+ICsKPiArCS8qIG1heF9mcmVx
IHRha2VzIHByZWNlZGVuY2Ugb3ZlciBtaW5fZnJlcSAqLwoKSXQgaXMgbm90IG5lY2Vzc2FyeS4g
V2UgY2FuIGtub3cgdGhhdCBtaW5fZnJlcSBoYXZlIHRvIGJlCnVuZGVyIG1heF9mcmVxIHdpdGhv
dXQgYW55IGNvbW1lbnQuCgo+ICsJaWYgKCptaW5fZnJlcSA+ICptYXhfZnJlcSkKPiArCQkqbWlu
X2ZyZXEgPSAqbWF4X2ZyZXE7Cj4gK30KPiArCj4gIC8qKgo+ICAgKiBkZXZmcmVxX2dldF9mcmVx
X2xldmVsKCkgLSBMb29rdXAgZnJlcV90YWJsZSBmb3IgdGhlIGZyZXF1ZW5jeQo+ICAgKiBAZGV2
ZnJlcToJdGhlIGRldmZyZXEgaW5zdGFuY2UKPiAgICogQGZyZXE6CXRoZSB0YXJnZXQgZnJlcXVl
bmN5Cj4gICAqLwo+IEBAIC0zNDksMjEgKzM5MSwxMyBAQCBpbnQgdXBkYXRlX2RldmZyZXEoc3Ry
dWN0IGRldmZyZXEgKmRldmZyZXEpCj4gIAo+ICAJLyogUmVldmFsdWF0ZSB0aGUgcHJvcGVyIGZy
ZXF1ZW5jeSAqLwo+ICAJZXJyID0gZGV2ZnJlcS0+Z292ZXJub3ItPmdldF90YXJnZXRfZnJlcShk
ZXZmcmVxLCAmZnJlcSk7Cj4gIAlpZiAoZXJyKQo+ICAJCXJldHVybiBlcnI7Cj4gKwlkZXZmcmVx
X2dldF9mcmVxX3JhbmdlKGRldmZyZXEsICZtaW5fZnJlcSwgJm1heF9mcmVxKTsKPiAgCj4gLQkv
Kgo+IC0JICogQWRqdXN0IHRoZSBmcmVxdWVuY3kgd2l0aCB1c2VyIGZyZXEsIFFvUyBhbmQgYXZh
aWxhYmxlIGZyZXEuCj4gLQkgKgo+IC0JICogTGlzdCBmcm9tIHRoZSBoaWdoZXN0IHByaW9yaXR5
Cj4gLQkgKiBtYXhfZnJlcQo+IC0JICogbWluX2ZyZXEKPiAtCSAqLwo+IC0JbWF4X2ZyZXEgPSBt
aW4oZGV2ZnJlcS0+c2NhbGluZ19tYXhfZnJlcSwgZGV2ZnJlcS0+bWF4X2ZyZXEpOwo+IC0JbWlu
X2ZyZXEgPSBtYXgoZGV2ZnJlcS0+c2NhbGluZ19taW5fZnJlcSwgZGV2ZnJlcS0+bWluX2ZyZXEp
Owo+IC0KPiArCS8qIG1heCBmcmVxIHRha2VzIHByaW9yaXR5IG92ZXIgbWluIGZyZXEgKi8KClBs
ZWFzZSByZW1vdmUgaXQuIAoKPiAgCWlmIChmcmVxIDwgbWluX2ZyZXEpIHsKPiAgCQlmcmVxID0g
bWluX2ZyZXE7Cj4gIAkJZmxhZ3MgJj0gfkRFVkZSRVFfRkxBR19MRUFTVF9VUFBFUl9CT1VORDsg
LyogVXNlIEdMQiAqLwo+ICAJfQo+ICAJaWYgKGZyZXEgPiBtYXhfZnJlcSkgewo+IEBAIC0xMjc4
LDQwICsxMzEyLDI4IEBAIHN0YXRpYyBzc2l6ZV90IG1pbl9mcmVxX3N0b3JlKHN0cnVjdCBkZXZp
Y2UgKmRldiwgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsCj4gIAlyZXQgPSBzc2NhbmYo
YnVmLCAiJWx1IiwgJnZhbHVlKTsKPiAgCWlmIChyZXQgIT0gMSkKPiAgCQlyZXR1cm4gLUVJTlZB
TDsKPiAgCj4gIAltdXRleF9sb2NrKCZkZi0+bG9jayk7Cj4gLQo+IC0JaWYgKHZhbHVlKSB7Cj4g
LQkJaWYgKHZhbHVlID4gZGYtPm1heF9mcmVxKSB7Cj4gLQkJCXJldCA9IC1FSU5WQUw7Cj4gLQkJ
CWdvdG8gdW5sb2NrOwo+IC0JCX0KPiAtCX0gZWxzZSB7Cj4gLQkJdW5zaWduZWQgbG9uZyAqZnJl
cV90YWJsZSA9IGRmLT5wcm9maWxlLT5mcmVxX3RhYmxlOwo+IC0KPiAtCQkvKiBHZXQgbWluaW11
bSBmcmVxdWVuY3kgYWNjb3JkaW5nIHRvIHNvcnRpbmcgb3JkZXIgKi8KPiAtCQlpZiAoZnJlcV90
YWJsZVswXSA8IGZyZXFfdGFibGVbZGYtPnByb2ZpbGUtPm1heF9zdGF0ZSAtIDFdKQo+IC0JCQl2
YWx1ZSA9IGZyZXFfdGFibGVbMF07Cj4gLQkJZWxzZQo+IC0JCQl2YWx1ZSA9IGZyZXFfdGFibGVb
ZGYtPnByb2ZpbGUtPm1heF9zdGF0ZSAtIDFdOwo+IC0JfQo+IC0+ICAJZGYtPm1pbl9mcmVxID0g
dmFsdWU7PiAgCXVwZGF0ZV9kZXZmcmVxKGRmKTsKPiAtCXJldCA9IGNvdW50Owo+IC11bmxvY2s6
Cj4gIAltdXRleF91bmxvY2soJmRmLT5sb2NrKTsKPiAtCXJldHVybiByZXQ7Cj4gKwo+ICsJcmV0
dXJuIGNvdW50Owo+ICB9Cj4gIAo+ICBzdGF0aWMgc3NpemVfdCBtaW5fZnJlcV9zaG93KHN0cnVj
dCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsCj4gIAkJCSAgICAg
Y2hhciAqYnVmKQo+ICB7Cj4gIAlzdHJ1Y3QgZGV2ZnJlcSAqZGYgPSB0b19kZXZmcmVxKGRldik7
Cj4gKwl1bnNpZ25lZCBsb25nIG1pbl9mcmVxLCBtYXhfZnJlcTsKPiAgCj4gLQlyZXR1cm4gc3By
aW50ZihidWYsICIlbHVcbiIsIG1heChkZi0+c2NhbGluZ19taW5fZnJlcSwgZGYtPm1pbl9mcmVx
KSk7Cj4gKwltdXRleF9sb2NrKCZkZi0+bG9jayk7Cj4gKwlkZXZmcmVxX2dldF9mcmVxX3Jhbmdl
KGRmLCAmbWluX2ZyZXEsICZtYXhfZnJlcSk7Cj4gKwltdXRleF91bmxvY2soJmRmLT5sb2NrKTsK
PiArCj4gKwlyZXR1cm4gc3ByaW50ZihidWYsICIlbHVcbiIsIG1pbl9mcmVxKTsKPiAgfQo+ICAK
PiAgc3RhdGljIHNzaXplX3QgbWF4X2ZyZXFfc3RvcmUoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1
Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwKPiAgCQkJICAgICAgY29uc3QgY2hhciAqYnVmLCBz
aXplX3QgY291bnQpCj4gIHsKPiBAQCAtMTMyMyw0MCArMTM0NSwzMyBAQCBzdGF0aWMgc3NpemVf
dCBtYXhfZnJlcV9zdG9yZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2VfYXR0cmli
dXRlICphdHRyLAo+ICAJaWYgKHJldCAhPSAxKQo+ICAJCXJldHVybiAtRUlOVkFMOwo+ICAKPiAg
CW11dGV4X2xvY2soJmRmLT5sb2NrKTsKPiAgCj4gLQlpZiAodmFsdWUpIHsKPiAtCQlpZiAodmFs
dWUgPCBkZi0+bWluX2ZyZXEpIHsKPiAtCQkJcmV0ID0gLUVJTlZBTDsKPiAtCQkJZ290byB1bmxv
Y2s7Cj4gLQkJfQo+IC0JfSBlbHNlIHsKPiAtCQl1bnNpZ25lZCBsb25nICpmcmVxX3RhYmxlID0g
ZGYtPnByb2ZpbGUtPmZyZXFfdGFibGU7Cj4gLQo+IC0JCS8qIEdldCBtYXhpbXVtIGZyZXF1ZW5j
eSBhY2NvcmRpbmcgdG8gc29ydGluZyBvcmRlciAqLwo+IC0JCWlmIChmcmVxX3RhYmxlWzBdIDwg
ZnJlcV90YWJsZVtkZi0+cHJvZmlsZS0+bWF4X3N0YXRlIC0gMV0pCj4gLQkJCXZhbHVlID0gZnJl
cV90YWJsZVtkZi0+cHJvZmlsZS0+bWF4X3N0YXRlIC0gMV07Cj4gLQkJZWxzZQo+IC0JCQl2YWx1
ZSA9IGZyZXFfdGFibGVbMF07Cj4gLQl9Cj4gKwkvKiBJbnRlcnByZXQgemVybyBhcyAiZG9uJ3Qg
Y2FyZSIgKi8KClBsZWFzZSByZW1vdmUgdGhpcyBjb21tZW50LgoKPiArCWlmICghdmFsdWUpCj4g
KwkJdmFsdWUgPSBVTE9OR19NQVg7Cj4gIAo+ICAJZGYtPm1heF9mcmVxID0gdmFsdWU7Cj4gIAl1
cGRhdGVfZGV2ZnJlcShkZik7Cj4gLQlyZXQgPSBjb3VudDsKPiAtdW5sb2NrOgo+ICAJbXV0ZXhf
dW5sb2NrKCZkZi0+bG9jayk7Cj4gLQlyZXR1cm4gcmV0Owo+ICsKPiArCXJldHVybiBjb3VudDsK
PiAgfQo+ICBzdGF0aWMgREVWSUNFX0FUVFJfUlcobWluX2ZyZXEpOwo+ICAKPiAgc3RhdGljIHNz
aXplX3QgbWF4X2ZyZXFfc2hvdyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2VfYXR0
cmlidXRlICphdHRyLAo+ICAJCQkgICAgIGNoYXIgKmJ1ZikKPiAgewo+ICAJc3RydWN0IGRldmZy
ZXEgKmRmID0gdG9fZGV2ZnJlcShkZXYpOwo+ICsJdW5zaWduZWQgbG9uZyBtaW5fZnJlcSwgbWF4
X2ZyZXE7Cj4gKwo+ICsJbXV0ZXhfbG9jaygmZGYtPmxvY2spOwo+ICsJZGV2ZnJlcV9nZXRfZnJl
cV9yYW5nZShkZiwgJm1pbl9mcmVxLCAmbWF4X2ZyZXEpOwo+ICsJbXV0ZXhfdW5sb2NrKCZkZi0+
bG9jayk7Cj4gIAo+IC0JcmV0dXJuIHNwcmludGYoYnVmLCAiJWx1XG4iLCBtaW4oZGYtPnNjYWxp
bmdfbWF4X2ZyZXEsIGRmLT5tYXhfZnJlcSkpOwo+ICsJcmV0dXJuIHNwcmludGYoYnVmLCAiJWx1
XG4iLCBtYXhfZnJlcSk7Cj4gIH0KPiAgc3RhdGljIERFVklDRV9BVFRSX1JXKG1heF9mcmVxKTsK
PiAgCj4gIHN0YXRpYyBzc2l6ZV90IGF2YWlsYWJsZV9mcmVxdWVuY2llc19zaG93KHN0cnVjdCBk
ZXZpY2UgKmQsCj4gIAkJCQkJICBzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwKPiAKCi0t
IApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
