Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4C33B341
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 12:33:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FAqI9JEiTmnjwI91zBsJKZf5XAtMFPxw7TIx/CRr3tk=; b=YZIsFkHCs2jyldoV6y6gcitSt/
	yV/F8jzkm9KgPhf+CdczAosvcdWRxaHp0uFTeJgLYeKnv41MrtU1BW7Px1suE3AkMEU50fK0teJ3y
	qOI2d8XdFTkEzjhl0Vsfzgya6rysPwUorNCnqPwESgvPl6Qz0TcJK0/VN/TKF2q7HrCVP7CcvBwIw
	rKzpT3XlQOj07GX9hwnKb1zYwNTdb9Y7eDQCME5a5gwL5/GR4JPRPs0K5hiyqejtxuyhM2jgC5nZa
	qMe4RwIYbszJLoQTgB1sZlvIFdJoQvjlyYIxC7ragftAI70ZLxRJg96cOVb5flAe9mmNsV660UaQb
	XcDhpSGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haHbu-0000Rv-JI; Mon, 10 Jun 2019 10:33:06 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haHbU-0000Dj-E0
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 10:32:41 +0000
Received: by mail-wm1-x344.google.com with SMTP id h19so8705238wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 03:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version:content-transfer-encoding;
 bh=IkG1E0AYyaW7+6Dt1fH+3V0jkXsmdfRM9uUK4jdUh+w=;
 b=Yfo8EUqarFT7nPkF1aeKi1R8SH3rF0IbMaxPFbHD5BQef/cTOgwy1X/WI0zGiITxEX
 jPeF/HOSXo3Qf0jFyOC2mSzVaSnASG/UpSuS2zNVb55CS8hRjSgBFQ9cfOSzDSNxx6Uz
 FT+OBn8OrrCVB4V5V6YCIJhc9gwFGLARBwcGcYxgfn59c630P2IYvl9pFuCdqV4DjsA6
 Sx92LVIpPcRLrdmqe444Idcck7Dgj09/ZSurEmcgyIGeQs1LYorx0pA5P03Vv8gQH62n
 YIO1lG/oVeF0n4VkBxQQpD3JJa8tpu5TlY9a+Dj0ZxaST59vZwZRjsopxlD6YKsLcyMG
 eBXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version:content-transfer-encoding;
 bh=IkG1E0AYyaW7+6Dt1fH+3V0jkXsmdfRM9uUK4jdUh+w=;
 b=cChTeUoER5q63qNyxlGD/vafMrwWu1fR/R16+utiCNUDZylmzn8EDs9ZKa5FKRW3IO
 iXMzXWopwTyO2N4I+A2mTgBgk7UeYwI1nK4QnzkRjxWAqIyXq6J3wQgmPEr3x8MpYAQ8
 uhnKPLywYkS49tLWf5BgRhHdpKg302kgAX3U/UaicqIlzFKiAPN53BrZ00jgIisWZHk2
 LcWYhPnb1yNIQug55D/YWmLQXcnwUTBXtugy/T59kl4idPWivUWkLw19Vr4b0UVyfL9Q
 nwIorpQ/am59XDyqKp+n00ZjN+ZWmacLUlSWrK0AnMW9oqYdpFMmpUB2Jsp5CPPQetws
 +xYA==
X-Gm-Message-State: APjAAAXAlAmjsNJMjn8+oqUZ6XFydkx0yvEzuHBRlvUYtr9Ric5kqy9b
 7gRObCOS6Y/xF6MMilxJD+0=
X-Google-Smtp-Source: APXvYqzibcwpB846QHozkg6IQp2B/oYTBKhsZYSYuuwjsqFbx1LuXZFZoi9TZb/x6Ii+Fr9hHWLjGA==
X-Received: by 2002:a1c:7a10:: with SMTP id v16mr13435253wmc.98.1560162759118; 
 Mon, 10 Jun 2019 03:32:39 -0700 (PDT)
Received: from arch-late ([87.196.73.9])
 by smtp.gmail.com with ESMTPSA id o15sm12661526wrw.42.2019.06.10.03.32.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 03:32:38 -0700 (PDT)
References: <20190606153825.8183-1-sebastien.szymanski@armadeus.com>
 <20190606153825.8183-2-sebastien.szymanski@armadeus.com>
 <92ca6e6e-2ebd-cec4-4f75-2674fd2c3d99@infradead.org>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: driverdev-devel@linuxdriverproject.org
