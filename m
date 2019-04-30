Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4089F061
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 08:15:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFc6Gqqqe6kEwQX9UPKSw7Y+o4l1PThyZu045WoQjKU=; b=pl00Syr7R2g25C
	Zh6H7ZxIuURwRFnmRnHi2k7OVamvbOCuOm2Y7/Y/bXxIjq2+lsmaFjTev+XLOEXJWzhQNEZQ1HDM2
	54PqIAzGQolYB5eFv8/V4HM5oTTGLjk1wavTrGtXcOqusIp9jeHvZ5vuvAJlnRFhJUT7tt0esTo3G
	nljR0XeVdZPyJPi/j2rjEQaOpgO2CfUuotWUP3UQbtVnQbCAEH43bc9g/Z5r2LG75L9dP0FWekp1B
	geHAmf+t6XL+gJU4awPcH4z/IDVG33ra4uVBR4P6UQjdn5uVAg9+f4QZm3tbHQ4yd1aBmVY+5YJws
	8sQDBcIMXsxggDdjJlUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLM2m-0002yK-O8; Tue, 30 Apr 2019 06:15:08 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLM2Z-0002xC-Nb
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 06:14:58 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190430061451epoutp0350e30c4911a690c77ec7007be8e60f24~aK_bS_eFz0785207852epoutp03m
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 06:14:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190430061451epoutp0350e30c4911a690c77ec7007be8e60f24~aK_bS_eFz0785207852epoutp03m
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1556604891;
 bh=WJb+Cvmknz8hSilXK5stDWt6Ffwo/cFmz3E+umI80Lw=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=BP7nn9vtNH+sG9dASYJfuE/jNf0Z2g4CyNpdbL6IXjzU4h4+/pIBr/PgNjwFFhKLw
 n5HZ66/tKBuS2C2HHygX5MChCcVVcxxZLTZtqKVUeDbI3gNx9+613DWoKkZpDDdynz
 B11NmqYsCJ+4v42Fz5BI6VLuuyNQPDLgOqiUk8IA=
