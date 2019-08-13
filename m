Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D738BC7F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 17:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=G0dFLzTAvJU07NW0Zq9Uhfm6FzdL7QfZh0frD1V0h9U=; b=kg30s0eOQEKpxa
	D10HqV/c32WdekW9xC+/vzMUXO4njM5we6UOLBxbbVpp5OngDZw0+7Ww417MoSKMQS82VQ8aIaDtb
	1gl1MN3qKuWj336KqYlPauwJ9+jqludOa6NfNKdCNXWIwByJE0QdO8FJYu8TVPuKSKh6T/ouGuqTK
	M/yQg1kk++bWpmfmahRRIoZrV6uOMQOfIHqZf/K/gS9c30bxr0PHsdHji4HnnL0FgajhmZPXnM4L3
	jCnnwr4ARb7Uv4gKbLZ2OO4LaCkt/LCNHojOELXXtjePGWVrRjYt9Oj+URraxfhFiU2NcznLhN8Wk
	xpVrpFxNDrsD290t8W7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxYQ1-00034n-OF; Tue, 13 Aug 2019 15:09:01 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxYPo-00033n-ET
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 15:08:50 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190813150844euoutp026f951cadd486c405db12e5706e41f52d~6g-idozkl1875518755euoutp02T
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 15:08:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190813150844euoutp026f951cadd486c405db12e5706e41f52d~6g-idozkl1875518755euoutp02T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565708924;
 bh=7ATlolmKB2vLAwWlEKLrEMvaSHiuKCWTBcweaWIHNYc=;
 h=From:To:Cc:Subject:Date:References:From;
 b=FihvMt4lSk7Hj2Nd8IkQjvu2q/vtJ4BP4vj/J7R/E9nfnFIMxQybD7P0PLdUlyFq8
 juH4xaZB+0ydCehHmjahW3xUZer6TfD4Ul6vdLJsWHgU6X+P9/NHYRp/1REBIefxh1
 OaoJBW5U7q/NhZOxX4CFBs7Xbf9iPeFvptqJ3G6s=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190813150843eucas1p19382c776b90dd8a959dbfabde955d639~6g-h5XLUT0898208982eucas1p1J;
 Tue, 13 Aug 2019 15:08:43 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id C2.9E.04309.B72D25D5; Tue, 13
 Aug 2019 16:08:43 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190813150842eucas1p2c248537d9cd593073e12abeac2cacab5~6g-g7bwt52657926579eucas1p2u;
 Tue, 13 Aug 2019 15:08:42 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190813150842eusmtrp15fcd0a834058ad23143a20e535a97203~6g-grdCL91601316013eusmtrp1j;
 Tue, 13 Aug 2019 15:08:42 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-d9-5d52d27b5da6
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 06.C1.04166.A72D25D5; Tue, 13
 Aug 2019 16:08:42 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190813150841eusmtip2c0cefc9844cbef5bf5c605e8884af6ed~6g-gC7cEV1406314063eusmtip2X;
 Tue, 13 Aug 2019 15:08:41 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org
