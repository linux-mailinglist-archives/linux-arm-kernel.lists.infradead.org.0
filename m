Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E473FC182
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 09:25:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUAlHdONtwa+//zwzOWhB2IdYQX8/uK47YyoJnW8w6g=; b=ZomkB2wGi3z1ch
	r/ErtEOVMQ1UZ5iaQQBDfCZ2w1r7++hkRxJYOcjdIlYMBkxtB9I3wqOCUHOFQM7wEYIv1d2+yPjqf
	vlkO1MusRmL/plqMPWWScLk5xbSFsCvHeiGH2SzzlDZhtwIoGc4VkXO5JK0AaEC2+KoBYEuZPsvWJ
	ZvG8d+E/VNm8/0zyVUWZbes+z2wTkW1bR1C3QWqsMbr42Nt0d4AURlZYgSAC4sJusUs/V14ZWB0L/
	8YcI7FaxW9cKR3aPw8lupPm1ZVGHn8RgXwKRGd1F3Ucc1+9hniOA2EZMyRQc4dPTVbSaqyxKwZd1Z
	tOl23vOuCGTkc9nRvLUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVAQv-0003ae-IQ; Thu, 14 Nov 2019 08:24:53 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVAQl-0003ZI-VT; Thu, 14 Nov 2019 08:24:45 +0000
X-UUID: cb7b197a13154765bca26774b6164598-20191114
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=kexpRd4flOuhangcMaXAJjeofb2Q82afKSKqLkqvJp8=; 
 b=jwO1vuG4R8CnCMF1BL67thFS2sE6sPV7EFxjExsblA9ILMGGgFSxrT8ug+xUuL5q9+hEXJBM2uDdUVNudVDWWkQnwN/CQ0GABgGqMot/eBuVU9SaOSoUeuZra//Kkd78Qik9/MWXph1f61wwUBGEvgBtKYAXwNanonC5C0E2XfI=;
X-UUID: cb7b197a13154765bca26774b6164598-20191114
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1054460787; Thu, 14 Nov 2019 00:24:30 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 14 Nov 2019 00:24:37 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 14 Nov 2019 16:24:33 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 14 Nov 2019 16:24:32 +0800
Message-ID: <1573719874.7173.11.camel@mhfsdcap03>
Subject: Re: [PATCH v2 12/13] usb: gadget: udc: gr_udc: create debugfs
 directory under usb root
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Thu, 14 Nov 2019 16:24:34 +0800
In-Reply-To: <20191114032117.GA130252@kroah.com>
References: <1573541519-28488-1-git-send-email-chunfeng.yun@mediatek.com>
 <1573541519-28488-12-git-send-email-chunfeng.yun@mediatek.com>
 <20191114032117.GA130252@kroah.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 94DD5A98996FAB57FF50602EBAAB0F99593AF0E7BCF212FC48787D535B2269092000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_002444_020500_CBF4B3D4 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Peter Chen <Peter.Chen@nxp.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Yangtao Li <tiny.windzz@gmail.com>, linux-kernel@vger.kernel.org,
 Minas Harutyunyan <hminas@synopsys.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Fabio Estevam <festevam@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Kevin Cernekee <cernekee@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 bcm-kernel-feedback-list@broadcom.com, NXP Linux Team <linux-imx@nxp.com>,
 Cristian Birsan <cristian.birsan@microchip.com>, linux-media@vger.kernel.org,
 Fabrizio Castro <fabrizio.castro@bp.renesas.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Stephen Boyd <swboyd@chromium.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Bin
 Liu <b-liu@ti.com>, linux-arm-kernel@lists.infradead.org,
 Biju Das <biju.das@bp.renesas.com>, Felipe Balbi <balbi@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-usb@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Colin Ian King <colin.king@canonical.com>, Shawn Guo <shawnguo@kernel.org>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAyMDE5LTExLTE0IGF0IDExOjIxICswODAwLCBHcmVnIEtyb2FoLUhhcnRtYW4gd3Jv
