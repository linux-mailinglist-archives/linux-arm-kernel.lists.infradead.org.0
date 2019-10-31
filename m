Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F58EA93A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 03:24:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1jBoF8eJHvS28Bo+d9IpwdMCultZc/JfpJZmdXJ9RVY=; b=bpoMm4sqGI9qIC
	LDrF0JOr85LFAWXpWG3mnQWihPwOROgaCP7FIkK5+TgkexUa/DYHGquohATSJisrEAPBdhla/xsAG
	K7lJGc1sIN92crrvcD/9ouTB1KvI/9Y/09QL/WSf/EHYshkoVPBfqPF6dUddLwz09P+J6HYCb5/IN
	lUC7aS3Wew2hcPd/9r1xPOHp7FfonWDrq+/rxu5p/HsCs/I1eSXt0c1SU485G47/Otad3xQ0HY5Vv
	8Fjrf5W0w24QJ4Wd/OPUUmvjuGfXtWMyrROZQvRVsw+aDe1ZcO6EKg9z0WJMIPHnfxEex/wWpZJdK
	7mlUafACRQPux2s+oiyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ08m-0003GI-FL; Thu, 31 Oct 2019 02:24:48 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ08c-0003Fm-Iw
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 02:24:40 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20191031022430epoutp02f68979ad9e52a31f9f0724b6e6f8c9f4~Smh1U8_Xo1666016660epoutp02Y
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 02:24:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20191031022430epoutp02f68979ad9e52a31f9f0724b6e6f8c9f4~Smh1U8_Xo1666016660epoutp02Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1572488670;
 bh=KEiEcE5JtlUWEtH1Ti9sgZlmVNmok7b1iI490Umrh3o=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=bO+MJSLKCvUIzcbvChprabYUOrvHd7GaVVEuWztAxw2SSBnMV12CTziPrOrLzhr19
 9wCMzDZs9o4RLzCNN1jeAR91wu6FcHX6XBT3MNormN6uu9+OwdQVSSxwP0ydTMnohH
 3WVn2pFID5pu5Z4eJnZnmyr4BL/PQGJ2frdgOSY8=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191031022429epcas1p49913e3e670541981ed8850ef7c859a99~Smh0q1le60172501725epcas1p4P;
 Thu, 31 Oct 2019 02:24:29 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.156]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 473Tfg2z6RzMqYkg; Thu, 31 Oct
 2019 02:24:27 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 16.47.04144.8D54ABD5; Thu, 31 Oct 2019 11:24:24 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20191031022423epcas1p3419004f8dc70c050deb614dd9dfc9280~SmhusFVKu2813128131epcas1p3a;
 Thu, 31 Oct 2019 02:24:23 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191031022423epsmtrp137f91eb77549a1b1be766331b73fa202~SmhurAcbb1470414704epsmtrp1U;
 Thu, 31 Oct 2019 02:24:23 +0000 (GMT)
X-AuditID: b6c32a35-2dfff70000001030-2c-5dba45d8e851
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 4F.4B.24756.7D54ABD5; Thu, 31 Oct 2019 11:24:23 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191031022423epsmtip12b41035d8f68c3da042b32ff8b160651~Smhua5I7z3255032550epsmtip1S;
 Thu, 31 Oct 2019 02:24:23 +0000 (GMT)
Subject: Re: [PATCH v9 2/8] PM / devfreq: Fix devfreq_notifier_call
 returning errno
To: Leonard Crestez <leonard.crestez@nxp.com>, Matthias Kaehlcke
 <mka@chromium.org>, MyungJoo Ham <myungjoo.ham@samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <81d8e639-e52f-60b8-c584-e300b1540a33@samsung.com>
