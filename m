Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D95E7DE912
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 12:11:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FEsGyT9T+ne3BOBKJRObLRtYwoBsNi8rCWEjnEkk2X0=; b=eaLFXMnxPmNShN
	Yo6oeeRvejZuu2hwDGyeX+LZ3wuK6YnDNEFp+LzIchKS9Pcl0NM82k7Kp1WzpXMhq6zS4Xv8txGiG
	I9Rv9IQCcR6kg2qbr+fHL2bu+L7trRYwwWE7HzknSwnp05B8V4kIIMSkO1S8SFA6B8ANMZhx64cS9
	5YOZ64xsNMP0cEXZH/piXkix7af6x3dh0FWxEYw4uStjPIMvgjctqYJUHX+U9p3s7Totg1GnzXqdn
	By3SUx0dWzvy72guW6Bj316afyH4FuAjRpPQpQhkcVAsF1SV/Dag1a1h2ZO/HF5SCEKLEEtc4txcW
	LK5qVtL+fi067J0k4JuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMUfB-0004s6-VE; Mon, 21 Oct 2019 10:11:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMUew-0004qu-Ik
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:11:32 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iMUes-0006Rv-S9; Mon, 21 Oct 2019 12:11:26 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iMUes-0004zR-93; Mon, 21 Oct 2019 12:11:26 +0200
Date: Mon, 21 Oct 2019 12:11:26 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Adam Ford <aford173@gmail.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-pwm@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>
Subject: Re: pwm_bl on i.MX6Q broken on 5.4-RC1+
Message-ID: <20191021101126.tw5bjyp76rbxudgj@pengutronix.de>
References: <CAHCN7xJSz+QhOb4vE6b67jh5jnSOHnw79EyX8RW91TqPkD__Lw@mail.gmail.com>
 <20191020182428.76l3ob4sxblrjr4m@core.my.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191020182428.76l3ob4sxblrjr4m@core.my.home>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_031130_623913_222CC3D2 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gT25kxZllaiwKCk9uIFN1biwgT2N0IDIwLCAyMDE5IGF0IDA4OjI0OjI4UE0gKzAyMDAs
IE9uZMWZZWogSmlybWFuIHdyb3RlOgo+IE9uIFdlZCwgT2N0IDE2LCAyMDE5IGF0IDAyOjU1OjU0
UE0gLTA1MDAsIEFkYW0gRm9yZCB3cm90ZToKPiA+IEkgaGF2ZSBhbiBpLk1YNlEgd2l0aCBhbiBM
Q0QgYW5kIFBXTSBjb250cm9sbGVkIGJhY2tsaWdodC4gIE9uIDUuNC1SQzEKPiA+IHRocm91Z2gg
dGhlIGN1cnJlbnQgbWFzdGVyICgxNiBPY3QgMjAxOSksIHRoZSBiYWNrbGlnaHQgZG9lcyBub3Qg
Y29tZQo+ID4gb24gYnkgZGVmYXVsdC4gIEkgY2FuIGdldCBpdCBjb21lIG9uIGJ5IG1hbnVhbGx5
IHNldHRpbmcgdGhlCj4gPiBicmlnaHRuZXNzLCBidXQgYW55IHZpZGVvIGFjdGl2aXR5IHNlZW1z
IHRvIGJsYW5rIHRoZSBzY3JlZW4gYWdhaW4KPiA+IHVudGlsIEkgY2hhbmdlIHRoZSBicmlnaHRu
ZXNzIGFnYWluLgo+IAo+IFlvdSBtaWdodCB3YW50IHRvIGNoZWNrIFBXTSBkcml2ZXIgdGhhdCdz
IHVzZWQgb24geW91ciBTb0MuIEkgaGFkIGEgc2ltaWxhcgo+IGJyZWFrYWdlIG9uIEFsbHdpbm5l
ciBTb0NzLCBhbmQgaXQgd2FzIGNhdXNlZCBieSBhIGJyb2tlbiBnZXRfc3RhdGUgY2FsbGJhY2su
Cj4gVGhlIHByb2JsZW0gd2FzIHRoZXJlIGZvciBhIGxvbmcgdGltZSBhbmQgaXQgd2FzIG9ubHkg
ZXhwb3NlZCBieSB0aGUgY29tbWl0IHlvdQo+IGJpc2VjdGVkIHRvLgoKSSBhZGRlZCBBZGFtIHRv
IHRoZSByZWNpcGVudHMgb2YgdGhlIFRocmVhZCAiYmFja2xpZ2h0OiBwd21fYmw6CmNvbmZpZ3Vy
ZSBwd20gb25seSBvbmNlIHBlciBiYWNrbGlnaHQgdG9nZ2xlIiBoZXJlIG9uIHRoaXMgbGlzdC4g
SW4gdGhpcwp0aHJlYWQgdGhlIHByb2JsZW0gaXMgYW5hbHlzZWQgYW5kIGl0J3MgYSBiaXQgZGlm
ZmVyZW50IHRoYW4gZm9yIHN1bjRpLgpJIGFzc3VtZSB3ZSBkb24ndCBuZWVkIHRvIGZvbGxvdyB1
cCBvbiB0aGlzIHJlcG9ydCBnaXZlbiB0aGUgZGlzY3Vzc2lvbgppcyBhbHJlYWR5IG9uZ29pbmcg
ZWxzZXdoZXJlLgoKQmVzdCByZWdhcmRzClV3ZQoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAg
ICAgICAgICAgICAgICAgICAgICB8IFV3ZSBLbGVpbmUtS8O2bmlnICAgICAgICAgICAgfApJbmR1
c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1
dHJvbml4LmRlLyAgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
