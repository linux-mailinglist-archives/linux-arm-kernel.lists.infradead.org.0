Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1D5E8747
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 12:37:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nvsp857SsNsSQ8KUUgFLug5eBqVzIB/EtrJzBmYU7k=; b=JkfMFNyAYh9xkl
	WPojm/EcvKAJGZXI+MVG2tHtsmWuTCcHgdq3Ivpiy1jn5BqmxRSR9rZc5lwyDDKrN5IYqe5mIfy4V
	mQCHLzv+Ob0r2JUM01y5KYlkVIT7UXj/0wApND5xAzkMrDQFciZVPdBh6ZXL0hb+RHabvoK0TzED4
	ObqtbTjkmQGq3bmU9knBgmcoYLMyGBkk1dN5h+n0YhEsdbX5BQ0KQAhcBijncC2fZ/PrbZqO2QHe6
	UGB4N92EZiwvYzCw57DbCxMSMfmTpa2dhiwqqod2vwNGwSA6pggQmc3CwgXDbzaXRa6XyMkjhypGV
	u6K07jsITeFrR5y7N4Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPoh-0006LD-0t; Tue, 29 Oct 2019 11:37:39 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPoV-0006KR-N5
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 11:37:29 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191029113725euoutp02fa898151860da497da38758343764a36~SGyBZf9v43178631786euoutp02U
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 11:37:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191029113725euoutp02fa898151860da497da38758343764a36~SGyBZf9v43178631786euoutp02U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1572349045;
 bh=MV9FXID7nThRVDKuFUHFACJIlbCzkHrjaJu5Zhz/fsY=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=YCyJN6qQEllQY1S8GqZsldUqkJIBv3clfupk3Ug2kvQVpQUi8UBE/50zejCjMc4o8
 8L44j9Sw5WBiNRLpJQiyQSDlf0KsmTyXtNUqlIEm9v8hCXCCGtyjo7/Hfv73N1sRe8
 EUinASYPq77FHo5zOAcxuVgtM1DbymYCtVWKDLPA=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191029113725eucas1p26abe0e7d7dda56b3e7bbdfdce3434288~SGyBJlTFm2560525605eucas1p25;
 Tue, 29 Oct 2019 11:37:25 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id BC.28.04309.57428BD5; Tue, 29
 Oct 2019 11:37:25 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191029113725eucas1p1a6e7ba2329ed3d4fdd16cf39fdb286b7~SGyA4Ow142425024250eucas1p1c;
 Tue, 29 Oct 2019 11:37:25 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191029113725eusmtrp23541ca0c5609b89b6c685a7655433515~SGyA3jjIp2216522165eusmtrp2N;
 Tue, 29 Oct 2019 11:37:25 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-f7-5db824752e33
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id CE.37.04117.47428BD5; Tue, 29
 Oct 2019 11:37:25 +0000 (GMT)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191029113724eusmtip28f08b0bb87ec7ba1856511b3ee5baead~SGyAU99Wh1898918989eusmtip2K;
 Tue, 29 Oct 2019 11:37:24 +0000 (GMT)