Date: Thu, 31 Oct 2019 11:29:55 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <10b1e5f93e7594852aa5cbfe1309bf486f70ecbb.1570044052.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMJsWRmVeSWpSXmKPExsWy7bCmge4N112xBhMnsFocOraV3eLr6VOM
 FssuHWW0mL53E5vF+fMb2C3ONr1ht1hx9yOrxabH11gtun6tZLb43HuE0eLzhseMFrcbV7BZ
 rD53kM2i69BfNouNXz0c+D3e32hl95jdcJHFY8GmUo9NqzrZPO5c28PmsXlJvcfGdzuYPA6+
 28Pk0bdlFaPH501yAVxR2TYZqYkpqUUKqXnJ+SmZeem2St7B8c7xpmYGhrqGlhbmSgp5ibmp
 tkouPgG6bpk5QE8oKZQl5pQChQISi4uV9O1sivJLS1IVMvKLS2yVUgtScgosC/SKE3OLS/PS
 9ZLzc60MDQyMTIEKE7Iz+jZfZC+YLlAx9eBElgbGfzxdjJwcEgImEvsu7mQBsYUEdjBKPHtj
 1cXIBWR/YpT4vW0zC4TzjVFiybT9bHAdW2ZBJfYySuy8dJYNwnnPKHF2WRszSJWwQKjEgtnr
 WUFsEYE6iVuLTzCDFDELPGeWeHpwJlgRm4CWxP4XN8DG8gsoSlz98ZgRxOYVsJPYcHUFmM0i
 oCqxa9EVoHoODlGBCInTXxMhSgQlTs58AnY3p0CcxMwPB8DGMAuIS9x6Mp8JwpaXaN46G2yv
 hMA5dokTB66xQ7zgIvFgznwoW1ji1fEtULaUxMv+Nii7WmLlySNsEM0djBJb9l9ghUgYS+xf
 OpkJ5CBmAU2J9bv0IcKKEjt/z2WEWMwn8e5rDytIiYQAr0RHmxBEibLE5Qd3mSBsSYnF7Z1s
 ExiVZiF5ZxaSF2YheWEWwrIFjCyrGMVSC4pz01OLDQsMkWN7EyM4gWuZ7mCccs7nEKMAB6MS
 D++Esp2xQqyJZcWVuYcYJTiYlUR4v9kAhXhTEiurUovy44tKc1KLDzGaAgN7IrOUaHI+MLvk
 lcQbmhoZGxtbmBiamRoaKonzOi5fGiskkJ5YkpqdmlqQWgTTx8TBKdXAeDTIfq3nGbXD3qfT
 NjyOWe9ctMNQ5d69iLupmYp/zkzmkYiW+/by8fHtRZHi765GTerOOdRYt3my5NWPX/ysDbsu
 1Hp3N8xY9UVi0naWCYX1P6T/ZWUtDpFbNMFwWXFyVMLXwg0rrp8UMskOyFI7+DBgp/0987wt
 Mub+KVNkvugznvkz5dLLQiWW4oxEQy3mouJEAEBama72AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPIsWRmVeSWpSXmKPExsWy7bCSnO51112xBo96pCwOHdvKbvH19ClG
 i2WXjjJaTN+7ic3i/PkN7BZnm96wW6y4+5HVYtPja6wWXb9WMlt87j3CaPF5w2NGi9uNK9gs
 Vp87yGbRdegvm8XGrx4O/B7vb7Sye8xuuMjisWBTqcemVZ1sHneu7WHz2Lyk3mPjux1MHgff
 7WHy6NuyitHj8ya5AK4oLpuU1JzMstQifbsEroy+zRfZC6YLVEw9OJGlgfEfTxcjJ4eEgInE
 vi2zWLoYuTiEBHYzSjw6f4ENIiEpMe3iUeYuRg4gW1ji8OFiiJq3jBLT26cyg9QIC4RKHHvd
 xgpiiwjUSfx5vo8JpIhZ4DmzxIb7X1khOh4xSrzb+RFsKpuAlsT+FzfAbH4BRYmrPx4zgti8
 AnYSG66uALNZBFQldi26ArZBVCBC4vn2G1A1ghInZz5hAbE5BeIkZn44ADaHWUBd4s+8S8wQ
 trjErSfzmSBseYnmrbOZJzAKz0LSPgtJyywkLbOQtCxgZFnFKJlaUJybnltsWGCYl1quV5yY
 W1yal66XnJ+7iREczVqaOxgvL4k/xCjAwajEwzuhbGesEGtiWXFl7iFGCQ5mJRHebzZAId6U
 xMqq1KL8+KLSnNTiQ4zSHCxK4rxP845FCgmkJ5akZqemFqQWwWSZODilGhjjyrW4d9s/PyNv
 udNT0zPu/45du09bq52PP1S4WfnVScOAO75xDOszlV1bJsbf+8pRJj/Lcs+f9u0cZbdts1J+
 qux63vVb8mdBgjDzlG/uzv+1L8W/jV9k9KRbT/1hwyHRNw/lPa1/b3i27OJ7n701Iv/TtrJ4
 J0ZdS+939BHQ/xl6PKP5xR0lluKMREMt5qLiRAAfb/8q4gIAAA==
X-CMS-MailID: 20191031022423epcas1p3419004f8dc70c050deb614dd9dfc9280
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191002192525epcas2p2261ab613edfbf976cd82daf9b7ce4802
References: <cover.1570044052.git.leonard.crestez@nxp.com>
 <CGME20191002192525epcas2p2261ab613edfbf976cd82daf9b7ce4802@epcas2p2.samsung.com>
 <10b1e5f93e7594852aa5cbfe1309bf486f70ecbb.1570044052.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_192438_959704_AB036381 
