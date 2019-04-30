Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E868FF4D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 20:05:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pOYew/lPaFujfdvEd7nTGOTaFzd0xtUEKNnBg3CmOtQ=; b=rF/UxN/30793AZ
	Jl1BW4ArEMCyN7cjL8OFpLdAGZeKOgmuYIs7S3pUnfVO5Nh8qchdhsjE09hn5zIbzEu/6Fsgz3wgT
	TUtgFmy7Xn/GDx5Q9cl0wYipDLvGFFw8359O966EyDdmpS+cYeKILkhFhK+rsA9IzAFKvnUAtsgqm
	7XBk7/SdVA5QAmvvZ2R1ZJ5Xb32lHqubuHsbXyinOvUntMlHJmJblKN8jnQdyhQzuCTwJQsJBrgIQ
	Q3mW3ap8Fg0Sgb09dheLnrBa+H+fPdo7sHh9xUgCAXhMMO7IzH3tw6syxgQIIru9QyGAAaRoxAJmd
	6dF7mJi2XKqF+zPyTy9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLX8X-0003hN-8T; Tue, 30 Apr 2019 18:05:49 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLX8O-0003g1-Nf; Tue, 30 Apr 2019 18:05:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gportay) with ESMTPSA id 60BAB281CB7
From: =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@collabora.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@collabora.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Subject: [RFC 0/4] Add support for drm/rockchip to dynamically control the DDR
 frequency within vblank for gru chromebooks.
