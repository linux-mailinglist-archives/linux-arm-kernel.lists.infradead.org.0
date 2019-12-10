Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5F1117ED9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 05:14:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZX7+1gsmujgvzBGkQQMtMxvp8KcfE15AhLESVjb9rlc=; b=PVKAHSlP2niZ8d
	MTjPsP1EIrbtA5fXDd1+gt6zXeADxDrDXWU65yt8G6M7nUIfYCs1qPBfwZGYAXu8/NQZyohemUEQQ
	EGvkycB96CvSHJiBvYz6iLiNOw7MboqDIQQKufuhuhMiIjjfNvlBBBc5beMMo/h2L19gqA7w0lFzB
	nny1SjSIXdCPLdwt+IOI9bkg3F85GLRZrOLefcfmwQ7f95aFCkg56fGQuNIsuCC/yTC13EMEQsPRJ
	/8SyZree7UqzUadylOjF0aZ94P9F8dBKGmqICIZkX86xRmmscxPJjnJYFiXEn6vKzJMigjBpKTQsW
	eTaIzfXhXC7K5ewyeBLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieWv6-0001bg-Tn; Tue, 10 Dec 2019 04:14:44 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieWum-0001Vw-55
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 04:14:26 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20191210041421epoutp04d1819d62f027df695e18948c3cd0b557~e51KBw1q62436224362epoutp04X
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 04:14:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20191210041421epoutp04d1819d62f027df695e18948c3cd0b557~e51KBw1q62436224362epoutp04X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575951261;
 bh=OdhN49WK8rm0oTDRkqLL4LWFQFuzsTtK9rjB+lhhG9g=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=nGNFzrq01n5uE3LQRuaCzFcHWv3ueuxqhckoU6lC5plxBmrcfAvH8+Lb/x3iLTVwk
 u6dQPcAlHJIoleOnGiqcnhHh+rsYRcLPStAI7cUans0tUOlqnPNZx84WkdAXc3618h
 q3DUPh/5BvTTJIRmIrBXujI/G+VyOe5haUNmepwg=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191210041420epcas1p40574525a696a3270c0f5e7858d6d1154~e51Jf2_NO2926329263epcas1p4D;
 Tue, 10 Dec 2019 04:14:20 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.154]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 47X6By1kJLzMqYkn; Tue, 10 Dec
 2019 04:14:18 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 77.C9.48019.A9B1FED5; Tue, 10 Dec 2019 13:14:18 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20191210041417epcas1p42c8da7d1c32b317fd9badf04d14daeda~e51G_u5y_2924429244epcas1p4Q;
 Tue, 10 Dec 2019 04:14:17 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191210041417epsmtrp1638f85d4efde68a658466942d237522c~e51G93BVD2236922369epsmtrp1r;
 Tue, 10 Dec 2019 04:14:17 +0000 (GMT)
X-AuditID: b6c32a38-257ff7000001bb93-3a-5def1b9ae913
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 6B.36.10238.99B1FED5; Tue, 10 Dec 2019 13:14:17 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191210041417epsmtip23108a8a854cc8441aa421f3417ff3619~e51Grqjp_2166321663epsmtip23;
 Tue, 10 Dec 2019 04:14:17 +0000 (GMT)