Received: from epsmges1p2.samsung.com (unknown [182.195.40.153]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190430061450epcas1p13807d3828b1819dfd48b9bdaf73ac0fa~aK_Z15ws03071130711epcas1p16;
 Tue, 30 Apr 2019 06:14:50 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 70.35.04142.9D7E7CC5; Tue, 30 Apr 2019 15:14:49 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190430061449epcas1p2ec80e66533f22b069220106f5bebbf63~aK_Zmq7xn1333613336epcas1p2-;
 Tue, 30 Apr 2019 06:14:49 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190430061449epsmtrp12160b23b169e2d774048dd51bfe7dfc0~aK_ZlwQF80891208912epsmtrp1-;
 Tue, 30 Apr 2019 06:14:49 +0000 (GMT)
X-AuditID: b6c32a36-cf9ff7000000102e-31-5cc7e7d9b248
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 61.63.03662.9D7E7CC5; Tue, 30 Apr 2019 15:14:49 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190430061449epsmtip2a1fc43e97f636a9b7801fe6e4444257f~aK_ZQPIkw2206222062epsmtip2j;
 Tue, 30 Apr 2019 06:14:49 +0000 (GMT)
Subject: Re: [PATCH v3 3/4] Documentation: devicetree: add PPMU events
 description
To: Lukasz Luba <l.luba@partner.samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <52204c4b-80fa-1a87-2e00-1cfb774478f6@samsung.com>
Date: Tue, 30 Apr 2019 15:16:04 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1555681688-19643-4-git-send-email-l.luba@partner.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrLJsWRmVeSWpSXmKPExsWy7bCmvu7N58djDM49t7HYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vF2aY37Ba3GmQsNj2+xmpxedccNovPvUcYLWac38dksfbIXXaLpdcvMlnc
 blzBZtG69wi7xeE37awW3048YnQQ8Fgzbw2jx85Zd9k9Nq3qZPPYvKTe4+C7PUwefVtWMXp8
 3iQXwB6VbZORmpiSWqSQmpecn5KZl26r5B0c7xxvamZgqGtoaWGupJCXmJtqq+TiE6DrlpkD
 dLuSQlliTilQKCCxuFhJ386mKL+0JFUhI7+4xFYptSAlp8CyQK84Mbe4NC9dLzk/18rQwMDI
 FKgwITtjXs8j1oJpshWPPr1lbGCcJdbFyMkhIWAi8a1lB3MXIxeHkMAORolJs5cyQTifGCUe
 fD8I5XxjlJj66jgLTMvl1s2sEIm9jBJrulYyQjjvGSWWrDwEViUsECKx7t41dpCEiMBZoFlN
 29hAHGaBz4wSJx9cYwWpYhPQktj/4gYbiM0voChx9cdjRhCbV8BO4uCPx2CTWARUJRoaboHZ
 ogIREvePbWCFqBGUODnzCVicU8Bb4vbeK2BzmAXEJW49mc8EYctLNG+dDfaehMAhdolNl1uY
 IJ5wkVjc3MIMYQtLvDq+hR3ClpJ42d8GZVdLrDx5hA2iuYNRYsv+C6wQCWOJ/UsnAw3iANqg
 KbF+lz7EMj6Jd197WEHCEgK8Eh1tQhDVyhKXH9yFWispsbi9kw3C9pCYMvknywRGxVlI3pmF
 5IVZSF6YhbBsASPLKkax1ILi3PTUYsMCI+QI38QITtpaZjsYF53zOcQowMGoxMPr8e5YjBBr
 YllxZe4hRgkOZiURXo/jR2OEeFMSK6tSi/Lji0pzUosPMZoCQ3sis5Rocj4wo+SVxBuaGhkb
 G1uYGJqZGhoqifOud3COERJITyxJzU5NLUgtgulj4uCUamCckMzw1EBi9ZQ1Nw/yXmCzvVrV
 Zrjyru3lCp44y3CrrAdOgo/9OLU/PZ6xmN1L522mlv3KV1efnjjWZe6Q9rKRz+9l6eOEAMPN
 k47Kuitwz1r51Va3IbMt/N33qvWRC052nS3Mfp4o8vQpw1Wzg1eN+UQ9nzl+23c03W6l+teq
 pQyx6V3Ht+9XYinOSDTUYi4qTgQAi2ypK/ADAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrOIsWRmVeSWpSXmKPExsWy7bCSvO7N58djDHbvUrfYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vF2aY37Ba3GmQsNj2+xmpxedccNovPvUcYLWac38dksfbIXXaLpdcvMlnc
 blzBZtG69wi7xeE37awW3048YnQQ8Fgzbw2jx85Zd9k9Nq3qZPPYvKTe4+C7PUwefVtWMXp8
 3iQXwB7FZZOSmpNZllqkb5fAlTGv5xFrwTTZikef3jI2MM4S62Lk5JAQMJG43LqZtYuRi0NI
 YDejxOEdrSwQCUmJaRePMncxcgDZwhKHDxdD1LxllNj7eQkbSI2wQIjEunvX2EESIgJnGSUW
 TVoA5jALfGaUmL7mMjNEy31GiaubZoKNZRPQktj/4gZYO7+AosTVH48ZQWxeATuJgz8eg9Ww
 CKhKNDTcArNFBSIkzrxfwQJRIyhxcuYTMJtTwFvi9t4rYHOYBdQl/sy7xAxhi0vcejKfCcKW
 l2jeOpt5AqPwLCTts5C0zELSMgtJywJGllWMkqkFxbnpucWGBUZ5qeV6xYm5xaV56XrJ+bmb
 GMHRq6W1g/HEifhDjAIcjEo8vB7vjsUIsSaWFVfmHmKU4GBWEuH1OH40Rog3JbGyKrUoP76o
 NCe1+BCjNAeLkjivfP6xSCGB9MSS1OzU1ILUIpgsEwenVAOjvF1yb8Pmhw0p98rOnbq7aEP7
 oo87xDd+yNyrGzRj85yQnG035L8bC2xW2vFNs8nG9cpFO29pEe/i9yVORrYBAUEfvq0//ct0
 Uc7UD2sk9jrnv1hxW4uFYePf1jIVLZvdnDe32i76yVmccnLnT+cQTcOs6PaKE4wrJRjcHzME
 fOjR288zKcBKiaU4I9FQi7moOBEAXHzNeNoCAAA=
X-CMS-MailID: 20190430061449epcas1p2ec80e66533f22b069220106f5bebbf63
X-Msg-Generator: CA
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190419134822eucas1p29c6eff0f500311749b33c4f556123cf0
References: <1555681688-19643-1-git-send-email-l.luba@partner.samsung.com>
 <CGME20190419134822eucas1p29c6eff0f500311749b33c4f556123cf0@eucas1p2.samsung.com>
 <1555681688-19643-4-git-send-email-l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_231456_103481_EDBF0A2F 
X-CRM114-Status: GOOD (  24.30  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

SGkgTHVrYXN6LAoKT24gMTkuIDQuIDE5LiDsmKTtm4QgMTA6NDgsIEx1a2FzeiBMdWJhIHdyb3Rl
Ogo+IEV4dGVuZCB0aGUgZG9jdW1lbmF0aW9uIGJ5IGV2ZW50cyBkZXNjcmlwdGlvbiB3aXRoIG5l
dyAnZXZlbnQtZGF0YS10eXBlJwo+IGZpZWxkLiBBZGQgZXhhbXBsZSBob3cgdGhlIGV2ZW50IG1p
Z2h0IGJlIGRlZmluZWQgaW4gRFQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTHVrYXN6IEx1YmEgPGwu
bHViYUBwYXJ0bmVyLnNhbXN1bmcuY29tPgo+IC0tLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5n
cy9kZXZmcmVxL2V2ZW50L2V4eW5vcy1wcG11LnR4dCAgfCAxOCArKysrKysrKysrKysrKysrKysK
PiAgMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RldmZyZXEvZXZlbnQvZXh5bm9zLXBwbXUu
dHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RldmZyZXEvZXZlbnQvZXh5
bm9zLXBwbXUudHh0Cj4gaW5kZXggM2UzNmMxZC4uNDdmZWI1ZiAxMDA2NDQKPiAtLS0gYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGV2ZnJlcS9ldmVudC9leHlub3MtcHBtdS50
eHQKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGV2ZnJlcS9ldmVu
dC9leHlub3MtcHBtdS50eHQKPiBAQCAtMTQ1LDMgKzE0NSwyMSBAQCBFeGFtcGxlMyA6IFBQTVV2
MiBub2RlcyBpbiBleHlub3M1NDMzLmR0c2kgYXJlIGxpc3RlZCBiZWxvdy4KPiAgCQkJcmVnID0g
PDB4MTA0ZDAwMDAgMHgyMDAwPjsKPiAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAgCQl9Owo+
ICsKPiArVGhlICdldmVudCcgdHlwZSBzcGVjaWZpZWQgaW4gdGhlIFBQTVUgbm9kZSBkZWZpbmVz
ICdldmVudC1uYW1lJwo+ICt3aGljaCBhbHNvIGNvbnRhaW5zICdpZCcgbnVtYmVyIGFuZCBvcHRp
b25hbGx5ICdldmVudC1kYXRhLXR5cGUnLgo+ICsKPiArRXhhbXBsZToKPiArCj4gKwkJZXZlbnRz
IHsKPiArCQkJcHBtdV9sZWZ0YnVzXzA6IHBwbXUtZXZlbnQwLWxlZnRidXMgewo+ICsJCQkJZXZl
bnQtbmFtZSA9ICJwcG11LWV2ZW50MC1sZWZ0YnVzIjsKPiArCQkJCWV2ZW50LWRhdGEtdHlwZSA9
IDxQUE1VX1JPX0RBVEFfQ05UPjsKPiArCQkJfTsKPiArCQl9Owo+ICsKPiArVGhlICdldmVudC1k
YXRhLXR5cGUnIGRlZmluZXMgdGhlIHR5cGUgb2YgZGF0YSB3aGljaCBzaGVsbCBiZSBjb3VudGVk
Cj4gK2J5IHRoZSBjb3VudGVyLiBZb3UgY2FuIGNoZWNrIGluY2x1ZGUvZHQtYmluZGluZ3MvcG11
L2V4eW5vc19wcG11LmggZm9yCj4gK2FsbCBwb3NzaWJsZSB0eXBlLCBpLmUuIGNvdW50IHJlYWQg
cmVxdWVzdHMsIGNvdW50IHdyaXRlIGRhdGEgaW4gYnl0ZXMsCj4gK2V0Yy4gVGhpcyBmaWVsZCBp
cyBvcHRpb25hbCBhbmQgd2hlbiBpdCBpcyBtaXNzaW5nLCB0aGUgZHJpdmVyIGNvZGUgd2lsbAo+
ICt1c2UgZGVmYXVsdCBkYXRhIHR5cGUuCj4gCgpIb3cgYWJvdXQgZWRpdGluZyBpdCBhcyBmb2xs
b3dpbmc/CgotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGV2ZnJlcS9l
dmVudC9leHlub3MtcHBtdS50eHQKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2RldmZyZXEvZXZlbnQvZXh5bm9zLXBwbXUudHh0CkBAIC0xMCwxNCArMTAsMjMgQEAgVGhl
IEV4eW5vcyBQUE1VIGRyaXZlciB1c2VzIHRoZSBkZXZmcmVxLWV2ZW50IGNsYXNzIHRvIHByb3Zp
ZGUgZXZlbnQgZGF0YQogdG8gdmFyaW91cyBkZXZmcmVxIGRldmljZXMuIFRoZSBkZXZmcmVxIGRl
dmljZXMgd291bGQgdXNlIHRoZSBldmVudCBkYXRhIHdoZW4KIGRlcnRlcm1pbmcgdGhlIGN1cnJl
bnQgc3RhdGUgb2YgZWFjaCBJUC4KIAotUmVxdWlyZWQgcHJvcGVydGllczoKK1JlcXVpcmVkIHBy
b3BlcnRpZXMgZm9yIFBQTVUgZGV2aWNlOgogLSBjb21wYXRpYmxlOiBTaG91bGQgYmUgInNhbXN1
bmcsZXh5bm9zLXBwbXUiIG9yICJzYW1zdW5nLGV4eW5vcy1wcG11LXYyLgogLSByZWc6IHBoeXNp
Y2FsIGJhc2UgYWRkcmVzcyBvZiBlYWNoIFBQTVUgYW5kIGxlbmd0aCBvZiBtZW1vcnkgbWFwcGVk
IHJlZ2lvbi4KIAotT3B0aW9uYWwgcHJvcGVydGllczoKK09wdGlvbmFsIHByb3BlcnRpZXMgZm9y
IFBQTVUgZGV2aWNlOgogLSBjbG9jay1uYW1lcyA6IHRoZSBuYW1lIG9mIGNsb2NrIHVzZWQgYnkg
dGhlIFBQTVUsICJwcG11IgogLSBjbG9ja3MgOiBwaGFuZGxlcyBmb3IgY2xvY2sgc3BlY2lmaWVk
IGluICJjbG9jay1uYW1lcyIgcHJvcGVydHkKIAorUmVxdWlyZWQgcHJvcGVydGllcyBmb3IgJ2V2
ZW50cycgY2hpbGQgbm9kZSBvZiBQUE1VIGRldmljZToKKy0gZXZlbnQtbmFtZSA6IHRoZSB1bmlx
dWUgZXZlbnQgbmFtZSBhbW9uZyBQUE1VIGRldmljZQorT3B0aW9uYWwgcHJvcGVydGllcyBmb3Ig
J2V2ZW50cycgY2hpbGQgbm9kZSBvZiBQUE1VIGRldmljZToKKy0gZXZlbnQtZGF0YS10eXBlIDog
RGVmaW5lIHRoZSB0eXBlIG9mIGRhdGEgd2hpY2ggc2hlbGwgYmUgY291bnRlZAorYnkgdGhlIGNv
dW50ZXIuIFlvdSBjYW4gY2hlY2sgaW5jbHVkZS9kdC1iaW5kaW5ncy9wbXUvZXh5bm9zX3BwbXUu
aCBmb3IKK2FsbCBwb3NzaWJsZSB0eXBlLCBpLmUuIGNvdW50IHJlYWQgcmVxdWVzdHMsIGNvdW50
IHdyaXRlIGRhdGEgaW4gYnl0ZXMsCitldGMuIFRoaXMgZmllbGQgaXMgb3B0aW9uYWwgYW5kIHdo
ZW4gaXQgaXMgbWlzc2luZywgdGhlIGRyaXZlciBjb2RlCit3aWxsIHVzZSBkZWZhdWx0IGRhdGEg
dHlwZS4KKwogRXhhbXBsZTEgOiBQUE1VdjEgbm9kZXMgaW4gZXh5bm9zMzI1MC5kdHNpIGFyZSBs
aXN0ZWQgYmVsb3cuCiAKICAgICAgICAgICAgICAgIHBwbXVfZG1jMDogcHBtdV9kbWMwQDEwNmEw
MDAwIHsKQEAgLTE0NSwzICsxNTQsMTYgQEAgRXhhbXBsZTMgOiBQUE1VdjIgbm9kZXMgaW4gZXh5
bm9zNTQzMy5kdHNpIGFyZSBsaXN0ZWQgYmVsb3cuCiAgICAgICAgICAgICAgICAgICAgICAgIHJl
ZyA9IDwweDEwNGQwMDAwIDB4MjAwMD47CiAgICAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9
ICJkaXNhYmxlZCI7CiAgICAgICAgICAgICAgICB9OworCitFeGFtcGxlNCA6ICdldmVudC1kYXRh
LXR5cGUnIGluIGV4eW5vczQ0MTItcHBtdS1jb21tb24uZHRzaSBhcmUgbGlzdGVkIGJlbG93Lgor
CisgICAgICAgJnBwbXVfZG1jMCB7CisgICAgICAgICAgICAgICBzdGF0dXMgPSAib2theSI7Cisg
ICAgICAgICAgICAgICBldmVudHMgeworICAgICAgICAgICAgICAgICAgICAgICBwcG11X2RtYzBf
MzogcHBtdS1ldmVudDMtZG1jMCB7CisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZXZl
bnQtbmFtZSA9ICJwcG11LWV2ZW50My1kbWMwIjsKKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBldmVudC1kYXRhLXR5cGUgPSA8KFBQTVVfUk9fREFUQV9DTlQgfAorICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQUE1VX1dPX0RBVEFfQ05UKT47Cisg
ICAgICAgICAgICAgICAgICAgICAgIH07CisgICAgICAgICAgICAgICB9OworICAgICAgIH07CgoK
LS0gCkJlc3QgUmVnYXJkcywKQ2hhbndvbyBDaG9pClNhbXN1bmcgRWxlY3Ryb25pY3MKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
