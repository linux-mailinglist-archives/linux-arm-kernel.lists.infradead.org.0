Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D3C6C8B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 07:21:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNZnUyMIz0BboZWTpo1mpetQuCPaE1wcALIjQCm2Fto=; b=nwqGYc3OoRDNAM
	q2qfrNzJ4fraQYIIGukz1zplaka3aFEXVNIfyxRKB7TUMedYS93cEj1dkP66YeX6FMxidipEqt79F
	LD0cdAMNhYaqOvcB+ah37U9YsjkfhK1AIBnZqHluH+9/3EqQAho+T6eBhyvJ9d2NRKMOYXNPgEd22
	+j9JjZeMJQowIl0YvTMKeKH863+PLx3ScBvKfniTQs5P1L0UT0PGb+e29bQ5AroWY1n0PdvTRKJeg
	PAMG50fwChQVU2HeUCWgX1iCtlDs4m948pvIWMMRqJ2qGXzB2kai7mgGalo1h1iL3An6omTnmhkJK
	TPxw5ueQfgwRSyUI/+GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnyrG-0007dQ-7l; Thu, 18 Jul 2019 05:21:34 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnyr2-0007ck-30; Thu, 18 Jul 2019 05:21:21 +0000
X-UUID: 162bfb5dfd544dfab6e7669d4f1718e0-20190717
X-UUID: 162bfb5dfd544dfab6e7669d4f1718e0-20190717
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1187760907; Wed, 17 Jul 2019 21:21:06 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 17 Jul 2019 22:21:04 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 18 Jul 2019 13:21:03 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 18 Jul 2019 13:21:02 +0800
Message-ID: <1563427263.7235.6.camel@mtkswgap22>
Subject: Re: [PATCH v1 0/2] scsi: ufs: Fix broken hba->outstanding_tasks
From: Stanley Chu <stanley.chu@mediatek.com>
To: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>
Date: Thu, 18 Jul 2019 13:21:03 +0800
In-Reply-To: <1562906656-27154-1-git-send-email-stanley.chu@mediatek.com>
References: <1562906656-27154-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_222120_138412_0CA06761 
X-CRM114-Status: GOOD (  12.28  )
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
Cc: "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 Andy Teng =?UTF-8?Q?=28=E9=84=A7=E5=A6=82=E5=AE=8F=29?=
 <Andy.Teng@mediatek.com>,
 Chun-Hung Wu =?UTF-8?Q?=28=E5=B7=AB=E9=A7=BF=E5=AE=8F=29?=
 <Chun-hung.Wu@mediatek.com>,
 Kuohong Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=8B=E9=B4=BB=29?=
 <kuohong.wang@mediatek.com>, "evgreen@chromium.org" <evgreen@chromium.org>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Peter Wang =?UTF-8?Q?=28=E7=8E=8B=E4=BF=A1=E5=8F=8B=29?=
 <peter.wang@mediatek.com>, "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "pedrom.sousa@synopsys.com" <pedrom.sousa@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXZyaSwgQWxpbSBhbmQgUGVkcm9tLAoKR2VudGxlIHBpbmcgZm9yIHRoaXMgZml4LgoKT24g
RnJpLCAyMDE5LTA3LTEyIGF0IDEyOjQ0ICswODAwLCBTdGFubGV5IENodSB3cm90ZToKPiBDdXJy
ZW50bHkgYml0cyBpbiBoYmEtPm91dHN0YW5kaW5nX3Rhc2tzIGFyZSBjbGVhcmVkIG9ubHkgYWZ0
ZXIgdGhlaXIKPiBjb3JyZXNwb25kaW5nIHRhc2sgbWFuYWdlbWVudCBjb21tYW5kcyBhcmUgc3Vj
Y2Vzc2Z1bGx5IGRvbmUgYnkKPiBfX3Vmc2hjZF9pc3N1ZV90bV9jbWQoKS4KPiAKPiBJZiB0aW1l
b3V0IGhhcHBlbnMgaW4gYSB0YXNrIG1hbmFnZW1lbnQgY29tbWFuZCwgaXRzIGNvcnJlc3BvbmRp
bmcKPiBiaXQgaW4gaGJhLT5vdXRzdGFuZGluZ190YXNrcyB3aWxsIG5vdCBiZSBjbGVhcmVkIHVu
dGlsIG5leHQgdGFzawo+IG1hbmFnZW1lbnQgY29tbWFuZCB3aXRoIHRoZSBzYW1lIHRhZyB1c2Vk
IHN1Y2Nlc3NmdWxseSBmaW5pc2hlcy7igKcKPiAKPiBUaGlzIGlzIHdyb25nIGFuZCBjYW4gbGVh
ZCB0byBzb21lIGlzc3VlcywgbGlrZSBwb3dlciBjb25zdW1wdG9uIGlzc3VlLgo+IEZvciBleGFt
cGxlLCB1ZnNoY2RfcmVsZWFzZSgpIGFuZCB1ZnNoY2RfZ2F0ZV93b3JrKCkgd2lsbCBkbyBub3Ro
aW5nCj4gaWYgaGJhLT5vdXRzdGFuZGluZ190YXNrcyBpcyBub3QgemVybyBldmVuIGlmIGJvdGgg
VUZTIGhvc3QgYW5kIGRldmljZXMKPiBhcmUgYWN0dWFsbHkgaWRsZS4KPiAKPiBCZWNhdXNlIGVy
cm9yIGhhbmRsaW5nIGZsb3csIGkuZS4sIHVmc2hjZF9yZXNldF9hbmRfcmVzdG9yZSgpLCB3aWxs
IGJlCj4gdHJpZ2dlcmVkIGFmdGVyIGFueSB0YXNrIG1hbmFnZW1lbnQgY29tbWFuZCB0aW1lcyBv
dXQsIHdlIGZpeCB0aGlzIGJ5Cj4gY2xlYXJpbmcgY29ycmVzcG9uZGluZyBoYmEtPm91dHN0YW5k
aW5nX3Rhc2tzIGJpdHMgZHVyaW5nIHRoaXMgZmxvdy4KPiBUbyBhY2hpZXZlIHRoaXMsIHdlIG5l
ZWQgYSBtYXNrIHRvIHRyYWNrIHRpbWVkLW91dCBjb21tYW5kcyBhbmQgdGh1cwo+IGVycm9yIGhh
bmRsaW5nIGZsb3cgY2FuIGNsZWFyIHRoZWlyIHRhZ3Mgc3BlY2lmaWNhbGx5Lgo+IAo+IFN0YW5s
ZXkgQ2h1ICgyKToKPiAgIHNjc2k6IHVmczogTWFrZSBuZXcgZnVuY3Rpb24gZm9yIGNsZWFyaW5n
IG91dHN0YW5kaW5nIHRhc2sgYml0cwo+ICAgc2NzaTogdWZzOiBGaXggYnJva2VuIGhiYS0+b3V0
c3RhbmRpbmdfdGFza3MKPiAKPiAgZHJpdmVycy9zY3NpL3Vmcy91ZnNoY2QuYyB8IDQ5ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLQo+ICBkcml2ZXJzL3Njc2kvdWZzL3Vm
c2hjZC5oIHwgIDEgKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKyksIDcgZGVs
ZXRpb25zKC0pCj4gCgpUaGFua3MsClN0YW5sZXkKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
