Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7869904A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 12:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gH8E3KzUXUH2VCdWsTaPQjdb6ga0w83PtHB8T40Y9mY=; b=U3rzesqHGiBm5m
	gd/hKXEIChUjIkIyP0W4Up6iXsom28J5GTa01DTX2YnMGOPVvws0eJquiWkOhvt36LuaI+LxaGO5y
	SjO+OUS+yecRccFO6V1pkK1E9p5VeqdIeIk2imghkJKf8mou6Qc49OkTTI0aF0cyeAC3bA2kzLSxk
	5IlFyEIJFnZhK/eB6KpEyYjhw0u9Wqm5fdqqLnxxlJs5EHTxvwrMwB3inehX2ejO1jDu609+zvNYR
	g+JxCzLSzPOGc4AhfwCaNvPNuPzmiQ21Cr7Qh2DpwgiJsMfuyd0rrYx140oBcZsWF1pJFRip/aBk6
	0Nyu4p0Bt0MKMuq7GIuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0jwe-0006kC-0O; Thu, 22 Aug 2019 10:03:52 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0jwL-0006if-6j
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 10:03:35 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20190822100329epoutp0114744ba5eca9877cb3506ab3ef2f2271~9NomS5Jwz2613526135epoutp01n
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 10:03:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20190822100329epoutp0114744ba5eca9877cb3506ab3ef2f2271~9NomS5Jwz2613526135epoutp01n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566468209;
 bh=YO7b8S9II7RkNd+4ciy8wx0Pe5Mjkjhke0PrQyjYo/A=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=SGnygrtAlW635Yb1qKLDbJmji0MbeU5gtuulJFaR8c1pOOolNhfcoP6V1Z9ZxG0NR
 iGaUsnqui1VLKpa65DpGrfDv7VXTWslEJvaDv0pm3dPuC2NZLOFgApf5WfCg2NfM9f
 mCZ5qYqEdbqILmq9oA3EkUxTZft6KyEUFoZLoWXM=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190822100329epcas1p2890013896a49b40c40fe409d4b5e1811~9NolsQBOA3216232162epcas1p2K;
 Thu, 22 Aug 2019 10:03:29 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.158]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 46Dg8Z36w5zMqYlq; Thu, 22 Aug
 2019 10:03:26 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 60.F5.04088.E686E5D5; Thu, 22 Aug 2019 19:03:26 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190822100325epcas1p23d11864c4b6445d04731aedf62b8a550~9NoiZds3Q0648106481epcas1p2I;
 Thu, 22 Aug 2019 10:03:25 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190822100325epsmtrp1ccbac386ed77f954cc46dbf0aff5633f~9NoiYYk6l2930629306epsmtrp1_;
 Thu, 22 Aug 2019 10:03:25 +0000 (GMT)
X-AuditID: b6c32a35-845ff70000000ff8-27-5d5e686e40b8
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 9D.20.03638.D686E5D5; Thu, 22 Aug 2019 19:03:25 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190822100325epsmtip21b7869beb74d8a54fa5ed08ae54090fe~9NoiMY5xf0864908649epsmtip2-;
 Thu, 22 Aug 2019 10:03:25 +0000 (GMT)
