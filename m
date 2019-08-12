Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C8689BF1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:52:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z4AGAdgy9cGt9mrBbuhbCEmeFFyj8psSqBSbRZHnRNA=; b=i73Sy029bRYVbB
	4PtOmYoFV7HrmUF3IdSbFfbQ59ZpqzsG6tKpyLqnngugYZAqiITL2RWX5ZtKwwyUFg74K6hSNzeSM
	Lwy1tuVaEjB/z/3JT2XDCdDvrv3JRRxRqvtTMsrS18BQnP1H7x9Hejz7Ep2ereHXtpEpIvCqrTBK8
	N3vgqZyJEAwinX8fzCq+J2Ubmp087Qgv1/DD0EhxbHuCe/H7M38SZKrTQdQsDQcWFeZpfXC18l2kQ
	RPKXxOf3/jtS6T7fXAZQdwVf/iMMxI8T9Qp9NsDocofigXxOA89iKZ0K6nBsP5X1TRJFJx/R6spL3
	FDvhX6mcEiYnFiChHDgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7vb-0001JY-D9; Mon, 12 Aug 2019 10:51:51 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7v9-000171-07
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:51:24 +0000
Received: by mail-wr1-x443.google.com with SMTP id b16so7437296wrq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 03:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8y69qpb8UD4pmGymBCCj0vrAYWumiZEmgRjo9Gkt4hE=;
 b=FmGB1X5vECdUSw5GDk1JEITe8ZmsplF/0xnLiaAdpOIwzo5QbdcgBssKwh//qmwyCU
 sdGiGk/A5GQjJmUBeNo7UwcL0y3F0qBemh8jmQfWxsj7ahELFP2AYX7NJYG3dh51CLBr
 MYTmkJwSVJ0teDz6aMOa4QuzlKIsE5jYkvnlQfTSwwfJqxIJ/sft41zJ/uX2E4T59RLc
 XmT320ySyTOt/7VTGWrZmy2qql0ZGKz84zVjyykLuQf4IrSarVgD15V4SNiZWthHua6/
 zkTB+GihV4zXFjlbGAoOz3Dn17PqeBPxR9FuiXkGyX/wzraBxP5S8+R6x+7bBo4pkycZ
 mgGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8y69qpb8UD4pmGymBCCj0vrAYWumiZEmgRjo9Gkt4hE=;
 b=LkIY/krRRm0p+fcmtTSQNg2gmPwqORAu9bWoo4GyYvCOZ2B1gkB2GZPuok38btQ1sf
 6+8ewu6w0xOcv9KuDLR7x/ZELSzcDfqlcVSJFrzZqd3Nx8KW6HFNUqqTnJJMN7fxPUmC
 QQMO2oQnb1pMJ2ZAyRzw1/bFEw5HxT0bQW4S7v5kpiOUuOXSHz1k2uCyw6PoaToTL4D+
 Bdq/hkjPqIPdx2qswC8Yj+a+49g57OE0ePHydv2+qQHJr2vP2aoFSjjISsuu9ab9SwR6
 arimWwWnL3QimmWBuwSz4orpsmroF/bYbqvB9XZBUufAop9Kz2gX4xckoJRkyFJGzfai
 oPlw==
X-Gm-Message-State: APjAAAWb79ik6v3h/xtYBhTVheAvpU4AL1BewhgwK+GZMpkAtvQOkw5Y
 1+nv6XSXfG7rXMl4ZrO41Uct8WcmGB2T3g==
X-Google-Smtp-Source: APXvYqxO/zN5LoGuQdjgdLXcwdnLGqCiCs6Za6BT+vZzRtge3ZxZPKPUNKyec3jeFUKnm1IP5O8/gQ==
X-Received: by 2002:a5d:63d0:: with SMTP id c16mr35364533wrw.22.1565607081493; 
 Mon, 12 Aug 2019 03:51:21 -0700 (PDT)
