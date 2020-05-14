Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A9C1D245A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 02:56:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wR2k6evSccMI/EBQc7XV5Hw7LhoNT44b8OALp+16F+k=; b=Kmrqva2E8/91Wi
	lmgRKfYrKZaWxlqCsI2aY7HdjK930SQ1BxyMjWJBiDSzFdQXPhKg7xzqwsUhCQUXk9moWWLyywJJ+
	j83/B1zVvm1qhWMU3+q4VkXX04JHjDzxyCpRZVqouAD6rF86E+ahcCPp8Qe0tCR6vH1h8y9Fjy451
	QQqWJRkLQqdo2xzRjqLv+kpvYwrA7dW0LpaajBFcf4gnzucbWP++k4Ki7Rb+npv+zo7/Wo5jaJG0J
	coorEXR9KzzMd0LT40OC0cF0+uyOP817cDSg05+Y01debQ8F9OFTNd6YkApOHweLXzQXQxnOxtK3W
	KZ9iK85TOHqsos7gNo+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ2AT-0005aL-7o; Thu, 14 May 2020 00:56:09 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ27h-00010y-A2
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 00:53:22 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200514005314epoutp03b8c7c6ac6217c0c753563a23ce160bcb~OvuGhS-gC0912309123epoutp03A
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 00:53:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200514005314epoutp03b8c7c6ac6217c0c753563a23ce160bcb~OvuGhS-gC0912309123epoutp03A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589417594;
 bh=YqesGE9QRWzbUFapaH4d6ciy/qj5O7BFUrBR3w8MJ14=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FKYAX0m9Tvqp4s7BdcJTpmIgfiecnNvYY08Pp/AR67U3VMy8TcPmFKHA3b55Tkrtn
 ba2oLhohiGNQIvFu2YgZ+L3U7XjNooBAFHSWKAdVyqDLN3ZipkSKUvx1FzF9S7x7fx
 UuCzeggHlHHR8sNwQP7mMDWgpxtpIJMGbjSV5rag=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200514005314epcas5p28eb25c6accaf5dd39326cde31db4bb50~OvuGCaOLN0273002730epcas5p2r;
 Thu, 14 May 2020 00:53:14 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 69.55.10010.A769CBE5; Thu, 14 May 2020 09:53:14 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200514005313epcas5p3eac58d00d9f617b860a3ac607c8413ec~OvuFpLUWX0947309473epcas5p3B;
 Thu, 14 May 2020 00:53:13 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200514005313epsmtrp177e6753c225f240c01eaf36bd25e8ff7~OvuFnUU461129711297epsmtrp1o;
 Thu, 14 May 2020 00:53:13 +0000 (GMT)
X-AuditID: b6c32a49-71fff7000000271a-2e-5ebc967ac2b5
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 C7.D3.18461.9769CBE5; Thu, 14 May 2020 09:53:13 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200514005311epsmtip2f8904f0fb29298daef612621d92c40f1~OvuDtJcps3258132581epsmtip2y;
 Thu, 14 May 2020 00:53:11 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v9 10/10] arm64: dts: Add node for ufs exynos7
