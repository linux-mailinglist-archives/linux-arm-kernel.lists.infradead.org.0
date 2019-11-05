Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB58EFF46
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 15:01:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xd3gvp/KQ1VAUNSu9NighH7r/zVDc7+wYAb9dmCYqbc=; b=MTpmqLgu8VWKUq
	kgegX+F9PrrOcVvHTUnf+QPPPfP86iiFqK06xb9lKNpM1XDfqNu5EuKdRjmxHM7VN5t1f2g24jram
	vHFuy8JRya/+SGNgGYHWMD8bZKXlkKLz1GYSpFbjFUZlx6rfw2gZ53pTQHz7pQPXehBdPt6Yhrzgb
	V+ir48lkzphWe/2uovL8FFGK31B6yL+AWMMb3MVBZoLhKC1DhfCLe54BU5UsWDQpB+nobtuvP4YOP
	4DIEP6EvKcy1+gbvdbZuXuWw0trTPKIGE13Jc+qugDNKIyMpUq3+FyEfMp0H/hRav/7n9b19sziRW
	FSyo3Bv0W2E05zaiF4FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRzP5-0006YM-7C; Tue, 05 Nov 2019 14:01:51 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRzOy-0006Xw-V1
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 14:01:46 +0000
Received: by mail-wr1-x443.google.com with SMTP id b3so15733643wrs.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 06:01:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Wcd6F4hUjRzDP5lzJbcKbN83P0Izh8UopNSdrH/0wXs=;
 b=JuGsP7SaJj6polj8WOmJL+wp8KAuIHmo+o9netEjHZUnkfMZlpJrU5Jm+LWMA3UbQE
 iBvCJywvjXy6BYuWreZ9X+UIjDqjTId8lLv4aJjHAxtQxr8RZUTsxAHzztkUXuu506Ty
 6F4HI1awQ+O9jKKZxIJ1S0pujnzRSJAafQus3efQA1FUv5vt+kmWLEv5xQlUPr4OjGPE
 zNQZcnceOyLUnqj2qYpJiUPKgOyIQ5rxG7gBXoosxQZWOSJ3nHCDARXlwZrRxqqOHz9S
 23irGP3IQhh+AuczCRM/sS3LgaVNvLApVUWBkkRDwvNjAo4NyFva12WxB7pBuKjpOLuF
 606w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Wcd6F4hUjRzDP5lzJbcKbN83P0Izh8UopNSdrH/0wXs=;
 b=B6KNbxnJkiomhNzKUC2S7VMuJwRQs5yCq63oAEPbE9FsDJMMyt8lOhFdoQ+zIth6gG
 cOky7wdBGokynAXBrGlbPzVMLP6pLV+perQ40ot7ey5e6Ff0B4760wBnbicJBCga1O1z
 EipF26AL6KqKSbfm9uGsvZFWJSruGCsi/wx54jf8DGE6m+7Z/971y7wSNP70ijCSUpkC
 vfPjFSw0VC3aLoswnrSj6W12C3aeCOYCQn5wdsOGpGV7yErIlE4eiYstaGiAMM4v7kcc
 akLthPe3MgFyB7RW2XyGwY0qiUhVNcmzNnGtR66MMPVgIbpWwYo51+BoZ0EuhEJ4izCx
 8D6w==
X-Gm-Message-State: APjAAAVc++FM2z/MjjQcJSHqsreMxIWq8AVJOBFZBMq3t62bkirXaVVE
 b+xVO32RP+RzTHUw+D2TdGKyY+lgRRz0BzXoxUM=
X-Google-Smtp-Source: APXvYqxRcCROBvE45IqEtn6OaqJk7IITVlNsi8UujVDIcnVf36fGS6gEz5kfeljJQVq3rkoKIyrIDQkO5S6JVNP7UKw=
X-Received: by 2002:a5d:4b42:: with SMTP id w2mr27600001wrs.360.1572962502646; 
 Tue, 05 Nov 2019 06:01:42 -0800 (PST)
