Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E2D1AE484
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 20:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1MBt9DyUphOk44+ABTDkujATo8pkXtTEDJA+o/alLbI=; b=M7K2172PShIWs7
	ica2bIFw8pNzzStEjkEu6naEFW6R4sJ/3SK78ojFiw1dPQYq/bWXiwI1PZxyM4dawoEjVXFO/bKn0
	KZ0xTB3eRf+3+0hsIxHuow1FAmcQ5XY/uQV5LnRKPrZF2ZCTeQ3FmiTTRsTdLmV9ZkIE0GiDJbws7
	gdSDoWocelo0bdmCerQk5+FmuAS5WRZNiuhW+YjEQfIx38PW9BKnAuHDIhWHS33asKDlAdze2Wzl+
	6aUjyk7xo2ihEbaUW4dQ1lc1ZsnIBgiqPYoCMC3Cj7lPBVWBhN+nx4sdvDSZnNud/Lccb1OZsYPVR
	uU4hkm0uOE1+1+omkUmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPVU8-0003Cv-Jv; Fri, 17 Apr 2020 18:13:04 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPVRe-0001Am-VI
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 18:10:33 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200417181028epoutp02833f753dc0aea90db485320be4eda3f3~GrdBBv-AQ0378603786epoutp02i
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 18:10:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200417181028epoutp02833f753dc0aea90db485320be4eda3f3~GrdBBv-AQ0378603786epoutp02i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587147028;
 bh=N5xT+Tor3D+R1tVY/D303rOGE0vB3ZA1jQfCCEqyDjo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dFfftXxxR1GHoU4H/8rfMqxSewidw0VDcxJ92lYRvQRds3liry9rTLF+4E6UIrLNv
 ACbxDZ1oLMkYHIFhL+xt3qENw6wQPB5hZxJN+AaqUfgdNa3rsoyIHaAxt4wwajY/9Q
 EFKJtmMh1XiIvcEv5ZTyToor4Jmqnd6HXBlMoAiI=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200417181027epcas5p2d1e9be455e717c1162b4a7c387052a4a~GrdAJVBml0105401054epcas5p2D;
 Fri, 17 Apr 2020 18:10:27 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 BC.0B.04736.311F99E5; Sat, 18 Apr 2020 03:10:27 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
 20200417181026epcas5p434bcc980e1fe334969ef6f1641525ee0~Grc-dKQPw1060310603epcas5p4z;
 Fri, 17 Apr 2020 18:10:26 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200417181026epsmtrp1ff38fd0a6760bf978df02b1a7a79b233~Grc-cTVIc0669906699epsmtrp1Q;
 Fri, 17 Apr 2020 18:10:26 +0000 (GMT)
X-AuditID: b6c32a4b-acbff70000001280-69-5e99f1134ec5
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 62.E0.04024.211F99E5; Sat, 18 Apr 2020 03:10:26 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200417181024epsmtip148fc720f88d9c0ccd1c0edbd14c5340b~Grc9ip4wB2094920949epsmtip1J;
 Fri, 17 Apr 2020 18:10:24 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v6 10/10] arm64: dts: Add node for ufs exynos7
