Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B3C1A459B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 13:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3iIcOWJOIKQiu7EF3ZQtT9m79KRqqIb25CyOMDO5Ic=; b=p4D/5fQ9FJyAj7
	uNaQkgPSktOHrM1NXf2uHZ4CAhFOq7CAXKGtTRMOqx6FyKCcXhApOxyUGS+29q/NrYCX/pQOQzx6D
	rji+0ESXyha5i0R6joonnkVAxGBj3sPiyZXeG2qfSfIop0wdjGMh51xsdOwmxDwIOAfEgcxVl3za1
	42WbN5UxCveNvUKahcQX/u54ek8PDPB56TtlP+yOoTwLu+TPvujEEBfGMHksCZuJXQS8pnroIErTL
	EyyVCFhtB+oluNkvk9OLgs1PgqDdPJa75PYjdvANs9imNHWy+pWSA5BoUEB51jbMUYH+pDu0ynoC3
	yZostiSaAspIwxFSIasg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMrli-0000LF-Va; Fri, 10 Apr 2020 11:24:18 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMrla-0000Km-Uq
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 11:24:12 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9976A329;
 Fri, 10 Apr 2020 13:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586517832;
 bh=aeaAolB7sW6j82qCRABmz/gvzp/EpmroY6OY5hT5q4c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y1L9e7i/nMOh9GfBiwd0G2puGhZPaeqAGgg7WvNPWoOzGW/uHGsYUhx2Wt0T6bMSz
 XuH6aDkMohnx/Fb4aLYqnKKSHh62+WDx7AKtJ7qM5mo/HGTylYJr0ghGyvAyB9ZVbU
 ANq/NIIG/t8DUx2+uDr75UQJUJZBieMU+BsEprys=
Date: Fri, 10 Apr 2020 14:23:42 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Guido =?utf-8?Q?G=C3=BCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH v11 1/2] dt-bindings: display/bridge: Add binding for NWL
 mipi dsi host controller
Message-ID: <20200410112342.GB4751@pendragon.ideasonboard.com>
References: <cover.1586427783.git.agx@sigxcpu.org>
 <147ffc1e4dee3a623e5dca25d84565d386a34112.1586427783.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <147ffc1e4dee3a623e5dca25d84565d386a34112.1586427783.git.agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_042411_140937_9DE99787 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robert Chiras <robert.chiras@nxp.com>,
 Lee Jones <lee.jones@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3VpZG8sCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KCk9uIFRodSwgQXByIDA5LCAyMDIw
