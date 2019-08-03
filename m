Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 563B680493
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 08:04:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uhdex3kHPDAb7xtW4DeqbVcYyz4brmRRwyB5I7Gg/gM=; b=f985NTEcGvxYLW
	A6gxIOzmpTwb5guooG8JQ93xdSVgzqFeafpDyaEvBgckfM2NCJdz1ai2nYNR4EaKEAQFSU0x/ka38
	I9BLOiqR3K2LgcUGhbnobwCWt47+OD8Jsyz1E+yuJtTmM4FSlJXmASnmug6r8tFD0Gvi34PuM/7A/
	N1TjUA615trpVTeTeZ5qd+SjrZykJn7kXeVS9A1zCike+bzp2ejkTKgg5HBIBqyQKYwg3jNs71kXq
	ToTpfWnJtuGA1Lfj3V9UoGt3BsxDZPEIoDVkzEJIYrLSGB6AJPUU+vXjbIyvCcULFZ9ooyaSMtdNQ
	hR/ndGT1fCNZIalmup9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htn9c-000210-Mc; Sat, 03 Aug 2019 06:04:32 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htn9S-0001zh-40
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 06:04:23 +0000
Received: by mail-wm1-x344.google.com with SMTP id x15so69917808wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 23:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TuPsU+wIk9sIcrLOl4LJnc1V+9lHBDgGcDwEKtWWqcc=;
 b=HT8uNMOe3xQ+8v+NGlpiBqKUVlnXu+y+8pTuy/KqlOjTymceYZgX4CYrrsGfPckcQL
 v9X6pY6LtLFAY3nYKefMVPRv6kYv8WCHdOqgTaw57zNyVPZIMfFhxeOc0bmThKDJlxSl
 AXPO1owM6GP+6Q6K15mYojVWDrGlWzt/NlOJwXlQ7+zA9wuDprcfmqKwbp1XhC6c9pdF
 4ktox4g9KXM6+6OqH5uKoXnFL5Qm3CJ0/1pzxBympl+E7Z74Wd17Ntp0vtt54wn94wJR
 mOS/3C3AcSBGT8OTnMAP9dA6iMQZXd2laLo2EK/Yw76XyHC+/e3Miq9eZgoK3VvJ/kTV
 9hfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TuPsU+wIk9sIcrLOl4LJnc1V+9lHBDgGcDwEKtWWqcc=;
 b=Ij8HNfbLEy2CMLh+iW7/gBgnmJ9pjS+j0/1RdFluJRsNN0pf0hofbN183f0oIkK2pU
 jzPowBI+3c70C4NoojXB3K4bfjwqxbw+TwvDFPux7QoBy7Mlhkv7cJHP34nqCNI62XtE
 fj3i4pSwTTDDRa1WsloxMx7wHGJAPw04okRMRkPnKQhd+wpANk+nXuyVt7EB57gZXw1n
 jMvv15Jg7hBuygCM7eoQNV0WnbhSwoxZdC7bRM2PMGmlA8TjBuULMSiIIiYe45wdhgov
 poWqACz1dulReuyMLKv5codcKRnS5CBll2oM32PofMwA2NCLiPQbYdY2nrV9dBE1Oo8R
 Vw0w==
X-Gm-Message-State: APjAAAVQUXxVNvAPLtNQj9m2jKD796ehMsLeRU9EwEg6ie0YmdsA/rct
 WkKdcK46KXqWqeeXo1MUyN8=
X-Google-Smtp-Source: APXvYqwHgOP+QwT4wtjARAN/ZGIjpCOSDlFdPyx71PGItur4Jad51ToiXyPCxCj6XswP9TeBjy3/vA==
X-Received: by 2002:a7b:cf3a:: with SMTP id m26mr7950518wmg.6.1564812255722;
 Fri, 02 Aug 2019 23:04:15 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id t13sm93817734wrr.0.2019.08.02.23.04.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 23:04:15 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: natechancellor@gmail.com
