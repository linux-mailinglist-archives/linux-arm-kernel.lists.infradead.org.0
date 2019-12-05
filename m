Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2296811400C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 12:23:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:Subject:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TxVZ7pi/C5EVyki1ZiaOSDyNhIRVvs/CfgJyWZ07uXE=; b=Ad5Z0r8OQaf+17
	/KZ/LyGtNHPVRHMHbauaP/wHnNEh6+gvTIPb/p5odwLeysNVMkaUbM+Vg01OmsxsWInfkSnUYcHW4
	Vwckym/iV2Rs30RvSzWuOlNkhCOU73R8tBNv7QUqaFvTaORE11PysgcBiTVVCHZ0j+rjyJrE9hH55
	pnNoO9OWOd/EEOm9BUJBFZ0rrwWM5m1/6ghN0kjVVUbjdPZ2QWdFQRf2qBiHh9V0g6dNxAtNASR5f
	BCrn9aANyd9MTJ+frFh2jDQ+8sFTA1sKNGG3Ur/30AD2h0diRgo/QxGNBE7CL7Wly+02adjqq4YOO
	TJErRsqjDMuhufy14PZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icpEQ-00006I-Qc; Thu, 05 Dec 2019 11:23:38 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icpEH-00005D-DU
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 11:23:31 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191205112325euoutp02fae6ccb52f9204c00c1ba30ba53341e9~dddWhbdES2565725657euoutp02X
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  5 Dec 2019 11:23:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191205112325euoutp02fae6ccb52f9204c00c1ba30ba53341e9~dddWhbdES2565725657euoutp02X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575545005;
 bh=4cZz6jB9XqYzT/+qcSSKXwM6MSppAW1MvQ8WfWj920M=;
 h=From:Subject:To:Cc:Date:In-Reply-To:References:From;
 b=IGK0NmSQwxVg2PkeYxtFFkcLqnL3hUi01p7d4jxcAOWVkz+4D1x3IVTCysVj8BYcg
 XWNaf15HUonk654wu3R75iqbKVRwCVolOzE3J5xvyVHaS4dj+a9dOxKfKPeiO+ofTf
 4aq/pT+B8o1MifLsTwUK80xZ3UtuSttyh5+QbUls=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191205112324eucas1p1655be95b30dc529a1be583b878b6cc56~dddV5P-AS1131911319eucas1p1E;
 Thu,  5 Dec 2019 11:23:24 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 62.63.61286.CA8E8ED5; Thu,  5
 Dec 2019 11:23:24 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191205112324eucas1p2f8a449e76cd80ecbe8eeee6fdb5ee85f~dddVlTDf42069020690eucas1p2r;
 Thu,  5 Dec 2019 11:23:24 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191205112324eusmtrp186f6072b724ed9277abbc3a249002fa8~dddVkjH-f1370513705eusmtrp1E;
 Thu,  5 Dec 2019 11:23:24 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-60-5de8e8ac70bd
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id EE.F1.07950.BA8E8ED5; Thu,  5
 Dec 2019 11:23:23 +0000 (GMT)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191205112323eusmtip1f0505dc253968033d941192647daf571~dddU7LGZh1180011800eusmtip1H;
 Thu,  5 Dec 2019 11:23:23 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH] devfreq: exynos-bus: workaround dev_pm_opp_set_rate()
 errors on Exynos5422/5800 SoCs
To: Chanwoo Choi <cw00.choi@samsung.com>, Kamil Konieczny
 <k.konieczny@samsung.com>, k.konieczny@samsung.com
