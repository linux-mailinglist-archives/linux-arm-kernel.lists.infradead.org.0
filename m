Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 927E4B88CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 03:03:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FqbVdNSi1Sv2/2nwkx6spJvpiZF1SboHdQ2i9KgnefU=; b=qbAkdo5ji6BcE0
	CN+jo8+UIkkf2AxAQ7L3KPgJUR9BAEvH7p/AuXqNDJI35qcNp7+xtpio79ZDnSLMkGbJdHP/pea5q
	1ztR4KZeCzWH2jpCV2YBsolvDFnoMTqE+Xq4mPROXI5uIJsLDpRBe6f8maBsh5+HTKFgaTc0rcN3e
	ODF/MOBiWs5kd9aavzDcaCs3opAzUoX95wKiVFDez6+VlgFG+JgawWBRo/HuECRXfhJd4+8vN2LRQ
	3jxOfJs/UYp2DWSmAM7865qmuPucVqohBy5sy6iFTJgchAF1OobV2mbT116N5e61Qq2d6uSqLoUWC
	eytFwsBy/GucA+3QubhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB7KB-0002yo-6I; Fri, 20 Sep 2019 01:03:03 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB7Jz-0002yG-4u
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 01:02:53 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190920010245epoutp039eb703ba5fcd829932f521a2a49f4c2f~F-9wO19C42212122121epoutp03f
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 01:02:45 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190920010245epoutp039eb703ba5fcd829932f521a2a49f4c2f~F-9wO19C42212122121epoutp03f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568941365;
 bh=6ttcWVwBEvo+76KqxEdhtYsT+4exke8Z1DVjZG9VzDE=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Beero9RlRGW+rxV/HDgHfdFbqurmWlewS36SfDoqpZRicNSBnNPFHkgYZe2LdWyR0
 bb8SEW3AcJA3mMva+oeFPl6M3n0IgLYSx0BpyNZkJjzj8zV2E/GXJR6VyftqDj0xOJ
 3qKgCFKnMbsMydihMPDjev7nrjiuGQcxCpqp44D4=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190920010245epcas1p2ac88da8ded6620d8535c588b0c357405~F-9vvwKID1014010140epcas1p2G;
 Fri, 20 Sep 2019 01:02:45 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.157]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 46ZFnG6QJtzMqYkV; Fri, 20 Sep
 2019 01:02:42 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 BE.FD.04085.235248D5; Fri, 20 Sep 2019 10:02:42 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20190920010242epcas1p3383f81d00544452b8a1f8668cd7980de~F-9srlicq2097720977epcas1p3v;
 Fri, 20 Sep 2019 01:02:42 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190920010241epsmtrp226d2b93222e97eb0a316ed1fd55262d0~F-9sqHlc00370803708epsmtrp2u;
 Fri, 20 Sep 2019 01:02:41 +0000 (GMT)
X-AuditID: b6c32a39-d03ff70000000ff5-0b-5d84253257ed
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 50.3F.03638.135248D5; Fri, 20 Sep 2019 10:02:41 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190920010241epsmtip2f41c2d3900df8bf030ca8f96e401b993~F-9sc0Oue1345713457epsmtip2B;
 Fri, 20 Sep 2019 01:02:41 +0000 (GMT)
