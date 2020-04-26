Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAC71B926A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 19:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1MBt9DyUphOk44+ABTDkujATo8pkXtTEDJA+o/alLbI=; b=gQlXARc3Q8snsN
	o7OWPgBSUwCNxVGh8HfNtI4tO11A9VS0VmKlOP3tJrSI7DK/D7iKEq2eZjckinxnf82R3b/L7+TeU
	ZO5qiY26DrB0zF7UGtZJZnK/L4ixCrCmGR9s82HAxFww1YQUh11NvUvLnKqgS7pVtpFfSuJnrMZYu
	TsAsMDfKds5ckzvvvqAhhFO0sr8zjJvD2iHyZwoY8pKcr/32caGM2q9eK2BK+GG2ji5PtW1A4IOjR
	nWifNjxwkj+Mzxfj3nf30BYv0XBsl19rElQSaep1kJuvAUpW/AlgyJ9AXcT/AO2rbedmLdtWlk5Nz
	hVwwB7KN8R68TimlEJtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSlL0-0004Ca-BD; Sun, 26 Apr 2020 17:45:06 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSlIU-0001zM-HR
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 17:42:33 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200426174225epoutp03ed52720c6cc8244f45307c13b395df65~Jb4GQsKb81070010700epoutp03M
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 17:42:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200426174225epoutp03ed52720c6cc8244f45307c13b395df65~Jb4GQsKb81070010700epoutp03M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587922945;
 bh=N5xT+Tor3D+R1tVY/D303rOGE0vB3ZA1jQfCCEqyDjo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Iso8hmn0aZw5VHhN4Y4hxBS/FaoghO5QY4Z7K0sIiCWeANDz6rpgqBqnipJNt3Ol8
 5tw3tEaOAQkPFgigYeLpk2Q1SpJCdCun+wNurWrjkRti0Q5f7x6TGa/w+6jff60US3
 wNx11kIQ6i6btYBGZYlb7MPK16fCJ6cWnLzQZXxQ=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200426174225epcas5p46e8ed90dac5869ac76c9554cb41cf820~Jb4F3I3Cg1741817418epcas5p46;
 Sun, 26 Apr 2020 17:42:25 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 A6.23.10083.108C5AE5; Mon, 27 Apr 2020 02:42:25 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
 20200426174224epcas5p43a1223a63bb414a5060fa9044681f933~Jb4ExKSu52671526715epcas5p4g;
 Sun, 26 Apr 2020 17:42:24 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200426174224epsmtrp2fce8c0694fa0809aba8db6b9a53e0c46~Jb4Ewaj651150211502epsmtrp2h;
 Sun, 26 Apr 2020 17:42:24 +0000 (GMT)
X-AuditID: b6c32a4a-875ff70000002763-90-5ea5c80128cc
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 68.DC.25866.008C5AE5; Mon, 27 Apr 2020 02:42:24 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200426174222epsmtip10ef095e69617c0abf8d2f7f5c5415534~Jb4C3Asuq2817828178epsmtip1W;
 Sun, 26 Apr 2020 17:42:22 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v7 10/10] arm64: dts: Add node for ufs exynos7