Subject: [PATCH v3 0/9] Exynos Adaptive Supply Voltage support
Date: Tue, 13 Aug 2019 17:08:18 +0200
Message-Id: <20190813150827.31972-1-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01SfSyUcRzv97zc8zDHzyHfXaa6MquWl9CepolV223WMrU2lenKM4zDnvOS
 /JHNVIRUW6RaSnbnTDhHIta8zlTCZrcpydtCkVxbRcl5KP99Xr6f7+/z3X4sKWug5WxMfBIv
 xKviFBJrqr7zZ+/e9P7QcK8q02aupqiK5h62v6G5G2MzJNfbW81whrFBmhtovC/hFvLaEVfU
 20Jwle3vGe5xnZnhsprbGa7t81Waqx3plARKlQZ9tkRZ++SyMt+oR8oFg2sIddr6YCQfF5PC
 C54B56yjOxeqqMRCp4vNS8/IDPQW5yArFrAvvCv+TuQga1aGdQgymyrWiBlBf3UNI5IFBFPd
 HWg9Mv7rFS0aWgQfJ7X0v0iGScdYpiTYG/I68lcTjtgBhsu0q6tIPExAz8RrwmI44AAYH10m
 LZjCbmB8sbiCWVaK/aHsQYL42laoqH65OiLF9tB9d5yyYHJFz6y7R1p2An7KQNtoPiMGjsDk
 w1ZaxA4w3WVc012g53YuJQYyEeQ2DTEiKUDwoatk7Th/aOvqoy0tSLwLqho9RTkIimp1EosM
 2BZMX+zFErZwq76QFGUpXLsiE6d3wqK+kBCxHK6PL1MiVsLs4PJqHRkOh2HzDFGAthVvOK14
 w2nF/zuUIFKPnPlkjTqK1+yL51M9NCq1Jjk+yuNCgtqAVv5Tz58ucwNqXDrfijCLFDbSEGNo
 uIxWpWjS1K0IWFLhKC3oW5Gkkaq0S7yQECEkx/GaVrSFpRTO0vRNI2dkOEqVxMfyfCIvrLsE
 ayXPQMHTi8+VXn7aJhfnww4FYNIKFS5BSwduHpoLTZ1yfUTg2RNJgkHi3u8e9tu3xfUU53gs
 f3bMXOrm0xTett9mPrC8LBup7bzCVNvLf+woFbqHvpqD6z75SHQzcyePH5Urzwb4yearnTrs
 vnlOyF1jAwci9tgOjt7x6B5trkwishSUJlrlvZsUNKq/gyHdpEsDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xe7pVl4JiDdbe4LfYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y26xaOsXdovWvUfYLQ6/aWe1
 2PzgGJsDr8emVZ1sHpuX1Hv0bVnF6PF5k1wAS5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJ
 pZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexrHP61kKpotW7P2znbmB8YJAFyMnh4SAicSTX2dY
 QWwhgaWMEg2tMl2MHEBxKYn5LUoQJcISf651sXUxcgGVfGKUmDHpFiNIgk3AUKL3aB+YLQJU
 dG/pcnaQImaBV0wSt+f9ZwJJCAvYSTx59J8ZxGYRUJXYsuc3M8gCXgFriaVz8yEWyEus3nAA
 rIRXQFDi5MwnLCAlzALqEuvnCYGEmYFKmrfOZp7AyD8LSdUshKpZSKoWMDKvYhRJLS3OTc8t
 NtQrTswtLs1L10vOz93ECIyebcd+bt7BeGlj8CFGAQ5GJR7egC1BsUKsiWXFlbmHGCU4mJVE
 eCdcBArxpiRWVqUW5ccXleakFh9iNAX6YCKzlGhyPjCy80riDU0NzS0sDc2NzY3NLJTEeTsE
 DsYICaQnlqRmp6YWpBbB9DFxcEo1MJaah3wSb63vzrd/acX6UM5vefZ1074yda/UTbNeb37e
 f9vQWnhbxyvODUs47mocXrSQIZv3zMVzXNtZrO+KrpOKZ/3ZKvz2mN7KZY7TbTcnC/3YcTeo
 f3uEu9Jl3dIDD6TmSnhHhZ5LtRfYrv757aJ0Oe+iuN3X6ty4H/ysDTm4/v8vx+6lj5RYijMS
 DbWYi4oTAY4cMiK0AgAA
