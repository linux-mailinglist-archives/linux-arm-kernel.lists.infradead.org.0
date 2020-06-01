Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D4E1E9B4E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 03:31:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZZvVhCWditFmbz4WACkW2rE6Yl+W/lLWNU4L4TW1DKU=; b=VJQ0xDYtTl4xrw
	yvrHQOiOGNsgK6LT565Vljd+BtZU3ft+hKV/h7CqbiXvPEeoFnmmpmVNcsAdBcxBLpBdsyoCIrxAr
	OvbFqibLL8C4KrgvZGnN+vQEjMghiafD3hWeTWU4/24eTBfYiBQRe9W4h21TX1vV4MMw+S9mzq9Eu
	gJNe7OAwlkJElvTG+/NU4KtrS+HE+kfkSa/p/zi92+s3VmzZtZiMNrCr2fwAEzoSmnbYSlIUqBMeO
	qM7h6Y3uLf8PXNfe5NIzqJo542nRhW+pNZgrXqTlP5RRczsj8ExPio9Ox6IFVABoiEc9wke3FuKre
	vn9ia9AzeCNvutv0b7Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfZIE-0002U5-KO; Mon, 01 Jun 2020 01:31:10 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfZI7-0002Su-Dx
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 01:31:05 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200601013054epoutp045ccf52cf1e747bc3415b07f5a192b1ec~UR2IK-KZy0309503095epoutp04j
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  1 Jun 2020 01:30:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200601013054epoutp045ccf52cf1e747bc3415b07f5a192b1ec~UR2IK-KZy0309503095epoutp04j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590975054;
 bh=JTwM6QCv9nPVaQSrpu86bU9wEvCr6ibtM4h10TLt4uM=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=VsFQ2UspCek1XSeIXT/n01b9JK7gOCSOzLHDYfRwkRMYme46mG+S7ZmcGCa2Wput/
 zBdcIRIoRcJAh/F12jJv4HMAqzqOk/C07NbL+0hLsRCLLK5RpAVRnyUUc045H52VsO
 cEcMKr70nzJbA4UISWxc7GjHVHg9zzQpqhpEwYjk=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200601013054epcas5p3e3b771e73d2063448fed84381c2c9c87~UR2Hysudi1677916779epcas5p3A;
 Mon,  1 Jun 2020 01:30:54 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 21.B8.09703.E4A54DE5; Mon,  1 Jun 2020 10:30:54 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200601013053epcas5p37291890b3a1a3b05f835824f942e1343~UR2G2jgC41677916779epcas5p3-;
 Mon,  1 Jun 2020 01:30:53 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200601013053epsmtrp143ecd481342151a64371a0a0f20965f3~UR2G1FOKS0981709817epsmtrp1e;
 Mon,  1 Jun 2020 01:30:53 +0000 (GMT)
X-AuditID: b6c32a4a-4cbff700000025e7-af-5ed45a4edcf7
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 6C.F4.08382.D4A54DE5; Mon,  1 Jun 2020 10:30:53 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200601013050epsmtip16ddfaaa880272854cac9badb2a61012c~UR2D-OdVi2353723537epsmtip1U;
 Mon,  1 Jun 2020 01:30:50 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
