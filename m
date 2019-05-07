Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 465C516580
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 16:16:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FdKSQla2ik4+cxhSM/S6pnX1LbzZgELe5zrgtC+E1OQ=; b=VO0fjYlPZaICpw
	Nqj1VZdZrkfbvHsvmtBQPwfgBYyexvXZauAEcRsDf1K6Jxntvjm1yCKGSJh8agxi2yKZveHipkLCd
	TvsdxzMjHBIHfGkL/nThVz1BFIEYtMN4B4X8oC4NtyKwBpv27J9SE5dbDs0zsZFHjr0pKkB3fSIaO
	zn/a+2g6fiMh56sgeuGuvnmrepyAZSN41Ee11R/WWj0chh65ou8p5jspqVAUR8LLCP1Cp/51DlLxK
	SPEOkm9rxECAXr04r2Qka0ybNUCem5NlgGBa1Bn/35OpWw2HfJv/+G8G4jLqAeKfeQIDE5RPfs/Kz
	bJ+TKD4FouKF+FXP4zeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0to-0004hr-LM; Tue, 07 May 2019 14:16:52 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0th-0004hI-FA; Tue, 07 May 2019 14:16:47 +0000
X-UUID: f34c0b92af2943b1a0dcd7941e8316e8-20190507
X-UUID: f34c0b92af2943b1a0dcd7941e8316e8-20190507
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <frederic.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1614957369; Tue, 07 May 2019 06:16:28 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 07:16:26 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 22:16:19 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 7 May 2019 22:16:19 +0800
Message-ID: <1557238579.11663.15.camel@mtksdccf07>
Subject: Re: [RFC PATCH V1 3/6] dt-bindings: mt8183: Added DIP dt-bindings
From: Frederic Chen <frederic.chen@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Tue, 7 May 2019 22:16:19 +0800
In-Reply-To: <20190430011619.GA22170@bogus>
References: <20190417104511.21514-1-frederic.chen@mediatek.com>
 <20190417104511.21514-4-frederic.chen@mediatek.com>
 <20190430011619.GA22170@bogus>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_071645_512762_F3D52BF1 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 christie.yu@mediatek.com, srv_heupstream@mediatek.com,
 holmes.chiou@mediatek.com, suleiman@chromium.org, Jerry-ch.Chen@mediatek.com,
 tfiga@chromium.org, jungo.lin@mediatek.com, sj.huang@mediatek.com,
 yuzhao@chromium.org, hans.verkuil@cisco.com, zwisler@chromium.org,
 matthias.bgg@gmail.com, linux-mediatek@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVhciBSb2IsCgpJIGFwcHJlY2lhdGUgeW91ciBjb21tZW50cy4KCk9uIE1vbiwgMjAxOS0wNC0y
OSBhdCAyMDoxNiAtMDUwMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gT24gV2VkLCBBcHIgMTcsIDIw
MTkgYXQgMDY6NDU6MDhQTSArMDgwMCwgRnJlZGVyaWMgQ2hlbiB3cm90ZToKPiA+IFRoaXMgcGF0
Y2ggYWRkcyBEVCBiaW5kaW5nIGRvY3VtZW50YXRpb24gZm9yIHRoZSBEaWdpdGFsIEltYWdlCj4g
PiBQcm9jZXNzaW5nIChESVApIHVuaXQgb2YgY2FtZXJhIElTUCBzeXN0ZW0gb24gTWVkaWF0ZWsn
cyBTb0NzLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVkZXJpYyBDaGVuIDxmcmVkZXJpYy5j
aGVuQG1lZGlhdGVrLmNvbT4KPiA+IC0tLQo+ID4gIC4uLi9iaW5kaW5ncy9tZWRpYS9tZWRpYXRl
ayxtdDgxODMtZGlwLnR4dCAgICB8IDM1ICsrKysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgMzUgaW5zZXJ0aW9ucygrKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvbWVkaWF0ZWssbXQ4MTgzLWRpcC50eHQK
PiA+IAo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9t
ZWRpYS9tZWRpYXRlayxtdDgxODMtZGlwLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9tZWRpYS9tZWRpYXRlayxtdDgxODMtZGlwLnR4dAo+ID4gbmV3IGZpbGUgbW9kZSAx
MDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uMGUxOTk0YmY4MmYwCj4gPiAtLS0gL2Rldi9u
dWxsCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvbWVk
aWF0ZWssbXQ4MTgzLWRpcC50eHQKPiA+IEBAIC0wLDAgKzEsMzUgQEAKPiA+ICsqIE1lZGlhdGVr
IERpZ2l0YWwgSW1hZ2UgUHJvY2Vzc29yIChESVApCj4gPiArCj4gPiArRGlnaXRhbCBJbWFnZSBQ
cm9jZXNzb3IgKERJUCkgdW5pdCBpbiBNZWRpYXRlayBJU1Agc3lzdGVtIGlzIHJlc3BvbnNpYmxl
IGZvcgo+ID4gK2ltYWdlIGNvbnRlbnQgYWRqdXN0bWVudCBhY2NvcmRpbmcgdG8gdGhlIHR1bmlu
ZyBwYXJhbWV0ZXJzLiBESVAgY2FuIHByb2Nlc3MKPiA+ICt0aGUgaW1hZ2UgZm9ybSBtZW1vcnkg
YnVmZmVyIGFuZCBvdXRwdXQgdGhlIHByb2Nlc3NlZCBpbWFnZSB0byBtdWx0aXBsZSBvdXRwdXQK
PiA+ICtidWZmZXJzLiBGdXJ0aGVybW9yZSwgaXQgY2FuIHN1cHBvcnQgZGVtb3NhaWNpbmcgYW5k
IG5vaXNlIHJlZHVjdGlvbiBvbiB0aGUKPiA+ICtpbWFnZXMuCj4gPiArCj4gPiArUmVxdWlyZWQg
cHJvcGVydGllczoKPiA+ICstIGNvbXBhdGlibGU6ICJtZWRpYXRlayxtdDgxODMtZGlwIgo+ID4g
Ky0gcmVnOiBQaHlzaWNhbCBiYXNlIGFkZHJlc3MgYW5kIGxlbmd0aCBvZiB0aGUgZnVuY3Rpb24g
YmxvY2sgcmVnaXN0ZXIgc3BhY2UKPiA+ICstIGludGVycnVwdHM6IGludGVycnVwdCBudW1iZXIg
dG8gdGhlIGNwdQo+ID4gKy0gaW9tbXVzOiBzaG91bGQgcG9pbnQgdG8gdGhlIHJlc3BlY3RpdmUg
SU9NTVUgYmxvY2sgd2l0aCBtYXN0ZXIgcG9ydCBhcwo+ID4gKyAgYXJndW1lbnQsIHNlZSBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW9tbXUvbWVkaWF0ZWssaW9tbXUudHh0Cj4g
PiArICBmb3IgZGV0YWlscy4KPiA+ICstIG1lZGlhdGVrLGxhcmI6IG11c3QgY29udGFpbiB0aGUg
bG9jYWwgYXJiaXRlcnMgaW4gdGhlIGN1cnJlbnQgU29jcywgc2VlCj4gPiArICBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVtb3J5LWNvbnRyb2xsZXJzL21lZGlhdGVrLHNtaS1s
YXJiLnR4dAo+ID4gKyAgZm9yIGRldGFpbHMuCj4gPiArLSBjbG9ja3M6IG11c3QgY29udGFpbiB0
aGUgbG9jYWwgYXJiaXRlcnMgNSAoTEFSQjUpIGFuZCBESVAgY2xvY2sKPiA+ICstIGNsb2NrLW5h
bWVzOiBtdXN0IGNvbnRhaW4gRElQX0NHX0lNR19MQVJCNSBhbmQgRElQX0NHX0lNR19ESVAKPiA+
ICsKPiA+ICtFeGFtcGxlOgo+ID4gKwlkaXA6IGRpcEAxNTAyMjAwMCB7Cj4gPiArCQljb21wYXRp
YmxlID0gIm1lZGlhdGVrLG10ODE4My1kaXAiOwo+ID4gKwkJbWVkaWF0ZWssbGFyYiA9IDwmbGFy
YjU+Owo+IAo+ID4gKwkJbWVkaWF0ZWssbWRwMyA9IDwmbWRwX3JkbWEwPjsKPiA+ICsJCW1lZGlh
dGVrLHZwdSA9IDwmdnB1PjsKPiAKPiBOb3QgZG9jdW1lbnRlZC4KPiAKCuKAnG1lZGlhdGVrLHZw
deKAnSB3aWxsIGJlIHJlcGxhY2VkIGJ5IOKAnG1lZGlhdGVrLHNjcC7igJ0gSSB3b3VsZCBsaWtl
IHRvIAphZGQgdGhlIGZvbGxvd2luZyBkZXNjcmlwdGlvbiBpbiBuZXh0IHZlcnNpb24gb2YgdGhl
IHBhdGNoOgoKLSBtZWRpYXRlayxzY3A6IG11c3QgcG9pbnQgdG8gdGhlIHNjcCBibG9jayBvZiB0
aGUgY28tcHJvY2Vzc29yIHVzZWQKICB3aXRoIERJUC4gUGxlYXNlIHNlZQogIERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZW1vdGVwcm9jL210ayxzY3AudHh0IGZvciB0aGUKICBk
ZXRhaWwuCgotIG1lZGlhdGVrLG1kcDM6IG11c3QgcG9pbnQgdG8gdGhlIE1lZGlhIERhdGEgUGF0
aCAzIChNRFAzKSBibG9jay4KICBQbGVhc2Ugc2VlCiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL21lZGlhL21lZGlhdGVrLG10ODE4My1tZHAzLnR4dAogIGZvciB0aGUgZGV0YWls
LgoKRXhhbXBsZToKCgltZHBfcmRtYTA6IG1kcF9yZG1hMEAxNDAwMTAwMCB7CgkJY29tcGF0aWJs
ZSA9ICJtZWRpYXRlayxtdDgxODMtbWRwLXJkbWEiLAoJCQkgICAgICJtZWRpYXRlayxtdDgxODMt
bWRwMyI7CgkJbWVkaWF0ZWssdnB1ID0gPCZ2cHU+OwoJCW1lZGlhdGVrLHNjcCA9IDwmc2NwPjsK
CQltZWRpYXRlayxtZHAtaWQgPSA8MD47CgkJLyogLi4uLi4uICovCgkJfTsKCglzY3A6IHNjcEAx
MDUwMDAwMCB7CgkJY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDgxODMtc2NwIjsKCQlyZWcgPSA8
MCAweDEwNTAwMDAwIDAgMHg4MDAwMD4sCgkJICAgICAgPDAgMHgxMDVjMDAwMCAwIDB4NTAwMD47
CgkJcmVnLW5hbWVzID0gInNyYW0iLCAiY2ZnIjsKCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTc0
IElSUV9UWVBFX0xFVkVMX0hJR0g+OwoJCWNsb2NrcyA9IDwmaW5mcmFjZmcgQ0xLX0lORlJBX1ND
UFNZUz47CgkJY2xvY2stbmFtZXMgPSAibWFpbiI7CgkJbWVtb3J5LXJlZ2lvbiA9IDwmc2NwX21l
bV9yZXNlcnZlZD47CgkJc3RhdHVzID0gIm9rYXkiOwoJfTsKCglkaXA6IGRpcEAxNTAyMjAwMCB7
CgkJY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDgxODMtZGlwIjsKCQltZWRpYXRlayxsYXJiID0g
PCZsYXJiNT47CgkJbWVkaWF0ZWssbWRwMyA9IDwmbWRwX3JkbWEwPjsKCQltZWRpYXRlayxzY3Ag
PSA8JnNjcD47CgkJLyogLi4uLi4uICovCgl9OwoKClRoZSBkZXBlbmRlbnQgTWVkaWF0ZWsgU0NQ
IGFuZCBNRFAzIHBhdGNoIGhhdmUgYmVlbiBzZW50OgpbMV0gTWVkaWF0ZWsgU0NQLCBodHRwczov
L3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEwODk3MzE5LwpbMl0gTWVpZGF0ZWsgTURQMywg
aHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMDg0NDIyOS8KCj4gPiArCQlpb21t
dXMgPSA8JmlvbW11IE00VV9QT1JUX0NBTV9JTUdJPjsKPiA+ICsJCXJlZyA9IDwwIDB4MTUwMjIw
MDAgMCAweDYwMDA+Owo+ID4gKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDI2OCBJUlFfVFlQRV9M
RVZFTF9MT1c+Owo+ID4gKwkJY2xvY2tzID0gPCZpbWdzeXMgQ0xLX0lNR19MQVJCNT4sCj4gPiAr
CQkJIDwmaW1nc3lzIENMS19JTUdfRElQPjsKPiA+ICsJCWNsb2NrLW5hbWVzID0gIkRJUF9DR19J
TUdfTEFSQjUiLAo+ID4gKwkJCSAgICAgICJESVBfQ0dfSU1HX0RJUCI7Cj4gPiArCX07Cj4gPiAt
LSAKPiA+IDIuMTguMAo+ID4gCgpTaW5jZXJlbHksCgpGcmVkZXJpYyBDaGVuCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
