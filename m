Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A79576C8A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 07:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gdFdwMnAwtZGBShUNpJgeh420atCMqvBPBG4sVjdT8M=; b=rkt9yV7QNw+Zwh
	npLTKyCgjHFGr1UlhEtyxVqEm2u3dENtXTakj5Y++mKyjn5xUv7MPvA55/0kzzvpVfg62LdWAXw5G
	Xf025GnP/dljlbwNwq+i43Y0Q5/UQlIpybRE77LBwFD1LCj5l+JGN0jVHdwIyDGUygmCi6c/JXmV+
	3uUIWEsB8CTnnSn8Vr1xT5epVEzi3TEHPCt1aM72NLTmFwBARNjPKYaKdLPy8+X0Ff051UIVDFY14
	eFRoXm9W0yZyhY0bsCRC3oIQyXwNHdwRQ+k5PwiFr7up/8pQfnhoKRGszEzioeUxij1tmao4MLjbA
	Q/1wu9WZcO96sZ889WZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnypW-00069O-Tl; Thu, 18 Jul 2019 05:19:47 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnypM-00068p-8B
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 05:19:38 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190718051932euoutp01508a42039f120d885ca874fa99f95f3d~yaLr9BlqP2728627286euoutp01m
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 05:19:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190718051932euoutp01508a42039f120d885ca874fa99f95f3d~yaLr9BlqP2728627286euoutp01m
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563427173;
 bh=siOYjgkw/wy7C0asqLY/4tCW33a/SvBZvIzn6L0ZMP0=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=bs//UOhLa2YR+XnOklQ2l9dYIS+XQ+vBQAAfGzN9W9k7eBE9XAqG0/MECw0cx9UR1
 XLIOLDrMe+AMv632sWedWlDfAhG4zzWkJ6SDgNzbBwQT9Ctu6bcgMceezTPaFBqapH
 wvXVYcS3GKxrnEt98p/DVbuiWwrnqBhETIioMs9Y=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190718051931eucas1p11748bb1792c583c1d5e928f2684fa215~yaLrCDtLb2003720037eucas1p1T;
 Thu, 18 Jul 2019 05:19:31 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 6C.CE.04377.361003D5; Thu, 18
 Jul 2019 06:19:31 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190718051930eucas1p2badaffeba905219807a2e55867318633~yaLqEVxk31612016120eucas1p2w;
 Thu, 18 Jul 2019 05:19:30 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190718051930eusmtrp25250cb2c814ca3b1f0b297446fb8947c~yaLp2HGzM1144111441eusmtrp2X;
 Thu, 18 Jul 2019 05:19:30 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-89-5d300163f150
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 47.B4.04140.261003D5; Thu, 18
 Jul 2019 06:19:30 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190718051929eusmtip1b8d16e370e2ba9e56aec7a1630580d93~yaLpF9hk81936219362eusmtip18;
 Thu, 18 Jul 2019 05:19:29 +0000 (GMT)
Subject: Re: [PATCH v1 03/50] clk: samsung: change parent of
 dout_aclk400_wcore in Exynos5420
