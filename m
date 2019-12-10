Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A43117EDA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 05:15:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KYB7JjhVTin82HegIrGUtUgJCS5N58DW66nZmqHJgic=; b=fpv/+FIOcyqa00
	vxrUS/XbUfWHQh16vuQhKpBiW7WATBgYzsMZsH4R84tuWTbp3flJO4FR79c0qAMWaiASFfAruBa+0
	jWF4clOORgvHNN9LP7yAUzEbHgB312qFa/aC7XSJIJfydqmtIGHHHRlN3wR5D2BjyG8oJCqKcetcC
	GtnxKaUUuOqsHRrsJIKE4MldvA9950+c2RZAv2JpKy/Kf3R9KiIcCs/SOZ/tEAMTkYLD1+TxMHBvi
	zpszSfjly1IIirfUdzEmZl3xYmqhIRzY1OqA3tifPOhjnzrCRALFMJL4Kfosugw95dMYyCG8Z4oif
	tf4a4u/5NOVQKF0HZ4Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieWvJ-0001q7-A1; Tue, 10 Dec 2019 04:14:57 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieWuv-0001e5-27
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 04:14:38 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20191210041430epoutp03f1556afc21d82a82a8f84bb5efa9706e~e51Sv0RSK2758227582epoutp03E
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 04:14:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20191210041430epoutp03f1556afc21d82a82a8f84bb5efa9706e~e51Sv0RSK2758227582epoutp03E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575951270;
 bh=qHDmCpWE+HvyeD/hUW+yp7Qx/0mA9AfvYxWPVGikIw8=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Ky1ii+Iw79D2f/TCF0OP3klNuFHzrwCVkLFcNUxmiq0dS9uYaa37uGQZUUCr+FLrt
 J8b84JlhARrHifmuRiu5AKwBITU8B/HtILyeq5kav//1A5TUsba/fP/sB0Z+LxgKQE
 O+hFLoIS67b7F/yyAGfFrXfdhiZ4by039esqVSvo=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191210041430epcas1p2fbfb7c6ead257ab53dfdb531254e3d76~e51Sb2fnA2987929879epcas1p2d;
 Tue, 10 Dec 2019 04:14:30 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.155]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 47X6C45V9MzMqYkw; Tue, 10 Dec
 2019 04:14:24 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 9C.C9.48019.0AB1FED5; Tue, 10 Dec 2019 13:14:24 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20191210041424epcas1p3fbfcee2a4776a151bc87c1e53cce7fef~e51MuZ8nJ1387213872epcas1p3a;
 Tue, 10 Dec 2019 04:14:24 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191210041424epsmtrp12b6ffc213687e1b2e164b6e313771553~e51MtoSpP2236922369epsmtrp1x;
 Tue, 10 Dec 2019 04:14:24 +0000 (GMT)
X-AuditID: b6c32a38-257ff7000001bb93-52-5def1ba0ed06
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 64.18.06569.F9B1FED5; Tue, 10 Dec 2019 13:14:23 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191210041423epsmtip1b8178bea4c794f1bd1e105d67282c468~e51MbK6o32854928549epsmtip1R;
 Tue, 10 Dec 2019 04:14:23 +0000 (GMT)
