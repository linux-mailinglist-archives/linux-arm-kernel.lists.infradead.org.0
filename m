Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052EF122210
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 03:42:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9HCK/L0NK2rEvvXNR7scBtaFQKPR0HyiKqLojXzcRLs=; b=Ak61iyz+EQ9a9t
	j2dTzjfxmZI0zUdL7Yk+zBA1aHBDknkhDf8gMlezRfXAE5o3WARVHi9QXJTI3eWpPGm/B3DfwR60c
	rOoEGbGRG8XNgyzU0geCCWM/j2PamCsiE+/EzfIScpvmbMDGf9Guc1Lw8ozEpazgEPDwvA08Dl+Pv
	Z9uV1SXAx40tEFkbBDIB6j9078YLSp1IVtrU9t2ZxlE4TDqgIMsNWozMsZp+sDgdUl9YY18OrwqFO
	eODWFWZkZKuf1W+R8iMzagcgGglTUDDDlO2jCzkO+8eXA8aKoKlEE4h7fpFbeNuV2y6XE4/yoBi4x
	RQjcO8Ns793rw6+Mu5wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih2oM-0007yD-AC; Tue, 17 Dec 2019 02:42:10 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih2oC-0007xS-MX; Tue, 17 Dec 2019 02:42:01 +0000
X-UUID: 394b883a50ab494186f3faefd2c3360c-20191216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=N+05xpbfbBBsqYnJvXRE+vaAOXzjbDGQ8cCAfKizY18=; 
 b=tUU4wRLlIcFo/H7h4mkm8bqg5/Ig1tVI8yH8tnRZZQ9iy8zVRv7xKIb8P64FbVk9oGIpGDucGmKYT/7qYAg0U9XMOpbGcrVIvD+4B+Nt7bj19bMtmSx5/rU52hY6/cfrvTzq2A2odp3ULZial+ib91yizF+WhZ3yMUVNqFzPdaQ=;
X-UUID: 394b883a50ab494186f3faefd2c3360c-20191216
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1072558578; Mon, 16 Dec 2019 18:41:58 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Dec 2019 18:42:14 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs05n1.mediatek.inc
 (172.21.101.15) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 17 Dec 2019 10:41:38 +0800
Received: from [10.16.6.141] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 17 Dec 2019 10:41:34 +0800
Message-ID: <1576550522.19567.1.camel@mszsdaap41>
Subject: Re: [PATCH v2 1/2] pwm: fine tune pwm-mtk-disp clock control flow
From: Jitao Shi <jitao.shi@mediatek.com>
To: Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 17 Dec 2019 10:42:02 +0800
In-Reply-To: <20191216081843.yxe3vm674jwurwri@pengutronix.de>
References: <20191216070123.114719-1-jitao.shi@mediatek.com>
 <20191216070123.114719-2-jitao.shi@mediatek.com>
 <20191216081843.yxe3vm674jwurwri@pengutronix.de>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_184200_743538_44DF7C82 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org,
 CK Hu <ck.hu@mediatek.com>, sj.huang@mediatek.com,
 Thierry Reding <thierry.reding@gmail.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMDE5LTEyLTE2IGF0IDA5OjE4ICswMTAwLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90
ZToNCj4gSGVsbG8sDQo+IA0KPiBPbiBNb24sIERlYyAxNiwgMjAxOSBhdCAwMzowMToyMlBNICsw
ODAwLCBKaXRhbyBTaGkgd3JvdGU6DQo+ID4gTWF0Y2ggcHdtIGNsb2NrIHdoZW4gc3VzcGVuZCBh
bmQgcmVzdW1lLg0KPiA+IFByZXBhcmUgYW5kIGVuYWJsZSBkaXNwX3B3bSBjbG9jayB3aGVuIGRp
c3BfcHdtIGVuYWJsZS4NCj4gPiBEaXNhYmxlIGFuZCB1bnByZXBhcmUgZGlzcF9wd20gY2xvY2sg
d2hlbiBkaXNwX3B3bSBkaXNhYmxlLg0KPiANCj4gQXNzdW1pbmcgeW91IGNhdGNoZWQgYWxsIGNs
b2NrIG9wZXJhdGlvbnMgKEkgZGlkbid0IGNoZWNrKSwgdGhlIHBhdGNoDQo+IGxvb2tzIGZpbmUu
IFRoZSBjb21taXQgbG9nIGNvdWxkIGhvd2V2ZXIgYmUgaW1wcm92ZWQuIEFkZGl0aW9uYWwgdG8N
Cj4gZGVzY3JpYmluZyB3aGF0IHRoZSBwYXRjaCBkb2VzLCBzb21lIHdvcmRzIGFib3V0IHRoZSBt
b3RpdmF0aW9uIHdvdWxkIGJlDQo+IGdvb2QuIERvZXMgdGhpcyBmaXggYSBidWc/IElzIGl0IHRv
IHNhdmUgc29tZSBwb3dlciB3aGlsZSB0aGUgUFdNIGlzbid0DQo+IGluIHVzZT8NCj4gDQo+IEJl
c3QgcmVnYXJkcw0KPiBVd2UNCj4gDQoNCkknbGwgdXBkYXRlIHRoZSBjb21taXQgbXNnIG5leHQg
dmVyc2lvbi4NCg0KVGhhbmtzIGZvciB5b3VyIHJldmlldy4NCg0KQmVzdCBSZWdhcmRzDQpKaXRh
bw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
