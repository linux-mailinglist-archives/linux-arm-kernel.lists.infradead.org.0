Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCB77272C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 07:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O6gNRZoZCa5LNhKhISNK2REuHfxSGi12mhSNVbBg+do=; b=F+9i5VanlbZw0L
	P41wU88+xcJlPTUc5YtaLs3CHPRx6Njbq6HCvKDTtZLdOkfT3ftN86kMGjjLMgddyX6WNkKCgmc/u
	NmXAeK+8OSgPOneCvzC6Dg3IL4+RBvgDCn9wSVunV5CXHDf8BetfOJcjlRC0e4FCX3MDDGbUuWoZS
	pzSPFU00/P4QIEEqDR3kRn+vka73NzNiEuvqA6tp0r1/CTUUT6sJNcfdIZF2ECh34tEbDc8ZKqNdZ
	cewtXdlaHqO7etB0yqAZVjy2ct6TNYCZ9FsCKAdeGM7Sh++Z9JIwT1D1/9kF+dv3PGttmI843TTgz
	IZH4uvXCcN+FWsyT1KMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq9WH-0003zO-2M; Wed, 24 Jul 2019 05:08:53 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq9W0-0003xu-2K; Wed, 24 Jul 2019 05:08:37 +0000
X-UUID: 6faa80a21ce74b979748b4210eb36ecb-20190723
X-UUID: 6faa80a21ce74b979748b4210eb36ecb-20190723
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1045683785; Tue, 23 Jul 2019 21:08:27 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 23 Jul 2019 22:08:26 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 24 Jul 2019 13:08:24 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 24 Jul 2019 13:08:25 +0800
Message-ID: <1563944904.7235.8.camel@mtkswgap22>
Subject: RE: [PATCH v1 0/2] scsi: ufs: Fix broken hba->outstanding_tasks
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Wed, 24 Jul 2019 13:08:24 +0800
In-Reply-To: <SN6PR04MB49256F66F259185F3876CCABFCC40@SN6PR04MB4925.namprd04.prod.outlook.com>
References: <1562906656-27154-1-git-send-email-stanley.chu@mediatek.com>
 <SN6PR04MB4925208835D4760249E82DB7FCC50@SN6PR04MB4925.namprd04.prod.outlook.com>
 <SN6PR04MB49256F66F259185F3876CCABFCC40@SN6PR04MB4925.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_220836_115431_3FD1ABF9 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "pedrom.sousa@synopsys.com" <pedrom.sousa@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXZyaSwKCk9uIE1vbiwgMjAxOS0wNy0yMiBhdCAwNjoxMCArMDAwMCwgQXZyaSBBbHRtYW4g
