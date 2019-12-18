Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5067412461B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 12:49:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZnV864C1LP4nv9WTl3izw23X3VsLQv46SfpnVrCFoWI=; b=t6hOelxCaZHE7DMmo4FM+ahYD
	hzYgFdIUhSCjLCytVKkeMWBY/4sCwbJNg7nuQSwjW82X1vJPSyoUQvtMIw0kQHB1584RA/6PnJGWR
	UpsgWZWRiQviFLkk2YrC714mIwQNbr9L8VRWjz1tijRKFYrCcyGXMWbz76UGzIYEOq2GMvj8Xtmwu
	zmN6SKYKZF2ImRk6o7CD7i+XJnEfqf9mPEtakTJ6jnowTXAgYsBohHyKLuwe8qGDI1EHjK+ckzKka
	a7H5kI5TGVF3KpG1oS2N6d2E9AvR9Y4fmYy/Q/LUMPLlgsr2yzODm42gnGSaeakIQDl30G3EDenjo
	Cxf/0GU3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihXpZ-0001em-JG; Wed, 18 Dec 2019 11:49:29 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihXpP-0001dw-Lz
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 11:49:22 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ihXpI-0007MK-JJ; Wed, 18 Dec 2019 12:49:12 +0100
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: RE: [PATCH 1/3] dt-bindings/irq: add binding for NXP INTMUX interrupt
 multiplexer
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 18 Dec 2019 11:49:12 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <DB7PR04MB4618957D7423FFBAECD1EC7EE6530@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <1576653615-27954-1-git-send-email-qiangqing.zhang@nxp.com>
 <1576653615-27954-2-git-send-email-qiangqing.zhang@nxp.com>
 <254925e345493019c3e1e558b37e46f2@www.loen.fr>
 <DB7PR04MB4618048D025D094618C6F99FE6530@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <DB7PR04MB4618957D7423FFBAECD1EC7EE6530@DB7PR04MB4618.eurprd04.prod.outlook.com>
Message-ID: <796eb027cbecbdc9dbc01b417d196a44@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: qiangqing.zhang@nxp.com, tglx@linutronix.de,
 jason@lakedaemon.net, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, shengjiu.wang@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fugang.duan@nxp.com,
 aisheng.dong@nxp.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_034919_864525_C8E32BAA 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Andy Duan <fugang.duan@nxp.com>, jason@lakedaemon.net, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 dl-linux-imx <linux-imx@nxp.com>, kernel@pengutronix.de,
 Aisheng Dong <aisheng.dong@nxp.com>, tglx@linutronix.de, shawnguo@kernel.org,
 "S.j. Wang" <shengjiu.wang@nxp.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0xMi0xOCAxMTozNCwgSm9ha2ltIFpoYW5nIHdyb3RlOgo+PiAtLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBKb2FraW0gWmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAu
Y29tPgo+PiBTZW50OiAyMDE55bm0MTLmnIgxOOaXpSAxODoyMgo+PiBUbzogTWFyYyBaeW5naWVy
IDxtYXpAa2VybmVsLm9yZz4KPj4gQ2M6IHRnbHhAbGludXRyb25peC5kZTsgamFzb25AbGFrZWRh
ZW1vbi5uZXQ7IHJvYmgrZHRAa2VybmVsLm9yZzsKPj4gbWFyay5ydXRsYW5kQGFybS5jb207IHNo
YXduZ3VvQGtlcm5lbC5vcmc7IHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU7IAo+PiBTLmouCj4+IFdh
bmcgPHNoZW5naml1LndhbmdAbnhwLmNvbT47IGtlcm5lbEBwZW5ndXRyb25peC5kZTsKPj4gZmVz
dGV2YW1AZ21haWwuY29tOyBkbC1saW51eC1pbXggPGxpbnV4LWlteEBueHAuY29tPjsKPj4gbGlu
dXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7Cj4+
IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgQW5keSBEdWFuIAo+PiA8ZnVn
YW5nLmR1YW5AbnhwLmNvbT47Cj4+IEFpc2hlbmcgRG9uZyA8YWlzaGVuZy5kb25nQG54cC5jb20+
Cj4+IFN1YmplY3Q6IFJFOiBbUEFUQ0ggMS8zXSBkdC1iaW5kaW5ncy9pcnE6IGFkZCBiaW5kaW5n
IGZvciBOWFAgSU5UTVVYIAo+PiBpbnRlcnJ1cHQKPj4gbXVsdGlwbGV4ZXIKClsuLi5dCgo+PiA+
IFdoYXQgSSBkb24ndCB1bmRlcnN0YW5kIGlzIGhvdyB0aGUgaW50ZXJydXB0IGRlc2NyaXB0b3Ig
Y2FuIAo+PiBpbmRpY2F0ZQo+PiA+IHdoaWNoIGNoYW5uZWwgaXQgaXMgbXVsdGlwbGV4ZWQgb24u
IFRoZSBkcml2ZXIgZG9lc24ndCBtYWtlcyB0aGlzCj4+ID4gY2xlYXIgZWl0aGVyLCBhbmQgSSBz
dHJvbmdseSBzdXNwZWN0IHRoYXQgaXQgd2FzIG5ldmVyIHRlc3RlZCB3aXRoIAo+PiBtb3JlIHRo
YW4gYQo+PiBzaW5nbGUgY2hhbm5lbC4uLgo+Pgo+PiBZZXMsIHRvIGJlIGZyYW5rLCBJIHRlc3Rl
ZCB3aXRoIGEgc2lnbmxlIGNoYW5uZWwsIEkgd2lsbCB0YWtlIHRoaXMgCj4+IGludG8KPj4gY29u
c2lkZXJhdGlvbi4gVGhhbmtzLgo+IEhpIE1hcmMsCj4KPiBJIHRlc3RlZCBjaGFubmVscyBmcm9t
IDEgdG8gOCwgYW5kIG5vIGlzc3VlIGZvdW5kLgo+Cj4gV2UgcmVnaXN0ZXIgaXJxIGhhbmRsZXIg
d2l0aCBpcnFfc2V0X2NoYWluZWRfaGFuZGxlcl9hbmRfZGF0YSgpLCBzbwo+IHRoZSBpbnRlcnJ1
cHQgZGVzY3JpcHRvciBjb3VsZCBmaW5kIHRoZSBjb250cm9sbGVyJ3MgcHJpdmF0ZSBkYXRhLCAK
PiBhbmQKPiBjaGFubmVsIGluZGV4IGlzIG9uZSBwYXJ0IG9mIHByaXZhdGUgZGF0YS4KPiBJIHRo
aW5rIHRoaXMgY2FuIGV4cGxhaW4gdGhlIGludGVycnVwdCBkZXNjcmlwdG9yIGhvdyB0byBpbmRp
Y2F0ZQo+IHdoaWNoIGNoYW5uZWwgaXQgaXMgbXVsdGlwbGV4ZWQuCgpCdXQgdGhhdCBkb2Vzbid0
IGV4cGxhaW4gaG93IHRoZSBkcml2ZXIgY2FuIGZpbmQgd2hpY2ggY2hhbm5lbCBhIGdpdmVuCmlu
dGVycnVwdHMgaXMgd2lyZWQgdG8uIE5vdGhpbmcgaW4geW91ciBiaW5kaW5nIHNob3dzIGhvdyB5
b3UgY2FuIApleHRyYWN0CnRoZSBjaGFubmVsIG51bWJlciBmcm9tIHRoZSBpbnRlcnJ1cHQgZGVz
Y3JpcHRvci4gTm90aGluZyBpbiB0aGUgZHJpdmVyCmV2ZW4gKmNvbXB1dGVzKiBhIGNoYW5uZWwg
bnVtYmVyLgoKQXMgZmFyIGFzIEkgY2FuIHNlZSwgeW91IHJlZ2lzdGVyIGEgYnVuY2ggb2YgZG9t
YWlucywgYWxsIHdpdGggdGhlIHNhbWUKT0Ygbm9kZSwgc28gYWxsIHlvdXIgaW50ZXJydXB0cyBl
bmQtdXAgd2l0aCB0aGUgc2FtZSBkb21haW4uIElzIGl0IApyZWFsbHkKd2hhdCB5b3UgZXhwZWN0
PwoKVGhpcyBkcml2ZXIgbG9va3MgdGVycmlibHkgd3JvbmcuCgogICAgICAgICBNLgotLSAKSmF6
eiBpcyBub3QgZGVhZC4gSXQganVzdCBzbWVsbHMgZnVubnkuLi4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
