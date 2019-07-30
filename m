Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161D17AE6D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 18:54:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BoATzZRBBUee/8WeN5ANexpT9Sr61H2ybqtrxDEHBKU=; b=YmQgehCVI2W6NS
	IORLym/D5W/oNlpusKg42AbtgHx+YKXFJiFEx5POP+CJSxViBP+LT9qv4E+o5iCHk3jETBbhxgLvG
	NNWTP6XPXM+JnZeLaMujIe9CllBuAQMLzv5KoMFOhQKdonr46bjkaZhHKUKdYDcaGgv7atiBx8Xhj
	p1cvBx+YmVjHCnHCTCaEjaXYMf5P6AWwhdi8m4lK4xUz2erFleEs1muz6whiCEiGyEADR9+AezF+D
	f7igHaeLipM8w4PaTtWAz+apIgkNqdtmPNwSC/AqNMCNva+Or91RbaCBRQxQ1DHrFTa1alNVpn3tV
	0YgJFLkyxBvE1yUJo9uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVNw-0002Bn-MU; Tue, 30 Jul 2019 16:54:00 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVNh-0002B3-Tn
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 16:53:47 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 700DE1264E7CA;
 Tue, 30 Jul 2019 09:53:45 -0700 (PDT)
Date: Tue, 30 Jul 2019 09:53:44 -0700 (PDT)
Message-Id: <20190730.095344.401137621326119500.davem@davemloft.net>
To: claudiu.manoil@nxp.com
Subject: Re: [PATCH net-next v4 0/4] enetc: Add mdio bus driver for the
 PCIe MDIO endpoint
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190730.094436.855806617449032791.davem@davemloft.net>
References: <1564479919-18835-1-git-send-email-claudiu.manoil@nxp.com>
 <20190730.094436.855806617449032791.davem@davemloft.net>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 30 Jul 2019 09:53:45 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_095345_958227_1B9A08FD 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: andrew@lunn.ch, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 alexandru.marginean@nxp.com, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso8859-7"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogRGF2aWQgTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0Pg0KRGF0ZTogVHVlLCAzMCBK
