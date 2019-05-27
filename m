Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 512F52BB10
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 22:10:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5iBH1te13eVlwfuNNQh3PyqgrB2XZ51cjUUEHoidwyw=; b=QvUn4ql6a8v+3B
	4HRf6yuK2jCDJs14rgrYEIixGN8NWaWaO2kxKxwarnGGaUrkzelLaEv5+fkZvuhABYpz3NK/CtAJS
	SWWpufoo3IswYMImP4R/uZWBb/sixT48S07NeGBuFUi/OtNZevieVMXCa96tMDzuRqVZNpzeHXWW7
	oj8/3a0bkVf5SVeXNO6zMMu6WOqpUa9Bjimm8XLa0+LtPH4Sq/z4ZzZJq1KdjuARfcdlS3C/Je8wS
	iqw/HefXjxWYfVshRgitz7zJvn+wYYqhHPMbxuembYtHPZ0Jgn0B64YpZ2otfBNaJAOGGIoeJxJZl
	6/TR/fXOWs7tzIgTt85A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVLws-0002nZ-24; Mon, 27 May 2019 20:10:22 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVLwk-0002mu-1B
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 20:10:15 +0000
Received: by mail-wr1-x443.google.com with SMTP id s17so17891728wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 13:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IDHZvbW5fijbJYqS49AHo5wrH49+8LRhFk5frtH+czs=;
 b=GZKzgwTsjl8oDnFeiCt7vuI5aKIZrQGAleaeM2RbFDLBcE9pCZz3wszFrErQsWBnev
 xSbVzEZkH2YIhlzU20dYu8H/77rmwr3ucbJ/J1cuUJlE5C0VAX9rBpt20D39GCFY75wf
 lYEKs/3NJdkjm+UP7hWIbHgH3wOipDJei5ZPnkCCbmVcVCYIekcFrMo+w26484791vB+
 7KFRFV3gUpScnOmLUqx2fD8JRCpt3zN9HWJLpQ9sauIyM17VnROccWPEBmyao3iCoWDd
 sGOip2GMuXO9TSwCmuU+AHhg4P4He2itS162rxpyd9g6ZhUghIQmqJcRDcocS3sgVhqY
 sA8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IDHZvbW5fijbJYqS49AHo5wrH49+8LRhFk5frtH+czs=;
 b=X4ph7pPPrVtdvDnjGAy4ygWmUrhrnv6PK9dpBGGJ72eQBPTELGGRRA2/wVT/0VxWJA
 eu8eePfagfk0NoGRjQIwGfasuzO3xqnlm14hF3Q4YC6adPz3c22fjr7TjvDsxUk/D1vv
 H858YFQFctUDCZP/y3wilyXEpvoDqBsQG67vbShbWA3vpkEbMNCqS0TkmcVYBciT71SS
 lpGpjR2VaToPcu0AQxk+O4XPNe474zNXX8QylJvXM4+lI4GrvUYUGlDtIYkZW4lxJCID
 10uYZiP0xR0MU95yhS3Iul2xxuy9gI3alrWgY6rBHXYIidAL8eHTyXLOmDF2XU/RMaEs
 seuA==
X-Gm-Message-State: APjAAAWqgQvt+GY7V6JUS1EdYfXdAC731mHMT1PKBYjOPpoT1zsJVr+L
 AeL7JTbUuonCXGbHMOBJqxY=
X-Google-Smtp-Source: APXvYqyqpFAqUTi8dpMrKnZvZz7bKtAJFVOE03EyjPbv+ISOjv5Cl5nD4sOql4lDIlCwc/mR9Ktrjg==
X-Received: by 2002:adf:ff88:: with SMTP id j8mr1844331wrr.317.1558987812061; 
 Mon, 27 May 2019 13:10:12 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id s127sm308523wmf.48.2019.05.27.13.10.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 13:10:11 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v4 0/7] Allwinner H6 SPDIF support
