Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F220C98B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 08:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrfQ6YZNO8F1+HBkfRUoOwMD8jlug8gnVfsbo6feQKc=; b=YgWOmR022VTYwC
	+GhH1KQfAQUXoB/3Ve1E4UWooqImktLYJsc4w/5taziB6G6St2fVFtyykWyQkg3Xe4J9JgeqlYpZB
	94OcWgL6QwRTesxI/zbPrLt+xA6HMQXZ+IVQMiqr7jfiDTsfaYlv23780eJLLSKI1FD9db4Z7cFfm
	SpEosz5S2cr5fLOM4HnaAFEZu+iNnWimGQup2wrCGZcSl7xA1yTY98tg6AZxQ+f/T7PbIBHKADG3K
	Sg1gSU5+mimjBrutxgV6B/QnwhIU1BCCVCIR0TfMGQlXsudF3sV9m5kdSxInxMyiII0i2nMnX6G3L
	Wvp1Omjkc2SfJ9MJfE0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFv1i-0002SX-SP; Thu, 03 Oct 2019 06:55:50 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFv1c-0002Rt-4Y
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 06:55:45 +0000
Received: by mail-io1-xd42.google.com with SMTP id h144so3035730iof.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 23:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bU7eEWTqDVJAzVoRac0rizP1WsKz1rzNUUO0iZVJmNQ=;
 b=E1EqupMg730dahrp+6/NFq2OamGjeULfhizL/aUqK1IMHs6JmoAZkeUxeqF1uwf+ZL
 eyQt8lAC4bfdpSCJComxGlNEy5LOrSZvqwfEcLDKooentutky+aiizYXAhwx2FYshOvy
 7A+i90ioBBDKtqAGAwHtOaaD7o5I8h+y5zez8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bU7eEWTqDVJAzVoRac0rizP1WsKz1rzNUUO0iZVJmNQ=;
 b=DehLxjy0VDCv58gkyB0ojwHcvzQ6XkoDAjeDrr8lq/XrGkj8+KSEY6eEBHNGR4adBA
 X5Xr/U/Fo0Pv+8zkV4sX8LIWbYvlY5sP/sCL/hzH+keTGf5Aae8+ZhF2JEAeZa6DvAWi
 hDvUKdZzu6E8HAO2ceb4M8ovhNDoc1s+TbkNxyoLHKGm8L0gYlqgnEGX3XTlup6/RKvW
 WuL6Maiz1B3dzl5WtHfy7yYcZ/ULxAY1T1apwpYOyv8gw40FRCSU7u7vDWv79cClNOZ5
 dkIgpxWhLv1ATYn+4NA8bclXCx+aiCHSKbJbzgx43YBOA04ss/FeD+s18pu1AKZVvvcg
 oPAg==
X-Gm-Message-State: APjAAAU8mmlw6QHiCCQQRa8xfG55Fd26/pXTkv5p67jnKdcklH2rgIK6
 G2ewlh2y1/DUC8J/lSPpvPHpM9Cp72zefTYalO1m1g==
X-Google-Smtp-Source: APXvYqw/JqRqbQzudnEFtsSEFiBBZMcwV+TKk69UO/Ob6QYkQJ0sHL6YVsqN1DKW1le5yW1GE5acz24BJ2zaF85Yy5g=
X-Received: by 2002:a5d:89da:: with SMTP id a26mr6650973iot.61.1570085743213; 
 Wed, 02 Oct 2019 23:55:43 -0700 (PDT)
MIME-Version: 1.0
References: <20191003064527.15128-1-jagan@amarulasolutions.com>
 <20191003064527.15128-2-jagan@amarulasolutions.com>
 <DB2FB6E5-E4B5-40F4-A05F-9A2303FCA1AE@aosc.io>
In-Reply-To: <DB2FB6E5-E4B5-40F4-A05F-9A2303FCA1AE@aosc.io>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 3 Oct 2019 12:25:32 +0530
Message-ID: <CAMty3ZDZBctSRcgfMTc3moTzrJZXL_S-tKKNKyOa4jUKT8rW+Q@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v11 1/7] drm/sun4i: dsi: Fix TCON DRQ
 set bits