Date: Thu, 14 May 2020 06:09:14 +0530
Message-Id: <20200514003914.26052-11-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514003914.26052-1-alim.akhtar@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrMKsWRmVeSWpSXmKPExsWy7bCmum7VtD1xBmd6uCwezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXxpLnbAVdEhXfj29ib2DcKNzFyMkhIWAiMWX/CZYuRi4OIYHdjBKTH/6Hcj4x
 SkxvP8YO4XxjlJi55g4jTMuEnXOgqvYySszvu8sE4bQwSZy43MMEUsUmoC1xd/oWMFtEQFji
 yLc2sG5mgRtMEg9WuoDYwgJ2EmdWbQCrYRFQlZi1Zz8riM0rYCvxvvUJE8Q2eYnVGw4wg9ic
 QPEtX45B1QhKnJz5hAViprxE89bZzCBHSAhs4ZBo/f+SFaLZRWLhvRVsELawxKvjW9ghbCmJ
 l/1tQDYHkJ0t0bPLGCJcI7F03jEWCNte4sAVkC85gOZrSqzfpQ+xik+i9zfIaSCdvBIdbUIQ
 1aoSze+uQnVKS0zs7oY6wENidsN7RkjwTGCU6HiymHECo/wsJB/MQvLBLIRtCxiZVzFKphYU
 56anFpsWGOallusVJ+YWl+al6yXn525iBKcrLc8djHcffNA7xMjEwXiIUYKDWUmE12/97jgh
 3pTEyqrUovz4otKc1OJDjNIcLErivKfTtsQJCaQnlqRmp6YWpBbBZJk4OKUamNoDL6jl/Ik/
 Jr6LdUlD0aTPtsl3dsWm/mQ48LAp4nT3douTVQ/Wy83W0s+LuLXo3YHwhYqydm9ndqntst32
 5CvXm9NlCpNTni0/M8+75JDYDTZun3rTK9UHl7zab/997RXWA7LPXe/o/p/wm3XuFP6kqf/f
 th7Ve+HmY2PUcSaiTang0UW+yLDpqTMenNEN4FNbxTvDOKLwR+rcLMOo7aHJRek+nd9TD4kr
 S7jOTTjyi+O3acsigR/HTafpLg29vjBUyK3kxjyX+3HfZJptrj1028E5T9af6V3bqs4S76g8
 LhHOd3JfFM47LP309ceGNM1LMybMv7H67z47tarpEsFRUW3l3OXsRq/Xah04J6zEUpyRaKjF
 XFScCACbxsGbxgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpnkeLIzCtJLcpLzFFi42LZdlhJXrdy2p44g6XvtS0ezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXxpLnbAVdEhXfj29ib2DcKNzFyMkhIWAiMWHnHBYQW0hgN6PE7jsxEHFpiesb
 J7BD2MISK/89B7K5gGqamCTeLZnKCJJgE9CWuDt9CxOILQJUdORbG1icWeAZk8Sph6UgtrCA
 ncSZVRvAalgEVCVm7dnPCmLzCthKvG99wgSxQF5i9YYDzCA2J1B8y5djrBAH2UgsW7OMEaJe
 UOLkzCdAh3IAzVeXWD9PCGKVvETz1tnMExgFZyGpmoVQNQtJ1QJG5lWMkqkFxbnpucWGBYZ5
 qeV6xYm5xaV56XrJ+bmbGMFxpaW5g3H7qg96hxiZOBgPMUpwMCuJ8Pqt3x0nxJuSWFmVWpQf
 X1Sak1p8iFGag0VJnPdG4cI4IYH0xJLU7NTUgtQimCwTB6dUA9ORxWrOy2IEFyXFTbQJK2QQ
 bd6rGCj1sVj7zEzZ5vdiVqd3PJEtMRArnu/gmPv4PGPEL+lXbtcf73IzqT9+rI9r06SACRm3
 +1eKN077I7iY89A/tY/LHzV0tHFoGAkm/PSOPmvWL5vKGjt54T9lYRnb7WZZAbNnblxhYZAv
 39Hzc5eTy5Oz05RdHrkqyh5y+LLP8X5l2goH5o7fE/p6znilMkWUzc0uShXYnvBCY5WW7cmb
 XBNWn/14uuz94fJVjal6T9bMaFnKe3DBsa119wU/eCx3FG8pK1e9ZuD1UuL32eCNzP0Svx15
 nZjL43p16/z6vv+5lfLkh8+eXfIKj1ZyCj/4uvuW4SK3PSfSFJRYijMSDbWYi4oTARjBggga
 AwAA
X-CMS-MailID: 20200514005313epcas5p3eac58d00d9f617b860a3ac607c8413ec
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200514005313epcas5p3eac58d00d9f617b860a3ac607c8413ec
References: <20200514003914.26052-1-alim.akhtar@samsung.com>
 <CGME20200514005313epcas5p3eac58d00d9f617b860a3ac607c8413ec@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_175317_920172_AB4C80ED 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