Received: from localhost.localdomain
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id z8sm22797916wru.13.2019.08.12.03.51.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 03:51:21 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 0/2] Allwinner H6 SPDIF support
Date: Mon, 12 Aug 2019 12:51:13 +0200
Message-Id: <20190812105115.26676-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_035123_141369_DF082C93 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IFNvQyBoYXMgYSBTUERJRiBjb250cm9sbGVyIGNhbGxlZCBPbmUgV2lyZSBB
dWRpbyAoT1dBKSB3aGljaAppcyBkaWZmZXJlbnQgZnJvbSB0aGUgcHJldmlvdXMgSDMgZ2VuZXJh
dGlvbiBhbmQgbm90IGNvbXBhdGlibGUuCgpEaWZmZXJlbmNlIGFyZSBhbiBpbmNyZWFzZSBvZiBm
aWZvIHNpemVzLCBzb21lIG1lbW9yeSBtYXBwaW5nIGFyZSBkaWZmZXJlbnQKYW5kIHRoZXJlIGlz
IG5vdyB0aGUgcG9zc2liaWxpdHkgdG8gb3V0cHV0IHRoZSBtYXN0ZXIgY2xvY2sgb24gYSBwaW4u
CgpBY3R1YWxseSBhbGwgdGhlc2UgZmVhdHVyZXMgYXJlIHVudXNlZCBhbmQgb25seSBhIGJpdCBm
b3IgZmx1c2hpbmcgdGhlIFRYCmZpZm8gaXMgcmVxdWlyZWQuCgpDaGFuZ2VzIHNpbmNlIHY1Ogog
LSBNb3ZlIHNvdW5kY2FyZCB0byBib2FyZCBkZXZpY2UtdHJlZQoKQ2hhbmdlcyBzaW5jZSB2NDoK
IC0gcmVuYW1lIGF1ZGlvIGNhcmQgbmFtZSB0byBzdW41MGktaDYtc3BkaWYKIC0gZHJvcCBwYXRj
aGVzIGFscmVhZHkgbWVyZ2VkCgpDaGFuZ2VzIHNpbmNlIHYzOgogLSByZW5hbWUgcmVnX2ZjdGxf
ZnR4IHRvIHZhbF9mY3RsX2Z0eAogLSByZWJhc2UgdGhpcyBzZXJpZXMgb24gc291bmQtbmV4dAog
LSBmaXggZHQtYmluZGluZ3MgZHVlIHRvIGNoYW5nZSBpbiBzb3VuZC1uZXh0CiAtIGNoYW5nZSBu
b2RlIG5hbWUgc291bmRfc3BkaWYgdG8gc291bmQtc3BkaWYKCkNoYW5nZXMgc2luY2UgdjI6CiAt
IFNwbGl0IHF1aXJrcyBhbmQgSDYgc3VwcG9ydCBwYXRjaAogLSBBZGQgc3BlY2lmaWMgc2VjdGlv
biBmb3IgcXVpcmtzIGNvbW1lbnQKCkNoYW5nZXMgc2luY2UgdjE6CiAtIFJlbW92ZSBIMyBjb21w
YXRpYmxlCiAtIEFkZCBUWCBmaWZvIGJpdCBmbHVzaCBxdWlya3MKIC0gQWRkIEg2IGJpbmRpbmdz
IGluIFNQRElGIGRyaXZlcgoKQ2zDqW1lbnQgUMOpcm9uICgyKToKICBhcm02NDogZHRzOiBhbGx3
aW5uZXI6IEFkZCBTUERJRiBub2RlIGZvciBBbGx3aW5uZXIgSDYKICBhcm02NDogZHRzOiBhbGx3
aW5uZXI6IGg2OiBFbmFibGUgU1BESUYgZm9yIEJlZWxpbmsgR1MxCgogLi4uL2R0cy9hbGx3aW5u
ZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cyAgIHwgMjIgKysrKysrKysrKysrKysrKysrKwog
YXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgIHwgMjAgKysrKysr
KysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKQoKLS0gCjIuMjAu
MQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
