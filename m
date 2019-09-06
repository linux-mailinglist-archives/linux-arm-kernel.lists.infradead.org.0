Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B469CAB008
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 03:10:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rFkkWV6HU7ArfVujoAnEIdBMQQMQDWJ+cOyYSg5bOU4=; b=UiSIHRwB2auOb6
	b2pGdphgFzfFWQweFHDap/Ciwbtpz0mOSSQRPdLQpVkL2+iQe9+6EBAC8WRRDTaWX8CoXYZiGqXpf
	C5mUtDuql/2rLGqZmtGbVnxnXij99G1ATxpJ3JqxytTdGJd9Jo6vfB3eTYB55qYvNBfZOh5/ZIGD6
	5zl6Zt0yE/9EF0zUcNaMhYjfYNlBL52+30vRy4PWRBDKU8jmuvfUjtlfbgxB7TZViFxzspxabhFrv
	L5FyfY/YgrdvoXvHoqpgGz1JKm/srp6t6ZxsRqM0TbVjpglmMQkDaWwtPP6Wz+jxe1f0SP6iLQ5dg
	Qw1WEcD741B3gOn+ZkVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i62lQ-0007yZ-Dp; Fri, 06 Sep 2019 01:10:12 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i62lH-0006w6-Aw
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 01:10:05 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190906010956epoutp03e3e9cb08fd73cd1bc5032898c65c3b99~BtCB3Py742382723827epoutp03E
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Sep 2019 01:09:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190906010956epoutp03e3e9cb08fd73cd1bc5032898c65c3b99~BtCB3Py742382723827epoutp03E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1567732196;
 bh=R/1SBy/e3IUgv5u0E3blonWcx55M0ueMCvMUQqYuNXI=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=W+ez4yXcr1jEAV/gdJo67s4b5iV9u7kUQy7qTbCljYIhV9vuL8AOn17ttdlyq3bg+
 fcSDrR56sI4p+K9CgKOhkGfTQVtGczXGeiIE452WCKeazlrqF1iXbuJ7e3cHAVjEmk
 L7dsstmPVRoHO2JRwDuwioRLLwPKocgWfeTGCa9c=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190906010956epcas1p1c1096911a058b2d7cefb6165513f113b~BtCBrek3p1072310723epcas1p1Z;
 Fri,  6 Sep 2019 01:09:56 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.152]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 46Pfc11XdtzMqYkW; Fri,  6 Sep
 2019 01:09:53 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 FA.DB.04160.1E1B17D5; Fri,  6 Sep 2019 10:09:53 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20190906010952epcas1p4a1c6399dd744c8d9aa2e60a0d28cec2d~BtB9zf-pj2444024440epcas1p4F;
 Fri,  6 Sep 2019 01:09:52 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190906010952epsmtrp231d06642f89b1a185ee1e0b3fc349b6d~BtB9yxuoD2286122861epsmtrp2J;
 Fri,  6 Sep 2019 01:09:52 +0000 (GMT)
X-AuditID: b6c32a38-b4bff70000001040-cb-5d71b1e1cd89
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 5C.DD.03706.0E1B17D5; Fri,  6 Sep 2019 10:09:52 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190906010952epsmtip2b8dc82b7a362d61f7327fd5754267c79~BtB9nPvPv2262922629epsmtip2x;
 Fri,  6 Sep 2019 01:09:52 +0000 (GMT)
