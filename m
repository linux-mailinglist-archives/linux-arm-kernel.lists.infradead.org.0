Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A00D1E83C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 18:34:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L9uIPySzc40nBE1HpUu9+9ZyXiAMu1a1KWvo098wpfM=; b=fI4hivx40H0nu9
	IfIauKx5F5sTmswR2NR6FaeNk6L/6W3cGJBtODv0ng+78O3qC/mkqxhW2DsGcCWl2frctkgI2143K
	eBYVBvlSrK6uIB7odok0AMa3Nqxrmi9SXTzQFXBXOd4q8GhMZyxDr83rOdSbeqp0nDv5wj38tvA+Q
	LxISBmLfxIWPcnATx+JLDdtB3Sp3ieUvLxdyBNs/EQwWon2TwcwMZRPAYL8NBFl1KRVxZoYIzWecK
	9pTBPwz0X3gOD0GWAhHpA8oXWzL2vEEDdIsTCoac4P3+DrALwIpAIju02IOKIBJPUn6pi5LHMzroV
	3RAvvPQkAKkaibc9W7mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehxQ-0005ZC-3E; Fri, 29 May 2020 16:34:08 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehvp-0004ZX-60
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 16:32:30 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200529163227euoutp0294a984ec3a25d896a01d07d7e27ffe95~TjNa2ZQlM1680116801euoutp02R
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 16:32:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200529163227euoutp0294a984ec3a25d896a01d07d7e27ffe95~TjNa2ZQlM1680116801euoutp02R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590769947;
 bh=aOkXOEugUHwjOCVLx2Nrtt8w2k9Ic4QcV2hJ3HCE3tk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QzCT6Xl28JPgpyIgi2ldcaogHlrj0C0YSN1qpZVrjMOkax//hbbm1Z8VJJ0Ob8cbz
 F9v+uGBEVwsfLgRa7o3vDGr1bFdC/LWYEKa93Exgpow5dNkO3bfMStLuZrXAT5Wde8
 zLIg9fC+uq7nv5Oxpqr7CANFMI+cQvOR77fXo71g=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200529163226eucas1p24f7eae2628271288993939d46f242a77~TjNaoPgPU2034120341eucas1p2d;
 Fri, 29 May 2020 16:32:26 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 5B.5D.61286.A1931DE5; Fri, 29
 May 2020 17:32:26 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200529163226eucas1p15bea74bed9cc5d22727c9ba732a5cbb9~TjNaXhaFB2234422344eucas1p19;
 Fri, 29 May 2020 16:32:26 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200529163226eusmtrp20b7c58a0710616ddbb4d667991b9a436~TjNaW6c4h0733307333eusmtrp2T;
 Fri, 29 May 2020 16:32:26 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-59-5ed1391a1013
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id D1.EA.08375.A1931DE5; Fri, 29
 May 2020 17:32:26 +0100 (BST)
Received: from AMDC3061.digital.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200529163225eusmtip1f1572a53cc7b48b492dbee6981a4b114~TjNZpb7hR1868718687eusmtip1O;
 Fri, 29 May 2020 16:32:25 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: georgi.djakov@linaro.org, cw00.choi@samsung.com, krzk@kernel.org
Subject: [RFC PATCH v5 4/6] ARM: dts: exynos: Add interconnect properties to
 Exynos4412 bus nodes
