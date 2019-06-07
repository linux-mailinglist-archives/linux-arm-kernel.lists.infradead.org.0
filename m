Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2646B39970
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 01:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oA+qjXaJEAdKhxQ4X+ntfKnXI3HP1N++TiRFs7N0Ckc=; b=N22gyPQWaYIJb/
	ibwxaO6Lq2KXbF6EWVota6IJa08H7eutz3AQ2W7yM3wMsP8sZOlseaBhLK44mpXG7u4+wRCn5YtLH
	iPBMiOHlpntpn+4tY8Vm4osGlOiQx1hmioitkigsSHz+IC1GFumVGORQaUL/GmEaulzj1ExLEF/yk
	3/32ceavEpRJtjdcDS5tu8wziLme8rheu50PL6VyctvzvCTwqv8qjZ2XtlDG4oUlKZhrTsxjAJy8A
	cfUP7+uZEbKwAEqC+46Gyw/fuodJseBE8muN94S7v5YDzDTbgIAZl3Ugqw7ip/9SHZR70jHuKZqEr
	lYl6E2UzPamGI/dsjBIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZO18-0000va-GG; Fri, 07 Jun 2019 23:11:26 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZO0t-0000uP-5x
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 23:11:12 +0000
Received: by mail-wr1-x442.google.com with SMTP id n4so3653428wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 16:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4wfPe7o+pKiEiYzQKf2K8qPkbS6b/+iHkf3dAJkOwkg=;
 b=VCDey2umgxvrMenWODCRhKJQDjsDcGl5TS+Y8nJqfGhrR0/n3Cn57kOrv+VICYltiY
 JqARgHm+jRVjCPDFp4qKRWf8IEaYe4V/zCAmK8gB0VuBxPUzpHuMOfBDJlqHWbh0yfC2
 tbc3BYRHjk/824UWEFpk6LK2unGwpHVNdHcNYPKICPzWEN++MToCGo/WP3DI61Is1PYH
 vQWAWIfA+PkVZbXb+Kmn6DBRzreiHiGiiPIics+eBTI6MqMjTjx6PTPs3mnUX52fQfHD
 EeJqHgORMKLQqckjpnBxqaSqqhFrYfZL8YCMWA4wHhoNLvVNAuDb+J9ke/39i5wrwT/R
 K3vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4wfPe7o+pKiEiYzQKf2K8qPkbS6b/+iHkf3dAJkOwkg=;
 b=Zd7GVFPBliUBanSkjIpeGsd5S+umbFMbnoIuclGq5d9FvZmNT6/8+FsEeN9gChNiHh
 4HOZrF9XJ0Qmg1GYlX1RYyXjDRhAF0cuZ2mpqn7iYKOTJ3fusRD7H7CSt2d7TCfoIbRD
 ygoY/o2pBhKhl4aGuOdrdPVMt2Jne/Lg/zzsTIEEQZpV+RkaUotWYTl/kbyjLrm1hUO9
 sTM6mvfTtmUcL7zBZFynkA0qJDF3dCb1S9l9QCDZj9QBKEJlGM51fKGzOexLdDJG5uIQ
 ZNhEwP5XVI+l5kIdeuW2Nk67QSeXH3GvXztWPztqYUeiG0wOk3mLTxxvi1EJKhju/HV6
 P0aA==
X-Gm-Message-State: APjAAAWoaoDhljWNGpii01ebfLSGYDfoT5upQHH13FtxGmmKxB9FGsvH
 2hHmw3mh6F9yxYmLegsu9zw=
X-Google-Smtp-Source: APXvYqw+PzKucyesHZ0bjq4qJTJx4ikEmxjo++sha0U0BPwPHx54569NJJVYz2yXIpfxd0xB0L/+DQ==
X-Received: by 2002:adf:e30d:: with SMTP id b13mr17448803wrj.246.1559949069031; 
 Fri, 07 Jun 2019 16:11:09 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id h84sm4108559wmf.43.2019.06.07.16.11.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 16:11:08 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v5 00/13] Allwinner A64/H6 IR support
