Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB3E1CCF97
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 04:17:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+FzKBFms4hoMpLtLTrWTODAVuFq/JmNSYRpqsjowypk=; b=k77/P6NDyoAHWK
	DCV9hDPyIojVHUKrUXbNyDGYBOMO62HuZsnehdoJdu5THI/nUCxy8ptPNfcMI0lwmr9bTOEqSvTGv
	V+uhakNUqCp/jLwuZUWLS6yIyefFmLco7fHL0PCN1pcyiq0ZwrEzBwZHO8wpWyMF/4dOroEq4bSZZ
	EAUumT1y7qXT7u3O1yoWJtObfzjRrsny1lS3AucTh0sle9chb9ny4dHUj1JQOLo+/OL6xzCbxNPdA
	cbtaXUhFTtO1JvQbZZ5a65L+YpvwxqmecK8MpnXR1Efc1iVsg5n3yWY99+Zf2AZcD9tesnJvOBDKC
	Pg+4MrRyASBzyn+r6M+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXy0T-0008RQ-CU; Mon, 11 May 2020 02:17:25 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXxxU-0003ER-Jj
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 02:14:22 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200511021412epoutp0269c9adeb2ab1e6b6b3356dd8a6d61862~N148G7Xjv3234832348epoutp02U
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 02:14:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200511021412epoutp0269c9adeb2ab1e6b6b3356dd8a6d61862~N148G7Xjv3234832348epoutp02U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589163252;
 bh=/EgM78BRgJhvlBHBSPq8WNIKV3DNSoRwOkIucDKKIZA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jldCunGBvegwqaAPBUmqeN8yR+ezOxpX4im0dPbR9clC84jECLGPaSxhPp6669lCD
 PdIRwNJjwZnP70LxrihScsIcej/RgMU6dZ87DQxWkXkdgZvspLCoaWCDey8D8KUia8
 M8fih4mMpUxMQM8bvzBTJoaf9SWs8gm5cZksIQLk=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200511021412epcas5p1a66fa185ff0d312bfca4886658c338f3~N147yrPuA1717517175epcas5p1t;
 Mon, 11 May 2020 02:14:12 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 0A.1A.23389.4F4B8BE5; Mon, 11 May 2020 11:14:12 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
 20200511021411epcas5p40282690d856ef9d9541506967fd0e764~N147KhXcc3064630646epcas5p4p;
 Mon, 11 May 2020 02:14:11 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200511021411epsmtrp22e18468f1f819f1ad659dd0038675ef4~N147JQh9w1467414674epsmtrp2j;
 Mon, 11 May 2020 02:14:11 +0000 (GMT)
X-AuditID: b6c32a4b-7adff70000005b5d-5c-5eb8b4f401f7
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 58.64.25866.3F4B8BE5; Mon, 11 May 2020 11:14:11 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200511021409epsmtip238e517c47b32ebc72cb65f4fa03b0bec~N145Al4i70185501855epsmtip2V;
 Mon, 11 May 2020 02:14:09 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v8 10/10] arm64: dts: Add node for ufs exynos7
