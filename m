Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 772A01E33B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 01:28:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q1+jFyQNj/riV4L0g4oPbGDesofhBLCTlYGZA5jB+c4=; b=lc61krHrLFInxK
	xnOEcqnVbRQanT4Ah+hw/GqNQQmlOdTN06oLyAd8QPrLSr4+ld7Be5TOF5zI26N6s81lK6TNKalKi
	ssoN2o0I//rgGHCv7eQj/wVLJvQaeZEk9EQiw19HryQhq+5seXrr1Sgjqy1ziEbbK1RtMqLIOrROz
	VedCE9Sz5eQP8493JReDmisu4MNG3kVDx6qKksYKnF2/iHnVy0Q127nk36OjpZssOPTI/l2RBCvG7
	T+f7/yJxF0y17OiOis1XMhMTO/ASos9lHjKpO9jIyBLi3WmL5m+wo4DBL7kr5EmlNHBeItT/l5RS6
	2DufOSBaiwNq2WxlhpsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdj00-0004Ea-8P; Tue, 26 May 2020 23:28:44 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdizr-0004Du-94
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 23:28:36 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 7956C120ED490;
 Tue, 26 May 2020 16:28:26 -0700 (PDT)
Date: Tue, 26 May 2020 16:28:25 -0700 (PDT)
Message-Id: <20200526.162825.1972012781165820310.davem@davemloft.net>
To: fugang.duan@nxp.com
Subject: Re: [PATCH net 1/1] net: stmmac: enable timestamp snapshot for
 required PTP packets in dwmac v5.10a
From: David Miller <davem@davemloft.net>
In-Reply-To: <1590394694-5505-1-git-send-email-fugang.duan@nxp.com>
References: <1590394694-5505-1-git-send-email-fugang.duan@nxp.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 26 May 2020 16:28:26 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_162835_318570_E340A274 
X-CRM114-Status: UNSURE (   6.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: p.zabel@pengutronix.de, alexandre.torgue@st.com, netdev@vger.kernel.org,
 joabreu@synopsys.com, mcoquelin.stm32@gmail.com, kuba@kernel.org,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso8859-7"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogRnVnYW5nIER1YW4gPGZ1Z2FuZy5kdWFuQG54cC5jb20+DQpEYXRlOiBNb24sIDI1IE1h
eSAyMDIwIDE2OjE4OjE0ICswODAwDQoNCj4gRm9yIHJ4IGZpbHRlciAnSFdUU1RBTVBfRklMVEVS
X1BUUF9WMl9FVkVOVCcsIGl0IHNob3VsZCBiZQ0KPiBQVFAgdjIvODAyLkFTMSwgYW55IGxheWVy
LCBhbnkga2luZCBvZiBldmVudCBwYWNrZXQsIGJ1dCBIVyBvbmx5DQo+IHRha2UgdGltZXN0YW1w
IHNuYXBzaG90IGZvciBiZWxvdyBQVFAgbWVzc2FnZTogc3luYywgUGRlbGF5X3JlcSwNCj4gUGRl
bGF5X3Jlc3AuDQo+IA0KPiBUaGVuIGl0IGNhdXNlcyBiZWxvdyBpc3N1ZSB3aGVuIHRlc3QgRTJF
IGNhc2U6DQo+IHB0cDRsWzI0NzkuNTM0XTogcG9ydCAxOiByZWNlaXZlZCBERUxBWV9SRVEgd2l0
aG91dCB0aW1lc3RhbXANCj4gcHRwNGxbMjQ4MS40MjNdOiBwb3J0IDE6IHJlY2VpdmVkIERFTEFZ
X1JFUSB3aXRob3V0IHRpbWVzdGFtcA0KPiBwdHA0bFsyNDgxLjc1OF06IHBvcnQgMTogcmVjZWl2
ZWQgREVMQVlfUkVRIHdpdGhvdXQgdGltZXN0YW1wDQo+IHB0cDRsWzI0ODMuNTI0XTogcG9ydCAx
OiByZWNlaXZlZCBERUxBWV9SRVEgd2l0aG91dCB0aW1lc3RhbXANCj4gcHRwNGxbMjQ4NC4yMzNd
OiBwb3J0IDE6IHJlY2VpdmVkIERFTEFZX1JFUSB3aXRob3V0IHRpbWVzdGFtcA0KPiBwdHA0bFsy
NDg1Ljc1MF06IHBvcnQgMTogcmVjZWl2ZWQgREVMQVlfUkVRIHdpdGhvdXQgdGltZXN0YW1wDQo+
IHB0cDRsWzI0ODYuODg4XTogcG9ydCAxOiByZWNlaXZlZCBERUxBWV9SRVEgd2l0aG91dCB0aW1l
c3RhbXANCj4gcHRwNGxbMjQ4Ny4yNjVdOiBwb3J0IDE6IHJlY2VpdmVkIERFTEFZX1JFUSB3aXRo
b3V0IHRpbWVzdGFtcA0KPiBwdHA0bFsyNDg3LjMxNl06IHBvcnQgMTogcmVjZWl2ZWQgREVMQVlf
UkVRIHdpdGhvdXQgdGltZXN0YW1wDQo+IA0KPiBUaW1lc3RhbXAgc25hcHNob3QgZGVwZW5kZW5j
eSBvbiByZWdpc3RlciBiaXRzIGluIHJlY2VpdmVkIHBhdGg6DQo+IFNOQVBUWVBTRUwgVFNNU1RS
RU5BIFRTRVZOVEVOQSAJUFRQX01lc3NhZ2VzDQo+IDAxICAgICAgICAgeCAgICAgICAgIDAgICAg
ICAgICAgU1lOQywgRm9sbG93X1VwLCBEZWxheV9SZXEsDQo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgRGVsYXlfUmVzcCwgUGRlbGF5X1JlcSwgUGRlbGF5X1Jlc3AsDQo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgUGRlbGF5X1Jlc3BfRm9sbG93X1VwDQo+IDAxICAg
ICAgICAgMCAgICAgICAgIDEgICAgICAgICAgU1lOQywgUGRlbGF5X1JlcSwgUGRlbGF5X1Jlc3AN
Cj4gDQo+IEZvciBkd21hYyB2NS4xMGEsIGVuYWJsaW5nIGFsbCBldmVudHMgYnkgc2V0dGluZyBy
ZWdpc3Rlcg0KPiBEV0NfRVFPU19USU1FX1NUQU1QSU5HW1NOQVBUWVBTRUxdIHRvIDKiYjAxLCBj
bGVhcmluZyBiaXQgW1RTRVZOVEVOQV0NCj4gdG8gMKJiMCwgd2hpY2ggY2FuIHN1cHBvcnQgYWxs
IHJlcXVpcmVkIGV2ZW50cy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEZ1Z2FuZyBEdWFuIDxmdWdh
bmcuZHVhbkBueHAuY29tPg0KDQpBcHBsaWVkIGFuZCBxdWV1ZWQgdXAgZm9yIC1zdGFibGUsIHRo
YW5rcy4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