In-Reply-To: <20200529080546.GB23221@kozik-lap>
Subject: RE: [PATCH v10 10/10] arm64: dts: Add node for ufs exynos7
Date: Mon, 1 Jun 2020 07:00:48 +0530
Message-ID: <000001d637b4$49ff2ff0$ddfd8fd0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIpylB333LdzxFXBilpc4hv6O2l1ANHKSouAge4CJsBYqHLHqfmR7Iw
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrGKsWRmVeSWpSXmKPExsWy7bCmlq5f1JU4g5vbRSxe/rzKZvFp/TJW
 i/lHzrFanD+/gd3i5pajLBabHl9jtbi8aw6bxYzz+5gsuq/vYLNYfvwfk8X/PTvYLZZuvcno
 wONxua+XyWPTqk42j81L6j1aTu5n8fj49BaLR9+WVYwenzfJebQf6GYK4IjisklJzcksSy3S
 t0vgymhpTirYz1Vx7fgOxgbGE5xdjJwcEgImEn//3GXsYuTiEBLYzShx9PxnJgjnE6PEpGmf
 WCGcb4wSz3/1s8C0TLo5lxkisZdR4vzVdywQzhtGiRV3TrOCVLEJ6ErsWNzGBmKLANmbbyxn
 ByliFjjJJHGkr4cJJMEpoC/x6f82sCJhAWeJs8eegTWzCKhIzLv7BayGV8BS4vOrWywQtqDE
 yZlPwGxmAW2JZQtfM0OcpCDx8+kyVohlbhIn/lxjgqgRlzj6swfsVAmBExwSrX/aGSEaXCTa
 d3yF+kdY4tXxLewQtpTEy/42IJsDyM6W6NllDBGukVg67xhUub3EgStzWEBKmAU0Jdbv0odY
 xSfR+/sJE0Qnr0RHmxBEtapE87urUJ3SEhO7u1khbA+JM2suME1gVJyF5LFZSB6bheSBWQjL
 FjCyrGKUTC0ozk1PLTYtMMpLLdcrTswtLs1L10vOz93ECE5qWl47GB8++KB3iJGJg/EQowQH
 s5II72T1S3FCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeZV+nIkTEkhPLEnNTk0tSC2CyTJxcEo1
 MHk9blaVVxBbkvq180m2TU3+jY3XVtyfX1W4hnvlaeFa/qqdr/7IpP+cekRJjflSZrzhyp2p
 R/eqCgrpbdaS/uCo5FL96+wiGcMp814seL+vdp2oipcl2+drrlcW1E/afKqBf5m7wb1u+c5I
 n1e377BtTny78mHovPv/zG80i0/q3qMlfuZow6lr899bTPOZo2ttLXR/onRwE397MHN2bdek
 M3OMhdkcarcI2ankXF95forfNrWTrCaejYVxcumcBQpO3Vv3Xexzniv4OHlv2ea6lL6mz1NN
 ec9VhMWVb1rC0/z5pPXrXZ9v6tw2/uo/8/2j7DMNJxVNNBhDHTvX3br7csO2KY7G/w/GsBbH
 zVNiKc5INNRiLipOBADHO5102QMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrDIsWRmVeSWpSXmKPExsWy7bCSnK5v1JU4g1VPBC1e/rzKZvFp/TJW
 i/lHzrFanD+/gd3i5pajLBabHl9jtbi8aw6bxYzz+5gsuq/vYLNYfvwfk8X/PTvYLZZuvcno
 wONxua+XyWPTqk42j81L6j1aTu5n8fj49BaLR9+WVYwenzfJebQf6GYK4IjisklJzcksSy3S
 t0vgylj8/RRzwSuOir17JrA3MG5g72Lk5JAQMJGYdHMucxcjF4eQwG5GiVMH5jFBJKQlrm+c
 AFUkLLHy33N2iKJXQEX/N7CCJNgEdCV2LG5jA7FFgOzNN5aDFTELXGaS+LN0LSNEx2NGiXkf
 NrCAVHEK6Et8+r8NrENYwFni7LFnYJNYBFQk5t39AraaV8BS4vOrWywQtqDEyZlPwGxmAW2J
 pzefwtnLFr5mhjhPQeLn02WsEFe4SZz4c40JokZc4ujPHuYJjMKzkIyahWTULCSjZiFpWcDI
 sopRMrWgODc9t9iwwDAvtVyvODG3uDQvXS85P3cTIzhCtTR3MG5f9UHvECMTB+MhRgkOZiUR
 3snql+KEeFMSK6tSi/Lji0pzUosPMUpzsCiJ894oXBgnJJCeWJKanZpakFoEk2Xi4JRqYFo4
 Z2rl7TXZh7Lbn+m2pTVWrDSblZBpcXtn+xb2Ww+dmVcdclxfFM3YXNnGPvHEV6+XceurvmQ8
 nPph18O0X/m5bxd6Wd2pjD5Z4759vmiYoLCsfOEtjo/7k1jC9WZk9pkYRsTtYvu86ygjQ+7i
 BZ3z3+sZlRco/D+0+C/L/I0XrpgKsygknXnVNHU7d9Xb/N+ezgxiQVcVew/9XWttl3YjOV0h
 eFaH+0EzPi0j0W+mFgENCb6N7it9sprr7l4Se3Ax6Fuei/4lXbln1v/4ZCSXWs7yXDFhySy2
 ogSbcy/Zw0UuXovVklL5e2cyt10xw+SCXyrLP6scn2ca1XxY43muUUPT61ccQZpXtq3dpsRS
 nJFoqMVcVJwIAF9Aeww/AwAA
