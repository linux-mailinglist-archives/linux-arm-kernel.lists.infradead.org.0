Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E1316003
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 11:01:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8TsayPy9hFOfStJf95ZFVxGHcTQ69NrpRooL+w3h/Ig=; b=M8yv+flmY8tSOv
	oKrvpRH2TzW6r1PqAFOerH5TmsTeCDTIwS3N0TWi9gYae0vE8eyEAj/xwufpqAltjRgd7ahg2y46r
	MBpxhKkoUg+zl1J7DnKmYUXQ2AUQkw8f8vYdIv5d0bOtFMkjiv34FxxBxIT08B3bLouUGjyVwxvOd
	74sRVoiN+FH4fHrKY0i5AF985WCiAYAQnvcOgUyKpIpLziwbdpZNKClb29V5Ymf5u3ancVzhzeb0B
	l5mMo+96iFiLHK1pnY5sMY6PRx9Q1Aw0cPevvtK27u27sRWlzEFC5s6ectxHNy/E9hIb1IqQd26Lc
	2jpuvbj+XYTJ7XRnlYxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNvyx-0000gh-2K; Tue, 07 May 2019 09:01:51 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNvyp-0000g7-9a; Tue, 07 May 2019 09:01:44 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3CDFA6E34;
 Tue,  7 May 2019 11:01:39 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id dba1650f;
 Tue, 7 May 2019 11:01:37 +0200 (CEST)
Date: Tue, 7 May 2019 11:01:37 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: netdev patchwork issues [Was: Re: [PATCH net-next v2 0/4]
 of_get_mac_address ERR_PTR fixes]
Message-ID: <20190507090137.GJ81826@meh.true.cz>
References: <1557177887-30446-1-git-send-email-ynezz@true.cz>
 <20190507071914.GJ2269@kadam> <20190507083918.GI81826@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507083918.GI81826@meh.true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_020143_482554_B9DEC645 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: devel@driverdev.osuosl.org, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Jeremy Kerr <jk@ozlabs.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gWzIwMTktMDUtMDcgMTA6Mzk6MThdOgoKW2Fk
