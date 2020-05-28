Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC291E5326
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 03:36:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wR2k6evSccMI/EBQc7XV5Hw7LhoNT44b8OALp+16F+k=; b=mrS7c8qwH8Ky6Q
	SzirhRdm9iso9v8tMSb4FmbJ14PHsNye45PXFNjaeXunM47nQObYL2VzXFKGruE9X+PInPAhn9+r5
	pp3PP1WgnoE7l7SuAo4F3bPgac25lZ3VJdoLJf8NMDxpaOyQOVlR8kx55KVA6K+UPYWl5g3gxNg4j
	T6W5/AEhUFQ0XGitBi08lyjYxQlaftBvKsPSFhLmfjK+dnOU1XOjmmMFXgw8PkJ8ul/J1y8/TB4Db
	3XL0wdtvwT06Ckv2uXWavFp8fQPkkt8P+DXaYE37u8U3WXsCrEDZxfFbDm7Vjss0X1ntRZz1+wN6r
	mAs5DadWED6HwksvmxqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je7Si-0007qC-F9; Thu, 28 May 2020 01:36:00 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je7Pc-0003PI-PH
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 01:32:52 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200528013246epoutp0222c96aec5cc390a8c7f73efc1f2d6096~TDSm3dM5q3051730517epoutp02O
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 01:32:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200528013246epoutp0222c96aec5cc390a8c7f73efc1f2d6096~TDSm3dM5q3051730517epoutp02O
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590629566;
 bh=YqesGE9QRWzbUFapaH4d6ciy/qj5O7BFUrBR3w8MJ14=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tz5jcXY5hipzfZ3eh1NCnkPzpSQIlJBgyxkI27ctPmIAhKlzJyqOLcGF8HbrIkkf8
 STDaPUsrm4AZ+wZUkfx9MIv/En97YoiNfRyj4DzB0uv6K/Su8jvBEuAMr5nSKUjLDB
 4vxD8LdFTfTW+4fDP3GDvu1qosod8L9Puv1twR8Q=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200528013245epcas5p38aa13d5d814a3fa69821a0fe32d92eae~TDSmTrT1u1669616696epcas5p3a;
 Thu, 28 May 2020 01:32:45 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 00.20.09467.DB41FCE5; Thu, 28 May 2020 10:32:45 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200528013245epcas5p37851891649512882c7b1ffb5f903c506~TDSl0hDU21669616696epcas5p3X;
 Thu, 28 May 2020 01:32:45 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200528013245epsmtrp157c7b006bc9e5ef5e23d76b2ebcf1cba~TDSlzfQkC0638506385epsmtrp1u;
 Thu, 28 May 2020 01:32:45 +0000 (GMT)
X-AuditID: b6c32a49-a29ff700000024fb-5e-5ecf14bdaa52
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 12.F7.08382.CB41FCE5; Thu, 28 May 2020 10:32:44 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200528013243epsmtip1e2ac487d7a5b5c26119f98d65a37b08f~TDSj95nFz1371113711epsmtip1X;
 Thu, 28 May 2020 01:32:42 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v10 10/10] arm64: dts: Add node for ufs exynos7
