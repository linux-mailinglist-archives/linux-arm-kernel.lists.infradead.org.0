Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F741258D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 02:35:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YPiDuZxUV0FmjNNMbz4fNyfg/LV6DCMmzR9Hy53qvWw=; b=aM09JWxNRfUq5I
	L4MuvJhaFpWBOv/aNMzn0iCKm9nyeWj41giSzckTT8dsVu8QQEvv8YwMou/XI5MEjdl8G8mcH6e6z
	Do9fqRvKPXY7r2gijwdPvn3C7B6qMbrWI07yzZIJWSUR5BB2uZKixtb4zDMqiwF0jh5qWL3hAUQVA
	pwsXZusK7EpY4F+G3lZgvYqm5v1jekkzwv9AxUkRy31mXEFetGyOqJ6/EdXiuISZTmql8bWQvDuJJ
	vUm7jfzZZj8W4oJTgybsjRARKr12Gvu21lBf3nXEe5VivmOXF3H22i4nr2DRIstYCToH5ygFfMwsU
	ngJLO6xmJfcMqUqJOxtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMMB0-0000li-Ur; Fri, 03 May 2019 00:35:46 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMMAs-0000kJ-Q7
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 00:35:40 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20190503003530epoutp010478df8bfeddde1e255d6fcb816d468e~bBR-SdQta0202502025epoutp01K
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  3 May 2019 00:35:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20190503003530epoutp010478df8bfeddde1e255d6fcb816d468e~bBR-SdQta0202502025epoutp01K
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1556843730;
 bh=cDQEru1Tw2z50+9t//LrLBZsWuKsegv3LHRxivmR64o=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=dd7Cf36r3IntTas7/on7JysY/MmLMIxMY6s4CrnRvAIfjtiKARH/hiqaJYORZjg1P
 CuB7Yay+CogQJoszmJGGdoNIipIigKpaoqmxD2dQI/NU7XGsG6VgOENOpM2dbd9Gx9
 5KuXu4yqWOM61McZL40j+Mbe4VFmoOj3UwrAsVWI=
