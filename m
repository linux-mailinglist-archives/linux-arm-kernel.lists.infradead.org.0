Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D1C1E5324
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 03:35:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DNJeWwjT5GYlO1gX+fypNBJgi6ThILec8fJV0MH2jsE=; b=EM5lAW5Jn7q0ZH
	cVixxzckNSQpBOpMoxPmkgxK4yPeoW9+mFt8O1F6Q/s1YeJgbpz8rq4k04/Nrgxvx+gCdyAZozb57
	b2Bjr1P/pL/Y3VIkpfQHElOayVQNfmaUDzojioZ1WZQiYjv9n+Js8sFzgwwPBlA8jmUNy7n1ssSzg
	o8JUMYXHO18DOXYrleNYEG0vQlKpQAXALBabeDeTN6kwwNFJn6tI5/X9ZelbUtYFUpJ14wMUL+7O0
	aYWvLV2C3Xk9LWUTkA946vfkwTlWZQwCbtc4FHG1VLUHN2MXsKP7orZFtZdlGXRlFpCeAw4xmMK8S
	l/rRs+c5AXtD3XBoo3ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je7SE-0004xO-AP; Thu, 28 May 2020 01:35:30 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je7PZ-0003La-E9
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 01:32:48 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200528013237epoutp030fbef885da0dabf1f00b1702f23748b9~TDSeytH3r0284902849epoutp03R
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 01:32:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200528013237epoutp030fbef885da0dabf1f00b1702f23748b9~TDSeytH3r0284902849epoutp03R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590629557;
 bh=DDMCtAVCNOenQhQBx8fCmPqcdSKUIHqMO34BELtm7U8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uq14pIJPtuXOiBc7TNBrdOXS6i+FaNSVrYff9oL9jWh9lsOZAIMuKVUvIg61y7b2/
 VO+SEOQZiidtnaNysCZdru9CXn4kCwTphO8phsHL8b5sl+mTIlXeNdNsgo5Bnzusc3
 oCGWlXc4TxffSXOtwpm9lfhH3Y/EmMQGoIBmUsDQ=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200528013237epcas5p1d33a8234758f29086468dd2ebb10be8b~TDSeV0TKm1882918829epcas5p18;
 Thu, 28 May 2020 01:32:37 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 E5.10.09467.4B41FCE5; Thu, 28 May 2020 10:32:36 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200528013236epcas5p3cc936778eabd07450fbb7f03a17fe757~TDSdydN1D1669516695epcas5p37;
 Thu, 28 May 2020 01:32:36 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200528013236epsmtrp216d36acb80b09950b9885cd305b49901~TDSdxkZLP2193121931epsmtrp2J;
 Thu, 28 May 2020 01:32:36 +0000 (GMT)
X-AuditID: b6c32a49-a3fff700000024fb-35-5ecf14b4874b
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 1D.77.08303.4B41FCE5; Thu, 28 May 2020 10:32:36 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200528013234epsmtip1e3fd93dcfdee5a19216a2deb6e262e03~TDSb5uWHK1672616726epsmtip1P;
 Thu, 28 May 2020 01:32:34 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v10 06/10] dt-bindings: phy: Document Samsung UFS PHY bindings