Subject: Re: [PATCH v3 1/2] ARM: dts: exynos: Add support ARM architected
 timers on Exynos5
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <4616ea91-1b35-4ac4-4a9e-a5002b54fc1a@samsung.com>
Date: Fri, 6 Sep 2019 10:14:01 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190828121005.29368-2-m.szyprowski@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTcRTH++3u3l2l5a9ZeTTTeQtKyfQ6V9dQU5IQsrD6p4KlN72ouZe7
 W7SCEoSyWpIIoivp/VrGcmn08IUWZS97sIhCUvQPy7BQs/Ug2naL/O9zzvme3/d3fr9DE6pG
 KoouM1oFi5HXM1So/GZvfFLiUEuFLvllQwjX0uAmuf7+6wrOM/ya5Br6O2XctXsDCu72yT4y
 i8r1uA5TuTfOH8itaXWh3ElPTL58e3l6qcAXCxa1YCwyFZcZSzKY9VsK1hZoVyaziWwat4pR
 G3mDkMHk5OUnrivT+70Z9W5eb/On8nlRZJIy0y0mm1VQl5pEawYjmIv15jTzCpE3iDZjyYoi
 k2E1m5ycovULC8tLXz9/qDC3L9jTXVcnr0Qe1REUQgNOheHWSeIICqVV+BaCa0NuUgomEHR7
 flBSMI2g+ft94l9LfVtdkFW4A8HLkc2S6DOC6TGHv0DT4VgHjuq8gGYe3gs13T+CFgSuRHDp
 aCcZKFA4AbpG31ABDsNx4PUNowArcSZUdb0IauR4CYy6XUGej7fCxGAvKWnmQl/jiDzAIX79
 lzvDwQsROALejpySSRwLVW0ngsaA31EwNulTBC4HOAeqvm2WhgmHjw9aFRJHweR4ByXxPrjS
 d4+SeqsRtHY9J6WCBrou1MkC5xA4Htx3kqR0HNz+2YQk3zkw/tVBSlZKqD7496kXw6vBAZnE
 kXDu0GHqOGKcM6ZxzpjAOWMC53+z00juQgsEs2goEUTWnDrzsz0ouJYJ3C3U/iyvB2EaMbOV
 eMqsU5H8btFu6EFAE8w8pbvFn1IW8/a9gsVUYLHpBbEHaf2PXUtEzS8y+ZfcaC1gtSkajYZL
 ZVdqWZaJUJ7xcToVLuGtQrkgmAXLvz4ZHRJVieh9YY9905Exh5YtW229+vN99N3Ojd4daVPx
 GeFPbN790Sb7+NJFpw56d+p37R/1OdLrf33yNv2OtE7xqgsateVNYax40648yzxZ6AzNvtzL
 bk1bY3QtvRhZcUP14VhHTuH4hk3L+xJP6+wDu7aN1N7Nbg5rn3XO8Sjla8v0U6Y8q42Ri6U8
 m0BYRP4PCgJU7KwDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmphkeLIzCtJLcpLzFFi42LZdlhJXvfBxsJYg7UzJC02zljPanH+/AZ2
 i02Pr7FazDi/j8li7ZG77BY755xkdWDz2LSqk81j85J6j74tqxg9Pm+SC2CJ4rJJSc3JLEst
 0rdL4Mq4duEEe8EesYoDkyezNDBuEupi5OSQEDCRmLZ1MjOILSSwm1Fi3YoYiLikxLSLR4Hi
 HEC2sMThw8VdjFxAJW8ZJXb+uAcWFxaIlejp8AEpFxGoAirZygZSwyzQxCix69BHJoiGo4wS
 LRevsYJUsQloSex/cYMNxOYXUJS4+uMxI4jNK2An0bz/IlgNi4CKxIv1q8BsUYEIicM7ZkHV
 CEqcnPmEBcTmBKr/sOsx2NHMAuoSf+ZdgrLFJW49mc8EYctLNG+dzTyBUXgWkvZZSFpmIWmZ
 haRlASPLKkbJ1ILi3PTcYsMCw7zUcr3ixNzi0rx0veT83E2M4LjR0tzBeHlJ/CFGAQ5GJR5e
 gS8FsUKsiWXFlbmHGCU4mJVEeNdvBArxpiRWVqUW5ccXleakFh9ilOZgURLnfZp3LFJIID2x
 JDU7NbUgtQgmy8TBKdXAGBu099ysazauMs/O7r741ltyihFPcRLH3qePBa4/uXdw0kuPrbGr
 OHaZ7fgzQ7vk2FLfpNVXvn489vvtSZGa+mId8wvWnybp7J7GczpL7LHeP9s5tTzTp3In6D1k
 6Xm+YgKnpLDSPocnhWcZ5BlZ8tcYp7RPEVRoPfQs0ozFxIDd5teO9887rJVYijMSDbWYi4oT
 AUjp66iXAgAA