To: Icenowy Zheng <icenowy@aosc.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_235544_180051_74CF428F 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBPY3QgMywgMjAxOSBhdCAxMjoyMSBQTSBJY2Vub3d5IFpoZW5nIDxpY2Vub3d5QGFv
c2MuaW8+IHdyb3RlOgo+Cj4KPgo+IOS6jiAyMDE55bm0MTDmnIgz5pelIEdNVCswODowMCDkuIvl
jYgyOjQ1OjIxLCBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4g5YaZ5Yiw
Ogo+ID5UaGUgTENEIHRpbWluZyBkZWZpbml0aW9ucyBiZXR3ZWVuIExpbnV4IERSTSB2cyBBbGx3
aW5uZXIgYXJlCj4gPmRpZmZlcmVudCwKPiA+YmVsb3cgZGlhZ3JhbSBzaG93cyB0aGlzIGNsZWFy
IGRpZmZlcmVuY2VzLgo+ID4KPiA+ICAgICAgICAgICBBY3RpdmUgICAgICAgICAgICAgICAgIEZy
b250ICAgICAgICAgICBTeW5jICAgICAgICAgICBCYWNrCj4gPiAgICAgICAgICAgUmVnaW9uICAg
ICAgICAgICAgICAgICBQb3JjaCAgICAgICAgICAgICAgICAgICAgICAgICAgUG9yY2gKPiA+PC0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tPjwtLS0tLS0tLS0tLS0tLS0tPjwtLS0tLS0tLS0tLS0tLT48
LS0tLS0tLS0tLS0tLS0+Cj4gPiAgLy8vLy8vLy8vLy8vLy8vLy8vLy8vL3wKPiA+IC8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8gfAo+ID4vLy8vLy8vLy8vLy8vLy8vLy8vLy8vICB8Li4uLi4uLi4uLi4u
Li4uLi4uCj4gPi4uLi4uLi4uLi4uLi4uLi4KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIF9fX19fX19fX19fX19fX18KPiA+PC0tLS0tIFtodl1kaXNwbGF5IC0t
LS0tPgo+ID48LS0tLS0tLS0tLS0tLSBbaHZdc3luY19zdGFydCAtLS0tLS0tLS0tLS0+Cj4gPjwt
LS0tLS0tLS0tLS0tLS0tLS0tLS0gW2h2XXN5bmNfZW5kIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0+
Cj4gPjwtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSBbaHZddG90YWwKPiA+LS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPgo+ID4KPiA+PC0tLS0tIGxjZF9beHldIC0tLS0tLS0t
PiAgICAgICAgICAgICAgICA8LSBsY2RfW2h2XXNwdyAtPgo+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIDwtLS0tLS0tLS0tIGxjZF9baHZdYnAgLS0tLS0tLS0tPgo+
ID48LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gbGNkX1todl10Cj4gPi0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLT4KPiA+Cj4gPlRoZSBEU0kgZHJpdmVyIG1pc2ludGVycHJl
dGVkIHRoZSBoYnAgdGVybSBmcm9tIHRoZSBCU1AgY29kZSB0byByZWZlcgo+ID5vbmx5IHRvIHRo
ZSBiYWNrcG9yY2gsIHdoZW4gaW4gZmFjdCBpdCB3YXMgYmFja3BvcmNoICsgc3luYy4gVGh1cyB0
aGUKPiA+ZHJpdmVyIGluY29ycmVjdGx5IHVzZWQgdGhlIGhvcml6b250YWwgZnJvbnQgcG9yY2gg
cGx1cyBzeW5jIGluIGl0cwo+ID5jYWxjdWxhdGlvbiBvZiB0aGUgRFJRIHNldCBiaXQgdmFsdWUs
IHdoZW4gaXQgc2hvdWxkIG5vdCBoYXZlIGluY2x1ZGVkCj4gPnRoZSBzeW5jIHRpbWluZy4KPiA+
Cj4gPkluY2x1ZGluZyBhZGRpdGlvbmFsIHN5bmMgdGltaW5ncyBsZWFkcyB0byBmbGlwX2RvbmUg
dGltZWQgb3V0IGFzOgo+Cj4gSSBkb24ndCB0aGluayBhdHRhY2hpbmcgdGhpcyBlcnJvciBpbmZv
bWF0aW9uIGlzIHVzZWZ1bCBhdCBhbGwuCgpTaW5jZSB0aGUgZXJyb3Igd291bGQgYmUgY29tbW9u
IGlycmVzcGVjdGl2ZSBvZiBwYW5lbHMgYW5kIGl0IHdvdWxkCnRyaWdnZXIgZnJvbSBkc2kgY29u
dHJvbGxlciwgSSB0aG91Z2h0IHRoaXMgd291bGQgYmUgdXNlZnVsIGZvcgpyZWZlcmVuY2UuIEkg
aGF2ZSBoYWQgdGhpcyBjb252ZXJzYXRpb24gaW4gcHJldmlvdXMgdmVyc2lvbiBjaGFuZ2VzLApz
byBJIGhhdmUgYWRkZWQgaXQuIGxldCBtZSBrbm93IGlmIGhhdmUgYW55IGNvbW1lbnRzLgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
