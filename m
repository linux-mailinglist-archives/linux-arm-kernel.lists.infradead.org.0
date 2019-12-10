Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5FC117ED5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 05:14:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/YX+QqLHtTvPYybJljCWPN72JCHOBvfZxsIT3HZ4+Ao=; b=h+udwGr5YNtLL2
	Feqpam/W3l3LTB5cycp2ZDfI1uVYl16ZZ9qxNcPDUATQmt8egvq0PzTBVkTyja3ihNlEskfcjKoNC
	Rrj+eieOsbJJY+hqve5whdXAwPcGfgbp7b9y8LhSn5lxDcHAxZbD3IjALeWH1Ma9T9yW2tC+T69cM
	3xp2tSR7LoxPexoa+4emaBWQFDGtQj23e2HiG2vj8fCin8242XKCF+v8H1IgOynL96fqHVWzsYrmf
	+++J0k8Y1zauyKqO1oEWJf3bJjPZ01pF7ZtywUFwwh/B6trusjVuPK0cffG9RgFcqab4oE+HL5HIu
	UQQnSYcrR1ClRLzVRqmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieWug-0001Ko-QK; Tue, 10 Dec 2019 04:14:18 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieWuZ-0001KE-Dn
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 04:14:13 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20191210041406epoutp03142ad679735a75095c50dc8a448ebcef~e508eu6-K2758227582epoutp03s
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 04:14:06 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20191210041406epoutp03142ad679735a75095c50dc8a448ebcef~e508eu6-K2758227582epoutp03s
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575951246;
 bh=8ZnAdhmubYW5U3geKUg1GbxHGDRqr4E2F3dUKd6lc18=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=JiDJQnnpEPFZtDXmG9H+DuxuoVRiKKiu6MAT3Ve+VDdW8fNKP5sWnIOFmlPi4kLJ+
 ApfT2Ys1gTlOi0X1YL57IM1QeETCho8rWRwG/rbFiRdUG+O5umgUATRUXgk9RKLoR6
 EKX+7kxnDu8Fa8UtAHPB0xCp7tSUBUzJAiEZNeow=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191210041406epcas1p2573bfb61527a7855c7b6aec8dde088af~e508MtcJb2988229882epcas1p2d;
 Tue, 10 Dec 2019 04:14:06 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.153]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 47X6Bh1pCmzMqYkY; Tue, 10 Dec
 2019 04:14:04 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 DC.FC.52419.C8B1FED5; Tue, 10 Dec 2019 13:14:04 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20191210041403epcas1p393e978279a9c29aa550de20c7fe20bbe~e505p7wtv2140221402epcas1p3p;
 Tue, 10 Dec 2019 04:14:03 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191210041403epsmtrp18a202e3c5061bc1510377099ea9ee898~e505o4xMi2236922369epsmtrp1S;
 Tue, 10 Dec 2019 04:14:03 +0000 (GMT)
X-AuditID: b6c32a37-59fff7000001ccc3-f1-5def1b8cbff1
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 D6.36.10238.B8B1FED5; Tue, 10 Dec 2019 13:14:03 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191210041403epsmtip1d12679440965b765de3305bac30411c1~e505RZSEm3119531195epsmtip1U;
 Tue, 10 Dec 2019 04:14:03 +0000 (GMT)