To: Chanwoo Choi <cw00.choi@samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <9fa48351-80ae-7046-6795-c19d66c18810@partner.samsung.com>
Date: Thu, 18 Jul 2019 07:19:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <6d3361b5-9e1f-eb1a-aaa9-3ca15ed5ad1d@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01SfUyMcRzvd889Lx3H0/X29c5tlrxU3rbfvISGXZtNbDZjyalHpDvc40qx
 qUi6pReb1KUXKs6tF10vqzONSlG4TnpRJGKWtLzcmMlL5znTf5+379v2ZQjZIDmdOag+xmnU
 ykg5JRHXNH+3LAlFfsF+I5WLcG/ZYxJXZJWTuNv2jsT5TeM0bXCYwBbLTRo/SvhAY9NgF4k/
 pfSTuMN8mcJZlnoRLm16QePibqsIW1s34b54A4UTbzfRuPFDEol/dVWI18sUJXklSDHak0gr
 TMZkSlFZdEqRWmVEii+m2UHULsmaMC7yYBSn8fXfKzlQMDJAHdFJjifdK6bjUCmjQ84MsCsg
 68mASIckjIw1IOjWN5MCsSG4OtZLCeQLgvvXiqh/JXeqXxKCcR3Bp6EbtEBGEJR2W5A95cqG
 wI+vmX8NN7YVQfyATmQ3CDZTBPo8dx1iGIr1gVrjUbssZTdDo+k3acdidj6kxhf+7ePO7oSO
 KjMSMi7wIPuN2I6d2XXw7NZLR0tP6H2T78Bz4HR1DiFsmszAq65tAt4I5WUGJGBXeN9SRQt4
 JvyuE2qB5SHu/BVH5iQMpuU6MquhscVK2lcmWG8oN/sK8gborEmm7TKwU6BnxEXYYApcqLlE
 CLIUzp2VCekFUJXS7hjkAddLMul0JNdPuEs/4Rb9hFv0/+cWILEReXJaXhXO8cvUXLQPr1Tx
 WnW4T+hhlQmNv17brxZbLTKP7WtALIPkk6Vxc32DZaQyio9RNSBgCLmbtG9oXJKGKWNiOc3h
 EI02kuMb0AxGLPeUnnAa2C1jw5XHuEMcd4TT/HNFjPP0OOQ977hnxMV1P93PLf82K2ltwDBF
 2bJbPru/Fosm/dz/8PXKoLCtxqf9+Tald4BXX3TYx4i6lIxXdaMJTQk/vDKia9YPGy8U+mPf
 oanb3wYG5VpPtXcmbiF27DwTM80nKvB5V8Li2LujTnv8ewJndcbSbTM71atUsz3qrVHhH7Xp
 33MMcjF/QLl0IaHhlX8AYXoIVnYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBIsWRmVeSWpSXmKPExsVy+t/xu7pJjAaxBns6VC1urTvHarFxxnpW
 i+tfnrNazD8C5PY/fs1scf78BnaLs01v2C02Pb7GavGx5x6rxeVdc9gsZpzfx2Sx9shddoul
 1y8yWVw85Wpxu3EFm0Xr3iPsFofftLNa/Lu2kcVByGPNvDWMHu9vtLJ7bFrVyeaxeUm9R9+W
 VYwenzfJBbBF6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp29mkpOZklqUW
 6dsl6GUsePuAraCLq6L96FL2Bsa1HF2MnBwSAiYSB7beZ+5i5OIQEljKKPFo2QR2iISYxKR9
 26FsYYk/17rYIIpeM0ps2PKVBSQhLBAv8fvbNHaQhIjAKUaJ7keL2UASzALTmCROrIca+4dR
 YsGaiYxdjBwcbAJ6EjtWFYLU8Aq4SRze9J8VxGYRUJXoa1zMCGKLCkRI9LXNZoOoEZQ4OfMJ
 2DJOAXuJm7vvM0HMN5OYt/khM4QtLnHryXyouLxE89bZzBMYhWYhaZ+FpGUWkpZZSFoWMLKs
 YhRJLS3OTc8tNtIrTswtLs1L10vOz93ECIz1bcd+btnB2PUu+BCjAAejEg/vDSX9WCHWxLLi
 ytxDjBIczEoivLdfAoV4UxIrq1KL8uOLSnNSiw8xmgI9N5FZSjQ5H5iG8kriDU0NzS0sDc2N
 zY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1MOat5NvmfjnIjEPjvEHUL5Ebj+9t825+
 fkAylHW5YJqQ74faVjvmL+y9G5fHWOTyahp1urxt2TgtK8Zqg+eUTzM6+YT1Hh430uKfF2ln
 s2m96rRKhitXuP6tnqVxzHFqkNn1cxb/Pe8t2fBBbElWd9PDT+/FeFe8ZSpXPTLxUX3kjahN
 sy0+/1BiKc5INNRiLipOBADHGjkqCwMAAA==