dGU6DQo+IE9uIFR1ZSwgTm92IDEyLCAyMDE5IGF0IDAyOjUxOjU4UE0gKzA4MDAsIENodW5mZW5n
IFl1biB3cm90ZToNCj4gPiBOb3cgdGhlIFVTQiBnYWRnZXQgc3Vic3lzdGVtIGNhbiB1c2UgdGhl
IFVTQiBkZWJ1Z2ZzIHJvb3QgZGlyZWN0b3J5LA0KPiA+IHNvIG1vdmUgaXQncyBkaXJlY3Rvcnkg
ZnJvbSB0aGUgcm9vdCBvZiB0aGUgZGVidWdmcyBmaWxlc3lzdGVtIGludG8NCj4gPiB0aGUgcm9v
dCBvZiB1c2INCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHVuZmVuZyBZdW4gPGNodW5mZW5n
Lnl1bkBtZWRpYXRlay5jb20+DQo+ID4gLS0tDQo+ID4gdjI6DQo+ID4gICAxLiBhYmFuZG9uIG5l
dyBBUEkgdXNiX2RlYnVnZnNfY3JlYXRlX2RpcigpLCBhbmQgdXNlIHVzYl9kZWJ1Z19yb290DQo+
ID4gLS0tDQo+ID4gIGRyaXZlcnMvdXNiL2dhZGdldC91ZGMvZ3JfdWRjLmMgfCAyICstDQo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiA+IA0KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3VzYi9nYWRnZXQvdWRjL2dyX3VkYy5jIGIvZHJpdmVycy91
c2IvZ2FkZ2V0L3VkYy9ncl91ZGMuYw0KPiA+IGluZGV4IDdhMGU5YTU4YzJkOC4uNWZhYTA5YTZj
NzcwIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvdXNiL2dhZGdldC91ZGMvZ3JfdWRjLmMNCj4g
PiArKysgYi9kcml2ZXJzL3VzYi9nYWRnZXQvdWRjL2dyX3VkYy5jDQo+ID4gQEAgLTIwOCw3ICsy
MDgsNyBAQCBzdGF0aWMgdm9pZCBncl9kZnNfY3JlYXRlKHN0cnVjdCBncl91ZGMgKmRldikNCj4g
PiAgew0KPiA+ICAJY29uc3QgY2hhciAqbmFtZSA9ICJncl91ZGNfc3RhdGUiOw0KPiA+ICANCj4g
PiAtCWRldi0+ZGZzX3Jvb3QgPSBkZWJ1Z2ZzX2NyZWF0ZV9kaXIoZGV2X25hbWUoZGV2LT5kZXYp
LCBOVUxMKTsNCj4gPiArCWRldi0+ZGZzX3Jvb3QgPSBkZWJ1Z2ZzX2NyZWF0ZV9kaXIoZGV2X25h
bWUoZGV2LT5kZXYpLCB1c2JfZGVidWdfcm9vdCk7DQo+ID4gIAlkZWJ1Z2ZzX2NyZWF0ZV9maWxl
KG5hbWUsIDA0NDQsIGRldi0+ZGZzX3Jvb3QsIGRldiwgJmdyX2Rmc19mb3BzKTsNCj4gPiAgfQ0K
PiA+ICANCj4gDQo+IFRoaXMgYnJlYWtzIHRoZSBidWlsZDoNCj4gZHJpdmVycy91c2IvZ2FkZ2V0
L3VkYy9ncl91ZGMuYzogSW4gZnVuY3Rpb24g4oCYZ3JfZGZzX2NyZWF0ZeKAmToNCj4gZHJpdmVy
cy91c2IvZ2FkZ2V0L3VkYy9ncl91ZGMuYzoyMTE6NTc6IGVycm9yOiDigJh1c2JfZGVidWdfcm9v
dOKAmSB1bmRlY2xhcmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbikNCj4gICAyMTEgfCAg
ZGV2LT5kZnNfcm9vdCA9IGRlYnVnZnNfY3JlYXRlX2RpcihkZXZfbmFtZShkZXYtPmRldiksIHVz
Yl9kZWJ1Z19yb290KTsNCj4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+DQo+IGRyaXZlcnMvdXNiL2dh
ZGdldC91ZGMvZ3JfdWRjLmM6MjExOjU3OiBub3RlOiBlYWNoIHVuZGVjbGFyZWQgaWRlbnRpZmll
ciBpcyByZXBvcnRlZCBvbmx5IG9uY2UgZm9yIGVhY2ggZnVuY3Rpb24gaXQgYXBwZWFycyBpbg0K
PiBtYWtlWzRdOiAqKiogW3NjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6MjY1OiBkcml2ZXJzL3VzYi9n
YWRnZXQvdWRjL2dyX3VkYy5vXSBFcnJvciAxDQo+IA0KPiBzbyBJJ3ZlIGRyb3BwZWQgaXQgZnJv
bSB0aGUgcGF0Y2ggc2VyaWVzLg0KPiANCj4gUGxlYXNlIGZpeCB1cCBhbmQgcmVzZW5kLg0KT2sN
Cj4gDQo+IEFuZCBvZiBjb3Vyc2UsIGFsd2F5cyB0ZXN0LWJ1aWxkIHlvdXIgcGF0Y2hlcyBiZWZv
cmUgeW91IHNlbmQgdGhlbQ0KPiBvdXQuLi4NClNvcnJ5LCB3aWxsIGRvIGl0DQo+IA0KPiBncmVn
IGstaA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
