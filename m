Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A08E78303
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 03:17:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Di651JVGpnM96OrhlieNIy0gBijwbXIY2tWRjRyhiCc=; b=YLnnQpZrLDL8vr
	LpdFMFIP2BRpVpf56QULx6OWeQlztHzV9qV8We9xciexjwxAlEQca4eCjh2Owy5Sl78OAdZxtdAE3
	+mTKbS277kUFKuMyMndqUOt/Qvk7TO3+l04ZFB1gC8d8dYrpWCQ4llQ+pDAsgAEmRK2N6JcCl/5df
	txpuGdMtuNn1O02edrf905hMYZFGKM+gq6A8uILowsnIa9GSgP7J8nei624Sq5XR+hP93rL/RwcxW
	P6ZA2OaQhHd7WUTLAbDRpLO+iuWdx8q2p1uR/v5YurmvpCrOAmqGnxYPQ4CfRcGy/JmdiWm50FHel
	9uZQ01D7RkerBS5sTPqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hruIS-0006IY-Sx; Mon, 29 Jul 2019 01:17:53 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hruIE-0006Hh-CL
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 01:17:40 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190729011728epoutp031c216900db194600c67c14c52155f101~1u_eU2hhp2660726607epoutp03h
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 01:17:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190729011728epoutp031c216900db194600c67c14c52155f101~1u_eU2hhp2660726607epoutp03h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1564363048;
 bh=S6WvFuHyC3NX9s6k4IjzrHq6hRq/ZQFcaSzn6Sw1BmA=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Ys/A/H9PkolcsUrCcro41u7yQm3UlhW5FseElfk3MpYpWqje0wnB68KNx0Zfg1RNB
 iF14BybXHBghbFg1+3AfM4DFs/Q09RUo2mZqKt0uN7BaIfT3X71OhNXC66SfPKaZcM
 4g67V6LeB8fzDBd0IL0dSJKvB1lTEvm8uYDNF1aU=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20190729011728epcas1p32a387721ae32336480c6ab141ef236a1~1u_d7Wn3a2966729667epcas1p3q;
 Mon, 29 Jul 2019 01:17:28 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.158]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 45xhch635NzMqYls; Mon, 29 Jul
 2019 01:17:24 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 2D.7E.04088.F194E3D5; Mon, 29 Jul 2019 10:17:19 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190729011718epcas1p27e2688e814efde7913e27a4050c3ace3~1u_VAXdu72470324703epcas1p2R;
 Mon, 29 Jul 2019 01:17:18 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190729011718epsmtrp1de5659750d6cffc81b1eb1afb6647a7e~1u_U-jPy-2021620216epsmtrp1R;
 Mon, 29 Jul 2019 01:17:18 +0000 (GMT)
X-AuditID: b6c32a35-85dff70000000ff8-69-5d3e491fb4b4
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 DE.90.03706.E194E3D5; Mon, 29 Jul 2019 10:17:18 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190729011718epsmtip2eebd1c41819dae9d269918a295727d26~1u_Uwk3X61549815498epsmtip2b;
 Mon, 29 Jul 2019 01:17:18 +0000 (GMT)
Subject: Re: [RFC PATCH 08/11] arm: dts: exynos: Add parents and
 #interconnect-cells to Exynos4412
