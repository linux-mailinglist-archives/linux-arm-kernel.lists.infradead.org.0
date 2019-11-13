Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6038BFA73E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 04:26:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z+8pvdDaO500XzMzn6qyDi6QI5oU/rW7djnplB8hRYs=; b=GahMX8p0nBF6eA
	NHrRZwipHaj7YDio1VOez73uEhYtUVguJf0IBzW9luDkBl4kL/m9U5cJuPpvN42IHZg7rEwDlDqFG
	8pjOfsEFFHjQ8dIcbUQ2Oh4q0WJ1/uDbm1yz0tDIG8IQYEacYDA+bEcjTUIwiKoNcZh2/Dt4shGW7
	ENbpkbR/pHjZEx4cR25YszYJ19PrIxQdrbDEToJ8U4LK/iX8x7PT2Jb909rB5eFnxL4s/JWdCxMGF
	uuZpL12RYm80QVIeler0XI8VwPQsMX9LqB7FVK7Vrp8libw+ItT6moFcfM3VnsR76YVu4JROAizqT
	EaRb0ledyKI7N78Rn8HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUjIG-0007dz-TC; Wed, 13 Nov 2019 03:26:08 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUjI9-0007dS-Th; Wed, 13 Nov 2019 03:26:03 +0000
X-UUID: e7bf8c223cd34dd7924606d6a0acd979-20191112
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=rDIAE49LJSoVbQpJ0kmEv+2G5B5G2a/scFj/B11Af9I=; 
 b=KpdFd4lddrLeL7jARmsvUFFGiti8KhxBSFYDlmlt0tNxW5P4ELFzhsAQiHvfMd3DScmr2VHTpX7Z1694IFW7iw0P6wAEAXs7SN7u4sMxIpaiB/Sb57zBNGnt6msRwwT6J/wntWa/0RGnL6yQu2a5mh25RkuCDDOjaPPSDMdBsco=;
X-UUID: e7bf8c223cd34dd7924606d6a0acd979-20191112
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <mark-pk.tsai@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1724042337; Tue, 12 Nov 2019 19:25:55 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 12 Nov 2019 19:25:54 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 13 Nov 2019 11:25:54 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 13 Nov 2019 11:25:52 +0800
From: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
To: <lvqiang.huang@unisoc.com>
Subject: Re: [PATCH] ARM: fix race in for_each_frame
Date: Wed, 13 Nov 2019 11:25:54 +0800
Message-ID: <20191113032554.21034-1-mark-pk.tsai@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <64C83867-31FA-4243-A0EB-018AE9A83ACB@unisoc.com>
References: <64C83867-31FA-4243-A0EB-018AE9A83ACB@unisoc.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 95B92524CD3366A2A5D654B2ED134B3B8F2C48BBE4E6AB8A5500FE4528A957B02000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_192601_966610_15158DF2 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kstewart@linuxfoundation.org, mike-sl.lin@mediatek.com,
 alix.wu@mediatek.com, tglx@linutronix.de, eddy.lin@mediatek.com,
 gregkh@linuxfoundation.org, yj.chiang@mediatek.com, phil.chang@mediatek.com,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 matthias.bgg@gmail.com, mark-pk.tsai@mediatek.com, info@metux.net,
 enlai.chu@unisoc.com, allison@lohutok.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBEZWFyIE1hcmssDQo+IFRoYW5rcyBhIGxvdCBmb3IgdGhlIHJlcGx5LiANCj4gDQo+IEFzIHNh
aWQgaW4gbGFzdCByZXBseSwgc3ZfcGMgY2FuIGJlIGEgbW9kdWxlIHRleHQsIHRoZW4gbW9yZSBj
aGVjayBuZWVkZWQuDQoNCklmIHN2X3BjIGlzIGluIG1vZHVsZSB0ZXh0IGFyZWEsIGtlcm5lbF90
ZXh0X2FkZHJlc3MoKSByZXR1cm5zIHRydWUuDQoNCj4gDQo+IEFuZCBiZXNpZGUgY3Jhc2ggYXQg
MTAwMywgd2UgbWF5IGFsc28gZ2V0IGNyYXNoIGF0IDEwMDEsIHRoZSBmcmFtZSBpcyBpbnZhbGlk
LiAoVGhlIGxhc3Qgc3ZfcHYgaXMgdmFsaWQgYW5kIHN2X2ZyYW1lIGlzIGludmFsaWQpLCB0aGVu
IG1vcmUgY2hlY2sgbmVlZGVkLiANCg0KVGhlcmUncyBhIGJhc2ljIGNoZWNrIGZvciBzdl9mcCBh
dCB0aGUgZW5kIG9mIDEwMDQuDQpCdXQgSSdtIG5vdCBzdXJlIGlzIGl0IGVub3VnaCB0byBwcmV2
ZW50IHRoZSAxMDAxIGNyYXNoIHlvdSBtZW50aW9uZWQuDQpTaG91bGQgd2UgYWRkIGEgdmVyaWZ5
X3N0YWNrIGZvciBzdl9mcD8NCg0KPiANCj4gQW5kIHdlIG9mdGVuIHNob3dfZGF0YSBhcm91bmQg
dGhlIGdlbmVyYWwgcHJvcG9zYWwgcmVnaXN0ZXJzIHdoZW4ga2VybmVsIGNyYXNoLiBXaGVuIHRo
ZXkgY29udGFpbiBhbiBhZGRyZXNzIG1hcHBpbmcgZm9yIGEgaHcgcmVnaXN0ZXIgYnV0IGNhbsKS
dCBhY2Nlc3MgYmVjYXVzZSBjbG9jayBnYXRlZCwgaXQgd2lsbCBjcmFzaCBhZ2FpbiBiZWNhdXNl
IGRvX2JhZCgpIGlzIGludm9sdmVkLiAoY29udGludW91cyBjcmFzaCBpbiBhcm0gYW5kIGhhbmcg
YXQgZGllX2xvY2sgaW4gYXJtNjQpDQo+IA0KPiBTbywgd2h5IG5vdCBjaGVjayB0aGUgX19leF90
YWJsZSBpbiBkb19iYWQoKSA/DQo+IA0KDQpPbiBvdXIgYXJtIHBsYXRmb3JtLCBrZXJuZWwganVz
dCBkaWUgYmVjdWFzZSB0aGUgVW5oYW5kbGVkIGZhdWx0IGluIGZvcl9lYWNoX2ZyYW1lLg0KU28g
SSdkIHJhdGhlciB0byBmaXggaXQgYmVmb3JlIHRoZSBjb250aW51b3VzIGNyYXNoIGhhcHBlbi4N
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
