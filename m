Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9901E6EE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 04:52:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2rDwR8acwFIvOu2ignn5KmqGiOaAdqbUFjzE2SnY4Q8=; b=tVSSoIpoIydxbr
	+VUuYQi73PGQpKs6YJ43llaBaCYX82PvZ2dHAgptbFLsIX6k8IQE0RRAugyuuL0xXyCAEeg5WXDJH
	GjNOlcdNnEAmvC+BhVEXMULry9XK28B/y139t4l2d9J1Nlo+votrsS93TunIoaiKKj0JdEPhfgdhr
	Oi5B+66nzSl73a9OzhCExaRrBfsx+cOLG+tzChlEu/Pxb4wsnfJsgd+KPa+V+wNXIyIDjC2DM46LR
	Lgvq18PqgXy39TRsYQK010MHxxdlfamzCNRz3RGyWbLsKvPopXkviYHZAOycdeEy/skSIjSMDQO0L
	QSUWKGGVWP1DvDMCjUKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQk20-00072I-UK; Wed, 15 May 2019 02:52:36 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQk1t-00071a-Bx; Wed, 15 May 2019 02:52:31 +0000
X-UUID: 554c60140f79467b98544518822b8291-20190514
X-UUID: 554c60140f79467b98544518822b8291-20190514
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 637842078; Tue, 14 May 2019 18:52:20 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 19:52:19 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 15 May 2019 10:52:11 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 15 May 2019 10:52:12 +0800
Message-ID: <1557888732.24427.37.camel@mtkswgap22>
Subject: RE: [EXT] [PATCH v1 2/3] scsi: ufs: add error handling of auto-hibern8
From: Stanley Chu <stanley.chu@mediatek.com>
To: "Bean Huo (beanhuo)" <beanhuo@micron.com>
Date: Wed, 15 May 2019 10:52:12 +0800
In-Reply-To: <BN7PR08MB56840A3CD3BA7C107D0230CADB080@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <1557758186-18706-1-git-send-email-stanley.chu@mediatek.com>
 <1557758186-18706-3-git-send-email-stanley.chu@mediatek.com>
 <BN7PR08MB568438668FC7C90A1284F53DDB0F0@BN7PR08MB5684.namprd08.prod.outlook.com>
 <1557817102.24427.20.camel@mtkswgap22>
 <BN7PR08MB56840A3CD3BA7C107D0230CADB080@BN7PR08MB5684.namprd08.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: F333B7094BABB211A3915B8D030D67B65CA83E38D06C435B30630073FF8167922000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_195229_416677_9B30C3AE 
X-CRM114-Status: GOOD (  19.55  )
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "subhashj@codeaurora.org" <subhashj@codeaurora.org>,
 "sayalil@codeaurora.org" <sayalil@codeaurora.org>,
 "pedrom.sousa@synopsys.com" <pedrom.sousa@synopsys.com>,
 "vivek.gautam@codeaurora.org" <vivek.gautam@codeaurora.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQmVhbiwKCk9uIFR1ZSwgMjAxOS0wNS0xNCBhdCAxMToxNCArMDAwMCwgQmVhbiBIdW8gKGJl
