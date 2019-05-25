Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCBA2A569
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 18:38:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SeiTCpF+SkaXB9XujDwDxEK5/M8W/sO+ySX95LPHOvc=; b=f8RNf23FRKNN5p
	AgLI6rHinnhvMULYFy3Fy+0YSP8zcdxamcXnw5NHD9U174RpB0yU6x4hDkzwT0okwYAutMAd1+cg9
	SYWjvG5iZP7Rcz1eyY+8hJZ2htVBLqsxX+9GXIb7eoa2/HM573Vl1swqhqMFcJ1N50VLzfILZ0qgX
	AG8uYNKnZfBe+t1kv60a70kyacrwntlrsPw+WY0WePX85uE0j6JekMr3Tp6T3PmSVvX+4s2rH0V2i
	jkO3VdqbJo/ysicmzMqtp39RuZbqog9BwnrQMjxYn9R68GSNB3qVjIYm/oIN09R2fguIhBwhARE+8
	HhgC+qTJrb5EymcePoVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUZgp-0003bo-OT; Sat, 25 May 2019 16:38:35 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUZgh-0003aZ-Tr
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 16:38:29 +0000
Received: by mail-wr1-x442.google.com with SMTP id f8so12848350wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 09:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=P1PyjslIuFkdLZ1LECH2oSAMmTt5Um4BAQa4nOZIt94=;
 b=ZCG5JA+bIRDyleKl2mXDSKEp9k5JUA0n0iBeFRwDKw1Fs5sbHew+pHrqpO+AVaYcDk
 GbQOzYLEetuN7tzq4YO2itG3MCd0VrWiWvlBNLP94BenthcKgYrio9BbozLM3VDqavWR
 Lo3Fwl8QSY+FZ9HXd2H4JNg7yUGxpNKQ491HSncL5MczBDs8dD7y9dFezntMKpIq+L51
 w1KoNwprxk7lGvNIy+iEbrJSSNU3qpKTgUCgSLso/uqyZVSNyiOJc9LXQcUx3+4ZSUAX
 H0m3RQkTcQ2B2h/17Gf96fzMNShsQRNGONnkY7JcSB0If1UlSrdDXOecxZnumgXMJcEq
 RWQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=P1PyjslIuFkdLZ1LECH2oSAMmTt5Um4BAQa4nOZIt94=;
 b=lcDbp6bnbguVfb5RtwzE9BSojoKcuOaeKbhKC9bBWZpRT0tW7BiENPRfleKEhecsQQ
 y4S2lV6SQ1Kj2lUhHe2pBJocjBKqK4V0InA7u8OU4v0xzXpSxiCmcpPVabFpzbrkXpgV
 o0VgRgJbz/xWAc6rAfHi9hhaEQzIqQjcrPmsckOhnagpJrR9jKYdOGGSo7VgOJ+F64GM
 P84VSGSi/Uo24lfb3EoP2JkDg/VA4rFfgQXfg4vif5vxFfZnLPG2zvLvO5EyGLxOB6ea
 o8WPXA0IPP0TeV7lOKndoaLI64fYoGWOl6rCoGojV9Z/ZLizXodjOICn8nLFJx5C8vp5
 7SWQ==
X-Gm-Message-State: APjAAAVZp15N1DEnYPoBbx0Q/6+dxwG9LyO79mpD3CyAewoU8BsOe5IC
 YMDCSdMLxOpmMfi7r4EDiGJuDWuRyOY4Dg==
X-Google-Smtp-Source: APXvYqz78k3LlnXP7jY3H0OnrSSVjujSRE2IRywudpy2P67AUT4Fy3Xl69vJWmYaBl5Bg9zioHfo+Q==
X-Received: by 2002:a5d:6b03:: with SMTP id v3mr7769108wrw.309.1558802305724; 
 Sat, 25 May 2019 09:38:25 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id f65sm9306498wmg.45.2019.05.25.09.38.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 09:38:25 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v2 0/7] Allwinner H6 DMA support
