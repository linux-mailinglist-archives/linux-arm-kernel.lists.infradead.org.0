Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A781F80AE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 05:08:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4AEnWs4J+S7lBkdGGRo2wgFzjRW49odJCTMQTzUTas=; b=Tui7SWUUSdU8RO
	sSmZGuh20wBbXGJobOyifhXiRx4Vy1PkciFqB8OScbmoEpK80hvoFL1M+K4XHgTuxkkCdOpqYy2Ys
	t5mkaT4RjDenFSb1IctcGMlPGuLIuth6oPU50XkaYYSa0of1tohqU+GXxbC+wMJn5IEeJN8rHEzJi
	9Ve6RAj4WoG5H0l1wilKk7eVVSvP0ruNs3r6jI9EeKk1ZSqBvBTAPgxPdmg+ZQMs2T/9cy66nczaI
	13OIFZqS+HsIj5M+aHH6N7pRb/puVtJzL7O4ayGtjdNHocXq2r1bwhVFpU+a8541GVVzpxjJFKsu1
	BrNEA3PzZ5z0SL6L85Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjwWZ-00069h-Ay; Sat, 13 Jun 2020 03:08:03 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjwTX-0001Sx-Gx
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 03:04:59 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200613030453epoutp044f4140b3bc5f232c6323e462c4e382b4~X_3mkkm192876328763epoutp04E
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 03:04:53 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200613030453epoutp044f4140b3bc5f232c6323e462c4e382b4~X_3mkkm192876328763epoutp04E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592017493;
 bh=sK/hFncn11WBScvtcYDk7R7CcwFLxOCyulZMUjKu6sA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=exgMni/rqUfcee0qmivR7micvuY/HATSsJp2wliExoRG5T29JwqgFG/l0IW7W5bXc
 yn9H5vszo9o2A+CcMSUmrdsG7mfeK0/d/kQb5AQamgYwTJP6vvZS+T1h1O48YlyTYF
 ugxOi4+frvjiilwr5qKZnvIQoOqcaM5v4QhSCdGM=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200613030452epcas5p1f9fb015282e973d0666df07f5478cab1~X_3mGdMuv3120931209epcas5p1g;
 Sat, 13 Jun 2020 03:04:52 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 78.ED.09467.45244EE5; Sat, 13 Jun 2020 12:04:52 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20200613030451epcas5p101ab5aa635668f68b88f302c25b32a6d~X_3lVV3pF1950619506epcas5p1B;
 Sat, 13 Jun 2020 03:04:51 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200613030451epsmtrp11f735317608543a181a5b4f58d942b18~X_3lUmoC22520425204epsmtrp1W;
 Sat, 13 Jun 2020 03:04:51 +0000 (GMT)
X-AuditID: b6c32a49-a29ff700000024fb-86-5ee44254768e
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 F2.C4.08303.35244EE5; Sat, 13 Jun 2020 12:04:51 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200613030449epsmtip265561581006610c0348b98f92899a64c~X_3jXcZdO0861308613epsmtip2j;
 Sat, 13 Jun 2020 03:04:49 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [RESEND PATCH v10 07/10] phy: samsung-ufs: add UFS PHY driver for
 samsung SoC
Date: Sat, 13 Jun 2020 08:17:03 +0530
Message-Id: <20200613024706.27975-8-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200613024706.27975-1-alim.akhtar@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrPKsWRmVeSWpSXmKPExsWy7bCmhm6I05M4g+Uf5CwezNvGZvHy51U2
 i0/rl7FazD9yjtXiwtMeNovz5zewW9zccpTFYtPja6wWl3fNYbOYcX4fk0X39R1sFsuP/2Oy
 +L9nB7vF0q03GR34PC739TJ5bFrVyeaxeUm9R8vJ/SweH5/eYvHo27KK0eP4je1MHp83yXm0
 H+hmCuCM4rJJSc3JLEst0rdL4Mr4OWkyc8GdOYwV85Y8Ym1g/NzE2MXIwSEhYCIxfVdNFyMX
 h5DAbkaJhxs6WCGcT4wSXctWMkE4nxklXm65B9TBCdbR8+IDC0RiF6PEo1vHoKpamCTebl7A
 DFLFJqAtcXf6FiYQW0RAWOLItzawbmaBl0wSux4VgNjCAhESx6YdZAexWQRUJZ5vuQVm8wrY
 SJycvYMZYpu8xOoNB8BsTgFbiYP/FzBB1AhKnJz5hAViprxE89bZzCBHSAic4ZA48OwpVLOL
 xOlrv6BsYYlXx7ewQ9hSEi/729ghAZAt0bPLGCJcI7F03jEWCNte4sCVOSwgJcwCmhLrd+lD
 rOKT6P39hAmik1eio00IolpVovndVahOaYmJ3d2sELaHxJMjxxkhwTOBUeL6msNMExjlZyH5
 YBaSD2YhbFvAyLyKUTK1oDg3PbXYtMAwL7Vcrzgxt7g0L10vOT93EyM4jWl57mC8++CD3iFG
 Jg7GQ4wSHMxKIryC4g/jhHhTEiurUovy44tKc1KLDzFKc7AoifMq/TgTJySQnliSmp2aWpBa
 BJNl4uCUamCKuFgYkDL75/7PCfMtzyzwqxJaLFh1fbcFf9Fi9o9P2ff3sBqxpjubMerXndya
 skaLLWaNfJINS/sTAQZV7WXHjpZIZP1nXLc4OfKv8p4tyQuXbtz4Nzz6epxvQqnWLSeGjdUP
 hfX2p+UdSmUtEvuy6M/itPQr17srfeXeukxvd2Wq7ebN2N9r88q/x1fkRCiL/8xq8YzK3XfY
 WF+pLtoSf6jAU/H4u8t2lgZBLi+21J7OP71UV1ZnR+3JdqszZ5iOfH/UVst9IeXSHwu/p+Em
 Zx43nfw104vt7HcOrX0FTZVXLZy8QxL5qpKdJN0z62VX/NyyKdB7b8+bWZ0LK+6ZSbGsLeIQ
 t4j9Wn30lhJLcUaioRZzUXEiALjplFzSAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKIsWRmVeSWpSXmKPExsWy7bCSvG6w05M4g5/HtS0ezNvGZvHy51U2
 i0/rl7FazD9yjtXiwtMeNovz5zewW9zccpTFYtPja6wWl3fNYbOYcX4fk0X39R1sFsuP/2Oy
 +L9nB7vF0q03GR34PC739TJ5bFrVyeaxeUm9R8vJ/SweH5/eYvHo27KK0eP4je1MHp83yXm0
 H+hmCuCM4rJJSc3JLEst0rdL4Mr4OWkyc8GdOYwV85Y8Ym1g/NzE2MXIySEhYCLR8+IDSxcj
 F4eQwA5GiZU7u1ghEtIS1zdOYIewhSVW/nvODlHUxCRxdVknWDebgLbE3elbmEBsEaCiI9/a
 GEGKmAW+M0kcmDCBuYuRg0NYIExi+11+kBoWAVWJ51tugQ3lFbCRODl7BzPEAnmJ1RsOgNmc
 ArYSB/8vAJspBFSz++hPVoh6QYmTM5+wgIxkFlCXWD9PCCTMDNTavHU28wRGwVlIqmYhVM1C
 UrWAkXkVo2RqQXFuem6xYYFRXmq5XnFibnFpXrpecn7uJkZwzGlp7WDcs+qD3iFGJg7GQ4wS
 HMxKIryC4g/jhHhTEiurUovy44tKc1KLDzFKc7AoifN+nbUwTkggPbEkNTs1tSC1CCbLxMEp
 1cCUmqVV4tlSEVDJbVC5nt+nx1Ts+9ywRPW12qc4ucvnyysZOGxI65nW+8B1Qsiaw9cDDbYy
 3mZnMznAkD19FnP/w88G3tOZ+JecW7Bo5TYZcSP/xsQXM2J5ndJcdXO+Vm9S/cc4baeBQc4z
 nxsGMs8EUyqnvNgcruapd/Hw38Ner1pD+XuUwm6p3X7vpcRvon13m8BHz97pW/kqb+28LbAi
 oif0f86D7Z++THlzo9RTSdRqV+/WzqoK8XyrxofCHAJZj/g4nNq4eg1/3i2z2xahsSF4m5Zk
 mYZDAYdqysSZUZJ28oGOWw2Czr6/LxpQVDb5TeiGCVs7NsxaEFk5o3VKqNOy499vvdT9HeQh
 o8RSnJFoqMVcVJwIALxaW14oAwAA
