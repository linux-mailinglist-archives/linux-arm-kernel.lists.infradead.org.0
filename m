Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1476D430C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 22:05:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wa6G/kRnct3jvxbiXVnmt9NlPfsaNmzYcq8sA9R9HXw=; b=WWF5jgNuEf9XQ5
	DgsF/B9vGXIRmnkb3X64XM7YnKzbYZIktkhWcG+y0+EwoS9gEh73vc6B8YJTKZdhLWB+V7kZb6YOO
	4be8kiK+xMR8rulKrLz3FyPPT1ThpOIfPTYfrYWCeJc6IrM6HmLUZkbI7nJf4EN6W+b3NtgNb59ml
	mL/vxh9+j+q7MhPX86VnQ8W5/9WVy19TfxdHxczl1mgA6FFE+a3yiyz13B6J9VrlX1WBYEYGCvdmf
	ngMFeeq6jWMw1WnLAzLfRr33a76wDse9tyifCduy2LAwAhm27Ft3jqYmFj3U3hmfC+SUzIqHVOSl1
	ffQpvmaLXYNlWY/goJMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb9Ui-000397-5h; Wed, 12 Jun 2019 20:05:16 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb9PP-0005QO-RA; Wed, 12 Jun 2019 19:59:49 +0000
Received: by mail-wr1-x442.google.com with SMTP id c2so18220991wrm.8;
 Wed, 12 Jun 2019 12:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PXhKgHiRKTDbq5+IaKGfsR6BmgG7q4N1qI/aWdYB6Q8=;
 b=hsWXPbeCUxn3AeVTaPkpWpYSU2rkvwPwmfSQhu5TejlCTxIevBFbCaEhNMeVV3Eadv
 iMEl6v4r1YDJGL+0c92HnsZAUK8z8U8zq9cd1BHn8Wjc0+q7JLDqkjYpVnQJR1NyUNmf
 lD+O+U7pAXvs3nKGVevnBnGsdqiV1HavIGsHSVU+ekgZxBBmLmwYfZGrLHH7SqvjgUDe
 7elnq0Keg1BIVERCnF7K2WnYAhfvHByXXd4k1xBS/JrA4FQmPERQyS4Qr5z358KOE/dH
 hqPQjLV5c/km5q7eVFSYRaiCxgMEAVLjM99fuQEjERJrVxg15VUSB1dw14m7kB6e5I1i
 n+9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PXhKgHiRKTDbq5+IaKGfsR6BmgG7q4N1qI/aWdYB6Q8=;
 b=iG5yJ9J/1JeIekBt2+liYwEEPhlpVZkUecA8iuDLTk1GWSDZ688Sxq79duM8Ugpxtb
 jR/SyudF3E97D2o/aqoo2lx0LjBNjlJJYbsV640vmsTUb//GuoptLTYbIJZoq3k4tP9z
 5ACV8fKCN9/slPqHHh3L8pz8aS1icf5NcKTlflfGDuijnxMC9rVabKRAaYqL0ZqeFN4v
 wtpjie/zHmr86JqSyis3Ee3yQtD7Ya8lk5RmUvid2fh8DEM9c6B2A7Yag9hfNdmryVH/
 vdKE27z1i5wWL7AHw2CFqO3UK1fX5uxxp5ihkjTo7uyOO9gyduYD6BtM+IWrZ5SKQ9Mv
 fgnQ==
X-Gm-Message-State: APjAAAUBS1scio2PA97XlzEuL/+MYgKQVztAzcHcuq+Cai9K0WsbgQ3K
 goG8ba8mhWO1CZSgySe5kx7iSoSV
X-Google-Smtp-Source: APXvYqx8IAmX+s+7TK5qnozIRIA6bDm97DsRI8ndxcRI4R7vbPriPYONQXPZ8+lE0Itz0xkzmnsqoQ==
X-Received: by 2002:adf:f68f:: with SMTP id v15mr5871100wrp.4.1560369586066;
 Wed, 12 Jun 2019 12:59:46 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id f10sm1026745wrg.24.2019.06.12.12.59.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 12:59:45 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com
