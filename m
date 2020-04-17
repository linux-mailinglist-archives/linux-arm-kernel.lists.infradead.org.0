Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B66431AE481
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 20:12:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWOkBZbsO7WS4J2LPjBF8VsgB88wBla80LTtwe02uEE=; b=YjEqB84eU8UOZ8
	2ZmnMoWM4w1IpphIHledQkWgeOix1BKl7oNqS500Ms7CtwMSs3esPOuBE9z/pTTC4DlzLv8b19pLX
	AUWD3fJJsSIls296NXhmp4aJE6Y5Fb/4LAitovWIIFwoOhDVk+asKz7uGCoaEskFE7Cf2eqyp+RV2
	4ENDxC2L3goTtmgC27UIldV/pYlSflgHhxjVbInFQbZ9kk9zfMZsMkF5fO10jp5gDmnuMk0+OrbY/
	Qjc56NFDQH7NSXOhiTSe9Dc2EtFDfvo5BWUktCRRLuYrEXLOJzeotge1UD1aWm+w+h6raAIiOPaWI
	4cYye8CLhjsEdUWlAalg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPVTC-0002SJ-QA; Fri, 17 Apr 2020 18:12:06 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPVRW-00012P-By
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 18:10:24 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200417181019epoutp016067bd7800aa383ba4411fd5a1279eee~Grc45iELL0233302333epoutp01x
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 18:10:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200417181019epoutp016067bd7800aa383ba4411fd5a1279eee~Grc45iELL0233302333epoutp01x
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587147019;
 bh=PdZr65Wo5TW1cANP8kk5hrsoRREQWBxl8FwYNrvhuxw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UGOOz/tRh2yzMo7ExIpCDQC+5qMq0MzDLgRJKuRpYxoyCQC525DavRrCbMD8xFqXn
 jpRLPD/eTi1SxKvmxg5+1lwB47BdSIb9ETqYLEGl5GV8jIkCajOUEf7ntyfWJxvXte
 vxoLaD2gxp/md7g7dkTTuWcHj43vfe2FctKmKpZE=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200417181018epcas5p1780e8f8ae8262419dd53e1a1cdf26506~Grc30j19k2627826278epcas5p1X;
 Fri, 17 Apr 2020 18:10:18 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 08.58.04782.A01F99E5; Sat, 18 Apr 2020 03:10:18 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20200417181018epcas5p1e51c7ca0fe81df16554548df5b82e3e4~Grc3ddRR72627826278epcas5p1W;
 Fri, 17 Apr 2020 18:10:18 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200417181018epsmtrp16283c84c1c3752011f4c957ad7c7863d~Grc3cnTYy0669906699epsmtrp1L;
 Fri, 17 Apr 2020 18:10:18 +0000 (GMT)
X-AuditID: b6c32a49-89bff700000012ae-f7-5e99f10a8203
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 94.DE.04158.A01F99E5; Sat, 18 Apr 2020 03:10:18 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200417181016epsmtip11ac446900faf56c9c6768e208a0d9089~Grc1oSJCc2094920949epsmtip1H;
 Fri, 17 Apr 2020 18:10:16 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v6 06/10] dt-bindings: phy: Document Samsung UFS PHY bindings