X-CMS-MailID: 20190906010952epcas1p4a1c6399dd744c8d9aa2e60a0d28cec2d
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190828121012eucas1p10bac7ebb742d968bca251f21dd3aad11
References: <20190828121005.29368-1-m.szyprowski@samsung.com>
 <CGME20190828121012eucas1p10bac7ebb742d968bca251f21dd3aad11@eucas1p1.samsung.com>
 <20190828121005.29368-2-m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_181003_560011_835395D6 
X-CRM114-Status: GOOD (  22.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marc Zyngier <maz@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVhciBNYXJlaywKCk9uIDE5LiA4LiAyOC4g7Jik7ZuEIDk6MTAsIE1hcmVrIFN6eXByb3dza2kg
d3JvdGU6Cj4gQWxsIENvcnRleEE3L0ExNSBiYXNlZCBFeHlub3M1IFNvQ3MgaGF2ZSBBUk0gYXJj
aGl0ZWN0ZWQgdGltZXJzLCBzbyBlbmFibGUKPiBzdXBwb3J0IGZvciB0aGVtIGRpcmVjdGx5IGlu
IHRoZSBiYXNlIGR0c2kuIE5vbmUgb2YgdGhlIGtub3duIGZpcm13YXJlCj4gcHJvcGVybHkgY29u
ZmlndXJlcyBDTlRGUlEgYXJjaCB0aW1lciByZWdpc3Rlciwgc28gZm9yY2UgY2xvY2sgZnJlcXVl
bmN5Cj4gdG8gMjRNSHosIHdoaWNoIGlzIHRoZSBvbmx5IGNvbmZpZ3VyYXRpb24gc3VwcG9ydGVk
IGJ5IHRoZSByZW1haW5pbmcKPiBjbG9jayBkcml2ZXJzIHNvIGZhci4KPiAKPiBTdG9jayBmaXJt
d2FyZSBmb3IgUGVhY2ggUGl0IGFuZCBQaSBDaHJvbWVib29rcyBhbHNvIGRvZXNuJ3QgcmVzZXQK
PiBwcm9wZXJseSBvdGhlciBhcmNoIHRpbWVyIHJlZ2lzdGVycywgc28gYWRkIHJlc3BlY3RpdmUg
cHJvcGVydGllcwo+IGluZGljYXRpbmcgdGhhdC4gT3RoZXIgRXh5bm9zNS1iYXNlZCBib2FyZHMg
YmVoYXZlcyBjb3JyZWN0bHkgaW4gdGhpcyBhcmVhLAo+IHdoYXQgZmluYWxseSBhbGxvd3MgdG8g
ZW5hYmxlIHN1cHBvcnQgZm9yIEtWTS1iYXNlZCB2aXJ0dWFsaXphdGlvbi4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Cj4gLS0t
Cj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczU0MjAtcGVhY2gtcGl0LmR0cyB8IDQgKysrKwo+
ICBhcmNoL2FybS9ib290L2R0cy9leHlub3M1NHh4LmR0c2kgICAgICAgICAgfCA5ICsrKysrKysr
Kwo+ICBhcmNoL2FybS9ib290L2R0cy9leHlub3M1ODAwLXBlYWNoLXBpLmR0cyAgfCA0ICsrKysK
PiAgMyBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtL2Jvb3QvZHRzL2V4eW5vczU0MjAtcGVhY2gtcGl0LmR0cyBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL2V4eW5vczU0MjAtcGVhY2gtcGl0LmR0cwo+IGluZGV4IGY3OGRiNjgwOWNjYS4uNzdlMDhh
NGM3MzAwIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczU0MjAtcGVhY2gt
cGl0LmR0cwo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczU0MjAtcGVhY2gtcGl0LmR0
cwo+IEBAIC0xMDY0LDYgKzEwNjQsMTAgQEAKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiAgfTsKPiAg
Cj4gKyZ0aW1lciB7Cj4gKwlhcm0sY3B1LXJlZ2lzdGVycy1ub3QtZnctY29uZmlndXJlZDsKPiAr
fTsKPiArCj4gICZ0bXVfY3B1MCB7Cj4gIAl2dG11LXN1cHBseSA9IDwmbGRvMTBfcmVnPjsKPiAg
fTsKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNTR4eC5kdHNpIGIvYXJj
aC9hcm0vYm9vdC9kdHMvZXh5bm9zNTR4eC5kdHNpCj4gaW5kZXggOWMzYjYzYjdjYWM2Li4wMmQz
NDk1N2NkODMgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNTR4eC5kdHNp
Cj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNTR4eC5kdHNpCj4gQEAgLTQ1LDYgKzQ1
LDE1IEBACj4gIAkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAgCX07Cj4gIAo+ICsJdGltZXI6IHRp
bWVyIHsKPiArCQljb21wYXRpYmxlID0gImFybSxhcm12Ny10aW1lciI7Cj4gKwkJaW50ZXJydXB0
cyA9IDxHSUNfUFBJIDEzIChHSUNfQ1BVX01BU0tfU0lNUExFKDQpIHwgSVJRX1RZUEVfTEVWRUxf
TE9XKT4sCj4gKwkJCSAgICAgPEdJQ19QUEkgMTQgKEdJQ19DUFVfTUFTS19TSU1QTEUoNCkgfCBJ
UlFfVFlQRV9MRVZFTF9MT1cpPiwKPiArCQkJICAgICA8R0lDX1BQSSAxMSAoR0lDX0NQVV9NQVNL
X1NJTVBMRSg0KSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+LAo+ICsJCQkgICAgIDxHSUNfUFBJIDEw
IChHSUNfQ1BVX01BU0tfU0lNUExFKDQpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT47Cj4gKwkJY2xv
Y2stZnJlcXVlbmN5ID0gPDI0MDAwMDAwPjsKPiArCX07Cj4gKwo+ICAJc29jOiBzb2Mgewo+ICAJ
CXN5c3JhbUAyMDIwMDAwIHsKPiAgCQkJY29tcGF0aWJsZSA9ICJtbWlvLXNyYW0iOwo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9leHlub3M1ODAwLXBlYWNoLXBpLmR0cyBiL2FyY2gv
YXJtL2Jvb3QvZHRzL2V4eW5vczU4MDAtcGVhY2gtcGkuZHRzCj4gaW5kZXggZTBmNDcwZmU1NGM4
Li41ZThjZWM3MzY0NDQgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNTgw
MC1wZWFjaC1waS5kdHMKPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9leHlub3M1ODAwLXBlYWNo
LXBpLmR0cwo+IEBAIC0xMDMzLDYgKzEwMzMsMTAgQEAKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiAg
fTsKPiAgCj4gKyZ0aW1lciB7Cj4gKwlhcm0sY3B1LXJlZ2lzdGVycy1ub3QtZnctY29uZmlndXJl
ZDsKPiArfTsKPiArCj4gICZ0bXVfY3B1MCB7Cj4gIAl2dG11LXN1cHBseSA9IDwmbGRvMTBfcmVn
PjsKPiAgfTsKPiAKCkkgdGVzdGVkIGl0IG9uIG9kcm9pZC14dTMgdG8gZW5hYmxlIGFyY2gtdGlt
ZXIgZm9yIEtWTS4KSW4gcmVzdWx0LCBJIGNvdWxkIGp1c3QgaW5pdGlhbGl6ZSBLVk0gb24geHUz
IHdpdGhvdXQgcHJvYmxlbS4KClRlc3RlZC1ieTogQ2hhbndvbyBDaG9pIDxjdzAwLmNob2lAc2Ft
c3VuZy5jb20+ClJldmlld2VkLWJ5OiBDaGFud29vIENob2kgPGN3MDAuY2hvaUBzYW1zdW5nLmNv
bT4KCgotLSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