Subject: [PATCH v3 14/14] pwm: meson: add documentation to the driver
Date: Wed, 12 Jun 2019 21:59:11 +0200
Message-Id: <20190612195911.4442-15-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190612195911.4442-1-martin.blumenstingl@googlemail.com>
References: <20190612195911.4442-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_125947_909138_20FBCCB0 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 narmstrong@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, u.kleine-koenig@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGxpbmtzIHRvIHRoZSBkYXRhc2hlZXQgYW5kIGEgc2hvcnQgc3VtbWFyeSBob3cgdGhlIGhh
cmR3YXJlIHdvcmtzLgpUaGUgZ29hbCBpcyB0byBtYWtlIGl0IGVhc2llciBmb3Igb3RoZXIgZGV2
ZWxvcGVycyB0byB1bmRlcnN0YW5kIHdoeSB0aGUKcHdtLW1lc29uIGRyaXZlciBpcyBpbXBsZW1l
bnRlZCB0aGUgd2F5IGl0IGlzLgoKU3VnZ2VzdGVkLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5r
bGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgpDby1hdXRob3JlZC1ieTogTmVpbCBBcm1zdHJv
bmcgPG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPgpSZXZpZXdlZC1ieTogTmVpbCBBcm1zdHJvbmcg
PG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXJ0aW4gQmx1bWVuc3Rp
bmdsIDxtYXJ0aW4uYmx1bWVuc3RpbmdsQGdvb2dsZW1haWwuY29tPgotLS0KIGRyaXZlcnMvcHdt
L3B3bS1tZXNvbi5jIHwgMjIgKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQs
IDIyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tbWVzb24uYyBi
L2RyaXZlcnMvcHdtL3B3bS1tZXNvbi5jCmluZGV4IGJiNDhiYTg1Zjc1Ni4uMzEyNTkwMjY0ODRj
IDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tbWVzb24uYworKysgYi9kcml2ZXJzL3B3bS9w
d20tbWVzb24uYwpAQCAtMSw1ICsxLDI3IEBACiAvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
R1BMLTIuMCBPUiBCU0QtMy1DbGF1c2UKIC8qCisgKiBQV00gY29udHJvbGxlciBkcml2ZXIgZm9y
IEFtbG9naWMgTWVzb24gU29Dcy4KKyAqCisgKiBUaGlzIFBXTSBpcyBvbmx5IGEgc2V0IG9mIEdh
dGVzLCBEaXZpZGVycyBhbmQgQ291bnRlcnM6CisgKiBQV00gb3V0cHV0IGlzIGFjaGlldmVkIGJ5
IGNhbGN1bGF0aW5nIGEgY2xvY2sgdGhhdCBwZXJtaXRzIGNhbGN1bGF0aW5nCisgKiB0d28gcGVy
aW9kcyAobG93IGFuZCBoaWdoKS4gVGhlIGNvdW50ZXIgdGhlbiBoYXMgdG8gYmUgc2V0IHRvIHN3
aXRjaCBhZnRlcgorICogTiBjeWNsZXMgZm9yIHRoZSBmaXJzdCBoYWxmIHBlcmlvZC4KKyAqIFRo
ZSBoYXJkd2FyZSBoYXMgbm8gInBvbGFyaXR5IiBzZXR0aW5nLiBUaGlzIGRyaXZlciByZXZlcnNl
cyB0aGUgcGVyaW9kCisgKiBjeWNsZXMgKHRoZSBsb3cgbGVuZ3RoIGlzIGludmVydGVkIHdpdGgg
dGhlIGhpZ2ggbGVuZ3RoKSBmb3IKKyAqIFBXTV9QT0xBUklUWV9JTlZFUlNFRC4gVGhpcyBtZWFu
cyB0aGF0IC5nZXRfc3RhdGUgY2Fubm90IHJlYWQgdGhlIHBvbGFyaXR5CisgKiBmcm9tIHRoZSBo
YXJkd2FyZS4KKyAqIFNldHRpbmcgdGhlIGR1dHkgY3ljbGUgd2lsbCBkaXNhYmxlIGFuZCByZS1l
bmFibGUgdGhlIFBXTSBvdXRwdXQuCisgKiBEaXNhYmxpbmcgdGhlIFBXTSBzdG9wcyB0aGUgb3V0
cHV0IGltbWVkaWF0ZWx5ICh3aXRob3V0IHdhaXRpbmcgZm9yIHRoZQorICogY3VycmVudCBwZXJp
b2QgdG8gY29tcGxldGUgZmlyc3QpLgorICoKKyAqIFRoZSBwdWJsaWMgUzkxMiAoR1hNKSBkYXRh
c2hlZXQgY29udGFpbnMgc29tZSBkb2N1bWVudGF0aW9uIGZvciB0aGlzIFBXTQorICogY29udHJv
bGxlciBzdGFydGluZyBvbiBwYWdlIDU0MzoKKyAqIGh0dHBzOi8vZGwua2hhZGFzLmNvbS9IYXJk
d2FyZS9WSU0yL0RhdGFzaGVldC9TOTEyX0RhdGFzaGVldF9WMC4yMjAxNzAzMTRwdWJsaWN2ZXJz
aW9uLVdlc2lvbi5wZGYKKyAqIEFuIHVwZGF0ZWQgdmVyc2lvbiBvZiB0aGlzIElQIGJsb2NrIGlz
IGZvdW5kIGluIFM5MjJYIChHMTJCKSBTb0NzLiBUaGUKKyAqIGRhdGFzaGVldCBjb250YWlucyB0
aGUgZGVzY3JpcHRpb24gZm9yIHRoaXMgSVAgYmxvY2sgcmV2aXNpb24gc3RhcnRpbmcgYXQKKyAq
IHBhZ2UgMTA4NDoKKyAqIGh0dHBzOi8vZG4ub2Ryb2lkLmNvbS9TOTIyWC9PRFJPSUQtTjIvRGF0
YXNoZWV0L1M5MjJYX1B1YmxpY19EYXRhc2hlZXRfVjAuMi5wZGYKKyAqCiAgKiBDb3B5cmlnaHQg
KGMpIDIwMTYgQmF5TGlicmUsIFNBUy4KICAqIEF1dGhvcjogTmVpbCBBcm1zdHJvbmcgPG5hcm1z
dHJvbmdAYmF5bGlicmUuY29tPgogICogQ29weXJpZ2h0IChDKSAyMDE0IEFtbG9naWMsIEluYy4K
LS0gCjIuMjIuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