X-CMS-MailID: 20190718051930eucas1p2badaffeba905219807a2e55867318633
X-Msg-Generator: CA
X-RootMTR: 20190715124436eucas1p28a581bc25f6dae52a5b9b1af26d26368
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124436eucas1p28a581bc25f6dae52a5b9b1af26d26368
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124436eucas1p28a581bc25f6dae52a5b9b1af26d26368@eucas1p2.samsung.com>
 <20190715124417.4787-4-l.luba@partner.samsung.com>
 <6d3361b5-9e1f-eb1a-aaa9-3ca15ed5ad1d@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_221936_503287_6945B79B 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, b.zolnierkie@samsung.com, sboyd@kernel.org,
 mturquette@baylibre.com, krzk@kernel.org, a.hajda@samsung.com,
 robh+dt@kernel.org, kyungmin.park@samsung.com, kgene@kernel.org,
 myungjoo.ham@samsung.com, s.nawrocki@samsung.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hhbndvbywKCk9uIDcvMTYvMTkgMTE6MTMgQU0sIENoYW53b28gQ2hvaSB3cm90ZToKPiBP
biAxOS4gNy4gMTUuIOyYpO2bhCA5OjQzLCBMdWthc3ogTHViYSB3cm90ZToKPj4gQ2hhbmdlIHBh
cmVudCBvZiBkb3V0X2FjbGs0MDBfd2NvcmUgdG8gbW91dF9hY2xrNDAwX3djb3JlIHdoaWNoIHJl
ZmxlY3RzCj4+IHRvcG9sb2d5IGRlc2NyaWJlZCBpbiB0aGUgUk0uCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IEx1a2FzeiBMdWJhIDxsLmx1YmFAcGFydG5lci5zYW1zdW5nLmNvbT4KPj4gLS0tCj4+ICAg
ZHJpdmVycy9jbGsvc2Ftc3VuZy9jbGstZXh5bm9zNTQyMC5jIHwgMiArLQo+PiAgIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9jbGsvc2Ftc3VuZy9jbGstZXh5bm9zNTQyMC5jIGIvZHJpdmVycy9jbGsvc2Ftc3Vu
Zy9jbGstZXh5bm9zNTQyMC5jCj4+IGluZGV4IGQzNTM4NzBlN2ZkYS4uMzYxZWU1M2ZjOWZjIDEw
MDY0NAo+PiAtLS0gYS9kcml2ZXJzL2Nsay9zYW1zdW5nL2Nsay1leHlub3M1NDIwLmMKPj4gKysr
IGIvZHJpdmVycy9jbGsvc2Ftc3VuZy9jbGstZXh5bm9zNTQyMC5jCj4+IEBAIC01NzcsNyArNTc3
LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBzYW1zdW5nX211eF9jbG9jayBleHlub3M1NDIwX211
eF9jbGtzW10gX19pbml0Y29uc3QgPSB7Cj4+ICAgCj4+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBz
YW1zdW5nX2Rpdl9jbG9jayBleHlub3M1NDIwX2Rpdl9jbGtzW10gX19pbml0Y29uc3QgPSB7Cj4+
ICAgCURJVihDTEtfRE9VVF9BQ0xLNDAwX1dDT1JFLCAiZG91dF9hY2xrNDAwX3djb3JlIiwKPj4g
LQkJCSJtb3V0X2FjbGs0MDBfd2NvcmVfYnBsbCIsIERJVl9UT1AwLCAxNiwgMyksCj4+ICsJCQki
bW91dF9hY2xrNDAwX3djb3JlIiwgRElWX1RPUDAsIDE2LCAzKSwKPj4gICB9Owo+PiAgIAo+PiAg
IHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc2Ftc3VuZ19nYXRlX2Nsb2NrIGV4eW5vczU0MjBfZ2F0ZV9j
bGtzW10gX19pbml0Y29uc3QgPSB7Cj4+Cj4gCj4gQWNrZWQtYnk6IENoYW53b28gQ2hvaSA8Y3cw
MC5jaG9pQHNhbXN1bmcuY29tPgo+IAo+IElmIHBvc3NpYmxlLCB5b3UgYmV0dGVyIHRvIHNlbmQg
aXQgdG8gc3RhYmxlIG1haWxpbmcgbGlzdAo+IHdpdGggRml4ZXMgaW5mb3JtYXRpb24uClRoYW5r
IHlvdSwgSSB3aWxsIGRvIGl0IHdoZW4gZmluaXNoIHRoZSB2Mi4KClJlZ2FyZHMsCkx1a2FzegoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