QWRkaW5nIGR0IG5vZGUgZm9lIFVGUyBhbmQgVUZTLVBIWSBmb3IgZXh5bm9zNyBTb0MuCgpTaWdu
ZWQtb2ZmLWJ5OiBBbGltIEFraHRhciA8YWxpbS5ha2h0YXJAc2Ftc3VuZy5jb20+ClRlc3RlZC1i
eTogUGF3ZcWCIENobWllbCA8cGF3ZWwubWlrb2xhai5jaG1pZWxAZ21haWwuY29tPgotLS0KIC4u
Li9ib290L2R0cy9leHlub3MvZXh5bm9zNy1lc3ByZXNzby5kdHMgICAgICB8ICA0ICsrCiBhcmNo
L2FybTY0L2Jvb3QvZHRzL2V4eW5vcy9leHlub3M3LmR0c2kgICAgICAgfCA0MyArKysrKysrKysr
KysrKysrKystCiAyIGZpbGVzIGNoYW5nZWQsIDQ1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9leHlub3MvZXh5bm9zNy1lc3By
ZXNzby5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2V4eW5vcy9leHlub3M3LWVzcHJlc3NvLmR0
cwppbmRleCA3YWYyODhmYTk0NzUuLjc5MGYxMmNhODk4MSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9leHlub3MvZXh5bm9zNy1lc3ByZXNzby5kdHMKKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9leHlub3MvZXh5bm9zNy1lc3ByZXNzby5kdHMKQEAgLTQwNiw2ICs0MDYsMTAgQEAK
IAl9OwogfTsKIAorJnVmcyB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKKwogJnVzYmRyZF9waHkg
ewogCXZidXMtc3VwcGx5ID0gPCZ1c2IzMF92YnVzX3JlZz47CiAJdmJ1cy1ib29zdC1zdXBwbHkg
PSA8JnVzYjNkcmRfYm9vc3RfNXY+OwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9l
eHlub3MvZXh5bm9zNy5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9leHlub3MvZXh5bm9zNy5k
dHNpCmluZGV4IDU1NTgwNDU2MzdhYy4uMzAwYWQ3MzI2ZWE4IDEwMDY0NAotLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL2V4eW5vcy9leHlub3M3LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9leHlub3MvZXh5bm9zNy5kdHNpCkBAIC0yMjAsOSArMjIwLDE0IEBACiAJCQkjY2xvY2stY2Vs
bHMgPSA8MT47CiAJCQljbG9ja3MgPSA8JmZpbl9wbGw+LCA8JmNsb2NrX3RvcDEgRE9VVF9BQ0xL
X0ZTWVMxXzIwMD4sCiAJCQkJIDwmY2xvY2tfdG9wMSBET1VUX1NDTEtfTU1DMD4sCi0JCQkJIDwm
Y2xvY2tfdG9wMSBET1VUX1NDTEtfTU1DMT47CisJCQkJIDwmY2xvY2tfdG9wMSBET1VUX1NDTEtf
TU1DMT4sCisJCQkJIDwmY2xvY2tfdG9wMSBET1VUX1NDTEtfVUZTVU5JUFJPMjA+LAorCQkJCSA8
JmNsb2NrX3RvcDEgRE9VVF9TQ0xLX1BIWV9GU1lTMT4sCisJCQkJIDwmY2xvY2tfdG9wMSBET1VU
X1NDTEtfUEhZX0ZTWVMxXzI2TT47CiAJCQljbG9jay1uYW1lcyA9ICJmaW5fcGxsIiwgImRvdXRf
YWNsa19mc3lzMV8yMDAiLAotCQkJCSAgICAgICJkb3V0X3NjbGtfbW1jMCIsICJkb3V0X3NjbGtf
bW1jMSI7CisJCQkJICAgICAgImRvdXRfc2Nsa19tbWMwIiwgImRvdXRfc2Nsa19tbWMxIiwKKwkJ
CQkgICAgICAiZG91dF9zY2xrX3Vmc3VuaXBybzIwIiwgImRvdXRfc2Nsa19waHlfZnN5czEiLAor
CQkJCSAgICAgICJkb3V0X3NjbGtfcGh5X2ZzeXMxXzI2bSI7CiAJCX07CiAKIAkJc2VyaWFsXzA6
IHNlcmlhbEAxMzYzMDAwMCB7CkBAIC02MDEsNiArNjA2LDQwIEBACiAJCQl9OwogCQl9OwogCisJ
CXVmczogdWZzQDE1NTcwMDAwIHsKKwkJCWNvbXBhdGlibGUgPSAic2Ftc3VuZyxleHlub3M3LXVm
cyI7CisJCQlyZWcgPSA8MHgxNTU3MDAwMCAweDEwMD4sICAvKiAwOiBIQ0kgc3RhbmRhcmQgKi8K
KwkJCQk8MHgxNTU3MDEwMCAweDEwMD4sICAvKiAxOiBWZW5kb3Igc3BlY2lmaWNlZCAqLworCQkJ
CTwweDE1NTcxMDAwIDB4MjAwPiwgIC8qIDI6IFVOSVBSTyAqLworCQkJCTwweDE1NTcyMDAwIDB4
MzAwPjsgIC8qIDM6IFVGUyBwcm90ZWN0b3IgKi8KKwkJCXJlZy1uYW1lcyA9ICJoY2kiLCAidnNf
aGNpIiwgInVuaXBybyIsICJ1ZnNwIjsKKwkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAyMDAgSVJR
X1RZUEVfTEVWRUxfSElHSD47CisJCQljbG9ja3MgPSA8JmNsb2NrX2ZzeXMxIEFDTEtfVUZTMjBf
TElOSz4sCisJCQkJPCZjbG9ja19mc3lzMSBTQ0xLX1VGU1VOSVBSTzIwX1VTRVI+OworCQkJY2xv
Y2stbmFtZXMgPSAiY29yZV9jbGsiLCAic2Nsa191bmlwcm9fbWFpbiI7CisJCQlmcmVxLXRhYmxl
LWh6ID0gPDAgMD4sIDwwIDA+OworCQkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwkJCXBp
bmN0cmwtMCA9IDwmdWZzX3JzdF9uICZ1ZnNfcmVmY2xrX291dD47CisJCQlwaHlzID0gPCZ1ZnNf
cGh5PjsKKwkJCXBoeS1uYW1lcyA9ICJ1ZnMtcGh5IjsKKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7
CisJCX07CisKKwkJdWZzX3BoeTogdWZzLXBoeUAxNTU3MTgwMCB7CisJCQljb21wYXRpYmxlID0g
InNhbXN1bmcsZXh5bm9zNy11ZnMtcGh5IjsKKwkJCXJlZyA9IDwweDE1NTcxODAwIDB4MjQwPjsK
KwkJCXJlZy1uYW1lcyA9ICJwaHktcG1hIjsKKwkJCXNhbXN1bmcscG11LXN5c2NvbiA9IDwmcG11
X3N5c3RlbV9jb250cm9sbGVyPjsKKwkJCSNwaHktY2VsbHMgPSA8MD47CisJCQljbG9ja3MgPSA8
JmNsb2NrX2ZzeXMxIFNDTEtfQ09NQk9fUEhZX0VNQkVEREVEXzI2TT4sCisJCQkJIDwmY2xvY2tf
ZnN5czEgUEhZQ0xLX1VGUzIwX1JYMV9TWU1CT0xfVVNFUj4sCisJCQkJIDwmY2xvY2tfZnN5czEg
UEhZQ0xLX1VGUzIwX1JYMF9TWU1CT0xfVVNFUj4sCisJCQkJIDwmY2xvY2tfZnN5czEgUEhZQ0xL
X1VGUzIwX1RYMF9TWU1CT0xfVVNFUj47CisJCQljbG9jay1uYW1lcyA9ICJyZWZfY2xrIiwgInJ4
MV9zeW1ib2xfY2xrIiwKKwkJCQkgICAgICAicngwX3N5bWJvbF9jbGsiLAorCQkJCSAgICAgICJ0
eDBfc3ltYm9sX2NsayI7CisJCX07CisKIAkJdXNiZHJkX3BoeTogcGh5QDE1NTAwMDAwIHsKIAkJ
CWNvbXBhdGlibGUgPSAic2Ftc3VuZyxleHlub3M3LXVzYmRyZC1waHkiOwogCQkJcmVnID0gPDB4
MTU1MDAwMDAgMHgxMDA+OwotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