Date: Fri, 29 May 2020 18:31:58 +0200
Message-Id: <20200529163200.18031-5-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200529163200.18031-1-s.nawrocki@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTcRjG+e9s5xxHk9MUfJmVOArKUhODjijdlJh9yagMxNvUg0rblM15
 i8q75g0zwjlFV3SxiTnnBfOGl1REalmmgpeVWaFUlpcPmZecR9Fvz/u8v4f/+8CfxIS9PBEZ
 rYhjlAqpTIzzuU19f03OIo+h4JNFZg/aXJGJ6DpNLY8eXfrOo4eX53G6pN2I08XmIi5tMhkI
 2vhlhEd/aCnHaY2pg0PXvJ4k6PHUKpzu+ZHNozUPZvFz1hKj/h4umRhpwyXmvH6OpP7JXUlh
 gx5JFo2H/PAAvlcEI4uOZ5SuZ0L5URkPXxCxWkFidplDCprg5yIrEqhTcL++h5OL+KSQqkLQ
 MJlNsMMSgum6z4gdFhGkaVI4O5HVqcztyHMEhUupu5G1ucYtCqfcoKC3EFm0LeUDWV8ruBYI
 o9o40FH2i2tZ2FDhMKYzbaZJkksdgZe/3Sy2gPIEQ10dl33NAaoNnZhFW1FekLeqwVhmPwyU
 zmwx2CaT3liGsfwUAQbDJVb7QOajzu2rbWCuv4Fg9QHYeFW51QCodAT5reMEOxQhMPfrEEt5
 wsTbFdxyHEYdg9oWV9Y+D/mFrTyLDZQ1jP3cz95gDcVNJRhrCyAnS8jSh+GfvmT7BBHkzWxs
 15LAaLUJL0KO2j1ttHvaaHff1SFMj+wYtUoeyajcFEyCi0oqV6kVkS7hMXIj2vxcg+v9C81o
 +X1YN6JIJN4nSHQaChbypPGqJHk3AhIT2wouvBkMFgoipEnJjDImRKmWMapuZE9yxXYC98ez
 QUIqUhrH3GSYWEa5s+WQVqIUdHTSvqnUv0qdKFnMCAyb9vdG1aGfdEHqpI2Jyuvf+q46J9wY
 9qtZk+fILnoftL3d7jg/Xq4lGgOFC+5pw50zg4qI4NXulo2YE/oqQcHSujHh6TNRwEDQOxt6
 JctweersHU/ngWt/ZGFdybd8A5IcR/M/huC+DceJK2Fdp3N5xmYxVxUldXPClCrpf5Z4tshY
 AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrBIsWRmVeSWpSXmKPExsVy+t/xu7pSlhfjDPYdULW4P6+V0WLjjPWs
 Fte/PGe1uPL1PZvF9L2b2Cwm3Z/AYnH+/AZ2i02Pr7FaXN41h81ixvl9TBZrj9xlt7jduILN
 4vCbdlaLGZNfsjnweWxa1cnmcefaHjaP+93HmTw2L6n36NuyitHj8ya5ALYoPZui/NKSVIWM
 /OISW6VoQwsjPUNLCz0jE0s9Q2PzWCsjUyV9O5uU1JzMstQifbsEvYyWqSvZC2bxVrTPlm9g
 vMPVxcjJISFgIvHnXitTFyMXh5DAUkaJzq+LWLsYOYASUhLzW5QgaoQl/lzrYoOo+cQosfHW
 X0aQBJuAoUTv0T4wW0TAQ+JU61pWkCJmgRNMEk96N7KBJIQFEiUevF3JDDKURUBVYt0HQ5Aw
 r4C1xIaNG1kgFshLrN5wgBnE5hSwkej+MwPMFgKqaXs8ixWiXlDi5MwnLCBjmAXUJdbPEwIJ
 MwO1Nm+dzTyBUXAWkqpZCFWzkFQtYGRexSiSWlqcm55bbKhXnJhbXJqXrpecn7uJERiL2479
 3LyD8dLG4EOMAhyMSjy8F3QuxgmxJpYVV+YeYpTgYFYS4XU6ezpOiDclsbIqtSg/vqg0J7X4
 EKMp0GcTmaVEk/OBaSKvJN7Q1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwen
 VAOjR9czHpcaW4a1ySo+O6/uEZgzOdudzX/q6dDKR+0e2/ZJp8zNjf71LItH5f3JZyc8vRlc
 qi5fnL3qzu3nBn8CSl03qDXPZdpfI1AkodRpwW1S2qV9PbHY48Rs1zCrHS+kO29MT5TLDHv8
 b4FK0J3fPU4X8g883/fKYktMZow7i8GRsmMvtZKUWIozEg21mIuKEwGC+1hJ2wIAAA==
X-CMS-MailID: 20200529163226eucas1p15bea74bed9cc5d22727c9ba732a5cbb9
X-Msg-Generator: CA
X-RootMTR: 20200529163226eucas1p15bea74bed9cc5d22727c9ba732a5cbb9
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200529163226eucas1p15bea74bed9cc5d22727c9ba732a5cbb9
References: <20200529163200.18031-1-s.nawrocki@samsung.com>
 <CGME20200529163226eucas1p15bea74bed9cc5d22727c9ba732a5cbb9@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_093229_427689_97898EEB 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 sw0312.kim@samsung.com, a.swigon@samsung.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, inki.dae@samsung.com, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBhZGRzIHRoZSBmb2xsb3dpbmcgcHJvcGVydGllcyBmb3IgRXh5bm9zNDQxMiBp