Subject: Re: [PATCH] clk: samsung: exynos5433: Add missing slab.h header for
 kfree()
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <448c0770-24a2-6227-24e8-9bd5ad926f5e@samsung.com>
Date: Tue, 29 Oct 2019 12:37:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191023160000.409-1-krzk@kernel.org>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA01SaUhUURjtvmXmqY1cR80P22AwzEAnrR+vBclImD9BEJQUYk99qOTGPJdM
 Sk3N3BcCc1RSDM0RXCY190CrsdyQKRWlMhVMw9QcEfd0npL/zjnfOdxz4DKkvJu2Z4JCI3h1
 KBeskJhTjR9X+50jHZq8zzZ32bLDxmmazZ78TbIDA7VSVjc5RLOLGd9p1tBSJGFfDHQQ7Gzi
 hIQd/OzJbg3VUay2ZQNdsVDNjyRLVc2ab1JVWdsModJpUyWqN6/iVFn1WqRa0p24Ib1jftmf
 Dw6K4tVK93vmgcXlP6XhufSD3MoUFI8qqDRkxgA+DwvjSWQaMmfk+DWC9j4jEokRQcNsPCGS
 JQQ1a8VoP9LeUU2JhwoEjfljtEjmEKS+LSd2Xdb4FvQu9JsSNtgJhjdXTCYSzxDwV59O7x4k
 2BUyP2SZTDLsDoWzXaYwhU/B+1rDjs4wttgLepY50WIFnwqmTMXN8DlYn04wRUlsB0+MlbSI
 T0JiQ6FpEOBRKbSlLe/VvgbPSzdoEVvDrL5eKuJjsN38khADiQgyWsekIslB8ENfspe+BF36
 QXq3Ebkzp6ZFKcoesJC5KNmVAVvCyJyVWMIS8hrzSVGWwbOnctHtAOvafELE9pA+tU3lIIXm
 wDTNgTmaA3M0/98tQZQW2fGRQkgAL7iF8tEuAhciRIYGuPiFhejQzv/q2dIbm1DLhm8nwgxS
 HJb9+troLae5KCEmpBMBQypsZIO9O5LMn4t5yKvDfNSRwbzQiY4ylMJOFnto/K4cB3AR/H2e
 D+fV+1eCMbOPR48cLYr63AxXi/Nmln09ozkLbx+v4LRkXNVvkHnQpQldf7xWlF+q1zq3PJM2
 312vDntMR6Tks91xZUom1a+ntfLiba95/WnDSGrmEb/kuOPCBYJpK2hQdrzKscyrumnXVmfM
 K/TOxoRjTEPQcmu5p9Oom2+uYiJWt004O67SCkoI5FzPkGqB+wdPjvHIWwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrFIsWRmVeSWpSXmKPExsVy+t/xe7qlKjtiDR4vY7K4/uU5q0X/49fM
 FufPb2C32PT4GqvFx557rBaXd81hs5hxfh+TxavmR2wWF0+5Wvy7tpHFYtWuP4wO3B7vb7Sy
 e+ycdZfdY/Gel0wem1Z1snlsXlLv0bdlFaPH501yAexRejZF+aUlqQoZ+cUltkrRhhZGeoaW
 FnpGJpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJehlzlz1kL5jIWjFxZTtjA+Nyli5GTg4JAROJ
 vfvWAdlcHEICSxklvmw4ydTFyAGUkJKY36IEUSMs8edaFxtEzWtGiYvr5oE1CwuESZz5cI4R
 xBYR0JS4/vc7K0gRs8BLJomPe85DdbQxStzrmMIEUsUmYCjRe7QPrINXwE5i9qvDYHEWAVWJ
 Ixsug8VFBSIknm+/AVUjKHFy5hOwbZwCxhK/nzeCxZkF1CX+zLvEDGGLSzR9WckKYctLNG+d
 zTyBUWgWkvZZSFpmIWmZhaRlASPLKkaR1NLi3PTcYiO94sTc4tK8dL3k/NxNjMB43Xbs55Yd
 jF3vgg8xCnAwKvHwvri6LVaINbGsuDL3EKMEB7OSCO/FM0Ah3pTEyqrUovz4otKc1OJDjKZA
 z01klhJNzgemkrySeENTQ3MLS0NzY3NjMwslcd4OgYMxQgLpiSWp2ampBalFMH1MHJxSDYwm
 JxJDN8z953N2ppSt0FaGZ+uzGe8873geZHvvroTouuu/r0481uF4R+PB//M3Zyid1b8umLZH
 slTEa2vXOqV/VsHPBLmPzlaZriEYfWErN1s00175+cd0368TEA8sNeSpqtw5e39npsz0CUnl
 nAcWTPtx1Tdzx9faI/vu7bD89/Nvqc0Hxcz9SizFGYmGWsxFxYkApz0MaO0CAAA=
X-CMS-MailID: 20191029113725eucas1p1a6e7ba2329ed3d4fdd16cf39fdb286b7
X-Msg-Generator: CA
X-RootMTR: 20191023160027epcas4p15be9c72d575fa4c3b022551c32cfc59a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191023160027epcas4p15be9c72d575fa4c3b022551c32cfc59a
References: <CGME20191023160027epcas4p15be9c72d575fa4c3b022551c32cfc59a@epcas4p1.samsung.com>
 <20191023160000.409-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_043727_955679_7CFF1337 
X-CRM114-Status: GOOD (  11.83  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, kbuild test robot <lkp@intel.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, linux-kernel@vger.kernel.org,
 Chanwoo Choi <cw00.choi@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMjMvMTkgMTg6MDAsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gVXNhZ2Ugb2Yg
a2ZyZWUoKSByZXF1aXJlcyBzbGFiLmggaGVhZGVyLiAgT3RoZXJ3aXNlIGJ1aWxkaW5nIG9uIHg4
Nl82NAo+IHdpdGggQ09NUElMRV9URVNUIGZhaWxzIHdpdGg6Cj4gCj4gICAgIGRyaXZlcnMvY2xr
L3NhbXN1bmcvY2xrLWV4eW5vczU0MzMuYzogSW4gZnVuY3Rpb24g4oCYZXh5bm9zNTQzM19jbXVf
cHJvYmXigJk6Cj4gICAgIGRyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MzMuYzo1NTk4
OjQ6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiAKPiBvZiBmdW5jdGlvbiDigJhrZnJlZeKA
mTsgZGlkIHlvdSBtZWFuIOKAmHZmcmVl4oCZPyBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1k
ZWNsYXJhdGlvbl0KPiAKPiBSZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBpbnRl
bC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwu
b3JnPgoKVGhhbmtzLCBJIGFwcGxpZWQgaXQgYW5kIHNxdWFzaGVkIHdpdGggdGhlIGZpeCBwYXRj
aCBmcm9tIE1hcmVrIHRoYXQKaW50cm9kdWNlZCB0aGUgYWJvdmUgaXNzdWUuCgotLSAKUmVnYXJk
cywKU3lsd2VzdGVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