Subject: Re: [PATCH v3 2/2] PM / devfreq: Use dev_pm_qos for sysfs min/max_freq
To: Leonard Crestez <leonard.crestez@nxp.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <921d9eb8-aa38-6e67-ac2e-55e01bf630f5@samsung.com>
Date: Thu, 22 Aug 2019 19:07:05 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB7023A7AC7DDE349BF6D2D2C9EEAA0@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrEJsWRmVeSWpSXmKPExsWy7bCmgW5eRlysweJ94haHjm1lt/h6+hSj
 xctDmhbT925iszh/fgO7xdmmN+wWK+5+ZLXY9Pgaq8Xn3iOMFrcbV7BZrD53kM2i69BfNouN
 Xz0ceD3e32hl91iwqdRj06pONo871/aweWxeUu+x8d0OJo+D7/YwefRtWcXo8XmTXABnVLZN
 RmpiSmqRQmpecn5KZl66rZJ3cLxzvKmZgaGuoaWFuZJCXmJuqq2Si0+ArltmDtDRSgpliTml
 QKGAxOJiJX07m6L80pJUhYz84hJbpdSClJwCywK94sTc4tK8dL3k/FwrQwMDI1OgwoTsjOcb
 O9kLdstX7P7xmKmBcadkFyMnh4SAicSrHeeYuhi5OIQEdjBKnPzaywLhfGKUuPNyMxuE841R
 YtPtl6wwLb+ff2EGsYUE9jJKrJwfAWG/Z5Q48Fi5i5GDQ1ggUGL2rjSQXhGBZkaJrSfegq1g
 FnjLLHHm7D12kAY2AS2J/S9usIHY/AKKEld/PGYEsXkF7CSOXXsNZrMIqEosn3cCbJmoQITE
 pweHWSFqBCVOznzCArKMUyBW4sPiEJAws4C4xK0n85kgbHmJ5q2zmUH2SghsY5c40TQT6gEX
 ifsflrFD2MISr45vgbKlJF72t0HZ1RIrTx5hg2juYJTYsv8CVLOxxP6lk5lAFjMLaEqs36UP
 EVaU2Pl7LiOEzSvRsPE3O8QRfBLvvvawgpSDxDvahCBKlCUuP7jLNIFReRaSb2YheWEWkhdm
 ISxbwMiyilEstaA4Nz212LDAEDmyNzGC07OW6Q7GKed8DjEKcDAq8fBO0I2NFWJNLCuuzD3E
 KMHBrCTCWzEnKlaINyWxsiq1KD++qDQntfgQoykwsCcyS4km5wNzR15JvKGpkbGxsYWJoZmp
 oaGSOO/CHxaxQgLpiSWp2ampBalFMH1MHJxSDYwzP3J1nfgzN/DBNtPVslmuVq8aAwyYucT5
 p5790hp72+l5reKkpDORZjNjmRrcdBatcOOeMWXGFZ/FTbG5pjysx3NLAjY3i5TVbl9eN/dW
 01OjTVu2Sn6//Ma9tpJLbnFU8cf8NeuOLA776Ck76Vvv0pYWO/ODvJ4upZfSrNyfNMu0MQU8
 3qjEUpyRaKjFXFScCAAX3fuq5QMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrHIsWRmVeSWpSXmKPExsWy7bCSvG5uRlyswYaNahaHjm1lt/h6+hSj
 xctDmhbT925iszh/fgO7xdmmN+wWK+5+ZLXY9Pgaq8Xn3iOMFrcbV7BZrD53kM2i69BfNouN
 Xz0ceD3e32hl91iwqdRj06pONo871/aweWxeUu+x8d0OJo+D7/YwefRtWcXo8XmTXABnFJdN
 SmpOZllqkb5dAlfG842d7AW75St2/3jM1MC4U7KLkZNDQsBE4vfzL8xdjFwcQgK7GSWu7N7K
 BpGQlJh28ShQggPIFpY4fLgYouYto8TKDW2MIHFhgUCJ2bvSQOIiAq2MEndO/2ADcZgF3jNL
 bDp0iAWi4xWTROuPV8wgU9kEtCT2v7gBtoFfQFHi6o/HjCA2r4CdxLFrr8FsFgFVieXzToDV
 iwpESBzeMQuqRlDi5MwnLCCbOQViJT4sDgEJMwuoS/yZd4kZwhaXuPVkPhOELS/RvHU28wRG
 4VlIumchaZmFpGUWkpYFjCyrGCVTC4pz03OLDQuM8lLL9YoTc4tL89L1kvNzNzGCY1VLawfj
 iRPxhxgFOBiVeHgn6MbGCrEmlhVX5h5ilOBgVhLhrZgTFSvEm5JYWZValB9fVJqTWnyIUZqD
 RUmcVz7/WKSQQHpiSWp2ampBahFMlomDU6qBcblP5x/Fqw3Oq42XRa1RMWQNnN2904qj7e6a
 sIKlHK0cTS9+nNU4eL74/YqJ8i0MneXH2MLv13LLybmEcDquEniT8XEzx4mgyu4vGRvr9V3m
 huzTdenaMefv3WsHVbQ7y2TU19lsW82gGyv6Yq/wKuaXTzdNaeXSvp5YenzN+rnX3/rsNa09
 rsRSnJFoqMVcVJwIAFzf5cPRAgAA
X-CMS-MailID: 20190822100325epcas1p23d11864c4b6445d04731aedf62b8a550
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
X-CPGSPASS: Y
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190820152411epcas4p33e2ef4d271ddd82a4401c0286b53d2f1
References: <cover.1566314535.git.leonard.crestez@nxp.com>
 <CGME20190820152411epcas4p33e2ef4d271ddd82a4401c0286b53d2f1@epcas4p3.samsung.com>
 <af14021b98254032e856397b54329756c1cc59c0.1566314535.git.leonard.crestez@nxp.com>
 <e2ba9b0d-1930-0d2a-c262-72f0f85c86d0@samsung.com>
 <VI1PR04MB7023A7AC7DDE349BF6D2D2C9EEAA0@VI1PR04MB7023.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_030333_668793_D72D2FEA 
