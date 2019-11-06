Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8B2F1893
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:25:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZ8tPuMe9+n34wHzlsWWvBsrv97UfwTy3QModtU0/BQ=; b=Uv0GQZ2Z80wK/t
	cqBHepnYr5Kbm/T/FClXSylKRM7eeURV1o0lHuzQ20gQMnurcE4EKgDqat+3uZYsylIc1mdMm+9y1
	1K9U4qnlFVdCSR/1w462iBA6PHTrznfOoKkEDsw0rD/QFPuQIqTY3UruPsxbTUozzfJFENuEm23jT
	o8h3ovD6MreQDce3cD/AVdaSWijl4YKPf6ncWiuqeMw5g4YxsNlJTm8iXn5focbG0143QbGUTKqom
	ZJUm+63wVZZ5Hsbp1BdXu99InXi3hKbAc3zehoRBVKLCM8bdqQDsjr2PVZbwwEvtzT41wgZg6gX52
	bzYp/t1d67RBA7oQWuIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSMFd-0000ZA-L0; Wed, 06 Nov 2019 14:25:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSMFG-0000Fa-2L; Wed, 06 Nov 2019 14:25:15 +0000
Received: from mail-yw1-f50.google.com (mail-yw1-f50.google.com
 [209.85.161.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3F7D721D79;
 Wed,  6 Nov 2019 14:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573050312;
 bh=t22la/XtVNC5KQNqEOFeF0+C1rhKgq+qOSEIqpk5BHA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=yMmYaPKVAuHLBJl+V9hcNV4Bdja+di11oystN/HBPVsX2VVth4PM3toVOn3T+5Qni
 TNMuQFXL7UMzuqxylzuRIkofuibnjKujINuB5rcGtAkWzBr8zJ8hSJ0e9o0f07cOIC
 XQl+cC7bfJ3KBwLkY7NAaB/tlddnnXmckFIrCegQ=
Received: by mail-yw1-f50.google.com with SMTP id v84so9617182ywc.4;
 Wed, 06 Nov 2019 06:25:12 -0800 (PST)
X-Gm-Message-State: APjAAAVFd6dx7tQsQ7JafUO+NIQd8HTFwXhzKAQwuc2o3kB0BOCkO+Eb
 uv2Z7gfaRyWp7wgPQ5cMTTh9p7gRgD9tbHbOqQ==
X-Google-Smtp-Source: APXvYqzZFcvicyLbyVKKqZBBg3KUfyX6DrTKhbmcP3UuFixdP0C+dSzUm2vlJQ+TJwMuEZWoGfVcj47a+BgKJoaNCRQ=
X-Received: by 2002:a81:a196:: with SMTP id y144mr1774534ywg.507.1573050311255; 
 Wed, 06 Nov 2019 06:25:11 -0800 (PST)
MIME-Version: 1.0
References: <20191104013932.22505-1-afaerber@suse.de>
 <20191104013932.22505-2-afaerber@suse.de>
In-Reply-To: <20191104013932.22505-2-afaerber@suse.de>
From: Rob Herring <robh@kernel.org>
Date: Wed, 6 Nov 2019 08:24:59 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL3NOstoa5ZY1JE9e3Ay=WTmz153H-KbHErhi-GBX-5GA@mail.gmail.com>
Message-ID: <CAL_JsqL3NOstoa5ZY1JE9e3Ay=WTmz153H-KbHErhi-GBX-5GA@mail.gmail.com>
Subject: Re: [PATCH 1/7] dt-bindings: gpu: mali-midgard: Tidy up conversion to
 YAML
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_062514_157854_F1BDF155 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Guillaume Gardet <guillaume.gardet@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-realtek-soc@lists.infradead.org, David Airlie <airlied@linux.ie>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBOb3YgMywgMjAxOSBhdCA3OjQwIFBNIEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJA
c3VzZS5kZT4gd3JvdGU6Cj4KPiBJbnN0ZWFkIG9mIGdyb3VwaW5nIGFscGhhYmV0aWNhbGx5IGJ5
IHRoaXJkLXBhcnR5IHZlbmRvciwgbGVhZGluZyB0bwo+IG9uZS1lbGVtZW50IGVudW1zLCBzb3J0
IGJ5IE1hbGkgbW9kZWwgbnVtYmVyLCBhcyBkb25lIGZvciBVdGdhcmQuCj4KPiBUaGlzIGFscmVh
ZHkgYWxsb3dzIHVzIHRvIGRlLWR1cGxpY2F0ZSB0d28gImFybSxtYWxpLXQ3NjAiIHNlY3Rpb25z
IGFuZAo+IHdpbGwgbWFrZSBpdCBlYXNpZXIgdG8gYWRkIG5ldyB2ZW5kb3IgY29tcGF0aWJsZXMu
CgpUaGF0IHdhcyB0aGUgaW50ZW50LiBOb3Qgc3VyZSBob3cgSSBtZXNzZWQgdGhhdCB1cC4uLgoK
VGhpcyBwYXRjaCBpcyBwcm9ibGVtYXRpYyBiZWNhdXNlIHRoZXJlJ3MgY2hhbmdlcyBpbiBhcm0t
c29jIGp1bm8vZHQKYnJhbmNoIGFuZCB0aGVyZSdzIG5vdyBhIHBhdGNoIGZvciBleHlub3M1NDIw
ICh0NjI4KS4gSSdkIHByb3Bvc2UgSQphcHBseSB0aGlzIHN1Y2ggdGhhdCB3ZSBkb24ndCBnZXQg
YSBtZXJnZSBjb25mbGljdCB3aXRoIGp1bm8vZHQgYW5kIHdlCmZpbmlzaCByZXNvcnRpbmcgYWZ0
ZXIgcmMxIChvciB3aGVuIGJvdGggYnJhbmNoZXMgYXJlIGluIExpbnVzJyB0cmVlKS4KClJvYgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