X-CMS-MailID: 20200601013053epcas5p37291890b3a1a3b05f835824f942e1343
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200528013245epcas5p37851891649512882c7b1ffb5f903c506
References: <20200528011658.71590-1-alim.akhtar@samsung.com>
 <CGME20200528013245epcas5p37851891649512882c7b1ffb5f903c506@epcas5p3.samsung.com>
 <20200528011658.71590-11-alim.akhtar@samsung.com>
 <20200529080546.GB23221@kozik-lap>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_183103_821765_23C37866 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: robh@kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kwmad.kim@samsung.com, avri.altman@wdc.com, cang@codeaurora.org,
 stanley.chu@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogS3J6eXN6dG9mIEtvemxvd3Nr
aSA8a3J6a0BrZXJuZWwub3JnPgo+IFNlbnQ6IDI5IE1heSAyMDIwIDEzOjM2Cj4gVG86IEFsaW0g
QWtodGFyIDxhbGltLmFraHRhckBzYW1zdW5nLmNvbT4KPiBDYzogcm9iaEBrZXJuZWwub3JnOyBk
ZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgtc2NzaUB2Z2VyLmtlcm5lbC5vcmc7Cj4g
YXZyaS5hbHRtYW5Ad2RjLmNvbTsgbWFydGluLnBldGVyc2VuQG9yYWNsZS5jb207Cj4ga3dtYWQu
a2ltQHNhbXN1bmcuY29tOyBzdGFubGV5LmNodUBtZWRpYXRlay5jb207Cj4gY2FuZ0Bjb2RlYXVy
b3JhLm9yZzsgbGludXgtc2Ftc3VuZy1zb2NAdmdlci5rZXJuZWwub3JnOyBsaW51eC1hcm0tCj4g
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcK
PiBTdWJqZWN0OiBSZTogW1BBVENIIHYxMCAxMC8xMF0gYXJtNjQ6IGR0czogQWRkIG5vZGUgZm9y
IHVmcyBleHlub3M3Cj4gCj4gT24gVGh1LCBNYXkgMjgsIDIwMjAgYXQgMDY6NDY6NThBTSArMDUz
MCwgQWxpbSBBa2h0YXIgd3JvdGU6Cj4gPiBBZGRpbmcgZHQgbm9kZSBmb2UgVUZTIGFuZCBVRlMt
UEhZIGZvciBleHlub3M3IFNvQy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBbGltIEFraHRhciA8
YWxpbS5ha2h0YXJAc2Ftc3VuZy5jb20+Cj4gPiBUZXN0ZWQtYnk6IFBhd2XFgiBDaG1pZWwgPHBh
d2VsLm1pa29sYWouY2htaWVsQGdtYWlsLmNvbT4NCj4gPiAtLS0NCj4gPiAgLi4uL2Jvb3QvZHRz
L2V4eW5vcy9leHlub3M3LWVzcHJlc3NvLmR0cyAgICAgIHwgIDQgKysNCj4gPiAgYXJjaC9hcm02
NC9ib290L2R0cy9leHlub3MvZXh5bm9zNy5kdHNpICAgICAgIHwgNDMgKysrKysrKysrKysrKysr
KysrLQ0KPiANCj4gVGhhbmtzLCBhcHBsaWVkIHRvIG5leHQvZHQtbGF0ZS4gSXQgbWlnaHQgbWlz
cyB0aGlzIG1lcmdlIHdpbmRvdyBhbmQgaW4gc3VjaA0KPiBjYXNlIEkgd2lsbCBrZWVwIGl0IGZv
ciB2NS45IGN5Y2xlLg0KVGhhbmtzIEtyenlzenRvZi4NCj4gDQo+IEJlc3QgcmVnYXJkcywNCj4g
S3J6eXN6dG9mDQoNCg0KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