d3JvdGU6Cj4gPiAKPiA+ID4KPiA+ID4gSGksCj4gPiA+Cj4gPiA+ID4KPiA+ID4gPiBDdXJyZW50
bHkgYml0cyBpbiBoYmEtPm91dHN0YW5kaW5nX3Rhc2tzIGFyZSBjbGVhcmVkIG9ubHkgYWZ0ZXIg
dGhlaXIKPiA+ID4gPiBjb3JyZXNwb25kaW5nIHRhc2sgbWFuYWdlbWVudCBjb21tYW5kcyBhcmUg
c3VjY2Vzc2Z1bGx5IGRvbmUgYnkKPiA+ID4gPiBfX3Vmc2hjZF9pc3N1ZV90bV9jbWQoKS4KPiA+
ID4gPgo+ID4gPiA+IElmIHRpbWVvdXQgaGFwcGVucyBpbiBhIHRhc2sgbWFuYWdlbWVudCBjb21t
YW5kLCBpdHMgY29ycmVzcG9uZGluZwo+ID4gPiA+IGJpdCBpbiBoYmEtPm91dHN0YW5kaW5nX3Rh
c2tzIHdpbGwgbm90IGJlIGNsZWFyZWQgdW50aWwgbmV4dCB0YXNrCj4gPiA+ID4gbWFuYWdlbWVu
dCBjb21tYW5kIHdpdGggdGhlIHNhbWUgdGFnIHVzZWQgc3VjY2Vzc2Z1bGx5IGZpbmlzaGVzLuKA
pwo+ID4gPiB1ZnNoY2RfY2xlYXJfdG1fY21kIGlzIGFsc28gY2FsbGVkIGFzIHBhcnQgb2YgdWZz
aGNkX2Vycl9oYW5kbGVyLgo+ID4gPiBEb2VzIHRoaXMgY2hhbmdlIHNvbWV0aGluZyBpbiB5b3Vy
IGFzc3VtcHRpb25zPwo+ID4gQW5kIEJUVyB0aGVyZSBpcyBhIHNwZWNpZmljIF9fY2xlYXJfYml0
IGluIF9fdWZzaGNkX2lzc3VlX3RtX2NtZCgpIGluIGNhc2UKPiA+IG9mIGEgVE8uCj4gCj4gR2F2
ZSBpdCBhbm90aGVyIGxvb2sgLSAKPiBJZiBpbmRlZWQgdGhpcyBiaXQgaXNuJ3QgY2xlYXJlZCBh
cyBwYXJ0IG9mIHRoZSBlcnJvciBmbG93IHRoYXQgdGhlIHRpbWVvdXQgdHJpZ2dlcnMsCj4gSSB0
aGluayB5b3Ugc2hvdWxkIHJlbGF0ZSB0byB1ZnNoY2RfY2xlYXJfdG1fY21kIHNwZWNpZmljYWxs
eSBpbiB5b3VyIGNvbW1pdCBsb2cgLSAKPiBCZWNhdXNlIHRoaXMgaXMgdGhlIG9idmlvdXMgcGxh
Y2Ugd2hlcmUgdGhlIGJpdCBjbGVhbnVwIHNob3VsZCB0YWtlIHBsYWNlLgo+IAo+IEFsc28gdGhl
IGZpeCBzaG91bGQgYmUgbXVjaCBtb3JlIGludHVpdGl2ZSBJTU8gLSAKPiBUb2RheSB3ZSBkbyBf
X2NsZWFyX2JpdCgpIG9uIHN1Y2Nlc3MsIHVmc2hjZF9jbGVhcl90bV9jbWQoKSBvbiBlcnJvciwK
PiBBbmQgYWxzbyB1ZnNoY2RfcHV0X3RtX3Nsb3QoKSBlaXRoZXIgd2F5Pwo+IAo+IE1heWJlIHlv
dSBjYW4gY2hvb3NlIGEgc2luZ2xlIHBsYWNlIHRvIGNsZWFyIGl0LCB3aXRob3V0IGFueSBhZGRp
dGlvbmFsIGNvZGU/Cgp1ZnNoY2RfY2xlYXJfdG1fY21kKCkgaXMgc2ltaWxhciB0byB1ZnNoY2Rf
Y2xlYXJfY21kKCkgd2hpY2ggdHJpZXMgdG8Kd3JpdGUgdGltZWQtb3V0IGJpdCBpbiAiY2xlYXIg
cmVnaXN0ZXIiLiBUaGV5IGRvIG5vdCBjbGVhbiBiaXRzIGluIGJvdGgKb3V0c3RhbmRpbmcgbWFz
a3MuCgpBbm90aGVyIHJlYXNvbiB0byBub3QgdG8gZG8gb3V0c3RhbmRpbmcgYml0cyBjbGVhbnVw
IGluCnVmc2hjZF9jbGVhcl90bV9jbWQoKSBpczogaWYgaG9zdCBpcyB1bmFibGUgdG8gY2xlYXIg
VE0gY29tbWFuZCBieQpzZXR0aW5nICJjbGVhciByZWdpc3RlciIsIHRoZSBUTSBjb21tYW5kIG1h
eSBiZSBzdGlsbCAib3V0c3RhbmRpbmciIGluCnRoZSBkZXZpY2UuIEluIHRoaXMgY2FzZSwgaXQg
bWF5IGJlIGJldHRlciB0byBkbyBjbGVhbnVwIGFmdGVyIHJlc2V0IGlzCmRvbmUuIENsZWFudXAg
aW5jbHVkZXMgYml0cyBpbiBoYmEtPm91dHN0YW5kaW5nX3Rhc2tzIGFuZApoYmEtPnRtX3Nsb3Rz
X2luX3VzZSB3aGljaCBpcyBwb3NzaWJseSBjbGVhbmVkIHRvbyBlYXJseSBieQp1ZnNoY2RfcHV0
X3RtX3Nsb3QoKSBpZiBjb21tYW5kIGlzIHRpbWVkLW91dCBub3cuCgpSZWZlcnJpbmcgdG8gZXJy
b3IgaGFuZGxpbmcgZmxvdyBvZiBoYmEtPm91dHN0YW5kaW5nX3JlcXMsIGFsbCB0aW1lZC1vdXQK
Yml0cyB3aWxsIGJlIGNsZWFuZWQgYnkgdWZzaGNkX3Jlc2V0X2FuZF9yZXN0b3JlKCkgPT4KdWZz
aGNkX3RyYW5zZmVyX3JlcV9jb21wbCgpIGFmdGVyIHJlc2V0IGlzIGRvbmUuIFNpbWlsYXIgaGFu
ZGxpbmcgZm9yCmhiYS0+b3V0c3RhbmRpbmdfdGFza3MgY291bGQgYmUgYXBwbGllZCwgaS5lLiwg
ZG8gY2xlYW51cCBieQp1ZnNoY2RfcmVzZXRfYW5kX3Jlc3RvcmUoKSA9PiB1ZnNoY2RfdG1jX2hh
bmRsZXIoKS4KClRoZSBuZXh0IHRoaW5nIGlzIHdoYXQgeW91IHN1Z2dlc3RlZDogSG93IHRvIG1h
a2UgdGhlIGZpeCBtb3JlCmludHVpdGl2ZS4gUGF0Y2hzZXQgdjIgd2lsbCBiZSB1cGxvYWRlZCBm
b3IgcmV2aWV3OiBJdCB0cmllcyB0bwoicmUtZmFjdG9yIiBjbGVhbnVwIGpvYnMgZmlyc3QsIGFu
ZCB0aGVuIGFkZCBmaXhlZCBmbG93IHRvIG1ha2UgdGhlCndob2xlIHBhdGNoIG1vcmUgcmVhZGFi
bGUuCgpPbmUgbW9yZSB0aGluZywgYWJvdmUgZGVzY3JpcHRpb24gYW5kIGZsb3cgaXMgZG9uZSB0
aHJvdWdoIFVGU0hDRCBTQ1NJCmVycm9yIGhhbmRsaW5nIHJvdXRpbmVzIHJlZ2lzdGVyZWQgd2l0
aCBTQ1NJIE1pZGxheWVyLiBGb3IgVE0gY29tbWFuZAp0aW1lb3V0IGhhcHBlbmluZyBpbiBic2cg
cGF0aCB3aXRob3V0IGVycm9yIGhhbmRsaW5nIHRyaWdnZXJlZCBieSBTQ1NJCmxheWVyLCB3ZSBt
YXkgbmVlZCB0byBjb25zaWRlciB0byBoYW5kbGUgdGhvc2UgdGFza3MgaW4gZnV0dXJlIHBhdGNo
ZXMuCgo+IAo+IFRoYW5rcywKPiBBdnJpCgpUaGFua3MsClN0YW5sZXkKCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1tZWRpYXRlayBtYWls
aW5nIGxpc3QKPiBMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