Subject: Re: [RFC PATCH v2 00/11] Simple QoS for exynos-bus driver using
 interconnect
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <fe6d026d-71b5-438d-6932-6a2234fc72c2@samsung.com>
Date: Fri, 20 Sep 2019 10:07:05 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190919142236.4071-1-a.swigon@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrNJsWRmVeSWpSXmKPExsWy7bCmnq6RakuswZcNxhb357UyWmycsZ7V
 4uUhTYv5R86xWlz5+p7NYvreTWwWk+5PYLE4f34Du8WKux9ZLTY9vsZqcXnXHDaLz71HGC1m
 nN/HZLH2yF12i9uNK9gsZkx+yeYg4LFpVSebx51re9g87ncfZ/LYvKTeY+O7HUwefVtWMXp8
 3iQXwB6VbZORmpiSWqSQmpecn5KZl26r5B0c7xxvamZgqGtoaWGupJCXmJtqq+TiE6DrlpkD
 dLuSQlliTilQKCCxuFhJ386mKL+0JFUhI7+4xFYptSAlp8CyQK84Mbe4NC9dLzk/18rQwMDI
 FKgwITvj4pS6gm/KFfPbTrI2ME6U7WLk5JAQMJGYs6afsYuRi0NIYAejxKIVH1ggnE+MEt+e
 X2CCcL4xSjz6O5sNpmXZqvPMILaQwF5GicXbqyGK3jNKPHz6FaxIWCBcYu7rB6wgCRGB/4wS
 p5etBHOYQUZ9nbeBBaSKTUBLYv+LG2Ad/AKKEld/PGYEsXkF7CTW9y9lArFZBFQlLtx8DbZO
 VCBC4tODw6wQNYISJ2c+AZvDKWAp8WXffDCbWUBc4taT+UwQtrxE89bZzCCLJQQOsUu0fNzB
 DPGDi8SCbZfZIWxhiVfHt0DZUhKf3+2F+rNaYuXJI2wQzR2MElv2X2CFSBhL7F86GWgDB9AG
 TYn1u/QhwooSO3/PZYSweSUaNv5mhziCT+Ld1x5WkHKQeEebEESJssTlB3eZJjAqz0Lyziwk
 L8xC8sIshGULGFlWMYqlFhTnpqcWGxaYIkf3JkZwwtay3MF47JzPIUYBDkYlHl6F8uZYIdbE
 suLK3EOMEhzMSiK8c0ybYoV4UxIrq1KL8uOLSnNSiw8xmgJDeyKzlGhyPjCb5JXEG5oaGRsb
 W5gYmpkaGiqJ83qkN8QKCaQnlqRmp6YWpBbB9DFxcEo1MMqnM7LztmyO7+Q6dH3dxgkuBQ8W
 HSuMaZ7wKck4WEdhue7qpV2BErtvWO/I/SdxNl02f8k5szWprAt2xa2syDaOyVnXEKnJob+v
 4Z/Uya1hbYvYI89d0Y3hEdk2Mzp9r3xQpenPB8zn3e0+eb82TvhVxmG4RCzaYvuX++Gb3YMO
 WLrVBe2vVmIpzkg01GIuKk4EAJVK75XuAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrGIsWRmVeSWpSXmKPExsWy7bCSvK6hakuswdX35hb357UyWmycsZ7V
 4uUhTYv5R86xWlz5+p7NYvreTWwWk+5PYLE4f34Du8WKux9ZLTY9vsZqcXnXHDaLz71HGC1m
 nN/HZLH2yF12i9uNK9gsZkx+yeYg4LFpVSebx51re9g87ncfZ/LYvKTeY+O7HUwefVtWMXp8
 3iQXwB7FZZOSmpNZllqkb5fAlXFxSl3BN+WK+W0nWRsYJ8p2MXJySAiYSCxbdZ65i5GLQ0hg
 N6PE2wWf2CESkhLTLh4FSnAA2cIShw8XQ9S8ZZRo3XiZCaRGWCBcYu7rB6wgCRGB/4wSD9uO
 MYI4zALfGCX6Pi9jg2jpYZRYue8vK0gLm4CWxP4XN9hAbH4BRYmrPx4zgti8AnYS6/uXgo1l
 EVCVuHDzNTOILSoQIXF4xyyoGkGJkzOfsIDYnAKWEl/2zQezmQXUJf7Mu8QMYYtL3HoynwnC
 lpdo3jqbeQKj8Cwk7bOQtMxC0jILScsCRpZVjJKpBcW56bnFhgVGeanlesWJucWleel6yfm5
 mxjBsaultYPxxIn4Q4wCHIxKPLwK5c2xQqyJZcWVuYcYJTiYlUR455g2xQrxpiRWVqUW5ccX
 leakFh9ilOZgURLnlc8/FikkkJ5YkpqdmlqQWgSTZeLglGpg5N30pdiu6oS6W+3jcJkM96i8
 e123Sn1uaHO8TbBgV3Z5zsc4za06I9BaVjvCp+xRVNKsWC8ZrWmrGb3VFicvW+/y1vmDipdf
 TJG7ZJvLy0sMxQs/8ngcbi5RVe6evLb67Xyvns8r82bc1JlXs9Le+iuDhMPCVfmXrItkD//e
 pF5X9TMt5YoSS3FGoqEWc1FxIgASGwU82QIAAA==