Date: Mon, 11 May 2020 07:30:31 +0530
Message-Id: <20200511020031.25730-11-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511020031.25730-1-alim.akhtar@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrIKsWRmVeSWpSXmKPExsWy7bCmuu6XLTviDHp7pC0ezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXxrZpmgV7JSpevO9lbmC8I9zFyMkhIWAisej7XrYuRi4OIYHdjBLvv19gAkkI
 CXxilLg03xsi8ZlRov3WYiaYjulXz7JDJHYxSrx+dYcJwmlhkvi16gojSBWbgLbE3elbwDpE
 BIQljnxrA4szC9xgkniw0qWLkYNDWMBO4t55VpAwi4CqxI+Tm1hAbF4BW4kDU78zQyyTl1i9
 4QCYzQkUn9awHapGUOLkzCcsECPlJZq3zmYGuUFCYAeHxOqdW9kgml0kln3aygJhC0u8Or6F
 HcKWkvj8DuRnDiA7W6JnlzFEuEZi6bxjUOX2EgeuzGEBKWEW0JRYv0sfYhWfRO/vJ0wQnbwS
 HW1CENWqEs3vrkJ1SktM7O5mhbA9JK4enwQNqgmMEjv+vGCawCg/C8kHs5B8MAth2wJG5lWM
 kqkFxbnpqcWmBcZ5qeV6xYm5xaV56XrJ+bmbGMGpSst7B+OjBx/0DjEycTAeYpTgYFYS4V2e
 uyNOiDclsbIqtSg/vqg0J7X4EKM0B4uSOO/jxi1xQgLpiSWp2ampBalFMFkmDk6pBiaDxoiy
 zT23zywMm8H/fdYXw5TGSYlC7cneS542ONr4tF8635Fg9PZS93YJx1Npm4J0nPxmyYt62W4I
 FC3wKGs4fL7/uZrCH4WpCeI1CXf4/W/ESkS0HO9dfras7Prew8b80tcaVldb2U6vWvLA8ozm
 Eb7zM3793sKRtGZqdb+R0XPjrOtOCyZEZcm6fBT+kr5I9Mr1BrNtqX/nvbxaazV3TXU092xD
 2+tf1q2QvPM56Gx8zcPqf8t6q79U6yp/8mBs+Fl3+La9b3GkQ77FgdeZTzdGXfRbpnN7duEe
 lhrWhp/Pvy1r3Pw7Kz9WZiZbb8D3BZcjdy5tT53jm3gl+86EG5MDuva7v1m7OrTkiI8SS3FG
 oqEWc1FxIgDP3nB/xAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpjkeLIzCtJLcpLzFFi42LZdlhJXvfzlh1xBndealg8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujG3TNAv2SlS8eN/L3MB4R7iLkZNDQsBEYvrVs+xdjFwcQgI7GCX2d+9igkhI
 S1zfOIEdwhaWWPnvOZgtJNDEJLF5ZgCIzSagLXF3+hawehGgmiPf2hhBbGaBZ0wSpx6WdjFy
 cAgL2EncO88KEmYRUJX4cXITC4jNK2ArcWDqd2aI8fISqzccALM5geLTGrazQKyykZixaTMr
 RL2gxMmZT1hARjILqEusnycEsUleonnrbOYJjIKzkFTNQqiahaRqASPzKkbJ1ILi3PTcYsMC
 o7zUcr3ixNzi0rx0veT83E2M4KjS0trBuGfVB71DjEwcjIcYJTiYlUR4l+fuiBPiTUmsrEot
 yo8vKs1JLT7EKM3BoiTO+3XWwjghgfTEktTs1NSC1CKYLBMHp1QDUx+rNNvNRbobnl8Xcf/h
 eGjq5DmTD7qWPdlyn8WxL/jFkjOi325feaC1fLk7W7XzB703kxcW+Dxtl/wcFZA8+aDfOteH
 8RXNUx7aimfvOPMmlmHmPqO2bNbK/33NGnILox+9WXpUnrF6D3eHGodyRbPSo8r2E/cclOSm
 /PfWvLa2+PyWFcWOs2sd2YsyUqYWWqToeDV92P5lhV+xh32GrMm/gzJFTy4oy//h75nI+iDG
 QHb5buFX4ptmve/2MX2VlJy+wYfr75FNSt8nrJusnaXeryF78qz/MitFhUsnlhZFStRK2yzx
 8OrLUPhWKp145Zmsl59d+c3PlgyiPSWbOkvW1tz4kdF3ZuffdkcvJZbijERDLeai4kQAwLrM
 ZBkDAAA=
X-CMS-MailID: 20200511021411epcas5p40282690d856ef9d9541506967fd0e764
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200511021411epcas5p40282690d856ef9d9541506967fd0e764
References: <20200511020031.25730-1-alim.akhtar@samsung.com>
 <CGME20200511021411epcas5p40282690d856ef9d9541506967fd0e764@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_191421_046646_CD40D921 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
dHNpCmluZGV4IDU1NTgwNDU2MzdhYy4uNzU5ZmZkMDI0YWJhIDEwMDY0NAotLS0gYS9hcmNoL2Fy
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
KworCQl1ZnNfcGh5OiB1ZnMtcGh5QDE1NTcxODAwIHsKKwkJCWNvbXBhdGlibGUgPSAic2Ftc3Vu
ZyxleHlub3M3LXVmcy1waHkiOworCQkJcmVnID0gPDB4MTU1NzE4MDAgMHgyNDA+OworCQkJcmVn
LW5hbWVzID0gInBoeS1wbWEiOworCQkJc2Ftc3VuZyxwbXUtc3lzY29uID0gPCZwbXVfc3lzdGVt
X2NvbnRyb2xsZXI+OworCQkJI3BoeS1jZWxscyA9IDwwPjsKKwkJCWNsb2NrcyA9IDwmY2xvY2tf
ZnN5czEgU0NMS19DT01CT19QSFlfRU1CRURERURfMjZNPiwKKwkJCQkgPCZjbG9ja19mc3lzMSBQ
SFlDTEtfVUZTMjBfUlgxX1NZTUJPTF9VU0VSPiwKKwkJCQkgPCZjbG9ja19mc3lzMSBQSFlDTEtf
VUZTMjBfUlgwX1NZTUJPTF9VU0VSPiwKKwkJCQkgPCZjbG9ja19mc3lzMSBQSFlDTEtfVUZTMjBf
VFgwX1NZTUJPTF9VU0VSPjsKKwkJCWNsb2NrLW5hbWVzID0gInJlZl9jbGsiLCAicngxX3N5bWJv
bF9jbGsiLAorCQkJCSAgICAgICJyeDBfc3ltYm9sX2NsayIsCisJCQkJICAgICAgInR4MF9zeW1i
b2xfY2xrIjsKKwkJfTsKKwogCQl1c2JkcmRfcGh5OiBwaHlAMTU1MDAwMDAgewogCQkJY29tcGF0
aWJsZSA9ICJzYW1zdW5nLGV4eW5vczctdXNiZHJkLXBoeSI7CiAJCQlyZWcgPSA8MHgxNTUwMDAw
MCAweDEwMD47Ci0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
