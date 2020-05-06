Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EDE1C68FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 08:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xySuXoBFbRT7CoIDwCNXYQr9SE5i0ZVt1gp+t2SnAio=; b=BJ2PHPw7J/ADDO
	vLGGl8th+PJ5XrpKtAQNTlOdNbNgZwdAchrwzCPnubCvJtrhc3CuJAdI3IBmGxbyCfYAEaXNpKLUE
	RpROYq9Snf0+FP0jPdEcnE+Pv7R/xzx7dZuf4ezP0CtlE7uHh/2mwIRBI27EwSjRPl5AbBUMCi7dL
	Ow2QtF5GU4vJvH8ZW6rzteuE13fsUvBFp2n498fYgv5B2V+eqIziZoCrpBX2jeiXnSXMc3Q/GhWNk
	IzTVSwU3IVM3wNquO1lha7PEn4SZLTpAWuXRGx/9Q4J3kjgFmdD9Zb3hbSpLRHHebUHxhILaHHpnX
	Z79+pGVhueKChuAQ9t7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDdF-0006LQ-P8; Wed, 06 May 2020 06:34:13 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDd1-0006JF-Iv; Wed, 06 May 2020 06:34:01 +0000
X-UUID: df7162d784c04fb79057c49c474eebee-20200505
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=EMtEpkXEvK9nfHRYvG1dhOQ8iE+qMOZdMvGDu7QjaPw=; 
 b=YdPweka6yiq9Z0oJweGz75TbXzTe35IsBUdRqukYNHsv0yxMFvv1Opj+CQOXnmyPhPGuDzKMdTHfNsr1zNEPlkwOQ7yG896y0YNldjPLZOKsPLWN4J/UuzpClBN5+X3oCsZ60TAyjxQ08WumGZd68we4aev2p+X94HkCN4+gDKo=;
X-UUID: df7162d784c04fb79057c49c474eebee-20200505
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 842776181; Tue, 05 May 2020 22:33:54 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 5 May 2020 23:23:53 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 6 May 2020 14:23:38 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 6 May 2020 14:23:34 +0800
Message-ID: <1588746219.16219.10.camel@mtksdccf07>
Subject: Re: [PATCH 0/3] kasan: memorize and print call_rcu stack
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Qian Cai <cai@lca.pw>
Date: Wed, 6 May 2020 14:23:39 +0800
In-Reply-To: <2BF68E83-4611-48B2-A57F-196236399219@lca.pw>
References: <20200506051853.14380-1-walter-zh.wu@mediatek.com>
 <2BF68E83-4611-48B2-A57F-196236399219@lca.pw>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 42DEFC715D66F1062290FF153DFF6751FECE0CF316B54F13B8825BE6B87E4B562000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_233359_627588_AFF387B5 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 "Paul E . McKenney" <paulmck@kernel.org>, linux-mm@kvack.org,
 Lai Jiangshan <jiangshanlai@gmail.com>, Josh
 Triplett <josh@joshtriplett.org>, kasan-dev@googlegroups.com,
 linux-kernel@vger.kernel.org, Joel Fernandes <joel@joelfernandes.org>,
 linux-mediatek@lists.infradead.org, Alexander Potapenko <glider@google.com>,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDIwLTA1LTA2IGF0IDAxOjUzIC0wNDAwLCBRaWFuIENhaSB3cm90ZToNCj4gDQo+