Date: Thu, 28 May 2020 06:46:58 +0530
Message-Id: <20200528011658.71590-11-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528011658.71590-1-alim.akhtar@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTcRj1d3d3dxVntyn1peRqYOVK0+xxQ0srqxuhlARGkTbspuJ0ujkr
 CVovLTdzReSrXIUVrUSbU2w1s+U0qTRaZrkEQ6MHYdpbKqvrNeq/851zvu8cfvxIgaRW6E+m
 Z+Wy6iyFUkZ44Y13gueE2P26ksJ6LIF0f1UjQb8Z7SboD7UXhbSptVNId3XViehnVidOWwae
 CGmX7TRBl3U1Y7S+p4mgL7WPYfSvm00i+kLDMxQjZlzHijHGYj5KMPXV+5hDHbdwZuRlL84c
 s5oR89ESyBS26LEN5BavqB2sMj2PVc9fvt0rrfoVkV0Eu7+2W0Q6dM23CHmSQC2E0WEnUYS8
 SAl1A4FzpFzEDx8QmBsvC/jhC4KHpmrB3xWX8T3iBTuCoWankBMk1CEMDpxL5DBBzYW+UivG
 YT/KF1q/FCAOC6inGPRfjuWwLxUNledHx3mcCoIfxuFxLKaWgb2qVciHSeFKXcufYJL05Hhj
 DG+ZDB3lgzh/UgoHGyrHiwJVQ4Ku1Sri/EDFwmdrAH/GF962czSH/eFNScGEJQMMtgie3gsX
 qtpwHkdDy+PTOGcRUMFQa5vPJ/lA8fdBjN8Uw5ECCe8OgoND3RObAXBcr5/ozsD9qw8x/m2M
 CGy1KUYkrfivf8V//Sv+hZ1FAjOaxmZrMlNZzaLs8Cx2V6hGkanRZqWGpqgyLWj8T8nXNaG+
 /uFQB8JI5EBACmR+4pUP7iVJxDsUe/JZtSpZrVWyGgcKIHHZVLHs2/0kCZWqyGUzWDabVf9V
 MdLTX4eV1GhLG8Lk+pThTzGHFxm8zynnDc7BH0TE3Z3iPYg5ZhauD4k2N2GTNzhzQjrl8wLD
 PidXOlweRet+HO6f7fM42t7TtlM14u02/6rJX5gRuQSNbRo7n7/CXb96qbIgMcGxatbmd6cM
 L8p0vaatjvePYgdKc+NK3KdeR1bqrHtMCfa3cfa2+LD1nt2TPJq93enJweayjrwcQ+OLVaap
 3T2SgZzmOunzSMJe6PqU0LKADU8ox7Wh18/4eRydtbJ4o6N+m2trg8/atqhlYMjYeYu0xZuF
 eRdvnwiSfp2+YMXP+CBX7/7rwhuqqDWLT+a7h9wb1xRr5S8TY/e+s4hVkXU/Z8hwTZoiXC5Q
 axS/AcbguGnCAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmplkeLIzCtJLcpLzFFi42LZdlhJTnePyPk4g23frC0ezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXxpLnbAVdEhXfj29ib2DcKNzFyMkhIWAicXnCe0YQW0hgN6PE5Gk5EHFpiesb
 J7BD2MISK/89Z4eoaWKSOHucB8RmE9CWuDt9CxOILQJUc+RbG9gcZoFnTBKnHpaC2MIC9hKz
 F/0Ei7MIqEr8mfABzOYVsJXYO+8IK8R8eYnVGw4wdzFycHCCxCc4QKyykZiwai9UuaDEyZlP
 WEBKmAXUJdbPE4LYJC/RvHU28wRGwVlIqmYhVM1CUrWAkXkVo2RqQXFuem6xYYFhXmq5XnFi
 bnFpXrpecn7uJkZwTGlp7mDcvuqD3iFGJg7GQ4wSHMxKIrxOZ0/HCfGmJFZWpRblxxeV5qQW
 H2KU5mBREue9UbgwTkggPbEkNTs1tSC1CCbLxMEp1cCkO6+7wUaOaZ5TrOPEd7PLnRKunnFb
 NU9T+XxN8q65Vy6qbdJezhbyZZJ2+XKhinPx3z4032Pb9Ct/yrL1GeoJXR/uHxe3yWiLtbcI
 uB995dPSkxbH/h5q8hPwcl1fleT5O89bee+7oy/jyy5rPszbHqEk9CVRrtU/Mjhs2sp9/Rfe
 h05dVBi492jW7AIDbrm7+kd1y9fblz2fepqPLX8X97qfzZqMx3hEuT5cM5//q+esO1vtRJNe
 njuTnQzcutxquz51CL8yW/OWKyGx4x2bBqPM4q1TVlo3c227czLvQ3i14CzB2SIXF7r8OSJg
 bKjcanr/4ZZtZvzbZm2tmPBg3Y9nJ0Ka+4+JLzxvotuvxFKckWioxVxUnAgAnWVK0BgDAAA=
X-CMS-MailID: 20200528013245epcas5p37851891649512882c7b1ffb5f903c506
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200528013245epcas5p37851891649512882c7b1ffb5f903c506
References: <20200528011658.71590-1-alim.akhtar@samsung.com>
 <CGME20200528013245epcas5p37851891649512882c7b1ffb5f903c506@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_183249_029840_33213FA1 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.25 listed in wl.mailspike.net]
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