Subject: Re: [PATCH v3 4/4] devfreq: exynos-bus: Clean up code
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <ab5cd151-0f9f-929e-fcbe-e7fe7b6c8645@samsung.com>
Date: Tue, 10 Dec 2019 13:20:29 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <20191209104902.11904-5-a.swigon@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLJsWRmVeSWpSXmKPExsWy7bCmvm6P9PtYg+UbOS3uz2tltNg4Yz2r
 xaT7E1gsFnyawWrR//g1s8X58xvYLc42vWG3WHH3I6vFpsfXWC0u75rDZvG59wijxYzz+5gs
 1h65y25xu3EFm8WMyS/ZHPg9Nq3qZPPYvKTeY+O7HUwefVtWMXp83iQXwBqVbZORmpiSWqSQ
 mpecn5KZl26r5B0c7xxvamZgqGtoaWGupJCXmJtqq+TiE6DrlpkDdK2SQlliTilQKCCxuFhJ
 386mKL+0JFUhI7+4xFYptSAlp8CyQK84Mbe4NC9dLzk/18rQwMDIFKgwITtj1ouMgp+GFatn
 TmFsYFyn3sXIySEhYCIxa9dK9i5GLg4hgR2MEq/au9kgnE+MEh0HnrJAON+AnLs9TDAt11cv
 ZoVI7GWU6Fz5A6rqPaPErTnNrCBVwgJ2EssW7GACSYgIHGCUOLC+GcxhFvjCKNF84y87SBWb
 gJbE/hc32EBsfgFFias/HjOC2LxA3f1PHzOD2CwCqhKXt28FqxcVCJM4ua0FqkZQ4uTMJywg
 NqeAlcSqmefB5jALiEvcejKfCcKWl2jeOpsZ4u517BLTf5pB2C4SjbM3QcWFJV4d38IOYUtJ
 vOxvg7KrJVaePAIODQmBDkaJLfsvsEIkjCX2L50MtIADaIGmxPpd+hBhRYmdv+cyQuzlk3j3
 tYcVpERCgFeio00IokRZ4vKDu9BglJRY3N7JNoFRaRaSb2Yh+WAWkg9mISxbwMiyilEstaA4
 Nz212LDAGDm6NzGCk7KW+Q7GDed8DjEKcDAq8fAucHgXK8SaWFZcmXuIUYKDWUmE93gbUIg3
 JbGyKrUoP76oNCe1+BCjKTCwJzJLiSbnAzNGXkm8oamRsbGxhYmhmamhoZI4L8ePi7FCAumJ
 JanZqakFqUUwfUwcnFINjFnbNk0NPeQb2N9wbOnaE6k+PXdMWdxS1m7YJnJqRdHCzn3L6uoD
 s24GrwpQ3ndMMLZA+mPD3MkhT4RK/n25uet174P1GyvOOS9z0Zhs9vX0gr1/2j9F3JIweyP3
 60D88cVrd00PFDyfPvW6caG1eDITn4F55zSr/01cKZe4eXf13OXj1Ty3c6sSS3FGoqEWc1Fx
 IgCeXYH14AMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGIsWRmVeSWpSXmKPExsWy7bCSnG639PtYg/uz5Szuz2tltNg4Yz2r
 xaT7E1gsFnyawWrR//g1s8X58xvYLc42vWG3WHH3I6vFpsfXWC0u75rDZvG59wijxYzz+5gs
 1h65y25xu3EFm8WMyS/ZHPg9Nq3qZPPYvKTeY+O7HUwefVtWMXp83iQXwBrFZZOSmpNZllqk
 b5fAlTHrRUbBT8OK1TOnMDYwrlPvYuTkkBAwkbi+ejFrFyMXh5DAbkaJO5cusUMkJCWmXTzK
 3MXIAWQLSxw+XAwSFhJ4yyixtFcTxBYWsJNYtmAHE0iviMABRonNO2czgSSYBb4wShx9Eg4x
 dC+jxI61B1hBEmwCWhL7X9xgA7H5BRQlrv54zAhi8wJN6n/6mBnEZhFQlbi8fSvYEaICYRI7
 lzxmgqgRlDg58wkLiM0pYCWxauZ5Nohl6hJ/5l1ihrDFJW49mQ91hLxE89bZzBMYhWchaZ+F
 pGUWkpZZSFoWMLKsYpRMLSjOTc8tNiwwzEst1ytOzC0uzUvXS87P3cQIjk0tzR2Ml5fEH2IU
 4GBU4uFd4PAuVog1say4MvcQowQHs5II7/E2oBBvSmJlVWpRfnxRaU5q8SFGaQ4WJXHep3nH
 IoUE0hNLUrNTUwtSi2CyTBycUg2M0v4uJ+e5V0Y9bqoSuFFeO4n71iyGE6UxbP5XSkqO/Dbt
 Kw/hVwjmebW/8tPNUJ1tlSH6LM0HlrxPm6cq8M8rsVp/9TTvXxMl/XK/u4fzuv2LVCq/ckTm
 k+iN5/auE5tqOPJmrn5nu27vZD1m9eafu54dmvLq3bUvGzrOlE0UiKqdmm/2dNkKJZbijERD
 Leai4kQAKr+0eskCAAA=
X-CMS-MailID: 20191210041403epcas1p393e978279a9c29aa550de20c7fe20bbe
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191209105034eucas1p277be9a40363fec76b4241d28e71e40d2
References: <20191209104902.11904-1-a.swigon@samsung.com>
 <CGME20191209105034eucas1p277be9a40363fec76b4241d28e71e40d2@eucas1p2.samsung.com>
 <20191209104902.11904-5-a.swigon@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_201411_714973_8F0CC61E 
