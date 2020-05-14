Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 780A31D3C0D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 21:08:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=/bvWtNk0J7k1eSchvle9YTynKcCrf4W7PT4W7HfqP5M=; b=T1rap5M97VNRMX
	oxPsaLWcutQzJcMrlh6cDqgRWSAR1/6p9CsmIKbrKhmwUJyYcnWtzVWVDg4A7GcJ60m7Fg10lANAh
	tdMJuyevPJh4d0v7Unc8Rfo3BOGzXYdw4/UtDFRl7saOh34iBEbhk9gSErxdnU5v46mK6Dq+w/NZZ
	++TwRyGhyHDthORvMHKIbwoDJOG5ARCXvbRUXC30+/ZsYV+gUCmPop5j4thb8VZCZ0TmOeHf2vbI0
	/Midz8t+iHA2tNGw12kt1+aORlJXzBVCiPrP7mnQ7kg1xZFkHPtg6eDuibO3Lnt9BKhZeOWd5j3ZV
	0O7fza3RapuPqKvD30rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZJCz-0007lc-6B; Thu, 14 May 2020 19:07:53 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZJCn-0007jn-GZ
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 19:07:45 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200514190739euoutp02cbca7ef5c4cd7636313585d499a89c72~O_ppNMbyh1181211812euoutp02B
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 19:07:39 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200514190739euoutp02cbca7ef5c4cd7636313585d499a89c72~O_ppNMbyh1181211812euoutp02B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589483259;
 bh=CXFOnCSMo4ZePs1sWzgaCbirikPXXnubVCNzMYCfGBA=;
 h=From:To:Cc:Subject:Date:References:From;
 b=CClJ+FyobMDurEP5yKu624eumo8GvTzP8ChA5fSE9+1wiFgNQuxpmx/E0ST0igXxj
 tZTQkS+3D2KqSutEbtIgkxiaEehVWkcH1QEBLQOVRoAqu3qC7lpETQ7kQSOil5N3K3
 auZIU4ZmlvR/Q39YBVCbiXzbOnifgxsOFsJ5Biu4=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200514190737eucas1p266af3c9f52a7fcb960981451ed8a6ed4~O_poBhODy0442904429eucas1p25;
 Thu, 14 May 2020 19:07:37 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 41.A1.60679.9F69DBE5; Thu, 14
 May 2020 20:07:37 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200514190737eucas1p18ccdddb185ea7611683a6859e17bc721~O_pniwfV-0234402344eucas1p1o;
 Thu, 14 May 2020 19:07:37 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200514190737eusmtrp1dfac399447ada06f75e580787e9cef7f~O_pnh-Vnd2577025770eusmtrp1m;
 Thu, 14 May 2020 19:07:37 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-6a-5ebd96f9c12d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id C8.32.08375.9F69DBE5; Thu, 14
 May 2020 20:07:37 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200514190737eusmtip2b2b24273eb8b84ed3db9c7ab6359c5ef~O_pnXZPj81371813718eusmtip2A;
 Thu, 14 May 2020 19:07:37 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: Matt Mackall <mpm@selenic.com>, Herbert Xu
 <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Florian Fainelli
 <f.fainelli@gmail.com>, Markus Elfring <elfring@users.sourceforge.net>,
 Matthias Brugger <mbrugger@suse.com>, Stefan Wahren <wahrenst@gmx.net>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org