Received: from epsmges1p1.samsung.com (unknown [182.195.40.156]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20190503003526epcas1p4008bb96b5e6415e24524e6da35425c6a~bBR71WaWe2374923749epcas1p4o;
 Fri,  3 May 2019 00:35:26 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 30.5C.04139.ECC8BCC5; Fri,  3 May 2019 09:35:26 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190503003526epcas1p2d654d5c22d134d92a12fb920fcdfb74e~bBR7LnBA42529225292epcas1p2a;
 Fri,  3 May 2019 00:35:26 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190503003525epsmtrp1c2cc8c3e9ce3eb6673d8a5d7c8352ee8~bBR7KYy6H0451104511epsmtrp1C;
 Fri,  3 May 2019 00:35:25 +0000 (GMT)
X-AuditID: b6c32a35-98bff7000000102b-cc-5ccb8ccefce9
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 2C.C6.03662.DCC8BCC5; Fri,  3 May 2019 09:35:25 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190503003525epsmtip1b9fbc6243bc8cc7fc0726d76f3f3443c~bBR63FE4f1682516825epsmtip1S;
 Fri,  3 May 2019 00:35:25 +0000 (GMT)
Subject: Re: [PATCH v5 1/6] devfreq: rockchip-dfi: Move GRF definitions to a
 common place.
To: =?UTF-8?Q?Ga=c3=abl_PORTAY?= <gael.portay@collabora.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Rob
 Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Enric
 Balletbo i Serra <enric.balletbo@collabora.com>, Lin Huang
 <hl@rock-chips.com>, Brian Norris <briannorris@chromium.org>, Douglas
 Anderson <dianders@chromium.org>, Klaus Goger
 <klaus.goger@theobroma-systems.com>, Derek Basehore
 <dbasehore@chromium.org>, Randy Li <ayaka@soulik.info>,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <1f5cbebb-811d-d181-6d7f-83be6954514f@samsung.com>
Date: Fri, 3 May 2019 09:36:44 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190502175820.25382-2-gael.portay@collabora.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Te0xTdxTH8+t99ILrdimCZ2zZ8O6RQIJwwcKPRdCkztxkbGNZsmyEjF3h
 piX0ZW8xuieIOmTgdLKwFaZDYDpkwNrOIUq6leoGahUb0eDKiDKDQKZAMG5qXMuFjP8+5/s7
 39855/dgCO1DOoEptTgku0U0cXQ0ebw/KTUlUHu2MK2zPglPhv5F2DVzm8KT7lM0PuQPUPj8
 d7/SuOOaD+HW3mkaP7o+ReF73YMEdgdqKTx/4IgKn98xrcauG8MUDvY20Xiuzo/w7NgjArdd
 GVLha5VHabyrz6/eECt0HOxAQmPFECn0hFqR4GrfQwvu1k+Eh04vKez1tCPh5+GDhFAVaqCE
 H653k8Kc65n8FQVl64ySWCLZEyVLsbWk1GLI4V55s0hfpMtM41P4bJzFJVpEs5TDbczLT9lU
 agrPxyVuFU3lYSlflGUuNXed3VrukBKNVtmRw0m2EpMt27ZGFs1yucWwpthqfolPS0vXhRPf
 KzNOdLaQth3cttE7HnUFmnuqBkUxwK6FMdccUYOiGS3bg8D3zzlKCWYRjAVHSCW4i2Dfrfvk
 kqX65ChSFvoQ/FIxtOi/jaCpyh8OGCaWLYT+OykRfSV7hIJjl3pRxE2wOVD5431VhGk2GbwT
 V+kIP8Guhsv3bizkaNhcaG/uV0X2IdnnIeDbFpHj2LfhzzPdlJISAwNfjy80FMWuh77Jpe1X
 wcj4IZXCz0LVT42E0vS8Gjr3Riu8ER5cdFIKx8Lkbx61wglw6/Pdi/wBfD/gpyP9A1uNwOO9
 uGjIAG/bgYXeCDYJunpTlVqPw9/ztVREBlYD1bu1SvZzEBwLqRR+Elo+3UMrLECo7ktqH1rt
 XDaNc9kEzmUTOP8v9i0i21G8ZJPNBknmbfzyy3ahhaefrOtB9YE8H2IZxD2mgdHBQi0lbpW3
 m30IGIJbqXl3JixpSsTt70t2a5G93CTJPqQLn/V+IiGu2Br+SBZHEa9Lz8jIwGv5TB3Pc6s0
 XRv0hVrWIDqkMkmySfYln4qJSqhALxcUwPxgne5k5Udxo5m73tn0V9OxLc03N+u55t8/nHDz
 8Zs/fnG4tCM+9/iZYNbrMacvzMa92nlly4On6zUt2fqb5m+G968vqBkIXjKcxhPuqS8+o8an
 2w43CC9k3fVP+T0zh6O8huq39K/F/GFMf2NnV2Vj/UhD/FcnDEdVxXk7nZYAR8pGkU8m7LL4
 H5+3en8QBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBIsWRmVeSWpSXmKPExsWy7bCSnO7ZntMxBm0Nphav7v5itNj08T2r
 xavNe9gs5h85x2pxdtlBNos1tw8xWizZ9YbN4v+j16wWPzacYrbYfK6H1eLr5OVMFmeb3rBb
 bHp8jdXi8q45bBafe48wWnx68J/ZYun1i0wWtxtXsFm07j3C7iDssWbeGkaP2Q0XWTx23F3C
 6LFpVSebx+Yl9R5/Z+1n8ejbsorRY/u1ecwezXens3qsfbSBxePzJrkA7igum5TUnMyy1CJ9
 uwSujBfrFrMUNClV3Puwhb2B8bN0FyMnh4SAiUTH7nuMXYxcHEICuxklPj29ww6RkJSYdvEo
 cxcjB5AtLHH4cDFEzVtGia7ta9hA4sICMRKHP+iCxEUEVrJKTJ21FqyXWcBWonHjbyaIhuOM
 EovnrmMGSbAJaEnsf3GDDcTmF1CUuPrjMSOIzStgJ7Fq4WEmkKEsAioS5w5VgIRFBSIkzrxf
 wQJRIihxcuYTMJtTwF5i76tdjBC71CX+zLvEDGGLS9x6Mp8JwpaXaN46m3kCo/AsJO2zkLTM
 QtIyC0nLAkaWVYySqQXFuem5xYYFRnmp5XrFibnFpXnpesn5uZsYwfGvpbWD8cSJ+EOMAhyM
 Sjy8EvdOxQixJpYVV+YeYpTgYFYS4Y37CBTiTUmsrEotyo8vKs1JLT7EKM3BoiTOK59/LFJI
 ID2xJDU7NbUgtQgmy8TBKdXA2NY4dbKW8m/eR8f3vTweVltxVN8v5dg15pKZDLuCVt0M4ms+
 NsVvtYL/yiIF6f7G6Re+5rq2KR32Egy+srLEq9RFYP+dY9XGL8wN0+Kn/lribzrnZPTkIJb4
 F7sbl153PzjFZXt4VX2B5haHd4tepD1/cU931504pgrZ1Q13pQs+Xn5Y6DaVT4mlOCPRUIu5
 qDgRABZ8luf7AgAA
X-CMS-MailID: 20190503003526epcas1p2d654d5c22d134d92a12fb920fcdfb74e
X-Msg-Generator: CA
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190502175826epcas1p43c82151e13a9d7708d46ad78c113ba76
References: <20190502175820.25382-1-gael.portay@collabora.com>
 <CGME20190502175826epcas1p43c82151e13a9d7708d46ad78c113ba76@epcas1p4.samsung.com>
 <20190502175820.25382-2-gael.portay@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_173539_017024_E1EB0427 
X-CRM114-Status: GOOD (  30.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, kernel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR2HDq2wsCgpUaGUgcGF0Y2gxIHdhcyBhbHJlYWR5IGFwcGxpZWQgdG8gZGV2ZnJlcS5naXQK
YW5kIHRoZW4gaXQgd2FzIGFwcGxpZWQgdG8gbGludXgtcG0uZ2l0IHRocm91Z2gKcHVsbCByZXF1
ZXN0IG9mIGRldmZyZXEuCgpbMV0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4
L2tlcm5lbC9naXQvcmFmYWVsL2xpbnV4LXBtLmdpdC9jb21taXQvP2g9YmxlZWRpbmctZWRnZSZp
ZD1hZGZlM2I3NjYwOGZmZTU0N2FmNWE3NDQxNWYxNTQ5OWI3OThmMzJhCgpPbiAxOS4gNS4gMy4g
7Jik7KCEIDI6NTgsIEdhw6tsIFBPUlRBWSB3cm90ZToKPiBGcm9tOiBFbnJpYyBCYWxsZXRibyBp
IFNlcnJhIDxlbnJpYy5iYWxsZXRib0Bjb2xsYWJvcmEuY29tPgo+IAo+IFNvbWUgcmszMzk5IEdS
RiAoR2VuZXJpYyBSZWdpc3RlciBGaWxlcykgZGVmaW5pdGlvbnMgY2FuIGJlIHVzZWQgZm9yCj4g
ZGlmZmVyZW50IGRyaXZlcnMuIE1vdmUgdGhlc2UgZGVmaW5pdGlvbnMgdG8gYSBjb21tb24gaW5j
bHVkZSBzbyB3ZQo+IGRvbid0IG5lZWQgdG8gZHVwbGljYXRlIHRoZXNlIGRlZmluaXRpb25zLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IEVucmljIEJhbGxldGJvIGkgU2VycmEgPGVucmljLmJhbGxldGJv
QGNvbGxhYm9yYS5jb20+Cj4gQWNrZWQtYnk6IENoYW53b28gQ2hvaSA8Y3cwMC5jaG9pQHNhbXN1
bmcuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEdhw6tsIFBPUlRBWSA8Z2FlbC5wb3J0YXlAY29sbGFi
b3JhLmNvbT4KPiBBY2tlZC1ieTogTXl1bmdKb28gSGFtIDxteXVuZ2pvby5oYW1Ac2Ftc3VuZy5j
b20+Cj4gLS0tCj4gCj4gQ2hhbmdlcyBpbiB2NTogTm9uZQo+IAo+IENoYW5nZXMgaW4gdjQ6Cj4g
LSBbUEFUQ0ggdjMgMS81XSBBZGQgQWNrZWQtYnk6IE15dW5nSm9vIEhhbSA8bXl1bmdqb28uaGFt
QHNhbXN1bmcuY29tPi4KPiAKPiBDaGFuZ2VzIGluIHYzOgo+IC0gW1BBVENIIHYyIDEvNV0gQWRk
IFNpZ25lZC1vZmYtYnk6IEdhw6tsIFBPUlRBWSA8Z2FlbC5wb3J0YXlAY29sbGFib3JhLmNvbT4u
Cj4gCj4gQ2hhbmdlcyBpbiB2MjoKPiAtIFtQQVRDSCAxLzhdIFJlYWxseSBhZGQgQWNrZWQtYnk6
IENoYW53b28gQ2hvaSA8Y3cwMC5jaG9pQHNhbXN1bmcuY29tPi4KPiAKPiBDaGFuZ2VzIGluIHYx
Ogo+IC0gW1JGQyAxLzEwXSBBZGQgQWNrZWQtYnk6IENoYW53b28gQ2hvaSA8Y3cwMC5jaG9pQHNh
bXN1bmcuY29tPgo+IC0gW1JGQyAxLzEwXSBzL0dlbmVyaWMvR2VuZXJhbC8gKFJvYmluIE11cnBo
eSkKPiAtIFtSRkMgNC8xMF0gUmVtb3ZlZCBmcm9tIHRoZSBzZXJpZXMuIEkgZGlkIG5vdCBmb3Vu
ZCBhIHVzZSBjYXNlIHdoZXJlIG5vdCBob2xkaW5nIHRoZSBtdXRleCBjYXVzZXMgdGhlIGlzc3Vl
Lgo+IC0gW1JGQyA3LzEwXSBSZW1vdmVkIGZyb20gdGhlIHNlcmllcy4gSSBkaWQgbm90IGZvdW5k
IGEgdXNlIGNhc2Ugd2hlcmUgdGhpcyBtYXR0ZXJzLgo+IAo+ICBkcml2ZXJzL2RldmZyZXEvZXZl
bnQvcm9ja2NoaXAtZGZpLmMgfCAyMyArKysrKysrLS0tLS0tLS0tLS0tLS0tLQo+ICBpbmNsdWRl
L3NvYy9yb2NrY2hpcC9yazMzOTlfZ3JmLmggICAgfCAyMSArKysrKysrKysrKysrKysrKysrKysK
PiAgMiBmaWxlcyBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKPiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvc29jL3JvY2tjaGlwL3JrMzM5OV9ncmYuaAo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZXZlbnQvcm9ja2NoaXAtZGZpLmMgYi9kcml2
ZXJzL2RldmZyZXEvZXZlbnQvcm9ja2NoaXAtZGZpLmMKPiBpbmRleCAyMmIxMTMzNjNmZmMuLjJm
YmJjYmViNjQ0ZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvZXZlbnQvcm9ja2NoaXAt
ZGZpLmMKPiArKysgYi9kcml2ZXJzL2RldmZyZXEvZXZlbnQvcm9ja2NoaXAtZGZpLmMKPiBAQCAt
MjYsNiArMjYsOCBAQAo+ICAjaW5jbHVkZSA8bGludXgvbGlzdC5oPgo+ICAjaW5jbHVkZSA8bGlu
dXgvb2YuaD4KPiAgCj4gKyNpbmNsdWRlIDxzb2Mvcm9ja2NoaXAvcmszMzk5X2dyZi5oPgo+ICsK
PiAgI2RlZmluZSBSSzMzOTlfRE1DX05VTV9DSAkyCj4gIAo+ICAvKiBERFJNT05fQ1RSTCAqLwo+
IEBAIC00MywxOCArNDUsNiBAQAo+ICAjZGVmaW5lIEREUk1PTl9DSDFfQ09VTlRfTlVNCQkweDNj
Cj4gICNkZWZpbmUgRERSTU9OX0NIMV9ERklfQUNDRVNTX05VTQkweDQwCj4gIAo+IC0vKiBwbXUg
Z3JmICovCj4gLSNkZWZpbmUgUE1VR1JGX09TX1JFRzIJMHgzMDgKPiAtI2RlZmluZSBERFJUWVBF
X1NISUZUCTEzCj4gLSNkZWZpbmUgRERSVFlQRV9NQVNLCTcKPiAtCj4gLWVudW0gewo+IC0JRERS
MyA9IDMsCj4gLQlMUEREUjMgPSA2LAo+IC0JTFBERFI0ID0gNywKPiAtCVVOVVNFRCA9IDB4RkYK
PiAtfTsKPiAtCj4gIHN0cnVjdCBkbWNfdXNhZ2Ugewo+ICAJdTMyIGFjY2VzczsKPiAgCXUzMiB0
b3RhbDsKPiBAQCAtODMsMTYgKzczLDE3IEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX2RmaV9zdGFy
dF9oYXJkd2FyZV9jb3VudGVyKHN0cnVjdCBkZXZmcmVxX2V2ZW50X2RldiAqZWRldikKPiAgCXUz
MiBkZHJfdHlwZTsKPiAgCj4gIAkvKiBnZXQgZGRyIHR5cGUgKi8KPiAtCXJlZ21hcF9yZWFkKGlu
Zm8tPnJlZ21hcF9wbXUsIFBNVUdSRl9PU19SRUcyLCAmdmFsKTsKPiAtCWRkcl90eXBlID0gKHZh
bCA+PiBERFJUWVBFX1NISUZUKSAmIEREUlRZUEVfTUFTSzsKPiArCXJlZ21hcF9yZWFkKGluZm8t
PnJlZ21hcF9wbXUsIFJLMzM5OV9QTVVHUkZfT1NfUkVHMiwgJnZhbCk7Cj4gKwlkZHJfdHlwZSA9
ICh2YWwgPj4gUkszMzk5X1BNVUdSRl9ERFJUWVBFX1NISUZUKSAmCj4gKwkJICAgIFJLMzM5OV9Q
TVVHUkZfRERSVFlQRV9NQVNLOwo+ICAKPiAgCS8qIGNsZWFyIEREUk1PTl9DVFJMIHNldHRpbmcg
Ki8KPiAgCXdyaXRlbF9yZWxheGVkKENMUl9ERFJNT05fQ1RSTCwgZGZpX3JlZ3MgKyBERFJNT05f
Q1RSTCk7Cj4gIAo+ICAJLyogc2V0IGRkciB0eXBlIHRvIGRmaSAqLwo+IC0JaWYgKGRkcl90eXBl
ID09IExQRERSMykKPiArCWlmIChkZHJfdHlwZSA9PSBSSzMzOTlfUE1VR1JGX0REUlRZUEVfTFBE
RFIzKQo+ICAJCXdyaXRlbF9yZWxheGVkKExQRERSM19FTiwgZGZpX3JlZ3MgKyBERFJNT05fQ1RS
TCk7Cj4gLQllbHNlIGlmIChkZHJfdHlwZSA9PSBMUEREUjQpCj4gKwllbHNlIGlmIChkZHJfdHlw
ZSA9PSBSSzMzOTlfUE1VR1JGX0REUlRZUEVfTFBERFI0KQo+ICAJCXdyaXRlbF9yZWxheGVkKExQ
RERSNF9FTiwgZGZpX3JlZ3MgKyBERFJNT05fQ1RSTCk7Cj4gIAo+ICAJLyogZW5hYmxlIGNvdW50
LCB1c2Ugc29mdHdhcmUgbW9kZSAqLwo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3NvYy9yb2NrY2hp
cC9yazMzOTlfZ3JmLmggYi9pbmNsdWRlL3NvYy9yb2NrY2hpcC9yazMzOTlfZ3JmLmgKPiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uM2VlYmFiY2IyODEyCj4gLS0t
IC9kZXYvbnVsbAo+ICsrKyBiL2luY2x1ZGUvc29jL3JvY2tjaGlwL3JrMzM5OV9ncmYuaAo+IEBA
IC0wLDAgKzEsMjEgQEAKPiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjArICov
Cj4gKy8qCj4gKyAqIFJvY2tjaGlwIEdlbmVyYWwgUmVnaXN0ZXIgRmlsZXMgZGVmaW5pdGlvbnMK
PiArICoKPiArICogQ29weXJpZ2h0IChjKSAyMDE4LCBDb2xsYWJvcmEgTHRkLgo+ICsgKiBBdXRo
b3I6IEVucmljIEJhbGxldGJvIGkgU2VycmEgPGVucmljLmJhbGxldGJvQGNvbGxhYm9yYS5jb20+
Cj4gKyAqLwo+ICsKPiArI2lmbmRlZiBfX1NPQ19SSzMzOTlfR1JGX0gKPiArI2RlZmluZSBfX1NP
Q19SSzMzOTlfR1JGX0gKPiArCj4gKy8qIFBNVSBHUkYgUmVnaXN0ZXJzICovCj4gKyNkZWZpbmUg
UkszMzk5X1BNVUdSRl9PU19SRUcyCQkweDMwOAo+ICsjZGVmaW5lIFJLMzM5OV9QTVVHUkZfRERS
VFlQRV9TSElGVAkxMwo+ICsjZGVmaW5lIFJLMzM5OV9QTVVHUkZfRERSVFlQRV9NQVNLCTcKPiAr
I2RlZmluZSBSSzMzOTlfUE1VR1JGX0REUlRZUEVfRERSMwkzCj4gKyNkZWZpbmUgUkszMzk5X1BN
VUdSRl9ERFJUWVBFX0xQRERSMgk1Cj4gKyNkZWZpbmUgUkszMzk5X1BNVUdSRl9ERFJUWVBFX0xQ
RERSMwk2Cj4gKyNkZWZpbmUgUkszMzk5X1BNVUdSRl9ERFJUWVBFX0xQRERSNAk3Cj4gKwo+ICsj
ZW5kaWYKPiAKCgotLSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJv
bmljcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