X-CRM114-Status: GOOD (  28.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Jacky Bai <ping.bai@nxp.com>, Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>,
 "cpgs \(cpgs@samsung.com\)" <cpgs@samsung.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkuIDguIDIxLiDsmKTtm4QgMTA6MDMsIExlb25hcmQgQ3Jlc3RleiB3cm90ZToKPiBPbiAy
MS4wOC4yMDE5IDA1OjAyLCBDaGFud29vIENob2kgd3JvdGU6Cj4+IE9uIDE5LiA4LiAyMS4g7Jik
7KCEIDEyOjI0LCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4+PiBOb3cgdGhhdCBkZXZmcmVxIHN1
cHBvcnRzIGRldl9wbV9xb3MgcmVxdWVzdHMgd2UgY2FuIHVzZSB0aGVtIHRvIGhhbmRsZQo+Pj4g
dGhlIG1pbi9tYXhfZnJlcSB2YWx1ZXMgc2V0IGJ5IHVzZXJzcGFjZSBpbiBzeXNmcywgc2ltaWxh
ciB0byBjcHVmcmVxLgo+Pj4KPj4+IFNpbmNlIGRldl9wbV9xb3MgaGFuZGxlcyBmcmVxdWVuY2ll
cyBhcyBrSHogdGhpcyBjaGFuZ2UgcmVkdWNlcyB0aGUKPj4+IHByZWNpc2lvbiBvZiBtaW5fZnJl
cSBhbmQgbWF4X2ZyZXEuIFRoaXMgc2hvdWxkbid0IGludHJvZHVjZSBwcm9ibGVtcwo+Pj4gYmVj
YXVzZSBmcmVxdWVuY2llcyB3aGljaCBhcmUgbm90IGFuIGludGVnZXIgbnVtYmVyIG9mIGtIeiBh
cmUgbGlrZWx5Cj4+PiBub3QgYW4gaW50ZWdlciBudW1iZXIgb2YgSHogZWl0aGVyLgo+Pj4KPj4+
IFRyeSB0byBlbnN1cmUgY29tcGF0aWJpbGl0aXR5IGJ5IHJvdW5kaW5nIG1pbiB2YWx1ZXMgZG93
biBhbmQgcm91bmRpbmcKPj4+IG1heCB2YWx1ZXMgdXAuCj4+Pgo+Pj4gU2ltcGxpZnkgdGhlIHtt
aW4sbWF4fV9mcmVxX3N0b3JlIGNvZGUgYnkgc2V0dGluZyAibnVsbCIgdmFsdWVzIG9mIDAgYW5k
Cj4+PiBNQVhfUzMyIHJlc3BlY3RpdmVseSBpbnN0ZWFkIG9mIGNsYW1waW5nIHRvIHdoYXQgZnJl
cSB0YWJsZXMgYXJlCj4+PiBhY3R1YWxseSBzdXBwb3J0ZWQuIFZhbHVlcyBhcmUgYWxyZWFkeSBh
dXRvbWF0aWNhbGx5IGNsYW1wZWQgb24KPj4+IHJlYWRiYWNrLgo+Pj4KPj4+IEFsc28gc2ltcGxp
ZnkgYnkgZHJvcGluZyB0aGUgbGltaXRhdGlvbiB0aGF0IHVzZXJzcGFjZSBtaW5fZnJlcSBtdXN0
IGJlCj4+PiBsb3dlciB0aGFuIHVzZXJzcGFjZSBtYXhfZnJlcSwgaXQgaXMgYWxyZWFkeSBkb2N1
bWVudGVkIHRoYXQgbWF4X2ZyZXEKPj4+IHRha2VzIHByZWNlZGVuY2UuCj4+Pgo+Pj4gQEAgLTEz
NTgsMzMgKzEzNzEsMjAgQEAgc3RhdGljIHNzaXplX3QgbWluX2ZyZXFfc3RvcmUoc3RydWN0IGRl
dmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwKPj4+ICAgCj4+PiAgIAly
ZXQgPSBzc2NhbmYoYnVmLCAiJWx1IiwgJnZhbHVlKTsKPj4+ICAgCWlmIChyZXQgIT0gMSkKPj4+
ICAgCQlyZXR1cm4gLUVJTlZBTDsKPj4+ICAgCj4+PiAtCW11dGV4X2xvY2soJmRmLT5sb2NrKTsK
Pj4+IC0KPj4+IC0JaWYgKHZhbHVlKSB7Cj4+PiAtCQlpZiAodmFsdWUgPiBkZi0+bWF4X2ZyZXEp
IHsKPj4+IC0JCQlyZXQgPSAtRUlOVkFMOwo+Pj4gLQkJCWdvdG8gdW5sb2NrOwo+Pj4gLQkJfQo+
Pgo+PiBBY3R1YWxseSwgdGhlIHVzZXIgY2FuIGlucHV0IHRoZSB2YWx1ZSB0aGV5IHdhbnQuCj4+
IFNvLCB0aGUgYWJvdmUgY29kZSBpcyBub3QgbmVjZXNzYXJ5IGJlY2F1c2UgdGhlIGRldmZyZXEt
PnNjYWxpbmdfbWF4X2ZyZXEKPj4gaXMgbmV2ZXIgb3ZlcmZsb3cgZnJvbSBzdXBwb3J0ZWQgbWF4
aW11bSBmcmVxdWVuY3kuIFRoZSBkZXZmcmVxLT5zY2FsaW5nX21heF9mcmVxCj4+IGlzIGJhc2Vk
IG9uIE9QUCBlbnRyaWVzIGZyb20gRFQuCj4+Cj4+IEJ1dCwgaWYgd2UgcmVwbGFjZSB0aGUgZXhp
c3RpbmcgcmVxdWVzdCB3YXkgb2YgZGV2ZnJlcS1jb29saW5nLmMKPj4gd2l0aCBkZXZfcG1fcW9z
LCBkZXZmcmVxLT5zY2FsaW5nX21heF9mcmVxIGRvZXNuJ3QgZ3VhcmFudGVlCj4+IHRoZSBzdXBw
b3J0ZWQgbWF4aW11bSBmcmVxdWVuY3kuID4KPj4gV2UgbmVlZCB0byBrZWVwIHRoZSBzdXBwb3J0
ZWQgbWluX2ZyZXEvbWF4X2ZyZXEgdmFsdWUgd2l0aG91dCBkZXZfcG1fcW9zCj4+IHJlcXVpcmVt
ZW50IGJlY2F1c2UgdGhlIGRldl9wbV9xb3MgcmVxdWlyZW1lbnQgbWlnaHQgaGF2ZSB0aGUgb3Zl
cmZsb3cgdmFsdWUuCj4+IHRoZSBkZXZfcG1fcW9zIGRvZXNuJ3Qga25vdyB0aGUgc3VwcG9ydGVk
IG1pbmltdW0gYW5kIG1heGltdW0gZnJlcXVlbmN5Cj4+IG9mIGRldmZyZXEgZGV2aWNlLgo+IAo+
IEknbSBub3Qgc3VyZSBJIHVuZGVyc3RhbmQgd2hhdCB5b3UgbWVhbi4gTXkgcGF0Y2ggYWxsb3dz
IHVzZXIgdG8gc2V0IAo+IGVudGlyZWx5IGFyYml0cmFyeSBtaW4vbWF4IHJhdGVzIGFuZCB0aGlz
IGlzIGdvb2QgYmVjYXVzZSB3ZSBhbHJlYWR5IAo+IGhhdmUgYSB3ZWxsLWRlZmluZWQgd2F5IHRv
IGhhbmRsZSB0aGlzOiBtYXggb3ZlcnJpZGVzIG1pbi4KPiAKPiBUaGUgc2NhbGluZ19taW5fZnJl
cSBhbmQgc2NhbGluZ19tYXhfZnJlcSB2YXJpYWJsZXMgY2FuIGp1c3QgYmUga2VwdCAKPiBhcm91
bmQgaW5kZWZpbml0ZWx5IG5vIG1hdHRlciB3aGF0IGhhcHBlbnMgdG8gdGhlcm1hbC4gVGhleSdy
ZSBqdXN0IGEgCj4gY2FjaGUgZm9yIGRldl9wbV9vcHBfZmluZF9mcmVxX2NlaWwgYW5kIGRldl9w
bV9vcHBfZmluZF9mcmVxX2Zsb29yLgoKVGhpcyBwYXRjaCBkb2Vzbid0IGNoZWNrIHRoZSByYW5n
ZSBvZiBpbnB1dCB2YWx1ZQp3aXRoIHRoZSBzdXBwb3J0ZWQgZnJlcXVlbmNpZXMgb2YgZGV2ZnJl
cSBkZXZpY2UuCgpGb3IgZXhhbXBsZSwKVGhlIGRldmZyZXEwIGRldmljZSBoYXMgdGhlIGZvbGxv
d2luZyBhdmFpbGFibGUgZnJlcXVlbmNpZXMKMTAwMDAwMDAwIDIwMDAwMDAwMCAzMDAwMDAwMDAK
CmFuZCB0aGVuIHVzZXIgZW50ZXJzIHRoZSA1MDAwMDAwMDAgYXMgZm9sbG93aW5nOgplY2hvIDUw
MDAwMDAwMCA+IC9zeXMvY2xhc3MvZGV2ZnJlcS9kZXZmcmVxMC9taW5fZnJlcQoKSW4gcmVzdWx0
LCBnZXRfZWZmZWN0aXZlX21pbl9mcmVxKCkgd2lsbCByZXR1cm4gdGhlIDUwMDAwMDAwMC4KSXQg
aXMgd3JvbmcgdmFsdWUuIGl0IHNob3cgdGhlIHVuc3VwcG9ydGVkIGZyZXF1ZW5jeSB0aHJvdWdo
Cm1pbl9mcmVxIHN5c2ZzIHBhdGguCgotIGRldmZyZXEtPnNjYWxpbmdfbWluX2ZyZXEgaXMgMTAw
MDAwMDAwLCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCi0gMTAwMCAqICh1bnNp
Z25lZCBsb25nKWRldl9wbV9xb3NfcmVhZF92YWx1ZShkZXZmcmVxLT5kZXYucGFyZW50LAogIERF
Vl9QTV9RT1NfTUlOX0ZSRVFVRU5DWSkpOyBpcyA1MDAwMDAwMDAKCgo+IAo+IEJUVzogSSBub3Rp
Y2VkIHRoYXQgc2NhbGluZ19taW5fZnJlcSBhbmQgc2NhbGluZ19tYXhfZnJlcSBhcmUgdXBkYXRl
ZCBpbiAKPiBkZXZmcmVxX25vdGlmaWVyX2NhbGwgYnV0IGRldmZyZXEtPm5iIGlzIG5vdCByZWdp
c3RlcmVkIGJ5IGRlZmF1bHQsIG9ubHkgCj4gd2hlbiBhIGRyaXZlciByZXF1ZXN0cyBpdCBleHBs
aWNpdGx5LiBJcyB0aGVyZSBhIHJlYXNvbiBmb3IgdGhpcz8KCkluaXRpYWwgdmVyc2lvbiBvZiBk
ZXZmcmVxIGhhcyBub3QgZm9yY2VkIHRvIHVzZSB0aGUgT1BQIGludGVyZmFjZSAKYXMgdGhlIG1h
bmRhdG9yeS4gU28sIGl0IGp1c3QgcHJvdmlkZXMgdGhlIGV4dGVybmFsIGZ1bmN0aW9uCmRldmZy
ZXFfcmVnaXN0ZXJfb3BwX25vdGlmaWVyLgoKQnV0LApXZSBjYW4gY2FsbCAnZGV2ZnJlcV9yZWdp
c3Rlcl9vcHBfbm90aWZpZXInIGR1cmluZyBkZXZmcmVxX2FkZF9kZXZpY2UoKQpiZWNhdXNlIHRo
ZSBPUFAgaW50ZXJmYWNlIGlzIG1hbmRhdG9yeSBmb3IgZGV2ZnJlcS4KCj4gQmVjYXVzZSBJJ2Qg
Y2FsbCBkZXZfcG1fb3BwX3JlZ2lzdGVyX25vdGlmaWVyIGluc2lkZSBkZXZmcmVxX2FkZF9kZXZp
Y2UgCj4gYW5kIHJlbW92ZSBhbGwgdGhlIGRldmZyZXFfcmVnaXN0ZXIvdW5yZWdpc3Rlcl9ub3Rp
ZmllciBBUElzLgoKT0suCgo+IAo+IC0tCj4gUmVnYXJkcywKPiBMZW9uYXJkCj4gCgoKLS0gCkJl
c3QgUmVnYXJkcywKQ2hhbndvbyBDaG9pClNhbXN1bmcgRWxlY3Ryb25pY3MKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
