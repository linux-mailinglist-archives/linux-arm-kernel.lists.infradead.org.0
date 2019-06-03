Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C66337C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 20:25:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4uoGRFtG3mPALRN5/ChsSzeTEqNoXeM6CHoFmjUM1ew=; b=OM6LXckNdSh4tG
	kvz+yQa1LGtd0wfgcFn/sdlBpQ8W5hPbOYy7o4KQsmDqvJEhdH1tj26Gi/n7Gt83NrMs8qCdqBAJm
	NBT0eFxBBiyezHwq3MWUYVNofn01v7CZrH5kX8QQbEvbVFLQoMryBRNv2JbTs4Ie3mJLoFVwRuvX6
	z3/cW552WeC7kk1R4A5DL/zDY/A3Of8Hq6UTuQBVobn2dc67EFOOyoVSxDb1fnOqify9PHT2lS/mH
	fkOozzGCHAgJLm3LrTC6z9bAhym0N/KIOK/QIyzZ9C+hO9ru6hp+Vw8d2DzT9nEQj87zjgj2b3qK9
	c+e/Voi0rYkh0yA3Glhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXreA-00084Y-Rt; Mon, 03 Jun 2019 18:25:26 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXre4-000848-Gx
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 18:25:22 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 125B44000A;
 Mon,  3 Jun 2019 18:25:04 +0000 (UTC)
Date: Mon, 3 Jun 2019 19:53:09 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: linux-sunxi@googlegroups.com, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Mark Rutland <mark.rutland@arm.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>, "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [linux-sunxi] [PATCH v6 0/6] Add support for Orange Pi 3
Message-ID: <20190603175309.qjlyfymbl6ybrpag@flea>
References: <20190527162237.18495-1-megous@megous.com>
 <20190531125246.qqfvmgmw2mv442tq@core.my.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531125246.qqfvmgmw2mv442tq@core.my.home>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_112520_720268_B68C60D8 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMzEsIDIwMTkgYXQgMDI6NTI6NDZQTSArMDIwMCwgT25kxZllaiBKaXJtYW4g
d3JvdGU6Cj4gSGVsbG8sCj4KPiBPbiBNb24sIE1heSAyNywgMjAxOSBhdCAwNjoyMjozMVBNICsw
MjAwLCBtZWdvdXMgdmlhIGxpbnV4LXN1bnhpIHdyb3RlOgo+ID4gRnJvbTogT25kcmVqIEppcm1h
biA8bWVnb3VzQG1lZ291cy5jb20+Cj4gPgo+ID4gVGhpcyBzZXJpZXMgaW1wbGVtZW50cyBzdXBw
b3J0IGZvciBYdW5sb25nIE9yYW5nZSBQaSAzIGJvYXJkLgo+ID4KPiA+IFVuZm9ydHVuYXRlbHks
IHRoaXMgYm9hcmQgbmVlZHMgc29tZSBzbWFsbCBkcml2ZXIgcGF0Y2hlcywgc28gSSBoYXZlCj4g
PiBzcGxpdCB0aGUgYm9hcmRzIERUIHBhdGNoIGludG8gY2h1bmtzIHRoYXQgcmVxdWlyZSBwYXRj
aGVzIGZvciBkcml2ZXJzCj4gPiBpbiB2YXJpb3VzIHN1YnN5c3RlbXMuCj4gPgo+ID4gU3VnZ2Vz
dGVkIG1lcmdpbmcgcGxhbi9kZXBlbmRlbmNpZXM6Cj4gPgo+ID4gLSBzdG1tYWMgcGF0Y2hlcyBh
cmUgbmVlZGVkIGZvciBldGhlcm5ldCBzdXBwb3J0IChwYXRjaGVzIDEtMykKPiA+ICAgLSB0aGVz
ZSBzaG91bGQgYmUgcmVhZHkgbm93Cj4gPiAtIEhETUkgc3VwcG9ydCAocGF0Y2hlcyA0LTYpCj4g
PiAgIC0gc2hvdWxkIGJlIHJlYWR5Cj4KPiBJZiB0aGVyZSBhcmUgbm8gZnV0aGVyIGNvbW1lbnRz
LCBjYW4gYWxsIHRoZXNlIHBhdGNoZXMgcGxlYXNlIGJlIG1lcmdlZD8KCkknbSB3YWl0aW5nIGZv
ciBzb21lIGZlZWRiYWNrIG9uIHRoZSBzdG1tYWMgYW5kIHRoZSBEVy1IRE1JCmRldmVsb3BwZXJz
IHRvIG1lcmdlIHRoZSByZXN0CgpNYXhpbWUKCi0tCk1heGltZSBSaXBhcmQsIEJvb3RsaW4KRW1i
ZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZwpodHRwczovL2Jvb3RsaW4uY29tCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
