Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A17DF1CCF92
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 04:15:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DNJeWwjT5GYlO1gX+fypNBJgi6ThILec8fJV0MH2jsE=; b=SmJ++yJ7a37/Ao
	j46JYqxVKanN8R++1JhKYsvwTrAYUZ3mJ8xTa7CIs82lzr2sLzO0PstGKeRBOu9ObuX7Rk0xxsnnr
	Dr1NHFjZcIMLdEeI3KpYNfjLMXHg1O3wZQpLpzXnFMl8XwYmdpggaXEOC8zlb/ELpJ29JQaog2eDY
	6WGu6qxFXwawf1UiAiGKlupj2uaHQVH+AYqYfGsauqehHCZAWJF7NvQi30bb//z4jKkNPyfg3McdN
	HKoJIp4miljSERk0khTCkwOX+tohybocSChdMXJigxyBG6EW7i5doAncPOmhpkFweZburNWtD2Snb
	kntDjbDPcHi7HqmoDBqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXxym-0004bE-EJ; Mon, 11 May 2020 02:15:40 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXxxF-0002wT-2U
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 02:14:06 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200511021402epoutp010caf05baac2ddeaf3f09182a48c6a0dc~N14y4HjXp2361723617epoutp011
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 02:14:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200511021402epoutp010caf05baac2ddeaf3f09182a48c6a0dc~N14y4HjXp2361723617epoutp011
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589163242;
 bh=DDMCtAVCNOenQhQBx8fCmPqcdSKUIHqMO34BELtm7U8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PsSsNaRLvEqfs/aPUy6clgKBtiN9HqGjUyMacaxQ7e2ov2fhh66IiHaGf458gwX1N
 kKl3EpWv+mekeDU5uWgemZcu6087tM2vAoh4ESZHgMsNAUub+0G3lgwliLeoNbYo3Y
 biHUyVYJVhS56WBuGaLc2TCbjksq5OgqObVri4Jw=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200511021402epcas5p1c80ab5279772b7eceb4f0e67c488ad97~N14yj3qY61717717177epcas5p1l;
 Mon, 11 May 2020 02:14:02 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 74.C5.10010.AE4B8BE5; Mon, 11 May 2020 11:14:02 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200511021401epcas5p3b86ec5772ad700736eba6472e1fce8f6~N14x1Vfab1506415064epcas5p3Y;
 Mon, 11 May 2020 02:14:01 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200511021401epsmtrp1113f2a9df789233e02eb4520c15ca9d8~N14xyitFi0628006280epsmtrp1c;
 Mon, 11 May 2020 02:14:01 +0000 (GMT)
X-AuditID: b6c32a49-735ff7000000271a-91-5eb8b4ea14a5
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 E3.64.25866.9E4B8BE5; Mon, 11 May 2020 11:14:01 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200511021359epsmtip24cae2f65c2139bb5ef13ca192ba52d0c~N14vs5dhD0185501855epsmtip2S;
 Mon, 11 May 2020 02:13:59 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v8 06/10] dt-bindings: phy: Document Samsung UFS PHY bindings
