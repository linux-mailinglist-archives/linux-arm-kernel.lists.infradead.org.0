Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E7B1F80AD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 05:07:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wR2k6evSccMI/EBQc7XV5Hw7LhoNT44b8OALp+16F+k=; b=miJm1rjy/11YSW
	XH26uP1neDifJjF0fFZP88I9VCB7I3W8YZvaXXdiaf/de17uNIGIHQlzgJZhjUK1G/038xRAJkogk
	ays7N4uYWSIolHMgS3P3e0KAubSCGM5PTKZo6YEWtv4/SK6f/fDoHSOsLcJnfY7D3k/KVmjU22152
	5AfDK5YlNWcUIwT7/BnGA7XxswpHjkOQGCNqYEWDoWqxLTme8BxOcY43SQEWgqGw6QQOxWtrz8trN
	f2XiL3wxJhlm7GoqjZu71HDU+JC4OFQIBCCzUPKHiURiaKI9+2LicUeZb/2SYbats3u9ljBg9JU3q
	q+PzHr8urYBDvfcLKqBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjwW6-0005px-76; Sat, 13 Jun 2020 03:07:34 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjwTd-0001XL-11
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 03:05:03 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200613030459epoutp026aafffa52571d942c9666f8637f917d2~X_3sCsxpH2746227462epoutp02u
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 03:04:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200613030459epoutp026aafffa52571d942c9666f8637f917d2~X_3sCsxpH2746227462epoutp02u
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592017499;
 bh=YqesGE9QRWzbUFapaH4d6ciy/qj5O7BFUrBR3w8MJ14=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZEDK2gbrAIoM48Ca213OVKtM6LxqS5pOHZfh6nwsA20JVx+g8sFca23DTBnnmRBlE
 N+pRTKD4bJhSx/81ES60XHthar9KZ7V6tguImY79gKigmBpnpjVZMhIPBBw3zL5Jyd
 1qA3yMED3W06fABtM16JV4z+kKC+VRkgl0oO4wZc=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200613030458epcas5p40ca0e86dd249a02e957f618bf3d8ea94~X_3rzYODB1026610266epcas5p4z;
 Sat, 13 Jun 2020 03:04:58 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 C5.BA.09703.A5244EE5; Sat, 13 Jun 2020 12:04:58 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200613030458epcas5p3f9667bab202d99fb332d5bf5aad63c85~X_3rfWZ2a2268422684epcas5p3Y;
 Sat, 13 Jun 2020 03:04:58 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200613030458epsmtrp213570b9b3ec310e6200a70c1492c8bf3~X_3rem7pH2362123621epsmtrp20;
 Sat, 13 Jun 2020 03:04:58 +0000 (GMT)
X-AuditID: b6c32a4a-4b5ff700000025e7-67-5ee4425a3624
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 7C.62.08382.A5244EE5; Sat, 13 Jun 2020 12:04:58 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200613030456epsmtip29f05f6acdb20feda87c8f3c3096c25c1~X_3pjejrC0718207182epsmtip2F;
 Sat, 13 Jun 2020 03:04:56 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [RESEND PATCH v10 10/10] arm64: dts: Add node for ufs exynos7