Date: Fri, 17 Apr 2020 23:29:40 +0530
Message-Id: <20200417175944.47189-7-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200417175944.47189-1-alim.akhtar@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrLKsWRmVeSWpSXmKPExsWy7bCmhi7Xx5lxBu8Palk8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujEPddQUbRCtuX+lhbWDcJtDFyMkhIWAi8f7hBUYQW0hgN6PEgpnMXYxcQPYn
 Ron5i1dAJb4xSkzrMIZpWL1iGjtE0V5GieVfJ0A5LUwSaz+9ZAapYhPQlrg7fQsTiC0iICxx
 5Fsb2CRmgRtMEg9WuoDYwgL+Ek1vXrGB2CwCqhIvTz0Hq+cVsJE4OPcYM8Q2eYnVGw6A2ZwC
 thJtLUuhagQlTs58wgIxU16ieetssLMlBNrZJRoXtjBBNLtIzPuxnQXCFpZ4dXwLO4QtJfGy
 vw3I5gCysyV6dkF9ViOxdN4xqHJ7iQNX5rCAlDALaEqs36UPsYpPovf3EyaITl6JjjYhiGpV
 ieZ3V6E6pSUmdnezQtgeEhM/74WG4QRGic37lScwys9C8sAsJA/MQli2gJF5FaNkakFxbnpq
 sWmBYV5quV5xYm5xaV66XnJ+7iZGcKLS8tzBOOuczyFGAQ5GJR7ejr6ZcUKsiWXFlbmHGCU4
 mJVEeA+6AYV4UxIrq1KL8uOLSnNSiw8xSnOwKInzTmK9GiMkkJ5YkpqdmlqQWgSTZeLglGpg
 lHn03aFaVd/wz6ovNundvPuvsrSdSp6xMHPGzL5fF88+v+Udwse+pcJsBWvzyZcNrxT3snWo
 MLt0BrpM130WdmG9qOa09+oJhcHr2s2iMi6enmcx/S1L4eFXpnpfqkWu/FQpZH66wXDTdlML
 kSydTV82LTWf89vR/l2a29q0jPCggnirDU4KSizFGYmGWsxFxYkARoug5lADAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsWy7bCSnC7Xx5lxBmt3Clg8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujEPddQUbRCtuX+lhbWDcJtDFyMkhIWAisXrFNPYuRi4OIYHdjBIrr+5ggkhI
 S1zfOIEdwhaWWPnvOVRRE5NE66QdrCAJNgFtibvTt4A1iAAVHfnWxghiMws8Y5I49bAUxBYW
 8JU4uGE12CAWAVWJl6eeg9XzCthIHJx7jBligbzE6g0HwGxOAVuJtpalQDUcQMtsJDY8iYEo
 F5Q4OfMJC0iYWUBdYv08IYhN8hLNW2czT2AUnIWkahZC1SwkVQsYmVcxSqYWFOem5xYbFhjl
 pZbrFSfmFpfmpesl5+duYgTHlZbWDsYTJ+IPMQpwMCrx8Hb0zYwTYk0sK67MPcQowcGsJMJ7
 0A0oxJuSWFmVWpQfX1Sak1p8iFGag0VJnFc+/1ikkEB6YklqdmpqQWoRTJaJg1OqgVGJw8t7
 4tmp740ybJM7Tlp0vl9z4+SGrYUC579JSJ3Om3RF/6rJs7Qv+w6L/bxfqwGMuh8maS+Kb/Vc
 j+MKFDnKdS1C6nzbgZNWZ8/fOvWgwGXbscbEezo1pg5TZlsY72LeE5VsnCJdkDtBebvfWYeQ
 eVPsTiz/0LepUW3JHpWErO3qzGf0ZZVYijMSDbWYi4oTAYJYPHanAgAA
X-CMS-MailID: 20200417181018epcas5p1e51c7ca0fe81df16554548df5b82e3e4
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200417181018epcas5p1e51c7ca0fe81df16554548df5b82e3e4
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181018epcas5p1e51c7ca0fe81df16554548df5b82e3e4@epcas5p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_111022_763781_1AA17532 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