ID4gT24gTWF5IDYsIDIwMjAsIGF0IDE6MTkgQU0sIFdhbHRlciBXdSA8d2FsdGVyLXpoLnd1QG1l
ZGlhdGVrLmNvbT4gd3JvdGU6DQo+ID4gDQo+ID4gVGhpcyBwYXRjaHNldCBpbXByb3ZlcyBLQVNB
TiByZXBvcnRzIGJ5IG1ha2luZyB0aGVtIHRvIGhhdmUNCj4gPiBjYWxsX3JjdSgpIGNhbGwgc3Rh
Y2sgaW5mb3JtYXRpb24uIEl0IGlzIGhlbHBmdWwgZm9yIHByb2dyYW1tZXJzDQo+ID4gdG8gc29s
dmUgdXNlLWFmdGVyLWZyZWUgb3IgZG91YmxlLWZyZWUgbWVtb3J5IGlzc3VlLg0KPiA+IA0KPiA+
IFRoZSBLQVNBTiByZXBvcnQgd2FzIGFzIGZvbGxvd3MoY2xlYW5lZCB1cCBzbGlnaHRseSk6DQo+
ID4gDQo+ID4gQlVHOiBLQVNBTjogdXNlLWFmdGVyLWZyZWUgaW4ga2FzYW5fcmN1X3JlY2xhaW0r
MHg1OC8weDYwDQo+ID4gDQo+ID4gRnJlZWQgYnkgdGFzayAwOg0KPiA+IHNhdmVfc3RhY2srMHgy
NC8weDUwDQo+ID4gX19rYXNhbl9zbGFiX2ZyZWUrMHgxMTAvMHgxNzgNCj4gPiBrYXNhbl9zbGFi
X2ZyZWUrMHgxMC8weDE4DQo+ID4ga2ZyZWUrMHg5OC8weDI3MA0KPiA+IGthc2FuX3JjdV9yZWNs
YWltKzB4MWMvMHg2MA0KPiA+IHJjdV9jb3JlKzB4OGI0LzB4MTBmOA0KPiA+IHJjdV9jb3JlX3Np
KzB4Yy8weDE4DQo+ID4gZWZpX2hlYWRlcl9lbmQrMHgyMzgvMHhhNmMNCj4gPiANCj4gPiBGaXJz
dCBjYWxsX3JjdSgpIGNhbGwgc3RhY2s6DQo+ID4gc2F2ZV9zdGFjaysweDI0LzB4NTANCj4gPiBr
YXNhbl9yZWNvcmRfY2FsbHJjdSsweGM4LzB4ZDgNCj4gPiBjYWxsX3JjdSsweDE5MC8weDU4MA0K
PiA+IGthc2FuX3JjdV91YWYrMHgxZDgvMHgyNzgNCj4gPiANCj4gPiBMYXN0IGNhbGxfcmN1KCkg
Y2FsbCBzdGFjazoNCj4gPiAoc3RhY2sgaXMgbm90IGF2YWlsYWJsZSkNCj4gPiANCj4gPiANCj4g
PiBBZGQgbmV3IENPTkZJRyBvcHRpb24gdG8gcmVjb3JkIGZpcnN0IGFuZCBsYXN0IGNhbGxfcmN1
KCkgY2FsbCBzdGFjaw0KPiA+IGFuZCBLQVNBTiByZXBvcnQgcHJpbnRzIHR3byBjYWxsX3JjdSgp
IGNhbGwgc3RhY2suDQo+ID4gDQo+ID4gVGhpcyBvcHRpb24gZG9lc24ndCBpbmNyZWFzZSB0aGUg
Y29zdCBvZiBtZW1vcnkgY29uc3VtcHRpb24uIEl0IGlzDQo+ID4gb25seSBzdWl0YWJsZSBmb3Ig
Z2VuZXJpYyBLQVNBTi4NCj4gDQo+IEkgZG9u4oCZdCB1bmRlcnN0YW5kIHdoeSB0aGlzIG5lZWRz
IHRvIGJlIGEgS2NvbmZpZyBvcHRpb24gYXQgYWxsLiBJZiBjYWxsX3JjdSgpIHN0YWNrcyBhcmUg
dXNlZnVsIGluIGdlbmVyYWwsIHRoZW4ganVzdCBhbHdheXMgZ2F0aGVyIHRob3NlIGluZm9ybWF0
aW9uLiBIb3cgZG8gZGV2ZWxvcGVycyBqdWRnZSBpZiB0aGV5IG5lZWQgdG8gc2VsZWN0IHRoaXMg
b3B0aW9uIG9yIG5vdD8NCg0KQmVjYXVzZSB3ZSBkb24ndCB3YW50IHRvIGluY3JlYXNlIHNsdWIg
bWV0YS1kYXRhIHNpemUsIHNvIGVuYWJsaW5nIHRoaXMNCm9wdGlvbiBjYW4gcHJpbnQgY2FsbF9y
Y3UoKSBzdGFja3MsIGJ1dCB0aGUgaW4tdXNlIHNsdWIgb2JqZWN0IGRvZXNuJ3QNCnByaW50IGZy
ZWUgc3RhY2suIFNvIGlmIGhhdmUgb3V0LW9mLWJvdW5kIGlzc3VlLCB0aGVuIGl0IHdpbGwgbm90
IHByaW50DQpmcmVlIHN0YWNrLiBJdCBpcyBhIHRyYWRlLW9mZiwgc2VlIFsxXS4NCg0KWzFdIGh0
dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTk4NDM3DQoNClRoYW5r
cw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