Date: Sat, 13 Jun 2020 08:17:06 +0530
Message-Id: <20200613024706.27975-11-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200613024706.27975-1-alim.akhtar@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrNKsWRmVeSWpSXmKPExsWy7bCmhm6U05M4gzebdCwezNvGZvHy51U2
 i0/rl7FazD9yjtXiwtMeNovz5zewW9zccpTFYtPja6wWl3fNYbOYcX4fk0X39R1sFsuP/2Oy
 +L9nB7vF0q03GR34PC739TJ5bFrVyeaxeUm9R8vJ/SweH5/eYvHo27KK0eP4je1MHp83yXm0
 H+hmCuCM4rJJSc3JLEst0rdL4MpY8pytoEui4vvxTewNjBuFuxg5OSQETCQmPH7C2MXIxSEk
 sJtRYmVHFytIQkjgE6NE5x1JiMQ3RokvJz6xw3S0rrnLBFG0l1Fi54ZQiKIWJompt/uYQRJs
 AtoSd6dvASsSERCWOPKtjRHEZhZ4ySSx61EBiC0s4CbxftJDsG0sAqoSq/80sIDYvAK2Etv2
 90Atk5dYveEA2ExOoPjB/wuYIGoEJU7OfMICMVNeonnrbGaQIyQETnBIfF93jAWi2UXi3Y/9
 rBC2sMSr41ughkpJfH63l62LkQPIzpbo2WUMEa6RWDoPptVe4sCVOSwgJcwCmhLrd+lDrOKT
 6P39hAmik1eio00IolpVovndVahOaYmJ3d1QSz0kDrTvY4cEzwRGiR9z3rFPYJSfheSDWUg+
 mIWwbQEj8ypGydSC4tz01GLTAqO81HK94sTc4tK8dL3k/NxNjOD0peW1g/Hhgw96hxiZOBgP
 MUpwMCuJ8AqKP4wT4k1JrKxKLcqPLyrNSS0+xCjNwaIkzqv040yckEB6YklqdmpqQWoRTJaJ
 g1OqganK4LAs38lFOqaV2X6N8knfG+IjA8xaFA8ubUoNsjy7y8qF9Uiqzq+k5a9T6lhs3kTb
 nNTpst6pd67gbuDt7qcrcyK3ZR5fuY7LeWHOdzFvpk17rRtcWr+XPO+eJG4mxOQzw3VhSdSm
 5JkKhw/Ie7xQYNxg92Ae19Z/My88Fg5NKMifPs/+zhvFuo0/6qccNN4e9uzH9uzVYfb5azdr
 rcrnnnqY8+mdut399xoeN2ompi3RZJkVuS+zrCbaNLSFw6l/Uqzuilc1vzsDxWMcVS5ebltj
 LXP744JskTtXcj60fX8Z8i5nuf0eSeHkWR/ZeHNPbPnuN/8a4yuX+TtiGftM28JsOiYt0a/i
 XDK5TomlOCPRUIu5qDgRAP1GtcjOAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsWy7bCSvG6U05M4g59/RSwezNvGZvHy51U2
 i0/rl7FazD9yjtXiwtMeNovz5zewW9zccpTFYtPja6wWl3fNYbOYcX4fk0X39R1sFsuP/2Oy
 +L9nB7vF0q03GR34PC739TJ5bFrVyeaxeUm9R8vJ/SweH5/eYvHo27KK0eP4je1MHp83yXm0
 H+hmCuCM4rJJSc3JLEst0rdL4MpY8pytoEui4vvxTewNjBuFuxg5OSQETCRa19xl6mLk4hAS
 2M0oMf/qSlaIhLTE9Y0T2CFsYYmV/56zQxQ1MUnc/NPMCJJgE9CWuDt9CxOILQJUdORbGyNI
 EbPAdyaJAxMmMIMkhAXcJN5Pegg2lUVAVWL1nwYWEJtXwFZi2/4eqA3yEqs3HACr5wSKH/y/
 AGyokICNxO6jP1kh6gUlTs58AtTLAbRAXWL9PCGQMDNQa/PW2cwTGAVnIamahVA1C0nVAkbm
 VYySqQXFuem5xYYFhnmp5XrFibnFpXnpesn5uZsYwfGmpbmDcfuqD3qHGJk4GA8xSnAwK4nw
 Coo/jBPiTUmsrEotyo8vKs1JLT7EKM3BoiTOe6NwYZyQQHpiSWp2ampBahFMlomDU6qBSUQi
 Jfde+kI5/4TAtZFG2jcd5gdMs2HkNBLK3+d+wejFRP1mGUM7h9tb1xaJxoteq20zlNv32Liq
 RiN2jtb3eRbrnhXKZJ9ubLomoXZadKF2dUdoHhNHhrpn5hSmpc/e/MxICOvT13uxitl8Qm3h
 Nuc3q6OZnBhdnG37n+dll50OFnB5cCtum+Gh55FxVk3sfwLXFM+PrNye96TbYIPkhpnxud7G
 D64JLm40mMrNUHryiGPmpcdv86pt3ofvNN/emrBz/zyTHZ5x096xxXKsvL1s9yrVe38i9J32
 VBs8a+1e+fWlzyEe18wjd36bX/swp3bPlg2Hj87zbW+d2yKZrfFcaLrtpRWhVqu5mT8rsRRn
 JBpqMRcVJwIArYFcgyYDAAA=
X-CMS-MailID: 20200613030458epcas5p3f9667bab202d99fb332d5bf5aad63c85
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200613030458epcas5p3f9667bab202d99fb332d5bf5aad63c85
References: <20200613024706.27975-1-alim.akhtar@samsung.com>
 <CGME20200613030458epcas5p3f9667bab202d99fb332d5bf5aad63c85@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_200501_386871_4CB3CC63 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.25 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com, kishon@ti.com,
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