Subject: [PATCH 0/2] Set the quality value for two HW RNGs
Date: Thu, 14 May 2020 21:07:32 +0200
Message-Id: <20200514190734.32746-1-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRjm81x2sk4dp+DLiqJRQaZmF+OjMhKCTpRd6EdhZK06qeSNHc2K
 SMtmac2NLVNnkWWheFttNnRpl5WuElslZWEl6TQ0FETJS/d51uXf8z2X93lf+BhC/pNSMPFJ
 qYI6SZWgpH1JW/O4K2T8YmNMWIMxBH83NMvwrUIzhau1TSR25ZQReGLwkQxnlZppfK5/FtZ1
 fyawy3VTht86yhG2dL+mcOeHcR/cZr9E40LXXR9cYnRTuMSWh3BPkZXGg5VuhJ2Pc4i1/vzX
 CQPiTZ2tNF9vei/jSy33aN52fz5vqcih+XuXq2S89XoGn1dbgfi8vpuIN9e+IvlTT89Q/LBl
 9lY22nf1ASEh/rCgXrxmr29c5UMrlWInj5zucNOZyEnkoikMcMshr671N/Zl5Fw5An1lPZIe
 Iwh6y796lWEEdz92/Y3UVNd7hTIEo+OnvZFPCCxtLymPi+YiQXfjMeURAjgNBcYhPekRCC4d
 NB/dkyZ/biU4uzJ9chHDkNx8yOyiPTTLrYKu3Aek1DYHik+2eHk/eFLknuRncEFQdardO3IO
 ZN0untwIuBsM5A9ZaSm8DrKzc7yD/KHfWSuT8CxoMZ4nPb3AZYDRsELKnkdguzTm9a+Cd88m
 aI+H4BaC2b5YoiOhorRfJkWnw5sBP2mF6WCwFRASzcLZbLnkngc1ugbvQAVo+8uRhHl4/vkn
 pUdzTf8dZvrvGNO/3hJEVKBAIU1MjBXEpUlCeqioShTTkmJD9ycnWtDvb9nywzlSh+zf9jkQ
 xyDlNDYsvzFGTqkOi0cTHQgYQhnAbjbfiZGzB1RHjwnq5D3qtARBdKCZDKkMZJdd69st52JV
 qcIhQUgR1H9UH2aKIhOdCT/YtzZwYJHik13RsMO4IWvk6vYOw1hwcJrGb5NGGxFVE5ldVnd1
 q+7LVPbkFs22qJ4m9oquVxsrLjB1VzVst7s7o2G2vr66g2XQkJYuu7MueqnjwkRPY24CET5t
 fdtOfemLKwX7T4zSuzYebzconLZ9yRFBoe2GQsp6qyVCSYpxqiVBhFpU/QIQF34jkgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrOIsWRmVeSWpSXmKPExsVy+t/xe7o/p+2NM7i8Xsji76Rj7BYbZ6xn
 tVjbe5TF4nzncmaLX++OsFs0L17PZtH9Ssai//FrZovz5zewW9w8tILRYtPja6wW9+/9ZLK4
 vGsOm8WM8/uYLBZMfsJqsWBbH6PF05mb2SzerX7CaHH8RCezg7DH71+TGD1m3T/L5rFz1l12
 j8Wb9rN5bDug6rFpVSebx/65a9g9Ni+p9+jbsorRo+/lBkaP9Vuusng0nWpn9fi8SS6AN0rP
 pii/tCRVISO/uMRWKdrQwkjP0NJCz8jEUs/Q2DzWyshUSd/OJiU1J7MstUjfLkEvY/XhzawF
 u1gqWm4/YWtgPM7cxcjJISFgIrFu7U4gm4tDSGApo8TH5WdYuxg5gBJSEivnpkPUCEv8udbF
 BlHzlFFiyeapYM1sAo4S/UtPsIIkRAQms0q82dPKBJJgFiiXaH34hBXEFhawkjj+qIEJZCiL
 gKpEwyM2kDCvgLXEo66DLBAL5CVmN56GigtKnJz5hAWknFlAXWL9PCGQML+AlsSapussENPl
 JZq3zmaewCgwC0nHLISOWUiqFjAyr2IUSS0tzk3PLTbUK07MLS7NS9dLzs/dxAiM9G3Hfm7e
 wXhpY/AhRgEORiUeXoOpe+OEWBPLiitzDzFKcDArifD6rd8dJ8SbklhZlVqUH19UmpNafIjR
 FOibicxSosn5wCSUVxJvaGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mDU6qB
 ken00bNaRVM4Ft4Rm/W65OIyfjcRm+sbJ9w6m83yz8wpsi8+VXr3bkE1ffZfF+4/7rm5/saz
 qbZeZbOXzF9/Jk7hi5zztlVbp/aYLVnlPanr386+tsU/73fMfmtV+9D/57bgfPnYeqWo9x/u
 xXT57DSadqH6YE20V37ilxpfS6/6zl82vNEd3kosxRmJhlrMRcWJAG2FeAMKAwAA
X-CMS-MailID: 20200514190737eucas1p18ccdddb185ea7611683a6859e17bc721
X-Msg-Generator: CA
X-RootMTR: 20200514190737eucas1p18ccdddb185ea7611683a6859e17bc721
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200514190737eucas1p18ccdddb185ea7611683a6859e17bc721
References: <CGME20200514190737eucas1p18ccdddb185ea7611683a6859e17bc721@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_120741_755490_399FD9A5 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHJuZyBzdHJ1Y3R1cmUgY29udGFpbnMgdGhlIHF1YWxpdHkgZmllbGQgd2hpY2ggdGVsbHMg
aG93IG1hbnkgYml0cwpvZiBlbnRyb3B5IGNhbiBiZSBvYnRhaW5lZCBmcm9tIDEwMjQgYml0cyBy
ZWFkIGZyb20gYSBkZXZpY2UuIFdpdGggdGhlCnF1YWxpdHkgdmFsdWUgc2V0IHRoZSBod19yYW5k
b20gZnJhbWV3b3JrIHN0YXJ0cyBhIGtlcm5lbCB0aHJlYWQgdG8gZmVlZAp0aGUgZW50cm9weSBw
b29sIGluIHRoZSBDUk5HLCB3aGljaCBoZWxwcyB0byBpbml0aWFsaXplIGl0IHF1aWNrbHkKZXNw
ZWNpYWxseSBkdXJpbmcgYm9vdC4KCsWBdWthc3ogU3RlbG1hY2ggKDIpOgogIGh3cm5nOiBpcHJv
Yy1ybmcyMDAgLSBTZXQgdGhlIHF1YWxpdHkgdmFsdWUKICBod3JuZzogZXh5bm9zIC0gU2V0IHRo
ZSBxdWFsaXR5IHZhbHVlCgogZHJpdmVycy9jaGFyL2h3X3JhbmRvbS9leHlub3MtdHJuZy5jICB8
IDEgKwogZHJpdmVycy9jaGFyL2h3X3JhbmRvbS9pcHJvYy1ybmcyMDAuYyB8IDEgKwogMiBmaWxl
cyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCi0tIAoyLjI1LjAKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
