Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C73331B9264
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 19:44:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWOkBZbsO7WS4J2LPjBF8VsgB88wBla80LTtwe02uEE=; b=cXYStWRtL451V2
	7bCWc13hzbY0c2cP1887+t3YklPTgcZ5kA3XvBSTyIaWYuSMVIBTZc9yKhJIxPrt7mL2oTXtb2/Yt
	dUQJaC5dz096XswfXPXUgCAQNyrZTLS+o6LQmIjWSczhhZUj8JqVXmLP7cZ/7v0PgJ/0ZjF2wWNKq
	jQGvPHAMtVCaiPTsLctLCpPSjVT6AcfNjyBNl/eKrytkP1HyMK5fPqYR7aNkJxVVafH02iglHAuRq
	H/Pj+24Io4Y0MCHkJfwLcc4cmJfPvosE8yJsZgJnyKdyjdPRT2S+OQnZrXUzEagweZoQN6rbt2lqY
	qQ2nnkTIC7mxrbyvYzNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSlK5-0003HH-G4; Sun, 26 Apr 2020 17:44:09 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSlIJ-0001na-6H
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 17:42:21 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200426174217epoutp04b4609d65e14c3ee2f1c433cb8857ec55~Jb3_CjMXK1821218212epoutp04L
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 17:42:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200426174217epoutp04b4609d65e14c3ee2f1c433cb8857ec55~Jb3_CjMXK1821218212epoutp04L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587922937;
 bh=PdZr65Wo5TW1cANP8kk5hrsoRREQWBxl8FwYNrvhuxw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=t+vrbECAsJCf1zlivg/1ua82B5CZTcqDUTTAW52d3ZM/Y6uoModrZWPmf4ZjS8AyI
 wbzKfcbUxHUcIWWaawIvsABDb+Gns1h0mooznuV8MemeJCyr5gxdMOocEk7l57tVrM
 oeROsNUALh/1/B3Hi9txEn8Z42kWHYmvn68oXt4s=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200426174216epcas5p29f36074e5665f43ad0574df1baad0ab1~Jb39H6blU0368603686epcas5p2j;
 Sun, 26 Apr 2020 17:42:16 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 51.52.04782.7F7C5AE5; Mon, 27 Apr 2020 02:42:15 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200426174215epcas5p3e87abccf47976f6318eb470efef9db39~Jb38kQAtD0554805548epcas5p3K;
 Sun, 26 Apr 2020 17:42:15 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200426174215epsmtrp13077a1995009c4c8d0a9515aca2f504e~Jb38jeI5v0798907989epsmtrp1T;
 Sun, 26 Apr 2020 17:42:15 +0000 (GMT)
X-AuditID: b6c32a49-8b3ff700000012ae-59-5ea5c7f7b2e1
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 A5.DC.25866.7F7C5AE5; Mon, 27 Apr 2020 02:42:15 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200426174213epsmtip184a32627c316a28d738fa1f1c4bbdda6~Jb36r17AJ2626126261epsmtip1j;
 Sun, 26 Apr 2020 17:42:13 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v7 06/10] dt-bindings: phy: Document Samsung UFS PHY bindings