To: Marek Szyprowski <m.szyprowski@samsung.com>, cwchoi00@gmail.com,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <64416ab4-855e-2bb6-199c-64086663a29f@samsung.com>
Date: Mon, 29 Jul 2019 10:20:44 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <cc4c48c3-06a5-c58f-20de-0aa18ae8667e@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOJsWRmVeSWpSXmKPExsWy7bCmga68p12swdGD0haHjm1lt3h2VNti
 /pFzrBZXvr5ns5i+dxObxaT7E1gszp/fwG6x6fE1VovLu+awWXzuPcJoMeP8PiaLtUfuslvc
 blzBZjFj8ks2Bz6PnbPusntsWtXJ5nHn2h42j/vdx5k8Ni+p9zj4bg+TR9+WVYwenzfJBXBE
 ZdtkpCampBYppOYl56dk5qXbKnkHxzvHm5oZGOoaWlqYKynkJeam2iq5+AToumXmAJ2tpFCW
 mFMKFApILC5W0rezKcovLUlVyMgvLrFVSi1IySmwLNArTswtLs1L10vOz7UyNDAwMgUqTMjO
 WNR0nqXgs2HFjw0HGRsYHyh0MXJwSAiYSGx4btrFyMUhJLCDUaJvx0U2COcTkHPwKzuE841R
 4s6bI4xdjJxgHT/PPoJK7GWU2HNrHiuE855RYsruaWBVwgIpEi/2nWUESYgItDFK7P3dCjaY
 WeAqs0TvpEMsIFVsAloS+1/cYAOx+QUUJa7+eAzWzStgJ/FoZycriM0ioCqx8c5HsLioQITE
 pweHWSFqBCVOznwCNodTwF7i9IoNYHFmAXGJW0/mM0HY8hLNW2czgyyWENjHLjHjxBRmiCdc
 JDo/HmKDsIUlXh3fwg5hS0m87G+DsqslVp48wgbR3MEosWX/BVaIhLHE/qWTmUDhxyygKbF+
 lz5EWFFi5++5jBCL+STefe1hhQQxr0RHmxBEibLE5Qd3mSBsSYnF7Z1sExiVZiF5ZxaSF2Yh
 eWEWwrIFjCyrGMVSC4pz01OLDQsMkeN7EyM4UWuZ7mCccs7nEKMAB6MSD++La7axQqyJZcWV
 uYcYJTiYlUR4tyhZxwrxpiRWVqUW5ccXleakFh9iNAWG9kRmKdHkfGAWySuJNzQ1MjY2tjAx
 NDM1NFQS5134wyJWSCA9sSQ1OzW1ILUIpo+Jg1OqgVFUTvrSp8pJTaxTXQ/6GdtluYdZyjtV
 pf0t9ve89mV7w4oP8e8vbU79ZrHYV3nqQ5OLr+dOSyte+2HePP+50jnFAk8y3+rMf6UqG8cr
 YnhpW0HRCleZ1hl7rMUmnE542Ph+99IZa8IVoyRfltavt3ZQvnviVXPT9SeHwrN+ZzqtXKfR
 nlqwr0mJpTgj0VCLuag4EQAlOg4c6gMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrEIsWRmVeSWpSXmKPExsWy7bCSvK6cp12swbxOfYtDx7ayWzw7qm0x
 /8g5VosrX9+zWUzfu4nNYtL9CSwW589vYLfY9Pgaq8XlXXPYLD73HmG0mHF+H5PF2iN32S1u
 N65gs5gx+SWbA5/Hzll32T02repk87hzbQ+bx/3u40wem5fUexx8t4fJo2/LKkaPz5vkAjii
 uGxSUnMyy1KL9O0SuDIWNZ1nKfhsWPFjw0HGBsYHCl2MnBwSAiYSP88+Yu9i5OIQEtjNKPFh
 +ilWiISkxLSLR5m7GDmAbGGJw4eLIWreMkrsWL6KGaRGWCBF4sW+s4wgCRGBNkaJbeuamEAc
 ZoHrzBKvL3xkhGg5ySQxY/8NNpAWNgEtif0vIGx+AUWJqz8eM4LYvAJ2Eo92doKtZhFQldh4
 5yNYXFQgQuLwjllQNYISJ2c+YQGxOQXsJU6v2ABWzyygLvFn3iVmCFtc4taT+UwQtrxE89bZ
 zBMYhWchaZ+FpGUWkpZZSFoWMLKsYpRMLSjOTc8tNiwwzEst1ytOzC0uzUvXS87P3cQIjlkt
 zR2Ml5fEH2IU4GBU4uF1uGkbK8SaWFZcmXuIUYKDWUmEd4uSdawQb0piZVVqUX58UWlOavEh
 RmkOFiVx3qd5xyKFBNITS1KzU1MLUotgskwcnFINjOkGp2/z5fBZLU+flvvygm+kx2xB38cd
 Xx5tzQ/LthWN6OLiSjP6/X365uUTd856cUn29mnJ29/SuZdXyu+bn7+e8WyM/kv2vzfOnCs4
 c5ZR65KGuOsloavaflPmnL7jHfrDbMfdVqPzLf9Wyk6fumqf2K2kRZvMpzJMz1Gu0f5f2rTk
 cdGZl9uUWIozEg21mIuKEwFGwdtI1QIAAA==
X-CMS-MailID: 20190729011718epcas1p27e2688e814efde7913e27a4050c3ace3
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190723122027eucas1p24b1d76e3139f7cc52614d7613ff9ba98
References: <CGME20190723122027eucas1p24b1d76e3139f7cc52614d7613ff9ba98@eucas1p2.samsung.com>
 <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <20190723122016.30279-9-a.swigon@partner.samsung.com>
 <CAGTfZH1_Qk+vNa_AJW_8OA8MJbnZa3yCTLLRs2w23bNTm72gyQ@mail.gmail.com>
 <cc4c48c3-06a5-c58f-20de-0aa18ae8667e@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_181738_755222_114FDA6F 