Subject: Re: [PATCH v3 1/4] devfreq: exynos-bus: Extract
 exynos_bus_profile_init()
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <3d2c8269-cefe-0736-4fb9-729cc337db43@samsung.com>
Date: Tue, 10 Dec 2019 13:20:43 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <20191209104902.11904-2-a.swigon@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHJsWRmVeSWpSXmKPExsWy7bCmru4s6fexBo8f81jcn9fKaLFxxnpW
 i0n3J7BYLPg0g9Wi//FrZovz5zewW5xtesNuseLuR1aLTY+vsVpc3jWHzeJz7xFGixnn9zFZ
 rD1yl93iduMKNosZk1+yOfB7bFrVyeaxeUm9x8Z3O5g8+rasYvT4vEkugDUq2yYjNTEltUgh
 NS85PyUzL91WyTs43jne1MzAUNfQ0sJcSSEvMTfVVsnFJ0DXLTMH6FolhbLEnFKgUEBicbGS
 vp1NUX5pSapCRn5xia1SakFKToFlgV5xYm5xaV66XnJ+rpWhgYGRKVBhQnbG056rbAXHlCv6
 zy9gbWCcKNPFyMEhIWAiMeETWxcjF4eQwA5Gia9vXjBBOJ8YJS5NXsIC4XxjlLj8YCljFyMn
 WMfm7SA2SGIvo8Tcg9Ohqt4zSqzYsZcNpEpYIESiadIldpCEiMABRokD65vBBjMLfGGUaL7x
 lx2kik1AS2L/ixtgHfwCihJXfzwG28ErYCfR1NHOBGKzCKhK/FixF8wWFQiTOLmtBapGUOLk
 zCcsIDangJXE7kffWUFsZgFxiVtP5jNB2PISzVtnM4MslhBYxS4x7/NKFognXCTOf13BDGEL
 S7w6voUdwpaSeNnfBmVXS6w8eYQNormDUWLL/gusEAljif1LJzOBwo9ZQFNi/S59iLCixM7f
 cxkhFvNJvPvawwoJYl6JjjYhiBJlYDjeZYKwJSUWt3eyTWBUmoXknVlIXpiF5IVZCMsWMLKs
 YhRLLSjOTU8tNiwwQY7vTYzgtKxlsYNxzzmfQ4wCHIxKPLwLHN7FCrEmlhVX5h5ilOBgVhLh
 Pd4GFOJNSaysSi3Kjy8qzUktPsRoCgzticxSosn5wJyRVxJvaGpkbGxsYWJoZmpoqCTOy/Hj
 YqyQQHpiSWp2ampBahFMHxMHp1QD42KXEj5jhZcBilceSicwFthnvWnaYfBs8txpQdxPzhxi
 tgq8xVSyNXVBT3WEZnJaul4g8y2HQOEOTxbxNCH15Fm1t6Rec5XsVRZx+pS6lE9YboLv9M3X
 IxUsAu5t15aTnHue97TYbkf+LV/Cn0oU1R70sDnfab6mwXlK/ryM+pIVbY8YvrsrsRRnJBpq
 MRcVJwIAYkkL1eEDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrBIsWRmVeSWpSXmKPExsWy7bCSvO5M6fexBnsPG1rcn9fKaLFxxnpW
 i0n3J7BYLPg0g9Wi//FrZovz5zewW5xtesNuseLuR1aLTY+vsVpc3jWHzeJz7xFGixnn9zFZ
 rD1yl93iduMKNosZk1+yOfB7bFrVyeaxeUm9x8Z3O5g8+rasYvT4vEkugDWKyyYlNSezLLVI
 3y6BK+Npz1W2gmPKFf3nF7A2ME6U6WLk5JAQMJHYvH0pYxcjF4eQwG5GiWUHZ7FCJCQlpl08
 ytzFyAFkC0scPlwMUfOWUaLt4y4WkBphgRCJpkmX2EESIgIHGCU275zNBJJgFvjCKHH0SThE
 x15Giaa/19hBEmwCWhL7X9xgA7H5BRQlrv54zAhi8wrYSTR1tIM1swioSvxYsRfMFhUIk9i5
 5DETRI2gxMmZT8A2cwpYSex+9J0VYpm6xJ95l5ghbHGJW0/mQx0hL9G8dTbzBEbhWUjaZyFp
 mYWkZRaSlgWMLKsYJVMLinPTc4sNCwzzUsv1ihNzi0vz0vWS83M3MYLjU0tzB+PlJfGHGAU4
 GJV4eBc4vIsVYk0sK67MPcQowcGsJMJ7vA0oxJuSWFmVWpQfX1Sak1p8iFGag0VJnPdp3rFI
 IYH0xJLU7NTUgtQimCwTB6dUA6Pm0gZ5u6XHdPbxP9I5yDT5uAPPs7MTH5kdsBEVai+x9zfI
 CE3ilwsxTsnel3RwJf8Ur7WuStwc/wtFqk65HqtMF/t+RdTZZEPkQ/U/sndMt/sUch6bHpOT
 XpFjfc7n7eIv4pW+WWXHM3c4akgpfP2+4cv+6cfrKnesydilXHrR2s7i5L33+UosxRmJhlrM
 RcWJAP4D/xTLAgAA