dWwgMjAxOSAwOTo0NDozNiAtMDcwMCAoUERUKQ0KDQo+IEZyb206IENsYXVkaXUgTWFub2lsIDxj
bGF1ZGl1Lm1hbm9pbEBueHAuY29tPg0KPiBEYXRlOiBUdWUsIDMwIEp1bCAyMDE5IDEyOjQ1OjE1
ICswMzAwDQo+IA0KPj4gRmlyc3QgcGF0Y2ggZml4ZXMgYSBzcGFyc2UgaXNzdWUgYW5kIGNsZWFu
cyB1cCBhY2Nlc3NvcnMgdG8gYXZvaWQNCj4+IGNhc3RpbmcgdG8gX19pb21lbS4NCj4+IFNlY29u
ZCBwYXRjaCBqdXN0IHJlZ2lzdGVycyB0aGUgUENJZSBlbmRwb2ludCBkZXZpY2UgY29udGFpbmlu
Zw0KPj4gdGhlIE1ESU8gcmVnaXN0ZXJzIGFzIGEgc3RhbmRhbG9uZSBNRElPIGJ1cyBkcml2ZXIs
IHRvIGFsbG93DQo+PiBhbiBhbHRlcm5hdGl2ZSB3YXkgdG8gY29udHJvbCB0aGUgTURJTyBidXMu
ICBUaGUgc2FtZSBjb2RlIHVzZWQNCj4+IGJ5IHRoZSBFTkVUQyBwb3J0cyAoZXRoIGNvbnRyb2xs
ZXJzKSB0byBtYW5hZ2UgTURJTyB2aWEgbG9jYWwNCj4+IHJlZ2lzdGVycyBhcHBsaWVzIGFuZCBp
cyByZXVzZWQuDQo+PiANCj4+IEJpbmRpbmdzIGFyZSBwcm92aWRlZCBmb3IgdGhlIG5ldyBNRElP
IG5vZGUsIHNpbWlsYXJseSB0byBFTkVUQw0KPj4gcG9ydCBub2RlcyBiaW5kaW5ncy4NCj4+IA0K
Pj4gTGFzdCBwYXRjaCBlbmFibGVzIHRoZSBFTkVUQyBwb3J0IDEgYW5kIGl0cyBSR01JSSBQSFkg
b24gdGhlDQo+PiBMUzEwMjhBIFFEUyBib2FyZCwgd2hlcmUgdGhlIE1ESU8gbXV4aW5nIGNvbmZp
Z3VyYXRpb24gcmVsaWVzDQo+PiBvbiB0aGUgTURJTyBzdXBwb3J0IHByb3ZpZGVkIGluIHRoZSBm
aXJzdCBwYXRjaC4NCj4gIC4uLg0KPiANCj4gU2VyaWVzIGFwcGxpZWQsIHRoYW5rIHlvdS4NCg0K
QWN0dWFsbHkgdGhpcyBkb2Vzbid0IGNvbXBpbGUsIEkgaGFkIHRvIHJldmVydDoNCg0KSW4gZmls
ZSBpbmNsdWRlZCBmcm9tIC4vaW5jbHVkZS9saW51eC9waHkuaDoyMCwNCiAgICAgICAgICAgICAg
ICAgZnJvbSAuL2luY2x1ZGUvbGludXgvb2ZfbWRpby5oOjExLA0KICAgICAgICAgICAgICAgICBm
cm9tIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ZyZWVzY2FsZS9lbmV0Yy9lbmV0Y19tZGlvLmM6NToN
CmRyaXZlcnMvbmV0L2V0aGVybmV0L2ZyZWVzY2FsZS9lbmV0Yy9lbmV0Y19tZGlvLmM6Mjg0OjI2
OiBlcnJvcjogoWVuZXRjX21kaW9faWRfdGFibGWiIHVuZGVjbGFyZWQgaGVyZSAobm90IGluIGEg
ZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4goWVuZXRjX3BjaV9tZGlvX2lkX3RhYmxloj8NCiBNT0RV
TEVfREVWSUNFX1RBQkxFKHBjaSwgZW5ldGNfbWRpb19pZF90YWJsZSk7DQogICAgICAgICAgICAg
ICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn4NCi4vaW5jbHVkZS9saW51eC9tb2R1bGUu
aDoyMzA6MTU6IG5vdGU6IGluIGRlZmluaXRpb24gb2YgbWFjcm8goU1PRFVMRV9ERVZJQ0VfVEFC
TEWiDQogZXh0ZXJuIHR5cGVvZihuYW1lKSBfX21vZF8jI3R5cGUjI19fIyNuYW1lIyNfZGV2aWNl
X3RhYmxlICBcDQogICAgICAgICAgICAgICBefn5+DQouL2luY2x1ZGUvbGludXgvbW9kdWxlLmg6
MjMwOjIxOiBlcnJvcjogoV9fbW9kX3BjaV9fZW5ldGNfbWRpb19pZF90YWJsZV9kZXZpY2VfdGFi
bGWiIGFsaWFzZWQgdG8gdW5kZWZpbmVkIHN5bWJvbCChZW5ldGNfbWRpb19pZF90YWJsZaINCiBl
eHRlcm4gdHlwZW9mKG5hbWUpIF9fbW9kXyMjdHlwZSMjX18jI25hbWUjI19kZXZpY2VfdGFibGUg
IFwNCiAgICAgICAgICAgICAgICAgICAgIF5+fn5+fg0KZHJpdmVycy9uZXQvZXRoZXJuZXQvZnJl
ZXNjYWxlL2VuZXRjL2VuZXRjX21kaW8uYzoyODQ6MTogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1h
Y3JvIKFNT0RVTEVfREVWSUNFX1RBQkxFog0KIE1PRFVMRV9ERVZJQ0VfVEFCTEUocGNpLCBlbmV0
Y19tZGlvX2lkX3RhYmxlKTsNCiBefn5+fn5+fn5+fn5+fn5+fn5+DQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