Date: Sun, 26 Apr 2020 23:00:20 +0530
Message-Id: <20200426173024.63069-7-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200426173024.63069-1-alim.akhtar@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHe89lHqXpcSo9KSQMhTTSxKLzwS6EwQkK/dKXEmvoQUWnY8dL
 hpakqdu8RpJNnRnOyiHa1DmmqXhpWaCRl/IWkhppoKnQjExrO0p++z3v8/+/z/N/eSlc0kN6
 UwnJqZwyWZYkFbkQpv6Ao8dtVn30iQ+tYcycziRiln6Ni5j15gaSqR0YJpmRkRYnZrJtkGCM
 8xMkM2qpFjGVI90Yo/loFjHPrNsYs9NldmL07ZPovJgdLSnGWGOjSsS21t9l84Z6CHZtcYpg
 S9oaEbthPMIW9GqwSOqaS1gsl5SQzimDz950ie/T3FG0eN2aHisic5CJViNnCuiTsFCe76RG
 LpSE7kRQ3NG2W6wj0M42IaHYQDBUYsb2LCZbPS40LAi2v63uWvIwMHRrcLtKRB+D2UdtDocn
 7QEDP/ORnXH6EwZzL8Lt7EFHwIpuUGRngvaH2pebDhbTYZBvWsWFab5gaOl1sDN9Bt5WWjBB
 4w5DjxcI4U5fyG2vcmwEtJkC6/oKKZjDQVeXhwT2gGWrPZydvWGp1J6a+seJUGQJFY6zQK97
 TQh8DnrHqgm7BKcDoNkSLIxyheLfC5jgFENhvkRQ+0Puyviu0wfKNRpSkLCgV10QXqcMQXdH
 F1mGfLX7Amj3BdD+H/YE4Y3oMKfg5XEcf0oRksxlBPEyOZ+WHBcUkyI3Ise3CrxkRtrhy32I
 ppD0oJjq0EdLSFk6nynvQ0DhUk9xVOrTaIk4VpZ5m1Om3FCmJXF8H/KhCOkh8QNyPEpCx8lS
 uUSOU3DKvS5GOXvnoIKtUi7rue19/7zlvvuMqu56s7Jsa+d0RW72veWJBmf5oF+GV11Ht7yR
 cMvIDp0umPiujfxRrPmqr/HjP3vWh9imgtTc2o6rOqKuirtqQBtyPz4lq6WJePewwHZA5bad
 orNKXKM7a9ZfhS/+uVLdyudszlx8o/4SE2OqKAwySAk+XhYSiCt52V8cH1xkUgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpnkeLIzCtJLcpLzFFi42LZdlhJTvf78aVxBl07xS0ezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXxqHuuoINohW3r/SwNjBuE+hi5OSQEDCR2PZ9CXMXIxeHkMAORoknC3rZIBLS
 Etc3TmCHsIUlVv57zg5R1MQksfj5bmaQBJuAtsTd6VuYQGwRoKIj39oYQWxmgWdMEqceloLY
 wgK+Ev/O7GABsVkEVCXmb/wBtoBXwEaibdt7ZogF8hKrNxwAszkFbCVOzdgFNJMDaJmNxPT1
 /hDlghInZz5hAQkzC6hLrJ8nBLFJXqJ562zmCYyCs5BUzUKomoWkagEj8ypGydSC4tz03GLD
 AqO81HK94sTc4tK8dL3k/NxNjOC40tLawbhn1Qe9Q4xMHIyHGCU4mJVEeGNKFsUJ8aYkVlal
 FuXHF5XmpBYfYpTmYFES5/06a2GckEB6YklqdmpqQWoRTJaJg1OqgUlS/+f+tLceKfm/T2Z9
 7FQ9MeftvBSrZBX/h2/uZHe+tw4wjXo5r6D15WkdlsXqPOWnlfVVRNLqjSOvFX/2+XAoqeJb
 H8/OPtuQN2zTpnwMaw57/KEuULa5eabU5cgcT/eLmuFX2QKaPr9t+BnA0KfyW847XL3zptMF
 uSVNm4zabrRUx/qckJlz5vmODYu/5nju7HJsVnviwpV0/Hpac+y905+frXcPLvaqdzZrl2O8
 enfaYn1XraDIktKDF5+efPzQZF1pT+HThTxHWmqSbhxwWbZSWWV9gfKZaBP3qIsLLRgDbARv
 n954Z52ps0zevMTz4gf5/MRk4iYXvtpmX/JJZVqrl/TMDT/OtS2ZpMRSnJFoqMVcVJwIANL1
 iJEaAwAA
X-CMS-MailID: 20200426174215epcas5p3e87abccf47976f6318eb470efef9db39
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200426174215epcas5p3e87abccf47976f6318eb470efef9db39
References: <20200426173024.63069-1-alim.akhtar@samsung.com>
 <CGME20200426174215epcas5p3e87abccf47976f6318eb470efef9db39@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_104219_618160_CD0ACF10 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
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