Date: Mon, 11 May 2020 07:30:27 +0530
Message-Id: <20200511020031.25730-7-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511020031.25730-1-alim.akhtar@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrEKsWRmVeSWpSXmKPExsWy7bCmpu6rLTviDJrfy1o8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujF99+xkLLohWtMw6z97AeE2gi5GTQ0LARGLBgx0sILaQwG5GiasLfLoYuYDs
 T4wSzRd/sUE4nxklPnfuYIbpOPHoOTtEYhejxLKzv1ggnBYmiQOXb7GBVLEJaEvcnb6FCcQW
 ERCWOPKtjRHEZha4wSTxYKULiC0s4C/x+eUasN0sAqoSn/4fZAexeQVsJH40HmCF2CYvsXrD
 AbDNnAK2EtMatrNA1AhKnJz5hAViprxE89bZzCBHSAjs4ZA4fv4UG0Szi8S8p2+gzhaWeHV8
 CzuELSXxsr8NyOYAsrMlenYZQ4RrJJbOO8YCYdtLHLgyhwWkhFlAU2L9Ln2IVXwSvb+fMEF0
 8kp0tAlBVKtKNL+7CtUpLTGxu5sVosRD4tLJekjoTGCUWP/hCesERvlZSB6YheSBWQjLFjAy
 r2KUTC0ozk1PLTYtMMxLLdcrTswtLs1L10vOz93ECE5WWp47GO8++KB3iJGJg/EQowQHs5II
 7/LcHXFCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeU+nbYkTEkhPLEnNTk0tSC2CyTJxcEo1MHG8
 du4/8y1p0urzRnzXXkhf+t+95ertHmsBn//rL3ee3dTKOiVJNuX+lA4WNc3lvobsCavT5FdJ
 ZP8t9f7a/uzF5xzGL+9V7211Wmu72u6DrdJipV45hoQ7e0wU+5YqP5xiWZaoW6BrkjNZf7JC
 m+ydM83/mu4e2smeFnCghr30+FL1j6a1bAcEjKLPbFz3TWH66yNJW94LJ74R5/jyk9mynP2c
 walpl7u5ItNcsu6fazh8dUnHfFZBq8NsjSXtTKemJjC7bPn0OOLSgfIrye1+vn4f/q9vi2rd
 PHXNNzlXxdVPHP0DXpYeC33dyuz7otT0nZaeC/fZI7ZyD/bM3tcX437U2qukOs+Qb1VLnBJL
 cUaioRZzUXEiAARVaGvFAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgkeLIzCtJLcpLzFFi42LZdlhJXvfllh1xBtN7tSwezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXxq++/YwFF0QrWmadZ29gvCbQxcjJISFgInHi0XP2LkYuDiGBHYwSG2deY4ZI
 SEtc3ziBHcIWllj5D6aoiUli5YdnrCAJNgFtibvTtzCB2CJARUe+tTGC2MwCz5gkTj0s7WLk
 4BAW8JX42iENEmYRUJX49P8g2ExeARuJH40HWCHmy0us3nAAbC+ngK3EtIbtLCC2EFDNjE2b
 WSHqBSVOznzCAjKSWUBdYv08IYhN8hLNW2czT2AUnIWkahZC1SwkVQsYmVcxSqYWFOem5xYb
 FhjlpZbrFSfmFpfmpesl5+duYgRHlpbWDsY9qz7oHWJk4mA8xCjBwawkwrs8d0ecEG9KYmVV
 alF+fFFpTmrxIUZpDhYlcd6vsxbGCQmkJ5akZqemFqQWwWSZODilGpgOP/yn8L1ivup6xSvP
 re9fNv9Vc2yixgPfWZ7Pb95w/WanmPQ2qb/sw+/rpf8vO0VWdF5Tzqu/9IXL7uZRmzTrBAOe
 tXMlrK5MzDpra6PZVSv8cU9uRL1Jy9Ut6yW9efbJ5OTPdZPNsPvmOGXzzcxvLmnNoraz/xw2
 81ofHRZmpz/J0FbpwRyZxVO2PKk0eBF+IFcwaGk98/MXkmu+sO/q15ya8TFl+hmb1N2NbL9K
 U59r+6+0CGm9t7hHQjvh2sUbn76sdtpx/dJ6ps7tE5g3Gchd09fcE7JvvzS7kHZC5k6dpFLm
 ZekTdvoHL1PiaPzxRlvmzLxjjDHib4ymuzq05Zj8k+RuyE31eJrYGKPEUpyRaKjFXFScCABa
 JaKMGwMAAA==
X-CMS-MailID: 20200511021401epcas5p3b86ec5772ad700736eba6472e1fce8f6
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200511021401epcas5p3b86ec5772ad700736eba6472e1fce8f6
References: <20200511020031.25730-1-alim.akhtar@samsung.com>
 <CGME20200511021401epcas5p3b86ec5772ad700736eba6472e1fce8f6@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_191405_333715_445C3855 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org,
 Alim Akhtar <alim.akhtar@samsung.com>, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBkb2N1bWVudHMgU2Ftc3VuZyBVRlMgUEhZIGRldmljZSB0cmVlIGJpbmRpbmdz
CgpSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KU2lnbmVkLW9mZi1i
eTogQWxpbSBBa2h0YXIgPGFsaW0uYWtodGFyQHNhbXN1bmcuY29tPgpUZXN0ZWQtYnk6IFBhd2XF
giBDaG1pZWwgPHBhd2VsLm1pa29sYWouY2htaWVsQGdtYWlsLmNvbT4KLS0tCiAuLi4vYmluZGlu
Z3MvcGh5L3NhbXN1bmcsdWZzLXBoeS55YW1sICAgICAgICAgfCA3NSArKysrKysrKysrKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgNzUgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1ZnMtcGh5Lnlh
bWwKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Nh
bXN1bmcsdWZzLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS9zYW1zdW5nLHVmcy1waHkueWFtbApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAw
MDAwMDAuLjYzNmNjNTAxYjU0ZgotLS0gL2Rldi9udWxsCisrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1ZnMtcGh5LnlhbWwKQEAgLTAsMCArMSw3NSBA
QAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVz
ZQorJVlBTUwgMS4yCistLS0KKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcGh5
L3NhbXN1bmcsdWZzLXBoeS55YW1sIworJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21l
dGEtc2NoZW1hcy9jb3JlLnlhbWwjCisKK3RpdGxlOiBTYW1zdW5nIFNvQyBzZXJpZXMgVUZTIFBI
WSBEZXZpY2UgVHJlZSBCaW5kaW5ncworCittYWludGFpbmVyczoKKyAgLSBBbGltIEFraHRhciA8
YWxpbS5ha2h0YXJAc2Ftc3VuZy5jb20+CisKK3Byb3BlcnRpZXM6CisgICIjcGh5LWNlbGxzIjoK
KyAgICBjb25zdDogMAorCisgIGNvbXBhdGlibGU6CisgICAgZW51bToKKyAgICAgIC0gc2Ftc3Vu
ZyxleHlub3M3LXVmcy1waHkKKworICByZWc6CisgICAgbWF4SXRlbXM6IDEKKworICByZWctbmFt
ZXM6CisgICAgaXRlbXM6CisgICAgICAtIGNvbnN0OiBwaHktcG1hCisKKyAgY2xvY2tzOgorICAg
IGl0ZW1zOgorICAgICAgLSBkZXNjcmlwdGlvbjogUExMIHJlZmVyZW5jZSBjbG9jaworICAgICAg
LSBkZXNjcmlwdGlvbjogc3ltYm9sIGNsb2NrIGZvciBpbnB1dCBzeW1ib2wgKCByeDAtY2gwIHN5
bWJvbCBjbG9jaykKKyAgICAgIC0gZGVzY3JpcHRpb246IHN5bWJvbCBjbG9jayBmb3IgaW5wdXQg
c3ltYm9sICggcngxLWNoMSBzeW1ib2wgY2xvY2spCisgICAgICAtIGRlc2NyaXB0aW9uOiBzeW1i
b2wgY2xvY2sgZm9yIG91dHB1dCBzeW1ib2wgKCB0eDAgc3ltYm9sIGNsb2NrKQorCisgIGNsb2Nr
LW5hbWVzOgorICAgIGl0ZW1zOgorICAgICAgLSBjb25zdDogcmVmX2NsaworICAgICAgLSBjb25z
dDogcngxX3N5bWJvbF9jbGsKKyAgICAgIC0gY29uc3Q6IHJ4MF9zeW1ib2xfY2xrCisgICAgICAt
IGNvbnN0OiB0eDBfc3ltYm9sX2NsaworCisgIHNhbXN1bmcscG11LXN5c2NvbjoKKyAgICAkcmVm
OiAnL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZScKKyAgICBkZXNjcmlw
dGlvbjogcGhhbmRsZSBmb3IgUE1VIHN5c3RlbSBjb250cm9sbGVyIGludGVyZmFjZSwgdXNlZCB0
bworICAgICAgICAgICAgICAgICBjb250cm9sIHBtdSByZWdpc3RlcnMgYml0cyBmb3IgdWZzIG0t
cGh5CisKK3JlcXVpcmVkOgorICAtICIjcGh5LWNlbGxzIgorICAtIGNvbXBhdGlibGUKKyAgLSBy
ZWcKKyAgLSByZWctbmFtZXMKKyAgLSBjbG9ja3MKKyAgLSBjbG9jay1uYW1lcworICAtIHNhbXN1
bmcscG11LXN5c2NvbgorCithZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKKworZXhhbXBsZXM6
CisgIC0gfAorICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9leHlub3M3LWNsay5oPgor
CisgICAgdWZzX3BoeTogdWZzLXBoeUAxNTU3MTgwMCB7CisgICAgICAgIGNvbXBhdGlibGUgPSAi
c2Ftc3VuZyxleHlub3M3LXVmcy1waHkiOworICAgICAgICByZWcgPSA8MHgxNTU3MTgwMCAweDI0
MD47CisgICAgICAgIHJlZy1uYW1lcyA9ICJwaHktcG1hIjsKKyAgICAgICAgc2Ftc3VuZyxwbXUt
c3lzY29uID0gPCZwbXVfc3lzdGVtX2NvbnRyb2xsZXI+OworICAgICAgICAjcGh5LWNlbGxzID0g
PDA+OworICAgICAgICBjbG9ja3MgPSA8JmNsb2NrX2ZzeXMxIFNDTEtfQ09NQk9fUEhZX0VNQkVE
REVEXzI2TT4sCisgICAgICAgICAgICAgICAgIDwmY2xvY2tfZnN5czEgUEhZQ0xLX1VGUzIwX1JY
MV9TWU1CT0xfVVNFUj4sCisgICAgICAgICAgICAgICAgIDwmY2xvY2tfZnN5czEgUEhZQ0xLX1VG
UzIwX1JYMF9TWU1CT0xfVVNFUj4sCisgICAgICAgICAgICAgICAgIDwmY2xvY2tfZnN5czEgUEhZ
Q0xLX1VGUzIwX1RYMF9TWU1CT0xfVVNFUj47CisgICAgICAgIGNsb2NrLW5hbWVzID0gInJlZl9j
bGsiLCAicngxX3N5bWJvbF9jbGsiLAorICAgICAgICAgICAgICAgICAgICAgICJyeDBfc3ltYm9s
X2NsayIsICJ0eDBfc3ltYm9sX2NsayI7CisKKyAgICB9OworLi4uCi0tIAoyLjE3LjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