YW5odW8pIHdyb3RlOgo+IEhpLCBTdGFubGV5Cj4gVGhhbmtzIGZvciByZXBseS4KPiAKPiA+Cj4g
Pk9uIE1vbiwgMjAxOS0wNS0xMyBhdCAxODoyMSArMDAwMCwgQmVhbiBIdW8gKGJlYW5odW8pIHdy
b3RlOgo+ID4+IEhpLCBTdGFubGV5Cj4gPj4KPiA+PiA+Kwo+ID4+ID4rc3RhdGljIGlubGluZSBi
b29sIHVmc2hjZF9pc19hdXRvX2hpYmVybjhfZXJyb3Ioc3RydWN0IHVmc19oYmEgKmhiYSwKPiA+
PiA+KwkJCQkJCXUzMiBpbnRyX21hc2spCj4gPj4gPit7Cj4gPj4gPisJcmV0dXJuICh1ZnNoY2Rf
aXNfYXV0b19oaWJlcm44X3N1cHBvcnRlZChoYmEpICYmCj4gPj4gPisJCSFoYmEtPnVpY19hc3lu
Y19kb25lICYmCj4gPj4KPiA+PiBIZXJlIGNoZWNrIGlmIHVpY19hc3luY19kb25lIGlzIE5VTEws
IG5vIGJpZyBwcm9ibGVtIHNvIGZhciwgYnV0IG5vdCBzYWZlCj4gPmVub3VnaC4KPiA+PiBIb3cg
YWJvdXQgc2V0dGluZyBhIGZsYWcgaW4gdWZzaGNkX2F1dG9faGliZXJuOF9lbmFibGUoKSwKPiA+
Cj4gPj4KPiA+PiBJIGNvbmNlcm4gYWJvdXQgaG93IHRvIGNvbXBhdGlibGUgd2l0aCBhdXRvX2hp
YmVybjggZGlzYWJsZWQgY29uZGl0aW9uLgo+ID4KPiA+Q3VycmVudGx5IGF1dG8taGliZXJuOCBk
aXNhYmxpbmcgbWV0aG9kIGlzIG5vdCBpbXBsZW1lbnRlZCBpbiBtYWluc3RyZWFtLAo+ID5zbyBh
biAiZW5hYmxpbmciIGZsYWcgbWF5IGxvb2tzIHJlZHVuZGFudCB1bmxlc3MgZGlzYWJsaW5nIHBh
dGggaXMgcmVhbGx5Cj4gPmV4aXN0ZWQuCj4gPgo+IERpZCB5b3UgdHJ5IHRvIHVwZGF0ZSBBdXRv
LUhpYmVybmF0ZSBJZGxlIFRpbWVyIHdpdGggMCB0aHJvdWdoICcvc3lzJyAgKHNjc2k6IHVmczog
QWRkIHN1cHBvcnQgZm9yIEF1dG8tSGliZXJuYXRlIElkbGUgVGltZXIpPyAKPiBJIGRvbid0IGtu
b3cgaWYgdGhpcyB3aWxsIGRpc2FibGUgeW91ciBVRlMgY29udHJvbGxlciBBdXRvLUhpYmVybmF0
ZS4KPiBJZiBoYXZpbmcgYSBsb29rIGF0IFVGUyBob3N0IFNwZWMsIHNvZnR3YXJlIHdyaXRlcyDi
gJww4oCdIHRvIGRpc2FibGUgQXV0by1IaWJlcm5hdGUgSWRsZSBUaW1lci4KPiBTb3JyeSBJIGNh
bm5vdCB2ZXJpZnkgdGhpcyBvbiBteSBwbGF0Zm9ybSBzaW5jZSBpdCBkb2Vzbid0IHN1cHBvcnQg
YXV0by1oaWJlcm5hdGUuCj4gCgpTb3JyeSBJIG1pc3NlZCB0aGlzIC9zeXMgaW50ZXJmYWNlIGZv
ciBBdXRvLUhpYmVybmF0ZSBjb250cm9sLgoKWWVzLCBJIGhhdmUgdGVzdGVkICJBdXRvLUhpYmVy
bmF0ZSBkaXNhYmxlZCIgY2FzZSwgaW4gdGhpcyBjYXNlLApVSUNfSElCRVJOQVRFX0VOVEVSIGFu
ZCBVSUNfSElCRVJOQVRFX0VYSVQgaW50ZXJydXB0cyBjb21lcyBvbmx5IGlmCk1hbnVhbC1IaWJl
cm5hdGUgaXMgcGVyZm9ybWVkIGFuZCB3YWl0aW5nIGZvciBjb21wbGV0aW9uLiBCb3RoCmludGVy
cnVwdHMgd2lsbCBub3QgYmUgaWRlbnRpZmllZCBhcyBBdXRvLUhpYmVybmF0ZSBlcnJvcnMgYnkg
Y2hlY2tpbmcKaGJhLT51aWNfYXN5bmNfZG9uZS4KCkFzIGZvciB5b3VyIGNvbmNlcm5pbmcsIEkg
d291bGQgbGlrZSB0byBtYWtlICJBdXRvLUhpYmVybmF0ZSBlcnJvcgpkZXRlY3Rpb24iIG1vcmUg
cHJlY2lzZSBpbiBuZXh0IHZlcnNpb246IFVzZSBiZWxvdyBjb25kaXRpb25zIGluc3RlYWQgb2YK
Y2hlY2tpbmcgaGJhLT51aWNfYXN5bmNfZG9uZToKCkFzLWlzOgoKc3RhdGljIGlubGluZSBib29s
IHVmc2hjZF9pc19hdXRvX2hpYmVybjhfZXJyb3Ioc3RydWN0IHVmc19oYmEgKmhiYSwKCQkJCQkJ
dTMyIGludHJfbWFzaykKewoJcmV0dXJuICh1ZnNoY2RfaXNfYXV0b19oaWJlcm44X3N1cHBvcnRl
ZChoYmEpICYmCgkJIWhiYS0+dWljX2FzeW5jX2RvbmUgJiYKCQkoaW50cl9tYXNrICYgVUZTSENE
X1VJQ19BSDhfRVJST1JfTUFTSykpOwp9CgpUby1iZToKCnN0YXRpYyBib29sIHVmc2hjZF9pc19h
dXRvX2hpYmVybjhfZXJyb3Ioc3RydWN0IHVmc19oYmEgKmhiYSwKCQkJCQkJdTMyIGludHJfbWFz
aykKewoJaWYgKCF1ZnNoY2RfaXNfYXV0b19oaWJlcm44X3N1cHBvcnRlZChoYmEpKQoJCXJldHVy
biBmYWxzZTsKCglpZiAoIShpbnRyX21hc2sgJiBVRlNIQ0RfVUlDX0FIOF9FUlJPUl9NQVNLKSkK
CQlyZXR1cm4gZmFsc2U7CgoJaWYgKGhiYS0+YWN0aXZlX3VpY19jbWQgJiYKCSAgICAoKGhiYS0+
YWN0aXZlX3VpY19jbWQtPmNvbW1hbmQgPT0gVUlDX0NNRF9ETUVfSElCRVJfRU5URVIpIHx8Cgkg
ICAgKGhiYS0+YWN0aXZlX3VpY19jbWQtPmNvbW1hbmQgPT0gVUlDX0NNRF9ETUVfSElCRVJfRVhJ
VCkpKQoJCXJldHVybiBmYWxzZTsKCglyZXR1cm4gdHJ1ZTsKfQoKV2hhdCB3b3VsZCB5b3UgdGhp
bmsgYWJvdXQgdGhpcyBjaGFuZ2U/Cgo+IAo+ID5JIGFncmVlIHRoYXQgY2hlY2tpbmcgaGJhLT51
aWNfYXN5bmNfZG9uZSBoZXJlIGRvZXMgbm90IGxvb2sgc28gaW50dWl0aXZlLgo+ID5Ib3dldmVy
IGV2ZW4gaWYgYXV0by1oaWJlcm44IGlzIGRpc2FibGVkLCB0aGVzZSBjaGVja3MgY291bGQgYmUg
c2FmZSBlbm91Z2gKPiA+YmVjYXVzZSBib3RoICJVSUNfSElCRVJOQVRFX0VOVEVSIiBhbmQgIlVJ
Q19ISUJFUk5BVEVfRVhJVCIgYXJlCj4gPnJhaXNlZCBvbmx5IGlmICJtYW51YWwtaGliZXJuYXRl
IiBpcyBwZXJmb3JtZWQsIGFuZCBpbiB0aGlzIGNhc2UgaGJhLQo+ID4+dWljX2FzeW5jX2RvbmUg
c2hhbGwgYmUgdHJ1ZS4KPiA+Cj4gWWVzLCBtb3N0IG9mIGNhc2VzICx0aGlzIGlzIG5vIHByb2Js
ZW0uCj4gCj4gPkFueXRoaW5nIGVsc2Ugb3IgY29ybmVyIGNhc2UgSSBtaXNzZWQ/Cj4gPgo+IFRo
ZSBvdGhlcnMgYXJlIGZpbmUuIEkgb25seSBjb25jZXJuIGNoZWNraW5nIGhiYS0+dWljX2FzeW5j
X2RvbmUuCj4gCj4gLy9CZWFuCgpNYW55IHRoYW5rcywKU3RhbmxleQoKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