X-CRM114-Status: GOOD (  26.49  )
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

SGksCgpUaGlzIHBhdGNoIGNvbnRhaW5zIHRoZSBjbGVhbi11cCBjb2RlIHJlbGF0ZWQgdG8gJ2dv
dG8nIHN0eWxlLgpQbGVhc2UgbWVyZ2UgdGhlIHRoZSBjbGVhbi11cCBjb2RlIG9mICdnb3RvJyB0
byBvbmUgcGF0Y2ggd2l0aCBwYXRjaDMvcGF0Y2g0LgotIHBhdGNoMyByZWxhdGVkIHRvICdnb3Rv
JyBjbGVhbi11cCBjb2RlCi0gcGF0Y2g0IHJlbGF0ZWQgdG8gcmVtYWluaW5nIGNsZWFuLXVwIGNv
ZGUuIAoKQW5kIEkgYWRkZWQgdGhlIGNvbW1lbnQgYmVsb3cuIFBsZWFzZSBjaGVjayB0aGVtLgoK
T24gMTIvOS8xOSA3OjQ5IFBNLCBBcnR1ciDFmndpZ2/FhCB3cm90ZToKPiBUaGlzIHBhdGNoIGFk
ZHMgbWlub3IgaW1wcm92ZW1lbnRzIHRvIHRoZSBleHlub3MtYnVzIGRyaXZlciwgaW5jbHVkaW5n
Cj4gY2xlYW5pbmcgdXAgaGVhZGVyIGluY2x1ZGVzLCB2YXJpYWJsZXMsIGFuZCByZXR1cm4gcGF0
aHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHNhbXN1bmcu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIHwgNTYgKysrKysrKysr
KysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNlcnRp
b25zKCspLCAzMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVx
L2V4eW5vcy1idXMuYyBiL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPiBpbmRleCAwYjU1
N2RmNjM2NjYuLjNlYjZhMDQzMjg0YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvZXh5
bm9zLWJ1cy5jCj4gKysrIGIvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+IEBAIC0xNSwx
MSArMTUsMTAgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L2RldmljZS5oPgo+ICAjaW5jbHVkZSA8bGlu
dXgvZXhwb3J0Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPiAtI2luY2x1ZGUgPGxp
bnV4L29mX2RldmljZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvb2YuaD4KPiAgI2luY2x1ZGUgPGxp
bnV4L3BtX29wcC5oPgo+ICAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gICNp
bmNsdWRlIDxsaW51eC9yZWd1bGF0b3IvY29uc3VtZXIuaD4KPiAtI2luY2x1ZGUgPGxpbnV4L3Ns
YWIuaD4KPiAgCj4gICNkZWZpbmUgREVGQVVMVF9TQVRVUkFUSU9OX1JBVElPCTQwCj4gIAo+IEBA
IC0xNzgsNyArMTc3LDcgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3BhcmVudF9wYXJzZV9vZihz
dHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAo+ICAJc3RydWN0IGRldmljZSAqZGV2ID0gYnVzLT5kZXY7
Cj4gIAlzdHJ1Y3Qgb3BwX3RhYmxlICpvcHBfdGFibGU7Cj4gIAljb25zdCBjaGFyICp2ZGQgPSAi
dmRkIjsKPiAtCWludCBpLCByZXQsIGNvdW50LCBzaXplOwo+ICsJaW50IGksIHJldCwgY291bnQ7
Cj4gIAo+ICAJb3BwX3RhYmxlID0gZGV2X3BtX29wcF9zZXRfcmVndWxhdG9ycyhkZXYsICZ2ZGQs
IDEpOwo+ICAJaWYgKElTX0VSUihvcHBfdGFibGUpKSB7Cj4gQEAgLTIwMSw4ICsyMDAsNyBAQCBz
dGF0aWMgaW50IGV4eW5vc19idXNfcGFyZW50X3BhcnNlX29mKHN0cnVjdCBkZXZpY2Vfbm9kZSAq
bnAsCj4gIAl9Cj4gIAlidXMtPmVkZXZfY291bnQgPSBjb3VudDsKPiAgCj4gLQlzaXplID0gc2l6
ZW9mKCpidXMtPmVkZXYpICogY291bnQ7Cj4gLQlidXMtPmVkZXYgPSBkZXZtX2t6YWxsb2MoZGV2
LCBzaXplLCBHRlBfS0VSTkVMKTsKPiArCWJ1cy0+ZWRldiA9IGRldm1fa2NhbGxvYyhkZXYsIGNv
dW50LCBzaXplb2YoKmJ1cy0+ZWRldiksIEdGUF9LRVJORUwpOwoKZGl0dG8uCkl0IGRlcGVuZHMg
b24gcGVyc29uYWwgc3R5bGUuIERvbid0IGNoYW5nZSBpdCBiZWNhdXNlIHdlIGNhbm5vdAptb2Rp
ZnkgdGhlbSBhdCB0aGUgYWxsIGRldmljZSBkcml2ZXIuIElmIGlzIG5vdCB3cm9uZywKanVzdCBr
ZWVwIHRoZSBvcmlnaW5hbCBjb2RlLgoKCj4gIAlpZiAoIWJ1cy0+ZWRldikgewo+ICAJCXJldCA9
IC1FTk9NRU07Cj4gIAkJZ290byBlcnJfcmVndWxhdG9yOwo+IEBAIC0zMDEsMTAgKzI5OSw5IEBA
IHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXQoc3RydWN0IGV4eW5vc19idXMgKmJ1
cywKPiAgCXByb2ZpbGUtPmV4aXQgPSBleHlub3NfYnVzX2V4aXQ7Cj4gIAo+ICAJb25kZW1hbmRf
ZGF0YSA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqb25kZW1hbmRfZGF0YSksIEdGUF9LRVJO
RUwpOwo+IC0JaWYgKCFvbmRlbWFuZF9kYXRhKSB7Cj4gLQkJcmV0ID0gLUVOT01FTTsKPiAtCQln
b3RvIGVycjsKPiAtCX0KPiArCWlmICghb25kZW1hbmRfZGF0YSkKPiArCQlyZXR1cm4gLUVOT01F
TTsKPiArCj4gIAlvbmRlbWFuZF9kYXRhLT51cHRocmVzaG9sZCA9IDQwOwo+ICAJb25kZW1hbmRf
ZGF0YS0+ZG93bmRpZmZlcmVudGlhbCA9IDU7Cj4gIAo+IEBAIC0zMTQsMTUgKzMxMSwxNCBAQCBz
dGF0aWMgaW50IGV4eW5vc19idXNfcHJvZmlsZV9pbml0KHN0cnVjdCBleHlub3NfYnVzICpidXMs
Cj4gIAkJCQkJCW9uZGVtYW5kX2RhdGEpOwo+ICAJaWYgKElTX0VSUihidXMtPmRldmZyZXEpKSB7
Cj4gIAkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gYWRkIGRldmZyZXEgZGV2aWNlXG4iKTsKPiAt
CQlyZXQgPSBQVFJfRVJSKGJ1cy0+ZGV2ZnJlcSk7Cj4gLQkJZ290byBlcnI7Cj4gKwkJcmV0dXJu
IFBUUl9FUlIoYnVzLT5kZXZmcmVxKTsKPiAgCX0KPiAgCj4gIAkvKiBSZWdpc3RlciBvcHBfbm90
aWZpZXIgdG8gY2F0Y2ggdGhlIGNoYW5nZSBvZiBPUFAgICovCj4gIAlyZXQgPSBkZXZtX2RldmZy
ZXFfcmVnaXN0ZXJfb3BwX25vdGlmaWVyKGRldiwgYnVzLT5kZXZmcmVxKTsKPiAgCWlmIChyZXQg
PCAwKSB7Cj4gIAkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gcmVnaXN0ZXIgb3BwIG5vdGlmaWVy
XG4iKTsKPiAtCQlnb3RvIGVycjsKPiArCQlyZXR1cm4gcmV0Owo+ICAJfQo+ICAKPiAgCS8qCj4g
QEAgLTMzMiwxNyArMzI4LDE2IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXQo
c3RydWN0IGV4eW5vc19idXMgKmJ1cywKPiAgCXJldCA9IGV4eW5vc19idXNfZW5hYmxlX2VkZXYo
YnVzKTsKPiAgCWlmIChyZXQgPCAwKSB7Cj4gIAkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZW5h
YmxlIGRldmZyZXEtZXZlbnQgZGV2aWNlc1xuIik7Cj4gLQkJZ290byBlcnI7Cj4gKwkJcmV0dXJu
IHJldDsKPiAgCX0KPiAgCj4gIAlyZXQgPSBleHlub3NfYnVzX3NldF9ldmVudChidXMpOwo+ICAJ
aWYgKHJldCA8IDApIHsKPiAgCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBzZXQgZXZlbnQgdG8g
ZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsKPiAtCQlnb3RvIGVycjsKPiArCQlyZXR1cm4gcmV0
Owo+ICAJfQo+ICAKPiAtZXJyOgo+IC0JcmV0dXJuIHJldDsKPiArCXJldHVybiAwOwo+ICB9Cj4g
IAo+ICBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvZmlsZV9pbml0X3Bhc3NpdmUoc3RydWN0IGV4
eW5vc19idXMgKmJ1cywKPiBAQCAtMzUxLDcgKzM0Niw2IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1
c19wcm9maWxlX2luaXRfcGFzc2l2ZShzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAo+ICAJc3RydWN0
IGRldmljZSAqZGV2ID0gYnVzLT5kZXY7Cj4gIAlzdHJ1Y3QgZGV2ZnJlcV9wYXNzaXZlX2RhdGEg
KnBhc3NpdmVfZGF0YTsKPiAgCXN0cnVjdCBkZXZmcmVxICpwYXJlbnRfZGV2ZnJlcTsKPiAtCWlu
dCByZXQgPSAwOwo+ICAKPiAgCS8qIEluaXRpYWxpemUgdGhlIHN0cnVjdCBwcm9maWxlIGFuZCBn
b3Zlcm5vciBkYXRhIGZvciBwYXNzaXZlIGRldmljZSAqLwo+ICAJcHJvZmlsZS0+dGFyZ2V0ID0g
ZXh5bm9zX2J1c190YXJnZXQ7Cj4gQEAgLTM1OSwzMCArMzUzLDI2IEBAIHN0YXRpYyBpbnQgZXh5
bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2ZShzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAo+ICAK
PiAgCS8qIEdldCB0aGUgaW5zdGFuY2Ugb2YgcGFyZW50IGRldmZyZXEgZGV2aWNlICovCj4gIAlw
YXJlbnRfZGV2ZnJlcSA9IGRldmZyZXFfZ2V0X2RldmZyZXFfYnlfcGhhbmRsZShkZXYsIDApOwo+
IC0JaWYgKElTX0VSUihwYXJlbnRfZGV2ZnJlcSkpIHsKPiAtCQlyZXQgPSAtRVBST0JFX0RFRkVS
Owo+IC0JCWdvdG8gZXJyOwo+IC0JfQo+ICsJaWYgKElTX0VSUihwYXJlbnRfZGV2ZnJlcSkpCj4g
KwkJcmV0dXJuIC1FUFJPQkVfREVGRVI7Cj4gIAo+ICAJcGFzc2l2ZV9kYXRhID0gZGV2bV9remFs
bG9jKGRldiwgc2l6ZW9mKCpwYXNzaXZlX2RhdGEpLCBHRlBfS0VSTkVMKTsKPiAtCWlmICghcGFz
c2l2ZV9kYXRhKSB7Cj4gLQkJcmV0ID0gLUVOT01FTTsKPiAtCQlnb3RvIGVycjsKPiAtCX0KPiAr
CWlmICghcGFzc2l2ZV9kYXRhKQo+ICsJCXJldHVybiAtRU5PTUVNOwo+ICsKPiAgCXBhc3NpdmVf
ZGF0YS0+cGFyZW50ID0gcGFyZW50X2RldmZyZXE7Cj4gIAo+ICAJLyogQWRkIGRldmZyZXEgZGV2
aWNlIGZvciBleHlub3MgYnVzIHdpdGggcGFzc2l2ZSBnb3Zlcm5vciAqLwo+IC0JYnVzLT5kZXZm
cmVxID0gZGV2bV9kZXZmcmVxX2FkZF9kZXZpY2UoZGV2LCBwcm9maWxlLCBERVZGUkVRX0dPVl9Q
QVNTSVZFLAo+ICsJYnVzLT5kZXZmcmVxID0gZGV2bV9kZXZmcmVxX2FkZF9kZXZpY2UoZGV2LCBw
cm9maWxlLAo+ICsJCQkJCQlERVZGUkVRX0dPVl9QQVNTSVZFLAoKSXQgaXMgbm90IGNsZWFuLXVw
LiBJdCBkZXBlbmRzIG9uIHBlcnNvbmFsIHN0eWxlLiBEb24ndCBjaGFuZ2UgaXQKYmVjYXVzZSB3
ZSBjYW5ub3QgbW9kaWZ5IHRoZW0gYXQgdGhlIGFsbCBkZXZpY2UgZHJpdmVyLiBJZiBpcyBub3Qg
d3JvbmcsCmp1c3Qga2VlcCB0aGUgb3JpZ2luYWwgY29kZS4KCj4gIAkJCQkJCXBhc3NpdmVfZGF0
YSk7Cj4gIAlpZiAoSVNfRVJSKGJ1cy0+ZGV2ZnJlcSkpIHsKPiAgCQlkZXZfZXJyKGRldiwKPiAg
CQkJImZhaWxlZCB0byBhZGQgZGV2ZnJlcSBkZXYgd2l0aCBwYXNzaXZlIGdvdmVybm9yXG4iKTsK
PiAtCQlyZXQgPSBQVFJfRVJSKGJ1cy0+ZGV2ZnJlcSk7Cj4gLQkJZ290byBlcnI7Cj4gKwkJcmV0
dXJuIFBUUl9FUlIoYnVzLT5kZXZmcmVxKTsKPiAgCX0KPiAgCj4gLWVycjoKPiAtCXJldHVybiBy
ZXQ7Cj4gKwlyZXR1cm4gMDsKPiAgfQo+ICAKPiAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gQEAgLTQwMCwxOCArMzkwLDE4IEBAIHN0
YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
ICAJCXJldHVybiAtRUlOVkFMOwo+ICAJfQo+ICAKPiAtCWJ1cyA9IGRldm1fa3phbGxvYygmcGRl
di0+ZGV2LCBzaXplb2YoKmJ1cyksIEdGUF9LRVJORUwpOwo+ICsJYnVzID0gZGV2bV9remFsbG9j
KGRldiwgc2l6ZW9mKCpidXMpLCBHRlBfS0VSTkVMKTsKCmRpdHRvLgpJdCBkZXBlbmRzIG9uIHBl
cnNvbmFsIHN0eWxlLiBEb24ndCBjaGFuZ2UgaXQgYmVjYXVzZSB3ZSBjYW5ub3QKbW9kaWZ5IHRo
ZW0gYXQgdGhlIGFsbCBkZXZpY2UgZHJpdmVyLiBJZiBpcyBub3Qgd3JvbmcsCmp1c3Qga2VlcCB0
aGUgb3JpZ2luYWwgY29kZS4KCj4gIAlpZiAoIWJ1cykKPiAgCQlyZXR1cm4gLUVOT01FTTsKPiAg
CW11dGV4X2luaXQoJmJ1cy0+bG9jayk7Cj4gLQlidXMtPmRldiA9ICZwZGV2LT5kZXY7Cj4gKwli
dXMtPmRldiA9IGRldjsKCmRpdHRvLgpJdCBkZXBlbmRzIG9uIHBlcnNvbmFsIHN0eWxlLiBEb24n
dCBjaGFuZ2UgaXQgYmVjYXVzZSB3ZSBjYW5ub3QKbW9kaWZ5IHRoZW0gYXQgdGhlIGFsbCBkZXZp
Y2UgZHJpdmVyLiBJZiBpcyBub3Qgd3JvbmcsCmp1c3Qga2VlcCB0aGUgb3JpZ2luYWwgY29kZS4K
Cgo+ICAJcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgYnVzKTsKPiAgCj4gIAlwcm9maWxlID0g
ZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpwcm9maWxlKSwgR0ZQX0tFUk5FTCk7Cj4gIAlpZiAo
IXByb2ZpbGUpCj4gIAkJcmV0dXJuIC1FTk9NRU07Cj4gIAo+IC0Jbm9kZSA9IG9mX3BhcnNlX3Bo
YW5kbGUoZGV2LT5vZl9ub2RlLCAiZGV2ZnJlcSIsIDApOwo+ICsJbm9kZSA9IG9mX3BhcnNlX3Bo
YW5kbGUobnAsICJkZXZmcmVxIiwgMCk7Cj4gIAlpZiAobm9kZSkgewo+ICAJCW9mX25vZGVfcHV0
KG5vZGUpOwo+ICAJCXBhc3NpdmUgPSB0cnVlOwo+IAoKCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53
b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