Date: Sat,  8 Jun 2019 01:10:47 +0200
Message-Id: <20190607231100.5894-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_161111_231199_0BC8A050 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpBNjQgSVIgc3VwcG9ydCBzZXJpZXNbMV0gcG9pbnRlZCBvdXQgdGhhdCBhbiBBMzEgYmlu
ZGluZ3Mgc2hvdWxkIGJlCmludHJvZHVjZWQuCgpUaGlzIHNlcmllcyBpbnRyb2R1Y2UgdGhlIEEz
MSBjb21wYXRpYmxlIGJpbmRpbmdzLCB0aGVuIHN3aXRjaCBpdCBvbgp0aGUgYWxyZWFkeSBleGlz
dGluZyBib2FyZC4KCkZpbmFsbHkgaW50cm9kdWNlIEE2NCBhbmQgSDYgc3VwcG9ydC4KCkkgaGF2
ZSByZWVuYWJsZSB0aGUgb3RoZXIgSDYgYm9hcmRzIElSIHN1cHBvcnQgYXMgT25kcmVqIHNvbHZl
IHRoZSBpc3N1ZS4KClJlZ2FyZHMsCkNsw6ltZW50CgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvcGF0Y2h3b3JrL3BhdGNoLzEwMzEzOTAvIzEyMjE0NjQKWzJdIGh0dHBzOi8vbGttbC5vcmcv
bGttbC8yMDE5LzUvMjcvMzIxClszXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNo
LzEwOTc1NTYzLwoKQ2hhbmdlcyBzaW5jZSB2NDoKIC0gUmV1c2UgZGVmaW5lcyBmb3IgUlhTVEEg
Yml0cyBkZWZpbml0aW9uCgpDaGFuZ2VzIHNpbmNlIHYzOgogLSBSZWVuYWJsZSBJUiBmb3Igb3Ro
ZXIgSDYgYm9hcmRzCiAtIEFkZCBSWFNUQSBiaXRzIGRlZmluaXRpb24KIC0gQWRkIFNlYW4gWW91
bmcncyAiQWNrZWQtYnkiIHRhZ3MKCkNoYW5nZXMgc2luY2UgdjI6CiAtIERpc2FibGUgSVIgZm9y
IG90aGVyIEg2IGJvYXJkcwogLSBTcGxpdCBEVFMgcGF0Y2ggZm9yIEgzL0g1CiAtIEludHJvZHVj
ZSBJUiBxdWlya3MKCkNsw6ltZW50IFDDqXJvbiAoMTEpOgogIGR0LWJpbmRpbmdzOiBtZWRpYTog
c3VueGktaXI6IEFkZCBBMzEgY29tcGF0aWJsZQogIG1lZGlhOiByYzogSW50cm9kdWNlIHN1bnhp
X2lyX3F1aXJrcwogIG1lZGlhOiByYzogc3VueGk6IEFkZCBBMzEgY29tcGF0aWJsZQogIG1lZGlh
OiByYzogc3VueGk6IEFkZCBSWFNUQSBiaXRzIGRlZmluaXRpb24KICBBUk06IGR0czogc3VueGk6
IFByZWZlciBBMzEgYmluZGluZ3MgZm9yIElSCiAgQVJNOiBkdHM6IHN1bnhpOiBQcmVmZXIgQTMx
IGJpbmRpbmdzIGZvciBJUgogIGR0LWJpbmRpbmdzOiBtZWRpYTogc3VueGktaXI6IEFkZCBBNjQg
Y29tcGF0aWJsZQogIGR0LWJpbmRpbmdzOiBtZWRpYTogc3VueGktaXI6IEFkZCBINiBjb21wYXRp
YmxlCiAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBoNjogQWRkIElSIHJlY2VpdmVyIG5vZGUKICBh
cm02NDogZHRzOiBhbGx3aW5uZXI6IGg2OiBFbmFibGUgSVIgb24gSDYgYm9hcmRzCiAgYXJtNjQ6
IGRlZmNvbmZpZzogRW5hYmxlIElSIFNVTlhJIG9wdGlvbgoKSWdvcnMgTWFrZWpldnMgKDEpOgog
IGFybTY0OiBkdHM6IGFsbHdpbm5lcjogYTY0OiBBZGQgSVIgbm9kZQoKSmVybmVqIFNrcmFiZWMg
KDEpOgogIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogYTY0OiBFbmFibGUgSVIgb24gT3JhbmdlIFBp
IFdpbgoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3N1bnhpLWlyLnR4dCAgICB8IDEx
ICsrLQogYXJjaC9hcm0vYm9vdC9kdHMvc3VuNmktYTMxLmR0c2kgICAgICAgICAgICAgIHwgIDIg
Ky0KIGFyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWE4M3QuZHRzaSAgICAgICAgICAgICB8ICAyICst
CiBhcmNoL2FybS9ib290L2R0cy9zdW45aS1hODAuZHRzaSAgICAgICAgICAgICAgfCAgMiArLQog
YXJjaC9hcm0vYm9vdC9kdHMvc3VueGktaDMtaDUuZHRzaSAgICAgICAgICAgIHwgIDIgKy0KIC4u
Li9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQtb3JhbmdlcGktd2luLmR0cyB8ICA0ICsKIGFyY2gv
YXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaSB8IDE4ICsrKysKIC4uLi9k
dHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMgICB8ICA0ICsKIC4uLi9kdHMv
YWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS5kdHNpICAgICB8ICA0ICsKIC4uLi9ib290L2R0
cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXBpbmUtaDY0LmR0cyB8ICA0ICsKIGFyY2gvYXJtNjQvYm9v
dC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpICB8IDE5ICsrKysKIGFyY2gvYXJtNjQvY29u
Zmlncy9kZWZjb25maWcgICAgICAgICAgICAgICAgICB8ICAxICsKIGRyaXZlcnMvbWVkaWEvcmMv
c3VueGktY2lyLmMgICAgICAgICAgICAgICAgICB8IDg4ICsrKysrKysrKysrKysrLS0tLS0KIDEz
IGZpbGVzIGNoYW5nZWQsIDEzNSBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMoLSkKCi0tIAoy
LjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
