Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FBF116F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 12:11:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9oBHDsYILKShKALwGI99HGVSBwng5rHhxIM9gQyWATo=; b=OU5yh9I+F5Ad05
	ViePLHXB3SYp1FtZDpBnPiiRXx/rveCWNKXXalWqQ/X3wG2E99sEg/bUDWjtSNNOmF1rmlXAMxxRR
	DCxtcNyTu4DZMUMXuXc7+iN3TyWSnJ+SHfxUO4y6RaRGsG0cqcRPFz8RoNUvbn3jYXwQZ1HmqBCwE
	VE9FH/JevpVJhT4OtqPao/YesliOM0oZvlXMWbGQ8jSnrfzPV46Ij/yY9Ve8w2jQaLuWGas08z1Xq
	XGUDeYHJIhjKTPNsYlDYqcjThw0pFBGFcWmQDjLTeeuakdzJEo9D/7unTD4s+RymUoeetX4RXngJY
	C8lr0WK62t74mwGZq00Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM8gp-0005fu-8W; Thu, 02 May 2019 10:11:43 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM8gh-0005f1-EL
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 10:11:38 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190502101132euoutp0130ae2149589b4f563bf4fb32d2413f7e~a1fpC5My91000410004euoutp01j
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  2 May 2019 10:11:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190502101132euoutp0130ae2149589b4f563bf4fb32d2413f7e~a1fpC5My91000410004euoutp01j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1556791892;
 bh=nD4m6soRZa3s4ZYQlTYB5Pn9lG7QaoUuCQMHFmpymzo=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Cevn6rP9/mJuIgNPVx9wG4FzrXmbKKvyUZ5US/3j1yCeUw8+CAQasDzEy0QVvA2Sz
 cmYf2IeNh9UFIfD8WHHAUoZQl+/WzucarqWlVKUMqjUwSNoSQgwGkGkv8/uGa8YmT1
 lSbuL4JWpZ5d6OcJbkJMggXBbF7YzCOWRGkD/vcM=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190502101131eucas1p1c5ef883683f2243bc9bf468aa2270028~a1fofiZjK2547825478eucas1p1j;
 Thu,  2 May 2019 10:11:31 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id F2.15.04325.352CACC5; Thu,  2
 May 2019 11:11:31 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190502101130eucas1p191ded6ecb65d1003a4e654e10c59f4cf~a1fnxc83h1832818328eucas1p1W;
 Thu,  2 May 2019 10:11:30 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190502101130eusmtrp19b64bdc6824036a11b4e23c12ccd6be0~a1fnjMJgi2885928859eusmtrp1V;
 Thu,  2 May 2019 10:11:30 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-e2-5ccac25360b9
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 2C.E7.04146.252CACC5; Thu,  2
 May 2019 11:11:30 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190502101129eusmtip2b14c307027f983220512632f49223aa2~a1fmrWS8b3017030170eusmtip2j;
 Thu,  2 May 2019 10:11:29 +0000 (GMT)
Subject: Re: [PATCH v3 3/4] Documentation: devicetree: add PPMU events
 description