X-CMS-MailID: 20200613030451epcas5p101ab5aa635668f68b88f302c25b32a6d
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200613030451epcas5p101ab5aa635668f68b88f302c25b32a6d
References: <20200613024706.27975-1-alim.akhtar@samsung.com>
 <CGME20200613030451epcas5p101ab5aa635668f68b88f302c25b32a6d@epcas5p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_200456_351905_FB4B9726 
X-CRM114-Status: GOOD (  21.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
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

VGhpcyBwYXRjaCBpbnRyb2R1Y2VzIFNhbXN1bmcgVUZTIFBIWSBkcml2ZXIuIFRoaXMgZHJpdmVy
CnN1cHBvcnRzIHRvIGRlYWwgd2l0aCBwaHkgY2FsaWJyYXRpb24gYW5kIHBvd2VyIGNvbnRyb2wK
YWNjb3JkaW5nIHRvIFVGUyBob3N0IGRyaXZlcidzIGJlaGF2aW9yLgoKUmV2aWV3ZWQtYnk6IEtp
d29vbmcgS2ltIDxrd21hZC5raW1Ac2Ftc3VuZy5jb20+ClNpZ25lZC1vZmYtYnk6IFNldW5nd29u
IEplb24gPGVzc3V1akBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFsaW0gQWtodGFyIDxhbGlt
LmFraHRhckBzYW1zdW5nLmNvbT4KQ2M6IEtpc2hvbiBWaWpheSBBYnJhaGFtIEkgPGtpc2hvbkB0
aS5jb20+ClRlc3RlZC1ieTogUGF3ZcWCIENobWllbCA8cGF3ZWwubWlrb2xhai5jaG1pZWxAZ21h
aWwuY29tPgotLS0KIGRyaXZlcnMvcGh5L3NhbXN1bmcvS2NvbmZpZyAgICAgICAgICAgfCAgIDkg
KwogZHJpdmVycy9waHkvc2Ftc3VuZy9NYWtlZmlsZSAgICAgICAgICB8ICAgMSArCiBkcml2ZXJz
L3BoeS9zYW1zdW5nL3BoeS1leHlub3M3LXVmcy5oIHwgIDg2ICsrKysrKwogZHJpdmVycy9waHkv
c2Ftc3VuZy9waHktc2Ftc3VuZy11ZnMuYyB8IDM4MCArKysrKysrKysrKysrKysrKysrKysrKysr
KwogZHJpdmVycy9waHkvc2Ftc3VuZy9waHktc2Ftc3VuZy11ZnMuaCB8IDE0MyArKysrKysrKysr
CiA1IGZpbGVzIGNoYW5nZWQsIDYxOSBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNy11ZnMuaAogY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LXNhbXN1bmctdWZzLmMKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1zYW1zdW5nLXVmcy5oCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9waHkvc2Ftc3VuZy9LY29uZmlnIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnCmlu
ZGV4IDllNDgzZDFmZGFmMi4uZmMxZTNjMTdmODQyIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9z
YW1zdW5nL0tjb25maWcKKysrIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnCkBAIC0yOSw2
ICsyOSwxNSBAQCBjb25maWcgUEhZX0VYWU5PU19QQ0lFCiAJICBFbmFibGUgUENJZSBQSFkgc3Vw
cG9ydCBmb3IgRXh5bm9zIFNvQyBzZXJpZXMuCiAJICBUaGlzIGRyaXZlciBwcm92aWRlcyBQSFkg
aW50ZXJmYWNlIGZvciBFeHlub3MgUENJZSBjb250cm9sbGVyLgogCitjb25maWcgUEhZX1NBTVNV
TkdfVUZTCisJdHJpc3RhdGUgIlNBTVNVTkcgU29DIHNlcmllcyBVRlMgUEhZIGRyaXZlciIKKwlk
ZXBlbmRzIG9uIE9GICYmIChBUkNIX0VYWU5PUyB8fCBDT01QSUxFX1RFU1QpCisJc2VsZWN0IEdF
TkVSSUNfUEhZCisJaGVscAorCSAgRW5hYmxlIHRoaXMgdG8gc3VwcG9ydCB0aGUgU2Ftc3VuZyBV
RlMgUEhZIGRyaXZlciBmb3IKKwkgIFNhbXN1bmcgU29Dcy4gVGhpcyBkcml2ZXIgcHJvdmlkZXMg
dGhlIGludGVyZmFjZSBmb3IgVUZTCisJICBob3N0IGNvbnRyb2xsZXIgdG8gZG8gUEhZIHJlbGF0
ZWQgcHJvZ3JhbW1pbmcuCisKIGNvbmZpZyBQSFlfU0FNU1VOR19VU0IyCiAJdHJpc3RhdGUgIlNh
bXN1bmcgVVNCIDIuMCBQSFkgZHJpdmVyIgogCWRlcGVuZHMgb24gSEFTX0lPTUVNCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BoeS9zYW1zdW5nL01ha2VmaWxlIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9N
YWtlZmlsZQppbmRleCBkYjliMWFhMGRlNmUuLjM5NTkxMDBmZThhMiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9waHkvc2Ftc3VuZy9NYWtlZmlsZQorKysgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL01ha2Vm
aWxlCkBAIC0yLDYgKzIsNyBAQAogb2JqLSQoQ09ORklHX1BIWV9FWFlOT1NfRFBfVklERU8pCSs9
IHBoeS1leHlub3MtZHAtdmlkZW8ubwogb2JqLSQoQ09ORklHX1BIWV9FWFlOT1NfTUlQSV9WSURF
TykJKz0gcGh5LWV4eW5vcy1taXBpLXZpZGVvLm8KIG9iai0kKENPTkZJR19QSFlfRVhZTk9TX1BD
SUUpCQkrPSBwaHktZXh5bm9zLXBjaWUubworb2JqLSQoQ09ORklHX1BIWV9TQU1TVU5HX1VGUykJ
CSs9IHBoeS1zYW1zdW5nLXVmcy5vCiBvYmotJChDT05GSUdfUEhZX1NBTVNVTkdfVVNCMikJCSs9
IHBoeS1leHlub3MtdXNiMi5vCiBwaHktZXh5bm9zLXVzYjIteQkJCSs9IHBoeS1zYW1zdW5nLXVz
YjIubwogcGh5LWV4eW5vcy11c2IyLSQoQ09ORklHX1BIWV9FWFlOT1M0MjEwX1VTQjIpCSs9IHBo
eS1leHlub3M0MjEwLXVzYjIubwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHkt
ZXh5bm9zNy11ZnMuaCBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczctdWZzLmgKbmV3
IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5jNGFhYjc5MmQzMGUKLS0tIC9k
ZXYvbnVsbAorKysgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M3LXVmcy5oCkBAIC0w
LDAgKzEsODYgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8K
Ky8qCisgKiBVRlMgUEhZIGRyaXZlciBkYXRhIGZvciBTYW1zdW5nIEVYWU5PUzcgU29DCisgKgor
ICogQ29weXJpZ2h0IChDKSAyMDIwIFNhbXN1bmcgRWxlY3Ryb25pY3MgQ28uLCBMdGQuCisgKi8K
KyNpZm5kZWYgX1BIWV9FWFlOT1M3X1VGU19IXworI2RlZmluZSBfUEhZX0VYWU5PUzdfVUZTX0hf
CisKKyNpbmNsdWRlICJwaHktc2Ftc3VuZy11ZnMuaCIKKworI2RlZmluZSBFWFlOT1M3X0VNQkVE
REVEX0NPTUJPX1BIWV9DVFJMCTB4NzIwCisjZGVmaW5lIEVYWU5PUzdfRU1CRURERURfQ09NQk9f
UEhZX0NUUkxfTUFTSwkweDEKKyNkZWZpbmUgRVhZTk9TN19FTUJFRERFRF9DT01CT19QSFlfQ1RS
TF9FTglCSVQoMCkKKworLyogQ2FsaWJyYXRpb24gZm9yIHBoeSBpbml0aWFsaXphdGlvbiAqLwor
c3RhdGljIGNvbnN0IHN0cnVjdCBzYW1zdW5nX3Vmc19waHlfY2ZnIGV4eW5vczdfcHJlX2luaXRf
Y2ZnW10gPSB7CisJUEhZX0NPTU5fUkVHX0NGRygweDAwZiwgMHhmYSwgUFdSX01PREVfQU5ZKSwK
KwlQSFlfQ09NTl9SRUdfQ0ZHKDB4MDEwLCAweDgyLCBQV1JfTU9ERV9BTlkpLAorCVBIWV9DT01O
X1JFR19DRkcoMHgwMTEsIDB4MWUsIFBXUl9NT0RFX0FOWSksCisJUEhZX0NPTU5fUkVHX0NGRygw
eDAxNywgMHg4NCwgUFdSX01PREVfQU5ZKSwKKwlQSFlfVFJTVl9SRUdfQ0ZHKDB4MDM1LCAweDU4
LCBQV1JfTU9ERV9BTlkpLAorCVBIWV9UUlNWX1JFR19DRkcoMHgwMzYsIDB4MzIsIFBXUl9NT0RF
X0FOWSksCisJUEhZX1RSU1ZfUkVHX0NGRygweDAzNywgMHg0MCwgUFdSX01PREVfQU5ZKSwKKwlQ
SFlfVFJTVl9SRUdfQ0ZHKDB4MDNiLCAweDgzLCBQV1JfTU9ERV9BTlkpLAorCVBIWV9UUlNWX1JF
R19DRkcoMHgwNDIsIDB4ODgsIFBXUl9NT0RFX0FOWSksCisJUEhZX1RSU1ZfUkVHX0NGRygweDA0
MywgMHhhNiwgUFdSX01PREVfQU5ZKSwKKwlQSFlfVFJTVl9SRUdfQ0ZHKDB4MDQ4LCAweDc0LCBQ
V1JfTU9ERV9BTlkpLAorCVBIWV9UUlNWX1JFR19DRkcoMHgwNGMsIDB4NWIsIFBXUl9NT0RFX0FO
WSksCisJUEhZX1RSU1ZfUkVHX0NGRygweDA0ZCwgMHg4MywgUFdSX01PREVfQU5ZKSwKKwlQSFlf
VFJTVl9SRUdfQ0ZHKDB4MDVjLCAweDE0LCBQV1JfTU9ERV9BTlkpLAorCUVORF9VRlNfUEhZX0NG
RworfTsKKworc3RhdGljIGNvbnN0IHN0cnVjdCBzYW1zdW5nX3Vmc19waHlfY2ZnIGV4eW5vczdf
cG9zdF9pbml0X2NmZ1tdID0geworCUVORF9VRlNfUEhZX0NGRworfTsKKworLyogQ2FsaWJyYXRp
b24gZm9yIEhTIG1vZGUgc2VyaWVzIEEvQiAqLworc3RhdGljIGNvbnN0IHN0cnVjdCBzYW1zdW5n
X3Vmc19waHlfY2ZnIGV4eW5vczdfcHJlX3B3cl9oc19jZmdbXSA9IHsKKwlQSFlfQ09NTl9SRUdf
Q0ZHKDB4MDBmLCAweGZhLCBQV1JfTU9ERV9IU19BTlkpLAorCVBIWV9DT01OX1JFR19DRkcoMHgw
MTAsIDB4ODIsIFBXUl9NT0RFX0hTX0FOWSksCisJUEhZX0NPTU5fUkVHX0NGRygweDAxMSwgMHgx
ZSwgUFdSX01PREVfSFNfQU5ZKSwKKwkvKiBTZXR0aW5nIG9yZGVyOiAxc3QoMHgxNiwgMm5kKDB4
MTUpICovCisJUEhZX0NPTU5fUkVHX0NGRygweDAxNiwgMHhmZiwgUFdSX01PREVfSFNfQU5ZKSwK
KwlQSFlfQ09NTl9SRUdfQ0ZHKDB4MDE1LCAweDgwLCBQV1JfTU9ERV9IU19BTlkpLAorCVBIWV9D
T01OX1JFR19DRkcoMHgwMTcsIDB4OTQsIFBXUl9NT0RFX0hTX0FOWSksCisJUEhZX1RSU1ZfUkVH
X0NGRygweDAzNiwgMHgzMiwgUFdSX01PREVfSFNfQU5ZKSwKKwlQSFlfVFJTVl9SRUdfQ0ZHKDB4
MDM3LCAweDQzLCBQV1JfTU9ERV9IU19BTlkpLAorCVBIWV9UUlNWX1JFR19DRkcoMHgwMzgsIDB4
M2YsIFBXUl9NT0RFX0hTX0FOWSksCisJUEhZX1RSU1ZfUkVHX0NGRygweDA0MiwgMHg4OCwgUFdS
X01PREVfSFNfRzJfU0VSX0EpLAorCVBIWV9UUlNWX1JFR19DRkcoMHgwNDIsIDB4YmIsIFBXUl9N
T0RFX0hTX0cyX1NFUl9CKSwKKwlQSFlfVFJTVl9SRUdfQ0ZHKDB4MDQzLCAweGE2LCBQV1JfTU9E
RV9IU19BTlkpLAorCVBIWV9UUlNWX1JFR19DRkcoMHgwNDgsIDB4NzQsIFBXUl9NT0RFX0hTX0FO
WSksCisJUEhZX1RSU1ZfUkVHX0NGRygweDAzNCwgMHgzNSwgUFdSX01PREVfSFNfRzJfU0VSX0Ep
LAorCVBIWV9UUlNWX1JFR19DRkcoMHgwMzQsIDB4MzYsIFBXUl9NT0RFX0hTX0cyX1NFUl9CKSwK
KwlQSFlfVFJTVl9SRUdfQ0ZHKDB4MDM1LCAweDViLCBQV1JfTU9ERV9IU19HMl9TRVJfQSksCisJ
UEhZX1RSU1ZfUkVHX0NGRygweDAzNSwgMHg1YywgUFdSX01PREVfSFNfRzJfU0VSX0IpLAorCUVO
RF9VRlNfUEhZX0NGRworfTsKKworLyogQ2FsaWJyYXRpb24gZm9yIEhTIG1vZGUgc2VyaWVzIEEv
QiBhdGZlciBQTUMgKi8KK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgc2Ftc3VuZ191ZnNfcGh5X2NmZyBl
eHlub3M3X3Bvc3RfcHdyX2hzX2NmZ1tdID0geworCVBIWV9DT01OX1JFR19DRkcoMHgwMTUsIDB4
MDAsIFBXUl9NT0RFX0hTX0FOWSksCisJUEhZX1RSU1ZfUkVHX0NGRygweDA0ZCwgMHg4MywgUFdS
X01PREVfSFNfQU5ZKSwKKwlFTkRfVUZTX1BIWV9DRkcKK307CisKK3N0YXRpYyBjb25zdCBzdHJ1
Y3Qgc2Ftc3VuZ191ZnNfcGh5X2NmZyAqZXh5bm9zN191ZnNfcGh5X2NmZ3NbQ0ZHX1RBR19NQVhd
ID0geworCVtDRkdfUFJFX0lOSVRdCQk9IGV4eW5vczdfcHJlX2luaXRfY2ZnLAorCVtDRkdfUE9T
VF9JTklUXQkJPSBleHlub3M3X3Bvc3RfaW5pdF9jZmcsCisJW0NGR19QUkVfUFdSX0hTXQk9IGV4
eW5vczdfcHJlX3B3cl9oc19jZmcsCisJW0NGR19QT1NUX1BXUl9IU10JPSBleHlub3M3X3Bvc3Rf
cHdyX2hzX2NmZywKK307CisKK3N0YXRpYyBzdHJ1Y3Qgc2Ftc3VuZ191ZnNfcGh5X2RydmRhdGEg
ZXh5bm9zN191ZnNfcGh5ID0geworCS5jZmcgPSBleHlub3M3X3Vmc19waHlfY2ZncywKKwkuaXNv
bCA9IHsKKwkJLm9mZnNldCA9IEVYWU5PUzdfRU1CRURERURfQ09NQk9fUEhZX0NUUkwsCisJCS5t
YXNrID0gRVhZTk9TN19FTUJFRERFRF9DT01CT19QSFlfQ1RSTF9NQVNLLAorCQkuZW4gPSBFWFlO
T1M3X0VNQkVEREVEX0NPTUJPX1BIWV9DVFJMX0VOLAorCX0sCisJLmhhc19zeW1ib2xfY2xrID0g
MSwKK307CisKKyNlbmRpZiAvKiBfUEhZX0VYWU5PUzdfVUZTX0hfICovCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1zYW1zdW5nLXVmcy5jIGIvZHJpdmVycy9waHkvc2Ftc3Vu
Zy9waHktc2Ftc3VuZy11ZnMuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAw
MDAuLmJlMjU2MTdmNjIyYgotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcv
cGh5LXNhbXN1bmctdWZzLmMKQEAgLTAsMCArMSwzODAgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiBHUEwtMi4wLW9ubHkKKy8qCisgKiBVRlMgUEhZIGRyaXZlciBmb3IgU2Ftc3VuZyBT
b0MKKyAqCisgKiBDb3B5cmlnaHQgKEMpIDIwMjAgU2Ftc3VuZyBFbGVjdHJvbmljcyBDby4sIEx0
ZC4KKyAqIEF1dGhvcjogU2V1bmd3b24gSmVvbiA8ZXNzdXVqQGdtYWlsLmNvbT4KKyAqIEF1dGhv
cjogQWxpbSBBa2h0YXIgPGFsaW0uYWtodGFyQHNhbXN1bmcuY29tPgorICoKKyAqLworI2luY2x1
ZGUgPGxpbnV4L2Nsay5oPgorI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+CisjaW5jbHVkZSA8bGlu
dXgvZXJyLmg+CisjaW5jbHVkZSA8bGludXgvb2YuaD4KKyNpbmNsdWRlIDxsaW51eC9pby5oPgor
I2luY2x1ZGUgPGxpbnV4L2lvcG9sbC5oPgorI2luY2x1ZGUgPGxpbnV4L21mZC9zeXNjb24uaD4K
KyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KKyNpbmNsdWRlIDxsaW51eC9waHkvcGh5Lmg+Cisj
aW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+CisjaW5jbHVkZSA8bGludXgvcmVnbWFw
Lmg+CisKKyNpbmNsdWRlICJwaHktc2Ftc3VuZy11ZnMuaCIKKworI2RlZmluZSBmb3JfZWFjaF9w
aHlfbGFuZShwaHksIGkpIFwKKwlmb3IgKGkgPSAwOyBpIDwgKHBoeSktPmxhbmVfY250OyBpKysp
CisjZGVmaW5lIGZvcl9lYWNoX3BoeV9jZmcoY2ZnKSBcCisJZm9yICg7IChjZmcpLT5pZDsgKGNm
ZykrKykKKworI2RlZmluZSBQSFlfREVGX0xBTkVfQ05UCTEKKworc3RhdGljIHZvaWQgc2Ftc3Vu
Z191ZnNfcGh5X2NvbmZpZyhzdHJ1Y3Qgc2Ftc3VuZ191ZnNfcGh5ICpwaHksCisJCQljb25zdCBz
dHJ1Y3Qgc2Ftc3VuZ191ZnNfcGh5X2NmZyAqY2ZnLCB1OCBsYW5lKQoreworCWVudW0ge0xBTkVf
MCwgTEFORV8xfTsgLyogbGFuZSBpbmRleCAqLworCisJc3dpdGNoIChsYW5lKSB7CisJY2FzZSBM
QU5FXzA6CisJCXdyaXRlbChjZmctPnZhbCwgKHBoeSktPnJlZ19wbWEgKyBjZmctPm9mZl8wKTsK
KwkJYnJlYWs7CisJY2FzZSBMQU5FXzE6CisJCWlmIChjZmctPmlkID09IFBIWV9UUlNWX0JMSykK
KwkJCXdyaXRlbChjZmctPnZhbCwgKHBoeSktPnJlZ19wbWEgKyBjZmctPm9mZl8xKTsKKwkJYnJl
YWs7CisJfQorfQorCitpbnQgc2Ftc3VuZ191ZnNfcGh5X3dhaXRfZm9yX2xvY2tfYWNxKHN0cnVj
dCBwaHkgKnBoeSkKK3sKKwlzdHJ1Y3Qgc2Ftc3VuZ191ZnNfcGh5ICp1ZnNfcGh5ID0gZ2V0X3Nh
bXN1bmdfdWZzX3BoeShwaHkpOworCWNvbnN0IHVuc2lnbmVkIGludCB0aW1lb3V0X3VzID0gMTAw
MDAwOworCWNvbnN0IHVuc2lnbmVkIGludCBzbGVlcF91cyA9IDEwOworCXUzMiB2YWw7CisJaW50
IGVycjsKKworCWVyciA9IHJlYWRsX3BvbGxfdGltZW91dCgKKwkJCXVmc19waHktPnJlZ19wbWEg
KyBQSFlfQVBCX0FERFIoUEhZX1BMTF9MT0NLX1NUQVRVUyksCisJCQl2YWwsICh2YWwgJiBQSFlf
UExMX0xPQ0tfQklUKSwgc2xlZXBfdXMsIHRpbWVvdXRfdXMpOworCWlmIChlcnIpIHsKKwkJZGV2
X2Vycih1ZnNfcGh5LT5kZXYsCisJCQkiZmFpbGVkIHRvIGdldCBwaHkgcGxsIGxvY2sgYWNxdWlz
aXRpb24gJWRcbiIsIGVycik7CisJCWdvdG8gb3V0OworCX0KKworCWVyciA9IHJlYWRsX3BvbGxf
dGltZW91dCgKKwkJCXVmc19waHktPnJlZ19wbWEgKyBQSFlfQVBCX0FERFIoUEhZX0NEUl9MT0NL
X1NUQVRVUyksCisJCQl2YWwsICh2YWwgJiBQSFlfQ0RSX0xPQ0tfQklUKSwgc2xlZXBfdXMsIHRp
bWVvdXRfdXMpOworCWlmIChlcnIpIHsKKwkJZGV2X2Vycih1ZnNfcGh5LT5kZXYsCisJCQkiZmFp
bGVkIHRvIGdldCBwaHkgY2RyIGxvY2sgYWNxdWlzaXRpb24gJWRcbiIsIGVycik7CisJCWdvdG8g
b3V0OworCX0KKworb3V0OgorCXJldHVybiBlcnI7Cit9CisKK2ludCBzYW1zdW5nX3Vmc19waHlf
Y2FsaWJyYXRlKHN0cnVjdCBwaHkgKnBoeSkKK3sKKwlzdHJ1Y3Qgc2Ftc3VuZ191ZnNfcGh5ICp1
ZnNfcGh5ID0gZ2V0X3NhbXN1bmdfdWZzX3BoeShwaHkpOworCXN0cnVjdCBzYW1zdW5nX3Vmc19w
aHlfY2ZnICoqY2ZncyA9IHVmc19waHktPmNmZzsKKwljb25zdCBzdHJ1Y3Qgc2Ftc3VuZ191ZnNf
cGh5X2NmZyAqY2ZnOworCWludCBpOworCWludCBlcnIgPSAwOworCisJaWYgKHVubGlrZWx5KHVm
c19waHktPnVmc19waHlfc3RhdGUgPCBDRkdfUFJFX0lOSVQgfHwKKwkJICAgICB1ZnNfcGh5LT51
ZnNfcGh5X3N0YXRlID49IENGR19UQUdfTUFYKSkgeworCQlkZXZfZXJyKHVmc19waHktPmRldiwg
ImludmFsaWQgcGh5IGNvbmZpZyBpbmRleCAlZFxuIiwKKwkJCQkJCQl1ZnNfcGh5LT51ZnNfcGh5
X3N0YXRlKTsKKwkJcmV0dXJuIC1FSU5WQUw7CisJfQorCisJaWYgKHVmc19waHktPmlzX3ByZV9p
bml0KQorCQl1ZnNfcGh5LT5pc19wcmVfaW5pdCA9IGZhbHNlOworCWlmICh1ZnNfcGh5LT5pc19w
b3N0X2luaXQpIHsKKwkJdWZzX3BoeS0+aXNfcG9zdF9pbml0ID0gZmFsc2U7CisJCXVmc19waHkt
PnVmc19waHlfc3RhdGUgPSBDRkdfUE9TVF9JTklUOworCX0KKwlpZiAodWZzX3BoeS0+aXNfcHJl
X3BtYykgeworCQl1ZnNfcGh5LT5pc19wcmVfcG1jID0gZmFsc2U7CisJCXVmc19waHktPnVmc19w
aHlfc3RhdGUgPSBDRkdfUFJFX1BXUl9IUzsKKwl9CisJaWYgKHVmc19waHktPmlzX3Bvc3RfcG1j
KSB7CisJCXVmc19waHktPmlzX3Bvc3RfcG1jID0gZmFsc2U7CisJCXVmc19waHktPnVmc19waHlf
c3RhdGUgPSBDRkdfUE9TVF9QV1JfSFM7CisJfQorCisJc3dpdGNoICh1ZnNfcGh5LT51ZnNfcGh5
X3N0YXRlKSB7CisJY2FzZSBDRkdfUFJFX0lOSVQ6CisJCXVmc19waHktPmlzX3Bvc3RfaW5pdCA9
IHRydWU7CisJCWJyZWFrOworCWNhc2UgQ0ZHX1BPU1RfSU5JVDoKKwkJdWZzX3BoeS0+aXNfcHJl
X3BtYyA9IHRydWU7CisJCWJyZWFrOworCWNhc2UgQ0ZHX1BSRV9QV1JfSFM6CisJCXVmc19waHkt
PmlzX3Bvc3RfcG1jID0gdHJ1ZTsKKwkJYnJlYWs7CisJY2FzZSBDRkdfUE9TVF9QV1JfSFM6CisJ
CWJyZWFrOworCWRlZmF1bHQ6CisJCWRldl9lcnIodWZzX3BoeS0+ZGV2LCAid3Jvbmcgc3RhdGUg
Zm9yIHBoeSBjYWxpYnJhdGlvblxuIik7CisJfQorCisJY2ZnID0gY2Znc1t1ZnNfcGh5LT51ZnNf
cGh5X3N0YXRlXTsKKwlpZiAoIWNmZykKKwkJZ290byBvdXQ7CisKKwlmb3JfZWFjaF9waHlfY2Zn
KGNmZykgeworCQlmb3JfZWFjaF9waHlfbGFuZSh1ZnNfcGh5LCBpKSB7CisJCQlzYW1zdW5nX3Vm
c19waHlfY29uZmlnKHVmc19waHksIGNmZywgaSk7CisJCX0KKwl9CisKKwlpZiAodWZzX3BoeS0+
dWZzX3BoeV9zdGF0ZSA9PSBDRkdfUE9TVF9QV1JfSFMpCisJCWVyciA9IHNhbXN1bmdfdWZzX3Bo
eV93YWl0X2Zvcl9sb2NrX2FjcShwaHkpOworb3V0OgorCXJldHVybiBlcnI7Cit9CisKK3N0YXRp
YyBpbnQgc2Ftc3VuZ191ZnNfcGh5X3N5bWJvbF9jbGtfaW5pdChzdHJ1Y3Qgc2Ftc3VuZ191ZnNf
cGh5ICpwaHkpCit7CisJaW50IHJldCA9IDA7CisKKwlwaHktPnR4MF9zeW1ib2xfY2xrID0gZGV2
bV9jbGtfZ2V0KHBoeS0+ZGV2LCAidHgwX3N5bWJvbF9jbGsiKTsKKwlpZiAoSVNfRVJSKHBoeS0+
dHgwX3N5bWJvbF9jbGspKSB7CisJCWRldl9lcnIocGh5LT5kZXYsICJmYWlsZWQgdG8gZ2V0IHR4
MF9zeW1ib2xfY2xrIGNsb2NrXG4iKTsKKwkJZ290byBvdXQ7CisJfQorCisJcGh5LT5yeDBfc3lt
Ym9sX2NsayA9IGRldm1fY2xrX2dldChwaHktPmRldiwgInJ4MF9zeW1ib2xfY2xrIik7CisJaWYg
KElTX0VSUihwaHktPnJ4MF9zeW1ib2xfY2xrKSkgeworCQlkZXZfZXJyKHBoeS0+ZGV2LCAiZmFp
bGVkIHRvIGdldCByeDBfc3ltYm9sX2NsayBjbG9ja1xuIik7CisJCWdvdG8gb3V0OworCX0KKwor
CXBoeS0+cngxX3N5bWJvbF9jbGsgPSBkZXZtX2Nsa19nZXQocGh5LT5kZXYsICJyeDFfc3ltYm9s
X2NsayIpOworCWlmIChJU19FUlIocGh5LT5yeDBfc3ltYm9sX2NsaykpIHsKKwkJZGV2X2Vycihw
aHktPmRldiwgImZhaWxlZCB0byBnZXQgcngxX3N5bWJvbF9jbGsgY2xvY2tcbiIpOworCQlnb3Rv
IG91dDsKKwl9CisKKwlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUocGh5LT50eDBfc3ltYm9sX2Ns
ayk7CisJaWYgKHJldCkgeworCQlkZXZfZXJyKHBoeS0+ZGV2LCAiJXM6IHR4MF9zeW1ib2xfY2xr
IGVuYWJsZSBmYWlsZWQgJWRcbiIsCisJCQkJX19mdW5jX18sIHJldCk7CisJCWdvdG8gb3V0Owor
CX0KKwlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUocGh5LT5yeDBfc3ltYm9sX2Nsayk7CisJaWYg
KHJldCkgeworCQlkZXZfZXJyKHBoeS0+ZGV2LCAiJXM6IHJ4MF9zeW1ib2xfY2xrIGVuYWJsZSBm
YWlsZWQgJWRcbiIsCisJCQkJX19mdW5jX18sIHJldCk7CisJCWdvdG8gb3V0OworCX0KKwlyZXQg
PSBjbGtfcHJlcGFyZV9lbmFibGUocGh5LT5yeDFfc3ltYm9sX2Nsayk7CisJaWYgKHJldCkgewor
CQlkZXZfZXJyKHBoeS0+ZGV2LCAiJXM6IHJ4MV9zeW1ib2xfY2xrIGVuYWJsZSBmYWlsZWQgJWRc
biIsCisJCQkJX19mdW5jX18sIHJldCk7CisJCWdvdG8gb3V0OworCX0KK291dDoKKwlyZXR1cm4g
cmV0OworfQorCitzdGF0aWMgaW50IHNhbXN1bmdfdWZzX3BoeV9jbGtzX2luaXQoc3RydWN0IHNh
bXN1bmdfdWZzX3BoeSAqcGh5KQoreworCWludCByZXQ7CisKKwlwaHktPnJlZl9jbGsgPSBkZXZt
X2Nsa19nZXQocGh5LT5kZXYsICJyZWZfY2xrIik7CisJaWYgKElTX0VSUihwaHktPnJlZl9jbGsp
KQorCQlkZXZfZXJyKHBoeS0+ZGV2LCAiZmFpbGVkIHRvIGdldCByZWZfY2xrIGNsb2NrXG4iKTsK
KworCXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShwaHktPnJlZl9jbGspOworCWlmIChyZXQpIHsK
KwkJZGV2X2VycihwaHktPmRldiwgIiVzOiByZWZfY2xrIGVuYWJsZSBmYWlsZWQgJWRcbiIsCisJ
CQkJX19mdW5jX18sIHJldCk7CisJCXJldHVybiByZXQ7CisJfQorCisJZGV2X2luZm8ocGh5LT5k
ZXYsICJVRlMgTVBIWSByZWZfY2xrX3JhdGUgPSAlbGRcbiIsIGNsa19nZXRfcmF0ZShwaHktPnJl
Zl9jbGspKTsKKworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IHNhbXN1bmdfdWZzX3BoeV9p
bml0KHN0cnVjdCBwaHkgKnBoeSkKK3sKKwlzdHJ1Y3Qgc2Ftc3VuZ191ZnNfcGh5ICpfcGh5ID0g
Z2V0X3NhbXN1bmdfdWZzX3BoeShwaHkpOworCWludCByZXQ7CisKKwlfcGh5LT5sYW5lX2NudCA9
IHBoeS0+YXR0cnMuYnVzX3dpZHRoOworCV9waHktPnVmc19waHlfc3RhdGUgPSBDRkdfUFJFX0lO
SVQ7CisKKwkvKioKKwkgKiBJbiB1ZnMsIFBIWSBuZWVkIHRvIGJlIGNhbGlicmF0ZWQgYXQgZGlm
ZmVyZW50IHN0YWdlcyAvIHN0YXRlCisJICogbWFpbmx5IGJlZm9yZSBMaW5rc3RhcnR1cCwgYWZ0
ZXIgTGlua3N0YXJ0dXAsIGJlZm9yZSBwb3dlcgorCSAqIG1vZGUgY2hhbmdlIGFuZCBhZnRlciBw
b3dlciBtb2RlIGNoYW5nZS4KKwkgKiBCZWxvdyBzdGF0ZSBtYWNoaW5lIGluaXRpYWxpemUgdGhl
IGluaXRpYWwgc3RhdGUgdG8gaGFuZGxlCisJICogUEhZIGNhbGlicmF0aW9uIGF0IHZhcmlvdXMg
c3RhZ2VzIG9mIFVGUyBpbml0aWFsaXphdGlvbiBhbmQgcG93ZXIKKwkgKiBtb2RlIGNoYW5nZXMK
KwkgKi8KKwlfcGh5LT5pc19wcmVfaW5pdCA9IHRydWU7CisJX3BoeS0+aXNfcG9zdF9pbml0ID0g
ZmFsc2U7CisJX3BoeS0+aXNfcHJlX3BtYyA9IGZhbHNlOworCV9waHktPmlzX3Bvc3RfcG1jID0g
ZmFsc2U7CisKKworCWlmIChfcGh5LT5kcnZkYXRhLT5oYXNfc3ltYm9sX2NsaykgeworCQlyZXQg
PSBzYW1zdW5nX3Vmc19waHlfc3ltYm9sX2Nsa19pbml0KF9waHkpOworCQlpZiAocmV0KQorCQkJ
ZGV2X2VycihfcGh5LT5kZXYsCisJCQkJImZhaWxlZCB0byBzZXQgdWZzIHBoeSBzeW1ib2wgY2xv
Y2tzXG4iKTsKKwl9CisKKwlyZXQgPSBzYW1zdW5nX3Vmc19waHlfY2xrc19pbml0KF9waHkpOwor
CWlmIChyZXQpCisJCWRldl9lcnIoX3BoeS0+ZGV2LCAiZmFpbGVkIHRvIHNldCB1ZnMgcGh5ICBj
bG9ja3NcbiIpOworCisJc2Ftc3VuZ191ZnNfcGh5X2NhbGlicmF0ZShwaHkpOworCisJcmV0dXJu
IDA7Cit9CisKK3N0YXRpYyBpbnQgc2Ftc3VuZ191ZnNfcGh5X3Bvd2VyX29uKHN0cnVjdCBwaHkg
KnBoeSkKK3sKKwlzdHJ1Y3Qgc2Ftc3VuZ191ZnNfcGh5ICpfcGh5ID0gZ2V0X3NhbXN1bmdfdWZz
X3BoeShwaHkpOworCisJc2Ftc3VuZ191ZnNfcGh5X2N0cmxfaXNvbChfcGh5LCBmYWxzZSk7CisJ
cmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgc2Ftc3VuZ191ZnNfcGh5X3Bvd2VyX29mZihzdHJ1
Y3QgcGh5ICpwaHkpCit7CisJc3RydWN0IHNhbXN1bmdfdWZzX3BoeSAqX3BoeSA9IGdldF9zYW1z
dW5nX3Vmc19waHkocGh5KTsKKworCXNhbXN1bmdfdWZzX3BoeV9jdHJsX2lzb2woX3BoeSwgdHJ1
ZSk7CisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgc2Ftc3VuZ191ZnNfcGh5X3NldF9tb2Rl
KHN0cnVjdCBwaHkgKmdlbmVyaWNfcGh5LAorCQkJCQllbnVtIHBoeV9tb2RlIG1vZGUsIGludCBz
dWJtb2RlKQoreworCXN0cnVjdCBzYW1zdW5nX3Vmc19waHkgKl9waHkgPSBnZXRfc2Ftc3VuZ191
ZnNfcGh5KGdlbmVyaWNfcGh5KTsKKworCV9waHktPm1vZGUgPSBQSFlfTU9ERV9JTlZBTElEOwor
CisJaWYgKG1vZGUgPiAwKQorCQlfcGh5LT5tb2RlID0gbW9kZTsKKworCXJldHVybiAwOworfQor
CitzdGF0aWMgaW50IHNhbXN1bmdfdWZzX3BoeV9leGl0KHN0cnVjdCBwaHkgKnBoeSkKK3sKKwlz
dHJ1Y3Qgc2Ftc3VuZ191ZnNfcGh5ICpfcGh5ID0gZ2V0X3NhbXN1bmdfdWZzX3BoeShwaHkpOwor
CisJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKF9waHktPnJlZl9jbGspOworCisJaWYgKF9waHktPmRy
dmRhdGEtPmhhc19zeW1ib2xfY2xrKSB7CisJCWNsa19kaXNhYmxlX3VucHJlcGFyZShfcGh5LT50
eDBfc3ltYm9sX2Nsayk7CisJCWNsa19kaXNhYmxlX3VucHJlcGFyZShfcGh5LT5yeDBfc3ltYm9s
X2Nsayk7CisJCWNsa19kaXNhYmxlX3VucHJlcGFyZShfcGh5LT5yeDFfc3ltYm9sX2Nsayk7CisJ
fQorCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBzdHJ1Y3QgcGh5X29wcyBzYW1zdW5nX3Vmc19w
aHlfb3BzID0geworCS5pbml0CQk9IHNhbXN1bmdfdWZzX3BoeV9pbml0LAorCS5leGl0CQk9IHNh
bXN1bmdfdWZzX3BoeV9leGl0LAorCS5wb3dlcl9vbgk9IHNhbXN1bmdfdWZzX3BoeV9wb3dlcl9v
biwKKwkucG93ZXJfb2ZmCT0gc2Ftc3VuZ191ZnNfcGh5X3Bvd2VyX29mZiwKKwkuY2FsaWJyYXRl
CT0gc2Ftc3VuZ191ZnNfcGh5X2NhbGlicmF0ZSwKKwkuc2V0X21vZGUJPSBzYW1zdW5nX3Vmc19w
aHlfc2V0X21vZGUsCisJLm93bmVyICAgICAgICAgID0gVEhJU19NT0RVTEUsCit9OworCitzdGF0
aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBzYW1zdW5nX3Vmc19waHlfbWF0Y2hbXTsKKwor
c3RhdGljIGludCBzYW1zdW5nX3Vmc19waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKK3sKKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2OworCWNvbnN0IHN0cnVj
dCBvZl9kZXZpY2VfaWQgKm1hdGNoOworCXN0cnVjdCBzYW1zdW5nX3Vmc19waHkgKnBoeTsKKwlz
dHJ1Y3QgcGh5ICpnZW5fcGh5OworCXN0cnVjdCBwaHlfcHJvdmlkZXIgKnBoeV9wcm92aWRlcjsK
Kwljb25zdCBzdHJ1Y3Qgc2Ftc3VuZ191ZnNfcGh5X2RydmRhdGEgKmRydmRhdGE7CisJaW50IGVy
ciA9IDA7CisKKwltYXRjaCA9IG9mX21hdGNoX25vZGUoc2Ftc3VuZ191ZnNfcGh5X21hdGNoLCBk
ZXYtPm9mX25vZGUpOworCWlmICghbWF0Y2gpIHsKKwkJZXJyID0gLUVJTlZBTDsKKwkJZGV2X2Vy
cihkZXYsICJmYWlsZWQgdG8gZ2V0IG1hdGNoX25vZGVcbiIpOworCQlnb3RvIG91dDsKKwl9CisK
KwlwaHkgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKnBoeSksIEdGUF9LRVJORUwpOworCWlm
ICghcGh5KSB7CisJCWVyciA9IC1FTk9NRU07CisJCWdvdG8gb3V0OworCX0KKworCXBoeS0+cmVn
X3BtYSA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZV9ieW5hbWUocGRldiwgInBoeS1w
bWEiKTsKKwlpZiAoSVNfRVJSKHBoeS0+cmVnX3BtYSkpIHsKKwkJZXJyID0gUFRSX0VSUihwaHkt
PnJlZ19wbWEpOworCQlnb3RvIG91dDsKKwl9CisKKwlwaHktPnJlZ19wbXUgPSBzeXNjb25fcmVn
bWFwX2xvb2t1cF9ieV9waGFuZGxlKAorCQkJCWRldi0+b2Zfbm9kZSwgInNhbXN1bmcscG11LXN5
c2NvbiIpOworCWlmIChJU19FUlIocGh5LT5yZWdfcG11KSkgeworCQllcnIgPSBQVFJfRVJSKHBo
eS0+cmVnX3BtdSk7CisJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHN5c2NvbiByZW1hcCBmb3IgcG11
XG4iKTsKKwkJZ290byBvdXQ7CisJfQorCisJZ2VuX3BoeSA9IGRldm1fcGh5X2NyZWF0ZShkZXYs
IE5VTEwsICZzYW1zdW5nX3Vmc19waHlfb3BzKTsKKwlpZiAoSVNfRVJSKGdlbl9waHkpKSB7CisJ
CWVyciA9IFBUUl9FUlIoZ2VuX3BoeSk7CisJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGNyZWF0
ZSBQSFkgZm9yIHVmcy1waHlcbiIpOworCQlnb3RvIG91dDsKKwl9CisKKwlkcnZkYXRhID0gbWF0
Y2gtPmRhdGE7CisJcGh5LT5kZXYgPSBkZXY7CisJcGh5LT5kcnZkYXRhID0gZHJ2ZGF0YTsKKwlw
aHktPmNmZyA9IChzdHJ1Y3Qgc2Ftc3VuZ191ZnNfcGh5X2NmZyAqKilkcnZkYXRhLT5jZmc7CisJ
cGh5LT5pc29sID0gJmRydmRhdGEtPmlzb2w7CisJcGh5LT5sYW5lX2NudCA9IFBIWV9ERUZfTEFO
RV9DTlQ7CisKKwlwaHlfc2V0X2RydmRhdGEoZ2VuX3BoeSwgcGh5KTsKKworCXBoeV9wcm92aWRl
ciA9IGRldm1fb2ZfcGh5X3Byb3ZpZGVyX3JlZ2lzdGVyKGRldiwgb2ZfcGh5X3NpbXBsZV94bGF0
ZSk7CisJaWYgKElTX0VSUihwaHlfcHJvdmlkZXIpKSB7CisJCWVyciA9IFBUUl9FUlIocGh5X3By
b3ZpZGVyKTsKKwkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gcmVnaXN0ZXIgcGh5LXByb3ZpZGVy
XG4iKTsKKwkJZ290byBvdXQ7CisJfQorb3V0OgorCXJldHVybiBlcnI7Cit9CisKK3N0YXRpYyBj
b25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHNhbXN1bmdfdWZzX3BoeV9tYXRjaFtdID0geworCXsK
KwkJLmNvbXBhdGlibGUgPSAic2Ftc3VuZyxleHlub3M3LXVmcy1waHkiLAorCQkuZGF0YSA9ICZl
eHlub3M3X3Vmc19waHksCisJfSwKKwl7fSwKK307CitNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBz
YW1zdW5nX3Vmc19waHlfbWF0Y2gpOworCitzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBz
YW1zdW5nX3Vmc19waHlfZHJpdmVyID0geworCS5wcm9iZSAgPSBzYW1zdW5nX3Vmc19waHlfcHJv
YmUsCisJLmRyaXZlciA9IHsKKwkJLm5hbWUgPSAic2Ftc3VuZy11ZnMtcGh5IiwKKwkJLm9mX21h
dGNoX3RhYmxlID0gc2Ftc3VuZ191ZnNfcGh5X21hdGNoLAorCX0sCit9OworbW9kdWxlX3BsYXRm
b3JtX2RyaXZlcihzYW1zdW5nX3Vmc19waHlfZHJpdmVyKTsKK01PRFVMRV9ERVNDUklQVElPTigi
U2Ftc3VuZyBTb0MgVUZTIFBIWSBEcml2ZXIiKTsKK01PRFVMRV9BVVRIT1IoIlNldW5nd29uIEpl
b24gPGVzc3V1akBnbWFpbC5jb20+Iik7CitNT0RVTEVfQVVUSE9SKCJBbGltIEFraHRhciA8YWxp
bS5ha2h0YXJAc2Ftc3VuZy5jb20+Iik7CitNT0RVTEVfTElDRU5TRSgiR1BMIHYyIik7CmRpZmYg
LS1naXQgYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1zYW1zdW5nLXVmcy5oIGIvZHJpdmVycy9w
aHkvc2Ftc3VuZy9waHktc2Ftc3VuZy11ZnMuaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAw
MDAwMDAwMDAwMDAuLjFjYzgxNGQ5NzJlOAotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvcGh5
L3NhbXN1bmcvcGh5LXNhbXN1bmctdWZzLmgKQEAgLTAsMCArMSwxNDMgQEAKKy8qIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8KKy8qCisgKiBVRlMgUEhZIGRyaXZlciBm
b3IgU2Ftc3VuZyBFWFlOT1MgU29DCisgKgorICogQ29weXJpZ2h0IChDKSAyMDIwIFNhbXN1bmcg
RWxlY3Ryb25pY3MgQ28uLCBMdGQuCisgKiBBdXRob3I6IFNldW5nd29uIEplb24gPGVzc3V1akBn
bWFpbC5jb20+CisgKiBBdXRob3I6IEFsaW0gQWtodGFyIDxhbGltLmFraHRhckBzYW1zdW5nLmNv
bT4KKyAqCisgKi8KKyNpZm5kZWYgX1BIWV9TQU1TVU5HX1VGU18KKyNkZWZpbmUgX1BIWV9TQU1T
VU5HX1VGU18KKworI2RlZmluZSBQSFlfQ09NTl9CTEsJMQorI2RlZmluZSBQSFlfVFJTVl9CTEsJ
MgorI2RlZmluZSBFTkRfVUZTX1BIWV9DRkcgeyAwIH0KKyNkZWZpbmUgUEhZX1RSU1ZfQ0hfT0ZG
U0VUCTB4MzAKKyNkZWZpbmUgUEhZX0FQQl9BRERSKG9mZikJKChvZmYpIDw8IDIpCisKKyNkZWZp
bmUgUEhZX0NPTU5fUkVHX0NGRyhvLCB2LCBkKSB7CVwKKwkub2ZmXzAgPSBQSFlfQVBCX0FERFIo
KG8pKSwJXAorCS5vZmZfMSA9IDAsCQlcCisJLnZhbCA9ICh2KSwJCVwKKwkuZGVzYyA9IChkKSwJ
CVwKKwkuaWQgPSBQSFlfQ09NTl9CTEssCVwKK30KKworI2RlZmluZSBQSFlfVFJTVl9SRUdfQ0ZH
KG8sIHYsIGQpIHsJXAorCS5vZmZfMCA9IFBIWV9BUEJfQUREUigobykpLAlcCisJLm9mZl8xID0g
UEhZX0FQQl9BRERSKChvKSArIFBIWV9UUlNWX0NIX09GRlNFVCksCVwKKwkudmFsID0gKHYpLAkJ
XAorCS5kZXNjID0gKGQpLAkJXAorCS5pZCA9IFBIWV9UUlNWX0JMSywJXAorfQorCisvKiBVRlMg
UEhZIHJlZ2lzdGVycyAqLworI2RlZmluZSBQSFlfUExMX0xPQ0tfU1RBVFVTCTB4MWUKKyNkZWZp
bmUgUEhZX0NEUl9MT0NLX1NUQVRVUwkweDVlCisKKyNkZWZpbmUgUEhZX1BMTF9MT0NLX0JJVAlC
SVQoNSkKKyNkZWZpbmUgUEhZX0NEUl9MT0NLX0JJVAlCSVQoNCkKKworLyogZGVzY3JpcHRpb24g
Zm9yIFBIWSBjYWxpYnJhdGlvbiAqLworZW51bSB7CisJLyogYXBwbGljYWJsZSB0byBhbnkgKi8K
KwlQV1JfREVTQ19BTlkJPSAwLAorCS8qIG1vZGUgKi8KKwlQV1JfREVTQ19QV00JPSAxLAorCVBX
Ul9ERVNDX0hTCT0gMiwKKwkvKiBzZXJpZXMgKi8KKwlQV1JfREVTQ19TRVJfQQk9IDEsCisJUFdS
X0RFU0NfU0VSX0IJPSAyLAorCS8qIGdlYXIgKi8KKwlQV1JfREVTQ19HMQk9IDEsCisJUFdSX0RF
U0NfRzIJPSAyLAorCVBXUl9ERVNDX0czCT0gMywKKwkvKiBmaWVsZCBtYXNrICovCisJTURfTUFT
SwkJPSAweDMsCisJU1JfTUFTSwkJPSAweDMsCisJR1JfTUFTSwkJPSAweDcsCit9OworCisjZGVm
aW5lIFBXUl9NT0RFX0hTX0cxX0FOWQlQV1JfTU9ERV9IUyhQV1JfREVTQ19HMSwgUFdSX0RFU0Nf
QU5ZKQorI2RlZmluZSBQV1JfTU9ERV9IU19HMV9TRVJfQQlQV1JfTU9ERV9IUyhQV1JfREVTQ19H
MSwgUFdSX0RFU0NfU0VSX0EpCisjZGVmaW5lIFBXUl9NT0RFX0hTX0cxX1NFUl9CCVBXUl9NT0RF
X0hTKFBXUl9ERVNDX0cxLCBQV1JfREVTQ19TRVJfQikKKyNkZWZpbmUgUFdSX01PREVfSFNfRzJf
QU5ZCVBXUl9NT0RFX0hTKFBXUl9ERVNDX0cyLCBQV1JfREVTQ19BTlkpCisjZGVmaW5lIFBXUl9N
T0RFX0hTX0cyX1NFUl9BCVBXUl9NT0RFX0hTKFBXUl9ERVNDX0cyLCBQV1JfREVTQ19TRVJfQSkK
KyNkZWZpbmUgUFdSX01PREVfSFNfRzJfU0VSX0IJUFdSX01PREVfSFMoUFdSX0RFU0NfRzIsIFBX
Ul9ERVNDX1NFUl9CKQorI2RlZmluZSBQV1JfTU9ERV9IU19HM19BTlkJUFdSX01PREVfSFMoUFdS
X0RFU0NfRzMsIFBXUl9ERVNDX0FOWSkKKyNkZWZpbmUgUFdSX01PREVfSFNfRzNfU0VSX0EJUFdS
X01PREVfSFMoUFdSX0RFU0NfRzMsIFBXUl9ERVNDX1NFUl9BKQorI2RlZmluZSBQV1JfTU9ERV9I
U19HM19TRVJfQglQV1JfTU9ERV9IUyhQV1JfREVTQ19HMywgUFdSX0RFU0NfU0VSX0IpCisjZGVm
aW5lIFBXUl9NT0RFKGcsIHMsIG0pCSgoKChnKSAmIEdSX01BU0spIDw8IDQpIHxcCisJCQkJICgo
KHMpICYgU1JfTUFTSykgPDwgMikgfCAoKG0pICYgTURfTUFTSykpCisjZGVmaW5lIFBXUl9NT0RF
X1BXTV9BTlkJUFdSX01PREUoUFdSX0RFU0NfQU5ZLFwKKwkJCQkJIFBXUl9ERVNDX0FOWSwgUFdS
X0RFU0NfUFdNKQorI2RlZmluZSBQV1JfTU9ERV9IUyhnLCBzKQkoKCgoZykgJiBHUl9NQVNLKSA8
PCA0KSB8XAorCQkJCSAoKChzKSAmIFNSX01BU0spIDw8IDIpIHwgUFdSX0RFU0NfSFMpCisjZGVm
aW5lIFBXUl9NT0RFX0hTX0FOWQkJUFdSX01PREUoUFdSX0RFU0NfQU5ZLFwKKwkJCQkJIFBXUl9E
RVNDX0FOWSwgUFdSX0RFU0NfSFMpCisjZGVmaW5lIFBXUl9NT0RFX0FOWQkJUFdSX01PREUoUFdS
X0RFU0NfQU5ZLFwKKwkJCQkJIFBXUl9ERVNDX0FOWSwgUFdSX0RFU0NfQU5ZKQorLyogUEhZIGNh
bGlicmF0aW9uIHBvaW50L3N0YXRlICovCitlbnVtIHsKKwlDRkdfUFJFX0lOSVQsCisJQ0ZHX1BP
U1RfSU5JVCwKKwlDRkdfUFJFX1BXUl9IUywKKwlDRkdfUE9TVF9QV1JfSFMsCisJQ0ZHX1RBR19N
QVgsCit9OworCitzdHJ1Y3Qgc2Ftc3VuZ191ZnNfcGh5X2NmZyB7CisJdTMyIG9mZl8wOworCXUz
MiBvZmZfMTsKKwl1MzIgdmFsOworCXU4IGRlc2M7CisJdTggaWQ7Cit9OworCitzdHJ1Y3Qgc2Ft
c3VuZ191ZnNfcGh5X2RydmRhdGEgeworCWNvbnN0IHN0cnVjdCBzYW1zdW5nX3Vmc19waHlfY2Zn
ICoqY2ZnOworCXN0cnVjdCBwbXVfaXNvbCB7CisJCXUzMiBvZmZzZXQ7CisJCXUzMiBtYXNrOwor
CQl1MzIgZW47CisJfSBpc29sOworCWJvb2wgaGFzX3N5bWJvbF9jbGs7Cit9OworCitzdHJ1Y3Qg
c2Ftc3VuZ191ZnNfcGh5IHsKKwlzdHJ1Y3QgZGV2aWNlICpkZXY7CisJdm9pZCBfX2lvbWVtICpy
ZWdfcG1hOworCXN0cnVjdCByZWdtYXAgKnJlZ19wbXU7CisJc3RydWN0IGNsayAqcmVmX2NsazsK
KwlzdHJ1Y3QgY2xrICpyZWZfY2xrX3BhcmVudDsKKwlzdHJ1Y3QgY2xrICp0eDBfc3ltYm9sX2Ns
azsKKwlzdHJ1Y3QgY2xrICpyeDBfc3ltYm9sX2NsazsKKwlzdHJ1Y3QgY2xrICpyeDFfc3ltYm9s
X2NsazsKKwljb25zdCBzdHJ1Y3Qgc2Ftc3VuZ191ZnNfcGh5X2RydmRhdGEgKmRydmRhdGE7CisJ
c3RydWN0IHNhbXN1bmdfdWZzX3BoeV9jZmcgKipjZmc7CisJY29uc3Qgc3RydWN0IHBtdV9pc29s
ICppc29sOworCXU4IGxhbmVfY250OworCWludCB1ZnNfcGh5X3N0YXRlOworCWVudW0gcGh5X21v
ZGUgbW9kZTsKKwlib29sIGlzX3ByZV9pbml0OworCWJvb2wgaXNfcG9zdF9pbml0OworCWJvb2wg
aXNfcHJlX3BtYzsKKwlib29sIGlzX3Bvc3RfcG1jOworfTsKKworc3RhdGljIGlubGluZSBzdHJ1
Y3Qgc2Ftc3VuZ191ZnNfcGh5ICpnZXRfc2Ftc3VuZ191ZnNfcGh5KHN0cnVjdCBwaHkgKnBoeSkK
K3sKKwlyZXR1cm4gKHN0cnVjdCBzYW1zdW5nX3Vmc19waHkgKilwaHlfZ2V0X2RydmRhdGEocGh5
KTsKK30KKworc3RhdGljIGlubGluZSB2b2lkIHNhbXN1bmdfdWZzX3BoeV9jdHJsX2lzb2woCisJ
CXN0cnVjdCBzYW1zdW5nX3Vmc19waHkgKnBoeSwgdTMyIGlzb2wpCit7CisJcmVnbWFwX3VwZGF0
ZV9iaXRzKHBoeS0+cmVnX3BtdSwgcGh5LT5pc29sLT5vZmZzZXQsCisJCQlwaHktPmlzb2wtPm1h
c2ssIGlzb2wgPyAwIDogcGh5LT5pc29sLT5lbik7Cit9CisKKyNpbmNsdWRlICJwaHktZXh5bm9z
Ny11ZnMuaCIKKworI2VuZGlmIC8qIF9QSFlfU0FNU1VOR19VRlNfICovCi0tIAoyLjE3LjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
