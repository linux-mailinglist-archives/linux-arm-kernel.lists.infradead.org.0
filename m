Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0D717D757
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 01:41:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f7Kx4swp/CLOT+7l8+RLdYUsIPKRYId+Vd1b4aVTfeg=; b=mb1mlTltNtLJaz
	loWiJagAymIb2Ved9TIC5Ak7FgFr8NsRBbLN6YvYZ6HuW+TwYwTR6nPnQmMmOmjNE6GqcTYd3GVMD
	YsC6mBjYDkWD6sIXNcfIYGTDZ3c/GKyVjv20uQTS5LR/r8HwcQB1iiq0KJHgpT/vWt8JIYO1KhVho
	VBOlFSTTg7gc+xIEpPrjdpP1Nv/QO1+RBdnHd3f9wsIZCjNgAtKpEniM5q6HO8fNlJpvEKXspYrYk
	EieNhttM3sfPBRzW4KYhcA8Ajc/b/dghPKIyQYhebqqdkarmyJVR1VesBUSNdH+JnpkcT1QkAdTVu
	MaQF3Zqqf+2LZwRYoLBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB6Tv-0003nE-6C; Mon, 09 Mar 2020 00:41:19 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB6Tj-0003mV-QR
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 00:41:11 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200309004101epoutp014aa09952eba0522aba44bc022b5d68e0~6e_lwSs-81956119561epoutp017
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  9 Mar 2020 00:41:01 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200309004101epoutp014aa09952eba0522aba44bc022b5d68e0~6e_lwSs-81956119561epoutp017
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1583714461;
 bh=XZ9yoeNX+hkQonqKUDRvDFm0GYq1xg16IKUz5yY2Agg=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=U1S9abl/M9uAQuxA6mcrhyCxx1h/ZmK/61fJjbAwYswoYazXmoHm+wSwYqARcha9q
 Y893G1zvo0uvUHMzDqc7d59P43x2UpizXiai+9CLPg/TWhP6jXezBPE84u0c6/de/t
 JQyGy7esVyZSy+fnvVi5L5Xfe2epwsKhHYpYckGU=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20200309004100epcas1p3e13fae332c5d0350ab3e4b092091110e~6e_k6cll71944319443epcas1p3h;
 Mon,  9 Mar 2020 00:41:00 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.153]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 48bKCF5TBfzMqYkZ; Mon,  9 Mar
 2020 00:40:57 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 6B.7A.48019.890956E5; Mon,  9 Mar 2020 09:40:56 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200309004056epcas1p264978098770f6a81ea6d7a9c1c1df256~6e_hACnr33000430004epcas1p2g;
 Mon,  9 Mar 2020 00:40:56 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200309004056epsmtrp1720d241cefb1d59063b2a4f3468e626e~6e_g-JLgC2492024920epsmtrp1F;
 Mon,  9 Mar 2020 00:40:56 +0000 (GMT)