Subject: Re: [PATCH v3 2/4] devfreq: exynos-bus: Extract
 exynos_bus_profile_init_passive()
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <cd5be580-5236-0d83-b5fb-dd5fae804c26@samsung.com>
Date: Tue, 10 Dec 2019 13:20:49 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <20191209104902.11904-3-a.swigon@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLJsWRmVeSWpSXmKPExsWy7bCmru4C6fexBm29Ohb357UyWmycsZ7V
 YtL9CSwWCz7NYLXof/ya2eL8+Q3sFmeb3rBbrLj7kdVi0+NrrBaXd81hs/jce4TRYsb5fUwW
 a4/cZbe43biCzWLG5JdsDvwem1Z1snlsXlLvsfHdDiaPvi2rGD0+b5ILYI3KtslITUxJLVJI
 zUvOT8nMS7dV8g6Od443NTMw1DW0tDBXUshLzE21VXLxCdB1y8wBulZJoSwxpxQoFJBYXKyk
 b2dTlF9akqqQkV9cYquUWpCSU2BZoFecmFtcmpeul5yfa2VoYGBkClSYkJ0x71AbY8E+6YrW
 9W3sDYztYl2MnBwSAiYSjXO3sXcxcnEICexglLi95TwjhPOJUWLCnNlsEM43RokFC16xwrS8
 WnyBGcQWEtjLKLH0txeE/Z5R4tBGMFtYIEbiy71esLEiAgcYJQ6sb2YCcZgFvjBKNN/4yw5S
 xSagJbH/xQ02EJtfQFHi6o/HjCA2r4CdxJI/G8BqWARUJf5uP8YCYosKhEmc3NYCVSMocXLm
 E7A4p4CVRM/LA2D1zALiEreezGeCsOUlmrfOZgZZLCGwil3i4O9nUC+4SFz4c4gFwhaWeHV8
 CzuELSXxsr8Nyq6WWHnyCBtEcwejxJb9F6CajSX2L50MtIEDaIOmxPpd+hBhRYmdv+cyQizm
 k3j3tYcVpERCgFeio00IokRZ4vKDu0wQtqTE4vZOtgmMSrOQvDMLyQuzkLwwC2HZAkaWVYxi
 qQXFuempxYYFJsjRvYkRnJS1LHYw7jnnc4hRgINRiYd3gcO7WCHWxLLiytxDjBIczEoivMfb
 gEK8KYmVValF+fFFpTmpxYcYTYGhPZFZSjQ5H5gx8kriDU2NjI2NLUwMzUwNDZXEeTl+XIwV
 EkhPLEnNTk0tSC2C6WPi4JRqYEzJ45vGmfzr65t9/n4FcnG7RW9ZnmjNiez7e9yubX//h6Ar
 p9pTmJb+l1pr8Jo55dK2jK5qw1V1FZYL115o12ZcPPnzi7/Po0tbPQO/Hc4tiOo5z24868je
 XfJLfHbd9ZwTs1OpszjsUbeY3ifTnnmfMmd4izyavarj7/1PW9hUHEUjO1qv9iuxFGckGmox
 FxUnAgCrroIM4AMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrOIsWRmVeSWpSXmKPExsWy7bCSnO586fexBrN+WVvcn9fKaLFxxnpW
 i0n3J7BYLPg0g9Wi//FrZovz5zewW5xtesNuseLuR1aLTY+vsVpc3jWHzeJz7xFGixnn9zFZ
 rD1yl93iduMKNosZk1+yOfB7bFrVyeaxeUm9x8Z3O5g8+rasYvT4vEkugDWKyyYlNSezLLVI
 3y6BK2PeoTbGgn3SFa3r29gbGNvFuhg5OSQETCReLb7A3MXIxSEksJtR4urt3ewQCUmJaReP
 AiU4gGxhicOHiyFq3jJKPP70jwmkRlggRuLLvV52kISIwAFGic07Z4MlmAW+MEocfRIOYgsJ
 7AVKXPEAsdkEtCT2v7jBBmLzCyhKXP3xmBHE5hWwk1jyZwPYYhYBVYm/24+xgNiiAmESO5c8
 ZoKoEZQ4OfMJWJxTwEqi5+UBdohd6hJ/5l1ihrDFJW49mQ91g7xE89bZzBMYhWchaZ+FpGUW
 kpZZSFoWMLKsYpRMLSjOTc8tNiwwykst1ytOzC0uzUvXS87P3cQIjk4trR2MJ07EH2IU4GBU
 4uH1sHsXK8SaWFZcmXuIUYKDWUmE93gbUIg3JbGyKrUoP76oNCe1+BCjNAeLkjivfP6xSCGB
 9MSS1OzU1ILUIpgsEwenVAOj1J3KXZZ1vVnlVYWTpHn7/9VPlTlgGKG57iKfhHj7m8odLXzf
 pUS1fre/Yvqh8K6v/dvKWL6XSZoh4R/e8R3jFPLSbGHYNovr3UTe4suCqsWKc/T/nkmQTAgq
 /GycE8kUF63cP8eU73PjjweR9uqv2mYb82hWTy59Uvp4+6WNxpbGAvWfNymxFGckGmoxFxUn
 AgD2TbyqygIAAA==
X-CMS-MailID: 20191210041424epcas1p3fbfcee2a4776a151bc87c1e53cce7fef
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191209105032eucas1p13fa6c46a1e80cdda68ab4bac3e008b8f
References: <20191209104902.11904-1-a.swigon@samsung.com>
 <CGME20191209105032eucas1p13fa6c46a1e80cdda68ab4bac3e008b8f@eucas1p1.samsung.com>
 <20191209104902.11904-3-a.swigon@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_201433_472165_FD927F87 
