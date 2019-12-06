Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7176114A6B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 02:19:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eySP+PDoEkCWC0Y5OIJuc0Jm2hRWyjelKT/3r8fnUsM=; b=IR7IUG5X7mZYbr
	24FqscMFoIrxNt0B6V0ruCIZ4tcprGUBEa7mHsE/eGp1LhjWccxJI9yn1ANZ/jWV7tZqWjVYX3BoC
	AECXhohpvHpMt4db59cKV6n03D9IZ8q3mFxrC8oRMqLXvIu892LtqTUzG4Ra72K1xELehYsinmg7l
	tIw08jZLt1Xi37+nOQklFvwjf6q8RLTuy+Bi15mcIVa44rcfYi9U162fzogUfvmuIAHGdemU9/u4n
	FpCw19ChxVaGNCfJMbKwmwQITxS8r6PuXFWY19RVAm4/o/ZIfPv6oKru5qv+nqb262GE57pQopPFn
	rycwlSuD/A0dOIdTnOLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id2HC-0001B2-2A; Fri, 06 Dec 2019 01:19:22 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id2H3-0001AF-54
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 01:19:15 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20191206011909epoutp04568b3d631d88c64fdf0704d9a08e3ad5~do3C062iw0293702937epoutp04Y
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Dec 2019 01:19:09 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20191206011909epoutp04568b3d631d88c64fdf0704d9a08e3ad5~do3C062iw0293702937epoutp04Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575595149;
 bh=r3tMXv0TpIy9rfTL1uGD4ABEaKCsaJoN4EThtD4tc28=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=oII3LuBaSB/OJ7TyAzNvo+K3ctoJsnE9NQLCLzlXfRhlgwaGHBDYIRC7xE9C22jA5
 r4W6pIvhZUK1l6fS5aVqobIbgPf9Jy+z2DD4NCG4UW+QGgr1+Cx6iw8U1TO+CAdA4j
 d2uAXle6jvpmhDnG8Uo1y6dH0oZ1ZPCKi9YyRZic=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191206011908epcas1p1e762a030e25a1f0601ca1d829ffa7f7c~do3CO4wbB2626026260epcas1p1t;
 Fri,  6 Dec 2019 01:19:08 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.152]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 47TZVd6PfszMqYkX; Fri,  6 Dec
 2019 01:19:05 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 6C.CD.51241.98CA9ED5; Fri,  6 Dec 2019 10:19:05 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191206011905epcas1p1e78d075bda03abf4a2546883c21ae0b0~do2-XQixH1735217352epcas1p1W;
 Fri,  6 Dec 2019 01:19:05 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191206011905epsmtrp12f1ec31403685519d987a1821c82d0cb~do2-WcvcE0669706697epsmtrp1d;
 Fri,  6 Dec 2019 01:19:05 +0000 (GMT)
X-AuditID: b6c32a39-163ff7000001c829-50-5de9ac893e20
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 6E.A5.10238.98CA9ED5; Fri,  6 Dec 2019 10:19:05 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191206011905epsmtip1639079fe456066b43e75fcc622ca1f96~do2-GD4wj2662826628epsmtip1D;
 Fri,  6 Dec 2019 01:19:05 +0000 (GMT)
Subject: Re: [PATCH] devfreq: exynos-bus: workaround dev_pm_opp_set_rate()
 errors on Exynos5422/5800 SoCs
To: Marek Szyprowski <m.szyprowski@samsung.com>, Kamil Konieczny
 <k.konieczny@samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <d33badc0-95be-bf2d-588c-b01e6d4cb7a1@samsung.com>