To: Chanwoo Choi <cw00.choi@samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <869966ae-6349-a1db-59cf-eba7c0c23aee@partner.samsung.com>
Date: Thu, 2 May 2019 12:11:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <52204c4b-80fa-1a87-2e00-1cfb774478f6@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01SbUhTYRj13d3d7oaT16XtoSJp9KMktSjqSpIJkTP8IRQRJeXMi0nObFct
 y2pWZo7ZZqHZtKzIlDE/0mkmJWTzY31NDZ34TRpFuSjWQqMkrzfJf+ec5zzvcw68FCEfIldQ
 KWkZjDZNnaoUSYXNnbPOkL3tL+M3Npkk9KPSOpJ2/fhI0hX2tyRtnPxC0E5nvZh+c3FaTDdM
 DpD0u9ZyEe0ptCO61NkmoGvso2K60tUroIdzq0V03jO7mH4xnU/SP7vfo51YZb1jRaon5lGx
 qsFSIFI1PrigumazIJWnYXWc6KA0IolJTclitGE7EqTHBjv/oPTmoNPdJb1CHXIp9EhCAd4C
 hpYZpEdSSo6rEZjz80U8+YHA0G8QcC459iD41qtZ3JgrHhfwpioETx53iHniRtDq7kCcaxne
 B7VjAwuDAOxAUJg7SnKE4J5yTAzME4oS4VBosZzkFmR4N3i89xdkIV4LZY0xnByID8B4Zz3J
 W/zBcWtKyGEJjoQiY8WCTmAFDE1VCHgcBJeaygjuFOBcCgw9JgEfexd4rZcJHi+Dz102MY9X
 wasbBiGPWdAV3kM8zoFJ4+1/nu3woqt3IRuB10NdaxgvR0Fj9R/EyYD9YNDtz0fwg+vNNwle
 lsHVK3LevQ5shp5/YZZDlbVEbEJK85Ji5iVlzEvKmP/fvYuEFqRgMllNMsNuTmNOhbJqDZuZ
 lhx69ISmAc3/uFdzXd4W1PY7sR1hCil9ZTPFjng5qc5iszXtCChCGSAbejovyZLU2WcY7Ykj
 2sxUhm1HKymhUiE76zNxSI6T1RnMcYZJZ7SLUwElWaFDQf3hv12rpofDo9fFP9WdGzMOeUcS
 0NinyBClPra8wPd5X0fMhF/s98TZyoI1MzF52sBt0btXR6l9y6Z2ntdsrprbWOupqA7fv7Vo
 JuJX1NcRhds4/vD8lOt15OGQvpJgmWDMV5IxanPdX6vPqYlr2uBjJ9K9xXnOWbTH9NL2oUAp
 ZI+pNwUTWlb9F3lKSSNtAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrPIsWRmVeSWpSXmKPExsVy+t/xe7pBh07FGEx5JmmxccZ6VovrX56z
 Wsw/co7Vov/xa2aL8+c3sFucbXrDbrHp8TVWi8u75rBZfO49wmgx4/w+Jou1R+6yWyy9fpHJ
 4nbjCjaL1r1H2C0Ov2lntfh24hGjg4DHmnlrGD12zrrL7rFpVSebx+Yl9R59W1YxenzeJBfA
 FqVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Kak1mWWqRvl6CXcePY
 X8aCbfIVJ6ZdZGlgvC7excjJISFgIvFv6n2mLkYuDiGBpYwS7bd2MUEkxCQm7dvODmELS/y5
 1sUGUfSaUWLx/dVsIAlhgRCJdfeusYMkRAROMkrMnvAXbBSzwGdGielrLjNDtExhkpg08QFQ
 GQcHm4CexI5VhSDdvAJuEp+/LmIFCbMIqEjM3uwJEhYViJA4834FC0SJoMTJmU/AbE4Be4mJ
 /fNZQWxmATOJeZsfMkPY4hK3nsxngrDlJZq3zmaewCg0C0n7LCQts5C0zELSsoCRZRWjSGpp
 cW56brGhXnFibnFpXrpecn7uJkZgZG879nPzDsZLG4MPMQpwMCrx8P6YejJGiDWxrLgy9xCj
 BAezkgjvrT1AId6UxMqq1KL8+KLSnNTiQ4ymQL9NZJYSTc4HJp28knhDU0NzC0tDc2NzYzML
 JXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2Mfmnm0c8u7Fz2aFXqzhtfsjMWnopwam0s+PYh
 yTnxzAJDo41nDT9zvZ96avvkHzNPshbJRU9OFOBxWv+vb5qemdTyV6+FrWIkDr+2ypL9llxZ
 qLODV65QavKhVyr/9zwJkl6UY2z30n2zhYJQ7+fJilcf3lt5JJaJxSMy8LD0qXxuh4JHgRxJ
 SizFGYmGWsxFxYkAjrkHKwIDAAA=
