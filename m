Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2BE196711
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 16:35:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJzq8MFOaX82JLJjkUdjdj0oYQU7VAy9DN1RZHX55Ho=; b=heSTtL/JSKvWFD
	u7HotWaMapMwP7TigedtrVPgvjTGygwhcWjr84yFaQDydBhXAv8GfodSLINRoLbummBCwZatoswLT
	7QZCfiJxykjb6wacwZGdfo5tFw/TOssgbcqBniorYrg1BFCrdIAKVvjugNUD/AmXgAdVBU9PEsshy
	4NDSjA57wDnjiNmO9JCUUxkLMBkNzPPlWGVxEH3pGfNuS9fuZCKGLY5kjagUVcQT2pyJ8LNL++NJ1
	fwQqRHHDDOSi11XOYQhDphoIMk8y1x21taUoGau58xe12Q5eOYf4lkajKpaV2vF0N+fZL8cfTD6Cb
	kebfXDrY0Ec8lalD6aXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIDUs-0008KK-Gs; Sat, 28 Mar 2020 15:35:42 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIDUk-0008JZ-Ef
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 15:35:36 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200328153530epoutp04c1e83868ec4c5c2d0b9b42a1e9ec75e4~AgcAReYrq2136021360epoutp04i
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Mar 2020 15:35:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200328153530epoutp04c1e83868ec4c5c2d0b9b42a1e9ec75e4~AgcAReYrq2136021360epoutp04i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585409730;
 bh=xXkS91CFIroc7N2oaXEl9fLdr7tUf9+UutE4IeIiJjE=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=kTaPhZunPQsCM4rmqY22CKktKSkDU0r9LIdFCtBCtl356eDEiCCj6yZRu/uVjCMk5
 zHbmSwo14yIP31EI57vsJTg3wGmv/5wuEweDQEkupsGiO6PximGl2DYiYZfsEBbpDS
 3CoNnKiWpv8mqVtb0oIteFxJBQVGVEBP/an90N7o=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200328153529epcas5p32df5f14a80ca6f26d57289c7edd8f28c~Agb-PCBe01221612216epcas5p3i;
 Sat, 28 Mar 2020 15:35:29 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 5D.B7.04778.1CE6F7E5; Sun, 29 Mar 2020 00:35:29 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
 20200328153528epcas5p4d1a6bc160d439101a3d5f3c43f40b1e2~Agb_XBtCF1572915729epcas5p44;
 Sat, 28 Mar 2020 15:35:28 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200328153528epsmtrp18aa344e9aee5444064d301fbea5fc683~Agb_WJYU43038730387epsmtrp1Q;
 Sat, 28 Mar 2020 15:35:28 +0000 (GMT)
X-AuditID: b6c32a4a-33bff700000012aa-55-5e7f6ec1c85f
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 94.86.04024.0CE6F7E5; Sun, 29 Mar 2020 00:35:28 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200328153525epsmtip1915a6f448bb9b6b4b27ef259c4ac617a~Agb7Y5kWE1061810618epsmtip1P;
 Sat, 28 Mar 2020 15:35:25 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: =?UTF-8?Q?'Pawe=C5=82_Chmiel'?= <pawel.mikolaj.chmiel@gmail.com>,
 <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
 <linux-scsi@vger.kernel.org>