X-CMS-MailID: 20191210041417epcas1p42c8da7d1c32b317fd9badf04d14daeda
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191209105031eucas1p137c3c5b0046570453e1ebed2dcd88277
References: <20191209104902.11904-1-a.swigon@samsung.com>
 <CGME20191209105031eucas1p137c3c5b0046570453e1ebed2dcd88277@eucas1p1.samsung.com>
 <20191209104902.11904-2-a.swigon@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_201424_647581_9DC99CCC 
X-CRM114-Status: GOOD (  23.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
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

T24gMTIvOS8xOSA3OjQ4IFBNLCBBcnR1ciDFmndpZ2/FhCB3cm90ZToKPiBUaGlzIHBhdGNoIGFk
ZHMgYSBuZXcgc3RhdGljIGZ1bmN0aW9uLCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdCgpLCBleHRy
YWN0ZWQKPiBmcm9tIGV4eW5vc19idXNfcHJvYmUoKS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBcnR1
ciDFmndpZ2/FhCA8YS5zd2lnb25Ac2Ftc3VuZy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZGV2ZnJl
cS9leHlub3MtYnVzLmMgfCAxMDYgKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0K
PiAgMSBmaWxlIGNoYW5nZWQsIDYwIGluc2VydGlvbnMoKyksIDQ2IGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIGIvZHJpdmVycy9kZXZm
cmVxL2V4eW5vcy1idXMuYwo+IGluZGV4IGM4MzI2NzMyNzNhMi4uYjhjYTZiOWY0YjgyIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPiArKysgYi9kcml2ZXJzL2Rl
dmZyZXEvZXh5bm9zLWJ1cy5jCj4gQEAgLTI4NywxMiArMjg3LDY5IEBAIHN0YXRpYyBpbnQgZXh5
bm9zX2J1c19wYXJzZV9vZihzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAo+ICAJcmV0dXJuIHJldDsK
PiAgfQo+ICAKPiArc3RhdGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdChzdHJ1Y3QgZXh5
bm9zX2J1cyAqYnVzLAo+ICsJCQkJICAgc3RydWN0IGRldmZyZXFfZGV2X3Byb2ZpbGUgKnByb2Zp
bGUpCj4gK3sKPiArCXN0cnVjdCBkZXZpY2UgKmRldiA9IGJ1cy0+ZGV2Owo+ICsJc3RydWN0IGRl
dmZyZXFfc2ltcGxlX29uZGVtYW5kX2RhdGEgKm9uZGVtYW5kX2RhdGE7Cj4gKwlpbnQgcmV0Owo+
ICsKPiArCS8qIEluaXRpYWxpemUgdGhlIHN0cnVjdCBwcm9maWxlIGFuZCBnb3Zlcm5vciBkYXRh
IGZvciBwYXJlbnQgZGV2aWNlICovCj4gKwlwcm9maWxlLT5wb2xsaW5nX21zID0gNTA7Cj4gKwlw
cm9maWxlLT50YXJnZXQgPSBleHlub3NfYnVzX3RhcmdldDsKPiArCXByb2ZpbGUtPmdldF9kZXZf
c3RhdHVzID0gZXh5bm9zX2J1c19nZXRfZGV2X3N0YXR1czsKPiArCXByb2ZpbGUtPmV4aXQgPSBl
eHlub3NfYnVzX2V4aXQ7Cj4gKwo+ICsJb25kZW1hbmRfZGF0YSA9IGRldm1fa3phbGxvYyhkZXYs
IHNpemVvZigqb25kZW1hbmRfZGF0YSksIEdGUF9LRVJORUwpOwo+ICsJaWYgKCFvbmRlbWFuZF9k
YXRhKSB7Cj4gKwkJcmV0ID0gLUVOT01FTTsKPiArCQlnb3RvIGVycjsKPiArCX0KPiArCW9uZGVt
YW5kX2RhdGEtPnVwdGhyZXNob2xkID0gNDA7Cj4gKwlvbmRlbWFuZF9kYXRhLT5kb3duZGlmZmVy
ZW50aWFsID0gNTsKPiArCj4gKwkvKiBBZGQgZGV2ZnJlcSBkZXZpY2UgdG8gbW9uaXRvciBhbmQg
aGFuZGxlIHRoZSBleHlub3MgYnVzICovCj4gKwlidXMtPmRldmZyZXEgPSBkZXZtX2RldmZyZXFf
YWRkX2RldmljZShkZXYsIHByb2ZpbGUsCj4gKwkJCQkJCURFVkZSRVFfR09WX1NJTVBMRV9PTkRF
TUFORCwKPiArCQkJCQkJb25kZW1hbmRfZGF0YSk7Cj4gKwlpZiAoSVNfRVJSKGJ1cy0+ZGV2ZnJl
cSkpIHsKPiArCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBhZGQgZGV2ZnJlcSBkZXZpY2VcbiIp
Owo+ICsJCXJldCA9IFBUUl9FUlIoYnVzLT5kZXZmcmVxKTsKPiArCQlnb3RvIGVycjsKPiArCX0K
PiArCj4gKwkvKiBSZWdpc3RlciBvcHBfbm90aWZpZXIgdG8gY2F0Y2ggdGhlIGNoYW5nZSBvZiBP
UFAgICovCj4gKwlyZXQgPSBkZXZtX2RldmZyZXFfcmVnaXN0ZXJfb3BwX25vdGlmaWVyKGRldiwg
YnVzLT5kZXZmcmVxKTsKPiArCWlmIChyZXQgPCAwKSB7Cj4gKwkJZGV2X2VycihkZXYsICJmYWls
ZWQgdG8gcmVnaXN0ZXIgb3BwIG5vdGlmaWVyXG4iKTsKPiArCQlnb3RvIGVycjsKPiArCX0KPiAr
Cj4gKwkvKgo+ICsJICogRW5hYmxlIGRldmZyZXEtZXZlbnQgdG8gZ2V0IHJhdyBkYXRhIHdoaWNo
IGlzIHVzZWQgdG8gZGV0ZXJtaW5lCj4gKwkgKiBjdXJyZW50IGJ1cyBsb2FkLgo+ICsJICovCj4g
KwlyZXQgPSBleHlub3NfYnVzX2VuYWJsZV9lZGV2KGJ1cyk7Cj4gKwlpZiAocmV0IDwgMCkgewo+
ICsJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGVuYWJsZSBkZXZmcmVxLWV2ZW50IGRldmljZXNc
biIpOwo+ICsJCWdvdG8gZXJyOwo+ICsJfQo+ICsKPiArCXJldCA9IGV4eW5vc19idXNfc2V0X2V2
ZW50KGJ1cyk7Cj4gKwlpZiAocmV0IDwgMCkgewo+ICsJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRv
IHNldCBldmVudCB0byBkZXZmcmVxLWV2ZW50IGRldmljZXNcbiIpOwo+ICsJCWdvdG8gZXJyOwo+
ICsJfQo+ICsKPiArZXJyOgo+ICsJcmV0dXJuIHJldDsKPiArfQo+ICsKPiAgc3RhdGljIGludCBl
eHlub3NfYnVzX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIHsKPiAgCXN0
cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gIAlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5w
ID0gZGV2LT5vZl9ub2RlLCAqbm9kZTsKPiAgCXN0cnVjdCBkZXZmcmVxX2Rldl9wcm9maWxlICpw
cm9maWxlOwo+IC0Jc3RydWN0IGRldmZyZXFfc2ltcGxlX29uZGVtYW5kX2RhdGEgKm9uZGVtYW5k
X2RhdGE7Cj4gIAlzdHJ1Y3QgZGV2ZnJlcV9wYXNzaXZlX2RhdGEgKnBhc3NpdmVfZGF0YTsKPiAg
CXN0cnVjdCBkZXZmcmVxICpwYXJlbnRfZGV2ZnJlcTsKPiAgCXN0cnVjdCBleHlub3NfYnVzICpi
dXM7Cj4gQEAgLTMzNCw1MiArMzkxLDkgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAlpZiAocGFzc2l2ZSkKPiAgCQlnb3RvIHBh
c3NpdmU7Cj4gIAo+IC0JLyogSW5pdGlhbGl6ZSB0aGUgc3RydWN0IHByb2ZpbGUgYW5kIGdvdmVy
bm9yIGRhdGEgZm9yIHBhcmVudCBkZXZpY2UgKi8KPiAtCXByb2ZpbGUtPnBvbGxpbmdfbXMgPSA1
MDsKPiAtCXByb2ZpbGUtPnRhcmdldCA9IGV4eW5vc19idXNfdGFyZ2V0Owo+IC0JcHJvZmlsZS0+
Z2V0X2Rldl9zdGF0dXMgPSBleHlub3NfYnVzX2dldF9kZXZfc3RhdHVzOwo+IC0JcHJvZmlsZS0+
ZXhpdCA9IGV4eW5vc19idXNfZXhpdDsKPiAtCj4gLQlvbmRlbWFuZF9kYXRhID0gZGV2bV9remFs
bG9jKGRldiwgc2l6ZW9mKCpvbmRlbWFuZF9kYXRhKSwgR0ZQX0tFUk5FTCk7Cj4gLQlpZiAoIW9u
ZGVtYW5kX2RhdGEpIHsKPiAtCQlyZXQgPSAtRU5PTUVNOwo+ICsJcmV0ID0gZXh5bm9zX2J1c19w
cm9maWxlX2luaXQoYnVzLCBwcm9maWxlKTsKPiArCWlmIChyZXQgPCAwKQo+ICAJCWdvdG8gZXJy
Owo+IC0JfQo+IC0Jb25kZW1hbmRfZGF0YS0+dXB0aHJlc2hvbGQgPSA0MDsKPiAtCW9uZGVtYW5k
X2RhdGEtPmRvd25kaWZmZXJlbnRpYWwgPSA1Owo+IC0KPiAtCS8qIEFkZCBkZXZmcmVxIGRldmlj
ZSB0byBtb25pdG9yIGFuZCBoYW5kbGUgdGhlIGV4eW5vcyBidXMgKi8KPiAtCWJ1cy0+ZGV2ZnJl
cSA9IGRldm1fZGV2ZnJlcV9hZGRfZGV2aWNlKGRldiwgcHJvZmlsZSwKPiAtCQkJCQkJREVWRlJF
UV9HT1ZfU0lNUExFX09OREVNQU5ELAo+IC0JCQkJCQlvbmRlbWFuZF9kYXRhKTsKPiAtCWlmIChJ
U19FUlIoYnVzLT5kZXZmcmVxKSkgewo+IC0JCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGFkZCBk
ZXZmcmVxIGRldmljZVxuIik7Cj4gLQkJcmV0ID0gUFRSX0VSUihidXMtPmRldmZyZXEpOwo+IC0J
CWdvdG8gZXJyOwo+IC0JfQo+IC0KPiAtCS8qIFJlZ2lzdGVyIG9wcF9ub3RpZmllciB0byBjYXRj
aCB0aGUgY2hhbmdlIG9mIE9QUCAgKi8KPiAtCXJldCA9IGRldm1fZGV2ZnJlcV9yZWdpc3Rlcl9v
cHBfbm90aWZpZXIoZGV2LCBidXMtPmRldmZyZXEpOwo+IC0JaWYgKHJldCA8IDApIHsKPiAtCQlk
ZXZfZXJyKGRldiwgImZhaWxlZCB0byByZWdpc3RlciBvcHAgbm90aWZpZXJcbiIpOwo+IC0JCWdv
dG8gZXJyOwo+IC0JfQo+IC0KPiAtCS8qCj4gLQkgKiBFbmFibGUgZGV2ZnJlcS1ldmVudCB0byBn
ZXQgcmF3IGRhdGEgd2hpY2ggaXMgdXNlZCB0byBkZXRlcm1pbmUKPiAtCSAqIGN1cnJlbnQgYnVz
IGxvYWQuCj4gLQkgKi8KPiAtCXJldCA9IGV4eW5vc19idXNfZW5hYmxlX2VkZXYoYnVzKTsKPiAt
CWlmIChyZXQgPCAwKSB7Cj4gLQkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZW5hYmxlIGRldmZy
ZXEtZXZlbnQgZGV2aWNlc1xuIik7Cj4gLQkJZ290byBlcnI7Cj4gLQl9Cj4gLQo+IC0JcmV0ID0g
ZXh5bm9zX2J1c19zZXRfZXZlbnQoYnVzKTsKPiAtCWlmIChyZXQgPCAwKSB7Cj4gLQkJZGV2X2Vy
cihkZXYsICJmYWlsZWQgdG8gc2V0IGV2ZW50IHRvIGRldmZyZXEtZXZlbnQgZGV2aWNlc1xuIik7
Cj4gLQkJZ290byBlcnI7Cj4gLQl9Cj4gIAo+ICAJZ290byBvdXQ7Cj4gIHBhc3NpdmU6Cj4gCgpB
cHBsaWVkIGl0LiBUaGFua3MuCgotLSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3Vu
ZyBFbGVjdHJvbmljcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