Date: Tue, 30 Apr 2019 14:05:20 -0400
Message-Id: <20190430180524.22710-1-gael.portay@collabora.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_110541_034929_E10A44A0 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Lin Huang <hl@rock-chips.com>, Derek Basehore <dbasehore@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>, kernel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVhciBhbGwsCgpUaGUgcHVycG9zZSBvZiB0aGF0IFJGQyBpcyB0byBlbmFibGUgZGUgRE1DIGRl
dmljZSBmb3IgdGhlIFJvY2tjaGlwCmJhc2VkIEdSVSBDaHJvbWVib29rcywgYW5kIHRvIGFkZCBh
IG1lYW4gb2Ygc3luY2hyb25pemF0aW9uIGJldHdlZW4gdGhlClJvY2tjaGlwIERSTSBkcml2ZXIg
YW5kIHRoYXQgRE1DIGRldmZyZXEgZHJpdmVyLgoKVGhlIERNQyBkZXZpY2UgaXMgcmVzcG9uc2li
bGUgZm9yIHVwZGF0aW5nIHRoZSBERFIgZnJlcXVlbmN5IGFjY29yZGluZwp0byB0aGUgbG9hZCBv
ZiB0aGUgRERSIG1lbW9yeS4gQ2hhbmdpbmcgdGhhdCBjbG9jayByYXRlIHdpdGhpbiB0aGUKZGlz
cGxheSBzY2Fub3V0IGxlYWRzIHRvIGdsaXRjaGVzLiBUaHVzLCB0aGUgZGV2ZnJlcSBmcmFtZXdv
cmsgbmVlZHMgYQptZWFuIHRvIHN5bmNocm9uaXplIHRoZSByYXRlIGNoYW5nZSB3aXRoIG90aGVy
IGRldmljZXMuCgpJbiB0aGF0IGNhc2UsIHRoZSBEUk0gZHJpdmVyIGRpc3BsYXkgaGFzIHRvIHN5
bmNocm9uaXplIGEgY2hhbmdlIHJhdGUKd2l0aGluIHRoZSBWQkxBTksuCgpUaGUgZmlyc3QgcGF0
Y2ggYWRkcyBhIGxvY2tpbmcgQVBJIHRvIHRoZSBkZXZmcmVxIGZyYW1ld29yay4gVGhlIHVzZXJz
Cm9mIGEgZGV2ZnJlcSBkZXZpY2UgY2FuIGNvbnRyb2wgdGhlIGZyZXF1ZW5jeSBjaGFuZ2UgYnkg
bG9ja2luZyBhbmQKdW5sb2NraW5nIHRoZSBkZXZmcmVxIGRldmljZSB3aGVuZXZlciB0aGV5IHdh
bnQuIFdoZW4gYSBjaGFuZ2UgcmF0ZSBpcwpyZXF1ZXN0ZWQsIGFuZCB0aGUgZGV2aWNlIGlzIGxv
Y2tlZCwgdGhlIGRyaXZlcnMgdGhhdCBob2xkIGEgbG9jayBhcmUKY2FsbGVkIGJhY2ssIGFuZCB0
aGUgY2hhbmdlIHdpbGwgYmUgYXBwbGllZCBhcyBzb29uIGFzIHRoZSBkZXZpY2UgaXMKdW5sb2Nr
ZWQuCgpUaGUgc2Vjb25kIHBhdGNoIGFkZHMgdGhlIGRldmZyZXEgc3VwcG9ydCBpbiB0aGUgUm9j
a2NoaXAgRFJNIGRyaXZlcnMKYW5kIHVzZXMgdGhlIGRldmZyZXEgbG9jayBBUEkgdG8gZGVmZXIg
dGhlIGNoYW5nZSBvZiB0aGUgRERSIGZyZXF1ZW5jeQp3aXRoaW4gdGhlIG5leHQgVkJMQU5LLiBU
aGUgRFJNIGRyaXZlciBsb2NrcyB0aGUgZGV2ZnJlcSBkZXZpY2UgYW5kIGdldHMKbm90aWZpZWQg
d2hlbiBhIGNoYW5nZSBpcyB3YW50ZWQgdGhlbi4gTmV4dCwgaXQgZW5hYmxlcyB0aGUgVkJMQU5L
CmludGVycnVwdCwgcmVsZWFzZXMgdGhlIGxvY2sgb24gaW50ZXJydXB0IGFuZCBzdGFydHMgYSB0
aW1lciB0aGF0CnJlbG9ja3MgdGhlIGRldmZyZXEgZGV2aWNlIGF0IHRoZSBlbmQgb2YgdGhlIHZl
cnRpY2FsIGJsYW5raW5nIGludGVydmFsLgpBbHNvLCB0aGUgRFJNIGRyaXZlciBkaXNhYmxlcyB0
aGUgZGV2ZnJlcSBkZXZpY2UgaWYgbW9yZSB0aGFuIG9uZSBDUlRDCmJlY29tZXMgYWN0aXZlLgoK
VGhlIHRoaXJkIHBhdGNoIG1lcmdlcyB0aGUgUm9ja2NoaXAgRERSIGNsb2NrIGNvZGUgdG8gdGhl
IFJvY2tjaGlwIERNQwpkZXZmcmVxIGRyaXZlci4gVGhlc2UgZHJpdmVycyBib3RoIHBlcmZvcm0g
U01DIGNhbGxzIHRvIHRoZQpUcnVzdGVkLUZpcm13YXJlIEEgdG8gcnVuIFNpUCBzZXJ2aWNlcyB0
aGF0IGFyZSByZWxhdGVkIHRvIHRoZSBERFIKbWVtb3J5LiBUaGlzIG1lcmdlIHB1dHMgdGhlIGNv
ZGUgYXQgdGhlIHNhbWUgcGxhY2UuIEl0IGF2b2lkcyB0aGUKY29udGVudGlvbiBpbiB0aGUgQ29t
bW9uIENsb2NrIEZyYW1ld29yayB0aGF0IG1heSBjYXVzZSB0byBtaXNzIHRoZQpkZWFkbGluZSBk
dXJpbmcgd2hpY2ggdGhlIHJhdGUgY2FuIGJlIGNoYW5naW5nIHdpdGhvdXQgbWFraW5nIGdsaXRj
aGVzLgoKVGhlIGZvdXJ0aCBwYXRjaCB0ZWxscyBkaXNwbGF5LXN1YnN5c3RlbSB0byB1c2UgdGhl
IERNQyBkZXZmcmVxIGRldmljZS4KCkkgYW0gd2FpdGluZyBmb3IgeW91ciBmZWVkYmFjay4KCk5v
dGU6IFRoaXMgUkZDIG5lZWRzIHBhdGNoc2V0WzFdLiBJdHMgcHVycG9zZSBpcyB0byBhZGRyZXNz
ZXMgdGhlIHJldmlldwp0aGF0IHdhcyBtYWRlIGluIHYxWzJdLiBJIGRyb3BwZWQgc29tZSBwYXRj
aGVzIGluIHYyIHRvIGFkZHJlc3MgdGhpbmdzCnNlcGFyYXRlbHkgKGluIHRoYXQgUkZDKS4KClsx
XTogaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMDkwMTU3Ny8KWzJdOiBodHRw
czovL2xrbWwub3JnL2xrbWwvZmFuY3kvMjAxOC84LzIvNwoKQmVzdCByZWdhcmRzLApHYcOrbCBQ
T1JUQVkgKDMpOgogIFBNIC8gZGV2ZnJlcTogYWRkIGRldmZyZXFfbG9jay91bmxvY2soKSBmdW5j
dGlvbnMKICBkcm06IHJvY2tjaGlwOiBBZGQgRERSIGRldmZyZXEgc3VwcG9ydC4KICBjbGs6IHJv
Y2tjaGlwOiBtZXJnZSBjbGstZGRyIGluIGRtYyBkZXZmcmVxIGRyaXZlcgogIGFybTY0OiBkdHM6
IHJvY2tjaGlwOiBTZXQgdGhlIGRpc3BsYXktc3Vic3lzdGVtIGRldmZyZXEKCiBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1ncnUuZHRzaSB8ICAgNCArCiBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpICAgICB8ICAgMiArLQogZHJpdmVycy9jbGsvcm9j
a2NoaXAvTWFrZWZpbGUgICAgICAgICAgICAgICAgfCAgIDEgLQogZHJpdmVycy9jbGsvcm9ja2No
aXAvY2xrLWRkci5jICAgICAgICAgICAgICAgfCAxNDcgLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMv
Y2xrL3JvY2tjaGlwL2Nsay1yazMzOTkuYyAgICAgICAgICAgIHwgICAyIC0KIGRyaXZlcnMvY2xr
L3JvY2tjaGlwL2Nsay5jICAgICAgICAgICAgICAgICAgIHwgICA5IC0KIGRyaXZlcnMvY2xrL3Jv
Y2tjaGlwL2Nsay5oICAgICAgICAgICAgICAgICAgIHwgIDMzIC0tLQogZHJpdmVycy9kZXZmcmVx
L2RldmZyZXEuYyAgICAgICAgICAgICAgICAgICAgfCAyMDAgKysrKysrKysrKysrKysrKysrLQog
ZHJpdmVycy9kZXZmcmVxL3JrMzM5OV9kbWMuYyAgICAgICAgICAgICAgICAgfCAgNDIgKystLQog
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYyAgfCAgNTEgKysrKy0K
IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmggIHwgICA2ICsKIGRy
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYyAgIHwgMTc3ICsrKysrKysr
KysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuaCAgIHwg
ICAzICstCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jICB8ICA4
MiArKysrKysrKwogaW5jbHVkZS9saW51eC9kZXZmcmVxLmggICAgICAgICAgICAgICAgICAgICAg
fCAgNjQgKysrKysrCiAxNSBmaWxlcyBjaGFuZ2VkLCA2MTEgaW5zZXJ0aW9ucygrKSwgMjEyIGRl
bGV0aW9ucygtKQogZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1k
ZHIuYwoKLS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
