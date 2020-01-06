Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0463A130E52
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 09:04:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7E9pkqpr8oo4q0HzvuO7AvuXmO1rtNTCYnM/ObPF5dk=; b=STlZTsk92mHCm2
	Ap3A0Szn671Nf1EzDxIbMXabSpJkVDradmawvOTKPpzAF/LXTxfXip+yTDGbYF5NmY2Tt3MrnNJQ6
	FfABxpUK2C54bDdVnlZig6yDRfsIzTZrbuhX0ZeM/bE9CyWH7c+jueBp20wQp4tn9D5/D7V4F3yvo
	4/dnMXYtqQSCAqSG1VR+9SeW6MaKC1MwjeIIUTF0NPuv+n6eUrIcy+s+7530C7mwjj7elJLvhTgnJ
	HN1rORd9KSF98aingr5dosLoGNZusqA1q/S5pIuMJQJMpZgX1TxCFFtqIjq2sTg3bfksMoOy6LUBv
	kxnR23AuWX4G15CKs1ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioNN1-0004GB-LC; Mon, 06 Jan 2020 08:04:15 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioNMu-0004F3-I4
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 08:04:10 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200106080402epoutp038fb0c0ed45b75e52967126dde59612e6~nPYahzVg61865018650epoutp03S
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  6 Jan 2020 08:04:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200106080402epoutp038fb0c0ed45b75e52967126dde59612e6~nPYahzVg61865018650epoutp03S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1578297842;
 bh=2N1cMzaelT4GEcMOxrpKGVEc7+Kwyhgvo3E3y24uV9s=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=U42Wl4rhHcbYpy4AUCDxQDTcKbttsXGxNncKAmRk8mBcGdhxmtWCcGxce/4+rOQyB
 w6RmBvt1oLd/R1Sb0jyu+stdFd1bKi/yz92ORug1CdmLtLEldP11QiBV5u0ubWEzTE
 9Z2QrFo8zKxCRKAUXUw0vDy3CPHFvXDxoT+4XPaA=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20200106080402epcas1p4883f6c266926418496ffcfab59943b32~nPYaCHavV0252602526epcas1p4L;
 Mon,  6 Jan 2020 08:04:02 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.156]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 47rp1X0qGFzMqYkh; Mon,  6 Jan
 2020 08:04:00 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 22.5F.48019.0F9E21E5; Mon,  6 Jan 2020 17:04:00 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20200106080359epcas1p43784b28c3abd6d52966fade1144c2a28~nPYXdL6wl0529005290epcas1p4e;
 Mon,  6 Jan 2020 08:03:59 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200106080359epsmtrp2d3fb29d0a153503d12223a8a6ddebefa~nPYXcXAfe2989729897epsmtrp27;
 Mon,  6 Jan 2020 08:03:59 +0000 (GMT)
