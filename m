Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2621BC125
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1Kg1LKlGExrvrYgvnRDWsSk12z5FPJQsPc/hME0I0NE=; b=Y3SEFYdJsGx/DN
	XW3Cu3L9LlZ849Z3dufpNxf1BKqOSgdalogXJershsEBa27e0StQ3rNO6X94X16SZpkkDVJZS1f0w
	sJNU38uql9BAEKI5LuOCX7JGgCFCtId3n4loCiEDsSjmUv5lvY83F2sngkNcMRXDNDTXu0tgsfGSC
	9SpLpH1+HFCJXjrAVsFH52RdxfKgasf6pUaQ2DJOjKLxQD9JhwiIXFYS6uCfkROUwreqbq/D8mwWw
	2cdnnyUzI9Ew0RzJ1EsnXU5sS4ab+r+3ksUANwvxibC7CSJwU7hkt38Fzsu2qUjFnP8//51ikuxdV
	ooT8Ne0TB1L8LBMUR6Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRC5-0008TI-50; Tue, 28 Apr 2020 14:26:41 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRBx-0008Sj-Qf
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:26:35 +0000
Received: by mail-wr1-x442.google.com with SMTP id g13so24875650wrb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 07:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hG1iewHRLomP7TVu4ek95y5UWXfro8sk9H3gDbdYkFU=;
 b=e1PNM85kPudrtghx5esFXKTU72xQjtksJL6Cxf/4nXufhl1oWdxTsWEX/sQzVqwAfz
 zn/8/hXeVC9v2d6fGq/uuidWo5LQvWQGdxAcgErMR8deJaEflxX9NvSrXbiEExJZjUkU
 h52KUrhA4ZJe7aTj+nbDJtiTG3dq/A61TtI0Gram/0KFNcSQfSB5PksuUH1khvhpTdhw
 BDxZVMWdpipYzYcZOsaEmD7tR4qUi8LtkckQeORuB0taY1u5xHJtB1UAVN4xaRb4/2O6
 VjVkb0PgO+Ban1Q1ZGLh2xy424SxSGFn6UB9f1TrlsaOqfPFOh+PnnkSH3za2B8Xz/Uv
 dmww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hG1iewHRLomP7TVu4ek95y5UWXfro8sk9H3gDbdYkFU=;
 b=fD6SQhvxDwAhEahrBJU/JlO1jxqQm4RFzwf0wfEovevfeRgWirP6iHQCZM9mennXJf
 wkJiHQjlh5zucgRSQBzKVNwPG4npGbvkIW1VJOqUcR8qji+/QNyiFLVvA/0kN/ytDzcG
 ss3k5PEKpI4yGI0wPofqLrADFRZx2AYr2sp71xKUMEVPkdJQEwT4Xm4TpM+mlUbNYRns
 3aNVSzhFx01BYY4Ur8EiBrLhEYnwJOwg8RM7Hr6A5PbA709cJ9OJ9cBJ3ukNHtOa7qmA
 g7MEusmojS7hlXcZW/i7cHSaFE/Nq2Na9X2iTh78djYhXcJpx1kgcCdTQbn56kBJjEj5
 XxJQ==
X-Gm-Message-State: AGi0PuZ91BKwTTw4opMd2pV/mRpfc+1Rdwf0SbS5JMhT+d31g7spPG5E
 C554A2JZCyeQPFXWzvNdl1w=
X-Google-Smtp-Source: APiQypJ7gR281FtErynXrsmeODO1gY7gzdn3z5Z1gvMXwBRkdEPTT8anxYrfO/GsOajLTJDAcgNnfQ==
X-Received: by 2002:a5d:4b0a:: with SMTP id v10mr11519520wrq.342.1588083992303; 
 Tue, 28 Apr 2020 07:26:32 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:9542:27c5:80f1:9810])
 by smtp.gmail.com with ESMTPSA id
 h6sm3367106wmf.31.2020.04.28.07.26.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 07:26:31 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2] arm64: dts: allwinner: h6: Use dummy regulator for Tanix
 TX6
