Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB2810F91C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 08:45:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lX3N9PxRLV1nQiZJcIK88SSTlGPAnyNi60peLpB33Jw=; b=shyttYExaV6xmj
	YMmH+b5SpC23g8+s/23FWgmujHD2ZH7R6oePpagKE8f681xhpdqmTeBmLlbXAIf4fwLX53HRJN6BF
	AWPZej9/5tBR2C6pFF6yNi+bP2b9MaHnxNAyOXaBzktjEdYh5qlfYXCi9GDADmP98kTfoke3LquOg
	xIe6VBJQZI1xagQ0tKwwTIKUK0/ypCEdSiZCilU4AyPZ6oLr6fREZAUalP3/gvKDbLU2VwG+WKr7b
	olbDfR0rBG/iUVavLtTgH+ugK+8TvyZUr9fnXAkyY3xl22U3FkQPYS8jvVvWedK9PdmUK/pQgfBPv
	mAuIYODY2vJWB3dBtRuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2sE-0007V6-Iy; Tue, 03 Dec 2019 07:45:30 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ic2s6-0007UW-Qs; Tue, 03 Dec 2019 07:45:24 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xB37jJbZ016008,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xB37jJbZ016008
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 3 Dec 2019 15:45:19 +0800
Received: from james-BS01.localdomain (172.21.190.33) by
 RTITCASV01.realtek.com.tw (172.21.6.18) with Microsoft SMTP Server id
 14.3.468.0; Tue, 3 Dec 2019 15:45:18 +0800
From: James Tai <james.tai@realtek.com>
To: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Subject: [PATCH 0/6] arm64: Realtek RTD1619 clock and reset controllers
Date: Tue, 3 Dec 2019 15:45:07 +0800
Message-ID: <20191203074513.9416-1-james.tai@realtek.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_234522_998605_8AE2F88B 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Cheng-Yu Lee <cylee12@realtek.com>,
 linux-realtek-soc@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywKClRoaXMgc2VyaWVzIGFkZHMgY2xvY2sgYW5kIHJlc2V0IGNvbnRyb2xsZXJz
