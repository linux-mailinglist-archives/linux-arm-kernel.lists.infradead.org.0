Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 288316C90A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 08:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JgI0AvYtduMV2E7ZaKSr0annULw5kNW53d7n6yHIp8w=; b=MuTSKeB2cg1hGu
	KrulxyRkJ7FlsLw7EVeiIYPpTyZo6X/5WwwMLaBC/K1QxVD+v+nvvZaphbD0B0whKIPQO9B0lK9MW
	1YryK/X/IfgqYZAoAlcvPCirA0E1m8XV7XU4RKdqXFVIVkQTxrIQfnNFeas3HKwdwKRfbeR17qTjf
	OG9foP/k0H94uxyl1w4+LYYS7MbefuyCvehtT28QA9Kqr5Zlf/AuTRl6ewmQ3DRFVSGTat1F64ZY/
	opa3sAhTAT0C8eeVXodcZLYEUy4OuRftph6BoMCkowSX2XEFOxtwhz9YtwGMfNaag0ajPnwL+K3om
	W04d8nyH3Ar3dtxyCBJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnzVZ-00038v-PY; Thu, 18 Jul 2019 06:03:14 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnzVG-000379-Hz
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 06:02:58 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190718060252euoutp0285a4c87cf2a271f3cb792c6ad78ec875~yaxhN0ET90956109561euoutp02x
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 06:02:52 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190718060252euoutp0285a4c87cf2a271f3cb792c6ad78ec875~yaxhN0ET90956109561euoutp02x
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563429772;
 bh=0ST1brnTCEkGXCsDHqqYxoIz17apf22c7auT1HUgQ6I=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=WanHS1Q2SK7EHL1EVo7xcec3df5GFP1tzddn+jjO0Q7nmhFOw2ifFxwzxm48P9X7F
 YtRjBvY6Zn0B0kSEpcTRRvkekUIiks6IJj3nZKSSgx7/OyVqGN2pAWqSW+zPzDOuK4
 yMFg2w+KQ8vEBcp+7YxKdUjC3RN+0828zD5hSrpI=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190718060251eucas1p1620bb64523a7763ce99001a1bd04a378~yaxgX3iJn1078510785eucas1p10;
 Thu, 18 Jul 2019 06:02:51 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 7D.41.04377.B8B003D5; Thu, 18
 Jul 2019 07:02:51 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190718060250eucas1p2657899e6de98b70915ba6e15b1e95a10~yaxfgLkvr3116431164eucas1p2v;
 Thu, 18 Jul 2019 06:02:50 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190718060250eusmtrp1a7d7e3171e4b2e393024625a6aa98422~yaxfR87OT0969409694eusmtrp1d;
 Thu, 18 Jul 2019 06:02:50 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-22-5d300b8b7237
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 13.17.04140.A8B003D5; Thu, 18
 Jul 2019 07:02:50 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190718060249eusmtip209fc28787ad7986876fcebb08d473959~yaxeVZQJZ2322723227eusmtip2Z;
 Thu, 18 Jul 2019 06:02:49 +0000 (GMT)