In-Reply-To: <ac67cfc3736cf50c716b823a59af878d59b7198f.camel@gmail.com>
Subject: RE: [PATCH v4 5/5] arm64: dts: Add node for ufs exynos7
Date: Sat, 28 Mar 2020 21:05:23 +0530
Message-ID: <000801d60516$823fd890$86bf89b0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKI+vJzlUBp7WIi19k8pRZBKIHK2gKUSzVAA7h3SyUCe2DDm6ax9Wig
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrLKsWRmVeSWpSXmKPExsWy7bCmuu7BvPo4g48bFC1e/rzKZvFp/TJW
 i/lHzrFanD+/gd3i5pajLBabHl9jtbi8aw6bxYzz+5gsuq/vYLNYfvwfk8WP433MFq17j7Bb
 LN16k9GB1+NyXy+Tx85Zd9k9Nq3qZPPYvKTeo+XkfhaPj09vsXj0bVnF6PF5k5xH+4FupgDO
 KC6blNSczLLUIn27BK6MfWe2MBXssq+4fW8tYwPjXdsuRg4OCQETid23IroYuTiEBHYzSmzZ
 c5oJwvnEKNH59yYzhPONUeLG7G6gDCdYx9rfbVBVexklpi7awAaSEBJ4A1R10hzEZhPQldix
 uI0NpEhEYBajxPJ/v1lAHGaBTiaJNfOnMINUcQq4Sxx+84gVxBYWcJB4uGI/2AoWAVWJLds2
 gdm8ApYSF27OYYOwBSVOznzCAmIzC2hLLFv4mhniJAWJn0+Xgc0REXCTODlnMhtEjbjE0Z89
 YD9ICGxil2g5Op0VosFFYueOt1DNwhKvjm9hh7ClJF72t7FDQiZbomeXMUS4RmLpvGMsELa9
 xIErc1hASpgFNCXW79KHWMUn0fv7CRNEJ69ER5sQRLWqRPO7q1Cd0hITu7uhDvCQ2Lb6AusE
 RsVZSB6bheSxWUgemIWwbAEjyypGydSC4tz01GLTAqO81HK94sTc4tK8dL3k/NxNjOBEp+W1
 g3HZOZ9DjAIcjEo8vCuu1sYJsSaWFVfmHmKU4GBWEuF9GlkTJ8SbklhZlVqUH19UmpNafIhR
 moNFSZx3EuvVGCGB9MSS1OzU1ILUIpgsEwenVAPjmtcbjqZnHnO7lbjg83/O/VF/Z73+2FTu
 0HYqWkTxRM4qpp95S/17bP9nrvKe1uaicXxbWv3zeRPDbrj8SrwduPdH4lWZ1a1bvPXU7HWO
 93/dvpVpi9eyZ54NfmrpszszHjDMe5yetejF613np6VYnS5XLrumt2Yv6zLT64piPHGvYj9m
 L/8apsRSnJFoqMVcVJwIAFqMt/xwAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrIIsWRmVeSWpSXmKPExsWy7bCSnO6BvPo4g7sPVC1e/rzKZvFp/TJW
 i/lHzrFanD+/gd3i5pajLBabHl9jtbi8aw6bxYzz+5gsuq/vYLNYfvwfk8WP433MFq17j7Bb
 LN16k9GB1+NyXy+Tx85Zd9k9Nq3qZPPYvKTeo+XkfhaPj09vsXj0bVnF6PF5k5xH+4FupgDO
 KC6blNSczLLUIn27BK6MGx/2MBWc1arYeSepgbFJqYuRk0NCwERi7e82pi5GLg4hgd2MEqu2
 32CHSEhLXN84AcoWllj57zmYLSTwilHibr8iiM0moCuxY3EbG0iziMAcRold21aCFTELTGaS
 WHqTH2LqL0aJV/NvsIAkOAXcJQ6/ecQKYgsLOEg8XLGfCcRmEVCV2LJtE5jNK2ApceHmHDYI
 W1Di5MwnLBBDtSV6H7YywtjLFr5mhrhOQeLn02VgM0UE3CROzpnMBlEjLnH0Zw/zBEbhWUhG
 zUIyahaSUbOQtCxgZFnFKJlaUJybnltsWGCYl1quV5yYW1yal66XnJ+7iREcsVqaOxgvL4k/
 xCjAwajEw6sxsS5OiDWxrLgy9xCjBAezkgjv08iaOCHelMTKqtSi/Pii0pzU4kOM0hwsSuK8
 T/OORQoJpCeWpGanphakFsFkmTg4pRoYnXvWy/kfClxuu/NWqczla/c+Fb5c8Ho108+3GkrZ
 NslbL1d+ur/6UpVlneP5OSYvXrS/C74bVZpofu7rJVEdlW8KDz/7vjz3NPq0YTK3/7RFdzgj
 D/QrLWbL3zifrSZjh6ZBneGkOw8nOHZVSydZPDA9vm6WbI/UE72Ps/NP851gmGByX0GXV4ml
 OCPRUIu5qDgRACEO/bnUAgAA