Date: Fri, 6 Dec 2019 10:25:18 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <de72b641-c150-0368-b0bd-f46c87a8c2d0@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrCJsWRmVeSWpSXmKPExsWy7bCmvm7nmpexBo8+mlhsnLGe1WLBpxms
 Fv2PXzNbnD+/gd3ibNMbdotNj6+xWlzeNYfN4nPvEUaLGef3MVmsPXKX3eJ24wo2B26PTas6
 2Tw2L6n36NuyitHj8ya5AJaobJuM1MSU1CKF1Lzk/JTMvHRbJe/geOd4UzMDQ11DSwtzJYW8
 xNxUWyUXnwBdt8wcoKOUFMoSc0qBQgGJxcVK+nY2RfmlJakKGfnFJbZKqQUpOQWWBXrFibnF
 pXnpesn5uVaGBgZGpkCFCdkZt1bvZix4aF1xa94U1gbGF/pdjJwcEgImEn+3vGIFsYUEdjBK
 bGio62LkArI/MUq8vneaEcL5xijxbN43ZpiOO/s/MUMk9jJK3J/1lAnCec8oMaH5NBNIlbBA
 tsS308vAOkQEYiQmL/0G1sEscJtJovfTLxaQBJuAlsT+FzfYQGx+AUWJqz8eM4LYvAJ2Emuf
 vQSLswioSFy9+xpskKhAmMTJbS1QNYISJ2c+AZvDKWAv0fX8LVg9s4C4xK0n85kgbHmJ5q2z
 wRZLCDSzS5xtnsMI8YOLxO0pa9ghbGGJV8e3QNlSEi/726DsaomVJ4+wQTR3MEps2X+BFSJh
 LLF/6WSgDRxAGzQl1u+ChqSixM7fcxkhFvNJvPvawwpSIiHAK9HRJgRRoixx+cFdJghbUmJx
 eyfbBEalWUjemYXkhVlIXpiFsGwBI8sqRrHUguLc9NRiwwJT5OjexAhOsVqWOxiPnfM5xCjA
 wajEwzvj84tYIdbEsuLK3EOMEhzMSiK86XwvY4V4UxIrq1KL8uOLSnNSiw8xmgJDeyKzlGhy
 PjD955XEG5oaGRsbW5gYmpkaGiqJ83L8uBgrJJCeWJKanZpakFoE08fEwSnVwDjxcOSzP4d/
 PJowI8n0199u82scps78P2dYzPvPPvvCZJVfr4zkIz8bqXEr2bgUFDA/nKjItXqhN3tgYX5q
 RLnkvcD2W3MUFv0wepvw0SlC4qGDx/XuzqMO0xfO17+9/ueeuD9bd24XU/xQv7n6gG2W7ocf
 yT81pxjGrY7mmnwg7mZN1pvvEpOVWIozEg21mIuKEwEDvRsuxwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsWy7bCSnG7nmpexBrt7BSw2zljParHg0wxW
 i/7Hr5ktzp/fwG5xtukNu8Wmx9dYLS7vmsNm8bn3CKPFjPP7mCzWHrnLbnG7cQWbA7fHplWd
 bB6bl9R79G1ZxejxeZNcAEsUl01Kak5mWWqRvl0CV8at1bsZCx5aV9yaN4W1gfGFfhcjJ4eE
 gInEnf2fmEFsIYHdjBIrv7pDxCUlpl08ChTnALKFJQ4fLu5i5AIqecsosf7WE0aQGmGBbIlv
 p5eB9YoIxEicObSDFaSIWeAuk8S6bx+YIIZ2s0i0rRcBsdkEtCT2v7jBBmLzCyhKXP3xGGwQ
 r4CdxNpnL8HiLAIqElfvvgYbKioQJrFzyWMmiBpBiZMzn7CA2JwC9hJdz9+C1TMLqEv8mXeJ
 GcIWl7j1ZD4ThC0v0bx1NvMERuFZSNpnIWmZhaRlFpKWBYwsqxglUwuKc9Nziw0LDPNSy/WK
 E3OLS/PS9ZLzczcxgiNNS3MH4+Ul8YcYBTgYlXh4Z3x+ESvEmlhWXJl7iFGCg1lJhDed72Ws
 EG9KYmVValF+fFFpTmrxIUZpDhYlcd6neccihQTSE0tSs1NTC1KLYLJMHJxSDYwy4ivaNMuC
 16TX+Kn8MavgmlDvOzH4bEiy1Pfbhpduxrnwlty/f2nNul9HmF1nr70QrDSX45KeZdvRSZnp
 a5kfbe+pUufi4TW8eeya5o7+jR9kD6YttGONLvYOa0z+qvTYgUW7a/uc1cubNLanbU0q5mDv
 SvpXqLRRPuKbkkS2waSyt+WHGpRYijMSDbWYi4oTAYgRWjewAgAA