Message-ID: <de72b641-c150-0368-b0bd-f46c87a8c2d0@samsung.com>
Date: Thu, 5 Dec 2019 12:23:23 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <635904ed-93e1-944b-9317-8c9a19844223@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKKsWRmVeSWpSXmKPExsWy7djP87prXryINZh4XMhi44z1rBbXvzxn
 tVjwaQarRf/j18wW589vYLc42/SG3WLT42usFpd3zWGz+Nx7hNFixvl9TBa3G1ewOXB7bFrV
 yeaxeUm9R9+WVYwenzfJBbBEcdmkpOZklqUW6dslcGWc2LGKteCURcW0EyeZGhgX6HYxcnJI
 CJhIbN/4khHEFhJYwSjRulO0i5ELyP7CKDH9VgsbROIzo8SfTheYhhOrJ7NCxJczSjS9KoBo
 eMsoseHdB3aQBJuAoUTX2y6wZmGBbIlvp5cxg9giAnkSHXevsoM0MAvcZpLo/fSLpYuRg4NX
 wE7ixklVkBoWARWJLad3gYVFBWIlOpZngIR5BQQlTs58AhbmFLCX6D9UBRJmFhCXuPVkPhOE
 LS/RvHU2M8h0CYFz7BLty++zQ9zsInFxbSszhC0s8er4Fqi4jMTpyT0sEA3NjBIPz61lh3B6
 GCUuN81ghKiyljh8/CIryGZmAU2J9bv0IcKOEm/vX2YECUsI8EnceCsIcQSfxKRt05khwrwS
 HW1CENVqErOOr4Nbe/DCJeYJjEqzkHw2C8k7s5C8Mwth7wJGllWM4qmlxbnpqcWGeanlesWJ
 ucWleel6yfm5mxiBien0v+OfdjB+vZR0iFGAg1GJh7dh0/NYIdbEsuLK3EOMEhzMSiK82ySe
 xgrxpiRWVqUW5ccXleakFh9ilOZgURLnrWZ4EC0kkJ5YkpqdmlqQWgSTZeLglGpg3PbOoFSZ
 i4VFZ+9TuY/vNid48b65tlrvkoqU7bE5B3/w9El6SllmP+acsyc4xY3pwXMx7c0Ld/GYhl27
 HK6z5fyDBVPb1p2KqbZwYrjerMM9f+Gk1c7fWKZMvfVyluGrXoUpBXdsjv/UibrS7vqk7ZFh
 vMipt0WtNzXSZt/8lBB4TOV3rHv+QSWW4oxEQy3mouJEADClLldIAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrNIsWRmVeSWpSXmKPExsVy+t/xu7qrX7yINTi429Ji44z1rBbXvzxn
 tVjwaQarRf/j18wW589vYLc42/SG3WLT42usFpd3zWGz+Nx7hNFixvl9TBa3G1ewOXB7bFrV
 yeaxeUm9R9+WVYwenzfJBbBE6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp
 29mkpOZklqUW6dsl6GWc2LGKteCURcW0EyeZGhgX6HYxcnJICJhInFg9mbWLkYtDSGApo8TK
 eR/YIRIyEienNbBC2MISf651sUEUvWaUmPptF1iCTcBQoustSIKTQ1ggW+Lb6WXMILaIQJ7E
 vp7JLCANzAJ3mSTWffvABNF9jVli/pxFQCs4OHgF7CRunFQFaWARUJHYcnoXC4gtKhAr8X3l
 J0YQm1dAUOLkzCcsIOWcAvYS/YeqQMLMAmYS8zY/ZIawxSVuPZnPBGHLSzRvnc08gVFoFpLu
 WUhaZiFpmYWkZQEjyypGkdTS4tz03GIjveLE3OLSvHS95PzcTYzAiNx27OeWHYxd74IPMQpw
 MCrx8DZseh4rxJpYVlyZe4hRgoNZSYR3m8TTWCHelMTKqtSi/Pii0pzU4kOMpkC/TWSWEk3O
 ByaLvJJ4Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjBqyZ6tF2fZN
 DPyaJuHKGVz5vWLuSm6OM1yqfq/iy9b8OOPdGH60dJGcj5DFlCxfwX1GM97evXl1otRZS4mM
 vKRK2xPOyWoXzlgq6O2U/HRUJmrLjdVPtKwnTp2uMuFlgCWvZPiqWdcCxZ7YiUVtEeSwmXys
 NE/pcxFD/5mNIfyT5WN5dkxepsRSnJFoqMVcVJwIAPxb/mHeAgAA