X-CMS-MailID: 20190813150842eucas1p2c248537d9cd593073e12abeac2cacab5
X-Msg-Generator: CA
X-RootMTR: 20190813150842eucas1p2c248537d9cd593073e12abeac2cacab5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190813150842eucas1p2c248537d9cd593073e12abeac2cacab5
References: <CGME20190813150842eucas1p2c248537d9cd593073e12abeac2cacab5@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_080848_625221_7C765FB9 
X-CRM114-Status: GOOD (  16.96  )
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, pankaj.dubey@samsung.com, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, vireshk@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBpcyB0aGlyZCBpdGVyYXRpb24gb2YgbXkgcGF0Y2ggc2VyaWVzIGFkZGluZyBBU1YgKEFk
YXB0aXZlIFN1cHBseSAKVm9sdGFnZSkgc3VwcG9ydCBmb3IgRXh5bm9zIFNvQ3MuIFRoZSBwcmV2
aW91cyBvbmUgY2FuIGJlIGZvdW5kIGF0OgpodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIw
MTkwNzE4MTQzMDQ0LjI1MDY2LTEtcy5uYXdyb2NraUBzYW1zdW5nLmNvbQoKVGhlcmUgaXMgbm8g
bWFqb3IgY2hhbmdlcyBpbiB0aGlzIHNlcmllcyBjb21wYXJpbmcgdG8gdjIsIG9ubHkgbWlub3IK
Y29ycmVjdGlvbnMgYWRkcmVzc2luZyByZXZpZXcgY29tbWVudHMuCgpJIHdhcyBub3Qgc3VyZSBp
dCB3YXMgYSBnb29kIGlkZWEgdG8gdHJ5IHRvIGV4dGVuZCB0aGUgT1BQIGJpbmRpbmcgCnNvIGFz
IHRvIGluY2x1ZGUgdGhlIEFTViBkYXRhIHRhYmxlcyBpbiBEVCwgc28gdGhlIHRhYmxlcyBhcmUg
bGVmdAppbiB0aGUgZHJpdmVyLgoKVGhpcyBwYXRjaCBzZXQgaW5jbHVkZXMgRXh5bm9zIENISVBJ
RCBkcml2ZXIgcG9zdGVkIGJ5IFBhbmthaiBEdWJleSBhbmQKZnV0aGVyIGltcHJvdmVkIGJ5IEJh
cnTFgm9taWVqIMW7b8WCbmllcmtpZXdpY3ogWzFdLgoKVGVzdGVkIG9uIE9kcm9pZCBYVTMsIFhV
MyBMaXRlLCBYVTQuCgpPbmUgb2YgdGhlIHRoaW5ncyBvbiBUT0RPIGxpc3QgaXMgc3VwcG9ydCBm
b3IgdGhlIEFkYXB0aXZlIEJvZHkgQmlhcy4KVGhpcyB3aWxsIHJlcXVpcmUgbW9kaWZpY2F0aW9u
cyBvbiB0aGUgY3B1ZnJlcSBkcml2ZXIgc2lkZSBpbiBvcmRlciB0byAKc3VwcG9ydCBtdWx0aXBs
ZSB2b2x0YWdlIHJlZ3VsYXRvcnMgYW5kIGNoYW5nZXMgaW4gdGhlIE9QUCBmcmFtZXdvcmsgCnRv
IHN1cHBvcnQgYWRkaW5nIE9QUHMgd2l0aCBtdWx0aXBsZSB2b2x0YWdlcy4KClsxXSBodHRwczov
L2xrbWwub3JnL2xrbWwvMjAxOC8xMS8xNS85MDgKClBhbmthaiBEdWJleSAoMyk6CiAgc29jOiBz
YW1zdW5nOiBBZGQgZXh5bm9zIGNoaXBpZCBkcml2ZXIgc3VwcG9ydAogIEFSTTogRVhZTk9TOiBl
bmFibGUgZXh5bm9zX2NoaXBpZCBmb3IgQVJDSF9FWFlOT1MKICBBUk02NDogRVhZTk9TOiBlbmFi
bGUgZXh5bm9zX2NoaXBpZCBmb3IgQVJDSF9FWFlOT1MKClN5bHdlc3RlciBOYXdyb2NraSAoNik6
CiAgc29jOiBzYW1zdW5nOiBDb252ZXJ0IGV4eW5vcy1jaGlwaWQgZHJpdmVyIHRvIHVzZSB0aGUg
cmVnbWFwIEFQSQogIHNvYzogc2Ftc3VuZzogQWRkIEV4eW5vcyBBZGFwdGl2ZSBTdXBwbHkgVm9s
dGFnZSBkcml2ZXIKICBBUk06IEVYWU5PUzogRW5hYmxlIGV4eW5vcy1hc3YgZHJpdmVyIGZvciBB
UkNIX0VYWU5PUwogIHNvYzogc2Ftc3VuZzogVXBkYXRlIHRoZSBDSElQIElEIERUIGJpbmRpbmcg
ZG9jdW1lbnRhdGlvbgogIEFSTTogZHRzOiBBZGQgInN5c2NvbiIgY29tcGF0aWJsZSBzdHJpbmcg
dG8gY2hpcGlkIG5vZGUKICBBUk06IGR0czogQWRkIHNhbXN1bmcsYXN2LWJpbiBwcm9wZXJ0eSBm
b3Igb2Ryb2lkeHUzLWxpdGUKCiAuLi4vYmluZGluZ3MvYXJtL3NhbXN1bmcvZXh5bm9zLWNoaXBp
ZC50eHQgICAgfCAgMTAgKy0KIGFyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczUuZHRzaSAgICAgICAg
ICAgICAgICB8ICAgNCArLQogLi4uL2Jvb3QvZHRzL2V4eW5vczU0MjItb2Ryb2lkeHUzLWxpdGUu
ZHRzICAgIHwgICA0ICsKIGFyY2gvYXJtL21hY2gtZXh5bm9zL0tjb25maWcgICAgICAgICAgICAg
ICAgICB8ICAgMiArCiBhcmNoL2FybTY0L0tjb25maWcucGxhdGZvcm1zICAgICAgICAgICAgICAg
ICAgfCAgIDEgKwogZHJpdmVycy9zb2Mvc2Ftc3VuZy9LY29uZmlnICAgICAgICAgICAgICAgICAg
IHwgIDE1ICsKIGRyaXZlcnMvc29jL3NhbXN1bmcvTWFrZWZpbGUgICAgICAgICAgICAgICAgICB8
ICAgNSArCiBkcml2ZXJzL3NvYy9zYW1zdW5nL2V4eW5vcy1hc3YuYyAgICAgICAgICAgICAgfCAx
ODQgKysrKysrKwogZHJpdmVycy9zb2Mvc2Ftc3VuZy9leHlub3MtYXN2LmggICAgICAgICAgICAg
IHwgIDgyICsrKwogZHJpdmVycy9zb2Mvc2Ftc3VuZy9leHlub3MtY2hpcGlkLmMgICAgICAgICAg
IHwgMTAxICsrKysKIGRyaXZlcnMvc29jL3NhbXN1bmcvZXh5bm9zNTQyMi1hc3YuYyAgICAgICAg
ICB8IDQ5OCArKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvc29jL3NhbXN1bmcvZXh5bm9zNTQy
Mi1hc3YuaCAgICAgICAgICB8ICAyNSArCiBpbmNsdWRlL2xpbnV4L3NvYy9zYW1zdW5nL2V4eW5v
cy1jaGlwaWQuaCAgICAgfCAgNTIgKysKIDEzIGZpbGVzIGNoYW5nZWQsIDk3OSBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc29jL3NhbXN1
bmcvZXh5bm9zLWFzdi5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zb2Mvc2Ftc3VuZy9l
eHlub3MtYXN2LmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3NvYy9zYW1zdW5nL2V4eW5v
cy1jaGlwaWQuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc29jL3NhbXN1bmcvZXh5bm9z
NTQyMi1hc3YuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc29jL3NhbXN1bmcvZXh5bm9z
NTQyMi1hc3YuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvc29jL3NhbXN1bmcv
ZXh5bm9zLWNoaXBpZC5oCgotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