Date: Tue, 28 Apr 2020 16:26:29 +0200
Message-Id: <20200428142629.8950-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_072633_890248_70F6E456 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 Piotr Oniszczuk <warpme@o2.pl>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGFuaXggVFg2IGhhcyBhIGZpeGVkIHJlZ3VsYXRvci4gQXMgRFZGUyBpcyBpbnN0cnVjdGVkIHRv
IGNoYW5nZQp2b2x0YWdlIHRvIG1lZXQgT1BQIHRhYmxlLCB0aGUgRFZGUyBpcyBub3Qgd29ya2lu
ZyBhcyBleHBlY3RlZC4KCkF2b2lkIHRvIGludHJvZHVjZSBhIG5ldyBkZWRpY2F0ZWQgT1BQIFRh
YmxlIHdoZXJlIHZvbHRhZ2UgYXJlCmVxdWFscyB0byB0aGUgZml4ZWQgcmVndWxhdG9yIGFzIGl0
IHdpbGwgb25seSBkdXBsaWNhdGUgYWxsIHRoZSBPUFBzLgpJbnN0ZWFkIHJlbW92ZSB0aGUgZml4
ZWQgcmVndWxhdG9yIHNvIHRoZSBEVkZTIGZyYW1ld29yayB3aWxsIGNyZWF0ZQpkdW1teSByZWd1
bGF0b3IgYW5kIHdpbGwgaGF2ZSB0aGUgc2FtZSBiZWhhdmlvci4KCkFkZCBzb21lIGNvbW1lbnRz
IHRvIGV4cGxhaW4gdGhpcyBpbiB0aGUgZGV2aWNlLXRyZWUuCgpSZXBvcnRlZC1ieTogUGlvdHIg
T25pc3pjenVrIDx3YXJwbWVAbzIucGw+CkZpeGVzOiBhZGQxZTI3ZmI3MDMgKCJhcm02NDogZHRz
OiBhbGx3aW5uZXI6IGg2OiBFbmFibGUgQ1BVIG9wcCB0YWJsZXMgZm9yIFRhbml4IFRYNiIpClNp
Z25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQog
Li4uL2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtdGFuaXgtdHg2LmR0cyB8IDE4ICsrKysr
KysrKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBp
LWg2LXRhbml4LXR4Ni5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGkt
aDYtdGFuaXgtdHg2LmR0cwppbmRleCBiZTgxMzMwZGIxNGYuLjNlOTZmY2IzMTdlYSAxMDA2NDQK
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXRhbml4LXR4Ni5k
dHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXRhbml4LXR4
Ni5kdHMKQEAgLTQ4LDcgKzQ4LDE1IEBACiB9OwogCiAmY3B1MCB7Ci0JY3B1LXN1cHBseSA9IDwm
cmVnX3ZkZF9jcHVfZ3B1PjsKKwkvKgorCSAqIERvbid0IHNwZWNpZnkgdGhlIENQVSByZWd1bGF0
b3IsIGFzIGl0J3MgYSBmaXhlZAorCSAqIHJlZ3VsYXRvciBEVkZTIHdpbGwgbm90IHdvcmsgYXMg
aXQgaXMgaW50cnVjdGVkCisJICogdG8gcmVhY2ggYSB2b2x0YWdlIHdoaWNoIGNhbid0IGJlIHJl
YWNoZWQuCisJICogTm90IHNwZWNpZnlpbmcgYSByZWd1bGF0b3Igd2lsbCBjcmVhdGUgYSBkdW1t
eQorCSAqIHJlZ3VsYXRvciBhbGxvd2luZyBhbGwgT1BQcy4KKwkgKgorCSAqIGNwdS1zdXBwbHkg
PSA8JnJlZ192ZGRfY3B1X2dwdT47CisJICovCiB9OwogCiAmZGUgewpAQCAtNjgsNyArNzYsMTMg
QEAKIH07CiAKICZncHUgewotCW1hbGktc3VwcGx5ID0gPCZyZWdfdmRkX2NwdV9ncHU+OworCS8q
CisJICogRG9uJ3Qgc3BlY2lmeSB0aGUgR1BVIHJlZ3VsYXRvciwgc2VlIGNvbW1lbnQKKwkgKiBh
Ym92ZSBmb3IgdGhlIENQVSBzdXBwbHkuCisJICoKKwkgKiBtYWxpLXN1cHBseSA9IDwmcmVnX3Zk
ZF9jcHVfZ3B1PjsKKwkgKi8KKwogCXN0YXR1cyA9ICJva2F5IjsKIH07CiAKLS0gCjIuMjAuMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