Subject: Re: [PATCH v2 2/3] media: imx7-media-csi: add i.MX6UL support
In-reply-to: <92ca6e6e-2ebd-cec4-4f75-2674fd2c3d99@infradead.org>
Date: Mon, 10 Jun 2019 11:32:36 +0100
Message-ID: <m336khpw6z.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_033240_504773_8533480B 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rmfrfs[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Mark Rutland <mark.rutland@arm.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUmFuZHksCk9uIEZyaSAwNyBKdW4gMjAxOSBhdCAwMDoxMCwgUmFuZHkgRHVubGFwIHdyb3Rl
Ogo+IE9uIDYvNi8xOSA4OjM4IEFNLCBTw6liYXN0aWVuIFN6eW1hbnNraSB3cm90ZToKPj4gaS5N
WDcgYW5kIGkuTVg2VUwvTCBoYXZlIHRoZSBzYW1lIENTSSBjb250cm9sbGVyLiBTbyBhZGQgaS5N
WDZVTC9MIHN1cHBvcnQKPj4gdG8gaW14Ny1tZWRpYS1jc2kgZHJpdmVyLgo+Pgo+PiBTaWduZWQt
b2ZmLWJ5OiBTw6liYXN0aWVuIFN6eW1hbnNraSA8c2ViYXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1
cy5jb20+Cj4+IC0tLQo+Pgo+PiBDaGFuZ2VzIGZvciB2MjoKPj4gIC0gcmViYXNlIG9uIHRvcCBv
ZiBsaW51eHR2L21hc3Rlcgo+PiAgLSBtZW50aW9uIGkuTVg2VUwvTCBpbiBoZWFkZXIgYW5kIEtj
b25maWcgaGVscCB0ZXh0Cj4+ICAtIHJlbmFtZSBjc2lfdHlwZSB0byBjc2lfc29jX2lkCj4+Cj4+
ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaW14L0tjb25maWcgICAgICAgICAgfCAgNCArLQo+PiAg
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9pbXg3LW1lZGlhLWNzaS5jIHwgNjIgKysrKysrKysr
KysrKysrKy0tLS0tLQo+PiAgMiBmaWxlcyBjaGFuZ2VkLCA0OSBpbnNlcnRpb25zKCspLCAxNyBk
ZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgv
S2NvbmZpZyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvS2NvbmZpZwo+PiBpbmRleCBhZDNk
N2RmNmJiM2MuLjhiNmRjNDJjMzllMCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21l
ZGlhL2lteC9LY29uZmlnCj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvS2NvbmZp
Zwo+PiBAQCAtMjIsMTEgKzIyLDExIEBAIGNvbmZpZyBWSURFT19JTVhfQ1NJCj4+ICAJICBBIHZp
ZGVvNGxpbnV4IGNhbWVyYSBzZW5zb3IgaW50ZXJmYWNlIGRyaXZlciBmb3IgaS5NWDUvNi4KPj4K
Pj4gIGNvbmZpZyBWSURFT19JTVg3X0NTSQo+PiAtCXRyaXN0YXRlICJpLk1YNyBDYW1lcmEgU2Vu
c29yIEludGVyZmFjZSBkcml2ZXIiCj4+ICsJdHJpc3RhdGUgImkuTVg2VUwvTCAvIGkuTVg3IENh
bWVyYSBTZW5zb3IgSW50ZXJmYWNlIGRyaXZlciIKPj4gIAlkZXBlbmRzIG9uIFZJREVPX0lNWF9N
RURJQSAmJiBWSURFT19ERVYgJiYgSTJDCj4+ICAJZGVmYXVsdCB5Cj4KPiBIaSwKPiBJIHJlYWxp
emUgdGhhdCB0aGlzICJkZWZhdWx0IHkiIGlzIG5vdCBwYXJ0IG9mIHRoaXMgcGF0Y2ggc2V0LCBi
dXQgd2UgaGF2ZQo+IHByZXR0eSBzdHJvbmcgZ3VpZGFuY2UgdGhhdCBhIGRyaXZlciBzaG91bGQg
bm90IGRlZmF1bHQgdG8gJ3knIHVubGVzcyBpdCBpcwo+IG5lZWRlZCBmb3IgYSBzeXN0ZW0gdG8g
Ym9vdC4gIElmIHRoaXMgZHJpdmVyIGlzIG9wdGlvbmFsLCB0aGVuIHBsZWFzZSBkcm9wCj4gdGhl
IDIgb2NjdXJyZW5jZXMgb2YgImRlZmF1bHQgeSIgaW4gdGhpcyBLY29uZmlnIGZpbGUuCgpZZWFo
LCBldmVuIHRob3VnaCBib3RoIGRlcGVuZHMgb24gaW14X21lZGlhLCBJIGFncmVlIHRoYXQgdGhl
eQpzaG91bGQgbm90IGRlZmF1bHQgdG8geS4gSSB3aWxsIHNlbmQgYSBwYXRjaCBmb3IgdGhpcy4K
VGhhbmtzLgoKLS0tCkNoZWVycywKICAgICAgICBSdWkKCgo+Cj4gdGhhbmtzLgo+PiAgCWhlbHAK
Pj4gIAkgIEVuYWJsZSBzdXBwb3J0IGZvciB2aWRlbzRsaW51eCBjYW1lcmEgc2Vuc29yIGludGVy
ZmFjZSBkcml2ZXIgZm9yCj4+IC0JICBpLk1YNy4KPj4gKwkgIGkuTVg2VUwvTCBvciBpLk1YNy4K
Pj4gIGVuZG1lbnUKPj4gIGVuZGlmCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