Date: Fri, 17 Apr 2020 23:29:44 +0530
Message-Id: <20200417175944.47189-11-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200417175944.47189-1-alim.akhtar@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTYRjG+87OOTuai9Mm+KaVMTLTSAszzx/lBSQOJtEfCRJlzTyo6XRt
 3gsSvLu8dbOZuEDXxQhlbiKWOe+YpuDSVLCMtKGh5iVBKs3tKPXf732+5/me94OPEohbCWcq
 NiGJUybI4qWkPd7Y4eF+VLKoiThm2vBgJqsaSWZmbZhkluqeEoy2c4BgBgfrhcyYoQtn9F9H
 CMbcXEkyjwbfYoz6YxPJPOtZx5iNN01CRmccQ4Ei1lxchLH62gKSbai5zWb3tuLs4vQ4zhYb
 ahG7rN/P5pnU2Hnqov2pKC4+NoVTevtftY95kDNAKlohrWZEizLRJ0khsqOAPgHm+nWsENlT
 Yvo1gg1LiZAflhCsVS8gflhF8OfVkHA7Upv3eyvSguB++TTJD9kYjHf9QFYXSR+BiXIDZmVH
 WgKdq7k2XUCPYjD5ItjKEtofzG3zAivjtBtodVobi+jTUDRrwfg2V3hZb7Lpdpt6brYO4z27
 oVczhfN3ukKW8bGA96uFUDkUxHMwTMy1IZ4lMNtj2HqBM8yU5G4ytclxcKfZh5dvga6qG+c5
 AEwfKnGrRUB7QF2zN9+0C4p+TWF8UgT5uWLe7QZZ88NbSRcoU6sJnlno/r5mW0BMlyIYN4aX
 IteK//av+G//in9lT5CgFu3hFCp5NKfyVfgkcKleKplclZwQ7XUtUa5Htm/lebYJ6QdC2xFN
 IamDKL9YEyEmZCmqdHk7AkogdRS1ndmURFGy9AxOmXhFmRzPqdqRC4VLnUR3ieFLYjpalsTF
 cZyCU26fYpSdcyYKxdsGjTHlziFaTtz9sB9ldaaluo998/Jb/tLl1TEUuKTrd9Gnc5/vtZh8
 Mne2RG40HfbJ8ZhcMIYceB9XWFZ98PKow80LK25Efp8mKohmIhsSA/b6TdzoPKRY0Rh21IWl
 iXyfW5qdMq7DPv2cPDqceBc2H7gaf9JcMGXp+3lOiqtiZMc9BUqV7C/dDytQUgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKIsWRmVeSWpSXmKPExsWy7bCSnK7Qx5lxBn8nGVk8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujKmt59gK9ktULLk2n7GB8Z5wFyMnh4SAicSq9j9MXYxcHEICuxklFq65wA6R
 kJa4vnEClC0ssfLfc3aIoiYmiYONx9hAEmwC2hJ3p29hArFFgIqOfGtjBLGZBZ4xSZx6WApi
 CwvYSVw++I4ZxGYRUJWYv3Q+mM0rYCvR++o5E8QCeYnVGw6AxTmB4m0tS4HiHEDLbCQ2PImB
 KBeUODnzCQtImFlAXWL9PCGITfISzVtnM09gFJyFpGoWQtUsJFULGJlXMUqmFhTnpucWGxYY
 5qWW6xUn5haX5qXrJefnbmIER5aW5g7Gy0viDzEKcDAq8fAa9MyME2JNLCuuzD3EKMHBrCTC
 e9ANKMSbklhZlVqUH19UmpNafIhRmoNFSZz3ad6xSCGB9MSS1OzU1ILUIpgsEwenVAPj5Ab9
 uXl6CfvEXlYXKGfWXdxz5OrjuZfmxl1sM5/gx7Uy6aCnbNHJ7AiPJYuKFkitajl9eYLmipbN
 NZU7fD1r1aY7nj3XOMv4af1Z4wsG927Gii5oWX3b8prz4oW3F+lHbM/YrSh5fUvz++12CtLW
 JWkptur14lLntysv1Twd35+xQONXAVeuEktxRqKhFnNRcSIA9UAqM6gCAAA=