Date: Mon, 27 May 2019 22:06:20 +0200
Message-Id: <20190527200627.8635-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_131014_102656_DCCCE3CC 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kkg2IERNQSBzdXBwb3J0IElTIFJFUVVJUkVEKgoKQWxsd2lubmVyIEg2IFNvQyBoYXMgYSBTUERJ
RiBjb250cm9sbGVyIGNhbGxlZCBPbmUgV2lyZSBBdWRpbyAoT1dBKSB3aGljaAppcyBkaWZmZXJl
bnQgZnJvbSB0aGUgcHJldmlvdXMgSDMgZ2VuZXJhdGlvbiBhbmQgbm90IGNvbXBhdGlibGUuCgpE
aWZmZXJlbmNlIGFyZSBhbiBpbmNyZWFzZSBvZiBmaWZvIHNpemVzLCBzb21lIG1lbW9yeSBtYXBw
aW5nIGFyZSBkaWZmZXJlbnQKYW5kIHRoZXJlIGlzIG5vdyB0aGUgcG9zc2liaWxpdHkgdG8gb3V0
cHV0IHRoZSBtYXN0ZXIgY2xvY2sgb24gYSBwaW4uCgpBY3R1YWxseSBhbGwgdGhlc2UgZmVhdHVy
ZXMgYXJlIHVudXNlZCBhbmQgb25seSBhIGJpdCBmb3IgZmx1c2hpbmcgdGhlIFRYCmZpZm8gaXMg
cmVxdWlyZWQuCgpBbHNvIHRoaXMgc2VyaWVzIHJlcXVpcmVzIHRoZSBETUEgd29ya2luZyBvbiBI
NiwgYSBmaXJzdCB2ZXJzaW9uIGhhcyBiZWVuCnN1Ym1pdHRlZCBieSBKZXJuZWogxaBrcmFiZWNb
MV0gYnV0IGhhcyBub3QgYmVlbiBhY2NlcHRlZCB5ZXQuCgpbMV0gaHR0cHM6Ly9wYXRjaHdvcmsu
a2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LWFybS1rZXJuZWwvbGlzdC8/c2VyaWVzPTg5MDExCgpD
aGFuZ2VzIHNpbmNlIHYzOgogLSByZW5hbWUgcmVnX2ZjdGxfZnR4IHRvIHZhbF9mY3RsX2Z0eAog
LSByZWJhc2UgdGhpcyBzZXJpZXMgb24gc291bmQtbmV4dAogLSBmaXggZHQtYmluZGluZ3MgZHVl
IHRvIGNoYW5nZSBpbiBzb3VuZC1uZXh0CiAtIGNoYW5nZSBub2RlIG5hbWUgc291bmRfc3BkaWYg
dG8gc291bmQtc3BkaWYKCkNoYW5nZXMgc2luY2UgdjI6CiAtIFNwbGl0IHF1aXJrcyBhbmQgSDYg
c3VwcG9ydCBwYXRjaAogLSBBZGQgc3BlY2lmaWMgc2VjdGlvbiBmb3IgcXVpcmtzIGNvbW1lbnQK
CkNoYW5nZXMgc2luY2UgdjE6CiAtIFJlbW92ZSBIMyBjb21wYXRpYmxlCiAtIEFkZCBUWCBmaWZv
IGJpdCBmbHVzaCBxdWlya3MKIC0gQWRkIEg2IGJpbmRpbmdzIGluIFNQRElGIGRyaXZlcgoKQ2zD
qW1lbnQgUMOpcm9uICg3KToKICBkdC1iaW5kaW5nczogc291bmQ6IHN1bjRpLXNwZGlmOiBBZGQg
QWxsd2lubmVyIEg2IGNvbXBhdGlibGUKICBBU29DOiBzdW40aS1zcGRpZjogTW92ZSBxdWlya3Mg
dG8gdGhlIHRvcAogIEFTb0M6IHN1bjRpLXNwZGlmOiBBZGQgVFggZmlmbyBiaXQgZmx1c2ggcXVp
cmtzCiAgQVNvQzogc3VuNGktc3BkaWY6IEFkZCBzdXBwb3J0IGZvciBINiBTb0MKICBhcm02NDog
ZHRzOiBhbGx3aW5uZXI6IEFkZCBTUERJRiBub2RlIGZvciBBbGx3aW5uZXIgSDYKICBhcm02NDog
ZHRzOiBhbGx3aW5uZXI6IGg2OiBFbmFibGUgU1BESUYgZm9yIEJlZWxpbmsgR1MxCiAgYXJtNjQ6
IGRlZmNvbmZpZzogRW5hYmxlIFN1bjRpIFNQRElGIG1vZHVsZQoKIC4uLi9zb3VuZC9hbGx3aW5u
ZXIsc3VuNGktYTEwLXNwZGlmLnlhbWwgICAgICB8ICAxICsKIC4uLi9kdHMvYWxsd2lubmVyL3N1
bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMgICB8ICA0ICsrCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2Fs
bHdpbm5lci9zdW41MGktaDYuZHRzaSAgfCAzOCArKysrKysrKysrKysrKwogYXJjaC9hcm02NC9j
b25maWdzL2RlZmNvbmZpZyAgICAgICAgICAgICAgICAgIHwgIDEgKwogc291bmQvc29jL3N1bnhp
L3N1bjRpLXNwZGlmLmMgICAgICAgICAgICAgICAgIHwgNDkgKysrKysrKysrKysrKysrKy0tLQog
NSBmaWxlcyBjaGFuZ2VkLCA4NyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKLS0gCjIu
MjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