VGhpcyBwYXRjaCBkb2N1bWVudHMgU2Ftc3VuZyBVRlMgUEhZIGRldmljZSB0cmVlIGJpbmRpbmdz
CgpTaWduZWQtb2ZmLWJ5OiBBbGltIEFraHRhciA8YWxpbS5ha2h0YXJAc2Ftc3VuZy5jb20+ClRl
c3RlZC1ieTogUGF3ZcWCIENobWllbCA8cGF3ZWwubWlrb2xhai5jaG1pZWxAZ21haWwuY29tPgot
LS0KIC4uLi9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1ZnMtcGh5LnlhbWwgICAgICAgICB8IDc0ICsr
KysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3NCBpbnNlcnRpb25zKCspCiBjcmVh
dGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1z
dW5nLHVmcy1waHkueWFtbAoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvc2Ftc3VuZyx1ZnMtcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdWZzLXBoeS55YW1sCm5ldyBmaWxlIG1vZGUgMTAwNjQ0
CmluZGV4IDAwMDAwMDAwMDAwMC4uMzUyZDVkZGEzMjBkCi0tLSAvZGV2L251bGwKKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVmcy1waHkueWFtbApA
QCAtMCwwICsxLDc0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkg
T1IgQlNELTItQ2xhdXNlCislWUFNTCAxLjIKKy0tLQorJGlkOiBodHRwOi8vZGV2aWNldHJlZS5v
cmcvc2NoZW1hcy9waHkvc2Ftc3VuZyx1ZnMtcGh5LnlhbWwjCiskc2NoZW1hOiBodHRwOi8vZGV2
aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKKwordGl0bGU6IFNhbXN1bmcgU29D
IHNlcmllcyBVRlMgUEhZIERldmljZSBUcmVlIEJpbmRpbmdzCisKK21haW50YWluZXJzOgorICAt
IEFsaW0gQWtodGFyIDxhbGltLmFraHRhckBzYW1zdW5nLmNvbT4KKworcHJvcGVydGllczoKKyAg
IiNwaHktY2VsbHMiOgorICAgIGNvbnN0OiAwCisKKyAgY29tcGF0aWJsZToKKyAgICBlbnVtOgor
ICAgICAgLSBzYW1zdW5nLGV4eW5vczctdWZzLXBoeQorCisgIHJlZzoKKyAgICBtYXhJdGVtczog
MQorICAgIGRlc2NyaXB0aW9uOiBQSFkgYmFzZSByZWdpc3RlciBhZGRyZXNzCisKKyAgcmVnLW5h
bWVzOgorICAgIGl0ZW1zOgorICAgICAgLSBjb25zdDogcGh5LXBtYQorCisgIGNsb2NrczoKKyAg
ICBpdGVtczoKKyAgICAgIC0gZGVzY3JpcHRpb246IFBMTCByZWZlcmVuY2UgY2xvY2sKKyAgICAg
IC0gZGVzY3JpcHRpb246IHN5bWJvbCBjbG9jayBmb3IgaW5wdXQgc3ltYm9sICggcngwLWNoMCBz
eW1ib2wgY2xvY2spCisgICAgICAtIGRlc2NyaXB0aW9uOiBzeW1ib2wgY2xvY2sgZm9yIGlucHV0
IHN5bWJvbCAoIHJ4MS1jaDEgc3ltYm9sIGNsb2NrKQorICAgICAgLSBkZXNjcmlwdGlvbjogc3lt
Ym9sIGNsb2NrIGZvciBvdXRwdXQgc3ltYm9sICggdHgwIHN5bWJvbCBjbG9jaykKKworICBjbG9j
ay1uYW1lczoKKyAgICBpdGVtczoKKyAgICAgIC0gY29uc3Q6IHJlZl9jbGsKKyAgICAgIC0gY29u
c3Q6IHJ4MV9zeW1ib2xfY2xrCisgICAgICAtIGNvbnN0OiByeDBfc3ltYm9sX2NsaworICAgICAg
LSBjb25zdDogdHgwX3N5bWJvbF9jbGsKKworICBzYW1zdW5nLHBtdS1zeXNjb246CisgICAgJHJl
ZjogJy9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUnCisgICAgZGVzY3Jp
cHRpb246IHBoYW5kbGUgZm9yIFBNVSBzeXN0ZW0gY29udHJvbGxlciBpbnRlcmZhY2UsIHVzZWQg
dG8KKyAgICAgICAgICAgICAgICAgY29udHJvbCBwbXUgcmVnaXN0ZXJzIGJpdHMgZm9yIHVmcyBt
LXBoeQorCityZXF1aXJlZDoKKyAgLSAiI3BoeS1jZWxscyIKKyAgLSBjb21wYXRpYmxlCisgIC0g
cmVnCisgIC0gcmVnLW5hbWVzCisgIC0gY2xvY2tzCisgIC0gY2xvY2stbmFtZXMKKyAgLSBzYW1z
dW5nLHBtdS1zeXNjb24KKworZXhhbXBsZXM6CisgIC0gfAorICAgICNpbmNsdWRlIDxkdC1iaW5k
aW5ncy9jbG9jay9leHlub3M3LWNsay5oPgorCisgICAgdWZzX3BoeTogdWZzLXBoeUAxNTU3MTgw
MCB7CisgICAgICAgIGNvbXBhdGlibGUgPSAic2Ftc3VuZyxleHlub3M3LXVmcy1waHkiOworICAg
ICAgICByZWcgPSA8MHgxNTU3MTgwMCAweDI0MD47CisgICAgICAgIHJlZy1uYW1lcyA9ICJwaHkt
cG1hIjsKKyAgICAgICAgc2Ftc3VuZyxwbXUtc3lzY29uID0gPCZwbXVfc3lzdGVtX2NvbnRyb2xs
ZXI+OworICAgICAgICAjcGh5LWNlbGxzID0gPDA+OworICAgICAgICBjbG9ja3MgPSA8JmNsb2Nr
X2ZzeXMxIFNDTEtfQ09NQk9fUEhZX0VNQkVEREVEXzI2TT4sCisgICAgICAgICAgICAgICAgIDwm
Y2xvY2tfZnN5czEgUEhZQ0xLX1VGUzIwX1JYMV9TWU1CT0xfVVNFUj4sCisgICAgICAgICAgICAg
ICAgIDwmY2xvY2tfZnN5czEgUEhZQ0xLX1VGUzIwX1JYMF9TWU1CT0xfVVNFUj4sCisgICAgICAg
ICAgICAgICAgIDwmY2xvY2tfZnN5czEgUEhZQ0xLX1VGUzIwX1RYMF9TWU1CT0xfVVNFUj47Cisg
ICAgICAgIGNsb2NrLW5hbWVzID0gInJlZl9jbGsiLCAicngxX3N5bWJvbF9jbGsiLAorICAgICAg
ICAgICAgICAgICAgICAgICJyeDBfc3ltYm9sX2NsayIsICJ0eDBfc3ltYm9sX2NsayI7CisKKyAg
ICB9OworLi4uCi0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