X-CMS-MailID: 20190502101130eucas1p191ded6ecb65d1003a4e654e10c59f4cf
X-Msg-Generator: CA
X-RootMTR: 20190419134822eucas1p29c6eff0f500311749b33c4f556123cf0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190419134822eucas1p29c6eff0f500311749b33c4f556123cf0
References: <1555681688-19643-1-git-send-email-l.luba@partner.samsung.com>
 <CGME20190419134822eucas1p29c6eff0f500311749b33c4f556123cf0@eucas1p2.samsung.com>
 <1555681688-19643-4-git-send-email-l.luba@partner.samsung.com>
 <52204c4b-80fa-1a87-2e00-1cfb774478f6@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_031136_164990_482468DE 
X-CRM114-Status: GOOD (  23.44  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, kgene@kernel.org,
 b.zolnierkie@samsung.com, krzk@kernel.org, kyungmin.park@samsung.com,
 robh+dt@kernel.org, myungjoo.ham@samsung.com, s.nawrocki@samsung.com,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hhbndvbywKCk9uIDQvMzAvMTkgODoxNiBBTSwgQ2hhbndvbyBDaG9pIHdyb3RlOgo+IEhp
IEx1a2FzeiwKPiAKPiBPbiAxOS4gNC4gMTkuIOyYpO2bhCAxMDo0OCwgTHVrYXN6IEx1YmEgd3Jv
dGU6Cj4+IEV4dGVuZCB0aGUgZG9jdW1lbmF0aW9uIGJ5IGV2ZW50cyBkZXNjcmlwdGlvbiB3aXRo
IG5ldyAnZXZlbnQtZGF0YS10eXBlJwo+PiBmaWVsZC4gQWRkIGV4YW1wbGUgaG93IHRoZSBldmVu
dCBtaWdodCBiZSBkZWZpbmVkIGluIERULgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBMdWthc3ogTHVi
YSA8bC5sdWJhQHBhcnRuZXIuc2Ftc3VuZy5jb20+Cj4+IC0tLQo+PiAgIC4uLi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2RldmZyZXEvZXZlbnQvZXh5bm9zLXBwbXUudHh0ICB8IDE4ICsrKysrKysrKysr
KysrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGV2ZnJlcS9ldmVudC9l
eHlub3MtcHBtdS50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGV2ZnJl
cS9ldmVudC9leHlub3MtcHBtdS50eHQKPj4gaW5kZXggM2UzNmMxZC4uNDdmZWI1ZiAxMDA2NDQK
Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RldmZyZXEvZXZlbnQv
ZXh5bm9zLXBwbXUudHh0Cj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9kZXZmcmVxL2V2ZW50L2V4eW5vcy1wcG11LnR4dAo+PiBAQCAtMTQ1LDMgKzE0NSwyMSBAQCBF
eGFtcGxlMyA6IFBQTVV2MiBub2RlcyBpbiBleHlub3M1NDMzLmR0c2kgYXJlIGxpc3RlZCBiZWxv
dy4KPj4gICAJCQlyZWcgPSA8MHgxMDRkMDAwMCAweDIwMDA+Owo+PiAgIAkJCXN0YXR1cyA9ICJk
aXNhYmxlZCI7Cj4+ICAgCQl9Owo+PiArCj4+ICtUaGUgJ2V2ZW50JyB0eXBlIHNwZWNpZmllZCBp
biB0aGUgUFBNVSBub2RlIGRlZmluZXMgJ2V2ZW50LW5hbWUnCj4+ICt3aGljaCBhbHNvIGNvbnRh
aW5zICdpZCcgbnVtYmVyIGFuZCBvcHRpb25hbGx5ICdldmVudC1kYXRhLXR5cGUnLgo+PiArCj4+
ICtFeGFtcGxlOgo+PiArCj4+ICsJCWV2ZW50cyB7Cj4+ICsJCQlwcG11X2xlZnRidXNfMDogcHBt
dS1ldmVudDAtbGVmdGJ1cyB7Cj4+ICsJCQkJZXZlbnQtbmFtZSA9ICJwcG11LWV2ZW50MC1sZWZ0
YnVzIjsKPj4gKwkJCQlldmVudC1kYXRhLXR5cGUgPSA8UFBNVV9ST19EQVRBX0NOVD47Cj4+ICsJ
CQl9Owo+PiArCQl9Owo+PiArCj4+ICtUaGUgJ2V2ZW50LWRhdGEtdHlwZScgZGVmaW5lcyB0aGUg
dHlwZSBvZiBkYXRhIHdoaWNoIHNoZWxsIGJlIGNvdW50ZWQKPj4gK2J5IHRoZSBjb3VudGVyLiBZ
b3UgY2FuIGNoZWNrIGluY2x1ZGUvZHQtYmluZGluZ3MvcG11L2V4eW5vc19wcG11LmggZm9yCj4+
ICthbGwgcG9zc2libGUgdHlwZSwgaS5lLiBjb3VudCByZWFkIHJlcXVlc3RzLCBjb3VudCB3cml0
ZSBkYXRhIGluIGJ5dGVzLAo+PiArZXRjLiBUaGlzIGZpZWxkIGlzIG9wdGlvbmFsIGFuZCB3aGVu
IGl0IGlzIG1pc3NpbmcsIHRoZSBkcml2ZXIgY29kZSB3aWxsCj4+ICt1c2UgZGVmYXVsdCBkYXRh
IHR5cGUuCj4+Cj4gCj4gSG93IGFib3V0IGVkaXRpbmcgaXQgYXMgZm9sbG93aW5nPwo+IAo+IC0t
LSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kZXZmcmVxL2V2ZW50L2V4eW5v
cy1wcG11LnR4dAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kZXZm
cmVxL2V2ZW50L2V4eW5vcy1wcG11LnR4dAo+IEBAIC0xMCwxNCArMTAsMjMgQEAgVGhlIEV4eW5v
cyBQUE1VIGRyaXZlciB1c2VzIHRoZSBkZXZmcmVxLWV2ZW50IGNsYXNzIHRvIHByb3ZpZGUgZXZl
bnQgZGF0YQo+ICAgdG8gdmFyaW91cyBkZXZmcmVxIGRldmljZXMuIFRoZSBkZXZmcmVxIGRldmlj
ZXMgd291bGQgdXNlIHRoZSBldmVudCBkYXRhIHdoZW4KPiAgIGRlcnRlcm1pbmcgdGhlIGN1cnJl
bnQgc3RhdGUgb2YgZWFjaCBJUC4KPiAgIAo+IC1SZXF1aXJlZCBwcm9wZXJ0aWVzOgo+ICtSZXF1
aXJlZCBwcm9wZXJ0aWVzIGZvciBQUE1VIGRldmljZToKPiAgIC0gY29tcGF0aWJsZTogU2hvdWxk
IGJlICJzYW1zdW5nLGV4eW5vcy1wcG11IiBvciAic2Ftc3VuZyxleHlub3MtcHBtdS12Mi4KPiAg
IC0gcmVnOiBwaHlzaWNhbCBiYXNlIGFkZHJlc3Mgb2YgZWFjaCBQUE1VIGFuZCBsZW5ndGggb2Yg
bWVtb3J5IG1hcHBlZCByZWdpb24uCj4gICAKPiAtT3B0aW9uYWwgcHJvcGVydGllczoKPiArT3B0
aW9uYWwgcHJvcGVydGllcyBmb3IgUFBNVSBkZXZpY2U6Cj4gICAtIGNsb2NrLW5hbWVzIDogdGhl
IG5hbWUgb2YgY2xvY2sgdXNlZCBieSB0aGUgUFBNVSwgInBwbXUiCj4gICAtIGNsb2NrcyA6IHBo
YW5kbGVzIGZvciBjbG9jayBzcGVjaWZpZWQgaW4gImNsb2NrLW5hbWVzIiBwcm9wZXJ0eQo+ICAg
Cj4gK1JlcXVpcmVkIHByb3BlcnRpZXMgZm9yICdldmVudHMnIGNoaWxkIG5vZGUgb2YgUFBNVSBk
ZXZpY2U6Cj4gKy0gZXZlbnQtbmFtZSA6IHRoZSB1bmlxdWUgZXZlbnQgbmFtZSBhbW9uZyBQUE1V
IGRldmljZQo+ICtPcHRpb25hbCBwcm9wZXJ0aWVzIGZvciAnZXZlbnRzJyBjaGlsZCBub2RlIG9m
IFBQTVUgZGV2aWNlOgo+ICstIGV2ZW50LWRhdGEtdHlwZSA6IERlZmluZSB0aGUgdHlwZSBvZiBk
YXRhIHdoaWNoIHNoZWxsIGJlIGNvdW50ZWQKPiArYnkgdGhlIGNvdW50ZXIuIFlvdSBjYW4gY2hl
Y2sgaW5jbHVkZS9kdC1iaW5kaW5ncy9wbXUvZXh5bm9zX3BwbXUuaCBmb3IKPiArYWxsIHBvc3Np
YmxlIHR5cGUsIGkuZS4gY291bnQgcmVhZCByZXF1ZXN0cywgY291bnQgd3JpdGUgZGF0YSBpbiBi
eXRlcywKPiArZXRjLiBUaGlzIGZpZWxkIGlzIG9wdGlvbmFsIGFuZCB3aGVuIGl0IGlzIG1pc3Np
bmcsIHRoZSBkcml2ZXIgY29kZQo+ICt3aWxsIHVzZSBkZWZhdWx0IGRhdGEgdHlwZS4KPiArCj4g
ICBFeGFtcGxlMSA6IFBQTVV2MSBub2RlcyBpbiBleHlub3MzMjUwLmR0c2kgYXJlIGxpc3RlZCBi
ZWxvdy4KPiAgIAo+ICAgICAgICAgICAgICAgICAgcHBtdV9kbWMwOiBwcG11X2RtYzBAMTA2YTAw
MDAgewo+IEBAIC0xNDUsMyArMTU0LDE2IEBAIEV4YW1wbGUzIDogUFBNVXYyIG5vZGVzIGluIGV4
eW5vczU0MzMuZHRzaSBhcmUgbGlzdGVkIGJlbG93Lgo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICByZWcgPSA8MHgxMDRkMDAwMCAweDIwMDA+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgICBz
dGF0dXMgPSAiZGlzYWJsZWQiOwo+ICAgICAgICAgICAgICAgICAgfTsKPiArCj4gK0V4YW1wbGU0
IDogJ2V2ZW50LWRhdGEtdHlwZScgaW4gZXh5bm9zNDQxMi1wcG11LWNvbW1vbi5kdHNpIGFyZSBs
aXN0ZWQgYmVsb3cuCj4gKwo+ICsgICAgICAgJnBwbXVfZG1jMCB7Cj4gKyAgICAgICAgICAgICAg
IHN0YXR1cyA9ICJva2F5IjsKPiArICAgICAgICAgICAgICAgZXZlbnRzIHsKPiArICAgICAgICAg
ICAgICAgICAgICAgICBwcG11X2RtYzBfMzogcHBtdS1ldmVudDMtZG1jMCB7Cj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBldmVudC1uYW1lID0gInBwbXUtZXZlbnQzLWRtYzAiOwo+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZXZlbnQtZGF0YS10eXBlID0gPChQUE1V
X1JPX0RBVEFfQ05UIHwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBQUE1VX1dPX0RBVEFfQ05UKT47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgfTsK
PiArICAgICAgICAgICAgICAgfTsKPiArICAgICAgIH07Cj4gCj4gCkkgd2lsbCBhbHNvIGFkZCB5
b3VyIFNpZ25lZC1vZmYtYnkgdG8gdGhpcyBwYXRjaCwgc2ltaWxhciB0byB3aGF0IHdlCmhhdmUg
YWdyZWVkIGZvciBwYXRjaCAnUEFUQ0ggdjMgMi80Jy4KClJlZ2FyZHMsCkx1a2FzegoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