Subject: Re: [PATCH v1 01/50] clk: samsung: add new IDs for Exynos5420 clocks
To: Chanwoo Choi <cw00.choi@samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <6dfe9e43-48da-a4a6-7af1-d00a817852bb@partner.samsung.com>
Date: Thu, 18 Jul 2019 08:02:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <f8ff72f9-4a55-40c6-fdb9-bb4cddd00cf9@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRju27m6XBynthcri4V0odTC4IuiC5SNCupXZRZ1qoONtmU7WllR
 WzXTaRYFarPMIFOmtlwrYqCZl0ytbAhaDmO0UZSXEA26Ws4zyX/P+zzP+37P+/KxhDJAxbBa
 Q4ZgNPA6NS0nHz//0bk0b3ri3sShmjjce/81hWuLHRTuGf1E4dvN4+UVfz+BOzsfMPjV+QEG
 O/3dFB7Of0/hLvdNGhd31stwTXMfg8t7PDLsad+IveZKGlvqmhncNHCJwmPdteQ6paa6tBpp
 vr61MBqnPZfWPLx7TlPgsiPNiDN2O71bvvqQoNMeF4wJa/bLD3urnqL0wbknezoaCRNqBisK
 Y4FLgsGaQsaK5KySq0Tg679JScUoggJfESEVIwjMFptssqX0W05IqEDwobs0VAwicFQ3TLgi
 uW3gr/pDB4Uorn283WedEAiuUAa20mgrYlmai4cn9mNBWsElw3DuRzqISS4O6p2+CXs0twu6
 XG4keSKg7UaADOIwbi0Ut31kpJEq6A3cDo2fCxcelUwEAi6XhQfP7IQUewPk9ddSEo6EL60u
 RsKzoeN6PilhEUyX7yAJnwH/lVshzypoavVQwcwEtwgc7gSJXg+Wi24mSAM3A94ORkgRZsC1
 x8HLBWkF5GQrJfdCcOW/Cd1wJlRUFzJXkdo2ZTHblGVsU5ax/X+3DJF2pBIyRX2aIC43CCfi
 RV4vZhrS4g8e1TvR+N/rGGsdfYLcvw80Io5F6nCFaV7CXiXFHxez9I0IWEIdpfB+HqcUh/is
 U4Lx6D5jpk4QG9EsllSrFKen+VKVXBqfIRwRhHTBOKnK2LAYEzrbXvIuJ6B9sTIxRhen35qV
 HFsZi+u6Er5f27IqameMc174rfKUX30pe8xlemf7/J/eBYkFjrzk4Yg5kapXZUUftF0gEp91
 92YaMpBn2LSRX2JpIDcfaRj4m1FRZqYoG2qztmwqv+5Kz/a/hKLAiqSSHdH3UpcMpXhavvWm
 X1aT4mF+2WLCKPL/AKEIZc53AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrGIsWRmVeSWpSXmKPExsVy+t/xe7pd3AaxBr9XqlncWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFtsenyN1eJjzz1Wi8u75rBZzDi/j8li7ZG77BZL
 r19ksrh4ytXiduMKNovWvUfYLQ6/aWe1+HdtI4uDkMeaeWsYPd7faGX32LSqk81j85J6j74t
 qxg9Pm+SC2CL0rMpyi8tSVXIyC8usVWKNrQw0jO0tNAzMrHUMzQ2j7UyMlXSt7NJSc3JLEst
 0rdL0Mu4vXo/Y8Fb+Yrrpw8xNzAekehi5OSQEDCRmPe1gxnEFhJYyijxb4UJRFxMYtK+7ewQ
 trDEn2tdbF2MXEA1rxklNkxcCeRwcAgL+Eq8umgOEhcROMUo0f1oMRtIA7PANCaJE+uZIRr+
 MEqcOXeVBaSBTUBPYseqQpAaXgE3iY+dz8DqWQRUJfZtesAEYosKREj0tc1mg6gRlDg58wkL
 iM0pYC8x4+Qzdoj5ZhLzNj9khrDFJW49mc8EYctLNG+dzTyBUWgWkvZZSFpmIWmZhaRlASPL
 KkaR1NLi3PTcYiO94sTc4tK8dL3k/NxNjMA433bs55YdjF3vgg8xCnAwKvHw3lDSjxViTSwr
 rsw9xCjBwawkwnv7JVCINyWxsiq1KD++qDQntfgQoynQcxOZpUST84EpKK8k3tDU0NzC0tDc
 2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA+Np/UoW6TMS/6fzyvbmbVDn/MqQI+U6
 O2Tjo7Oze35rledJLZTPXb+lcNWT8tarBS//cC7iz1eZ/WB63YErm27P/N7rVrDba0KIvdji
 rwt23D3Y8HJh3ZOZnC4lF/7XtQTqtoSn1tx476O6+8ilJ2edhPTfm8fNkGX8skb79va/v6Yx
 G923zCpRYinOSDTUYi4qTgQAQj90pAkDAAA=