X-CRM114-Status: GOOD (  20.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: b.zolnierkie@samsung.com, k.konieczny@samsung.com, sw0312.kim@samsung.com,
 krzk@kernel.org, inki.dae@samsung.com, kyungmin.park@samsung.com,
 myungjoo.ham@samsung.com, kgene@kernel.org, leonard.crestez@nxp.com,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvOS8xOSA3OjQ5IFBNLCBBcnR1ciDFmndpZ2/FhCB3cm90ZToKPiBUaGlzIHBhdGNoIGFk
ZHMgYSBuZXcgc3RhdGljIGZ1bmN0aW9uLCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZl
KCksCj4gZXh0cmFjdGVkIGZyb20gZXh5bm9zX2J1c19wcm9iZSgpLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEFydHVyIMWad2lnb8WEIDxhLnN3aWdvbkBzYW1zdW5nLmNvbT4KPiAtLS0KPiAgZHJpdmVy
cy9kZXZmcmVxL2V4eW5vcy1idXMuYyB8IDcwICsrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0t
LS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKSwgMjggZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgYi9kcml2
ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4gaW5kZXggYjhjYTZiOWY0YjgyLi4xOWQ5ZjlmOGNl
ZDIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+ICsrKyBiL2Ry
aXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPiBAQCAtMzQ1LDEzICszNDUsNTEgQEAgc3RhdGlj
IGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdChzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAo+ICAJ
cmV0dXJuIHJldDsKPiAgfQo+ICAKPiArc3RhdGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5p
dF9wYXNzaXZlKHN0cnVjdCBleHlub3NfYnVzICpidXMsCj4gKwkJCQkJICAgc3RydWN0IGRldmZy
ZXFfZGV2X3Byb2ZpbGUgKnByb2ZpbGUpCj4gK3sKPiArCXN0cnVjdCBkZXZpY2UgKmRldiA9IGJ1
cy0+ZGV2Owo+ICsJc3RydWN0IGRldmZyZXFfcGFzc2l2ZV9kYXRhICpwYXNzaXZlX2RhdGE7Cj4g
KwlzdHJ1Y3QgZGV2ZnJlcSAqcGFyZW50X2RldmZyZXE7Cj4gKwlpbnQgcmV0ID0gMDsKPiArCj4g
KwkvKiBJbml0aWFsaXplIHRoZSBzdHJ1Y3QgcHJvZmlsZSBhbmQgZ292ZXJub3IgZGF0YSBmb3Ig
cGFzc2l2ZSBkZXZpY2UgKi8KPiArCXByb2ZpbGUtPnRhcmdldCA9IGV4eW5vc19idXNfdGFyZ2V0
Owo+ICsJcHJvZmlsZS0+ZXhpdCA9IGV4eW5vc19idXNfcGFzc2l2ZV9leGl0Owo+ICsKPiArCS8q
IEdldCB0aGUgaW5zdGFuY2Ugb2YgcGFyZW50IGRldmZyZXEgZGV2aWNlICovCj4gKwlwYXJlbnRf
ZGV2ZnJlcSA9IGRldmZyZXFfZ2V0X2RldmZyZXFfYnlfcGhhbmRsZShkZXYsIDApOwo+ICsJaWYg
KElTX0VSUihwYXJlbnRfZGV2ZnJlcSkpIHsKPiArCQlyZXQgPSAtRVBST0JFX0RFRkVSOwo+ICsJ
CWdvdG8gZXJyOwo+ICsJfQo+ICsKPiArCXBhc3NpdmVfZGF0YSA9IGRldm1fa3phbGxvYyhkZXYs
IHNpemVvZigqcGFzc2l2ZV9kYXRhKSwgR0ZQX0tFUk5FTCk7Cj4gKwlpZiAoIXBhc3NpdmVfZGF0
YSkgewo+ICsJCXJldCA9IC1FTk9NRU07Cj4gKwkJZ290byBlcnI7Cj4gKwl9Cj4gKwlwYXNzaXZl
X2RhdGEtPnBhcmVudCA9IHBhcmVudF9kZXZmcmVxOwo+ICsKPiArCS8qIEFkZCBkZXZmcmVxIGRl
dmljZSBmb3IgZXh5bm9zIGJ1cyB3aXRoIHBhc3NpdmUgZ292ZXJub3IgKi8KPiArCWJ1cy0+ZGV2
ZnJlcSA9IGRldm1fZGV2ZnJlcV9hZGRfZGV2aWNlKGRldiwgcHJvZmlsZSwgREVWRlJFUV9HT1Zf
UEFTU0lWRSwKPiArCQkJCQkJcGFzc2l2ZV9kYXRhKTsKPiArCWlmIChJU19FUlIoYnVzLT5kZXZm
cmVxKSkgewo+ICsJCWRldl9lcnIoZGV2LAo+ICsJCQkiZmFpbGVkIHRvIGFkZCBkZXZmcmVxIGRl
diB3aXRoIHBhc3NpdmUgZ292ZXJub3JcbiIpOwo+ICsJCXJldCA9IFBUUl9FUlIoYnVzLT5kZXZm
cmVxKTsKPiArCQlnb3RvIGVycjsKPiArCX0KPiArCj4gK2VycjoKPiArCXJldHVybiByZXQ7Cj4g
K30KPiArCj4gIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQo+ICB7Cj4gIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+ICAJ
c3RydWN0IGRldmljZV9ub2RlICpucCA9IGRldi0+b2Zfbm9kZSwgKm5vZGU7Cj4gIAlzdHJ1Y3Qg
ZGV2ZnJlcV9kZXZfcHJvZmlsZSAqcHJvZmlsZTsKPiAtCXN0cnVjdCBkZXZmcmVxX3Bhc3NpdmVf
ZGF0YSAqcGFzc2l2ZV9kYXRhOwo+IC0Jc3RydWN0IGRldmZyZXEgKnBhcmVudF9kZXZmcmVxOwo+
ICAJc3RydWN0IGV4eW5vc19idXMgKmJ1czsKPiAgCWludCByZXQsIG1heF9zdGF0ZTsKPiAgCXVu
c2lnbmVkIGxvbmcgbWluX2ZyZXEsIG1heF9mcmVxOwo+IEBAIC0zOTcsMzMgKzQzNSw5IEBAIHN0
YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
ICAKPiAgCWdvdG8gb3V0Owo+ICBwYXNzaXZlOgo+IC0JLyogSW5pdGlhbGl6ZSB0aGUgc3RydWN0
IHByb2ZpbGUgYW5kIGdvdmVybm9yIGRhdGEgZm9yIHBhc3NpdmUgZGV2aWNlICovCj4gLQlwcm9m
aWxlLT50YXJnZXQgPSBleHlub3NfYnVzX3RhcmdldDsKPiAtCXByb2ZpbGUtPmV4aXQgPSBleHlu
b3NfYnVzX3Bhc3NpdmVfZXhpdDsKPiAtCj4gLQkvKiBHZXQgdGhlIGluc3RhbmNlIG9mIHBhcmVu
dCBkZXZmcmVxIGRldmljZSAqLwo+IC0JcGFyZW50X2RldmZyZXEgPSBkZXZmcmVxX2dldF9kZXZm
cmVxX2J5X3BoYW5kbGUoZGV2LCAwKTsKPiAtCWlmIChJU19FUlIocGFyZW50X2RldmZyZXEpKSB7
Cj4gLQkJcmV0ID0gLUVQUk9CRV9ERUZFUjsKPiArCXJldCA9IGV4eW5vc19idXNfcHJvZmlsZV9p
bml0X3Bhc3NpdmUoYnVzLCBwcm9maWxlKTsKPiArCWlmIChyZXQgPCAwKQo+ICAJCWdvdG8gZXJy
Owo+IC0JfQo+IC0KPiAtCXBhc3NpdmVfZGF0YSA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigq
cGFzc2l2ZV9kYXRhKSwgR0ZQX0tFUk5FTCk7Cj4gLQlpZiAoIXBhc3NpdmVfZGF0YSkgewo+IC0J
CXJldCA9IC1FTk9NRU07Cj4gLQkJZ290byBlcnI7Cj4gLQl9Cj4gLQlwYXNzaXZlX2RhdGEtPnBh
cmVudCA9IHBhcmVudF9kZXZmcmVxOwo+IC0KPiAtCS8qIEFkZCBkZXZmcmVxIGRldmljZSBmb3Ig
ZXh5bm9zIGJ1cyB3aXRoIHBhc3NpdmUgZ292ZXJub3IgKi8KPiAtCWJ1cy0+ZGV2ZnJlcSA9IGRl
dm1fZGV2ZnJlcV9hZGRfZGV2aWNlKGRldiwgcHJvZmlsZSwgREVWRlJFUV9HT1ZfUEFTU0lWRSwK
PiAtCQkJCQkJcGFzc2l2ZV9kYXRhKTsKPiAtCWlmIChJU19FUlIoYnVzLT5kZXZmcmVxKSkgewo+
IC0JCWRldl9lcnIoZGV2LAo+IC0JCQkiZmFpbGVkIHRvIGFkZCBkZXZmcmVxIGRldiB3aXRoIHBh
c3NpdmUgZ292ZXJub3JcbiIpOwo+IC0JCXJldCA9IFBUUl9FUlIoYnVzLT5kZXZmcmVxKTsKPiAt
CQlnb3RvIGVycjsKPiAtCX0KPiAgCj4gIG91dDoKPiAgCW1heF9zdGF0ZSA9IGJ1cy0+ZGV2ZnJl
cS0+cHJvZmlsZS0+bWF4X3N0YXRlOwo+IAoKQXBwbGllZCBpdC4gVGhhbmtzLgoKCi0tIApCZXN0
IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
