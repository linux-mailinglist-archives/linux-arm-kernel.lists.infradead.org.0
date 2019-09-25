Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 556A4BD627
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 03:42:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bml5zXJq0Cs+MzdGXb8CcaY+tTsbVvglUE88HF0PZEM=; b=me8C55hUZof8s1
	X4hqiOXXh9xzrFsNXfU4wPHnR7ouZTXf18f4+L+t6ptoPEd9LnyOa98Sq0g6piZmXZKP37qJmdB3O
	eQKU0/bJ00xk75Mz98bpvQXYU+tYheh6FyMVosoyHKz2jx0ZPCG+lSnEw/aG8El1FNbzJU1mDrZsE
	9V6l6rDwLYQE643TUqNHM3K1wyBhCsPe+kuCDq5aE1J62uBDWbMb/gDorDSbhRk8auZZQsCFl2zNA
	KHN126e21kV39JBm/lksKg3n83VqbELhE/vhUNaoL2UZeyaWRSQ692hQe49F2HjTlbAT3B8Ow9d/R
	MY09R4bt3aHT8GpY3k5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCwKH-0006iv-IL; Wed, 25 Sep 2019 01:42:41 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCwK3-0006iO-TV
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 01:42:29 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190925014224epoutp0269760a71fcdf742497be0ae34c001397~HiuzAvLkG2859428594epoutp02k
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 01:42:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190925014224epoutp0269760a71fcdf742497be0ae34c001397~HiuzAvLkG2859428594epoutp02k
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569375744;
 bh=erL1BGcNr63Sq2f/GUWexJigOMFl626X7GA3JKgs0To=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=gK+xtdvtiwDEWTgiGV+PzNkDHYk4+2MzFIMpzNJGwOuYcLpAtDUgmwThuBl6nHP6D
 /tv7b2Vc2f7O1DYK3UXjymrHRv6UBLtzzpuEVAa8ROYj5k2N48kscoCOMO55OzAaTw
 2YTeiPsf78Zi/DYwQ8Gl9Mmsm31h8mX2B++VJvAs=
Received: from epsnrtp6.localdomain (unknown [182.195.42.167]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20190925014223epcas1p4d410419db5b6a13b3336327013327bd4~HiuyXTAbJ1328613286epcas1p4U;
 Wed, 25 Sep 2019 01:42:23 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.152]) by
 epsnrtp6.localdomain (Postfix) with ESMTP id 46dLQj0wRfzMqYkW; Wed, 25 Sep
 2019 01:42:21 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 68.EA.04224.CF5CA8D5; Wed, 25 Sep 2019 10:42:21 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20190925014220epcas1p43d531a0b2ef732069bd4e363c410cb90~Hiuvd_FDH1321513215epcas1p4W;
 Wed, 25 Sep 2019 01:42:20 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190925014220epsmtrp1b8bd5ea3c290da29dca539888135c0a5~HiuvdBxik2930829308epsmtrp1D;
 Wed, 25 Sep 2019 01:42:20 +0000 (GMT)
X-AuditID: b6c32a38-d5bff70000001080-f9-5d8ac5fc468e
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 2B.A6.04081.CF5CA8D5; Wed, 25 Sep 2019 10:42:20 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190925014220epsmtip24c94860ce513607175d4490f8f8dae91~Hiuu_n3752301523015epsmtip2a;
 Wed, 25 Sep 2019 01:42:20 +0000 (GMT)
Subject: Re: [PATCH v8 2/6] PM / devfreq: Move more initialization before
 registration