X-CRM114-Status: GOOD (  22.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, inki.dae@samsung.com,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 georgi.djakov@linaro.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxOS4gNy4gMjYuIOyYpO2bhCA5OjAyLCBNYXJlayBTenlwcm93c2tpIHdyb3RlOgo+
IEhpCj4gCj4gT24gMjAxOS0wNy0yNSAxNToxMywgQ2hhbndvbyBDaG9pIHdyb3RlOgo+PiAyMDE5
64WEIDfsm5QgMjTsnbwgKOyImCkg7Jik7KCEIDg6MDcsIEFydHVyIMWad2lnb8WEIDxhLnN3aWdv
bkBwYXJ0bmVyLnNhbXN1bmcuY29tPuuLmOydtCDsnpHshLE6Cj4+PiBUaGlzIHBhdGNoIGFkZHMg
dHdvIGZpZWxkcyB0cCB0aGUgRXh5bm9zNDQxMiBEVFM6Cj4+PiAgICAtIHBhcmVudDogdG8gZGVj
bGFyZSBjb25uZWN0aW9ucyBiZXR3ZWVuIG5vZGVzIHRoYXQgYXJlIG5vdCBpbiBhCj4+PiAgICAg
IHBhcmVudC1jaGlsZCByZWxhdGlvbiBpbiBkZXZmcmVxOwo+Pj4gICAgLSAjaW50ZXJjb25uZWN0
LWNlbGxzOiByZXF1aXJlZCBieSB0aGUgaW50ZXJjb25uZWN0IGZyYW1ld29yay4KPj4+Cj4+PiBQ
bGVhc2Ugbm90ZSB0aGF0ICNpbnRlcmNvbm5lY3QtY2VsbHMgaXMgYWx3YXlzIHplcm8gYW5kIG5v
ZGUgSURzIGFyZSBub3QKPj4+IGhhcmRjb2RlZCBhbnl3aGVyZS4KPj4+Cj4+PiBTaWduZWQtb2Zm
LWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT4KPj4+IC0t
LQo+Pj4gICBhcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaSB8
IDEgKwo+Pj4gICBhcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLmR0c2kgICAgICAgICAgICAg
ICB8IDkgKysrKysrKysrCj4+PiAgIDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQo+
Pj4KPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1j
b21tb24uZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5k
dHNpCj4+PiBpbmRleCBlYTU1ZjM3N2QxN2MuLmJkZDYxYWU4NjEwMyAxMDA2NDQKPj4+IC0tLSBh
L2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpCj4+PiArKysg
Yi9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaQo+Pj4gQEAg
LTEwNiw2ICsxMDYsNyBAQAo+Pj4gICAmYnVzX2xlZnRidXMgewo+Pj4gICAgICAgICAgZGV2ZnJl
cS1ldmVudHMgPSA8JnBwbXVfbGVmdGJ1c18zPiwgPCZwcG11X3JpZ2h0YnVzXzM+Owo+Pj4gICAg
ICAgICAgdmRkLXN1cHBseSA9IDwmYnVjazNfcmVnPjsKPj4+ICsgICAgICAgcGFyZW50ID0gPCZi
dXNfZG1jPjsKPj4gSXQgaXMgd3JvbmcuICdidXNfbGVmdGJ1cycgaGFzIG5vdCBhbnkgaC93IGRl
cGVuZGVuY3kgb2YgJ2J1c19kbWMnCj4+IGFuZCAnYnVzX2xlZnRidXMnIGlzIG5vdCBjaGlsZCBv
ZiAnYnVzX2RtYycuCj4+Cj4+IEV2ZW4gaXQgdGhlcmUgYXJlIHNvbWUgUE1Rb1MgcmVxdWlyZW1l
bnQgYmV0d2VlbiB0aGVtLAo+PiBpdCBpdCBub3QgcHJvcGVyIHRvIHRpZSBib3RoICdidXNfbGVm
dGJ1cycgYW5kICdidXNfZG1jJy4KPiAKPiBUaGVyZSBpcyBzdHJpY3QgZGVwZW5kZW5jeSBiZXR3
ZWVuIHRoZW0uIERNQyBidXMgcnVubmluZyBhdCBmcmVxdWVuY3kgCj4gbG93ZXIgdGhhbiBsZWZ0
IChvciByaWdodCkgYnVzIHJlYWxseSBkb2Vzbid0IG1ha2UgbXVjaCBzZW5zZSwgYmVjYXVzZSAK
PiBpdCB3aWxsIGxpbWl0IHRoZSBsZWZ0IGJ1cyBwZXJmb3JtYW5jZS4gVGhpcyBkZXBlbmRlbmN5
IHNob3VsZCBiZSAKPiBtb2RlbGVkIHNvbWVob3cuCgpJIG1pc3VuZGVyc3Rvb2QgbmV3ICdwYXJl
bnQnIHByb3RvdHlwZSBhcyB0aGUgZXhpc3RpbmcgJ2RldmZyZXEnIHByb3BlcnR5LgpJIGRpZG4n
dCB1bmRlcnN0YW5kIHdoeSB1c2UgdGhlICdkZXZmcmVxJyBwcm9wZXJ0eSBiZWNhdXNlICdidXNf
ZG1jJyBhbmQKJ2J1c19sZWZ0YnVzJyBkb24ndCBzaGFyZSB0aGUgcG93ZXIgbGluZS4gUGxlYXNl
IGlnbm9yZSBteSBwcmV2aW91cyBjb21tZW50LgoKQmFzaWNhbGx5LCBJIGFncmVlIHRoYXQgaXQg
aXMgbmVjZXNzYXJ5IHRvIHN1cHBvcnQgdGhlIFFvUyByZXF1aXJlbWVudApiZXR3ZWVuIGJ1c2Vz
IG9yIGlmIHBvc3NpYmxlLCBiZXR3ZWVuIGJ1cyBhbmQgZ3B1LgoKVG8gc3VwcG9ydCB0aGUgaW50
ZXJjb25uZWN0IGJldHdlZW4gYnVzX2RtYywgYnVzX2xlZnRidXMgYW5kIGJ1c19kaXNwbGF5LApp
dCB1c2VkIHRoZSBlaXRoZXIgJ2RldmZyZXEnIG9yICdwYXJlbnQnIHByb3BlcnRpZXMgdG8gY29u
bmVjdCB0aGVtLgoKSW4gb3JkZXIgdG8gY2F0Y2ggdGhlIG1lYW5pbmcgb2YgJ2RldmZyZXEnIGFu
ZCAncGFyZW50JyBwcm9wZXJ0aWVzLApJZiBwb3NzaWJsZSwgaXQgd291bGQgYmUgc2VwYXJhdGUg
dGhlIHVzYWdlIHJvbGUgb2YgYmV0d2VlbiAnZGV2ZnJlcScKb3IgJ3BhcmVudCcgcHJvcGVydGll
cy4gQmVjYXVzZSBpdCBpcyBwb3NzaWJsZSB0byBjb25uZWN0IHRoZSAnYnVzZXMnCndpdGggb25s
eSB1c2luZyAncGFyZW50JyBwcm9wZXJ0eSBpZiBhbGwgYnVzZXMgaW4gdGhlIHBhdGggdXNlcwp0
aGUgZGV2ZnJlcSBnb3Zlcm5vcnMgZXhjZXB0IGZvciAncGFzc2l2ZScgZ292ZXJub3IuCgotIElm
ICdkZXZmcmVxJyBwcm9wZXJ0eSBpcyB1c2VkIGJldHdlZW4gYnVzZXMsCiAgaXQgaW5kaWNhdGVz
IHRoYXQgdGhlcmUgYXJlIHJlcXVpcmVtZW50IG9mIHNoYWRpbmcgb2YgcG93ZXIgbGluZS4KLSBJ
ZiAncGFyZW50JyBwcm9wZXJ0eSBpcyB1c2VkIGJldHdlZW4gYnVzZXMsCiAgaXQgaW5kaWNhdGVz
IHRoYXQgdGhlcmUgYXJlIHJlcXVpcmVtZW50IG9mIGludGVyY29ubmVjdCBjb25uZWN0aW9uLgoK
PiAKPj4+ICAgICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPj4+ICAgfTsKPj4+Cj4+PiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpIGIvYXJjaC9hcm0vYm9vdC9k
dHMvZXh5bm9zNDQxMi5kdHNpCj4+PiBpbmRleCBkMjBkYjJkZmU4ZTIuLmE3MGE2NzFhY2FjZCAx
MDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaQo+Pj4gKysr
IGIvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpCj4+PiBAQCAtMzkwLDYgKzM5MCw3
IEBACj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbG9jayBDTEtfRElW
X0RNQz47Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiYnVzIjsK
Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZidXNf
ZG1jX29wcF90YWJsZT47Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICAjaW50ZXJjb25uZWN0
LWNlbGxzID0gPDA+Owo+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNh
YmxlZCI7Cj4+PiAgICAgICAgICAgICAgICAgIH07Cj4+Pgo+Pj4gQEAgLTM5OCw2ICszOTksNyBA
QAo+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2xvY2sgQ0xLX0RJVl9B
Q1A+Owo+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gImJ1cyI7Cj4+
PiAgICAgICAgICAgICAgICAgICAgICAgICAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX2Fj
cF9vcHBfdGFibGU+Owo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgI2ludGVyY29ubmVjdC1j
ZWxscyA9IDwwPjsKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJs
ZWQiOwo+Pj4gICAgICAgICAgICAgICAgICB9Owo+Pj4KPj4+IEBAIC00MDYsNiArNDA4LDcgQEAK
Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNsb2NrIENMS19ESVZfQzJD
PjsKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJidXMiOwo+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICAgIG9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19kbWNf
b3BwX3RhYmxlPjsKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICNpbnRlcmNvbm5lY3QtY2Vs
bHMgPSA8MD47Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVk
IjsKPj4+ICAgICAgICAgICAgICAgICAgfTsKPj4+Cj4+PiBAQCAtNDU5LDYgKzQ2Miw3IEBACj4+
PiAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbG9jayBDTEtfRElWX0dETD47
Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiYnVzIjsKPj4+ICAg
ICAgICAgICAgICAgICAgICAgICAgICBvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZidXNfbGVmdGJ1
c19vcHBfdGFibGU+Owo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgI2ludGVyY29ubmVjdC1j
ZWxscyA9IDwwPjsKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJs
ZWQiOwo+Pj4gICAgICAgICAgICAgICAgICB9Owo+Pj4KPj4+IEBAIC00NjcsNiArNDcxLDcgQEAK
Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNsb2NrIENMS19ESVZfR0RS
PjsKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJidXMiOwo+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICAgIG9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19sZWZ0
YnVzX29wcF90YWJsZT47Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICAjaW50ZXJjb25uZWN0
LWNlbGxzID0gPDA+Owo+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNh
YmxlZCI7Cj4+PiAgICAgICAgICAgICAgICAgIH07Cj4+Pgo+Pj4gQEAgLTQ3NSw2ICs0ODAsNyBA
QAo+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2xvY2sgQ0xLX0FDTEsx
NjA+Owo+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gImJ1cyI7Cj4+
PiAgICAgICAgICAgICAgICAgICAgICAgICAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX2Rp
c3BsYXlfb3BwX3RhYmxlPjsKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICNpbnRlcmNvbm5l
Y3QtY2VsbHMgPSA8MD47Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgc3RhdHVzID0gImRp
c2FibGVkIjsKPj4+ICAgICAgICAgICAgICAgICAgfTsKPj4+Cj4+PiBAQCAtNDgzLDYgKzQ4OSw3
IEBACj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbG9jayBDTEtfQUNM
SzEzMz47Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiYnVzIjsK
Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZidXNf
ZnN5c19vcHBfdGFibGU+Owo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgI2ludGVyY29ubmVj
dC1jZWxscyA9IDwwPjsKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlz
YWJsZWQiOwo+Pj4gICAgICAgICAgICAgICAgICB9Owo+Pj4KPj4+IEBAIC00OTEsNiArNDk4LDcg
QEAKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNsb2NrIENMS19BQ0xL
MTAwPjsKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJidXMiOwo+
Pj4gICAgICAgICAgICAgICAgICAgICAgICAgIG9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19w
ZXJpX29wcF90YWJsZT47Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICAjaW50ZXJjb25uZWN0
LWNlbGxzID0gPDA+Owo+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNh
YmxlZCI7Cj4+PiAgICAgICAgICAgICAgICAgIH07Cj4+Pgo+Pj4gQEAgLTQ5OSw2ICs1MDcsNyBA
QAo+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2xvY2sgQ0xLX1NDTEtf
TUZDPjsKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJidXMiOwo+
Pj4gICAgICAgICAgICAgICAgICAgICAgICAgIG9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19s
ZWZ0YnVzX29wcF90YWJsZT47Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICAjaW50ZXJjb25u
ZWN0LWNlbGxzID0gPDA+Owo+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJk
aXNhYmxlZCI7Cj4+PiAgICAgICAgICAgICAgICAgIH07Cj4+Pgo+Pj4gLS0KPj4+IDIuMTcuMQo+
Pj4KPj4KPiBCZXN0IHJlZ2FyZHMKPiAKCgotLSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kK
U2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