IGF0IDEyOjQyOjAxUE0gKzAyMDAsIEd1aWRvIEfDvG50aGVyIHdyb3RlOgo+IFRoZSBOb3J0aHdl
c3QgTG9naWMgTUlQSSBEU0kgSVAgY29yZSBjYW4gYmUgZm91bmQgaW4gTlhQcyBpLk1YOCBTb0Nz
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+Cj4g
VGVzdGVkLWJ5OiBSb2JlcnQgQ2hpcmFzIDxyb2JlcnQuY2hpcmFzQG54cC5jb20+Cj4gUmV2aWV3
ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gQWNrZWQtYnk6IFNhbSBSYXZu
Ym9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KPiBSZXZpZXdlZC1ieTogRmFiaW8gRXN0ZXZhbSA8ZmVz
dGV2YW1AZ21haWwuY29tPgo+IC0tLQo+ICAuLi4vYmluZGluZ3MvZGlzcGxheS9icmlkZ2Uvbnds
LWRzaS55YW1sICAgICAgfCAyMjYgKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAyMjYgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL253bC1kc2kueWFtbAo+IAo+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2Uv
bndsLWRzaS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkv
YnJpZGdlL253bC1kc2kueWFtbAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAw
MDAwMDAwLi44YWZmMmQ2OGZjMzMKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL253bC1kc2kueWFtbAo+IEBAIC0w
LDAgKzEsMjI2IEBACj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkg
T1IgQlNELTItQ2xhdXNlKQo+ICslWUFNTCAxLjIKPiArLS0tCj4gKyRpZDogaHR0cDovL2Rldmlj
ZXRyZWUub3JnL3NjaGVtYXMvZGlzcGxheS9icmlkZ2UvbndsLWRzaS55YW1sIwo+ICskc2NoZW1h
OiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiArCj4gK3Rp
dGxlOiBOb3J0aHdlc3QgTG9naWMgTUlQSS1EU0kgY29udHJvbGxlciBvbiBpLk1YIFNvQ3MKPiAr
Cj4gK21haW50YWluZXJzOgo+ICsgIC0gR3VpZG8gR8O6bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4K
PiArICAtIFJvYmVydCBDaGlyYXMgPHJvYmVydC5jaGlyYXNAbnhwLmNvbT4KPiArCj4gK2Rlc2Ny
aXB0aW9uOiB8Cj4gKyAgTldMIE1JUEktRFNJIGhvc3QgY29udHJvbGxlciBmb3VuZCBvbiBpLk1Y
OCBwbGF0Zm9ybXMuIFRoaXMgaXMgYSBkc2kgYnJpZGdlIGZvcgo+ICsgIHRoZSBTT0NzIE5XTCBN
SVBJLURTSSBob3N0IGNvbnRyb2xsZXIuCj4gKwo+ICtwcm9wZXJ0aWVzOgo+ICsgIGNvbXBhdGli
bGU6Cj4gKyAgICBjb25zdDogZnNsLGlteDhtcS1ud2wtZHNpCj4gKwo+ICsgIHJlZzoKPiArICAg
IG1heEl0ZW1zOiAxCj4gKwo+ICsgIGludGVycnVwdHM6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsK
PiArICAnI2FkZHJlc3MtY2VsbHMnOgo+ICsgICAgY29uc3Q6IDEKPiArCj4gKyAgJyNzaXplLWNl
bGxzJzoKPiArICAgIGNvbnN0OiAwCj4gKwo+ICsgIGNsb2NrczoKPiArICAgIGl0ZW1zOgo+ICsg
ICAgICAtIGRlc2NyaXB0aW9uOiBEU0kgY29yZSBjbG9jawo+ICsgICAgICAtIGRlc2NyaXB0aW9u
OiBSWF9FU0MgY2xvY2sgKHVzZWQgaW4gZXNjYXBlIG1vZGUpCj4gKyAgICAgIC0gZGVzY3JpcHRp
b246IFRYX0VTQyBjbG9jayAodXNlZCBpbiBlc2NhcGUgbW9kZSkKPiArICAgICAgLSBkZXNjcmlw
dGlvbjogUEhZX1JFRiBjbG9jawo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBMQ0RJRiBjbG9jawo+
ICsKPiArICBjbG9jay1uYW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBjb3Jl
Cj4gKyAgICAgIC0gY29uc3Q6IHJ4X2VzYwo+ICsgICAgICAtIGNvbnN0OiB0eF9lc2MKPiArICAg
ICAgLSBjb25zdDogcGh5X3JlZgo+ICsgICAgICAtIGNvbnN0OiBsY2RpZgo+ICsKPiArICBtdXgt
Y29udHJvbHM6Cj4gKyAgICBkZXNjcmlwdGlvbjoKPiArICAgICAgbXV4IGNvbnRyb2xsZXIgbm9k
ZSB0byB1c2UgZm9yIG9wZXJhdGluZyB0aGUgaW5wdXQgbXV4Cj4gKwo+ICsgIHBoeXM6Cj4gKyAg
ICBtYXhJdGVtczogMQo+ICsgICAgZGVzY3JpcHRpb246Cj4gKyAgICAgIEEgcGhhbmRsZSB0byB0
aGUgcGh5IG1vZHVsZSByZXByZXNlbnRpbmcgdGhlIERQSFkKPiArCj4gKyAgcGh5LW5hbWVzOgo+
ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0gY29uc3Q6IGRwaHkKPiArCj4gKyAgcG93ZXItZG9tYWlu
czoKPiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsgIHJlc2V0czoKPiArICAgIGl0ZW1zOgo+ICsg
ICAgICAtIGRlc2NyaXB0aW9uOiBkc2kgYnl0ZSByZXNldCBsaW5lCj4gKyAgICAgIC0gZGVzY3Jp
cHRpb246IGRzaSBkcGkgcmVzZXQgbGluZQo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBkc2kgZXNj
IHJlc2V0IGxpbmUKPiArICAgICAgLSBkZXNjcmlwdGlvbjogZHNpIHBjbGsgcmVzZXQgbGluZQo+
ICsKPiArICByZXNldC1uYW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBieXRl
Cj4gKyAgICAgIC0gY29uc3Q6IGRwaQo+ICsgICAgICAtIGNvbnN0OiBlc2MKPiArICAgICAgLSBj
b25zdDogcGNsawo+ICsKPiArICBwb3J0czoKPiArICAgIHR5cGU6IG9iamVjdAo+ICsgICAgZGVz
Y3JpcHRpb246Cj4gKyAgICAgIEEgbm9kZSBjb250YWluaW5nIERTSSBpbnB1dCAmIG91dHB1dCBw
b3J0IG5vZGVzIHdpdGggZW5kcG9pbnQKPiArICAgICAgZGVmaW5pdGlvbnMgYXMgZG9jdW1lbnRl
ZCBpbgo+ICsgICAgICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZ3JhcGgudHh0
Lgo+ICsgICAgcHJvcGVydGllczoKPiArICAgICAgcG9ydEAwOgo+ICsgICAgICAgIHR5cGU6IG9i
amVjdAo+ICsgICAgICAgIGRlc2NyaXB0aW9uOgo+ICsgICAgICAgICAgSW5wdXQgcG9ydCBub2Rl
IHRvIHJlY2VpdmUgcGl4ZWwgZGF0YSBmcm9tIHRoZQo+ICsgICAgICAgICAgZGlzcGxheSBjb250
cm9sbGVyLiBFeGFjdGx5IG9uZSBlbmRwb2ludCBtdXN0IGJlCj4gKyAgICAgICAgICBzcGVjaWZp
ZWQuCj4gKyAgICAgICAgcHJvcGVydGllczoKPiArICAgICAgICAgICcjYWRkcmVzcy1jZWxscyc6
Cj4gKyAgICAgICAgICAgIGNvbnN0OiAxCj4gKwo+ICsgICAgICAgICAgJyNzaXplLWNlbGxzJzoK
PiArICAgICAgICAgICAgY29uc3Q6IDAKPiArCj4gKyAgICAgICAgICBlbmRwb2ludEAwOgo+ICsg
ICAgICAgICAgICBkZXNjcmlwdGlvbjogc3ViLW5vZGUgZGVzY3JpYmluZyB0aGUgaW5wdXQgZnJv
bSBMQ0RJRgo+ICsgICAgICAgICAgICB0eXBlOiBvYmplY3QKPiArCj4gKyAgICAgICAgICBlbmRw
b2ludEAxOgo+ICsgICAgICAgICAgICBkZXNjcmlwdGlvbjogc3ViLW5vZGUgZGVzY3JpYmluZyB0
aGUgaW5wdXQgZnJvbSBEQ1NTCj4gKyAgICAgICAgICAgIHR5cGU6IG9iamVjdAoKVGhpcyBtb2Rl
bHMgdGhlIHR3byBpbnB1dHMgdG8gdGhlIElQIGNvcmUsIHRoYXQgYXJlIGNvbm5lY3RlZCB0byBh
IG11eAppbnRlcm5hbGx5LCBjb250cm9sbGVkIHRocm91Z2ggbXV4LWNvbnRyb2xzLCByaWdodCA/
IFdoeSBpcyBhIHNpbmdsZQplbmRwb2ludCBzdXBwb3J0ZWQgdGhlbiwgaWYgdGhlcmUgYXJlIHR3
byBjb25uZWN0aW9ucyBhdCB0aGUgaGFyZHdhcmUKbGV2ZWwsIGFuZCB3aHkgaXMgdGhpcyB1c2lu
ZyBlbmRwb2ludHMgaW5zdGVhZCBvZiBwb3J0cyBhcyB0aGVyZSBhcmUKcmVhbGx5IHR3byBpbnB1
dCBwb3J0cyA/CgpBcGFydCBmcm9tIHRoYXQgdGhlIGJpbmRpbmdzIGxvb2sgb2sgdG8gbWUuCgo+
ICsKPiArICAgICAgICAgIHJlZzoKPiArICAgICAgICAgICAgY29uc3Q6IDAKPiArCj4gKyAgICAg
ICAgcmVxdWlyZWQ6Cj4gKyAgICAgICAgICAtICcjYWRkcmVzcy1jZWxscycKPiArICAgICAgICAg
IC0gJyNzaXplLWNlbGxzJwo+ICsgICAgICAgICAgLSByZWcKPiArCj4gKyAgICAgICAgb25lT2Y6
Cj4gKyAgICAgICAgICAtIHJlcXVpcmVkOgo+ICsgICAgICAgICAgICAgIC0gZW5kcG9pbnRAMAo+
ICsgICAgICAgICAgLSByZXF1aXJlZDoKPiArICAgICAgICAgICAgICAtIGVuZHBvaW50QDEKPiAr
Cj4gKyAgICAgICAgYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4gKwo+ICsgICAgICBwb3J0
QDE6Cj4gKyAgICAgICAgdHlwZTogb2JqZWN0Cj4gKyAgICAgICAgZGVzY3JpcHRpb246Cj4gKyAg
ICAgICAgICBEU0kgb3V0cHV0IHBvcnQgbm9kZSB0byB0aGUgcGFuZWwgb3IgdGhlIG5leHQgYnJp
ZGdlCj4gKyAgICAgICAgICBpbiB0aGUgY2hhaW4KPiArCj4gKyAgICAgICcjYWRkcmVzcy1jZWxs
cyc6Cj4gKyAgICAgICAgY29uc3Q6IDEKPiArCj4gKyAgICAgICcjc2l6ZS1jZWxscyc6Cj4gKyAg
ICAgICAgY29uc3Q6IDAKPiArCj4gKyAgICByZXF1aXJlZDoKPiArICAgICAgLSAnI2FkZHJlc3Mt
Y2VsbHMnCj4gKyAgICAgIC0gJyNzaXplLWNlbGxzJwo+ICsgICAgICAtIHBvcnRAMAo+ICsgICAg
ICAtIHBvcnRAMQo+ICsKPiArICAgIGFkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQo+ICsKPiAr
cGF0dGVyblByb3BlcnRpZXM6Cj4gKyAgIl5wYW5lbEBbMC05XSskIjoKPiArICAgIHR5cGU6IG9i
amVjdAo+ICsKPiArcmVxdWlyZWQ6Cj4gKyAgLSAnI2FkZHJlc3MtY2VsbHMnCj4gKyAgLSAnI3Np
emUtY2VsbHMnCj4gKyAgLSBjbG9jay1uYW1lcwo+ICsgIC0gY2xvY2tzCj4gKyAgLSBjb21wYXRp
YmxlCj4gKyAgLSBpbnRlcnJ1cHRzCj4gKyAgLSBtdXgtY29udHJvbHMKPiArICAtIHBoeS1uYW1l
cwo+ICsgIC0gcGh5cwo+ICsgIC0gcG9ydHMKPiArICAtIHJlZwo+ICsgIC0gcmVzZXQtbmFtZXMK
PiArICAtIHJlc2V0cwo+ICsKPiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4gKwo+ICtl
eGFtcGxlczoKPiArIC0gfAo+ICsKPiArICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL2lt
eDhtcS1jbG9jay5oPgo+ICsgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRy
b2xsZXIvYXJtLWdpYy5oPgo+ICsgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcmVzZXQvaW14OG1x
LXJlc2V0Lmg+Cj4gKwo+ICsgICBtaXBpX2RzaTogbWlwaV9kc2lAMzBhMDAwMDAgewo+ICsgICAg
ICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsgICAgICAgICAgICAgICNzaXplLWNl
bGxzID0gPDA+Owo+ICsgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiZnNsLGlteDhtcS1ud2wt
ZHNpIjsKPiArICAgICAgICAgICAgICByZWcgPSA8MHgzMEEwMDAwMCAweDMwMD47Cj4gKyAgICAg
ICAgICAgICAgY2xvY2tzID0gPCZjbGsgSU1YOE1RX0NMS19EU0lfQ09SRT4sCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgPCZjbGsgSU1YOE1RX0NMS19EU0lfQUhCPiwKPiArICAgICAgICAgICAg
ICAgICAgICAgICA8JmNsayBJTVg4TVFfQ0xLX0RTSV9JUEdfRElWPiwKPiArICAgICAgICAgICAg
ICAgICAgICAgICA8JmNsayBJTVg4TVFfQ0xLX0RTSV9QSFlfUkVGPiwKPiArICAgICAgICAgICAg
ICAgICAgICAgICA8JmNsayBJTVg4TVFfQ0xLX0xDRElGX1BJWEVMPjsKPiArICAgICAgICAgICAg
ICBjbG9jay1uYW1lcyA9ICJjb3JlIiwgInJ4X2VzYyIsICJ0eF9lc2MiLCAicGh5X3JlZiIsICJs
Y2RpZiI7Cj4gKyAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDM0IElSUV9UWVBF
X0xFVkVMX0hJR0g+Owo+ICsgICAgICAgICAgICAgIG11eC1jb250cm9scyA9IDwmbXV4IDA+Owo+
ICsgICAgICAgICAgICAgIHBvd2VyLWRvbWFpbnMgPSA8JnBnY19taXBpPjsKPiArICAgICAgICAg
ICAgICByZXNldHMgPSA8JnNyYyBJTVg4TVFfUkVTRVRfTUlQSV9EU0lfUkVTRVRfQllURV9OPiwK
PiArICAgICAgICAgICAgICAgICAgICAgICA8JnNyYyBJTVg4TVFfUkVTRVRfTUlQSV9EU0lfRFBJ
X1JFU0VUX04+LAo+ICsgICAgICAgICAgICAgICAgICAgICAgIDwmc3JjIElNWDhNUV9SRVNFVF9N
SVBJX0RTSV9FU0NfUkVTRVRfTj4sCj4gKyAgICAgICAgICAgICAgICAgICAgICAgPCZzcmMgSU1Y
OE1RX1JFU0VUX01JUElfRFNJX1BDTEtfUkVTRVRfTj47Cj4gKyAgICAgICAgICAgICAgcmVzZXQt
bmFtZXMgPSAiYnl0ZSIsICJkcGkiLCAiZXNjIiwgInBjbGsiOwo+ICsgICAgICAgICAgICAgIHBo
eXMgPSA8JmRwaHk+Owo+ICsgICAgICAgICAgICAgIHBoeS1uYW1lcyA9ICJkcGh5IjsKPiArCj4g
KyAgICAgICAgICAgICAgcGFuZWxAMCB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAjYWRkcmVz
cy1jZWxscyA9IDwxPjsKPiArICAgICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+
Owo+ICsgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrdGVjaCxqaDA1N24w
MDkwMCI7Cj4gKyAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MD47Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICBwb3J0QDAgewo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8
MD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIHBhbmVsX2luOiBlbmRwb2ludCB7Cj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8
Jm1pcGlfZHNpX291dD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICB9Owo+ICsgICAgICAgICAgICAgIH07Cj4gKwo+ICsgICAgICAgICAg
ICAgIHBvcnRzIHsKPiArICAgICAgICAgICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsK
PiArICAgICAgICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsKPiArCj4gKyAgICAgICAg
ICAgICAgICAgICAgcG9ydEAwIHsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgI3NpemUt
Y2VsbHMgPSA8MD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxz
ID0gPDE+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MD47Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgIG1pcGlfZHNpX2luOiBlbmRwb2ludEAwIHsKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwwPjsKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwmbGNkaWZf
bWlwaV9kc2k+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+ICsgICAgICAgICAg
ICAgICAgICAgIH07Cj4gKyAgICAgICAgICAgICAgICAgICAgcG9ydEAxIHsKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcmVnID0gPDE+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICBtaXBpX2RzaV9vdXQ6IGVuZHBvaW50IHsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JnBhbmVsX2luPjsKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfTsKPiArICAgICAgICAgICAgICAgICAgICB9Owo+ICsgICAgICAg
ICAgICAgIH07Cj4gKyAgICAgIH07CgotLSAKUmVnYXJkcywKCkxhdXJlbnQgUGluY2hhcnQKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
