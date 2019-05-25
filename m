Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E312A676
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:18:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5myKOx33SyCFcoPYjxgjiSbZ9p2xbqWGfxVVhjPc+nE=; b=NVjcJkuo/ey+l2
	rCh4YWqQUWUh8Oag2bRHkhnJyGoHodSoP9lk0ijX8aipnEOOgQ/W7ejiOXNpSMp51DAuNkEYWSugN
	g+GzL+C3VnCeqXjtAnr8dQw+D4m/9LxT+nThDmP5Lge3++Ex6kMpb3v/pn0LdpZbxp6q0tNYWrpkr
	2B7eUaoZ4txPDVWJdcuTI8FHtaiuIhDMQRctRjbXyMFBIqocAbEG0CRgkbAuqLfn4q/DCi6txxgcG
	RAK1vja32PWi7o5b8iPh3ONw5nO5LJC9dxaIxTBZMpRYdQU0zqT64VTyjbwVa9WEDwQlWDWOe84Qn
	yz1SG7TTt4JfvcA0RAcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUbBH-0004rw-Qj; Sat, 25 May 2019 18:14:07 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb9F-0002SY-Qw; Sat, 25 May 2019 18:12:03 +0000
Received: by mail-wm1-x344.google.com with SMTP id 7so12066172wmo.2;
 Sat, 25 May 2019 11:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nIoMcTrrivGWjqKFRKrQpbhTg0DwU0FAQEhN7ghOLBc=;
 b=YUJZFmlDDS9sV9t0FwAaA3uob1RJ1IKO64k1hx0VeZz++jx4eM8XoCSEP1HQUW5YCT
 Yg6X8OMcyRuAess6huRflmv0SgTKddbbEXVnjxBnlrmS5zgBf8Thu4QSXkel6JrF4gH6
 0Nh+RzfkXnEzfzWU7jlm6MI9ivRU911ji63yc4ZRaWY8W8NNaYsfPznlNTHwgwlJYYid
 YgWjrUYKMFuyG/odJ1p+d8OF7MrkrEenArWMUleMDXqjhnh9om7QZJr8agRXOjq1Ys/a
 pgBINls59AMYHNDXQ+tROISOkYdsCpFcSC9EKYw7kepQE4tjK/7VY8yu6O/Zm74+SovP
 uunw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nIoMcTrrivGWjqKFRKrQpbhTg0DwU0FAQEhN7ghOLBc=;
 b=leEl9KKws++8m1PhWePllVNJFHbYbIas1hlvTwrabkZxjgEuQuzwRx4d7qxvpeM94J
 stZlnaKtpTYvBJHORH2DM4Ggc72DUswk7JzuBfC5PCjTzpkHFlrth/XXBhybuEdfPgEi
 G9K5iNtfdi2MpCin8kkDPb4WURQ/bKcXxkG5HYoeEcluYK8PdgocNRuDIzYamg82AE6T
 Aa+qm6FxYFE/xl8564AxpFpItlw5DpvkMH6BwM+Q6aj4Y+7IFfKSuieK/7ib2Wuk1c1v
 /0CX80InWliIsN+Zu+Q5inW2fSj+4R/TUU+AvRxyktrqEiPbSk+emgyLxxzxktUj8ekT
 4LDw==
X-Gm-Message-State: APjAAAUy5tzToCmPhYgpqceK2bvwm1+SpgMb+nXwF+CoL8UzqDAowvpy
 NkNSVudowPm63uOycL1rAXUZaPDk
X-Google-Smtp-Source: APXvYqyu3Be/yKPBPoTWAwazVEJwspi1jbLIzkDvL+i+B9Xl8I2P+UA0mJcEPB3BnlTthJdpmkyPcQ==
X-Received: by 2002:a1c:a002:: with SMTP id j2mr20147153wme.131.1558807920083; 
 Sat, 25 May 2019 11:12:00 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA4007CB8841254CD64FD.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:7cb8:8412:54cd:64fd])
 by smtp.googlemail.com with ESMTPSA id o8sm12794540wra.4.2019.05.25.11.11.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:11:59 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de
Subject: [PATCH 14/14] pwm: meson: add documentation to the driver
Date: Sat, 25 May 2019 20:11:33 +0200
Message-Id: <20190525181133.4875-15-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
References: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_111201_977825_FB2D38DC 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: 4.0 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 2.4 RAZOR2_CF_RANGE_51_100 Razor2 gives confidence level above 50%
 [cf: 100]
 1.7 RAZOR2_CHECK           Listed in Razor2 (http://razor.sf.net/)
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGEgbGluayB0byB0aGUgZGF0YXNoZWV0IGFuZCBhIHNob3J0IHN1bW1hcnkgaG93IHRoZSBo
YXJkd2FyZSB3b3Jrcy4KVGhlIGdvYWwgaXMgdG8gbWFrZSBpdCBlYXNpZXIgZm9yIG90aGVyIGRl
dmVsb3BlcnMgdG8gdW5kZXJzdGFuZCB3aHkgdGhlCnB3bS1tZXNvbiBkcml2ZXIgaXMgaW1wbGVt
ZW50ZWQgdGhlIHdheSBpdCBpcy4KClN1Z2dlc3RlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUu
a2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KQ28tYXV0aG9yZWQtYnk6IE5laWwgQXJtc3Ry
b25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4KU2lnbmVkLW9mZi1ieTogTWFydGluIEJsdW1l
bnN0aW5nbCA8bWFydGluLmJsdW1lbnN0aW5nbEBnb29nbGVtYWlsLmNvbT4KLS0tCiBkcml2ZXJz
L3B3bS9wd20tbWVzb24uYyB8IDE4ICsrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQs
IDE4IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tbWVzb24uYyBi
L2RyaXZlcnMvcHdtL3B3bS1tZXNvbi5jCmluZGV4IGJiNDhiYTg1Zjc1Ni4uNmE5NzhjYWJhNDgz
IDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tbWVzb24uYworKysgYi9kcml2ZXJzL3B3bS9w
d20tbWVzb24uYwpAQCAtMSw1ICsxLDIzIEBACiAvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
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
b2QgdG8gY29tcGxldGUgZmlyc3QpLgorICoKKyAqIFRoZSBwdWJsaWMgUzkyMlggZGF0YXNoZWV0
IGNvbnRhaW5zIHNvbWUgZG9jdW1lbnRhdGlvbiBmb3IgdGhpcyBQV00KKyAqIGNvbnRyb2xsZXIg
c3RhcnRpbmcgb24gcGFnZSAxMDg0OgorICogaHR0cHM6Ly9kbC5raGFkYXMuY29tL0hhcmR3YXJl
L1ZJTTIvRGF0YXNoZWV0L1M5MTJfRGF0YXNoZWV0X1YwLjIyMDE3MDMxNHB1YmxpY3ZlcnNpb24t
V2VzaW9uLnBkZgorICoKICAqIENvcHlyaWdodCAoYykgMjAxNiBCYXlMaWJyZSwgU0FTLgogICog
QXV0aG9yOiBOZWlsIEFybXN0cm9uZyA8bmFybXN0cm9uZ0BiYXlsaWJyZS5jb20+CiAgKiBDb3B5
cmlnaHQgKEMpIDIwMTQgQW1sb2dpYywgSW5jLgotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