bnRlcmNvbm5lY3QKYnVzIG5vZGVzOgogLSBzYW1zdW5nLGludGVyY29ubmVjdC1wYXJlbnQ6IHRv
IGRlY2xhcmUgY29ubmVjdGlvbnMgYmV0d2VlbgogICBub2RlcyBpbiBvcmRlciB0byBndWFyYW50
ZWUgUE0gUW9TIHJlcXVpcmVtZW50cyBiZXR3ZWVuIG5vZGVzOwogLSAjaW50ZXJjb25uZWN0LWNl
bGxzOiByZXF1aXJlZCBieSB0aGUgaW50ZXJjb25uZWN0IGZyYW1ld29yay4KCk5vdGUgdGhhdCAj
aW50ZXJjb25uZWN0LWNlbGxzIGlzIGFsd2F5cyB6ZXJvIGFuZCBub2RlIElEcyBhcmUgbm90Cmhh
cmRjb2RlZCBhbnl3aGVyZS4KClNpZ25lZC1vZmYtYnk6IEFydHVyIMWad2lnb8WEIDxhLnN3aWdv
bkBzYW1zdW5nLmNvbT4KU2lnbmVkLW9mZi1ieTogU3lsd2VzdGVyIE5hd3JvY2tpIDxzLm5hd3Jv
Y2tpQHNhbXN1bmcuY29tPgotLS0KQ2hhbmdlcyBmb3IgdjU6CiAtIGFkanVzdCB0byByZW5hbWVk
IGV4eW5vcyxpbnRlcmNvbm5lY3QtcGFyZW50LW5vZGUgcHJvcGVydHksCiAtIGFkZCBwcm9wZXJ0
aWVzIGluIGNvbW1vbiBleHlub3M0NDEyLmR0c2kgZmlsZSByYXRoZXIgdGhhbgogICBpbiBPZHJv
aWQgc3BlY2lmaWMgb2Ryb2lkNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kuCi0tLQogYXJjaC9hcm0v
Ym9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpIHwgNSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRz
aSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaQppbmRleCA0ODg2ODk0Li5hNzQ5
NmQzIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLmR0c2kKKysrIGIv
YXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpCkBAIC0zODEsNiArMzgxLDcgQEAKIAkJ
CWNsb2NrcyA9IDwmY2xvY2sgQ0xLX0RJVl9ETUM+OwogCQkJY2xvY2stbmFtZXMgPSAiYnVzIjsK
IAkJCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19kbWNfb3BwX3RhYmxlPjsKKwkJCSNpbnRl
cmNvbm5lY3QtY2VsbHMgPSA8MD47CiAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwogCQl9OwogCkBA
IC00NTAsNiArNDUxLDggQEAKIAkJCWNsb2NrcyA9IDwmY2xvY2sgQ0xLX0RJVl9HREw+OwogCQkJ
Y2xvY2stbmFtZXMgPSAiYnVzIjsKIAkJCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19sZWZ0
YnVzX29wcF90YWJsZT47CisJCQlzYW1zdW5nLGludGVyY29ubmVjdC1wYXJlbnQgPSA8JmJ1c19k
bWM+OworCQkJI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsKIAkJCXN0YXR1cyA9ICJkaXNhYmxl
ZCI7CiAJCX07CiAKQEAgLTQ2Niw2ICs0NjksOCBAQAogCQkJY2xvY2tzID0gPCZjbG9jayBDTEtf
QUNMSzE2MD47CiAJCQljbG9jay1uYW1lcyA9ICJidXMiOwogCQkJb3BlcmF0aW5nLXBvaW50cy12
MiA9IDwmYnVzX2Rpc3BsYXlfb3BwX3RhYmxlPjsKKwkJCXNhbXN1bmcsaW50ZXJjb25uZWN0LXBh
cmVudCA9IDwmYnVzX2xlZnRidXM+OworCQkJI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsKIAkJ
CXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJCX07CiAKLS0gCjIuNy40CgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
