Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E04C11BF5DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 12:51:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=e6WhIBB+u1PH6xU0TXg/JSYNgSsUKfYeKtladnZr6FU=; b=N+HQomCrysaSe0
	sYH+DhcYql8umgSbVxOTBIktdbMIdQGh9zVvUG/ncYvNj4PckH70FOF/u5iK8HxImU3LZKPwV1xrL
	ZPwoJ2OyPPJ42UJtbH4u5Nn7EMk3luKfnyp5QOQYNo89PLZh5AV/zixq1sdtOyj6uK0Xvpnr1YrxA
	Vr537CYXVmN1Hm/rRnzUI/JczSyZ/wPrLVxud4sF52zNQ97dBWR7oH0gD6VXbhDefsdVyDRIkIzsV
	4sz2K4MziYEDE3+itrsX0tBzxb3N+OqlliLm75Llmz0aV6IwtmGsVeIPO5CofOCrRbIGM37Uxei8g
	eDl90wbDCDSUVnEcfXzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU6mS-0008Ni-6P; Thu, 30 Apr 2020 10:51:00 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU6mI-0008NC-Vk
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 10:50:52 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200430105048euoutp02b3b24bed1527b6f2b1fba103c12b4e4e~Kk12WgOtD1172111721euoutp02r
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 10:50:48 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200430105048euoutp02b3b24bed1527b6f2b1fba103c12b4e4e~Kk12WgOtD1172111721euoutp02r
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588243848;
 bh=veBGnH7xgInKo9nRc/IuDX3Fs+zFRVjRLtRoRyzy6II=;
 h=From:To:Cc:Subject:Date:References:From;
 b=A8RjApn9R7em9FqaWPbaMMP3dF0E3xVyI2rQpIIO8BfBrQia0y4v8raXjeS1dijPD
 ZbLKaf5/t52POrvVplGh5cCLc5pBhN9Ka1lyfQ0unx40VH/Li+xuzr0fQrGl3C3O7N
 zyOX0NqbAm3NMJ5Sv03q6cRS3O84yhZrXZuWIpws=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200430105048eucas1p1daf75c97dab178dd9e3aa46b483783f0~Kk12JRnhf2501225012eucas1p14;
 Thu, 30 Apr 2020 10:50:48 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 8C.D9.60698.88DAAAE5; Thu, 30
 Apr 2020 11:50:48 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200430105048eucas1p129975fe3fd84c4fd2b14117e3474b203~Kk110v5C80536305363eucas1p1s;
 Thu, 30 Apr 2020 10:50:48 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200430105048eusmtrp21306ce46205c837f07da8a3b9b5f96e6~Kk110Ld3e2294322943eusmtrp28;
 Thu, 30 Apr 2020 10:50:48 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-01-5eaaad8864d0
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id F7.D0.08375.88DAAAE5; Thu, 30
 Apr 2020 11:50:48 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200430105048eusmtip1b55b2459d9da86b9448bfb269235bd91~Kk11q5cyB0912709127eusmtip1D;
 Thu, 30 Apr 2020 10:50:48 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: kexec_file: print appropriate variable