To: Leonard Crestez <leonard.crestez@nxp.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <2b003542-25b1-8e39-f5c9-4266630dee0c@samsung.com>
Date: Wed, 25 Sep 2019 10:46:44 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <398895f3b4f9ca4b03b47b56dfa25fbd58fd2311.1569319738.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrOJsWRmVeSWpSXmKPExsWy7bCmge7fo12xBl+PM1ocOraV3eLr6VOM
 FssuHWW0mL53E5vF+fMb2C3ONr1ht7jVIGOx4u5HVotNj6+xWnT9Wsls8bn3CKPF5w2PGS1u
 N65gs1h97iCbRdehv2wWG796OAh4vL/Ryu4xu+Eii8eCTaUem1Z1snncubaHzWPzknqPje92
 MHkcfLeHyaNvyypGj8+b5AK4orJtMlITU1KLFFLzkvNTMvPSbZW8g+Od403NDAx1DS0tzJUU
 8hJzU22VXHwCdN0yc4AeUVIoS8wpBQoFJBYXK+nb2RTll5akKmTkF5fYKqUWpOQUWBboFSfm
 Fpfmpesl5+daGRoYGJkCFSZkZ8x8t4Ol4Kl8xdP5b9kaGM9LdjFyckgImEj09rSxdTFycQgJ
 7GCU2HzjKRNIQkjgE6PEihVBEIlvjBJ/Ji5hhul4PO85I0RiL6PE1ZndTBDOe0aJjh3fwaqE
 BSIkPrYuBasSEVjNKNGy9A4jSIJZ4AmzxJ718iA2m4CWxP4XN9hAbH4BRYmrPx6D1fAK2ElM
 3LmBBcRmEVCVuHdrP1hcFGjopweHWSFqBCVOznwCVsMpECfR8HUdO8R8cYlbT+YzQdjyEs1b
 Z0OdfY5d4st9OQjbReLF3COsELawxKvjW9ghbCmJl/1tUHa1xMqTR8ABIyHQwSixZf8FqAZj
 if1LJwMt4ABaoCmxfpc+RFhRYufvuVA/8km8+9rDClIiIcAr0dEmBFGiLHH5wV0mCFtSYnF7
 J9sERqVZSL6ZheSDWUg+mIWwbAEjyypGsdSC4tz01GLDAhPk2N7ECE7kWhY7GPec8znEKMDB
 qMTD68DaFSvEmlhWXJl7iFGCg1lJhHeWDFCINyWxsiq1KD++qDQntfgQoykwsCcyS4km5wOz
 TF5JvKGpkbGxsYWJoZmpoaGSOK9HekOskEB6YklqdmpqQWoRTB8TB6dUA2NC9dVSO4V7rK8s
 YhZ+PpBrfmjpEpbqE9FbNWzZT1ye1K/PcrJWe9OxiopNV5Tink2RXSI084Xd5WW3+t0mWH51
 Nftw8atMWFuS44t3bCfvXyubWTVnx0vPGb+i1l2Z/d2Cb9mnk2wn1nx6cfVyqnKr14X77F1z
 jnMbbe+VndHLzT8vYeVJk4d2SizFGYmGWsxFxYkATvJ6a/oDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrIIsWRmVeSWpSXmKPExsWy7bCSvO6fo12xBuumaVkcOraV3eLr6VOM
 FssuHWW0mL53E5vF+fMb2C3ONr1ht7jVIGOx4u5HVotNj6+xWnT9Wsls8bn3CKPF5w2PGS1u
 N65gs1h97iCbRdehv2wWG796OAh4vL/Ryu4xu+Eii8eCTaUem1Z1snncubaHzWPzknqPje92
 MHkcfLeHyaNvyypGj8+b5AK4orhsUlJzMstSi/TtErgyZr7bwVLwVL7i6fy3bA2M5yW7GDk5
 JARMJB7Pe84IYgsJ7GaUOLbdECIuKTHt4lHmLkYOIFtY4vDh4i5GLqCSt4wSW660sILUCAtE
 SHxsXQrWKyKwllFiznkHEJtZ4BmzxIldaRANjxglNr2czQKSYBPQktj/4gYbiM0voChx9cdj
 sGZeATuJiTs3gNWwCKhK3Lu1HywuCrTg8I5ZUDWCEidnPgGr4RSIk2j4uo4dYpm6xJ95l5gh
 bHGJW0/mM0HY8hLNW2czT2AUnoWkfRaSlllIWmYhaVnAyLKKUTK1oDg3PbfYsMAwL7Vcrzgx
 t7g0L10vOT93EyM4orU0dzBeXhJ/iFGAg1GJh9eBtStWiDWxrLgy9xCjBAezkgjvLBmgEG9K
 YmVValF+fFFpTmrxIUZpDhYlcd6neccihQTSE0tSs1NTC1KLYLJMHJxSDYzsjLZyS/lOMtcV
 B3enblj6f2ty4K0PLc439ovsa3ysFNr6Ivfl/Yy/u4/dzXihqvHPrPOWZ+bqmzPUdR7+cHaN
 5LJKa2QsSvis+Oy3uebBu++nTZUU6nqz59cytSWqrGy+DFU73LrNToSt2jHpt+LVQ49Xazzu
 7zi4YfGfueVXrujpcfLYqxgrsRRnJBpqMRcVJwIADFbw/OQCAAA=