X-CMS-MailID: 20190920010242epcas1p3383f81d00544452b8a1f8668cd7980de
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
X-CPGSPASS: Y
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190919142321eucas1p164c2591ad402427cb71fd00c348a29ec
References: <CGME20190919142321eucas1p164c2591ad402427cb71fd00c348a29ec@eucas1p1.samsung.com>
 <20190919142236.4071-1-a.swigon@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_180251_835310_3739477F 
X-CRM114-Status: GOOD (  23.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: b.zolnierkie@samsung.com, sw0312.kim@samsung.com, krzk@kernel.org,
 inki.dae@samsung.com, myungjoo.ham@samsung.com,
 "cpgs \(cpgs@samsung.com\)" <cpgs@samsung.com>, leonard.crestez@nxp.com,
 georgi.djakov@linaro.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJ0dXIsCgpPbiB2MSwgSSBtZW50aW9uZWQgdGhhdCB3ZSBuZWVkIHRvIGRpc2N1c3MgaG93
IHRvIGNoYW5nZQp0aGUgdjIgZm9yIHRoaXMuIEJ1dCwgSSBoYXZlIG5vdCByZWNlaXZlZCBhbnkg
cmVwbHkgZnJvbSB5b3Ugb24gdjEuCkFuZCwgd2l0aG91dCB5b3VyIHJlcGx5IGZyb20gdjEsIHlv
dSBqdXN0IHNlbmQgdjIuCgpJIHRoaW5rIHRoYXQgaXQgaXMgbm90IHByb3BlciBkZXZlbG9wbWVu
dCBzZXF1ZW5jZS4KSSBoYXZlIHNwZW50IG1hbnkgdGltZXMgdG8gcmV2aWV3IHlvdXIgcGF0Y2hl
cwphbmQgYWxzbyBJJ2xsIHJldmlldyB5b3VyIHBhdGNoZXMuIFlvdSBoYXZlIHRvIHRha2UgY2Fy
ZQp0aGUgcmVwbHkgb2YgcmV2aWV3ZXIgYW5kIGFuZCBrZWVwIHRoZSBiYXNpYyBydWxlCm9mIG1h
aWxpbmcgY29udHJpYnV0aW9uIGZvciBkaXNjdXNzaW9uLgoKT24gMTkuIDkuIDE5LiDsmKTtm4Qg
MTE6MjIsIEFydHVyIMWad2lnb8WEIHdyb3RlOgo+IFRoZSBmb2xsb3dpbmcgcGF0Y2hzZXQgYWRk
cyBpbnRlcmNvbm5lY3RbMV1bMl0gZnJhbWV3b3JrIHN1cHBvcnQgdG8gdGhlCj4gZXh5bm9zLWJ1
cyBkZXZmcmVxIGRyaXZlci4gRXh0ZW5kaW5nIHRoZSBkZXZmcmVxIGRyaXZlciB3aXRoIGludGVy
Y29ubmVjdAo+IGNhcGFiaWxpdGllcyBzdGFydGVkIGFzIGEgcmVzcG9uc2UgdG8gdGhlIGlzc3Vl
IHJlZmVyZW5jZWQgaW4gWzNdLiBUaGUKPiBwYXRjaGVzIGNhbiBiZSBzdWJkaXZpZGVkIGludG8g
Zm91ciBsb2dpY2FsIGdyb3VwczoKPiAKPiAoYSkgUmVmYWN0b3JpbmcgdGhlIGV4aXN0aW5nIGRl
dmZyZXEgZHJpdmVyIGluIG9yZGVyIHRvIGltcHJvdmUgcmVhZGFiaWxpdHkKPiBhbmQgYWNjb21t
b2RhdGUgZm9yIGFkZGluZyBuZXcgY29kZSAocGF0Y2hlcyAwMS0tMDQvMTEpLgo+IAo+IChiKSBU
d2Vha2luZyB0aGUgaW50ZXJjb25uZWN0IGZyYW1ld29yayB0byBzdXBwb3J0IHRoZSBleHlub3Mt
YnVzIHVzZSBjYXNlCj4gKHBhdGNoZXMgMDUtLTA3LzExKS4gRXhwb3J0aW5nIG9mX2ljY19nZXRf
ZnJvbV9wcm92aWRlcigpIGFsbG93cyB1cyB0bwo+IGF2b2lkIGhhcmRjb2RpbmcgZXZlcnkgc2lu
Z2xlIGdyYXBoIGVkZ2UgaW4gdGhlIERUIG9yIGRyaXZlciBzb3VyY2UsIGFuZAo+IHJlbGF4aW5n
IHRoZSByZXF1aXJlbWVudCBjb250YWluZWQgaW4gdGhhdCBmdW5jdGlvbiByZW1vdmVzIHRoZSBu
ZWVkIHRvCj4gcHJvdmlkZSBkdW1teSBub2RlIElEcyBpbiB0aGUgRFQuIEFkanVzdGluZyB0aGUg
bG9naWMgaW4KPiBhcHBseV9jb25zdHJhaW50cygpIChkcml2ZXJzL2ludGVyY29ubmVjdC9jb3Jl
LmMpIGFjY291bnRzIGZvciB0aGUgZmFjdAo+IHRoYXQgZXZlcnkgYnVzIGlzIGEgc2VwYXJhdGUg
ZW50aXR5IGFuZCB0aGVyZWZvcmUgYSBzZXBhcmF0ZSBpbnRlcmNvbm5lY3QKPiBwcm92aWRlciwg
YWxiZWl0IGNvbnN0aXR1dGluZyBhIHBhcnQgb2YgYSBsYXJnZXIgaGllcmFyY2h5Lgo+IAo+IChj
KSBJbXBsZW1lbnRpbmcgaW50ZXJjb25uZWN0IHByb3ZpZGVycyBpbiB0aGUgZXh5bm9zLWJ1cyBk
ZXZmcmVxIGRyaXZlcgo+IGFuZCBhZGRpbmcgcmVxdWlyZWQgRFQgcHJvcGVydGllcyBmb3Igb25l
IHNlbGVjdGVkIHBsYXRmb3JtLCBuYW1lbHkKPiBFeHlub3M0NDEyIChwYXRjaGVzIDA4LS0wOS8x
MSkuIER1ZSB0byB0aGUgZmFjdCB0aGF0IHRoaXMgYWltcyB0byBiZSBhCj4gZ2VuZXJpYyBkcml2
ZXIgZm9yIHZhcmlvdXMgRXh5bm9zIFNvQ3MsIG5vZGUgSURzIGFyZSBnZW5lcmF0ZWQgZHluYW1p
Y2FsbHkKPiByYXRoZXIgdGhhbiBoYXJkY29kZWQuIFRoaXMgaGFzIGJlZW4gZGV0ZXJtaW5lZCB0
byBiZSBhIHNpbXBsZXIgYXBwcm9hY2gsCj4gYnV0IGRlcGVuZHMgb24gY2hhbmdlcyBkZXNjcmli
ZWQgaW4gKGIpLgo+IAo+IChkKSBJbXBsZW1lbnRpbmcgYSBzYW1wbGUgaW50ZXJjb25uZWN0IGNv
bnN1bWVyIGZvciBleHlub3MtbWl4ZXIgdGFyZ2V0ZWQKPiBhdCB0aGUgaXNzdWUgcmVmZXJlbmNl
ZCBpbiBbM10sIGFnYWluIHdpdGggRFQgaW5mbyBvbmx5IGZvciBFeHlub3M0NDEyCj4gKHBhdGNo
ZXMgMTAtLTExLzExKS4KPiAKPiBJbnRlZ3JhdGlvbiBvZiBkZXZmcmVxIGFuZCBpbnRlcmNvbm5l
Y3QgZnVuY3Rpb25hbGl0aWVzIGlzIGFjaGlldmVkIGJ5Cj4gdXNpbmcgZGV2X3BtX3Fvc18qKCkg
QVBJWzVdLiBBbGwgbmV3IGNvZGUgd29ya3MgZXF1YWxseSB3ZWxsIHdoZW4KPiBDT05GSUdfSU5U
RVJDT05ORUNUIGlzICduJyAoYXMgaW4gZXh5bm9zX2RlZmNvbmZpZykgaW4gd2hpY2ggY2FzZSBh
bGwKPiBpbnRlcmNvbm5lY3QgQVBJIGZ1bmN0aW9ucyBhcmUgbm8tb3BzLgo+IAo+IFRoaXMgcGF0
Y2hzZXQgZGVwZW5kcyBvbiBbNV0uCj4gCj4gLS0tIENoYW5nZXMgc2luY2UgdjEgWzZdOgo+ICog
UmViYXNlIG9uIFs0XSAoY291cGxlZCByZWd1bGF0b3JzKS4KPiAqIFJlYmFzZSBvbiBbNV0gKGRl
dl9wbV9xb3MgZm9yIGRldmZyZXEpLgo+ICogVXNlIGRldl9wbV9xb3NfKigpIEFQSVs1XSBpbnN0
ZWFkIG9mIG92ZXJyaWRpbmcgZnJlcXVlbmN5IGluCj4gICBleHlub3NfYnVzX3RhcmdldCgpLgo+
ICogVXNlIElEUiBmb3Igbm9kZSBJRCBhbGxvY2F0aW9uLgo+ICogQXZvaWQgZ290byBpbiBmdW5j
dGlvbnMgZXh0cmFjdGVkIGluIHBhdGNoZXMgMDEgJiAwMiAoY2YuIHBhdGNoIDA0KS4KPiAqIFJl
dmVyc2Ugb3JkZXIgb2YgbXVsdGlwbGljYXRpb24gYW5kIGRpdmlzaW9uIGluCj4gICBtaXhlcl9z
ZXRfbWVtb3J5X2JhbmR3aWR0aCgpIChwYXRjaCAxMSkgdG8gYXZvaWQgaW50ZWdlciBvdmVyZmxv
dy4KPiAKPiAtLS0KPiBBcnR1ciDFmndpZ2/FhAo+IFNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xh
bmQKPiBTYW1zdW5nIEVsZWN0cm9uaWNzCj4gCj4gLS0tCj4gUmVmZXJlbmNlczoKPiBbMV0gRG9j
dW1lbnRhdGlvbi9pbnRlcmNvbm5lY3QvaW50ZXJjb25uZWN0LnJzdAo+IFsyXSBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW50ZXJjb25uZWN0L2ludGVyY29ubmVjdC50eHQKPiBb
M10gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMDg2MTc1Ny8gKG9yaWdpbmFs
IGlzc3VlKQo+IFs0XSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExMDgzNjYz
LyAoY291cGxlZCByZWd1bGF0b3JzOyBtZXJnZWQpCj4gWzVdIGh0dHBzOi8vcGF0Y2h3b3JrLmtl
cm5lbC5vcmcvY292ZXIvMTExNDk0OTcvIChkZXZfcG1fcW9zIGZvciBkZXZmcmVxKQo+IFs2XSBo
dHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExMDU0NDE3LyAodjEgb2YgdGhpcyBS
RkMpCj4gCj4gQXJ0dXIgxZp3aWdvxYQgKDEwKToKPiAgIGRldmZyZXE6IGV4eW5vcy1idXM6IEV4
dHJhY3QgZXh5bm9zX2J1c19wcm9maWxlX2luaXQoKQo+ICAgZGV2ZnJlcTogZXh5bm9zLWJ1czog
RXh0cmFjdCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKCkKPiAgIGRldmZyZXE6IGV4
eW5vcy1idXM6IENoYW5nZSBnb3RvLWJhc2VkIGxvZ2ljIHRvIGlmLWVsc2UgbG9naWMKPiAgIGRl
dmZyZXE6IGV4eW5vcy1idXM6IENsZWFuIHVwIGNvZGUKPiAgIGludGVyY29ubmVjdDogRXhwb3J0
IG9mX2ljY19nZXRfZnJvbV9wcm92aWRlcigpCj4gICBpbnRlcmNvbm5lY3Q6IFJlbGF4IHJlcXVp
cmVtZW50IGluIG9mX2ljY19nZXRfZnJvbV9wcm92aWRlcigpCj4gICBpbnRlcmNvbm5lY3Q6IFJl
bGF4IGNvbmRpdGlvbiBpbiBhcHBseV9jb25zdHJhaW50cygpCj4gICBhcm06IGR0czogZXh5bm9z
OiBBZGQgcGFyZW50cyBhbmQgI2ludGVyY29ubmVjdC1jZWxscyB0byBFeHlub3M0NDEyCj4gICBk
ZXZmcmVxOiBleHlub3MtYnVzOiBBZGQgaW50ZXJjb25uZWN0IGZ1bmN0aW9uYWxpdHkgdG8gZXh5
bm9zLWJ1cwo+ICAgYXJtOiBkdHM6IGV4eW5vczogQWRkIGludGVyY29ubmVjdHMgdG8gRXh5bm9z
NDQxMiBtaXhlcgo+IAo+IE1hcmVrIFN6eXByb3dza2kgKDEpOgo+ICAgZHJtOiBleHlub3M6IG1p
eGVyOiBBZGQgaW50ZXJjb25uZWN0IHN1cHBvcnQKPiAKPiAgLi4uL2Jvb3QvZHRzL2V4eW5vczQ0
MTItb2Ryb2lkLWNvbW1vbi5kdHNpICAgIHwgICAxICsKPiAgYXJjaC9hcm0vYm9vdC9kdHMvZXh5
bm9zNDQxMi5kdHNpICAgICAgICAgICAgIHwgIDEwICsKPiAgZHJpdmVycy9kZXZmcmVxL2V4eW5v
cy1idXMuYyAgICAgICAgICAgICAgICAgIHwgMzE5ICsrKysrKysrKysrKystLS0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19taXhlci5jICAgICAgICAgfCAgNzEgKysrLQo+ICBk
cml2ZXJzL2ludGVyY29ubmVjdC9jb3JlLmMgICAgICAgICAgICAgICAgICAgfCAgMTIgKy0KPiAg
aW5jbHVkZS9saW51eC9pbnRlcmNvbm5lY3QtcHJvdmlkZXIuaCAgICAgICAgIHwgICA2ICsKPiAg
NiBmaWxlcyBjaGFuZ2VkLCAzMjcgaW5zZXJ0aW9ucygrKSwgOTIgZGVsZXRpb25zKC0pCj4gCgoK
LS0gCkJlc3QgUmVnYXJkcywKQ2hhbndvbyBDaG9pClNhbXN1bmcgRWxlY3Ryb25pY3MKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
