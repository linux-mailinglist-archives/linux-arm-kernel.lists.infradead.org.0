Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF73D965BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:58:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4FFbjNJ7zy6+CQ/6jVS6ve5xQ8KFlm3dETOrTnT/hTQ=; b=YcnEe0eUjYgcbM
	smNydifviNmIffBLoeUDA92w9EKLpTDxvIeg8G1PfvpjkZWH223UUPZB79ODOK7WIiMNPxfXisOiU
	5OuJvMnH+uJFeL8CWr/UNB8kA31DHvGtnqb6ZbVti/1JqMYmsqDG5atPIMOZwqp4MVtVJmzYQemBd
	gAjaSr2PLqVMbTJ5VwNR5Zxwd3KMwUxUhEV1IEtQDzwHE/xwFr72obVLWZzKGylJDa5Z6ITuQZliC
	Pr2Uc8zi5R5NNYYW+ZO2GuElWunzFt7ZRhyEt7tP7Rr6t4eRZ+3SVwOXNsAYCAwtLADvrsKFuRpwd
	2x3zztN2jeEJCCK8+2Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06Wf-00085E-Dg; Tue, 20 Aug 2019 15:58:25 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06WD-0007lQ-QM
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 15:57:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a9C3b3G3nm77mUWP6d7nqP+nWBkTPiCKFDND/m1Vhew=; b=iKGQRF0yz5km72zavzs00QyYnf
 lJsAdyZOq5BJbu5UuS6NhRVnE2fIo9APYpeA7sO+5iEB9+zA0YrPOnMNoMCDc4cD5fFM5BCzDD1YA
 VWOUrz4/RXrtkyTeKqTMKHYX7//kPzVuXjFxB4CWDFGZmJ35INddfeS33W3i5sSyYPK0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1i06W0-0006rc-Py; Tue, 20 Aug 2019 17:57:44 +0200
Date: Tue, 20 Aug 2019 17:57:44 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/6] net: stmmac: sun8i: Use devm_regulator_get for PHY
 regulator
Message-ID: <20190820155744.GN29991@lunn.ch>
References: <20190820145343.29108-1-megous@megous.com>
 <20190820145343.29108-4-megous@megous.com>
 <20190820153939.GL29991@lunn.ch>
 <20190820154714.2rt4ctovil5ol3u2@core.my.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820154714.2rt4ctovil5ol3u2@core.my.home>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_085758_002176_A03D8920 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgMDU6NDc6MTRQTSArMDIwMCwgT25kxZllaiBKaXJtYW4g
d3JvdGU6Cj4gSGkgQW5kcmV3LAo+IAo+IE9uIFR1ZSwgQXVnIDIwLCAyMDE5IGF0IDA1OjM5OjM5
UE0gKzAyMDAsIEFuZHJldyBMdW5uIHdyb3RlOgo+ID4gT24gVHVlLCBBdWcgMjAsIDIwMTkgYXQg
MDQ6NTM6NDBQTSArMDIwMCwgbWVnb3VzQG1lZ291cy5jb20gd3JvdGU6Cj4gPiA+IEZyb206IE9u
ZHJlaiBKaXJtYW4gPG1lZ291c0BtZWdvdXMuY29tPgo+ID4gPiAKPiA+ID4gVXNlIGRldm1fcmVn
dWxhdG9yX2dldCBpbnN0ZWFkIG9mIGRldm1fcmVndWxhdG9yX2dldF9vcHRpb25hbCBhbmQgcmVs
eQo+ID4gPiBvbiBkdW1teSBzdXBwbHkuIFRoaXMgYXZvaWRzIE5VTEwgY2hlY2tzIGJlZm9yZSBy
ZWd1bGF0b3JfZW5hYmxlL2Rpc2FibGUKPiA+ID4gY2FsbHMuCj4gPiAKPiA+IEhpIE9uZHJlago+
ID4gCj4gPiBXaGF0IGRvIHlvdSBtZWFuIGJ5IGEgZHVtbXkgc3VwcGx5PyBJJ20ganVzdCB0cnlp
bmcgdG8gbWFrZSBzdXJlIHlvdQo+ID4gYXJlIG5vdCBicmVha2luZyBiYWNrd2FyZHMgY29tcGF0
aWJpbGl0eS4KPiAKPiBTb3JyeSwgSSBtZWFuIGR1bW15IHJlZ3VsYXRvci4gU2VlOgo+IAo+IGh0
dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L2xhdGVzdC9zb3VyY2UvZHJpdmVycy9yZWd1
bGF0b3IvY29yZS5jI0wxODc0Cj4gCj4gT24gc3lzdGVtcyB0aGF0IHVzZSBEVCAoaS5lLiBoYXZl
X2Z1bGxfY29uc3RyYWludHMoKSA9PSB0cnVlKSwgd2hlbiB0aGUKPiByZWd1bGF0b3IgaXMgbm90
IGZvdW5kIChFTk9ERVYsIG5vdCBzcGVjaWZpZWQgaW4gRFQpLCByZWd1bGF0b3JfZ2V0IHdpbGwg
cmV0dXJuCj4gYSBmYWtlIGR1bW15IHJlZ3VsYXRvciB0aGF0IGNhbiBiZSBlbmFibGVkL2Rpc2Fi
bGVkLCBidXQgZG9lc24ndCBkbyBhbnl0aGluZwo+IHJlYWwuCgpIaSBPbmRyZWoKCkJ1dCB3ZSBh
bHNvIGdhaW4gYSBuZXcgd2FybmluZzoKCglkZXZfd2FybihkZXYsCgkJICIlcyBzdXBwbHkgJXMg
bm90IGZvdW5kLCB1c2luZyBkdW1teSByZWd1bGF0b3JcbiIsCgkgICAgICAgICBkZXZuYW1lLCBp
ZCk7CgpUaGlzIHJlZ3VsYXRvciBpcyBjbGVhcmx5IG9wdGlvbmFsLCBzbyB0aGVyZSBzaG91bGQg
bm90IGJlIGEgd2FybmluZy4KCk1heWJlIHlvdSBjYW4gYWRkIGEgbmV3IGdldF90eXBlLCBPUFRJ
T05BTF9HRVQsIHdoaWNoIGRvZXMgbm90IGlzc3VlCnRoZSB3YXJuaW5nLCBidXQgZG9lcyBnaXZl
IGJhY2sgYSBkdW1teSByZWd1bGF0b3IuCgpUaGFua3MKCUFuZHJldwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
