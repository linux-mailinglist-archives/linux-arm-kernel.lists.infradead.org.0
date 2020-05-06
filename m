Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B39D1C6AB7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 10:02:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=g9tBW1nQU9LawQc7N8piuChDlo9LlrejGvPLEMGjy3I=; b=p5PMoZHmf2WDAH
	dYHKU1aSj/Y0hsDq1hyVT5+RXxAuKHK3+FcqSIhT8vmXCpk8f1nwswH6ouyeDAVmxz6s9a+J25oTv
	Aj9kdRxFaoY/XfgFS0/2nxG5d8dtyejNB+Q0PUYa6XGS8/gFY6mVt93MczvMTfwUy1YEI0g6iDQbD
	ITeY0//XkL2z9k3JBF9I+pKLFUfkuJgnsp3ZFMdFwpU0zjT9/0jn5tH/vwTPRAkLm0tKYMnzeFxOQ
	Nh4sfjLraLoSl8+1Q0jqh6FfDMfgkIwjytMOdz9txHNdPyA2yrBUCDoNVJ7q3eINETXfT7ViZW9Lx
	oQXorUp1dLMG/QGWjc/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWF0b-0007Ad-Ok; Wed, 06 May 2020 08:02:25 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWF0R-00079J-Pj
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 08:02:19 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200506080212epoutp0170fa04edc2075e7a0c497f5971d0ac09~MYaWs_QsW2258022580epoutp01M
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  6 May 2020 08:02:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200506080212epoutp0170fa04edc2075e7a0c497f5971d0ac09~MYaWs_QsW2258022580epoutp01M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588752132;
 bh=kzOrUDnA47Fa796XI3n9wX8Cjb3+4V30NIZwUCokYas=;
 h=From:To:Cc:Subject:Date:References:From;
 b=I7/e6n0rTd2l9aNg0OphVL6WDJEZpCBLdL+LPlfxEN0scbsOkLq/sgtNL8WO+ADyW
 Gv5sJigEEvwvUkc0CdIfypVHs9LpcLnfyOIfLOnup9VbahbE7xIWwQ3ZRtkdlN38ZV
 ySd1D7/NMOfaC2kSASyoPQZa2y7M4PtjYQmoOYPU=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20200506080211epcas2p3e2b1e2d59a8b3553af74e5b8dd1a4873~MYaV45Anr2705127051epcas2p3B;
 Wed,  6 May 2020 08:02:11 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.40.184]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 49H8FY3BDSzMqYkp; Wed,  6 May
 2020 08:02:09 +0000 (GMT)
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 C4.6E.04393.00F62BE5; Wed,  6 May 2020 17:02:08 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
 20200506080208epcas2p2b5038265370e21bd38c21002d236b5fe~MYaSrHUal2929829298epcas2p2w;
 Wed,  6 May 2020 08:02:08 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200506080208epsmtrp2eca4602d7c276b8fb9f2d4f8bf53d9a7~MYaSqMMuc1615416154epsmtrp2u;
 Wed,  6 May 2020 08:02:08 +0000 (GMT)
