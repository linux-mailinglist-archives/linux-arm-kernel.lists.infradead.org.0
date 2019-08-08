Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8419C85DAA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 11:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zNSeWEo8BLeZsXooEMJXfE7ay1vs/pj6vN9/gHTJr8c=; b=pSHFA9xc7KpeKJ
	mpE4xriY92V5fJEEE7/D4CGj4KIa6MLNYKvf3+Z9REaHpUWAOXE81Mgzka8WtavS69gtsjZNW3NvZ
	y0BE3zoY75aCjmdSSd9jqorapq4L0c0sjj6+FjD922zXQIO8qKvRPUdtiGpA9sif7rR+lzm+oAvbA
	gOhI3wjMte+o4CR280zCBac4xvdaRBbR8E9exl7Ya+hFJISQqs5cljCtwrvIz/7wFRrZXy9uGE9kR
	NGvSCJnqxLgwHuJj6cFU+9rCEqidJoEvkM/90ZNOWOWer3spgiULnaoSTeB6/d8L8aOo4L/kUauFo
	L6uaUiy7RQJ9199HD8Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hveIy-0007dw-SZ; Thu, 08 Aug 2019 09:01:52 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hveIh-0007dT-Ml
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 09:01:37 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190808090133euoutp01df04f9e6a3c589d4057dcebfab5928b2~45whJylkq1748117481euoutp01u
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  8 Aug 2019 09:01:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190808090133euoutp01df04f9e6a3c589d4057dcebfab5928b2~45whJylkq1748117481euoutp01u
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565254893;
 bh=vAPC1KqG78EX5MpxZmqoLOpy+g6UHWhf1FKimkaWP4A=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=pO8Xm438v/7EEIdA82aSLOjUZqy0rWF8TNWSQFD2AuUDYX/6JwjPg1gXh8ENARgP2
 e3xr90ohBy3jU2A9JUj941NSAm82iGXDqWJYpcEXD2r9QK3gQDkIj++Hsv0mVA9LMF
 qGUuH5aFDn5ibGl0asc4wW2tKyfLh9vo9m2ngd+Y=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190808090132eucas1p13b40a53172facc537e31245aebf3bae7~45wgZWn290878908789eucas1p1O;
 Thu,  8 Aug 2019 09:01:32 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 6C.9E.04374.CE4EB4D5; Thu,  8
 Aug 2019 10:01:32 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190808090131eucas1p1df8f45ce2b1a6022be13edd66dc5a93d~45wfqrqUY0864008640eucas1p1M;
 Thu,  8 Aug 2019 09:01:31 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190808090131eusmtrp2e352ba3f317c555186224aacbaa12396~45wfp_rbZ0831808318eusmtrp2K;
 Thu,  8 Aug 2019 09:01:31 +0000 (GMT)
X-AuditID: cbfec7f5-92d689c000001116-c1-5d4be4ec97fd
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 1C.70.04166.BE4EB4D5; Thu,  8
 Aug 2019 10:01:31 +0100 (BST)
