Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D504E192CBB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 16:37:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQFUCeXd0nBGD/vUS/BbZPzwHwMTf1F8yCWnu8B6NuY=; b=SMWcLHZYi7NQR2
	trfqZ7GH5kUxhRh/eHKxv8/yODJYtQudzjtMiAKTDJAiumG6/P2z8/Jpllje3KD4kxIPWDu3rGfJC
	Bi+BI8JgKI/CmhkDPIwSxKrA7/rv8MexBD5h5VVYhznx9kmyCO7kFQFt1x7CgzK+UYp65udABq+yV
	2t71GdEo0/dg5QOBnjN7okx2j3CpRUn7vucuquEFQz/2oVBJAoGJ46nDU2RcAcOlRidxFA387/Mpc
	llN7X/Yky4AcUG4Wy7OCk4EH4ZqyH1M9ypx+Hd66Gjb2nUp38ZS2PVdxQdNA7IWLRfXzX17dgZ9BQ
	87SyyJktcRNQMSecV1GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH85n-0006bC-Qn; Wed, 25 Mar 2020 15:37:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH85b-0006af-QC; Wed, 25 Mar 2020 15:37:09 +0000
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
 [209.85.208.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C73F7208CA;
 Wed, 25 Mar 2020 15:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585150627;
 bh=oFXULYKX2minzKx5vxHtI63XAdjYTOaBbYv6XpZTy8U=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=EmXJ2ROEV4uIH8BVYnhJow+4A1BNHgFJhRUt9XQCD6kAaBxpBQ9HUZgP/XrSHK5bj
 h411zoPSO8xwuCbPMBajeLkGTqC6LflkOK0k89zrhsMNcNwB79zSWQ8gkX1NCxcuMl
 UqyaakkDQgHMStjvRjvEPxTPWKjs7WOVKBmfOH8Y=
Received: by mail-ed1-f50.google.com with SMTP id b18so2930847edu.3;
 Wed, 25 Mar 2020 08:37:06 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1pPWgOEERfc7ne2ERq1DPWKg7EAXtitjmCwDskNMSzLMN0RgN3
 SgTsC5dQADfQq/1oznz0rBYSxDaJXEb2Xe51MQ==
X-Google-Smtp-Source: ADFU+vvSoNJiU20ECt+7uu1vArut7MOjxMslvG/4PUR+3ZtOhd8DgCxmMnQcFYZJdkJa/fK+7IMDcrBp7ZaC6D/3Es4=
X-Received: by 2002:a50:9f07:: with SMTP id b7mr3556024edf.148.1585150625023; 
 Wed, 25 Mar 2020 08:37:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200311165322.1594233-1-enric.balletbo@collabora.com>
 <20200311165322.1594233-4-enric.balletbo@collabora.com>
 <158474603935.125146.14986079780178656133@swboyd.mtv.corp.google.com>
In-Reply-To: <158474603935.125146.14986079780178656133@swboyd.mtv.corp.google.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Wed, 25 Mar 2020 23:36:52 +0800
X-Gmail-Original-Message-ID: <CAAOTY_8jPkOrdUx7iH=q7kTH2+nPE8igX5-p6ZzwC7aHkQwF+A@mail.gmail.com>
Message-ID: <CAAOTY_8jPkOrdUx7iH=q7kTH2+nPE8igX5-p6ZzwC7aHkQwF+A@mail.gmail.com>
Subject: Re: [PATCH v12 3/5] clk / soc: mediatek: Move mt8173 MMSYS to
 platform driver
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_083707_891627_70B86117 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, David Airlie <airlied@linux.ie>,
 mturquette@baylibre.com, DRI Development <dri-devel@lists.freedesktop.org>,
 Fabien Parent <fparent@baylibre.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 ulrich.hecht+renesas@gmail.com, Collabora Kernel ML <kernel@collabora.com>,
 hat.com@freedesktop.org, linux-clk@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, Weiyi Lu <weiyi.lu@mediatek.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, CK Hu <ck.hu@mediatek.com>,
 mtk01761 <wendell.lin@mediatek.com>, Owen Chen <owen.chen@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 frank-w@public-files.de, Seiya Wang <seiya.wang@mediatek.com>,
 sean.wang@mediatek.com, Houlong Wei <houlong.wei@mediatek.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 hsinyi@chromium.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Allison Randal <allison@lohutok.net>, Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, p.zabel@pengutronix.de, matthias.bgg@kernel.org,
 James Liao <jamesjj.liao@mediatek.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U3RlcGhlbiBCb3lkIDxzYm95ZEBrZXJuZWwub3JnPiDmlrwgMjAyMOW5tDPmnIgyMeaXpSDpgLHl
ha0g5LiK5Y2INzoxNOWvq+mBk++8mgo+Cj4gUXVvdGluZyBFbnJpYyBCYWxsZXRibyBpIFNlcnJh
ICgyMDIwLTAzLTExIDA5OjUzOjIwKQo+ID4gRnJvbTogTWF0dGhpYXMgQnJ1Z2dlciA8bWJydWdn
ZXJAc3VzZS5jb20+Cj4gPgo+ID4gVGhlcmUgaXMgbm8gc3Ryb25nIHJlYXNvbiBmb3IgdGhpcyB0
byB1c2UgQ0xLX09GX0RFQ0xBUkUgaW5zdGVhZCBvZgo+ID4gYmVpbmcgYSBwbGF0Zm9ybSBkcml2
ZXIuIFBsdXMsIE1NU1lTIHByb3ZpZGVzIGNsb2NrcyBidXQgYWxzbyBhIHNoYXJlZAo+ID4gcmVn
aXN0ZXIgc3BhY2UgZm9yIHRoZSBtZWRpYXRlay1kcm0gYW5kIHRoZSBtZWRpYXRlay1tZHAKPiA+
IGRyaXZlci4gU28gbW92ZSB0aGUgTU1TWVMgY2xvY2tzIHRvIGEgbmV3IHBsYXRmb3JtIGRyaXZl
ciBhbmQgYWxzbwo+ID4gY3JlYXRlIGEgbmV3IE1NU1lTIHBsYXRmb3JtIGRyaXZlciBpbiBkcml2
ZXJzL3NvYy9tZWRpYXRlayB0aGF0Cj4gPiBpbnN0YW50aWF0ZXMgdGhlIGNsb2NrIGRyaXZlci4K
PiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGlhcyBCcnVnZ2VyIDxtYnJ1Z2dlckBzdXNlLmNv
bT4KPiA+IFNpZ25lZC1vZmYtYnk6IEVucmljIEJhbGxldGJvIGkgU2VycmEgPGVucmljLmJhbGxl
dGJvQGNvbGxhYm9yYS5jb20+Cj4gPiBSZXZpZXdlZC1ieTogQ0sgSHUgPGNrLmh1QG1lZGlhdGVr
LmNvbT4KPiA+IC0tLQo+Cj4gUmV2aWV3ZWQtYnk6IFN0ZXBoZW4gQm95ZCA8c2JveWRAa2VybmVs
Lm9yZz4KPgo+IFVubGVzcyB5b3Ugd2FudCBtZSB0byBwaWNrIHRoaXMgdXAgYnkgaXRzZWxmPwoK
SSB3b3VsZCBsaWtlIE1hdHRoaWFzIHRvIHBpY2sgdXAgdGhpcyBzZXJpZXMgdG9nZXRoZXIuCgo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJpLWRl
dmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