X-CMS-MailID: 20191205112324eucas1p2f8a449e76cd80ecbe8eeee6fdb5ee85f
X-Msg-Generator: CA
X-RootMTR: 20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b
References: <CGME20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b@eucas1p1.samsung.com>
 <20191008134923.30123-1-k.konieczny@partner.samsung.com>
 <4f14d3af-e455-d05b-fc03-cba58e001f41@samsung.com>
 <0ce56e65-d989-18f8-af84-2fbd74ba20aa@samsung.com>
 <d742e7be-ca79-ae9e-6cc2-dc1fae08d252@samsung.com>
 <dd5bc937-e776-f717-1cf3-ee0e17621304@samsung.com>
 <9e0a4aa6-46a6-3ca6-42db-11ed55b468dd@samsung.com>
 <635904ed-93e1-944b-9317-8c9a19844223@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_032329_596819_8CE5AAE0 
X-CRM114-Status: GOOD (  27.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
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

SGkKCk9uIDE0LjExLjIwMTkgMDg6MzgsIENoYW53b28gQ2hvaSB3cm90ZToKPiBPbiAxMS8xNC8x
OSAzOjA3IFBNLCBDaGFud29vIENob2kgd3JvdGU6Cj4+IE9uIDExLzE0LzE5IDEyOjEyIEFNLCBL
YW1pbCBLb25pZWN6bnkgd3JvdGU6Cj4+PiBPbiAxNC4xMC4yMDE5IDA4OjQ2LCBDaGFud29vIENo
b2kgd3JvdGU6Cj4+Pj4gT24gMTkuIDEwLiAxMS4g7Jik7ZuEIDg6MzMsIE1hcmVrIFN6eXByb3dz
a2kgd3JvdGU6Cj4+Pj4+IE9uIDEwLjEwLjIwMTkgMDQ6NTAsIENoYW53b28gQ2hvaSB3cm90ZToK
Pj4+Pj4+IE9uIDIwMTnrhYQgMTDsm5QgMDjsnbwgMjI6NDksIGsua29uaWVjem55QHBhcnRuZXIu
c2Ftc3VuZy5jb20gd3JvdGU6Cj4+Pj4+Pj4gQ29tbWl0IDQyOTRhNzc5YmQ4ZCAoIlBNIC8gZGV2
ZnJlcTogZXh5bm9zLWJ1czogQ29udmVydCB0byB1c2UKPj4+Pj4+PiBkZXZfcG1fb3BwX3NldF9y
YXRlKCkiKSBpbnRyb2R1Y2VkIGVycm9yczoKPj4+Pj4+PiBleHlub3MtYnVzOiBuZXcgYnVzIGRl
dmljZSByZWdpc3RlcmVkOiBzb2M6YnVzX3djb3JlICggODQwMDAgS0h6IH4gNDAwMDAwIEtIeikK
Pj4+Pj4+PiBleHlub3MtYnVzOiBuZXcgYnVzIGRldmljZSByZWdpc3RlcmVkOiBzb2M6YnVzX25v
YyAoIDY3MDAwIEtIeiB+IDEwMDAwMCBLSHopCj4+Pj4+Pj4gZXh5bm9zLWJ1czogbmV3IGJ1cyBk
ZXZpY2UgcmVnaXN0ZXJlZDogc29jOmJ1c19mc3lzX2FwYiAoMTAwMDAwIEtIeiB+IDIwMDAwMCBL
SHopCj4+Pj4+Pj4gLi4uCj4+Pj4+Pj4gZXh5bm9zLWJ1cyBzb2M6YnVzX3djb3JlOiBkZXZfcG1f
b3BwX3NldF9yYXRlOiBmYWlsZWQgdG8gZmluZCBjdXJyZW50IE9QUCBmb3IgZnJlcSA1MzIwMDAw
MDAgKC0zNCkKPj4+Pj4+PiBleHlub3MtYnVzIHNvYzpidXNfbm9jOiBkZXZfcG1fb3BwX3NldF9y
YXRlOiBmYWlsZWQgdG8gZmluZCBjdXJyZW50IE9QUCBmb3IgZnJlcSAxMTEwMDAwMDAgKC0zNCkK
Pj4+Pj4+PiBleHlub3MtYnVzIHNvYzpidXNfZnN5c19hcGI6IGRldl9wbV9vcHBfc2V0X3JhdGU6
IGZhaWxlZCB0byBmaW5kIGN1cnJlbnQgT1BQIGZvciBmcmVxIDIyMjAwMDAwMCAoLTM0KQo+Pj4+
Pj4+Cj4+Pj4+Pj4gVGhleSBhcmUgY2F1c2VkIGJ5IGluY29ycmVjdCBQTEwgYXNzaWduZWQgdG8g
Y2xvY2sgc291cmNlLCB3aGljaCByZXN1bHRzCj4+Pj4+Pj4gaW4gY2xvY2sgcmF0ZSBvdXRzaWRl
IG9mIE9QUCByYW5nZS4gQWRkIHdvcmthcm91bmQgZm9yIHRoaXMgaW4KPj4+Pj4+PiBleHlub3Nf
YnVzX3BhcnNlX29mKCkgYnkgYWRqdXN0aW5nIGNsb2NrIHJhdGUgdG8gdGhvc2UgcHJlc2VudCBp
biBPUFAuCj4+Pj4+PiBJZiB0aGUgY2xvY2sgY2F1c2VkIHRoaXMgaXNzdWUsIHlvdSBjYW4gc2V0
IHRoZSBpbml0aWFsIGNsb2NrIG9uIERldmljZVRyZWUKPj4+Pj4+IHdpdGggYXNzaWduZWQtY2xv
Y2stKiBwcm9wZXJ0aWVzLiBCZWNhdXNlIHRoZSBwcm9iZSB0aW1lIG9mIGNsb2NrIGRyaXZlcgo+
Pj4+Pj4gaXMgZWFybHkgdGhhbiB0aGUgYW55IGRldmljZSBkcml2ZXJzLgo+Pj4+Pj4KPj4+Pj4+
IEl0IGlzIG5vdCBwcm9wZXIgdG8gZml4IHRoZSBjbG9jayBpc3N1ZSBvbiBvdGhlciBkZXZpY2Ug
ZHJpdmVyLgo+Pj4+Pj4gSSB0aGluayB5b3UgY2FuIGZpeCBpdCBieSB1c2luZyB0aGUgc3VwcG9y
dGVkIGNsb2NrIHByb3BlcnRpZXMuCj4+Pj4+IFRoaXMgaXNzdWUgaXMgYWJvdXQgc29tZXRoaW5n
IGNvbXBsZXRlbHkgZGlmZmVyZW50LiBUaGUgT1BQcyBkZWZpbmVkIGluCj4+Pj4+IERUIGNhbm5v
dCBiZSBhcHBsaWVkLCBiZWNhdXNlIGl0IGlzIG5vdCBwb3NzaWJsZSB0byBkZXJpdmUgdGhlIG5l
ZWRlZAo+Pj4+PiBjbG9jayByYXRlIGZyb20gdGhlIGJvb3Rsb2FkZXItY29uZmlndXJlZCBjbG9j
ayB0b3BvbG9neSAobWFpbmx5IGR1ZSB0bwo+Pj4+PiBsYWNrIG9mIGNvbW1vbiBkaXZpc29yIHZh
bHVlcyBmb3Igc29tZSBvZiB0aGUgcGFyZW50IGNsb2NrcykuIFNvbWUgdGltZQo+Pj4+PiBhZ28g
THVrYXN6IHRyaWVkIGluaXRpYWxseSB0byByZWRlZmluZSB0aGlzIGNsb2NrIHRvcG9sb2d5IHVz
aW5nCj4+Pj4+IGFzc2lnbmVkLWNsb2NrLXJhdGVzL3BhcmVudHMgcHJvcGVydGllcyAoc2VlCj4+
Pj4+IGh0dHBzOi8vcHJvdGVjdDIuZmlyZWV5ZS5jb20vdXJsP2s9NGI4MGMwMzA0NDU5YmM4ZS40
YjgxNGI3Zi1mODdmMWUxYWVlMWE4NWMwJnU9aHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvNy8x
NS8yNzYpLCBidXQgaXQgaGFzIGxpbWl0YXRpb25zIGFuZCBzb21lCj4+Pj4+IHN1Y2ggY2hhbmdl
cyBoYXMgdG8gYmUgZG9uZSBpbiBib290bG9hZGVyLiBVbnRpbCB0aGlzIGlzIHJlc29sdmVkLAo+
Pj4+PiBkZXZmcmVxIHNpbXBseSBjYW5ub3Qgc2V0IHNvbWUgb2YgdGhlIGRlZmluZWQgT1BQcy4K
Pj4+PiBBcyB5b3UgbWVudGlvbmVkLCB0aGUgd3Jvbmcgc2V0dGluZyBpbiBib290bG9hZGVyIGNh
dXNlIHRoZSB0aGlzIGlzc3VlLgo+Pj4+IFNvLCB0aGlzIHBhdGNoIGNoYW5nZSB0aGUgcmF0ZSBv
biBleHlub3MtYnVzLmMgaW4gb3JkZXIgdG8gZml4Cj4+Pj4gdGhlIGlzc3VlIHdpdGggd29ya2Fy
b3VuZCBzdHlsZS4KPj4+Pgo+Pj4+IEJ1dCwgYWxzbywgaXQgY2FuIGJlIGZpeGVkIGJ5IGluaXRp
YWxpemluZyB0aGUgY2xvY2sgcmF0ZSBvbiBEVAo+Pj4+IGFsdGhvdWdoIGl0IGlzIG5vdCBmdW5k
YW1lbnRhbCBzb2x1dGlvbiBhcyB5b3UgbWVudGlvbmVkLgo+Pj4+Cj4+Pj4gSWYgYWJvdmUgdHdv
IG1ldGhvZCBhcmUgd29ya2Fyb3VuZCB3YXksIEkgdGhpbmsgdGhhdCBzZXQgdGhlIGNsb2NrCj4+
Pj4gcmF0ZSBpbiBEVCBpcyBwcm9wZXIuIFRoZSByb2xlIG9mICdhc3NpZ25lZC1jbG9jay0qJyBw
cm9wZXJ0aWVzCj4+Pj4gaXMgZm9yIHRoaXMgY2FzZSBpbiBvcmRlciB0byBzZXQgdGhlIGluaXRp
YWwgZnJlcXVlbmN5IG9uIHByb2JlIHRpbWUuCj4+PiBJIGNhbiBhZGQgJ2Fzc2lnbmVkLWNsb2Nr
LSonIHRvIERULCBidXQgdGhlIGlzc3VlIGlzIGNhdXNlZCBpbiBvcHAgcG9pbnRzLAo+Pj4gc28g
dGhlIHdhcm5pbmcgZnJvbSBleHlub3MtYnVzIHdpbGwgc3RpbGwgYmUgdGhlcmUuCj4+Pgo+Pj4g
QmVmb3JlIHRoaXMgZml4LCBkZXZmcmVxIHdpbGwgaXNzdWUgd2FybmluZyBhbmQgdGhlbiBjaGFu
Z2UgY2xvY2sgdG8gbWF4Cj4+PiBmcmVxdWVuY3kgd2l0aGluIG9wcCByYW5nZS4gVGhpcyBmaXgg
bWFzayB3YXJuaW5nLCBhbmQgYXMgTWFyZWsgYW5kCj4+PiBMdWthc3ogTHViYSB3cm90ZXMsIHRo
ZSBwcm9wZXIgZml4IHdpbGwgYmUgdG8gbWFrZSBjaGFuZ2VzIGluIHUtYm9vdAo+Pj4gKGFuZCBj
b25uZWN0IHByb3BlciBQTExzIHRvIElQcykuCj4+IFBMTCBjb3VsZCBiZSBjaGFuZ2VkIGJ5IGNs
b2NrIGRldmljZSBkcml2ZXIgaW4gdGhlIGxpbnV4IGtlcm5lbC4KPj4gSWYgeW91IGRvbid0IGFk
ZCB0aGUgc3VwcG9ydGVkIGZyZXF1ZW5jeSBpbnRvIFBMTCBmcmVxdWVuY3kgdGFibGUKPj4gb2Yg
Y2xvY2sgZGV2aWNlIGRyaXZlciwgd2lsbCBmYWlsIHRvIGNoYW5nZSB0aGUgd2FudGVkIGZyZXF1
ZW5jeQo+PiBvbiB0aGUgbGludXgga2VybmVsLiBJdCBtZWFucyB0aGF0IGl0IGlzIG5vdCBmaXhl
ZCBieSBvbmx5IHRvdWNoaW5nCj4+IHRoZSBib290bG9hZGVyLgo+Pgo+PiBBcyB5b3UgY29tbWVu
dGVkLCB0aGUgd3Jvbmcgb3BwIHBvaW50cyB3aGljaCBhcmUgc3BlY2lmaWVkIG9uIGR0Cj4+IGNh
dXNlIHRoaXMgaXNzdWUuIFVzdWFsbHksIGhhdmUgdG8gaW5pdGlhbGl6ZSB0aGUgY2xvY2sgcmF0
ZSBvbiBkdAo+PiBieSB1c2luZyAnYXNzaWduZWQtY2xvY2tzLSonIHByb3BlcnR5IGFuZCB0aGVu
IHVzZSB0aGUgY2xvY2sKPj4gd2l0aCB0aGUgcHJlZmVyYWJsZSBjbG9jayByYXRlLiBJIHRoaW5r
IHRoYXQgd2UgaGF2ZSB0byBmaXgKPj4gdGhlIGZ1bmRhbWVudGFsIHByb2JsZW0uCj4+Cj4+IFdp
dGhvdXQgYm9vdGxvYWRlciBwcm9ibGVtLCB5b3UgY2FuIGZpeCBpdCBieSBpbml0aWFsaXppbmcK
Pj4gdGhlIGNsb2NrIG9uIGR0IHdpdGggJ2Fzc2lnbmVkLWNsb2Nrcy0qJyBwcm9wZXJ0eS4KPj4K
Pj4gQXMgSSBrbmV3IHRoYXQgaXQgaXMgY29ycmVjdCB3YXkgYW5kIEkgYWx3YXlzIHRyaWVkIHRv
IGRvIHRoaXMgbWV0aG9kCj4+IGZvciByZXNvbHZpbmcgdGhlIHNpbWlsYXIgY2xvY2sgaXNzdWUu
Cj4+Cj4+IExhc3RseSwgSSB0aGluayB0aGF0IG15IG9waW5pb24gaXMgbW9yZSBzaW1wbGUgYW5k
IGNvcnJlY3QuCj4+IEl0IGNvdWxkIGdpdmUgdGhlIG1vcmUgY29ycmVjdCBpbmZvcm1hdGlvbiB0
byBsaW51eCBrZXJuZWwgdXNlcgo+PiB3aGljaCByZWZlciB0byB0aGUgZGV2aWNlIHRyZWUgZmls
ZS4KPj4KPj4gMS4gWW91ciBzdWdnZXN0aW9uCj4+IAlhLiBBZGQgb3BwLXRhYmxlIHdpdGggdW5z
dXBwb3J0ZWQgZnJlcXVlbmN5IG9uIGR0Cj4+IAliLiBUcnkgdG8gY2hhbmdlIHRoZSBjbG9jayBy
YXRlIG9uIGV4eW5vcy1idXMuYyBieSB1c2luZyB1bnN1cHBvcnRlZCBmcmVxdWVuY3kgZnJvbSBv
cHAtdGFibGUKPj4gCWMuIElmIGZhaWxlZCwgcmV0cnkgdG8gY2hhbmdlIHRoZSBjbG9jayByYXRl
IG9uIGV4eW5vcy1idXMuYwo+Pgo+PiAyLiBNeSBvcGluaW9uCj4+IAlhLiBJbml0aWFsaXplIHRo
ZSBQTEwgb3IgYW55IGNsb2NrIGJ5IHVzaW5nIGFzc2lnbmVkLWNsb2NrLSogcHJvcGVydHkgb24g
ZHQKPj4gCSAgIGFuZCBhZGQgb3BwLXRhYmxlIHdpdGggc3VwcG9ydGVkIGZyZXF1ZW5jeSBvbiBk
dAo+PiAJYi4gVHJ5IHRvIGNoYW5nZSB0aGUgY2xvY2sgcmF0ZSBvbiBleHlub3MtYnVzLmMgYnkg
dXNpbmcgc3VwcG9ydGVkIGZyZXF1ZW5jeSBmcm9tIG9wcC10YWJsZQo+Pgo+IEp1c3QgSSB0cmll
ZCB0byBhZGQgJ2Fzc2lnbmVkLWNsb2NrLXJhdGVzJyBwcm9wZXJ0eSB0byBpbml0aWFsaXplCj4g
dGhlIGNsb2NrIHJhdGUgb2Ygc29tZSBidXMgbm9kZSBhcyBmb2xsb3dpbmcgb24gb2Ryb2lkLXh1
MyBib2FyZDoKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9leHlub3M1NDIyLW9k
cm9pZC1jb3JlLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9leHlub3M1NDIyLW9kcm9pZC1jb3Jl
LmR0c2kKPiBpbmRleCA4MjkxNDdlMzIwZTAuLjlhMjM3YWY1NDM2YSAxMDA2NDQKPiAtLS0gYS9h
cmNoL2FybS9ib290L2R0cy9leHlub3M1NDIyLW9kcm9pZC1jb3JlLmR0c2kKPiArKysgYi9hcmNo
L2FybS9ib290L2R0cy9leHlub3M1NDIyLW9kcm9pZC1jb3JlLmR0c2kKPiBAQCAtNDIsNiArNDIs
OCBAQAo+ICAgfTsKPiAgIAo+ICAgJmJ1c193Y29yZSB7Cj4gKyAgICAgICBhc3NpZ25lZC1jbG9j
a3MgPSA8JmNsb2NrIENMS19ET1VUX0FDTEs0MDBfV0NPUkU+Owo+ICsgICAgICAgYXNzaWduZWQt
Y2xvY2stcmF0ZXMgPSA8NDAwMDAwMDAwPjsKPiAgICAgICAgICBkZXZmcmVxLWV2ZW50cyA9IDwm
bm9jcF9tZW0wXzA+LCA8Jm5vY3BfbWVtMF8xPiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAg
PCZub2NwX21lbTFfMD4sIDwmbm9jcF9tZW0xXzE+Owo+ICAgICAgICAgIHZkZC1zdXBwbHkgPSA8
JmJ1Y2szX3JlZz47Cj4gQEAgLTUwLDExICs1MiwxNSBAQAo+ICAgfTsKPiAgIAo+ICAgJmJ1c19u
b2Mgewo+ICsgICAgICAgYXNzaWduZWQtY2xvY2tzID0gPCZjbG9jayBDTEtfRE9VVF9BQ0xLMTAw
X05PQz47Cj4gKyAgICAgICBhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDwxMDAwMDAwMDA+Owo+ICAg
ICAgICAgIGRldmZyZXEgPSA8JmJ1c193Y29yZT47Cj4gICAgICAgICAgc3RhdHVzID0gIm9rYXki
Owo+ICAgfTsKPiAgIAo+ICAgJmJ1c19mc3lzX2FwYiB7Cj4gKyAgICAgICBhc3NpZ25lZC1jbG9j
a3MgPSA8JmNsb2NrIENMS19ET1VUX1BDTEsyMDBfRlNZUz47Cj4gKyAgICAgICBhc3NpZ25lZC1j
bG9jay1yYXRlcyA9IDwyMDAwMDAwMDA+Owo+ICAgICAgICAgIGRldmZyZXEgPSA8JmJ1c193Y29y
ZT47Cj4gICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ICAgfTsKPiBAQCAtMTIwLDYgKzEyNiw4
IEBACj4gICB9Owo+ICAgCj4gICAmYnVzX21zY2wgewo+ICsgICAgICAgYXNzaWduZWQtY2xvY2tz
ID0gPCZjbG9jayBDTEtfRE9VVF9BQ0xLNDAwX01TQ0w+Owo+ICsgICAgICAgYXNzaWduZWQtY2xv
Y2stcmF0ZXMgPSA8NDAwMDAwMDAwPjsKPiAgICAgICAgICBkZXZmcmVxID0gPCZidXNfd2NvcmU+
Owo+ICAgICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPiAgIH07CgoKV2VsbCwgdGhpcyBpcyBhIHBv
b3Igd29ya2Fyb3VuZC4gVGhlcmUgaXMgaW5kZWVkIG5vIHdhcm5pbmcsIGJ1dCB0aGUgCmNsb2Nr
IHJhdGVzIGFyZSBmYXIgZnJvbSB0aGUgc3BlY2lmaWVkIGluIHRoZSBkZXZpY2UgdHJlZS4gRm9y
IFdDT1JFIAphc3NpZ25lZC1jbG9jay1yYXRlcyA9IDw0MDAwMDAwMDA+IG9uIE9kcm9pZCBYVTMv
WFU0IGtlcm5lbCB3aWxsIHNldCAKZG91dF9hY2xrNDAwX3djb3JlIGNsb2NrIHRvIDI2Nk1Ieiwg
YmVjYXVzZSBpdCBpcyBub3QgcG9zc2libGUgdG8gZGVyaXZlIAo0MDBNSHogZnJvbSA1MzJNSHog
TVBMTC4uLgoKSSBwbGFuIHRvIG1lYXN1cmUgdGhlIGltcGFjdCBvZiBkaWZmZXJlbnQgcmF0ZXMg
b24gdGhlIHBlcmZvcm1hbmNlIG9mIAp0aGUgdmFyaW91cyBjb21wb25lbnRzIGFuZCBvdmVyYWxs
IHBvd2VyIGNvbnN1bXB0aW9uLiBPbmx5IHRoZW4gSU1ITyBpdCAKbWFrZXMgc2Vuc2UgdG8gZGVj
aWRlIGlmIHdlIHJlYWxseSBzaG91bGQgYWRqdXN0IE9QUHMgdG8gdGhlIGN1cnJlbnQgClBMTHMg
Y29uZmlndXJhdGlvbiAoLT4gYmFzaWNhbGx5IGRlZmluZSBmb2xsb3dpbmcgT1BQcyBmb3IgV0NP
UkU6IAo1MzJNSHosIDI2Nk1IeiwgMTMzTUhaIGFuZCA3N01Ieikgb3IgY2hhbmdlIFBMTCBjb25m
aWd1cmF0aW9uIGFuZCAKcmUtcGFyZW50IFdDT1JFIHRvIDEyMDBNSHogdG8gcHJvcGVybHkgZHJp
dmU6IDQwME1IeiwgMzAwTUh6LCAyMDBNSHogYW5kIAoxMDBNSHouCgpPdGhlciBkZXZmcmVxIGJ1
c2VzIHNob3VsZCBJTUhPIHVzZSB0aGUgdmFsdWVzIHNpbWlsYXIgdG8gdGhlIHNlbGVjdGVkIApm
b3IgV0NPUkUuCgpCZXN0IHJlZ2FyZHMKLS0gCk1hcmVrIFN6eXByb3dza2ksIFBoRApTYW1zdW5n
IFImRCBJbnN0aXR1dGUgUG9sYW5kCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