Received: from [106.120.51.18] (unknown [106.120.51.18]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190808090130eusmtip14e1361b874b470445d8ee44ed8931457~45wesHjyG0244502445eusmtip1v;
 Thu,  8 Aug 2019 09:01:30 +0000 (GMT)
Subject: Re: [PATCH v5 0/4] add coupled regulators for Exynos5422/5800
To: Chanwoo Choi <cw00.choi@samsung.com>
From: Kamil Konieczny <k.konieczny@partner.samsung.com>
Message-ID: <b0b8bd85-c016-ef13-7d5e-11d476e35ab0@partner.samsung.com>
Date: Thu, 8 Aug 2019 11:01:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <6888b704-1971-4832-d7b9-092368c797d0@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRju2zln57ianU3DlxUKI6KbVij4UXaDioVF/uhHJKNWHrTSKTs6
 M6nWRS0jzUllVk5Luyy7eS0tqbmceWVoKppmXlBSiVKj0jS3Y+S/53nf93mf9/n4GEL+mVIw
 R7TRnE6rCVeKJWRJ1a8G7+G+QPXaweH5+HnGUwq3jg1Q2GRtoHBq7xCBGxuf0bj+7DCNC3pb
 KNxUdkuMRy9bEc5orBDhx9ZOGue12kW448wDMR7+WS/CCa+tNJ5qeU7iwu4q8RaZKj8rH6kK
 zBfFqsLc06qUIjNS2dpKRarRAs8g8X5JQAgXfkTP6dZsOigJG6x9REal0ceL+nNoA5qgkpEL
 A6wf1LVloWQkYeTsAwSWrFJaIGMIupIGSIGMIqgrryb/SYZMlyihcR+B3ZIxS0YQ1FT+ETum
 3Ngd0GxIIxzYnV0ON/40O00ItomEaz1Gp7uY9Yee0jqRA0tnBNn302kHJtml8M54y2m3iN0H
 37srKWFGBu9v9DnrLuxmSL435jQjWA9o7zOJBOwF54pvEg4zYBMY6G83zjgzM2QbGH8EChHc
 4IutiBbwEph+KWiBjYX+nBRa0J5H0J30bTbzBqi02SnHHoJdAU/L1gjlrfCqKpcS1rtC24hM
 OMEVjCXXCaEshQuJcmHaG7Km62bffTEkTz+hriBl5pxgmXPCZM4Jk/nfNxuRZuTBxfARoRzv
 q+VifXhNBB+jDfU5HBlRgGY+Xu2UbfwFqpg8ZEEsg5QLpNU1gWo5pdHzcREWBAyhdJd26Xeq
 5dIQTdwJThd5QBcTzvEWtJghlR7S+HndwXI2VBPNHeO4KE73rytiXBQGpDcxCyfXt+8J+vEw
 6aoi3fx93HQoOz735NhUflwqWdhwr78s2MuQm/bpQwtz+851nZ6+OS3zHW8rXWmwn+ePBlgm
 v+6yyjwfJQaoXSuKFem/sY7RB/jbJ/J2e3QqEr1X390bGSxZRk24JGjLN6q3r7K9MY8zfW/9
 PlZ3KPSnhpQkH6ZZt5LQ8Zq/61CsR3QDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrKIsWRmVeSWpSXmKPExsVy+t/xu7qvn3jHGnw7rm6xccZ6VovrX56z
 Wsw/co7Vov/xa2aL8+c3sFucbXrDbrHp8TVWi8u75rBZfO49wmgx4/w+Jou1R+6yWyy9fpHJ
 4nbjCjaLNz/OMlm07j3CbvHv2kYWi80PjrE5CHqsmbeG0WPTqk42j81L6j36tqxi9Dh+YzuT
 x+dNcgFsUXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaWeobG5rFWRqZK+nY2Kak5mWWpRfp2
 CXoZL06vZimYyF6x5elC9gbG36xdjJwcEgImEq/ndwPZXBxCAksZJb7ceckIkZCWaDy9mgnC
 Fpb4c62LDaLoNaPE/cWbWEASwgJuElcaJjKD2CICGhIz/15hBCliFrjKInF+4xyojrOMEpNv
 nwKrYhMwl3i0/QzYWF6g7gXLJ7OD2CwCKhJHJ80BmyoqECFxeMcsRogaQYmTM5+AxTkF7CW6
 ln1hA7GZBdQl/sy7xAxhi0vcejKfCcKWl2jeOpt5AqPQLCTts5C0zELSMgtJywJGllWMIqml
 xbnpucWGesWJucWleel6yfm5mxiBUb7t2M/NOxgvbQw+xCjAwajEw1twwjtWiDWxrLgy9xCj
 BAezkgjvvTLPWCHelMTKqtSi/Pii0pzU4kOMpkDPTWSWEk3OByagvJJ4Q1NDcwtLQ3Njc2Mz
 CyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjPpFpkesp+WunWG9nO/Ujaws1kN787Ntu47H
 lbFuucg/VXHN2WNuF195tS4tSnnq6LF628b3ojPd9aMUqnbELGJ5YGLHrL/WT6ym5Ozq4K/d
 zwy0Y/9tidn4JmplcLeWQd3Fecu9N55oPpFTxHzrZOfNH5EO+3qF7k8smbzkTernE29vrMwo
 lldiKc5INNRiLipOBAAKRIgXCAMAAA==
X-CMS-MailID: 20190808090131eucas1p1df8f45ce2b1a6022be13edd66dc5a93d
X-Msg-Generator: CA
X-RootMTR: 20190807133855eucas1p1cab425b791262e8dee1b17cbe8b1b3da
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190807133855eucas1p1cab425b791262e8dee1b17cbe8b1b3da
References: <CGME20190807133855eucas1p1cab425b791262e8dee1b17cbe8b1b3da@eucas1p1.samsung.com>
 <20190807133838.14678-1-k.konieczny@partner.samsung.com>
 <6888b704-1971-4832-d7b9-092368c797d0@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_020135_950395_6D7F7D41 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hhbndvbywKCk9uIDA4LjA4LjIwMTkgMDM6NDcsIENoYW53b28gQ2hvaSB3cm90ZToKPiBI
aSBLYW1pbCwKPiAKPiBXaGVuIEkgYXBwbGllZCB0aGVtIHRvIHRlc3RpbmcgYnJhbmNoLCB0aG9z
ZSBkb24ndCBoYXZlIHRoZSBhdXRob3IgbmFtZQo+IG9ubHkganVzdCBoYXZlIHRoZSBlbWFpbCBh
ZGRyZXNzIGFzIGZvbGxvd2luZzoKPiBZb3UgaGF2ZSB0byBlZGl0IHRoZSB5b3VyIGdpdCBhdXRo
b3IgaW5mb3JtYXRpb24gd2l0aCB5b3VyIG5hbWUuCgpTb3JyeSwgSSB3aWxsIHJlc2VuZCB3aXRo
IHByb3BlciBGcm9tOiBpbmZvLgoKPiBhdXRob3IJay5rb25pZWN6bnlAcGFydG5lci5zYW1zdW5n
LmNvbSA8ay5rb25pZWN6bnlAcGFydG5lci5zYW1zdW5nLmNvbT4JMjAxOS0wOC0wNyAxNTozODoz
NiArMDIwMAo+IGNvbW1pdHRlcglDaGFud29vIENob2kgPGN3MDAuY2hvaUBzYW1zdW5nLmNvbT4J
MjAxOS0wOC0wOCAxMDozNToxNiArMDkwMAo+IGNvbW1pdAk0MzA0ZjRlY2VjOTNjZWJkMjU1NDYz
ZDU2YjBhNGYxMTJlZTlkYzUwIChwYXRjaCkKPiB0cmVlCTI4NTllNTY2ZDZmNjgyMTlmNzFhNjFl
N2M0MTI3MTdjMWFkYmE0ZjUKPiBwYXJlbnQJNTdkODU0MjEwMzhiNDU4ZGQ4N2VjMjY4NDA0ZmY2
MDhmOTBjMzZhZSAoZGlmZikKPiBkb3dubG9hZAlsaW51eC00MzA0ZjRlY2VjOTNjZWJkMjU1NDYz
ZDU2YjBhNGYxMTJlZTlkYzUwLnRhci5nego+IAo+IFJlZ2FyZHMsCj4gQ2hhbndvbyBDaG9pCj4g
Cj4gT24gMTkuIDguIDcuIOyYpO2bhCAxMDozOCwgay5rb25pZWN6bnlAcGFydG5lci5zYW1zdW5n
LmNvbSB3cm90ZToKPj4gWy4uLl0KCi0tIApCZXN0IHJlZ2FyZHMsCkthbWlsIEtvbmllY3pueQpT
YW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