Date: Thu, 28 May 2020 06:46:54 +0530
Message-Id: <20200528011658.71590-7-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528011658.71590-1-alim.akhtar@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrEKsWRmVeSWpSXmKPExsWy7bCmuu4WkfNxBpcOWVs8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujF99+xkLLohWtMw6z97AeE2gi5GTQ0LARGLPnp+sXYxcHEICuxklFv95yQLh
 fGKUWDnhEpTzmVFi86fV7DAtPecmMEEkdjFKnHx/jg3CaWGSuHPjDQtIFZuAtsTd6VuYQGwR
 AWGJI9/aGEFsZoEbTBIPVrqA2MICARIH/01mBrFZBFQlzr74D1bPK2AjceXCNGaIbfISqzcc
 ALI5ODgFbCX2TnCAKBGUODnzCQvESHmJ5q2zmUFukBDYwyFx7XAD1KUuEqf/f2CBsIUlXh3f
 AhWXkvj8bi8byEwJgWyJnl3GEOEaiaXzjkGV20scuDKHBaSEWUBTYv0ufYhVfBK9v58wQXTy
 SnS0CUFUq0o0v7sK1SktMbG7mxXC9pC4ef432CNCAhMYJZpXuUxglJ+F5IFZSB6YhbBsASPz
 KkbJ1ILi3PTUYtMCw7zUcr3ixNzi0rx0veT83E2M4GSl5bmD8e6DD3qHGJk4GA8xSnAwK4nw
 Op09HSfEm5JYWZValB9fVJqTWnyIUZqDRUmcV+nHmTghgfTEktTs1NSC1CKYLBMHp1QDE/+k
 J1Oz++t/lrUJ863SfLDKyb9e/vh0QcfwzOlmOyvn7CpdGbft6/3iJ5JzgmtmzGQwdo65u1lC
 ynVzgDy3Qlds9tnnrL8FFHuld3y3VkmLeswwIWPDJ8YFOl5PTY5w3XlqU173Rabl6Qw3H2Hd
 tf4fdr6V1Z9Qv6fU0rinLkjv7KHJXDJhnW9cdmeavtFwOZZzX/N7yob57UlRxoqp/LdE5s2a
 8Eu7+UNet8CCl1oZaa98lmzs/B6xZ5Vfx7es1k1aG89o/a91/HYv3e9slY3rdWnzDXs05jCw
 qIvlnYl82NJ/zkF4me5J19KVKZuuyMzgOn26O8H/wbrdr6/v7YoVylZ1K36SeCm0X6hCiaU4
 I9FQi7moOBEA+Wnk08UDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgkeLIzCtJLcpLzFFi42LZdlhJTneLyPk4g6fnhS0ezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXxq++/YwFF0QrWmadZ29gvCbQxcjJISFgItFzbgJTFyMXh5DADkaJrce+s0Ek
 pCWub5zADmELS6z895wdoqiJSWLB3G8sIAk2AW2Ju9O3MIHYIkBFR761MYLYzALPmCROPSwF
 sYUF/CQ2LHkCNohFQFXi7Iv/YPW8AjYSVy5MY4ZYIC+xesMBIJuDg1PAVmLvBAeQsBBQyYRV
 exkhygUlTs58wgJSwiygLrF+nhDEJnmJ5q2zmScwCs5CUjULoWoWkqoFjMyrGCVTC4pz03OL
 DQuM8lLL9YoTc4tL89L1kvNzNzGCI0tLawfjnlUf9A4xMnEwHmKU4GBWEuF1Ons6Tog3JbGy
 KrUoP76oNCe1+BCjNAeLkjjv11kL44QE0hNLUrNTUwtSi2CyTBycUg1MJwX/+pkx6f7/ZtbE
 cXVS+YTi7BYzg5NyD5e4eUgqG9z+u8ylbf2sZXGJS2ryQv4sn3VZbUbQ8yPSLOf3XEr7+WLF
 ra87eLdEXM367zbljPOf+YItk60in5x2+PVg6Tb1HEt3rlOSkt821uzeN61W2Ksk9ugEg3lF
 OyyjVgnHh+0zW1qwwtBDgSXybk2LttKuGxse/Qg5abbGmN1f9pRfbE72dwfeGf94MyqFSxy2
 V7Z0ra+6uvTabedZ7HMfz2s9+KUssTjTO3vTz/msEyqNjZ0fWEftOnewwSyEoYmhb2prMnNW
 pHCd1LZ3f6+bH02Zyy++87FXrgtrcMsykWVtomlaHhHG7vtWPOI0MlynxFKckWioxVxUnAgA
 vtjbTBsDAAA=
X-CMS-MailID: 20200528013236epcas5p3cc936778eabd07450fbb7f03a17fe757
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200528013236epcas5p3cc936778eabd07450fbb7f03a17fe757
References: <20200528011658.71590-1-alim.akhtar@samsung.com>
 <CGME20200528013236epcas5p3cc936778eabd07450fbb7f03a17fe757@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_183245_685047_08CA3430 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
