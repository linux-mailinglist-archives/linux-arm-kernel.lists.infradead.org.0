Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A933B12D9E9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 16:42:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJhkYnHpTpq1U7jA+2q6iBYGtijIzSDYg1d7cPlQATs=; b=RDL3C/vXfQXpG5
	uwPJX8CgEki/1R2NzpySiuj5oobM7s6+pRujZRoQjnMSRugu4v7XUp3ljX4eELOGWEAQwxNO8P5RL
	x+1zyDCoDQbhM3Z44X1oGF/O2789J+B3kEyzQRQDPUnmnHyLEsRdekWqKGjMzOo0zNQTUaCGcAoW7
	xIXvuBfeFwdr0l4EGu9YEppJWuaZ5k0riDjXWatweaWqZjQTlG7j3zVZB5CmaZycpZpp59hOsvhcy
	fhrsyoJjHWDycZ34//GHMunDr4qk0u3GWoukjZy50gruc6vL+LoVWk0SOUfseM1zmkl6HB/KkArAr
	tT5Gu+9csiDDl3mlEL0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imJed-0001xo-5U; Tue, 31 Dec 2019 15:41:55 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imJeP-0001xQ-R5; Tue, 31 Dec 2019 15:41:43 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 2BBBAC0005;
 Tue, 31 Dec 2019 15:41:27 +0000 (UTC)
Date: Tue, 31 Dec 2019 16:41:25 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 10/11] arm64: dts: rockchip: Add PX30 DSI DPHY
Message-ID: <20191231164125.2aaad2e2@xps13>
In-Reply-To: <10740878.zWD4iEhqxt@phil>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
 <20191224143900.23567-11-miquel.raynal@bootlin.com>
 <1796464.bE5sXyoQCg@phil> <10740878.zWD4iEhqxt@phil>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_074142_016619_D67E3734 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZSBvbiBUdWUs
IDMxIERlYyAyMDE5IDEzOjE0OjAyCiswMTAwOgoKPiBBbSBEaWVuc3RhZywgMzEuIERlemVtYmVy
IDIwMTksIDEyOjU2OjE0IENFVCBzY2hyaWViIEhlaWtvIFN0dWVibmVyOgo+ID4gQW0gRGllbnN0
YWcsIDI0LiBEZXplbWJlciAyMDE5LCAxNTozODo1OSBDRVQgc2NocmllYiBNaXF1ZWwgUmF5bmFs
OiAgCj4gPiA+IEFkZCB0aGUgUEhZIHdoaWNoIG91dHB1dHMgTUlQSSBEU0kgYW5kIExWRFMuCj4g
PiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJv
b3RsaW4uY29tPiAgCj4gPiAKPiA+IGFwcGxpZWQgZm9yIDUuNiAocGlja2VkIGVhcmx5IGR1ZSB0
byBpdCBiZWluZyBzaGFyZWQgYmV0d2VlbiBsdmRzIGFuZCBkc2kpICAKPiAKPiBhbmQgSSd2ZSBq
dXN0IGFkZGVkIHRoZSBWTyBwb3dlcmRvbWFpbiB0byB0aGUgZHNpLWRwaHkgbm9kZS4KPiAKPiBX
aGlsZSB0aGUgVFJNIGlzIG5vdCByZWFsbHkgZm9ydGhjb21pbmcgaW4gdGVsbGluZyBtZSBpZiB0
aGUgZHBoeSBuZWVkcwo+IHRoZSBwb3dlci1kb21haW4gYXMgd2VsbCwgdGhlIHZlbmRvciBrZXJu
ZWwgZG9lcywgc28gd2Ugc2hvdWxkIHByb2JhYmx5Cj4ganVzdCBmb2xsb3cgdGhlaXIgZXhhbXBs
ZSA7LSkgLgoKQWdyZWVkIQoKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