X-CMS-MailID: 20190718060250eucas1p2657899e6de98b70915ba6e15b1e95a10
X-Msg-Generator: CA
X-RootMTR: 20190715124434eucas1p273e2efaad8bc3904c6f76cc1671aeb6c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124434eucas1p273e2efaad8bc3904c6f76cc1671aeb6c
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124434eucas1p273e2efaad8bc3904c6f76cc1671aeb6c@eucas1p2.samsung.com>
 <20190715124417.4787-2-l.luba@partner.samsung.com>
 <f8ff72f9-4a55-40c6-fdb9-bb4cddd00cf9@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_230254_725852_1EB1A23B 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, b.zolnierkie@samsung.com, sboyd@kernel.org,
 mturquette@baylibre.com, krzk@kernel.org, a.hajda@samsung.com,
 robh+dt@kernel.org, kyungmin.park@samsung.com, kgene@kernel.org,
 myungjoo.ham@samsung.com, s.nawrocki@samsung.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA3LzE2LzE5IDExOjQ5IEFNLCBDaGFud29vIENob2kgd3JvdGU6Cj4gSGksCj4gCj4gVXN1
YWxseSwgd2hlbiBkZXZlbG9waW5nIHRoZSBjbG9jayBjb250cm9sbGVyIGRyaXZlciwKPiBkZWZp
bmUgdGhlIHNhbWUgc2VxdWVuY2UgYmV0d2VlbiB0aGUgZGVmaW5pdGlvbiBzZXF1ZW5jZSBpbiBk
dC1iaWJpbmcKPiBhbmQgY2xvY2sgZHJpdmVyLiBBcyBJIHJlcGxpZWQsIGlmIHlvdSBzcXVhc2gg
cGF0Y2hlcywgaXQgaXMgZWFzeS4KT0sKPiAKPiBGb3IgZXhhbXBsZSwKPiBUaGlzIHNlcmllcyBh
ZGQgY2xvY2sgaWQgYXMgZm9sbG93aW5nLgo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAo+ICAgNTY5
ICAgICAgICAgTVVYKENMS19NT1VUX0FDTEs0MDBfSVNQLCAibW91dF9hY2xrNDAwX2lzcCIsIG1v
dXRfZ3JvdXAxX3AsCj4gICA1NzAgICAgICAgICAgICAgICAgICAgICAgICAgU1JDX1RPUDAsIDAs
IDIpLAo+ICAgNTcxICAgICAgICAgTVVYKENMS19NT1VUX0FDTEs0MDBfTVNDTCwgIm1vdXRfYWNs
azQwMF9tc2NsIiwgbW91dF9ncm91cDFfcCwKPiAgIDU3MiAgICAgICAgICAgICAgICAgICAgICAg
ICBTUkNfVE9QMCwgNCwgMiksCj4gICA1NzMgICAgICAgICBNVVgoQ0xLX01PVVRfQUNMSzQwMF9X
Q09SRSwgIm1vdXRfYWNsazQwMF93Y29yZSIsIG1vdXRfZ3JvdXAxX3AsCj4gICA1NzQgICAgICAg
ICAgICAgICAgICAgICAgICAgU1JDX1RPUDAsIDE2LCAyKSwKPiAgIDU3NSAgICAgICAgIE1VWChD
TEtfTU9VVF9BQ0xLMTAwX05PQywgIm1vdXRfYWNsazEwMF9ub2MiLCBtb3V0X2dyb3VwMV9wLAo+
ICAgNTc2ICAgICAgICAgICAgICAgICAgICAgICAgIFNSQ19UT1AwLCAyMCwgMiksCj4gCj4gSW4g
Y2FzZSBvZiB0aGlzIGNvZGUsIHlvdSBjYW4gZGVmaW5lIHRoZSBJRHMgYXMgZm9sbG93aW5nIHNl
cXVlbnRpYWxseToKPiAKPiAjZGVmaW5lIENMS19NT1VUX0FDTEs0MDBfSVNQIC4uLgo+ICNkZWZp
bmUgQ0xLX01PVVRfQUNMSzQwMF9NU0NMIC4uLgo+ICNkZWZpbmUgQ0xLX01PVVRfQUNMSzQwMF9X
Q09SRSAuLi4KPiAjZGVmaW5lIENMS19NT1VUX0FDTEsxMDBfTk9DIC4uLgo+IApUaGFuayB5b3Ug
Zm9yIHRoaXMgZXhhbXBsZS4gSSB3aWxsIGFsaWduIHRoZW0uCgpSZWdhcmRzLApMdWthc3oKPiAK
PiBCdXQsIHRoaXMgc2VyaWVzIGRlZmluZSB0aGUgSUQgYXMgZm9sbG93aW5nOgo+IAkjZGVmaW5l
IENMS19NT1VUX0FDTEs0MDBfV0NPUkUgICAgICAgICAgNjYyCj4gI2RlZmluZSBDTEtfTU9VVF9T
Q0xLX0RQTEwgICAgICA2NjMKPiAJI2RlZmluZSBDTEtfTU9VVF9BQ0xLMTAwX05PQyAgICA2NjQK
PiAjZGVmaW5lIENMS19NT1VUX0FDTEsyMDBfRlNZUzIgIDY2NQo+ICNkZWZpbmUgQ0xLX01PVVRf
UENMSzIwMF9GU1lTICAgNjY2Cj4gI2RlZmluZSBDTEtfTU9VVF9BQ0xLMjAwX0ZTWVMgICA2NjcK
PiAJI2RlZmluZSBDTEtfTU9VVF9BQ0xLNDAwX0lTUCAgICA2NjgKPiAJI2RlZmluZSBDTEtfTU9V
VF9BQ0xLNDAwX01TQ0wgICA2NjkKPiAjZGVmaW5lIENMS19NT1VUX1NDTEtfTVBMTCAgICAgIDcw
MAo+ICNkZWZpbmUgQ0xLX01PVVRfQUNMSzI2NiAgICAgICAgNzAxCj4gI2RlZmluZSBDTEtfTU9V
VF9VQVJUMCAgICAgICAgICA3MDIKPiAjZGVmaW5lIENMS19NT1VUX1VBUlQxICAgICAgICAgIDcw
Mwo+ICNkZWZpbmUgQ0xLX01PVVRfVUFSVDIgICAgICAgICAgNzA0Cj4gI2RlZmluZSBDTEtfTU9V
VF9VQVJUMyAgICAgICAgICA3Cj4gCj4gT24gMTkuIDcuIDE1LiDsmKTtm4QgOTo0MywgTHVrYXN6
IEx1YmEgd3JvdGU6Cj4+IFRoZXJlIGlzIGEgbmVlZCBvZiBuZXcgSURzIHdoaWNoIHdpbGwgYmUg
dXNlZCBmb3IgbW9kZWxpbmcgcHJvcGVyIGhpZXJhcmNoeQo+PiBpbiB0aGUgRXh5bm9zNTR4eCBT
b0NzLiBQcmV2aW91cyBpbXBsZW1lbnRhdGlvbiByZWx5IG9uIGJvb3Rsb2FkZXIKPj4gc2V0dGlu
Z3MsIHdoaWNoIGFyZSBub3QgY29uZmlndXJpbmcgcHJvcGVybHkgc29tZSBjbG9ja3MuCj4+IFRo
ZXNlIElEcyBwcm92aWRlIGludGVyZmFjZSB0byBzZXQgcHJvcGVyIHBhcmVudHMuCj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IEx1a2FzeiBMdWJhIDxsLmx1YmFAcGFydG5lci5zYW1zdW5nLmNvbT4KPj4g
LS0tCj4+ICAgaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9leHlub3M1NDIwLmggfCAyNyArKysr
KysrKysrKysrKysrKysrKysrKysrLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdz
L2Nsb2NrL2V4eW5vczU0MjAuaCBiL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svZXh5bm9zNTQy
MC5oCj4+IGluZGV4IDAyZDVhYzQ2OWEzZC4uYzM3YTI4ZWVhZjdlIDEwMDY0NAo+PiAtLS0gYS9p
bmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2V4eW5vczU0MjAuaAo+PiArKysgYi9pbmNsdWRlL2R0
LWJpbmRpbmdzL2Nsb2NrL2V4eW5vczU0MjAuaAo+PiBAQCAtMjMwLDYgKzIzMCwzMCBAQAo+PiAg
ICNkZWZpbmUgQ0xLX01PVVRfVVNFUl9NQVVfRVBMTAk2NTkKPj4gICAjZGVmaW5lIENMS19NT1VU
X1NDTEtfU1BMTAk2NjAKPj4gICAjZGVmaW5lIENMS19NT1VUX01YX01TUExMX0NDT1JFX1BIWQk2
NjEKPj4gKyNkZWZpbmUgQ0xLX01PVVRfQUNMSzQwMF9XQ09SRQkJNjYyCj4+ICsjZGVmaW5lIENM
S19NT1VUX1NDTEtfRFBMTAk2NjMKPj4gKyNkZWZpbmUgQ0xLX01PVVRfQUNMSzEwMF9OT0MJNjY0
Cj4+ICsjZGVmaW5lIENMS19NT1VUX0FDTEsyMDBfRlNZUzIJNjY1Cj4+ICsjZGVmaW5lIENMS19N
T1VUX1BDTEsyMDBfRlNZUwk2NjYKPj4gKyNkZWZpbmUgQ0xLX01PVVRfQUNMSzIwMF9GU1lTCTY2
Nwo+PiArI2RlZmluZSBDTEtfTU9VVF9BQ0xLNDAwX0lTUAk2NjgKPj4gKyNkZWZpbmUgQ0xLX01P
VVRfQUNMSzQwMF9NU0NMCTY2OQo+PiArI2RlZmluZSBDTEtfTU9VVF9TQ0xLX01QTEwJNzAwCj4+
ICsjZGVmaW5lIENMS19NT1VUX0FDTEsyNjYJNzAxCj4+ICsjZGVmaW5lIENMS19NT1VUX1VBUlQw
CQk3MDIKPj4gKyNkZWZpbmUgQ0xLX01PVVRfVUFSVDEJCTcwMwo+PiArI2RlZmluZSBDTEtfTU9V
VF9VQVJUMgkJNzA0Cj4+ICsjZGVmaW5lIENMS19NT1VUX1VBUlQzCQk3MDUKPj4gKyNkZWZpbmUg
Q0xLX01PVVRfU0NMS19DUExMCTcwNgo+PiArI2RlZmluZSBDTEtfTU9VVF9QV00JCTcwNwo+PiAr
I2RlZmluZSBDTEtfTU9VVF9BQ0xLMjY2X0cyRAkJNzA4Cj4+ICsjZGVmaW5lIENMS19NT1VUX1NX
X0FDTEs0MDBfV0NPUkUJNzA5Cj4+ICsjZGVmaW5lIENMS19NT1VUX1NXX0FDTEs0MDBfTVNDTAk3
MTAKPj4gKyNkZWZpbmUgQ0xLX01PVVRfU1dfQUNMSzQwMF9JU1AJCTcxMQo+PiArI2RlZmluZSBD
TEtfTU9VVF9TV19BQ0xLMjY2X0lTUAkJNzEyCj4+ICsjZGVmaW5lIENMS19NT1VUX1VTRVJfQUNM
SzI2Nl9JU1AJNzEzCj4+ICsjZGVmaW5lIENMS19NT1VUX0FDTEsyNjZfSVNQCTcxNAo+PiArI2Rl
ZmluZSBDTEtfTU9VVF9NTUMwCQk3MTUKPj4gICAKPj4gICAvKiBkaXZpZGVyIGNsb2NrcyAqLwo+
PiAgICNkZWZpbmUgQ0xLX0RPVVRfUElYRUwJCTc2OAo+PiBAQCAtMjY0LDggKzI4OCw5IEBACj4+
ICAgI2RlZmluZSBDTEtfRkZfRE9VVF9TUExMMgk3OTcKPj4gICAjZGVmaW5lIENMS19ET1VUX1BD
TEtfRFJFWDAJNzk4Cj4+ICAgI2RlZmluZSBDTEtfRE9VVF9QQ0xLX0RSRVgxCTc5OQo+PiArI2Rl
ZmluZSBDTEtfRE9VVF9BQ0xLMjY2X0lTUAk4MDAKPj4gICAKPj4gICAvKiBtdXN0IGJlIGdyZWF0
ZXIgdGhhbiBtYXhpbWFsIGNsb2NrIGlkICovCj4+IC0jZGVmaW5lIENMS19OUl9DTEtTCQk4MDAK
Pj4gKyNkZWZpbmUgQ0xLX05SX0NMS1MJCTgwMQo+PiAgIAo+PiAgICNlbmRpZiAvKiBfRFRfQklO
RElOR1NfQ0xPQ0tfRVhZTk9TXzU0MjBfSCAqLwo+Pgo+IAo+IAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