Date: Sat, 25 May 2019 18:38:12 +0200
Message-Id: <20190525163819.21055-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_093827_964379_0ECFC3E9 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpUaGlzIHNlcmllcyBoYXMgYmVlbiBmaXJzdCBwcm9wb3NlZCBieSBKZXJuZWogU2tyYWJl
Y1sxXS4KQXMgdGhpcyBzZXJpZXMgaXMgbWFuZGF0b3J5IGZvciBTUERJRi9JMlMgc3VwcG9ydCBh
bmQgYmVjYXVzZSBoZSBpcwpidXN5IG9uIENlZHJ1cyBzdHVmZi4gSSBhc2tlZCBoaW0gdG8gbWFr
ZSB0aGUgbWlub3IgY2hhbmdlIHJlcXVlc3RlZAphbmQgcmVwb3N0IGl0LgpBdXRob3JzaGlwIHJl
bWFpbnMgdG8gaGltLgoKSSBoYXZlIHRlc3RlZCB0aGlzIHNlcmllcyB3aXRoIFNQRElGIGRyaXZl
ciBhbmQgYWRkZWQgYSBwYXRjaCB0byBlbmFibGUKRE1BX1NVTjZJX0NPTkZJRyBmb3IgYXJtNjQu
CgpPcmlnaW5hbCBQb3N0OgoiCkRNQSBlbmdpbmUgZW5naW5lIG9uIEg2IGFsbW9zdCB0aGUgc2Ft
ZSBhcyBvbiBvbGRlciBTb0NzLiBUaGUgYmlnZ2VzdApkaWZmZXJlbmNlIGlzIHRoYXQgaXQgaGFz
IHNsaWdodGx5IHJlYXJyYW5nZWQgYml0cyBpbiByZWdpc3RlcnMgYW5kCml0IG5lZWRzIGFkZGl0
aW9uYWwgY2xvY2ssIHByb2JhYmx5IGR1ZSB0byBpb21tdS4KClRoZXNlIHBhdGNoZXMgd2VyZSB0
ZXN0ZWQgd2l0aCBJMlMgY29ubmVjdGVkIHRvIEhETUkuIEkyUyBuZWVkcwphZGRpdGlvbmFsIHBh
dGNoZXMgd2hpY2ggd2lsbCBiZSBzZW50IGxhdGVyLgoKUGxlYXNlIHRha2UgYSBsb29rLgoKQmVz
dCByZWdhcmRzLApKZXJuZWoKIgoKVGhhbmtzLApDbMOpbWVudAoKQ2hhbmdlcyBzaW5jZSB2MToK
IC0gRW5hYmxlIERNQV9TVU42SSBpbiBhcm02NCBkZWZjb25maWcKIC0gQ2hhbmdlIG1idXNfY2xr
IHRvIGhhc19tYnVzX2NsawogLSBDb2xsZWN0IFJvYiBILiByZXZpZXdlZC1ieQoKQ2zDqW1lbnQg
UMOpcm9uICgxKToKICBhcm02NDogZGVmY29uZmlnOiBlbmFibGUgQWxsd2lubmVyIERNQSBkcml2
ZXJzCgpKZXJuZWogU2tyYWJlYyAoNik6CiAgZHQtYmluZGluZ3M6IGFybTY0OiBhbGx3aW5uZXI6
IGg2OiBBZGQgYmluZGluZyBmb3IgRE1BIGNvbnRyb2xsZXIKICBkbWFlbmdpbmU6IHN1bjZpOiBB
ZGQgYSBxdWlyayBmb3IgYWRkaXRpb25hbCBtYnVzIGNsb2NrCiAgZG1hZW5naW5lOiBzdW42aTog
QWRkIGEgcXVpcmsgZm9yIHNldHRpbmcgRFJRIGZpZWxkcwogIGRtYWVuZ2luZTogc3VuNmk6IEFk
ZCBhIHF1aXJrIGZvciBzZXR0aW5nIG1vZGUgZmllbGRzCiAgZG1hZW5naW5lOiBzdW42aTogQWRk
IHN1cHBvcnQgZm9yIEg2IERNQQogIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogaDY6IEFkZCBETUEg
bm9kZQoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RtYS9zdW42aS1kbWEudHh0ICAgICB8ICAg
OSArLQogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgIHwgIDEy
ICsrCiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnICAgICAgICAgICAgICAgICAgfCAgIDEg
KwogZHJpdmVycy9kbWEvc3VuNmktZG1hLmMgICAgICAgICAgICAgICAgICAgICAgIHwgMTQ3ICsr
KysrKysrKysrKystLS0tLQogNCBmaWxlcyBjaGFuZ2VkLCAxMzIgaW5zZXJ0aW9ucygrKSwgMzcg
ZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