MIME-Version: 1.0
References: <20191105131456.32400-1-peron.clem@gmail.com>
 <20191105131456.32400-3-peron.clem@gmail.com>
 <a8908f1157e862164fb1bea07f8d5e1812325858.camel@pengutronix.de>
In-Reply-To: <a8908f1157e862164fb1bea07f8d5e1812325858.camel@pengutronix.de>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 5 Nov 2019 15:01:31 +0100
Message-ID: <CAJiuCcesD8kh_BpVLxyhk5UYYwGhp_tQkcsaY-LzxRTT5kO3Qw@mail.gmail.com>
Subject: Re: [PATCH v3 2/7] pwm: sun4i: Add an optional probe for reset line
To: Philipp Zabel <p.zabel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_060145_024941_61F9CF41 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Philipp Zabel <pza@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGhpbGlwcCwKCk9uIFR1ZSwgNSBOb3YgMjAxOSBhdCAxNDozNiwgUGhpbGlwcCBaYWJlbCA8
cC56YWJlbEBwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4KPiBPbiBUdWUsIDIwMTktMTEtMDUgYXQg
MTQ6MTQgKzAxMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+IEZyb206IEplcm5laiBTa3Jh
YmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPiA+Cj4gPiBINiBQV00gY29yZSBuZWVkcyBk
ZWFzc2VydGVkIHJlc2V0IGxpbmUgaW4gb3JkZXIgdG8gd29yay4KPiA+Cj4gPiBBZGQgYW4gb3B0
aW9uYWwgcHJvYmUgZm9yIGl0Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVj
IDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPiA+IFNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDD
qXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Cj4KPiBSZXZpZXdlZC1ieTogUGhpbGlwcCBaYWJl
bCA8cC56YWJlbEBwZW5ndXRyb25peC5kZT4KPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9wd20vcHdt
LXN1bjRpLmMgfCAzMyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0KPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgYi9kcml2ZXJzL3B3bS9wd20tc3VuNGku
Ywo+ID4gaW5kZXggNmY1ODQwYTFhODJkLi45YmE4Mzc2OWE0NzggMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL3B3bS9wd20tc3VuNGkuYwo+ID4gKysrIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMK
PiBbLi4uXQo+ID4gQEAgLTM2NSw2ICszNjcsMjEgQEAgc3RhdGljIGludCBzdW40aV9wd21fcHJv
YmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ICAgICAgIGlmIChJU19FUlIocHdt
LT5jbGspKQo+ID4gICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihwd20tPmNsayk7Cj4gPgo+
ID4gKyAgICAgcHdtLT5yc3QgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X29wdGlvbmFsX3NoYXJl
ZCgmcGRldi0+ZGV2LCBOVUxMKTsKPiA+ICsgICAgIGlmIChJU19FUlIocHdtLT5yc3QpKSB7Cj4g
PiArICAgICAgICAgICAgIGlmIChQVFJfRVJSKHB3bS0+cnN0KSAhPSAtRVBST0JFX0RFRkVSKQo+
ID4gKyAgICAgICAgICAgICAgICAgICAgIGRldl9lcnIoJnBkZXYtPmRldiwgImdldCByZXNldCBm
YWlsZWQgJWxkXG4iLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUFRSX0VSUihw
d20tPnJzdCkpOwo+ID4gKyAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihwd20tPnJzdCk7Cj4g
PiArICAgICB9Cj4gPiArCj4gPiArICAgICAvKiBEZWFzc2VydCByZXNldCAqLwo+Cj4gTml0cGlj
azogaXNuJ3QgdGhlIEFQSSBmdW5jdGlvbiBuYW1lIGV4cGxhbmF0b3J5IGVub3VnaD8KClllcyBJ
IGNhbiByZW1vdmUgdGhpcyBjb21tZW50LAoKQ2zDqW1lbnQKPgo+IHJlZ2FyZHMKPiBQaGlsaXBw
Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