X-AuditID: b6c32a38-23fff7000001bb93-71-5e659098584f
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 5D.FD.10238.890956E5; Mon,  9 Mar 2020 09:40:56 +0900 (KST)
Received: from [10.113.221.211] (unknown [10.113.221.211]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200309004056epsmtip22b2048432a3af7077f66fa5ae195b41e~6e_gqbYL42713127131epsmtip2d;
 Mon,  9 Mar 2020 00:40:56 +0000 (GMT)
Subject: Re: [PATCH] drm/exynos: Fix memory leak and release IOMMU mapping
 structures
To: Lukasz Luba <lukasz.luba@arm.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
From: Inki Dae <inki.dae@samsung.com>
Message-ID: <c69c1163-a75b-6667-1979-f3aa356dc0b4@samsung.com>
Date: Mon, 9 Mar 2020 09:45:24 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200304220022.8003-1-lukasz.luba@arm.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Tf0wTZxjOd3e9HsTOWxF50yUCly2mJNiepfrpKNkyt5yZ2UiWbW4m1Ev5
 AoT22vQKG+oyhMUodoMOY7rCNk0YQ8KmVAUlMBQTGRp+zZ9xU1A0E5mSaGAubba1PZfx3/O8
 3/PmfZ73+z6ONv7GmrgKJUD8iuwW2HSm55zZmh9uIiXWjvtmfOPHMR3+fGyEwt3hozr8T0+I
 xveaTtL48sI8i+/fmmRw48wcjcfHj+nxaN0fehyduarDl/paWRwe/4nCh+s+0+Nw8yz7ynKp
 65suJA0sHmKkaOc+VupdnNZJU/uHKel426fSFyc6kfQkuqqY+7CysJzIpcSfQxSXt7RCKXMI
 b77jfM1pX2cV88UNeL2Qo8ge4hA2bSnOf6PCnTAv5FTL7qpEqVhWVcFSVOj3VgVITrlXDTgE
 4it1+zb41qiyR61Syta4vJ6NotW61p4Qbq8snwvW074+8eP4dJ2uFv26ugFxHPAFcHwwuwGl
 c0b+FIL2eJzWyGMEwSsxSiOLCOb7DqAGlJbq6J6L6bWDAQRHgpdZjcwjODbSRiVVGfz7cObW
 n6mDFXw3gutdp1GS0PwMgn3Rg0xSxfIvQahjik1iA18EU8PfpzDDvwgPwhN00mEmvxUuLsia
 5HkY+eoukyyn8RjafxGTZZrPght3v6U0nA31J1tSGYDv0cOFnqeUZnsTBEPtrIYz4MHwCb2G
 TTDbuEevNdQjCIUvUhrZi+DmzDVGU9lg8LtmKjmZ5s1wtM+ilXPhdOxrpE1+Dh4tBHXaVg2w
 d49RkwhwfvL6s9UBTLSFnnmQYHI2zjSh3MiSaJEleSJL8kT+H3wIMZ1oJfGpnjKiir6Cpdcd
 RamXnYdPof6xLUOI55CwzDCdTUqMOrlarfEMIeBoYYVhd56rxGgolWt2EL/X6a9yE3UI2ROL
 D9GmTJc38U+UgFO0r7XZbLhAXGcXRSHLcPsDc4mRL5MDpJIQH/H/10dxaaZa9HLwrKu/d3mx
 bZv3yO+R/R07c2OWuPOF1idPW5TRhzXNm69lZGWeO3vhbcdul6/3LUuWeDC4K65O+He4Y04O
 Br9c3Hj49VhL/MzqmLly9Pyl9Q/vCNtfze7+ZFg80Fpk/msVpFf/YNm22fSectORW2ud+3nn
 u393NO4q7B+4+lF0a6HAqOWymEf7Vflf7AsHAu8DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrFIsWRmVeSWpSXmKPExsWy7bCSvO6MCalxBrPn8lncWneO1aL33Ekm
 i40z1rNa/N82kdni6YStzBZXvr5ns3hx7yKLRf/j18wW589vYLc42/SG3WLT42usFpd3zWGz
 mHF+H5PFwqYWdosZk1+yOfB7rJm3htFj77cFLB6bVnWyeWz/9oDV4373cSaPzUvqPfq2rGL0
 +LxJLoAjissmJTUnsyy1SN8ugSvjdU8zc8Euw4o/D5pYGxhvq3cxcnJICJhIbHz9m72LkYtD
 SGA3o8SzU7eAHA6ghITElq0cEKawxOHDxRAlbxklrj9rYgHpFRYIlzhw7zsbSEJEYCOjxPzz
 K1hAHGaBx4wSzVvOMkO0dDNKrJnRzQbSwiagKjFxxX0wm1fATuL+8eVgNouAisSrGReYQWxR
 gQiJ59tvMELUCEqcnPmEBeQMTgELiWWXDEHCzALqEn/mXWKGsMUlbj2ZzwRhy0s0b53NPIFR
 aBaS7llIWmYhaZmFpGUBI8sqRsnUguLc9NxiwwLDvNRyveLE3OLSvHS95PzcTYzgGNXS3MF4
 eUn8IUYBDkYlHt4H8qlxQqyJZcWVuYcYJTiYlUR4G7WS44R4UxIrq1KL8uOLSnNSiw8xSnOw
 KInzPs07FikkkJ5YkpqdmlqQWgSTZeLglGpg1FgpPOPbvr+LGniqVa8+mGpvN02l2ezbqtdy
 /A98P8WXyjsE7DxgXPWXgaOnNzrB5+bhbd+qc/ol2XWCf71sf5LKOF+8229fSiKHxSwTTa20
 f7ul2vVnnGwX/25/LNU5tYG3ff35x3ufJdvqXos5Xbhc73mFhcBW0ZSn3ZkfWU/xnzdpn/tT
 iaU4I9FQi7moOBEA86vmLM0CAAA=
X-CMS-MailID: 20200309004056epcas1p264978098770f6a81ea6d7a9c1c1df256
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200304220104epcas1p2d65f8ab31df6aa5373787b695b14f8ff
References: <CGME20200304220104epcas1p2d65f8ab31df6aa5373787b695b14f8ff@epcas1p2.samsung.com>
 <20200304220022.8003-1-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_174108_289075_146528B0 
X-CRM114-Status: GOOD (  29.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: jy0922.shim@samsung.com, b.zolnierkie@samsung.com, airlied@linux.ie,
 sw0312.kim@samsung.com, krzk@kernel.org, a.hajda@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, daniel@ffwll.ch,
 Dietmar.Eggemann@arm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTHVrYXN6LAoKMjAuIDMuIDUuIOyYpOyghCA3OjAw7JeQIEx1a2FzeiBMdWJhIOydtCjqsIAp
IOyTtCDquIA6Cj4gVGhlcmUgaXMgYSBtZW1vcnkgbGVhayB3aGljaCBsZWZ0IHNvbWUgb2JqZWN0
cyBub3QgZnJlZWQuIFRoZSByZWZlcmVuY2UKPiBjb3VudGVyIG9mIG1hcHBpbmc6ICdtYXBwaW5n
LT5rcmVmJyB3YXMgMiB3aGVuIGNhbGxpbmcKPiBhcm1faW9tbXVfZGV0YWNoX2RldmljZSgpLCBz
byB0aGUgcmVsZWFzZV9pb21tdV9tYXBwaW5nKCkgd29uJ3QgYmUgY2FsbGVkLgo+IFNpbmNlIHRo
ZSBvbGQgbWFwcGluZyBzdHJ1Y3R1cmUgaXMgbm90IGdvaW5nIHRvIGJlIHVzZWQgYW55IG1vcmUg
KGJlY2F1c2UKPiBpdCBpcyBkZXRhY2hlZCBhbmQgbmV3IG9uZSBhdHRhY2hlZCksIGNhbGwgYXJt
X2lvbW11X3JlbGVhc2VfbWFwcGluZygpCj4gdG8gdHJpZ2dlciBjbGVhbnVwLgo+IAo+IEZvdW5k
IHVzaW5nIGttZW1sZWFrIGRldGVjdG9yLCB0aGUgb3V0cHV0Ogo+IAo+IHVucmVmZXJlbmNlZCBv
YmplY3QgMHhjMjEzNzY0MCAoc2l6ZSA2NCk6Cj4gICBjb21tICJzd2FwcGVyLzAiLCBwaWQgMSwg
amlmZmllcyA0Mjk0OTM3OTAwIChhZ2UgMzEyNy40MDBzKQo+ICAgaGV4IGR1bXAgKGZpcnN0IDMy
IGJ5dGVzKToKPiAgICAgNTAgYTMgMTQgYzIgODAgYTIgMTQgYzIgMDEgMDAgMDAgMDAgMjAgMDAg
MDAgMDAgIFAuLi4uLi4uLi4uLiAuLi4KPiAgICAgMDAgMTAgMDAgMDAgMDAgODAgMDAgMDAgMDAg
MDAgMDAgMDAgMDAgMDAgMDAgMDAgIC4uLi4uLi4uLi4uLi4uLi4KPiAgIGJhY2t0cmFjZToKPiAg
ICAgWzwzYWNkMjY4ZD5dIGFyY2hfc2V0dXBfZG1hX29wcysweDRjLzB4MTA0Cj4gICAgIFs8OWY3
ZDJjY2U+XSBvZl9kbWFfY29uZmlndXJlKzB4MTljLzB4M2E0Cj4gICAgIFs8YmEwNzcwNGI+XSBy
ZWFsbHlfcHJvYmUrMHhiMC8weDQ3Ywo+ICAgICBbPDRmNTEwZTRmPl0gZHJpdmVyX3Byb2JlX2Rl
dmljZSsweDc4LzB4MWM0Cj4gICAgIFs8NzQ4MWEwY2Y+XSBkZXZpY2VfZHJpdmVyX2F0dGFjaCsw
eDU4LzB4NjAKPiAgICAgWzwwZmY4ZjVjMT5dIF9fZHJpdmVyX2F0dGFjaCsweGI4LzB4MTU4Cj4g
ICAgIFs8ODYwMDYxNDQ+XSBidXNfZm9yX2VhY2hfZGV2KzB4NzQvMHhiNAo+ICAgICBbPDEwMTU5
ZGNhPl0gYnVzX2FkZF9kcml2ZXIrMHgxYzAvMHgyMDAKPiAgICAgWzw4YTI2NTI2NT5dIGRyaXZl
cl9yZWdpc3RlcisweDc0LzB4MTA4Cj4gICAgIFs8ZTBmMzQ1MWE+XSBleHlub3NfZHJtX2luaXQr
MHhiMC8weDEzNAo+ICAgICBbPGRiM2ZjN2JhPl0gZG9fb25lX2luaXRjYWxsKzB4OTAvMHg0NTgK
PiAgICAgWzw2ZGEzNTkxNz5dIGtlcm5lbF9pbml0X2ZyZWVhYmxlKzB4MTg4LzB4MjAwCj4gICAg
IFs8ZGIzZjc0ZDQ+XSBrZXJuZWxfaW5pdCsweDgvMHgxMTAKPiAgICAgWzwxZjNjZGRmOT5dIHJl
dF9mcm9tX2ZvcmsrMHgxNC8weDIwCj4gICAgIFs8OGNkMTI1MDc+XSAweDAKPiB1bnJlZmVyZW5j
ZWQgb2JqZWN0IDB4YzIxNGEyODAgKHNpemUgMTI4KToKPiAgIGNvbW0gInN3YXBwZXIvMCIsIHBp
ZCAxLCBqaWZmaWVzIDQyOTQ5Mzc5MDAgKGFnZSAzMTI3LjQwMHMpCj4gICBoZXggZHVtcCAoZmly
c3QgMzIgYnl0ZXMpOgo+ICAgICAwMCBhMCBlYyBlZCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAw
MCAwMCAwMCAwMCAgLi4uLi4uLi4uLi4uLi4uLgo+ICAgICAwMCAwMCAwMCAwMCAwMCAwMCAwMCAw
MCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAgLi4uLi4uLi4uLi4uLi4uLgo+ICAgYmFja3RyYWNl
Ogo+ICAgICBbPDNhY2QyNjhkPl0gYXJjaF9zZXR1cF9kbWFfb3BzKzB4NGMvMHgxMDQKPiAgICAg
Wzw5ZjdkMmNjZT5dIG9mX2RtYV9jb25maWd1cmUrMHgxOWMvMHgzYTQKPiAgICAgWzxiYTA3NzA0
Yj5dIHJlYWxseV9wcm9iZSsweGIwLzB4NDdjCj4gICAgIFs8NGY1MTBlNGY+XSBkcml2ZXJfcHJv
YmVfZGV2aWNlKzB4NzgvMHgxYzQKPiAgICAgWzw3NDgxYTBjZj5dIGRldmljZV9kcml2ZXJfYXR0
YWNoKzB4NTgvMHg2MAo+ICAgICBbPDBmZjhmNWMxPl0gX19kcml2ZXJfYXR0YWNoKzB4YjgvMHgx
NTgKPiAgICAgWzw4NjAwNjE0ND5dIGJ1c19mb3JfZWFjaF9kZXYrMHg3NC8weGI0Cj4gICAgIFs8
MTAxNTlkY2E+XSBidXNfYWRkX2RyaXZlcisweDFjMC8weDIwMAo+ICAgICBbPDhhMjY1MjY1Pl0g
ZHJpdmVyX3JlZ2lzdGVyKzB4NzQvMHgxMDgKPiAgICAgWzxlMGYzNDUxYT5dIGV4eW5vc19kcm1f
aW5pdCsweGIwLzB4MTM0Cj4gICAgIFs8ZGIzZmM3YmE+XSBkb19vbmVfaW5pdGNhbGwrMHg5MC8w
eDQ1OAo+ICAgICBbPDZkYTM1OTE3Pl0ga2VybmVsX2luaXRfZnJlZWFibGUrMHgxODgvMHgyMDAK
PiAgICAgWzxkYjNmNzRkND5dIGtlcm5lbF9pbml0KzB4OC8weDExMAo+ICAgICBbPDFmM2NkZGY5
Pl0gcmV0X2Zyb21fZm9yaysweDE0LzB4MjAKPiAgICAgWzw4Y2QxMjUwNz5dIDB4MAo+IHVucmVm
ZXJlbmNlZCBvYmplY3QgMHhlZGVjYTAwMCAoc2l6ZSA0MDk2KToKPiAgIGNvbW0gInN3YXBwZXIv
MCIsIHBpZCAxLCBqaWZmaWVzIDQyOTQ5Mzc5MDAgKGFnZSAzMTI3LjQwMHMpCj4gICBoZXggZHVt
cCAoZmlyc3QgMzIgYnl0ZXMpOgo+ICAgICAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAw
MCAwMCAwMCAwMCAwMCAwMCAgLi4uLi4uLi4uLi4uLi4uLgo+ICAgICAwMCAwMCAwMCAwMCAwMCAw
MCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAgLi4uLi4uLi4uLi4uLi4uLgo+ICAgYmFj
a3RyYWNlOgo+ICAgICBbPDNhY2QyNjhkPl0gYXJjaF9zZXR1cF9kbWFfb3BzKzB4NGMvMHgxMDQK
PiAgICAgWzw5ZjdkMmNjZT5dIG9mX2RtYV9jb25maWd1cmUrMHgxOWMvMHgzYTQKPiAgICAgWzxi
YTA3NzA0Yj5dIHJlYWxseV9wcm9iZSsweGIwLzB4NDdjCj4gICAgIFs8NGY1MTBlNGY+XSBkcml2
ZXJfcHJvYmVfZGV2aWNlKzB4NzgvMHgxYzQKPiAgICAgWzw3NDgxYTBjZj5dIGRldmljZV9kcml2
ZXJfYXR0YWNoKzB4NTgvMHg2MAo+ICAgICBbPDBmZjhmNWMxPl0gX19kcml2ZXJfYXR0YWNoKzB4
YjgvMHgxNTgKPiAgICAgWzw4NjAwNjE0ND5dIGJ1c19mb3JfZWFjaF9kZXYrMHg3NC8weGI0Cj4g
ICAgIFs8MTAxNTlkY2E+XSBidXNfYWRkX2RyaXZlcisweDFjMC8weDIwMAo+ICAgICBbPDhhMjY1
MjY1Pl0gZHJpdmVyX3JlZ2lzdGVyKzB4NzQvMHgxMDgKPiAgICAgWzxlMGYzNDUxYT5dIGV4eW5v
c19kcm1faW5pdCsweGIwLzB4MTM0Cj4gICAgIFs8ZGIzZmM3YmE+XSBkb19vbmVfaW5pdGNhbGwr
MHg5MC8weDQ1OAo+ICAgICBbPDZkYTM1OTE3Pl0ga2VybmVsX2luaXRfZnJlZWFibGUrMHgxODgv
MHgyMDAKPiAgICAgWzxkYjNmNzRkND5dIGtlcm5lbF9pbml0KzB4OC8weDExMAo+ICAgICBbPDFm
M2NkZGY5Pl0gcmV0X2Zyb21fZm9yaysweDE0LzB4MjAKPiAgICAgWzw4Y2QxMjUwNz5dIDB4MAo+
IHVucmVmZXJlbmNlZCBvYmplY3QgMHhjMjE0YTMwMCAoc2l6ZSAxMjgpOgo+ICAgY29tbSAic3dh
cHBlci8wIiwgcGlkIDEsIGppZmZpZXMgNDI5NDkzNzkwMCAoYWdlIDMxMjcuNDAwcykKPiAgIGhl
eCBkdW1wIChmaXJzdCAzMiBieXRlcyk6Cj4gICAgIDAwIGEzIDE0IGMyIDAwIGEzIDE0IGMyIDAw
IDQwIDE4IGMyIDAwIDgwIDE4IGMyICAuLi4uLi4uLi5ALi4uLi4uCj4gICAgIDAyIDAwIDAyIDAw
IGFkIDRlIGFkIGRlIGZmIGZmIGZmIGZmIGZmIGZmIGZmIGZmICAuLi4uLk4uLi4uLi4uLi4uCj4g
ICBiYWNrdHJhY2U6Cj4gICAgIFs8MDhjYmQ4YmM+XSBpb21tdV9kb21haW5fYWxsb2MrMHgyNC8w
eDUwCj4gICAgIFs8YjgzNWFiZWU+XSBhcm1faW9tbXVfY3JlYXRlX21hcHBpbmcrMHhlNC8weDEz
NAo+ICAgICBbPDNhY2QyNjhkPl0gYXJjaF9zZXR1cF9kbWFfb3BzKzB4NGMvMHgxMDQKPiAgICAg
Wzw5ZjdkMmNjZT5dIG9mX2RtYV9jb25maWd1cmUrMHgxOWMvMHgzYTQKPiAgICAgWzxiYTA3NzA0
Yj5dIHJlYWxseV9wcm9iZSsweGIwLzB4NDdjCj4gICAgIFs8NGY1MTBlNGY+XSBkcml2ZXJfcHJv
YmVfZGV2aWNlKzB4NzgvMHgxYzQKPiAgICAgWzw3NDgxYTBjZj5dIGRldmljZV9kcml2ZXJfYXR0
YWNoKzB4NTgvMHg2MAo+ICAgICBbPDBmZjhmNWMxPl0gX19kcml2ZXJfYXR0YWNoKzB4YjgvMHgx
NTgKPiAgICAgWzw4NjAwNjE0ND5dIGJ1c19mb3JfZWFjaF9kZXYrMHg3NC8weGI0Cj4gICAgIFs8
MTAxNTlkY2E+XSBidXNfYWRkX2RyaXZlcisweDFjMC8weDIwMAo+ICAgICBbPDhhMjY1MjY1Pl0g
ZHJpdmVyX3JlZ2lzdGVyKzB4NzQvMHgxMDgKPiAgICAgWzxlMGYzNDUxYT5dIGV4eW5vc19kcm1f
aW5pdCsweGIwLzB4MTM0Cj4gICAgIFs8ZGIzZmM3YmE+XSBkb19vbmVfaW5pdGNhbGwrMHg5MC8w
eDQ1OAo+ICAgICBbPDZkYTM1OTE3Pl0ga2VybmVsX2luaXRfZnJlZWFibGUrMHgxODgvMHgyMDAK
PiAgICAgWzxkYjNmNzRkND5dIGtlcm5lbF9pbml0KzB4OC8weDExMAo+ICAgICBbPDFmM2NkZGY5
Pl0gcmV0X2Zyb21fZm9yaysweDE0LzB4MjAKPiAKPiBTaWduZWQtb2ZmLWJ5OiBMdWthc3ogTHVi
YSA8bHVrYXN6Lmx1YmFAYXJtLmNvbT4KPiAtLS0KPiAKPiBIaSBhbGwsCj4gCj4gSSBoYXZlIGRp
c2NvdmVyZWQgdGhpcyBpc3N1ZSBvbiBPZHJvaWRYVTQgd2hpbGUgcnVubmluZyBzb21lIHN0cmVz
cyB0ZXN0cwo+IGZvciB1cGNvbWluZyBFbmVyZ3kgTW9kZWwuIFRvIHJlcHJvZHVjZSBpdCwga2Vy
bmVsIG11c3QgYmUgY29tcGlsZWQgd2l0aAo+IERFQlVHX0tNRU1MRUFLLiBXaGVuIHRoZSBib290
IGhhcyBmaW5pc2hlZCwgdHlwZToKPiAjIGVjaG8gc2NhbiA+IC9zeXMva2VybmVsL2RlYnVnL2tt
ZW1sZWFrCj4gIyBjYXQgL3N5cy9rZXJuZWwvZGVidWcva21lbWxlYWsKPiBZb3Ugc2hvdWxkIGV4
cGVjdCBzaW1pbGFyIG91dHB1dCB0byB0aGUgb25lIGZyb20gdGhlIGNvbW1pdCBtZXNzYWdlLgo+
IAo+IEkgZG9uJ3Qga25vdyBpZiBpdCBzaG91bGQgZ28gdmlhIHN0YWJsZSB0cmVlIGFzIHdlbGwu
IEkgY2FuIHJlc2VuZCB3aXRoIENDCj4gc3RhYmxlLCBpZiB0aGVyZSBpcyBhIG5lZWQuCgpUaGFu
a3MgZm9yIGZpeHVwLiBCVFcsIGFzIHlvdSBjb21tZW50ZWQgb24gTWFyZWsncyBwYXRjaCB0aHJl
YWQsIHdpdGggTWFyZWsncyBwYXRjaCB0aGUgbWVtb3J5IGxlYWsgd2lsbCBiZSBzb2x2ZWQuCkRv
IHlvdSB3YW50IE1hcmVrIHRvIHJld29yayBoaXMgcGF0Y2ggb24gdG9wIG9mIHlvdXIgcGF0Y2gg
b3IgYXJlIHlvdSBvayBtZSB0byBwaWNrIHVwIG9ubHkgTWFyZWsncyBvbmU/CgpNYXJlaydzIHBh
dGNoIGlzIGNvbmZsaWN0ZWQgd2l0aCB5b3VyIG9uZS4KClRoYW5rcywKSW5raSBEYWUKCj4gCj4g
UmVnYXJkcywKPiBMdWthc3ogTHViYQo+IAo+ICBkcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5v
c19kcm1fZG1hLmMgfCA3ICsrKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZXh5bm9z
L2V4eW5vc19kcm1fZG1hLmMgYi9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZG1h
LmMKPiBpbmRleCA5ZWJjMDI3Njg4NDcuLjQ1ZjIwOWVjMTA3ZiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZG1hLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vZXh5bm9zL2V4eW5vc19kcm1fZG1hLmMKPiBAQCAtNzQsOCArNzQsMTMgQEAgc3RhdGljIGlu
dCBkcm1faW9tbXVfYXR0YWNoX2RldmljZShzdHJ1Y3QgZHJtX2RldmljZSAqZHJtX2RldiwKPiAg
CQlyZXR1cm4gcmV0Owo+ICAKPiAgCWlmIChJU19FTkFCTEVEKENPTkZJR19BUk1fRE1BX1VTRV9J
T01NVSkpIHsKPiAtCQlpZiAodG9fZG1hX2lvbW11X21hcHBpbmcoc3ViZHJ2X2RldikpCj4gKwkJ
c3RydWN0IGRtYV9pb21tdV9tYXBwaW5nICptYXBwaW5nID0KPiArCQkJCQl0b19kbWFfaW9tbXVf
bWFwcGluZyhzdWJkcnZfZGV2KTsKPiArCj4gKwkJaWYgKG1hcHBpbmcpIHsKPiAgCQkJYXJtX2lv
bW11X2RldGFjaF9kZXZpY2Uoc3ViZHJ2X2Rldik7Cj4gKwkJCWFybV9pb21tdV9yZWxlYXNlX21h
cHBpbmcobWFwcGluZyk7Cj4gKwkJfQo+ICAKPiAgCQlyZXQgPSBhcm1faW9tbXVfYXR0YWNoX2Rl
dmljZShzdWJkcnZfZGV2LCBwcml2LT5tYXBwaW5nKTsKPiAgCX0gZWxzZSBpZiAoSVNfRU5BQkxF
RChDT05GSUdfSU9NTVVfRE1BKSkgewo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