ZGluZyBKZXJlbXkgdG8gdGhlIENjOiBsb29wXQoKPiBpdCB3YXMgYXBwbGllZFsyXSB0byBEYXZp
ZCdzIG5ldC1uZXh0IHRyZWUsIGJ1dCB1bmZvcnR1bmF0ZWx5IHBhcnRpYWx5LCBqdXN0IDkKPiBw
YXRjaGVzIG91dCBvZiAxMCwgYXMgdGhlIHBhdGNoIDA1LzEwIGluIHRoYXQgc2VyaWVzICh3aGlj
aCBpcyBwYXRjaCAxLzQgaW4KPiB0aGlzIHNlcmllcykgbmV2ZXIgcmVhY2hlZCBuZXRkZXYgbWFp
bGluZyBsaXN0IGFuZCBwYXRjaHdvcmssIHByb2JhYmx5IGJlY2F1c2UKPiBvZiBzb21lIG5ldGRl
diBtYWlsaW5nIGxpc3Qgc29mdHdhcmUgYW5kL29yIHBhdGNod29yayBoaWNjdXAsIHZlcnkgbGlr
ZWx5IGR1ZQo+IHRvIHRoZSBsb25nIGxpc3Qgb2YgcmVjaXBpZW50cyBpbiB0aGF0IHBhdGNoIGFu
ZCBhcyBJJ20gbm90IHN1YnNjcmliZWQgdG8gdGhlCj4gbmV0ZGV2IChkdWUgdG8gdGhlIGhpZ2gg
dHJhZmZpYykgSSdtIHByb2JhYmx5IHRyZWF0ZW4gc29tZWhvdyBkaWZmZXJlbnRseS4KCkZvciB0
aGUgcmVjb3JkLCBJJ3ZlIGZvbGxvd2luZyBpbiBteSB+Ly5naXRjb25maWc6CgogW3NlbmRlbWFp
bC5saW51eF0KICAgIHRvY21kID0iYHB3ZGAvc2NyaXB0cy9nZXRfbWFpbnRhaW5lci5wbCAtLW5v
Z2l0IC0tbm9naXQtZmFsbGJhY2sgLS1ub3JvbGVzdGF0cyAtLW5vbCIKICAgIGNjY21kID0iYHB3
ZGAvc2NyaXB0cy9nZXRfbWFpbnRhaW5lci5wbCAtLW5vZ2l0IC0tbm9naXQtZmFsbGJhY2sgLS1u
b3JvbGVzdGF0cyAtLW5vbSIKCmFuZCBJJ3ZlIHNlbnQgdGhlIHBhdGNoZXMgd2l0aCB0aGUgZm9s
bG93aW5nIGNvbW1hbmQ6CgogZ2l0IHNlbmQtZW1haWwgXAoJLS10byBuZXRkZXZAdmdlci5rZXJu
ZWwub3JnIFwKCS0tdG8gJ0RhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4nIFwK
CS0tY2MgJ0FuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4nIFwKCS0tY2MgJ0Zsb3JpYW4gRmFp
bmVsbGkgPGYuZmFpbmVsbGlAZ21haWwuY29tPicgXAoJLS1jYyAnSGVpbmVyIEthbGx3ZWl0IDxo
a2FsbHdlaXQxQGdtYWlsLmNvbT4nIFwKCS0tY2MgJ0ZyYW5rIFJvd2FuZCA8ZnJvd2FuZC5saXN0
QGdtYWlsLmNvbT4nIFwKCS0tY2MgJ2RldmVsQGRyaXZlcmRldi5vc3Vvc2wub3JnJyBcCgktLWNj
ICdsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnJyBcCgktLWNjICdHcmVnIEtyb2FoLUhhcnRt
YW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPicgXAoJLS1jYyAnTWF4aW1lIFJpcGFyZCA8
bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4nIFwKCS0taWRlbnRpdHkgbGludXggdG1wL252bWVt
LWZpeC12Mi8wMDAqCgp3aGljaCByZXN1bHRlZCBqdXN0IGluIHRoZSBmb2xsb3dpbmcgNCBib3Vu
Y2VzOgoKICogbmJkQG9wZW53cnQub3JnIChubyBzdWNoIHJlY2lwaWVudCkKICoga3MuZ2lyaUBz
YW1zdW5nLmNvbSAobm8gc3VjaCByZWNpcGllbnQpCiAqIHZpcHVsLnBhbmR5YUBzYW1zdW5nLmNv
bSAobm8gc3VjaCByZWNpcGllbnQpCgogWW91ciBtYWlsIHRvICdsaW51eC1hcm0ta2VybmVsJyB3
aXRoIHRoZSBzdWJqZWN0CgogICAgW1BBVENIIG5ldC1uZXh0IHYyIDEvNF0gbmV0OiBldGhlcm5l
dDogc3VwcG9ydCBvZl9nZXRfbWFjX2FkZHJlc3MgbmV3IEVSUl9QVFIgZXJyb3IKCiBJcyBiZWlu
ZyBoZWxkIHVudGlsIHRoZSBsaXN0IG1vZGVyYXRvciBjYW4gcmV2aWV3IGl0IGZvciBhcHByb3Zh
bC4gIFRoZSByZWFzb24KIGl0IGlzIGJlaW5nIGhlbGQ6CgogICAgVG9vIG1hbnkgcmVjaXBpZW50
cyB0byB0aGUgbWVzc2FnZQoKU28gbWF5YmUgbmV0ZGV2IGhhdmUgc2ltaWxhciBtb2RlcmF0aW9u
IHN0dWZmIGVuYWJsZWQsIGJ1dCBkb2Vzbid0IHNlbmQgb3V0CnRoaXMgbm90aWNlcyBiYWNrPyBJ
J3ZlICJmaXhlZCIgdGhlIGlzc3VlIHdpdGggdGhlIGZvbGxvd2luZyB3b3JrYXJvdW5kOgoKIGdp
dCBzZW5kLWVtYWlsIFwKIAktLXRvIG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcgXAoJLS1pbi1yZXBs
eS10byAnPDE1NTcxNzc4ODctMzA0NDYtMS1naXQtc2VuZC1lbWFpbC15bmV6ekB0cnVlLmN6Picg
XAoJdG1wL252bWVtLWZpeC12Mi8wMDAxLW5ldC1ldGhlcm5ldC1zdXBwb3J0LW9mX2dldF9tYWNf
YWRkcmVzcy1uZXctRVJSX1BUUi0ucGF0Y2gKClRoYXQgaXMsIGp1c3QgdXNpbmcgbmV0ZGV2IGFz
IHRoZSBzb2xlIHJlY2lwaWVudCBhbmQgdGhlbiB0aGUgcGF0Y2ggaGFzCmFwcGVhcmVkIGluIHRo
ZSBwYXRjaHdvcmsgYW5kIGluIHRoZSBtYWlsaW5nIGxpc3QgYXJjaGl2ZSBhcyB3ZWxsLgoKLS0g
eW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