X-AuditID: b6c32a38-257ff7000001bb93-09-5e12e9f0aeb9
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 11.26.10238.FE9E21E5; Mon,  6 Jan 2020 17:03:59 +0900 (KST)
Received: from [10.113.221.211] (unknown [10.113.221.211]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200106080359epsmtip297c553803669d2d65d4e8ffd26b760e2~nPYXQlSzV2123521235epsmtip2Z;
 Mon,  6 Jan 2020 08:03:59 +0000 (GMT)
Subject: Re: [PATCH v2 14/20] drm/exynos: Rename Exynos to lowercase
To: Krzysztof Kozlowski <krzk@kernel.org>, linux-kernel@vger.kernel.org
From: Inki Dae <inki.dae@samsung.com>
Message-ID: <7a3091c2-c9fe-ba60-cc59-3d812a4407f7@samsung.com>
Date: Mon, 6 Jan 2020 17:07:46 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200104152107.11407-15-krzk@kernel.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrEJsWRmVeSWpSXmKPExsWy7bCmvu6Hl0JxBvNvMlv0njvJZPF/20Rm
 iytf37NZvLh3kcWi//FrZovz5zewW5xtesNusenxNVaLy7vmsFnMOL+PyWLG5JdsDtwee78t
 YPHYtKqTzWP7twesHve7jzN5bF5S79G3ZRWjx+dNcgHsUdk2GamJKalFCql5yfkpmXnptkre
 wfHO8aZmBoa6hpYW5koKeYm5qbZKLj4Bum6ZOUA3KimUJeaUAoUCEouLlfTtbIryS0tSFTLy
 i0tslVILUnIKLAv0ihNzi0vz0vWS83OtDA0MjEyBChOyMxY+3sFW8Fi4YuHtQ6wNjD0CXYyc
 HBICJhIPTjYxdTFycQgJ7GCU+DR3BSNIQkjgE6PE3+0hEIlvjBJPNp9igen4N+sGVMdeRokZ
 r16xQjjvGSW2b3zIBFIlLOAisbbvJjOILSLgLrHg/xo2kCJmgUtMEnvub2QHSbAJqEpMXHGf
 DcTmFbCTOPPzAtgKFgEViT9z5wNN5eAQFYiQOP01EaJEUOLkzCdgJZwCZhLHp7WxgtjMAuIS
 t57MZ4Kw5SWat85mBtklIdDPLvHpdBcrxNkuEmsmLmSGsIUlXh3fwg5hS0l8freXDcKulphw
 8D8LRHMDo0T30U6oImOJ/UsnM4EcxCygKbF+lz5EWFFi5++5jBCL+STefe0Bu1lCgFeio00I
 okRJ4tjFG4wQtoTEhSUToVZ5SGx+uIZpAqPiLCSvzULyziwk78xCWLyAkWUVo1hqQXFuemqx
 YYEJcmxvYgSnXy2LHYx7zvkcYhTgYFTi4WUIFooTYk0sK67MPcQowcGsJMLb6CYYJ8SbklhZ
 lVqUH19UmpNafIjRFBjwE5mlRJPzgbkhryTe0NTI2NjYwsTQzNTQUEmcl+PHxVghgfTEktTs
 1NSC1CKYPiYOTqkGxpa5sSkdUkVT2S5KLO+dWhTWIdXRwrclWbtd71SynOff7jN+QqmHnioe
 nyMfWh126HzG0U2bt9nPmrL37Mt3Jz+W3ebzWlCeGx2eMmvS9ownX0pdPwib7vi78az+jOU6
 K39qO76P/bVh0fyvvRkPBZWW/91tcfyvuaWCm6mbRNrkN5e/ZtSE7lFiKc5INNRiLipOBAAS
 rtmL1QMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrAIsWRmVeSWpSXmKPExsWy7bCSvO77l0JxBq8Pylr0njvJZPF/20Rm
 iytf37NZvLh3kcWi//FrZovz5zewW5xtesNusenxNVaLy7vmsFnMOL+PyWLG5JdsDtwee78t
 YPHYtKqTzWP7twesHve7jzN5bF5S79G3ZRWjx+dNcgHsUVw2Kak5mWWpRfp2CVwZCx/vYCt4
 LFyx8PYh1gbGHoEuRk4OCQETiX+zbjB1MXJxCAnsZpR4evAJSxcjB1BCQmLLVg4IU1ji8OFi
 iJK3jBLbt09kA+kVFnCRWNt3kxnEFhFwl1jwfw0bSBGzwBUmiTPP9oIlhAS2MEqs+sYPYrMJ
 qEpMXHEfrJlXwE7izM8LLCA2i4CKxJ+581lBbFGBCInn228wQtQISpyc+QSshlPATOL4tDaw
 GmYBdYk/8y4xQ9jiEreezGeCsOUlmrfOZp7AKDQLSfssJC2zkLTMQtKygJFlFaNkakFxbnpu
 sWGBYV5quV5xYm5xaV66XnJ+7iZGcLxpae5gvLwk/hCjAAejEg/vigChOCHWxLLiytxDjBIc
 zEoivI1ugnFCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeZ/mHYsUEkhPLEnNTk0tSC2CyTJxcEoB
 o2NGgeLEpLnxmb75kY5z/vWIv/ig8dOee/LuZ712mrODrmcsXGvKeSmium//BvPUQKV39no5
 r3O3+nQ2/Uj7uDCvcM+/zpxtbyes41jZV3G62fYld11kwOa+jJvNn/fG+Bu+LDrB2HN7YsAR
 viVTmgXPaKpeM0q58zh74aeePas+shuxVxzjUWIpzkg01GIuKk4EAGaSPeazAgAA
X-CMS-MailID: 20200106080359epcas1p43784b28c3abd6d52966fade1144c2a28
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200104152253epcas1p121c2069ac4e57679d6012e0a5e7a5002
References: <20200104152107.11407-1-krzk@kernel.org>
 <CGME20200104152253epcas1p121c2069ac4e57679d6012e0a5e7a5002@epcas1p1.samsung.com>
 <20200104152107.11407-15-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_000409_008818_C71DB787 
X-CRM114-Status: GOOD (  22.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 David Airlie <airlied@linux.ie>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 dri-devel@lists.freedesktop.org, Kyungmin Park <kyungmin.park@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgS3J6eXN6dG9mLAoKMjAuIDEuIDUuIOyYpOyghCAxMjoyMeyXkCBLcnp5c3p0b2YgS296bG93
c2tpIOydtCjqsIApIOyTtCDquIA6Cj4gRml4IHVwIGluY29uc2lzdGVudCB1c2FnZSBvZiB1cHBl
ciBhbmQgbG93ZXJjYXNlIGxldHRlcnMgaW4gIkV4eW5vcyIKPiBuYW1lLgo+IAo+ICJFWFlOT1Mi
IGlzIG5vdCBhbiBhYmJyZXZpYXRpb24gYnV0IGEgcmVndWxhciB0cmFkZW1hcmtlZCBuYW1lLgo+
IFRoZXJlZm9yZSBpdCBzaG91bGQgYmUgd3JpdHRlbiB3aXRoIGxvd2VyY2FzZSBsZXR0ZXJzIHN0
YXJ0aW5nIHdpdGgKPiBjYXBpdGFsIGxldHRlci4KPiAKPiBUaGUgbG93ZXJjYXNlICJFeHlub3Mi
IG5hbWUgaXMgcHJvbW90ZWQgYnkgaXRzIG1hbnVmYWN0dXJlciBTYW1zdW5nCj4gRWxlY3Ryb25p
Y3MgQ28uLCBMdGQuLCBpbiBhZHZlcnRpc2VtZW50IG1hdGVyaWFscyBhbmQgb24gd2Vic2l0ZS4K
Ck1ha2luZyBzZW5zZSBzbyBwaWNrZWQgaXQgdXAgbm93LgoKVGhhbmtzLApJbmtpIERhZQoKPiAK
PiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+Cj4g
LS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9leHlub3MvS2NvbmZpZyB8IDYgKysrLS0tCj4gIGluY2x1
ZGUvdWFwaS9kcm0vZXh5bm9zX2RybS5oICB8IDIgKy0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9leHlub3MvS2NvbmZpZyBiL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvS2NvbmZpZwo+IGlu
ZGV4IDZmN2QzYjNiMzYyOC4uNjQxN2YzNzRiOTIzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9leHlub3MvS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvS2NvbmZp
Zwo+IEBAIC0xLDEzICsxLDEzIEBACj4gICMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0y
LjAtb25seQo+ICBjb25maWcgRFJNX0VYWU5PUwo+IC0JdHJpc3RhdGUgIkRSTSBTdXBwb3J0IGZv
ciBTYW1zdW5nIFNvQyBFWFlOT1MgU2VyaWVzIgo+ICsJdHJpc3RhdGUgIkRSTSBTdXBwb3J0IGZv
ciBTYW1zdW5nIFNvQyBFeHlub3MgU2VyaWVzIgo+ICAJZGVwZW5kcyBvbiBPRiAmJiBEUk0gJiYg
KEFSQ0hfUzNDNjRYWCB8fCBBUkNIX1M1UFYyMTAgfHwgQVJDSF9FWFlOT1MgfHwgQVJDSF9NVUxU
SVBMQVRGT1JNIHx8IENPTVBJTEVfVEVTVCkKPiAgCWRlcGVuZHMgb24gTU1VCj4gIAlzZWxlY3Qg
RFJNX0tNU19IRUxQRVIKPiAgCXNlbGVjdCBWSURFT01PREVfSEVMUEVSUwo+ICAJc2VsZWN0IFNO
RF9TT0NfSERNSV9DT0RFQyBpZiBTTkRfU09DCj4gIAloZWxwCj4gLQkgIENob29zZSB0aGlzIG9w
dGlvbiBpZiB5b3UgaGF2ZSBhIFNhbXN1bmcgU29DIEVYWU5PUyBjaGlwc2V0Lgo+ICsJICBDaG9v
c2UgdGhpcyBvcHRpb24gaWYgeW91IGhhdmUgYSBTYW1zdW5nIFNvQyBFeHlub3MgY2hpcHNldC4K
PiAgCSAgSWYgTSBpcyBzZWxlY3RlZCB0aGUgbW9kdWxlIHdpbGwgYmUgY2FsbGVkIGV4eW5vc2Ry
bS4KPiAgCj4gIGlmIERSTV9FWFlOT1MKPiBAQCAtNjIsNyArNjIsNyBAQCBjb25maWcgRFJNX0VY
WU5PU19EU0kKPiAgCSAgVGhpcyBlbmFibGVzIHN1cHBvcnQgZm9yIEV4eW5vcyBNSVBJLURTSSBk
ZXZpY2UuCj4gIAo+ICBjb25maWcgRFJNX0VYWU5PU19EUAo+IC0JYm9vbCAiRVhZTk9TIHNwZWNp
ZmljIGV4dGVuc2lvbnMgZm9yIEFuYWxvZ2l4IERQIGRyaXZlciIKPiArCWJvb2wgIkV4eW5vcyBz
cGVjaWZpYyBleHRlbnNpb25zIGZvciBBbmFsb2dpeCBEUCBkcml2ZXIiCj4gIAlkZXBlbmRzIG9u
IERSTV9FWFlOT1NfRklNRCB8fCBEUk1fRVhZTk9TN19ERUNPTgo+ICAJc2VsZWN0IERSTV9BTkFM
T0dJWF9EUAo+ICAJZGVmYXVsdCBEUk1fRVhZTk9TCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFw
aS9kcm0vZXh5bm9zX2RybS5oIGIvaW5jbHVkZS91YXBpL2RybS9leHlub3NfZHJtLmgKPiBpbmRl
eCA0NWM2NTgyYjNkZjMuLmE1MWFhMWM2MThjMSAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL3VhcGkv
ZHJtL2V4eW5vc19kcm0uaAo+ICsrKyBiL2luY2x1ZGUvdWFwaS9kcm0vZXh5bm9zX2RybS5oCj4g
QEAgLTM5NCw3ICszOTQsNyBAQCBzdHJ1Y3QgZHJtX2V4eW5vc19pb2N0bF9pcHBfY29tbWl0IHsK
PiAgI2RlZmluZSBEUk1fSU9DVExfRVhZTk9TX0lQUF9DT01NSVQJCURSTV9JT1dSKERSTV9DT01N
QU5EX0JBU0UgKyBcCj4gIAkJRFJNX0VYWU5PU19JUFBfQ09NTUlULCBzdHJ1Y3QgZHJtX2V4eW5v
c19pb2N0bF9pcHBfY29tbWl0KQo+ICAKPiAtLyogRVhZTk9TIHNwZWNpZmljIGV2ZW50cyAqLwo+
ICsvKiBFeHlub3Mgc3BlY2lmaWMgZXZlbnRzICovCj4gICNkZWZpbmUgRFJNX0VYWU5PU19HMkRf
RVZFTlQJCTB4ODAwMDAwMDAKPiAgI2RlZmluZSBEUk1fRVhZTk9TX0lQUF9FVkVOVAkJMHg4MDAw
MDAwMgo+ICAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