X-CRM114-Status: GOOD (  22.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
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

T24gMTkuIDEwLiAzLiDsmKTsoIQgNDoyNSwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+IE5vdGlm
aWVyIGNhbGxiYWNrcyBzaG91bGRuJ3QgcmV0dXJuIG5lZ2F0aXZlIGVycm5vIGJ1dCBvbmUgb2Yg
dGhlCj4gTk9USUZZX09LL0RPTkUvQkFEIHZhbHVlcy4KPiAKPiBUaGUgT1BQIGNvcmUgd2lsbCBp
Z25vcmUgcmV0dXJuIHZhbHVlcyBmcm9tIG5vdGlmaWVycyBidXQgcmV0dXJuaW5nIGEKPiB2YWx1
ZSB0aGF0IG1hdGNoZXMgTk9USUZZX1NUT1BfTUFTSyB3aWxsIHN0b3AgdGhlIG5vdGlmaWNhdGlv
biBjaGFpbi4KPiAKPiBGaXggYnkgYWx3YXlzIHJldHVybmluZyBOT1RJRllfT0suCj4gCj4gU2ln
bmVkLW9mZi1ieTogTGVvbmFyZCBDcmVzdGV6IDxsZW9uYXJkLmNyZXN0ZXpAbnhwLmNvbT4KPiAt
LS0KPiAgZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYyB8IDI0ICsrKysrKysrKysrKystLS0tLS0t
LS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMgYi9kcml2ZXJzL2Rl
dmZyZXEvZGV2ZnJlcS5jCj4gaW5kZXggN2RjODk5ZGExMTcyLi4zMmJiZjZlODAzODAgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYwo+ICsrKyBiL2RyaXZlcnMvZGV2ZnJl
cS9kZXZmcmVxLmMKPiBAQCAtNTQ4LDMwICs1NDgsMzIgQEAgRVhQT1JUX1NZTUJPTChkZXZmcmVx
X2ludGVydmFsX3VwZGF0ZSk7Cj4gICAqLwo+ICBzdGF0aWMgaW50IGRldmZyZXFfbm90aWZpZXJf
Y2FsbChzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm5iLCB1bnNpZ25lZCBsb25nIHR5cGUsCj4gIAkJ
CQkgdm9pZCAqZGV2cCkKPiAgewo+ICAJc3RydWN0IGRldmZyZXEgKmRldmZyZXEgPSBjb250YWlu
ZXJfb2YobmIsIHN0cnVjdCBkZXZmcmVxLCBuYik7Cj4gLQlpbnQgcmV0Owo+ICsJaW50IGVyciA9
IC1FSU5WQUw7Cj4gIAo+ICAJbXV0ZXhfbG9jaygmZGV2ZnJlcS0+bG9jayk7Cj4gIAo+ICAJZGV2
ZnJlcS0+c2NhbGluZ19taW5fZnJlcSA9IGZpbmRfYXZhaWxhYmxlX21pbl9mcmVxKGRldmZyZXEp
Owo+IC0JaWYgKCFkZXZmcmVxLT5zY2FsaW5nX21pbl9mcmVxKSB7Cj4gLQkJbXV0ZXhfdW5sb2Nr
KCZkZXZmcmVxLT5sb2NrKTsKPiAtCQlyZXR1cm4gLUVJTlZBTDsKPiAtCX0KPiArCWlmICghZGV2
ZnJlcS0+c2NhbGluZ19taW5fZnJlcSkKPiArCQlnb3RvIG91dDsKPiAgCj4gIAlkZXZmcmVxLT5z
Y2FsaW5nX21heF9mcmVxID0gZmluZF9hdmFpbGFibGVfbWF4X2ZyZXEoZGV2ZnJlcSk7Cj4gLQlp
ZiAoIWRldmZyZXEtPnNjYWxpbmdfbWF4X2ZyZXEpIHsKPiAtCQltdXRleF91bmxvY2soJmRldmZy
ZXEtPmxvY2spOwo+IC0JCXJldHVybiAtRUlOVkFMOwo+IC0JfQo+ICsJaWYgKCFkZXZmcmVxLT5z
Y2FsaW5nX21heF9mcmVxKQo+ICsJCWdvdG8gb3V0Owo+ICsKPiArCWVyciA9IHVwZGF0ZV9kZXZm
cmVxKGRldmZyZXEpOwo+ICAKPiAtCXJldCA9IHVwZGF0ZV9kZXZmcmVxKGRldmZyZXEpOwo+ICtv
dXQ6Cj4gIAltdXRleF91bmxvY2soJmRldmZyZXEtPmxvY2spOwo+ICsJaWYgKGVycikKPiArCQlk
ZXZfZXJyKGRldmZyZXEtPmRldi5wYXJlbnQsCj4gKwkJCSJmYWlsZWQgdG8gdXBkYXRlIGZyZXF1
ZW5jeSBmcm9tIE9QUCBub3RpZmllciAoJWQpXG4iLAo+ICsJCQllcnIpOwo+ICAKPiAtCXJldHVy
biByZXQ7Cj4gKwlyZXR1cm4gTk9USUZZX09LOwo+ICB9Cj4gIAo+ICAvKioKPiAgICogZGV2ZnJl
cV9kZXZfcmVsZWFzZSgpIC0gQ2FsbGJhY2sgZm9yIHN0cnVjdCBkZXZpY2UgdG8gcmVsZWFzZSB0
aGUgZGV2aWNlLgo+ICAgKiBAZGV2Ogl0aGUgZGV2ZnJlcSBkZXZpY2UKPiAKClNvcnJ5IGZvciB0
aGUgbGF0ZSByZXBseS4KClJldmlld2VkLWJ5OiBDaGFud29vIENob2kgPGN3MDAuY2hvaUBzYW1z
dW5nLmNvbT4KCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9u
aWNzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