IGZvciB0aGUgUmVhbHRlayBSVEQxNjE5IFNvQy4KCkNjOiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVy
YmVyQHN1c2UuZGU+CkNjOiBDaGVuZy1ZdSBMZWUgPGN5bGVlMTJAcmVhbHRlay5jb20+CkNjOiBk
ZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZwoKY3lsZWUxMiAoNik6CiAgZHQtYmluZGluZ3M6IGNs
b2NrOiBhZGQgYmluZGluZ3MgZm9yIFJURDE2MTkgY2xvY2tzCiAgZHQtYmluZGluZ3M6IHJlc2V0
OiBhZGQgYmluZGluZ3MgZm9yIHJ0ZDE2MTkgcmVzZXQgY29udHJvbHMKICBjbGs6IHJlYWx0ZWs6
IGFkZCBjb21tb24gY2xvY2sgc3VwcG9ydCBmb3IgUmVhbHRlayBTb0NzCiAgY2xrOiByZWFsdGVr
OiBhZGQgcmVzZXQgY29udHJvbGxlciBzdXBwb3J0IGZvciBSZWFsdGVrIFNvQ3MKICBjbGs6IHJl
YWx0ZWs6IGFkZCBydGQxNjE5IGNvbnRyb2xsZXJzCiAgZHQtYmluZGluZ3M6IGNsazogcmVhbHRl
azogYWRkIHJ0ZDE2MTkgY2xvY2sgY29udHJvbGxlciBiaW5kaW5ncwoKIC4uLi9iaW5kaW5ncy9j
bG9jay9yZWFsdGVrLGNsb2Nrcy50eHQgICAgICAgICB8ICAzOCArKwogZHJpdmVycy9jbGsvS2Nv
bmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvY2xrL01ha2Vm
aWxlICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL2Nsay9yZWFsdGVr
L0tjb25maWcgICAgICAgICAgICAgICAgICAgfCAgMjEgKwogZHJpdmVycy9jbGsvcmVhbHRlay9N
YWtlZmlsZSAgICAgICAgICAgICAgICAgIHwgIDEyICsKIGRyaXZlcnMvY2xrL3JlYWx0ZWsvY2xr
LXBsbC1kaWYuYyAgICAgICAgICAgICB8ICA4MSArKysKIGRyaXZlcnMvY2xrL3JlYWx0ZWsvY2xr
LXBsbC1wc2F1ZC5jICAgICAgICAgICB8IDEyMCArKysrCiBkcml2ZXJzL2Nsay9yZWFsdGVrL2Ns
ay1wbGwuYyAgICAgICAgICAgICAgICAgfCA0MDAgKysrKysrKysrKysrKwogZHJpdmVycy9jbGsv
cmVhbHRlay9jbGstcGxsLmggICAgICAgICAgICAgICAgIHwgMTUxICsrKysrCiBkcml2ZXJzL2Ns
ay9yZWFsdGVrL2Nsay1yZWdtYXAtZ2F0ZS5jICAgICAgICAgfCAgODkgKysrCiBkcml2ZXJzL2Ns
ay9yZWFsdGVrL2Nsay1yZWdtYXAtZ2F0ZS5oICAgICAgICAgfCAgMjYgKwogZHJpdmVycy9jbGsv
cmVhbHRlay9jbGstcmVnbWFwLW11eC5jICAgICAgICAgIHwgIDYzICsrCiBkcml2ZXJzL2Nsay9y
ZWFsdGVrL2Nsay1yZWdtYXAtbXV4LmggICAgICAgICAgfCAgMjYgKwogZHJpdmVycy9jbGsvcmVh
bHRlay9jbGstcnRkMTYxOS1jYy5jICAgICAgICAgIHwgNTUzICsrKysrKysrKysrKysrKysrKwog
ZHJpdmVycy9jbGsvcmVhbHRlay9jbGstcnRkMTYxOS1pYy5jICAgICAgICAgIHwgMTEyICsrKysK
IGRyaXZlcnMvY2xrL3JlYWx0ZWsvY29tbW9uLmMgICAgICAgICAgICAgICAgICB8IDMyMCArKysr
KysrKysrCiBkcml2ZXJzL2Nsay9yZWFsdGVrL2NvbW1vbi5oICAgICAgICAgICAgICAgICAgfCAx
MjMgKysrKwogZHJpdmVycy9jbGsvcmVhbHRlay9yZXNldC5jICAgICAgICAgICAgICAgICAgIHwg
MTA3ICsrKysKIGRyaXZlcnMvY2xrL3JlYWx0ZWsvcmVzZXQuaCAgICAgICAgICAgICAgICAgICB8
ICAzNyArKwogaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9ydGssY2xvY2stcnRkMTYxOS5oIHwg
IDg4ICsrKwogaW5jbHVkZS9kdC1iaW5kaW5ncy9yZXNldC9ydGsscmVzZXQtcnRkMTYxOS5oIHwg
MTI0ICsrKysKIDIxIGZpbGVzIGNoYW5nZWQsIDI0OTMgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1v
ZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9yZWFsdGVr
LGNsb2Nrcy50eHQKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2Nsay9yZWFsdGVrL0tjb25m
aWcKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2Nsay9yZWFsdGVrL01ha2VmaWxlCiBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9jbGsvcmVhbHRlay9jbGstcGxsLWRpZi5jCiBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9jbGsvcmVhbHRlay9jbGstcGxsLXBzYXVkLmMKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL2Nsay9yZWFsdGVrL2Nsay1wbGwuYwogY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvY2xrL3JlYWx0ZWsvY2xrLXBsbC5oCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9jbGsvcmVhbHRlay9jbGstcmVnbWFwLWdhdGUuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvY2xrL3JlYWx0ZWsvY2xrLXJlZ21hcC1nYXRlLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2Nsay9yZWFsdGVrL2Nsay1yZWdtYXAtbXV4LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2Nsay9yZWFsdGVrL2Nsay1yZWdtYXAtbXV4LmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2Nsay9yZWFsdGVrL2Nsay1ydGQxNjE5LWNjLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2Nsay9yZWFsdGVrL2Nsay1ydGQxNjE5LWljLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2Nsay9yZWFsdGVrL2NvbW1vbi5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9j
bGsvcmVhbHRlay9jb21tb24uaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvY2xrL3JlYWx0
ZWsvcmVzZXQuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvY2xrL3JlYWx0ZWsvcmVzZXQu
aAogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svcnRrLGNsb2Nr
LXJ0ZDE2MTkuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQv
cnRrLHJlc2V0LXJ0ZDE2MTkuaAoKLS0gCjIuMjQuMAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