X-CMS-MailID: 20200328153528epcas5p4d1a6bc160d439101a3d5f3c43f40b1e2
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200327171423epcas5p485d227f19e45999ad9b42b21d2864e4a
References: <20200327170638.17670-1-alim.akhtar@samsung.com>
 <CGME20200327171423epcas5p485d227f19e45999ad9b42b21d2864e4a@epcas5p4.samsung.com>
 <20200327170638.17670-6-alim.akhtar@samsung.com>
 <ac67cfc3736cf50c716b823a59af878d59b7198f.camel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_083534_743907_5DE72E2C 
X-CRM114-Status: UNSURE (   6.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGF3ZWwKCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiBGcm9tOiBQYXdlxYIgQ2ht
aWVsIDxwYXdlbC5taWtvbGFqLmNobWllbEBnbWFpbC5jb20+DQo+IFNlbnQ6IDI4IE1hcmNoIDIw
MjAgMTk6MDANCj4gVG86IEFsaW0gQWtodGFyIDxhbGltLmFraHRhckBzYW1zdW5nLmNvbT47IHJv
YmgrZHRAa2VybmVsLm9yZzsNCj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LXNj
c2lAdmdlci5rZXJuZWwub3JnDQo+IENjOiBrcnprQGtlcm5lbC5vcmc7IGF2cmkuYWx0bWFuQHdk
Yy5jb207IG1hcnRpbi5wZXRlcnNlbkBvcmFjbGUuY29tOw0KPiBrd21hZC5raW1Ac2Ftc3VuZy5j
b207IHN0YW5sZXkuY2h1QG1lZGlhdGVrLmNvbTsNCj4gY2FuZ0Bjb2RlYXVyb3JhLm9yZzsgbGlu
dXgtc2Ftc3VuZy1zb2NAdmdlci5rZXJuZWwub3JnOyBsaW51eC1hcm0tDQo+IGtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnDQo+IFN1YmplY3Q6
IFJlOiBbUEFUQ0ggdjQgNS81XSBhcm02NDogZHRzOiBBZGQgbm9kZSBmb3IgdWZzIGV4eW5vczcN
Cj4gDQo+IE9uIEZyaSwgMjAyMC0wMy0yNyBhdCAyMjozNiArMDUzMCwgQWxpbSBBa2h0YXIgd3Jv
dGU6DQo+ID4gQWRkaW5nIGR0IG5vZGUgZm9lIFVGUyBhbmQgVUZTLVBIWSBmb3IgZXh5bm9zNyBT
b0MuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbGltIEFraHRhciA8YWxpbS5ha2h0YXJAc2Ft
c3VuZy5jb20+DQo+ID4gLS0tDQo+ID4gIC4uLi9ib290L2R0cy9leHlub3MvZXh5bm9zNy1lc3By
ZXNzby5kdHMgICAgICB8IDE2ICsrKysrKysNCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9leHlu
b3MvZXh5bm9zNy5kdHNpICAgICAgIHwgNDMgKysrKysrKysrKysrKysrKysrLQ0KPiA+ICAyIGZp
bGVzIGNoYW5nZWQsIDU3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9leHlub3MvZXh5bm9zNy1lc3ByZXNzby5k
dHMNCj4gPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZXh5bm9zL2V4eW5vczctZXNwcmVzc28uZHRz
DQo+ID4gaW5kZXggN2FmMjg4ZmE5NDc1Li5iNTlhMGEzMjYyMGEgMTAwNjQ0DQo+ID4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9leHlub3MvZXh5bm9zNy1lc3ByZXNzby5kdHMNCj4gPiArKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL2V4eW5vcy9leHlub3M3LWVzcHJlc3NvLmR0cw0KPiA+IEBA
IC00MDYsNiArNDA2LDIyIEBADQo+ID4gIAl9Ow0KPiA+ICB9Ow0KPiA+DQo+ID4gKyZ1ZnMgew0K
PiA+ICsJc3RhdHVzID0gIm9rYXkiOw0KPiA+ICsJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsN
Cj4gPiArCXBpbmN0cmwtMCA9IDwmdWZzX3JzdF9uICZ1ZnNfcmVmY2xrX291dD47DQo+ID4gKwl1
ZnMscHdyLWF0dHItbW9kZSA9ICJGQVNUIjsNCj4gPiArCXVmcyxwd3ItYXR0ci1sYW5lID0gPDI+
Ow0KPiA+ICsJdWZzLHB3ci1hdHRyLWdlYXIgPSA8Mj47DQo+ID4gKwl1ZnMscHdyLWF0dHItaHMt
c2VyaWVzID0gIkhTX3JhdGVfYiI7DQo+ID4gKwl1ZnMtcngtYWR2LWZpbmUtZ3Jhbi1zdXBfZW4g
PSA8MT47DQo+ID4gKwl1ZnMtcngtYWR2LWZpbmUtZ3Jhbi1zdGVwID0gPDM+Ow0KPiA+ICsJdWZz
LXJ4LWFkdi1taW4tYWN0aXZhdGUtdGltZS1jYXAgPSA8OT47DQo+ID4gKwl1ZnMtcGEtZ3JhbnVs
YXJpdHkgPSA8Nj47DQo+ID4gKwl1ZnMtcGEtdGFjY3RpdmF0ZSA9IDwzPjsNCj4gPiArCXVmcy1w
YS1oaWJlcm44dGltZSA9IDwyMD47DQo+ID4gK307DQo+ID4gKw0KPiA+ICAmdXNiZHJkX3BoeSB7
DQo+ID4gIAl2YnVzLXN1cHBseSA9IDwmdXNiMzBfdmJ1c19yZWc+Ow0KPiA+ICAJdmJ1cy1ib29z
dC1zdXBwbHkgPSA8JnVzYjNkcmRfYm9vc3RfNXY+OyBkaWZmIC0tZ2l0DQo+ID4gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL2V4eW5vcy9leHlub3M3LmR0c2kNCj4gPiBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvZXh5bm9zL2V4eW5vczcuZHRzaQ0KPiA+IGluZGV4IDU1NTgwNDU2MzdhYy4uOWQxNmM5MGVk
ZDA3IDEwMDY0NA0KPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZXh5bm9zL2V4eW5vczcu
ZHRzaQ0KPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZXh5bm9zL2V4eW5vczcuZHRzaQ0K
PiA+IEBAIC0yMjAsOSArMjIwLDE0IEBADQo+ID4gIAkJCSNjbG9jay1jZWxscyA9IDwxPjsNCj4g
PiAgCQkJY2xvY2tzID0gPCZmaW5fcGxsPiwgPCZjbG9ja190b3AxDQo+IERPVVRfQUNMS19GU1lT
MV8yMDA+LA0KPiA+ICAJCQkJIDwmY2xvY2tfdG9wMSBET1VUX1NDTEtfTU1DMD4sDQo+ID4gLQkJ
CQkgPCZjbG9ja190b3AxIERPVVRfU0NMS19NTUMxPjsNCj4gPiArCQkJCSA8JmNsb2NrX3RvcDEg
RE9VVF9TQ0xLX01NQzE+LA0KPiA+ICsJCQkJIDwmY2xvY2tfdG9wMSBET1VUX1NDTEtfVUZTVU5J
UFJPMjA+LA0KPiA+ICsJCQkJIDwmY2xvY2tfdG9wMSBET1VUX1NDTEtfUEhZX0ZTWVMxPiwNCj4g
PiArCQkJCSA8JmNsb2NrX3RvcDEgRE9VVF9TQ0xLX1BIWV9GU1lTMV8yNk0+Ow0KPiA+ICAJCQlj
bG9jay1uYW1lcyA9ICJmaW5fcGxsIiwgImRvdXRfYWNsa19mc3lzMV8yMDAiLA0KPiA+IC0JCQkJ
ICAgICAgImRvdXRfc2Nsa19tbWMwIiwgImRvdXRfc2Nsa19tbWMxIjsNCj4gPiArCQkJCSAgICAg
ICJkb3V0X3NjbGtfbW1jMCIsICJkb3V0X3NjbGtfbW1jMSIsDQo+ID4gKwkJCQkgICAgICAiZG91
dF9zY2xrX3Vmc3VuaXBybzIwIiwNCj4gImRvdXRfc2Nsa19waHlfZnN5czEiLA0KPiA+ICsJCQkJ
ICAgICAgImRvdXRfc2Nsa19waHlfZnN5czFfMjZtIjsNCj4gPiAgCQl9Ow0KPiA+DQo+ID4gIAkJ
c2VyaWFsXzA6IHNlcmlhbEAxMzYzMDAwMCB7DQo+ID4gQEAgLTYwMSw2ICs2MDYsNDAgQEANCj4g
PiAgCQkJfTsNCj4gPiAgCQl9Ow0KPiA+DQo+ID4gKwkJdWZzOiB1ZnNAMTU1NzAwMDAgew0KPiA+
ICsJCQljb21wYXRpYmxlID0gInNhbXN1bmcsZXh5bm9zNy11ZnMiOw0KPiA+ICsJCQkjYWRkcmVz
cy1jZWxscyA9IDwxPjsNCj4gPiArCQkJI3NpemUtY2VsbHMgPSA8MT47DQo+ID4gKwkJCXJhbmdl
czsNCj4gPiArCQkJcmVnID0gPDB4MTU1NzAwMDAgMHgxMDA+LCAgLyogMDogSENJIHN0YW5kYXJk
ICovDQo+ID4gKwkJCQk8MHgxNTU3MDEwMCAweDEwMD4sICAvKiAxOiBWZW5kb3Igc3BlY2lmaWNl
ZA0KPiAqLw0KPiA+ICsJCQkJPDB4MTU1NzEwMDAgMHgyMDA+LCAgLyogMjogVU5JUFJPICovDQo+
ID4gKwkJCQk8MHgxNTU3MjAwMCAweDMwMD47ICAvKiAzOiBVRlMgcHJvdGVjdG9yICovDQo+ID4g
KwkJCXJlZy1uYW1lcyA9ICJoY2kiLCAidnNfaGNpIiwgInVuaXBybyIsICJ1ZnNwIjsNCj4gPiAr
CQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDIwMCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsNCj4gPiAr
CQkJY2xvY2tzID0gPCZjbG9ja19mc3lzMSBBQ0xLX1VGUzIwX0xJTks+LA0KPiA+ICsJCQkJPCZj
bG9ja19mc3lzMSBTQ0xLX1VGU1VOSVBSTzIwX1VTRVI+Ow0KPiA+ICsJCQljbG9jay1uYW1lcyA9
ICJjb3JlX2NsayIsICJzY2xrX3VuaXByb19tYWluIjsNCj4gPiArCQkJZnJlcS10YWJsZS1oeiA9
IDwwIDA+LCA8MCAwPjsNCj4gPiArCQkJcGNsay1mcmVxLWF2YWlsLXJhbmdlID0gPDcwMDAwMDAw
IDEzMzAwMDAwMD47DQo+ID4gKwkJCXVmcyxwd3ItbG9jYWwtbDItdGltZXIgPSA8ODAwMCAyODAw
MCAyMDAwMD47DQo+ID4gKwkJCXVmcyxwd3ItcmVtb3RlLWwyLXRpbWVyID0gPDEyMDAwIDMyMDAw
IDE2MDAwPjsNCj4gPiArCQkJcGh5cyA9IDwmdWZzX3BoeT47DQo+ID4gKwkJCXBoeS1uYW1lcyA9
ICJ1ZnMtcGh5IjsNCj4gPiArCQkJc3RhdHVzID0gImRpc2FibGVkIjsNCj4gPiArCQl9Ow0KPiA+
ICsNCj4gPiArCQl1ZnNfcGh5OiB1ZnMtcGh5QDB4MTU1NzE4MDAgew0KPiA+ICsJCQljb21wYXRp
YmxlID0gInNhbXN1bmcsZXh5bm9zNy11ZnMtcGh5IjsNCj4gPiArCQkJcmVnID0gPDB4MTU1NzE4
MDAgMHgyNDA+Ow0KPiA+ICsJCQlyZWctbmFtZXMgPSAicGh5LXBtYSI7DQo+ID4gKwkJCXNhbXN1
bmcscG11LXN5c2NvbiA9IDwmcG11X3N5c3RlbV9jb250cm9sbGVyPjsNCj4gPiArCQkJI3BoeS1j
ZWxscyA9IDwwPjsNCj4gPiArCQkJY2xvY2tzID0gPCZjbG9ja19mc3lzMSBNT1VUX0ZTWVMxX1BI
WUNMS19TRUwxPiwNCj4gPiArCQkJCTwmY2xvY2tfdG9wMSBDTEtfU0NMS19QSFlfRlNZUzFfMjZN
PjsNCj4gPiArCQkJY2xvY2stbmFtZXMgPSAicmVmX2Nsa19wYXJlbnQiLCAicmVmX2NsayI7DQo+
IEhpDQo+IElzIHRoaXMgY29ycmVjdCAoYXJlbid0IGNoaWxkIGFuZCBwYXJlbnQgY2xvY2sgc3dh
cHBlZCk/DQo+IFRoaXMgd2lsbCBzZXQgTU9VVF9GU1lTMV9QSFlDTEtfU0VMMSB0byBiZSBwYXJl
bnQgY2xvY2sgb2YNCj4gQ0xLX1NDTEtfUEhZX0ZTWVMxXzI2TS4NCg0KTG9va3MgbGlrZSBpbiBv
bmUgb2YgbXkgcmViYXNlIGl0IGdvdCBzd2FwLCB3aWxsIGNvcnJlY3QgaXQuICBUaGFua3MgZm9y
IHBvaW50aW5nIG91dC4NCg0KPiBJJ3ZlIHRlc3RlZCB0aGlzIG9uIEV4eW5vczc0MjAgKHdoaWNo
IGxvb2tzIGxpa2UgY2FuIHVzZSB0aGUgc2FtZSBjbG9jayBkcml2ZXIgYXMNCj4gZXh5bm9zNykg
YW5kIGFmdGVyIGFkZGluZyBzb21lIGRlYnVnIGNvZGUgKGJlY2F1c2UgY3VycmVudGx5IHdlJ3Jl
IG5vdA0KPiBoYW5kbGluZyByZXN1bHQgb2Ygc2Ftc3VuZ191ZnNfcGh5X2Nsa3NfaW5pdCkgaSBn
b3QNCj4gDQo+IHNhbXN1bmctdWZzLXBoeSAxNTU3MTgwMC51ZnMtcGh5OiBjbGtfc2V0X3BhcmVu
dCByZXN1bHQ6IC0yMg0KPiANCkkgd2lsbCBjaGVjayBpZiBJIG92ZXJsb29rZWQgdGhpcyBlcnJv
ci4NCj4gT24gdmVuZG9yIHNvdXJjZXMgZm9yIHRoaXMgZGV2aWNlLCBkcml2ZXIgd2FzIHNldHRp
bmcgQ0xLX1NDTEtfUEhZX0ZTWVMxXzI2TQ0KPiB0byBiZSBwYXJlbnQgb2YgTU9VVF9GU1lTMV9Q
SFlDTEtfU0VMMSwgYW5kIHRoZW4gaXQgZGlkIHJ1biB3aXRob3V0IGVycm9yLg0KPiANCj4gc2Ft
c3VuZy11ZnMtcGh5IDE1NTcxODAwLnVmcy1waHk6IGNsa19zZXRfcGFyZW50IHJlc3VsdDogMA0K
PiANCldpdGggdGhpcyBjaGFuZ2UsIGRvZXMgbGlua3VwIHdvcmtlZCBmb3IgeW91Pw0KDQo+IEFs
c28gbG9va2luZyBhdCBjbGstZXh5bm9zNyBkcml2ZXIgc2VlbXMgdG8gY29uZmlybSB0aGlzLg0K
PiANCj4gPiArCQl9Ow0KPiA+ICsNCj4gPiAgCQl1c2JkcmRfcGh5OiBwaHlAMTU1MDAwMDAgew0K
PiA+ICAJCQljb21wYXRpYmxlID0gInNhbXN1bmcsZXh5bm9zNy11c2JkcmQtcGh5IjsNCj4gPiAg
CQkJcmVnID0gPDB4MTU1MDAwMDAgMHgxMDA+Ow0KDQoNCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