X-CMS-MailID: 20190925014220epcas1p43d531a0b2ef732069bd4e363c410cb90
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190924101140epcas1p40cffd655a8d1088a42e1ccf20ef33eaa
References: <cover.1569319738.git.leonard.crestez@nxp.com>
 <CGME20190924101140epcas1p40cffd655a8d1088a42e1ccf20ef33eaa@epcas1p4.samsung.com>
 <398895f3b4f9ca4b03b47b56dfa25fbd58fd2311.1569319738.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_184228_289926_CA6FC3D3 
X-CRM114-Status: GOOD (  26.74  )
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
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGVvbmFyZCwKCkkgY29waWVkIGFuZCBwYXN0ZWQgbXkgY29tbWVudHMgYXMgZm9sbG93aW5n
OgpiZWNhdXNlIHlvdSBzZW5kIG5ldyB2OCB2ZXJzaW9uIHdpdGhvdXQgd2FpdGluZyBhbnkgcmVw
bHkuCkluIG15IGNhc2UsIEkgZG9uJ3QgcHJlZmVyIHRvIHJlbW92ZSAnZGV2bV8nIGZlYXR1cmUu
Cgp2NydzIGNvbW1lbnQuCkknbSBub3Qgc3VyZSB0aGF0IGl0IGlzIG5lY2Vzc2FyeS4gQmVjYXVz
ZSwgbWFpbmxpbmUga2VybmVsCnByb3ZpZGVzIHRoZSByZXNvdXJjZS1tYW5hZ2VkIGZlYXR1cmUg
d2l0aCAnZGV2bV8qJwppbiBvcmRlciB0byByZWR1Y2UgdGhlIG1lbW9yeSBsZWFrIGJ5IHVzZXIu
CgpJdCdzIGxpa2UgZ29pbmcgYmFjayB0byBhIHRpbWUgd2hlbiAnZGV2bV8qJyBmZWF0dXJlIHdh
c24ndCB0aGVyZS4KSSB0aGluayBqdXN0IGl0IGRlcGVuZHMgb24gdGhlIGNvZGluZyBzdHlsZSBv
ZiBhdXRob3IuCgpJIGxlYXZlIHRoZSBmaW5hbCBkZWNpc2lvbiBvZiB0aGlzIHBhdGNoIHRvIE15
dW5nam9vLgoKT24gMTkuIDkuIDI0LiDsmKTtm4QgNzoxMSwgTGVvbmFyZCBDcmVzdGV6IHdyb3Rl
Ogo+IEluIGdlbmVyYWwgaXQgaXMgYSBiZXR0ZXIgdG8gaW5pdGlhbGl6ZSBhbiBvYmplY3QgYmVm
b3JlIG1ha2luZyBpdAo+IGFjY2Vzc2libGUgZXh0ZXJuYWxseSAodGhyb3VnaCBkZXZpY2VfcmVn
aXN0ZXIpLgo+IAo+IFRoaXMgbWFrZXMgaXQgcG9zc2libGUgdG8gYXZvaWQgcmVseWluZyBvbiBs
b2NraW5nIGEgcGFydGlhbGx5Cj4gaW5pdGlhbGl6ZWQgb2JqZWN0Lgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IExlb25hcmQgQ3Jlc3RleiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+Cj4gUmV2aWV3ZWQt
Ynk6IE1hdHRoaWFzIEthZWhsY2tlIDxta2FAY2hyb21pdW0ub3JnPgo+IC0tLQo+ICBkcml2ZXJz
L2RldmZyZXEvZGV2ZnJlcS5jIHwgNDMgKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0t
LS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYyBiL2RyaXZlcnMv
ZGV2ZnJlcS9kZXZmcmVxLmMKPiBpbmRleCAxMmM0YmNkYzFmMTcuLmRiYzZkYzg4MmFiYSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4gKysrIGIvZHJpdmVycy9kZXZm
cmVxL2RldmZyZXEuYwo+IEBAIC01ODgsMTAgKzU4OCwxMiBAQCBzdGF0aWMgdm9pZCBkZXZmcmVx
X2Rldl9yZWxlYXNlKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgCW11dGV4X3VubG9jaygmZGV2ZnJl
cV9saXN0X2xvY2spOwo+ICAKPiAgCWlmIChkZXZmcmVxLT5wcm9maWxlLT5leGl0KQo+ICAJCWRl
dmZyZXEtPnByb2ZpbGUtPmV4aXQoZGV2ZnJlcS0+ZGV2LnBhcmVudCk7Cj4gIAo+ICsJa2ZyZWUo
ZGV2ZnJlcS0+dGltZV9pbl9zdGF0ZSk7Cj4gKwlrZnJlZShkZXZmcmVxLT50cmFuc190YWJsZSk7
Cj4gIAltdXRleF9kZXN0cm95KCZkZXZmcmVxLT5sb2NrKTsKPiAgCWtmcmVlKGRldmZyZXEpOwo+
ICB9Cj4gIAo+ICAvKioKPiBAQCAtNjcxLDQ0ICs2NzMsNDMgQEAgc3RydWN0IGRldmZyZXEgKmRl
dmZyZXFfYWRkX2RldmljZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gIAlkZXZmcmVxLT5tYXhfZnJl
cSA9IGRldmZyZXEtPnNjYWxpbmdfbWF4X2ZyZXE7Cj4gIAo+ICAJZGV2ZnJlcS0+c3VzcGVuZF9m
cmVxID0gZGV2X3BtX29wcF9nZXRfc3VzcGVuZF9vcHBfZnJlcShkZXYpOwo+ICAJYXRvbWljX3Nl
dCgmZGV2ZnJlcS0+c3VzcGVuZF9jb3VudCwgMCk7Cj4gIAo+IC0JZGV2X3NldF9uYW1lKCZkZXZm
cmVxLT5kZXYsICJkZXZmcmVxJWQiLAo+IC0JCQkJYXRvbWljX2luY19yZXR1cm4oJmRldmZyZXFf
bm8pKTsKPiAtCWVyciA9IGRldmljZV9yZWdpc3RlcigmZGV2ZnJlcS0+ZGV2KTsKPiAtCWlmIChl
cnIpIHsKPiAtCQltdXRleF91bmxvY2soJmRldmZyZXEtPmxvY2spOwo+IC0JCXB1dF9kZXZpY2Uo
JmRldmZyZXEtPmRldik7Cj4gLQkJZ290byBlcnJfb3V0Owo+IC0JfQo+IC0KPiAtCWRldmZyZXEt
PnRyYW5zX3RhYmxlID0gZGV2bV9remFsbG9jKCZkZXZmcmVxLT5kZXYsCj4gKwlkZXZmcmVxLT50
cmFuc190YWJsZSA9IGt6YWxsb2MoCj4gIAkJCWFycmF5M19zaXplKHNpemVvZih1bnNpZ25lZCBp
bnQpLAo+ICAJCQkJICAgIGRldmZyZXEtPnByb2ZpbGUtPm1heF9zdGF0ZSwKPiAgCQkJCSAgICBk
ZXZmcmVxLT5wcm9maWxlLT5tYXhfc3RhdGUpLAo+ICAJCQlHRlBfS0VSTkVMKTsKPiAgCWlmICgh
ZGV2ZnJlcS0+dHJhbnNfdGFibGUpIHsKPiAgCQltdXRleF91bmxvY2soJmRldmZyZXEtPmxvY2sp
Owo+ICAJCWVyciA9IC1FTk9NRU07Cj4gLQkJZ290byBlcnJfZGV2ZnJlcTsKPiArCQlnb3RvIGVy
cl9kZXY7Cj4gIAl9Cj4gIAo+IC0JZGV2ZnJlcS0+dGltZV9pbl9zdGF0ZSA9IGRldm1fa2NhbGxv
YygmZGV2ZnJlcS0+ZGV2LAo+IC0JCQlkZXZmcmVxLT5wcm9maWxlLT5tYXhfc3RhdGUsCj4gLQkJ
CXNpemVvZih1bnNpZ25lZCBsb25nKSwKPiAtCQkJR0ZQX0tFUk5FTCk7Cj4gKwlkZXZmcmVxLT50
aW1lX2luX3N0YXRlID0ga2NhbGxvYyhkZXZmcmVxLT5wcm9maWxlLT5tYXhfc3RhdGUsCj4gKwkJ
CQkJIHNpemVvZih1bnNpZ25lZCBsb25nKSwKPiArCQkJCQkgR0ZQX0tFUk5FTCk7Cj4gIAlpZiAo
IWRldmZyZXEtPnRpbWVfaW5fc3RhdGUpIHsKPiAgCQltdXRleF91bmxvY2soJmRldmZyZXEtPmxv
Y2spOwo+ICAJCWVyciA9IC1FTk9NRU07Cj4gLQkJZ290byBlcnJfZGV2ZnJlcTsKPiArCQlnb3Rv
IGVycl9kZXY7Cj4gIAl9Cj4gIAo+ICAJZGV2ZnJlcS0+bGFzdF9zdGF0X3VwZGF0ZWQgPSBqaWZm
aWVzOwo+ICAKPiAgCXNyY3VfaW5pdF9ub3RpZmllcl9oZWFkKCZkZXZmcmVxLT50cmFuc2l0aW9u
X25vdGlmaWVyX2xpc3QpOwo+ICAKPiArCWRldl9zZXRfbmFtZSgmZGV2ZnJlcS0+ZGV2LCAiZGV2
ZnJlcSVkIiwKPiArCQkJCWF0b21pY19pbmNfcmV0dXJuKCZkZXZmcmVxX25vKSk7Cj4gKwllcnIg
PSBkZXZpY2VfcmVnaXN0ZXIoJmRldmZyZXEtPmRldik7Cj4gKwlpZiAoZXJyKSB7Cj4gKwkJbXV0
ZXhfdW5sb2NrKCZkZXZmcmVxLT5sb2NrKTsKPiArCQlwdXRfZGV2aWNlKCZkZXZmcmVxLT5kZXYp
Owo+ICsJCWdvdG8gZXJyX291dDsKPiArCX0KPiArCj4gIAltdXRleF91bmxvY2soJmRldmZyZXEt
PmxvY2spOwo+ICAKPiAgCW11dGV4X2xvY2soJmRldmZyZXFfbGlzdF9sb2NrKTsKPiAgCj4gIAln
b3Zlcm5vciA9IHRyeV90aGVuX3JlcXVlc3RfZ292ZXJub3IoZGV2ZnJlcS0+Z292ZXJub3JfbmFt
ZSk7Cj4gQEAgLTczNCwxNCArNzM1LDIwIEBAIHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxX2FkZF9k
ZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2LAo+ICAKPiAgCXJldHVybiBkZXZmcmVxOwo+ICAKPiAg
ZXJyX2luaXQ6Cj4gIAltdXRleF91bmxvY2soJmRldmZyZXFfbGlzdF9sb2NrKTsKPiAtZXJyX2Rl
dmZyZXE6Cj4gIAlkZXZmcmVxX3JlbW92ZV9kZXZpY2UoZGV2ZnJlcSk7Cj4gLQlkZXZmcmVxID0g
TlVMTDsKPiArCXJldHVybiBFUlJfUFRSKGVycik7Cj4gKwo+ICBlcnJfZGV2Ogo+ICsJLyoKPiAr
CSAqIENsZWFudXAgcGF0aCBmb3IgZXJyb3JzIHRoYXQgaGFwcGVuIGJlZm9yZSByZWdpc3RyYXRp
b24uCj4gKwkgKiBPdGhlcndpc2Ugd2UgcmVseSBvbiBkZXZmcmVxX2Rldl9yZWxlYXNlLgo+ICsJ
ICovCj4gKwlrZnJlZShkZXZmcmVxLT50aW1lX2luX3N0YXRlKTsKPiArCWtmcmVlKGRldmZyZXEt
PnRyYW5zX3RhYmxlKTsKPiAgCWtmcmVlKGRldmZyZXEpOwo+ICBlcnJfb3V0Ogo+ICAJcmV0dXJu
IEVSUl9QVFIoZXJyKTsKPiAgfQo+ICBFWFBPUlRfU1lNQk9MKGRldmZyZXFfYWRkX2RldmljZSk7
Cj4gCgoKLS0gCkJlc3QgUmVnYXJkcywKQ2hhbndvbyBDaG9pClNhbXN1bmcgRWxlY3Ryb25pY3MK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