X-AuditID: b6c32a47-667ff70000001129-e0-5eb26f0033e9
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 3F.2F.18461.00F62BE5; Wed,  6 May 2020 17:02:08 +0900 (KST)
Received: from ishtar.dsn.sec.samsung.com (unknown [12.36.155.159]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200506080208epsmtip2ef2f53091999c2426884fb6c7c6786da~MYaSbu6G72751227512epsmtip2H;
 Wed,  6 May 2020 08:02:08 +0000 (GMT)
From: Hyunki Koo <hyunki00.koo@samsung.com>
To: krzk@kernel.org, gregkh@linuxfoundation.org, jslaby@suse.com,
 robh+dt@kernel.org
Subject: [PATCH v10 0/3] 32-bit access for TX/RX hold registers for
 samsung_tty driver
Date: Wed,  6 May 2020 17:02:01 +0900
Message-Id: <20200506080201.18560-1-hyunki00.koo@samsung.com>
X-Mailer: git-send-email 2.15.0.rc1
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01SWUwTURT1ddqZoVoda9Ub3JpRjBvQgoXRWKPRSBM1khCNMQqOdFII3dJp
 idUPqygiokJcwOJaMdEGBQolhogLxRiVgAYobomJisEdxQ33tlMjf+fed8475753SUzuwWPJ
 XLOds5lZI41LxY2Bmanxwyy+TNW+YDJzsrVdwhScqcEZ79n7GHOotl/EdHTUEozvWVDCdDYd
 w5mKjisipu3MPoLZ1dxKLJLqfN49uO7q8WpCV1+1Tbe/wYt0NQ3dYt2Ab3I6vs64IIdj9ZxN
 yZmzLfpcs0FLL8/IWpKlSVGp49XzmFRaaWZNnJZeuiI9flmuMZSMVuazRkeolc7yPJ24cIHN
 4rBzyhwLb9fSnFVvtKrV1gSeNfEOsyEh22Kar1apkjQh5kZjzr1gJW5tUWx+9PKyyIUeUcUo
 hgRqLvQdcWPFSErKqUsIXHVvJULxEcFjfxEhFF8QHPixU/xP4nnWG2U1I9jbVi4Wim8Irg2U
 icIsnJoNb74excJYQa2B7Wd7IgqMakdQWHc6QhpDrYU2/wU8jMVUHNz45IkIZJQWXL0lhGA3
 Fe6+q5II/dFw6+jzSAyMmgIF/spIcqC2k3D7/GeRIFgKpU/PRfEYeHWzIXpRLAy8a8YFvA2u
 FJYRgrgEwWB/r0Q4SAb3i92oGJEhh5lQ05QYhuEQrQ+jviOhKPCLENoyKCqUC8LpcPFLX9R1
 IlT3NkVddfD6zi0UxnJqAwx2D4pL0RT3kGncQ6Zx//c9hTAvGsdZeZOB45OsyUO/1Yci+zkr
 7RJqbF/RgigS0SNkqrS6TLmEzeedphYEJEYrZCO+hVoyPevcwtksWTaHkeNbkCb02GVY7Nhs
 S2jbzfYstSYpJUU1T8NoUpIYerzMN/zBejllYO1cHsdZOds/nYiMiXWhUQcTVx5e5VxcM1bf
 peArvx8r6ZKs7umOyx+wldF/ymO0HUFj449k57UPzQYvk7v1Z+fyWs/nVLnVdX/OuE2Nv0+k
 KR39984pLnftGDXN769w581IXU/MpzKrpE9KJzyXXnd6AsGEvklV5QXQV/++03mzLuPu1sDh
 wMqePMfr7OO0mM9h1bMwG8/+BbBO9du1AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOLMWRmVeSWpSXmKPExsWy7bCSvC5D/qY4g4l9ghbzj5xjtWhevJ7N
 YtXSG8wWUzZ8YLI4f34Du8Wmx9dYLS7vmsNmMeP8PiaLM4t72S1a9x5hd+Dy2LSqk81j/9w1
 7B6bl9R79G1ZxeixfstVFo/Pm+QC2KK4bFJSczLLUov07RK4Mi5em81WcEik4vbLPUwNjLcF
 uhg5OSQETCQWPX7KCmILCexmlPi+qAQiLiMx4cUSZghbWOJ+yxGgGi6gmm+MEheW/mcBSbAJ
 aEu8+T4TqIiDQ0QgSmLPR3+QGmaBK4wSC99vYQSpERYIk5j55QU7iM0ioCpx9MsisKG8ArYS
 DU972CEWKEtceLeEFSIuKHFy5hMWkJnMAuoS6+cJgYSZBeQlmrfOZp7AyD8LSdUshKpZSKoW
 MDKvYpRMLSjOTc8tNiwwzEst1ytOzC0uzUvXS87P3cQIDnstzR2M21d90DvEyMTBeIhRgoNZ
 SYSX58fGOCHelMTKqtSi/Pii0pzU4kOM0hwsSuK8NwoXxgkJpCeWpGanphakFsFkmTg4pRqY
 RA3Elti87y5yfbB+xplJ71ytpbTOBJbksl3a0MurHGH7QSHVnm3yudIJb94kznV9vPGerW77
 tw7ne4xPPufcY+N58Uiy7xV3eaSlscHPAymTt4hqPpUoF53ffI1XZoJM68mW9sdlGRNvZk+T
 vzLnvk591JUQ5+5klsk56Y/rjXqnW5vFnJ6irZ76njHo6+L5njPVfr3dsVUp7Xsn75U9CXtZ
 JwZxKU2ezTznhevhqnTzb0oH+H6qLOOpsVxcfqTyMf/hxVOfidv4SUY/VTa6ucv75NF+zlPb
 TxaFFmhovF/qvnq6VkJh2LEf72yLfL8WfMso8V/YnrrpubDlWRYvCZ9fv/d8Sl9YeOao1ZLf
 SizFGYmGWsxFxYkA0wVJ/uoCAAA=
X-CMS-MailID: 20200506080208epcas2p2b5038265370e21bd38c21002d236b5fe
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200506080208epcas2p2b5038265370e21bd38c21002d236b5fe
References: <CGME20200506080208epcas2p2b5038265370e21bd38c21002d236b5fe@epcas2p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_010216_258474_42318633 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, Hyunki Koo <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2hhbmdlIGluIHYxMDoKLSBhZGQgcmV2aWV3ZCBieSBhbmQgdGVzdGVkIGJ5IGluIGNvbW1pdCBv
ZiBlYWNoIHBhdGNoCgpDaGFuZ2UgaW4gdjk6Ci0gbW92ZSB3cl9yZWdfYmFycmllciBpbnRvIGlm
ZGVmIG9mIENPTkZJR19TRVJJQUxfU0FNU1VOR19DT05TT0xFCiAgdG8gZml4IGZvbGxvd2luZyBi
dWlsZCBlcnJvciBmb3IgeDg2IGJ1aWxkCiAgQ0MgW01dICBkcml2ZXJzL3R0eS9zZXJpYWwvc2Ft
c3VuZ190dHkubwogIGRyaXZlcnMvdHR5L3NlcmlhbC9zYW1zdW5nX3R0eS5jOjE4NjoxMzogd2Fy
bmluZzog4oCYd3JfcmVnX2JhcnJpZXLigJkKICBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVd1bnVz
ZWQtZnVuY3Rpb25dCgpDaGFuZ2UgaW4gdjg6Ci0gc3BpdCBpbnRvIDMgcGF0Y2gKICBbMS8zXSBj
cmVhdGUgdGhlIG5ldyBmdW5jdGlvbnMgd2l0aCBubyBmdW5jdGlvbmFsIGNoYW5nZSB0byB0aGUg
Y29kZSBhcy1pcy4KICBSZXBsYWNlIHJkX3JlZ2Ivd3JfcmVnYiB3aXRoIHJkX3JlZy93cl9yZWcg
Zm9yIGdlbmVyYWwgdXNhZ2UuCiAgWzIvM10gYWRkIHRoZSBuZXcgYmluZGluZyByZWctaW8td2lk
dGggaW4gZGV2aWNlIHRyZWUKICBbMy8zXSBhZGQgdGhlIG5ldyBmdW50aW5hbGl0eSBvZiByZF9y
ZWcgLyB3cl9yZWcgYW5kIHdyX3JlZ19iYXJyaWVyIAogICAgICAgIHRvIHN1cHBvcnQgMzItYml0
IGFjY2VzcyBmb3IgdGhlIFRYL1JYIGhvbGQgcmVnaXN0ZXJzIFVUWEggYW5kIFVSWEguCgpDaGFu
Z2UgaW4gdjc6Ci0gWzEvMl0gY29ycmVjdCBidWlsZCBlcnJvciBvbiBydW5uaW5nICdtYWtlIGR0
X2JpbmRpbmdfY2hlY2snIApEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc2VyaWFs
L3NhbXN1bmdfdWFydC55YW1sOiAgbWFwcGluZyB2YWx1ZXMgYXJlIG5vdCBhbGxvd2VkIGluIHRo
aXMgY29udGV4dAogIGluICI8dW5pY29kZSBzdHJpbmc+IiwgbGluZSAzNiwgY29sdW1uIDEzCiAg
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL01ha2VmaWxlOjEyOiByZWNpcGUgZm9y
IHRhcmdldCAnRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NlcmlhbC9zYW1zdW5n
X3VhcnQuZXhhbXBsZS5kdHMnIGZhaWxlZAogIG1ha2VbMV06ICoqKiBbRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3NlcmlhbC9zYW1zdW5nX3VhcnQuZXhhbXBsZS5kdHNdIEVycm9y
IDEKICBtYWtlWzFdOiAqKiogV2FpdGluZyBmb3IgdW5maW5pc2hlZCBqb2JzLi4uLgogIE1ha2Vm
aWxlOjEyNjI6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkdF9iaW5kaW5nX2NoZWNrJyBmYWlsZWQKICBt
YWtlOiAqKiogW2R0X2JpbmRpbmdfY2hlY2tdIEVycm9yIDIKLSBbMi8yXSBhZGQgY29tbWl0IG1l
c3NhZ2Ugb2YgcmV2aWV3ZWQgYnkgYW5kIHRlc3RlZCBieSBpbiBjb21taXQgbWVzc2FnZQogIFJl
dmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+CiAgVGVzdGVk
IG9uIE9kcm9pZCBIQzEgKEV4eW5vczU0MjIpOgogIFRlc3RlZC1ieTogS3J6eXN6dG9mIEtvemxv
d3NraSA8a3J6a0BrZXJuZWwub3JnPgoKQ2hhbmdlIGluIHY2OgotIFsyLzJdIGNsZWFuIGRlc2Ny
aXB0aW9uIG9mIHJlZy1pby13aWR0aAogIGFsbE9mIGlzIG5vdCBuZWVkZWQuIEp1c3QgZW51bSBb
MSwgMl0gaXMgZW5vdWdoLgoKQ2hhbmdlcyBpbiB2NToKLSBzcGl0IGludG8gMiBwYXRjaCwgbmV3
bHkgYWRkZWQgcGF0Y2ggZm9yIGR0LWJpbmRpbmcKICBbMS8yXSBuZXdseSBhZGRlZCBkdC1iaW5k
aW5nIGFuZCBnbyBhcyBmaXJzdCBwYXRjaCBpbiB0aGlzIHNlcmllcy4KICBbMi8yXSBnbyBhcyBz
ZWNvbmQgcGF0Y2ggaW4gdGhpcyBzZXJpZXMuCgpDaGFuZ2VzIGluIHY0OgotIGNvcnJlY3QgdmFy
aWFibGUgdHlwZXMgYW5kIGNoYW5nZSBtaXNsZWFkaW5nIGZ1bmN0aW9uIG5hbWUKCkNoYW5nZXMg
aW4gdjM6Ci0gbGluZSAyMDMxOiByZW1vdmUgcmVkdW5kYW50IGluaXQgdmFsdWUgIGZvciBvdXJw
b3J0LT5wb3J0LmlvdHlwZQoKQ2hhbmdlcyBpbiB2MjoKLSBsaW5lIDk1NCA6IGNoYW5nZSByZF9y
ZWdsIHRvIHJkX3JlZyBpbiBmb3IgYmFja3dhcmQgY29tcGF0aWJpbGl0eS4KLSBsaW5lIDIwMzE6
IEFkZCBpbml0IHZhbHVlIGZvciBvdXJwb3J0LT5wb3J0LmlvdHlwZSAgdG8gVVBJT19NRU0KCkh5
dW5raSBLb28gKDMpOgogIHNlcmlhbDogc2Ftc3VuZzogUmVwbGFjZSByZF9yZWdiL3dyX3JlZ2Ig
d2l0aCByZF9yZWcvd3JfcmVnCiAgZHQtYmluZGluZ3M6IHNlcmlhbDogQWRkIHJlZy1pby13aWR0
aCBjb21wYXRpYmxlCiAgdHR5OiBzYW1zdW5nX3R0eTogMzItYml0IGFjY2VzcyBmb3IgVFgvUlgg
aG9sZCByZWdpc3RlcnMKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9zZXJpYWwvc2Ftc3VuZ191
YXJ0LnlhbWwgICB8ICA4ICsrKwogZHJpdmVycy90dHkvc2VyaWFsL3NhbXN1bmdfdHR5LmMgICAg
ICAgICAgICAgICAgICAgfCA3NiArKysrKysrKysrKysrKysrKystLS0tCiAyIGZpbGVzIGNoYW5n
ZWQsIDcyIGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKLS0gCjIuMTUuMC5yYzEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