X-CMS-MailID: 20191206011905epcas1p1e78d075bda03abf4a2546883c21ae0b0
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b
References: <CGME20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b@eucas1p1.samsung.com>
 <20191008134923.30123-1-k.konieczny@partner.samsung.com>
 <4f14d3af-e455-d05b-fc03-cba58e001f41@samsung.com>
 <0ce56e65-d989-18f8-af84-2fbd74ba20aa@samsung.com>
 <d742e7be-ca79-ae9e-6cc2-dc1fae08d252@samsung.com>
 <dd5bc937-e776-f717-1cf3-ee0e17621304@samsung.com>
 <9e0a4aa6-46a6-3ca6-42db-11ed55b468dd@samsung.com>
 <635904ed-93e1-944b-9317-8c9a19844223@samsung.com>
 <de72b641-c150-0368-b0bd-f46c87a8c2d0@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_171913_623240_233926E9 
X-CRM114-Status: GOOD (  32.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyZWssCgpPbiAxMi81LzE5IDg6MjMgUE0sIE1hcmVrIFN6eXByb3dza2kgd3JvdGU6Cj4g
SGkKPiAKPiBPbiAxNC4xMS4yMDE5IDA4OjM4LCBDaGFud29vIENob2kgd3JvdGU6Cj4+IE9uIDEx
LzE0LzE5IDM6MDcgUE0sIENoYW53b28gQ2hvaSB3cm90ZToKPj4+IE9uIDExLzE0LzE5IDEyOjEy
IEFNLCBLYW1pbCBLb25pZWN6bnkgd3JvdGU6Cj4+Pj4gT24gMTQuMTAuMjAxOSAwODo0NiwgQ2hh
bndvbyBDaG9pIHdyb3RlOgo+Pj4+PiBPbiAxOS4gMTAuIDExLiDsmKTtm4QgODozMywgTWFyZWsg
U3p5cHJvd3NraSB3cm90ZToKPj4+Pj4+IE9uIDEwLjEwLjIwMTkgMDQ6NTAsIENoYW53b28gQ2hv
aSB3cm90ZToKPj4+Pj4+PiBPbiAyMDE564WEIDEw7JuUIDA47J28IDIyOjQ5LCBrLmtvbmllY3pu
eUBwYXJ0bmVyLnNhbXN1bmcuY29tIHdyb3RlOgo+Pj4+Pj4+PiBDb21taXQgNDI5NGE3NzliZDhk
ICgiUE0gLyBkZXZmcmVxOiBleHlub3MtYnVzOiBDb252ZXJ0IHRvIHVzZQo+Pj4+Pj4+PiBkZXZf
cG1fb3BwX3NldF9yYXRlKCkiKSBpbnRyb2R1Y2VkIGVycm9yczoKPj4+Pj4+Pj4gZXh5bm9zLWJ1
czogbmV3IGJ1cyBkZXZpY2UgcmVnaXN0ZXJlZDogc29jOmJ1c193Y29yZSAoIDg0MDAwIEtIeiB+
IDQwMDAwMCBLSHopCj4+Pj4+Pj4+IGV4eW5vcy1idXM6IG5ldyBidXMgZGV2aWNlIHJlZ2lzdGVy
ZWQ6IHNvYzpidXNfbm9jICggNjcwMDAgS0h6IH4gMTAwMDAwIEtIeikKPj4+Pj4+Pj4gZXh5bm9z
LWJ1czogbmV3IGJ1cyBkZXZpY2UgcmVnaXN0ZXJlZDogc29jOmJ1c19mc3lzX2FwYiAoMTAwMDAw
IEtIeiB+IDIwMDAwMCBLSHopCj4+Pj4+Pj4+IC4uLgo+Pj4+Pj4+PiBleHlub3MtYnVzIHNvYzpi
dXNfd2NvcmU6IGRldl9wbV9vcHBfc2V0X3JhdGU6IGZhaWxlZCB0byBmaW5kIGN1cnJlbnQgT1BQ
IGZvciBmcmVxIDUzMjAwMDAwMCAoLTM0KQo+Pj4+Pj4+PiBleHlub3MtYnVzIHNvYzpidXNfbm9j
OiBkZXZfcG1fb3BwX3NldF9yYXRlOiBmYWlsZWQgdG8gZmluZCBjdXJyZW50IE9QUCBmb3IgZnJl
cSAxMTEwMDAwMDAgKC0zNCkKPj4+Pj4+Pj4gZXh5bm9zLWJ1cyBzb2M6YnVzX2ZzeXNfYXBiOiBk
ZXZfcG1fb3BwX3NldF9yYXRlOiBmYWlsZWQgdG8gZmluZCBjdXJyZW50IE9QUCBmb3IgZnJlcSAy
MjIwMDAwMDAgKC0zNCkKPj4+Pj4+Pj4KPj4+Pj4+Pj4gVGhleSBhcmUgY2F1c2VkIGJ5IGluY29y
cmVjdCBQTEwgYXNzaWduZWQgdG8gY2xvY2sgc291cmNlLCB3aGljaCByZXN1bHRzCj4+Pj4+Pj4+
IGluIGNsb2NrIHJhdGUgb3V0c2lkZSBvZiBPUFAgcmFuZ2UuIEFkZCB3b3JrYXJvdW5kIGZvciB0
aGlzIGluCj4+Pj4+Pj4+IGV4eW5vc19idXNfcGFyc2Vfb2YoKSBieSBhZGp1c3RpbmcgY2xvY2sg
cmF0ZSB0byB0aG9zZSBwcmVzZW50IGluIE9QUC4KPj4+Pj4+PiBJZiB0aGUgY2xvY2sgY2F1c2Vk
IHRoaXMgaXNzdWUsIHlvdSBjYW4gc2V0IHRoZSBpbml0aWFsIGNsb2NrIG9uIERldmljZVRyZWUK
Pj4+Pj4+PiB3aXRoIGFzc2lnbmVkLWNsb2NrLSogcHJvcGVydGllcy4gQmVjYXVzZSB0aGUgcHJv
YmUgdGltZSBvZiBjbG9jayBkcml2ZXIKPj4+Pj4+PiBpcyBlYXJseSB0aGFuIHRoZSBhbnkgZGV2
aWNlIGRyaXZlcnMuCj4+Pj4+Pj4KPj4+Pj4+PiBJdCBpcyBub3QgcHJvcGVyIHRvIGZpeCB0aGUg
Y2xvY2sgaXNzdWUgb24gb3RoZXIgZGV2aWNlIGRyaXZlci4KPj4+Pj4+PiBJIHRoaW5rIHlvdSBj
YW4gZml4IGl0IGJ5IHVzaW5nIHRoZSBzdXBwb3J0ZWQgY2xvY2sgcHJvcGVydGllcy4KPj4+Pj4+
IFRoaXMgaXNzdWUgaXMgYWJvdXQgc29tZXRoaW5nIGNvbXBsZXRlbHkgZGlmZmVyZW50LiBUaGUg
T1BQcyBkZWZpbmVkIGluCj4+Pj4+PiBEVCBjYW5ub3QgYmUgYXBwbGllZCwgYmVjYXVzZSBpdCBp
cyBub3QgcG9zc2libGUgdG8gZGVyaXZlIHRoZSBuZWVkZWQKPj4+Pj4+IGNsb2NrIHJhdGUgZnJv
bSB0aGUgYm9vdGxvYWRlci1jb25maWd1cmVkIGNsb2NrIHRvcG9sb2d5IChtYWlubHkgZHVlIHRv
Cj4+Pj4+PiBsYWNrIG9mIGNvbW1vbiBkaXZpc29yIHZhbHVlcyBmb3Igc29tZSBvZiB0aGUgcGFy
ZW50IGNsb2NrcykuIFNvbWUgdGltZQo+Pj4+Pj4gYWdvIEx1a2FzeiB0cmllZCBpbml0aWFsbHkg
dG8gcmVkZWZpbmUgdGhpcyBjbG9jayB0b3BvbG9neSB1c2luZwo+Pj4+Pj4gYXNzaWduZWQtY2xv
Y2stcmF0ZXMvcGFyZW50cyBwcm9wZXJ0aWVzIChzZWUKPj4+Pj4+IGh0dHBzOi8vcHJvdGVjdDIu
ZmlyZWV5ZS5jb20vdXJsP2s9NGI4MGMwMzA0NDU5YmM4ZS40YjgxNGI3Zi1mODdmMWUxYWVlMWE4
NWMwJnU9aHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvNy8xNS8yNzYpLCBidXQgaXQgaGFzIGxp
bWl0YXRpb25zIGFuZCBzb21lCj4+Pj4+PiBzdWNoIGNoYW5nZXMgaGFzIHRvIGJlIGRvbmUgaW4g
Ym9vdGxvYWRlci4gVW50aWwgdGhpcyBpcyByZXNvbHZlZCwKPj4+Pj4+IGRldmZyZXEgc2ltcGx5
IGNhbm5vdCBzZXQgc29tZSBvZiB0aGUgZGVmaW5lZCBPUFBzLgo+Pj4+PiBBcyB5b3UgbWVudGlv
bmVkLCB0aGUgd3Jvbmcgc2V0dGluZyBpbiBib290bG9hZGVyIGNhdXNlIHRoZSB0aGlzIGlzc3Vl
Lgo+Pj4+PiBTbywgdGhpcyBwYXRjaCBjaGFuZ2UgdGhlIHJhdGUgb24gZXh5bm9zLWJ1cy5jIGlu
IG9yZGVyIHRvIGZpeAo+Pj4+PiB0aGUgaXNzdWUgd2l0aCB3b3JrYXJvdW5kIHN0eWxlLgo+Pj4+
Pgo+Pj4+PiBCdXQsIGFsc28sIGl0IGNhbiBiZSBmaXhlZCBieSBpbml0aWFsaXppbmcgdGhlIGNs
b2NrIHJhdGUgb24gRFQKPj4+Pj4gYWx0aG91Z2ggaXQgaXMgbm90IGZ1bmRhbWVudGFsIHNvbHV0
aW9uIGFzIHlvdSBtZW50aW9uZWQuCj4+Pj4+Cj4+Pj4+IElmIGFib3ZlIHR3byBtZXRob2QgYXJl
IHdvcmthcm91bmQgd2F5LCBJIHRoaW5rIHRoYXQgc2V0IHRoZSBjbG9jawo+Pj4+PiByYXRlIGlu
IERUIGlzIHByb3Blci4gVGhlIHJvbGUgb2YgJ2Fzc2lnbmVkLWNsb2NrLSonIHByb3BlcnRpZXMK
Pj4+Pj4gaXMgZm9yIHRoaXMgY2FzZSBpbiBvcmRlciB0byBzZXQgdGhlIGluaXRpYWwgZnJlcXVl
bmN5IG9uIHByb2JlIHRpbWUuCj4+Pj4gSSBjYW4gYWRkICdhc3NpZ25lZC1jbG9jay0qJyB0byBE
VCwgYnV0IHRoZSBpc3N1ZSBpcyBjYXVzZWQgaW4gb3BwIHBvaW50cywKPj4+PiBzbyB0aGUgd2Fy
bmluZyBmcm9tIGV4eW5vcy1idXMgd2lsbCBzdGlsbCBiZSB0aGVyZS4KPj4+Pgo+Pj4+IEJlZm9y
ZSB0aGlzIGZpeCwgZGV2ZnJlcSB3aWxsIGlzc3VlIHdhcm5pbmcgYW5kIHRoZW4gY2hhbmdlIGNs
b2NrIHRvIG1heAo+Pj4+IGZyZXF1ZW5jeSB3aXRoaW4gb3BwIHJhbmdlLiBUaGlzIGZpeCBtYXNr
IHdhcm5pbmcsIGFuZCBhcyBNYXJlayBhbmQKPj4+PiBMdWthc3ogTHViYSB3cm90ZXMsIHRoZSBw
cm9wZXIgZml4IHdpbGwgYmUgdG8gbWFrZSBjaGFuZ2VzIGluIHUtYm9vdAo+Pj4+IChhbmQgY29u
bmVjdCBwcm9wZXIgUExMcyB0byBJUHMpLgo+Pj4gUExMIGNvdWxkIGJlIGNoYW5nZWQgYnkgY2xv
Y2sgZGV2aWNlIGRyaXZlciBpbiB0aGUgbGludXgga2VybmVsLgo+Pj4gSWYgeW91IGRvbid0IGFk
ZCB0aGUgc3VwcG9ydGVkIGZyZXF1ZW5jeSBpbnRvIFBMTCBmcmVxdWVuY3kgdGFibGUKPj4+IG9m
IGNsb2NrIGRldmljZSBkcml2ZXIsIHdpbGwgZmFpbCB0byBjaGFuZ2UgdGhlIHdhbnRlZCBmcmVx
dWVuY3kKPj4+IG9uIHRoZSBsaW51eCBrZXJuZWwuIEl0IG1lYW5zIHRoYXQgaXQgaXMgbm90IGZp
eGVkIGJ5IG9ubHkgdG91Y2hpbmcKPj4+IHRoZSBib290bG9hZGVyLgo+Pj4KPj4+IEFzIHlvdSBj
b21tZW50ZWQsIHRoZSB3cm9uZyBvcHAgcG9pbnRzIHdoaWNoIGFyZSBzcGVjaWZpZWQgb24gZHQK
Pj4+IGNhdXNlIHRoaXMgaXNzdWUuIFVzdWFsbHksIGhhdmUgdG8gaW5pdGlhbGl6ZSB0aGUgY2xv
Y2sgcmF0ZSBvbiBkdAo+Pj4gYnkgdXNpbmcgJ2Fzc2lnbmVkLWNsb2Nrcy0qJyBwcm9wZXJ0eSBh
bmQgdGhlbiB1c2UgdGhlIGNsb2NrCj4+PiB3aXRoIHRoZSBwcmVmZXJhYmxlIGNsb2NrIHJhdGUu
IEkgdGhpbmsgdGhhdCB3ZSBoYXZlIHRvIGZpeAo+Pj4gdGhlIGZ1bmRhbWVudGFsIHByb2JsZW0u
Cj4+Pgo+Pj4gV2l0aG91dCBib290bG9hZGVyIHByb2JsZW0sIHlvdSBjYW4gZml4IGl0IGJ5IGlu
aXRpYWxpemluZwo+Pj4gdGhlIGNsb2NrIG9uIGR0IHdpdGggJ2Fzc2lnbmVkLWNsb2Nrcy0qJyBw
cm9wZXJ0eS4KPj4+Cj4+PiBBcyBJIGtuZXcgdGhhdCBpdCBpcyBjb3JyZWN0IHdheSBhbmQgSSBh
bHdheXMgdHJpZWQgdG8gZG8gdGhpcyBtZXRob2QKPj4+IGZvciByZXNvbHZpbmcgdGhlIHNpbWls
YXIgY2xvY2sgaXNzdWUuCj4+Pgo+Pj4gTGFzdGx5LCBJIHRoaW5rIHRoYXQgbXkgb3BpbmlvbiBp
cyBtb3JlIHNpbXBsZSBhbmQgY29ycmVjdC4KPj4+IEl0IGNvdWxkIGdpdmUgdGhlIG1vcmUgY29y
cmVjdCBpbmZvcm1hdGlvbiB0byBsaW51eCBrZXJuZWwgdXNlcgo+Pj4gd2hpY2ggcmVmZXIgdG8g
dGhlIGRldmljZSB0cmVlIGZpbGUuCj4+Pgo+Pj4gMS4gWW91ciBzdWdnZXN0aW9uCj4+PiAJYS4g
QWRkIG9wcC10YWJsZSB3aXRoIHVuc3VwcG9ydGVkIGZyZXF1ZW5jeSBvbiBkdAo+Pj4gCWIuIFRy
eSB0byBjaGFuZ2UgdGhlIGNsb2NrIHJhdGUgb24gZXh5bm9zLWJ1cy5jIGJ5IHVzaW5nIHVuc3Vw
cG9ydGVkIGZyZXF1ZW5jeSBmcm9tIG9wcC10YWJsZQo+Pj4gCWMuIElmIGZhaWxlZCwgcmV0cnkg
dG8gY2hhbmdlIHRoZSBjbG9jayByYXRlIG9uIGV4eW5vcy1idXMuYwo+Pj4KPj4+IDIuIE15IG9w
aW5pb24KPj4+IAlhLiBJbml0aWFsaXplIHRoZSBQTEwgb3IgYW55IGNsb2NrIGJ5IHVzaW5nIGFz
c2lnbmVkLWNsb2NrLSogcHJvcGVydHkgb24gZHQKPj4+IAkgICBhbmQgYWRkIG9wcC10YWJsZSB3
aXRoIHN1cHBvcnRlZCBmcmVxdWVuY3kgb24gZHQKPj4+IAliLiBUcnkgdG8gY2hhbmdlIHRoZSBj
bG9jayByYXRlIG9uIGV4eW5vcy1idXMuYyBieSB1c2luZyBzdXBwb3J0ZWQgZnJlcXVlbmN5IGZy
b20gb3BwLXRhYmxlCj4+Pgo+PiBKdXN0IEkgdHJpZWQgdG8gYWRkICdhc3NpZ25lZC1jbG9jay1y
YXRlcycgcHJvcGVydHkgdG8gaW5pdGlhbGl6ZQo+PiB0aGUgY2xvY2sgcmF0ZSBvZiBzb21lIGJ1
cyBub2RlIGFzIGZvbGxvd2luZyBvbiBvZHJvaWQteHUzIGJvYXJkOgo+Pgo+PiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNTQyMi1vZHJvaWQtY29yZS5kdHNpIGIvYXJjaC9h
cm0vYm9vdC9kdHMvZXh5bm9zNTQyMi1vZHJvaWQtY29yZS5kdHNpCj4+IGluZGV4IDgyOTE0N2Uz
MjBlMC4uOWEyMzdhZjU0MzZhIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9leHlu
b3M1NDIyLW9kcm9pZC1jb3JlLmR0c2kKPj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9z
NTQyMi1vZHJvaWQtY29yZS5kdHNpCj4+IEBAIC00Miw2ICs0Miw4IEBACj4+ICAgfTsKPj4gICAK
Pj4gICAmYnVzX3djb3JlIHsKPj4gKyAgICAgICBhc3NpZ25lZC1jbG9ja3MgPSA8JmNsb2NrIENM
S19ET1VUX0FDTEs0MDBfV0NPUkU+Owo+PiArICAgICAgIGFzc2lnbmVkLWNsb2NrLXJhdGVzID0g
PDQwMDAwMDAwMD47Cj4+ICAgICAgICAgIGRldmZyZXEtZXZlbnRzID0gPCZub2NwX21lbTBfMD4s
IDwmbm9jcF9tZW0wXzE+LAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgPCZub2NwX21lbTFf
MD4sIDwmbm9jcF9tZW0xXzE+Owo+PiAgICAgICAgICB2ZGQtc3VwcGx5ID0gPCZidWNrM19yZWc+
Owo+PiBAQCAtNTAsMTEgKzUyLDE1IEBACj4+ICAgfTsKPj4gICAKPj4gICAmYnVzX25vYyB7Cj4+
ICsgICAgICAgYXNzaWduZWQtY2xvY2tzID0gPCZjbG9jayBDTEtfRE9VVF9BQ0xLMTAwX05PQz47
Cj4+ICsgICAgICAgYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8MTAwMDAwMDAwPjsKPj4gICAgICAg
ICAgZGV2ZnJlcSA9IDwmYnVzX3djb3JlPjsKPj4gICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+
PiAgIH07Cj4+ICAgCj4+ICAgJmJ1c19mc3lzX2FwYiB7Cj4+ICsgICAgICAgYXNzaWduZWQtY2xv
Y2tzID0gPCZjbG9jayBDTEtfRE9VVF9QQ0xLMjAwX0ZTWVM+Owo+PiArICAgICAgIGFzc2lnbmVk
LWNsb2NrLXJhdGVzID0gPDIwMDAwMDAwMD47Cj4+ICAgICAgICAgIGRldmZyZXEgPSA8JmJ1c193
Y29yZT47Cj4+ICAgICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPj4gICB9Owo+PiBAQCAtMTIwLDYg
KzEyNiw4IEBACj4+ICAgfTsKPj4gICAKPj4gICAmYnVzX21zY2wgewo+PiArICAgICAgIGFzc2ln
bmVkLWNsb2NrcyA9IDwmY2xvY2sgQ0xLX0RPVVRfQUNMSzQwMF9NU0NMPjsKPj4gKyAgICAgICBh
c3NpZ25lZC1jbG9jay1yYXRlcyA9IDw0MDAwMDAwMDA+Owo+PiAgICAgICAgICBkZXZmcmVxID0g
PCZidXNfd2NvcmU+Owo+PiAgICAgICAgICBzdGF0dXMgPSAib2theSI7Cj4+ICAgfTsKPiAKPiAK
PiBXZWxsLCB0aGlzIGlzIGEgcG9vciB3b3JrYXJvdW5kLiBUaGVyZSBpcyBpbmRlZWQgbm8gd2Fy
bmluZywgYnV0IHRoZSAKPiBjbG9jayByYXRlcyBhcmUgZmFyIGZyb20gdGhlIHNwZWNpZmllZCBp
biB0aGUgZGV2aWNlIHRyZWUuIEZvciBXQ09SRSAKPiBhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDw0
MDAwMDAwMDA+IG9uIE9kcm9pZCBYVTMvWFU0IGtlcm5lbCB3aWxsIHNldCAKPiBkb3V0X2FjbGs0
MDBfd2NvcmUgY2xvY2sgdG8gMjY2TUh6LCBiZWNhdXNlIGl0IGlzIG5vdCBwb3NzaWJsZSB0byBk
ZXJpdmUgCj4gNDAwTUh6IGZyb20gNTMyTUh6IE1QTEwuLi4KCkFoLiBZb3UncmUgcmlnaHQuIEl0
IHNlZW1zIHRoYXQgbXkgbWlzdGFrZSBvZiBvcmlnaW5hbCBwYXRjaCBvZiBidXNfd2NvcmVfb3Bw
X3RhYmxlLgpJIHRoaW5rIHRoYXQgT1BQIHRhYmxlIGhhcyB0aGUgd3JvbmcgT1BQIGVudHJpZXMu
Cgo+IAo+IEkgcGxhbiB0byBtZWFzdXJlIHRoZSBpbXBhY3Qgb2YgZGlmZmVyZW50IHJhdGVzIG9u
IHRoZSBwZXJmb3JtYW5jZSBvZiAKPiB0aGUgdmFyaW91cyBjb21wb25lbnRzIGFuZCBvdmVyYWxs
IHBvd2VyIGNvbnN1bXB0aW9uLiBPbmx5IHRoZW4gSU1ITyBpdCAKPiBtYWtlcyBzZW5zZSB0byBk
ZWNpZGUgaWYgd2UgcmVhbGx5IHNob3VsZCBhZGp1c3QgT1BQcyB0byB0aGUgY3VycmVudCAKPiBQ
TExzIGNvbmZpZ3VyYXRpb24gKC0+IGJhc2ljYWxseSBkZWZpbmUgZm9sbG93aW5nIE9QUHMgZm9y
IFdDT1JFOiAKPiA1MzJNSHosIDI2Nk1IeiwgMTMzTUhaIGFuZCA3N01Ieikgb3IgY2hhbmdlIFBM
TCBjb25maWd1cmF0aW9uIGFuZCAKPiByZS1wYXJlbnQgV0NPUkUgdG8gMTIwME1IeiB0byBwcm9w
ZXJseSBkcml2ZTogNDAwTUh6LCAzMDBNSHosIDIwME1IeiBhbmQgCj4gMTAwTUh6LgpJIGFncmVl
IHlvdXIgYm90aCBzdWdnZXN0aW9ucy4gCgo+IAo+IE90aGVyIGRldmZyZXEgYnVzZXMgc2hvdWxk
IElNSE8gdXNlIHRoZSB2YWx1ZXMgc2ltaWxhciB0byB0aGUgc2VsZWN0ZWQgCj4gZm9yIFdDT1JF
Lgo+IAo+IEJlc3QgcmVnYXJkcwo+IAoKCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpT
YW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