Subject: [PATCH v2] net: mdio-octeon: Fix Kconfig warnings and build errors
Date: Fri,  2 Aug 2019 23:01:56 -0700
Message-Id: <20190803060155.89548-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190731185023.20954-1-natechancellor@gmail.com>
References: <20190731185023.20954-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_230422_166125_A904D486 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 lkp@intel.com, kernel-build-reports@lists.linaro.org,
 gregkh@linuxfoundation.org, rdunlap@infradead.org, willy@infradead.org,
 broonie@kernel.org, linux-next@vger.kernel.org, netdev@vger.kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWZ0ZXIgY29tbWl0IDE3MWE5YmFlNjhjNyAoInN0YWdpbmcvb2N0ZW9uOiBBbGxvdyB0ZXN0IGJ1
aWxkIG9uCiFNSVBTIiksIHRoZSBmb2xsb3dpbmcgY29tYmluYXRpb24gb2YgY29uZmlncyBjYXVz
ZSBhIGZldyBLY29uZmlnCndhcm5pbmdzIGFuZCBidWlsZCBlcnJvcnMgKGRpc3RpbGxlZCBmcm9t
IGFybSBhbGx5ZXNjb25maWcgYW5kIFJhbmR5J3MKcmFuZGNvbmZpZyBidWlsZHMpOgoKICAgIENP
TkZJR19ORVRERVZJQ0VTPXkKICAgIENPTkZJR19TVEFHSU5HPXkKICAgIENPTkZJR19DT01QSUxF
X1RFU1Q9eQoKYW5kIENPTkZJR19PQ1RFT05fRVRIRVJORVQgYXMgZWl0aGVyIGEgbW9kdWxlIG9y
IGJ1aWx0LWluLgoKV0FSTklORzogdW5tZXQgZGlyZWN0IGRlcGVuZGVuY2llcyBkZXRlY3RlZCBm
b3IgTURJT19PQ1RFT04KICBEZXBlbmRzIG9uIFtuXTogTkVUREVWSUNFUyBbPXldICYmIE1ESU9f
REVWSUNFIFs9eV0gJiYgTURJT19CVVMgWz15XQomJiA2NEJJVCBbPW5dICYmIEhBU19JT01FTSBb
PXldICYmIE9GX01ESU8gWz1uXQogIFNlbGVjdGVkIGJ5IFt5XToKICAtIE9DVEVPTl9FVEhFUk5F
VCBbPXldICYmIFNUQUdJTkcgWz15XSAmJiAoQ0FWSVVNX09DVEVPTl9TT0MgfHwKQ09NUElMRV9U
RVNUIFs9eV0pICYmIE5FVERFVklDRVMgWz15XQoKSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC4uL2Ry
aXZlcnMvbmV0L3BoeS9tZGlvLW9jdGVvbi5jOjE0OgouLi9kcml2ZXJzL25ldC9waHkvbWRpby1j
YXZpdW0uaDoxMTE6MzY6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZgpmdW5jdGlvbiDi
gJh3cml0ZXHigJk7IGRpZCB5b3UgbWVhbiDigJh3cml0ZWzigJk/ClstV2Vycm9yPWltcGxpY2l0
LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQogIDExMSB8ICNkZWZpbmUgb2N0X21kaW9fd3JpdGVxKHZh
bCwgYWRkcikgd3JpdGVxKHZhbCwgKHZvaWQgKilhZGRyKQogICAgICB8ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgXn5+fn5+CgpDT05GSUdfNjRCSVQgaXMgbm90IHN0cmljdGx5
IG5lY2Vzc2FyeSBpZiB0aGUgcHJvcGVyIHJlYWRxL3dyaXRlcQpkZWZpbml0aW9ucyBhcmUgaW5j
bHVkZWQgZnJvbSBpby02NC1ub25hdG9taWMtbG8taGkuaC4KCkNPTkZJR19PRl9NRElPIGlzIG5v
dCBuZWVkZWQgd2hlbiBDT05GSUdfQ09NUElMRV9URVNUIGlzIGVuYWJsZWQgYmVjYXVzZQpvZiBj
b21taXQgZjlkYzlhYzUxNjEwICgib2YvbWRpbzogQWRkIGR1bW15IGZ1bmN0aW9ucyBpbiBvZl9t
ZGlvLmguIikuCgpGaXhlczogMTcxYTliYWU2OGM3ICgic3RhZ2luZy9vY3Rlb246IEFsbG93IHRl
c3QgYnVpbGQgb24gIU1JUFMiKQpSZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBp
bnRlbC5jb20+ClJlcG9ydGVkLWJ5OiBNYXJrIEJyb3duIDxicm9vbmllQGtlcm5lbC5vcmc+ClJl
cG9ydGVkLWJ5OiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4KU2lnbmVkLW9m
Zi1ieTogTmF0aGFuIENoYW5jZWxsb3IgPG5hdGVjaGFuY2VsbG9yQGdtYWlsLmNvbT4KLS0tCgp2
MSAtPiB2MjoKCiogQWRkcmVzcyBSYW5keSdzIHJlcG9ydGVkIGZhaWx1cmUgaGVyZTogaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2L2IzNDQ0MjgzLTdhNzctZWNlOC03YWM2LTQxNzU2YWE3
ZGM2MEBpbmZyYWRlYWQub3JnLwogIGJ5IG5vdCByZXF1aXJpbmcgQ09ORklHX09GX01ESU8gd2hl
biBDT05GSUdfQ09NUElMRV9URVNUIGlzIHNldC4KCiogSW1wcm92ZSBjb21taXQgbWVzc2FnZQoK
IGRyaXZlcnMvbmV0L3BoeS9LY29uZmlnICAgICAgIHwgNCArKy0tCiBkcml2ZXJzL25ldC9waHkv
bWRpby1jYXZpdW0uaCB8IDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3BoeS9LY29uZmlnIGIvZHJp
dmVycy9uZXQvcGh5L0tjb25maWcKaW5kZXggMjBmMTRjNWZiYjdlLi4wZTNkOWUzZDM1MzMgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3BoeS9LY29uZmlnCisrKyBiL2RyaXZlcnMvbmV0L3BoeS9L
Y29uZmlnCkBAIC0xNTksOCArMTU5LDggQEAgY29uZmlnIE1ESU9fTVNDQ19NSUlNCiAKIGNvbmZp
ZyBNRElPX09DVEVPTgogCXRyaXN0YXRlICJPY3Rlb24gYW5kIHNvbWUgVGh1bmRlclggU09DcyBN
RElPIGJ1c2VzIgotCWRlcGVuZHMgb24gNjRCSVQKLQlkZXBlbmRzIG9uIEhBU19JT01FTSAmJiBP
Rl9NRElPCisJZGVwZW5kcyBvbiAoNjRCSVQgJiYgT0ZfTURJTykgfHwgQ09NUElMRV9URVNUCisJ
ZGVwZW5kcyBvbiBIQVNfSU9NRU0KIAlzZWxlY3QgTURJT19DQVZJVU0KIAloZWxwCiAJICBUaGlz
IG1vZHVsZSBwcm92aWRlcyBhIGRyaXZlciBmb3IgdGhlIE9jdGVvbiBhbmQgVGh1bmRlclggTURJ
TwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvcGh5L21kaW8tY2F2aXVtLmggYi9kcml2ZXJzL25l
dC9waHkvbWRpby1jYXZpdW0uaAppbmRleCBlZDVmOWJiNTQ0OGQuLmI3Zjg5YWQyNzQ2NSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9uZXQvcGh5L21kaW8tY2F2aXVtLmgKKysrIGIvZHJpdmVycy9uZXQv
cGh5L21kaW8tY2F2aXVtLmgKQEAgLTEwOCw2ICsxMDgsOCBAQCBzdGF0aWMgaW5saW5lIHU2NCBv
Y3RfbWRpb19yZWFkcSh1NjQgYWRkcikKIAlyZXR1cm4gY3ZteF9yZWFkX2NzcihhZGRyKTsKIH0K
ICNlbHNlCisjaW5jbHVkZSA8bGludXgvaW8tNjQtbm9uYXRvbWljLWxvLWhpLmg+CisKICNkZWZp
bmUgb2N0X21kaW9fd3JpdGVxKHZhbCwgYWRkcikJd3JpdGVxKHZhbCwgKHZvaWQgKilhZGRyKQog
I2RlZmluZSBvY3RfbWRpb19yZWFkcShhZGRyKQkJcmVhZHEoKHZvaWQgKilhZGRyKQogI2VuZGlm
Ci0tIAoyLjIzLjAucmMxCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