Date: Thu, 30 Apr 2020 12:50:34 +0200
Message-Id: <20200430105034.17513-1-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFuplleLIzCtJLcpLzFFi42LZduznOd2OtaviDObvlLd4v6yH0eLmoRWM
 FpseX2O1uLxrDpvFy48nWBxYPdbMW8PosXlJvUffllWMHp83yQWwRHHZpKTmZJalFunbJXBl
 7Ljwmr3gDmtF27Q3jA2MH1m6GDk5JARMJOZe2wZkc3EICaxglDj/7QWU84VR4vHtG+wgVUIC
 nxklVm81g+nonXyPFaJoOaNE28VdzBDOc0aJrVNmMoFUsQk4SvQvPQFWJSIwg1Fi2sKJYKOY
 BewlJs76zwZiCwvYSezo7AOzWQRUJa6vfg7WzCtgLTH/xB1miHXyErMbT7NBxAUlTs58AnY4
 v4CWxJqm6ywQM+UlmrfOBrtCQuA3m8S1VbvZIJpdJLbMa2KEsIUlXh3fwg5hy0j83zkfaBkH
 kF0vMXmSGURvD6PEtjk/oCFjLXHn3C82kBpmAU2J9bv0IcKOEif71rNAtPJJ3HgrCHECn8Sk
 bdOZIcK8Eh1tQhDVKhLr+vdADZSS6H21ghGixEPi3NLqCYyKs5D8NQvJL7MQ1i5gZF7FKJ5a
 WpybnlpsnJdarlecmFtcmpeul5yfu4kRmEhO/zv+dQfjvj9JhxgFOBiVeHgnpK+ME2JNLCuu
 zD3EKMHBrCTC+zB2VZwQb0piZVVqUX58UWlOavEhRmkOFiVxXuNFL2OFBNITS1KzU1MLUotg
 skwcnFINjNP6H/EV8Tg2TYyZlJmk1qy0wGzJvIa5H6efv7g8NHX+jok1v0SNVdeIrHYvXv4g
 q2SG1UWLHvfSkuVbV4r4a+c4TGX9cvzXq/eB12on/1uVo6hupF5YMuVW1i/ZiyZ3PNl3FZ53
 3cxQtU0rbk/p3CUPlrY6xq111Itbtk4/+W8sk9pWvk62E0osxRmJhlrMRcWJAI+rcG0gAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpnkeLIzCtJLcpLzFFi42I5/e/4Xd2OtaviDBYv4rR4v6yH0eLmoRWM
 FpseX2O1uLxrDpvFy48nWBxYPdbMW8PosXlJvUffllWMHp83yQWwROnZFOWXlqQqZOQXl9gq
 RRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJalFunbJehl7Ljwmr3gDmtF27Q3jA2MH1m6
 GDk5JARMJHon32PtYuTiEBJYyihxtGMyUIIDKCElsXJuOkSNsMSfa11sEDVPGSVuHFnFBpJg
 E3CU6F96AqxZRGAWo8ScnbeZQBLMAvYSE2f9BysSFrCT2NHZB2azCKhKXF/9HKyGV8BaYv6J
 O8wQG+QlZjeeZoOIC0qcnPkE7AhmAXWJ9fOEQML8AloSa5qus0CMl5do3jqbeQIj0FKEjlkI
 HbOQVC1gZF7FKJJaWpybnltsqFecmFtcmpeul5yfu4kRGAnbjv3cvIPx0sbgQ4wCHIxKPLwW
 qSvjhFgTy4orcw8xSnAwK4nwPoxdFSfEm5JYWZValB9fVJqTWnyI0RTonYnMUqLJ+cAozSuJ
 NzQ1NLewNDQ3Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fEwSnVwKii7fRjqdSlSbU/lUTU
 nVq5eWxevv2Z4XphgtnqfumUJcJ/Px9Pc9QSfr3SaWZhipoP648nm7q0Ir/pM9yfZWPg4L39
 /dzXO8QDSu+uyYow1xFybWCYrfnJ83uNdO7rY3FPTjo+iNvwNKWEOa9P/JD2x8UaWRe2CEab
 Ojjdeqyxfet/p9rvr5RYijMSDbWYi4oTAbUcTMiaAgAA
X-CMS-MailID: 20200430105048eucas1p129975fe3fd84c4fd2b14117e3474b203
X-Msg-Generator: CA
X-RootMTR: 20200430105048eucas1p129975fe3fd84c4fd2b14117e3474b203
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200430105048eucas1p129975fe3fd84c4fd2b14117e3474b203
References: <CGME20200430105048eucas1p129975fe3fd84c4fd2b14117e3474b203@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_035051_224034_1316B160 
X-CRM114-Status: GOOD (  12.85  )
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
Cc: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rml4ZXM6IDQzMTIwNTc2ODE5MjkgKCJhcm02NDoga2V4ZWNfZmlsZTogbG9hZCBpbml0cmQgYW5k
IGRldmljZS10cmVlIikKU2lnbmVkLW9mZi1ieTogxYF1a2FzeiBTdGVsbWFjaCA8bC5zdGVsbWFj
aEBzYW1zdW5nLmNvbT4KLS0tCiBhcmNoL2FybTY0L2tlcm5lbC9tYWNoaW5lX2tleGVjX2ZpbGUu
YyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL21hY2hpbmVfa2V4ZWNfZmlsZS5jIGIvYXJj
aC9hcm02NC9rZXJuZWwvbWFjaGluZV9rZXhlY19maWxlLmMKaW5kZXggYjQwYzNiMGRlZjkyLi4y
Nzc2YmRhYTgzYTUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQva2VybmVsL21hY2hpbmVfa2V4ZWNf
ZmlsZS5jCisrKyBiL2FyY2gvYXJtNjQva2VybmVsL21hY2hpbmVfa2V4ZWNfZmlsZS5jCkBAIC0z
MzIsNyArMzMyLDcgQEAgaW50IGxvYWRfb3RoZXJfc2VnbWVudHMoc3RydWN0IGtpbWFnZSAqaW1h
Z2UsCiAJaW1hZ2UtPmFyY2guZHRiX21lbSA9IGtidWYubWVtOwogCiAJcHJfZGVidWcoIkxvYWRl
ZCBkdGIgYXQgMHglbHggYnVmc3o9MHglbHggbWVtc3o9MHglbHhcbiIsCi0JCQlrYnVmLm1lbSwg
ZHRiX2xlbiwgZHRiX2xlbik7CisJCQlrYnVmLm1lbSwgZHRiX2xlbiwga2J1Zi5tZW1zeik7CiAK
IAlyZXR1cm4gMDsKIAotLSAKMi4yNS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