Date: Sun, 26 Apr 2020 23:00:24 +0530
Message-Id: <20200426173024.63069-11-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200426173024.63069-1-alim.akhtar@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHec9tx+HqNIUeJyQshFTUMosDeSuEjhES9SXDtJEHFZ2OHa8R
 aGhaTkUl8Yp28VJGKqZm03Ity0swI1Mz8lJNSCmrKWZZmdtR8tvveZ7//7m8vDQu7yUVdGxC
 Eq9NUMUrKSnR+dTN3RMN1EfsNcw5sTM1nRQ793OUYi0tDSRb22ci2eHhVgk70f6MYNs+jpHs
 iL6aYsuHH2OsbryLYhv7/2LsWk+XhK3vmEBBMm6ksADj2pquUtz9ugwue7CX4L7PviW4wvYm
 xC227eJyDTrsBH1G6hfFx8em8FrvgHPSmNLLJkrTC2l1Y7UoE0055CE7GhhfqL7Rg1lZznQj
 aC7zzkPSdbYg+D1ZgYnBIoLbeUa06SidMiOxoEewsvSVFINsDEwWE2lVUYwHTJa12/o6Mg7Q
 t5xjc+PMGwxm7gTnIZp2YALgQx1jTROMK6xZFiRWljH+0GxuxMVhLnC31WBju/X8ULkeEzU7
 YLDCTIgtXSCrowq37gBMDw2zxVOUaA6G+UsjhMgOMN/fLhFZAYsLjyjrDsDEQb5+v5i+CPU1
 zzfkgWB4XU1YJTjjBi16b3HUNihYNWOiUwZXcuSi2hWyFkY3nM5QrNORInPwaWlZIr5OEYL5
 X1WoCLlUbrmgcssFlf+nXUd4E3LiNYI6mhcOaHwS+FQvQaUWkhOivc4nqtuQ7Vu5H+tCDabj
 RsTQSGkvox/UR8hJVYqQrjYioHGloyw86WaEXBalSr/AaxMjtcnxvGBEzjSh3CkrIUfD5Uy0
 KomP43kNr92sYrSdIhOFdM/6OnVP5ufa89/G0gKaj8TNoIyHnzVH2SzfmHuKIIE7/GTPSuC4
 cWYVc/cN8trt6Rw5fVZaF4f/+CI99CfVzz8sp6Qg9VZI4PZTYwNhMSenPdw0oSvvpP5D3UOn
 kSMy6N4PBHOzoa+Izsiwln5jvA9Z0lRsabz2Ivngy+VyJSHEqPa541pB9Q93C1Q2UgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpnkeLIzCtJLcpLzFFi42LZdlhJTpfhxNI4g0tNPBYP5m1js3j58yqb
 xaf1y1gt5h85x2px/vwGdoubW46yWGx6fI3V4vKuOWwWM87vY7Lovr6DzWL58X9MFv/37GC3
 WLr1JqMDr8flvl4mj02rOtk8Ni+p92g5uZ/F4+PTWywefVtWMXp83iTn0X6gmymAI4rLJiU1
 J7MstUjfLoErY2rrObaC/RIVS67NZ2xgvCfcxcjJISFgIjH13hPGLkYuDiGBHYwSV2ceZIVI
 SEtc3ziBHcIWllj57zk7RFETk0TDy6VgRWwC2hJ3p29hArFFgIqOfGtjBLGZBZ4xSZx6WNrF
 yMEhLGAn8WiJAEiYRUBV4v+nd2AzeQVsJdY9Wc4MMV9eYvWGA2A2J1D81IxdTCCtQgI2EtPX
 +0OUC0qcnPmEBSTMLKAusX6eEMQieYnmrbOZJzAKzkJSNQuhahaSqgWMzKsYJVMLinPTc4sN
 C4zyUsv1ihNzi0vz0vWS83M3MYLjSktrB+OeVR/0DjEycTAeYpTgYFYS4Y0pWRQnxJuSWFmV
 WpQfX1Sak1p8iFGag0VJnPfrrIVxQgLpiSWp2ampBalFMFkmDk6pBqbjpRez9pXZXl/StjSF
 w/iZ1+8bmQu+Wc66peX04vc8wbXK9bYvXiZscl4yn20Zt58dT9Tp6PR+Udd1Dks/szFtZ/ac
 dFft44mJPKKf58ZNTeKYNMeG5drBVa/X9+idSv59Rl84Y8mU/V0HT886sOV6QKxQVcTcCbZa
 hx/Z8PwxvdmnEnfDSHCCk+NE4Ulcl4MfOtwqtPreKV7wad7bLe1r70u42XCVvpx16OzE0mgt
 xoPCndruc91ZlUMeBzLI3yjyOBOwpU5FOk6Ye8UBnYlS3vd2ba07Gv/p0nQnYe/H0gkvRMtF
 Z60vzI2z5W54qKjw2etRok1aeXuDz6n2crG4mx4+Xn+qJ+x3/2t4S0WJpTgj0VCLuag4EQBW
 zYpKGgMAAA==
X-CMS-MailID: 20200426174224epcas5p43a1223a63bb414a5060fa9044681f933
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200426174224epcas5p43a1223a63bb414a5060fa9044681f933
References: <20200426173024.63069-1-alim.akhtar@samsung.com>
 <CGME20200426174224epcas5p43a1223a63bb414a5060fa9044681f933@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_104230_950560_B4F8BA48 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