X-CMS-MailID: 20200417181026epcas5p434bcc980e1fe334969ef6f1641525ee0
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200417181026epcas5p434bcc980e1fe334969ef6f1641525ee0
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181026epcas5p434bcc980e1fe334969ef6f1641525ee0@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_111031_374052_EB96196E 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
L2FybTY0L2Jvb3QvZHRzL2V4eW5vcy9leHlub3M3LmR0c2kgICAgICAgfCA0NCArKysrKysrKysr
KysrKysrKystCiAyIGZpbGVzIGNoYW5nZWQsIDQ2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9leHlub3MvZXh5bm9zNy1lc3By
ZXNzby5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2V4eW5vcy9leHlub3M3LWVzcHJlc3NvLmR0
cwppbmRleCA3YWYyODhmYTk0NzUuLjc5MGYxMmNhODk4MSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9leHlub3MvZXh5bm9zNy1lc3ByZXNzby5kdHMKKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9leHlub3MvZXh5bm9zNy1lc3ByZXNzby5kdHMKQEAgLTQwNiw2ICs0MDYsMTAgQEAK
IAl9OwogfTsKIAorJnVmcyB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKKwogJnVzYmRyZF9waHkg
ewogCXZidXMtc3VwcGx5ID0gPCZ1c2IzMF92YnVzX3JlZz47CiAJdmJ1cy1ib29zdC1zdXBwbHkg
PSA8JnVzYjNkcmRfYm9vc3RfNXY+OwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9l
eHlub3MvZXh5bm9zNy5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9leHlub3MvZXh5bm9zNy5k
dHNpCmluZGV4IDU1NTgwNDU2MzdhYy4uMGMxZWJkM2VhMjk0IDEwMDY0NAotLS0gYS9hcmNoL2Fy
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
IHNlcmlhbEAxMzYzMDAwMCB7CkBAIC02MDEsNiArNjA2LDQxIEBACiAJCQl9OwogCQl9OwogCisJ
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
bmN0cmwtMCA9IDwmdWZzX3JzdF9uICZ1ZnNfcmVmY2xrX291dD47CisJCQlwY2xrLWZyZXEtYXZh
aWwtcmFuZ2UgPSA8NzAwMDAwMDAgMTMzMDAwMDAwPjsKKwkJCXBoeXMgPSA8JnVmc19waHk+Owor
CQkJcGh5LW5hbWVzID0gInVmcy1waHkiOworCQkJc3RhdHVzID0gImRpc2FibGVkIjsKKwkJfTsK
KworCQl1ZnNfcGh5OiB1ZnMtcGh5QDB4MTU1NzE4MDAgeworCQkJY29tcGF0aWJsZSA9ICJzYW1z
dW5nLGV4eW5vczctdWZzLXBoeSI7CisJCQlyZWcgPSA8MHgxNTU3MTgwMCAweDI0MD47CisJCQly
ZWctbmFtZXMgPSAicGh5LXBtYSI7CisJCQlzYW1zdW5nLHBtdS1zeXNjb24gPSA8JnBtdV9zeXN0
ZW1fY29udHJvbGxlcj47CisJCQkjcGh5LWNlbGxzID0gPDA+OworCQkJY2xvY2tzID0gPCZjbG9j
a19mc3lzMSBTQ0xLX0NPTUJPX1BIWV9FTUJFRERFRF8yNk0+LAorCQkJCSA8JmNsb2NrX2ZzeXMx
IFBIWUNMS19VRlMyMF9SWDFfU1lNQk9MX1VTRVI+LAorCQkJCSA8JmNsb2NrX2ZzeXMxIFBIWUNM
S19VRlMyMF9SWDBfU1lNQk9MX1VTRVI+LAorCQkJCSA8JmNsb2NrX2ZzeXMxIFBIWUNMS19VRlMy
MF9UWDBfU1lNQk9MX1VTRVI+OworCQkJY2xvY2stbmFtZXMgPSAicmVmX2NsayIsICJyeDFfc3lt
Ym9sX2NsayIsCisJCQkJICAgICAgInJ4MF9zeW1ib2xfY2xrIiwKKwkJCQkgICAgICAidHgwX3N5
bWJvbF9jbGsiOworCQl9OworCiAJCXVzYmRyZF9waHk6IHBoeUAxNTUwMDAwMCB7CiAJCQljb21w
YXRpYmxlID0gInNhbXN1bmcsZXh5bm9zNy11c2JkcmQtcGh5IjsKIAkJCXJlZyA9IDwweDE1NTAw
MDAwIDB4MTAwPjsKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
