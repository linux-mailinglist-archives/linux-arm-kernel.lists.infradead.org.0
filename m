Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B9F1B0A49
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 14:47:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0XL6hIC0PaPBiSPcIUgxVYLsnYcfG9P/2exz2cNAlFY=; b=Nib2bSh3N378th
	QkylCrIeL9fFjebNkqJKbuu99HzEXlS7sJtZfzlJ/LQ/DodCdV8a4vsnbo8syWmpU9HIVC+zSYVk/
	MtOEOAy1NRbWpKmMH1iIZogh69u6iRNwkSHUeXOBriBd19G6W287bXJupYBrQ0+4xa71V5xDZfMN7
	65OXe7iek86jNKWoyuKamIhKnvG8qAIQtvR7spBa2tllrtUMjygl1WvlhSZn2x7VFR3xVxxurD30Q
	u5HAv1SWQYMpyYNSMk2ruVhA6n9fapTXCzZE7L+8N9KVRGfiaA1LdIanPZS+D37L1uLzr9Cj5/NT7
	cr+lHT/2Q9JZvuFVS32A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQVpu-0007Au-5r; Mon, 20 Apr 2020 12:47:42 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQVov-0006fR-CX
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 12:46:42 +0000
Received: by mail-wr1-x431.google.com with SMTP id g13so9943791wrb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 05:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n/ha8QAQ1qR8D+PPkPVAqbB8YM+gWp3JsCHNoS/IoFE=;
 b=VfHuYExQZ97JSY37qYtKiIzXOvUHrwNWaDOzQk27e9rqoAuanaoWWV2xShG3NO1wdN
 7K6HuEEHVzdCEKRVx47481DWd9e2BpWd+B//oXI3k9PFJiVJRBHTmzAPa4q+/mY+ijQ0
 0SEcBPSsbgJYw1kqYpSxXL7adM5iPgrY9LG/4zgjAg12c23/qjBFXOLVfqpR087WVNvz
 uEc6O2r7kbOrir8rgAZvNePdwMjsEDvu3h/B9vmBzEnWpOAQTuhrMCNXbqs10DXauygd
 nN1muoiob6bj3y2t1VyxjXM82llz4lHaVOvCR1AhbaFDWusaoNpgrgZrD9dRcHnVVJqf
 +xKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n/ha8QAQ1qR8D+PPkPVAqbB8YM+gWp3JsCHNoS/IoFE=;
 b=l1QNjFShP7+43oUtOfA9jhl2htadVYfAinlgzBVdgKubjnzq0pisQ/mvhRfBsRR2d6
 T9mCoLNK96NMc6LfEKNVkXTyfjCtiqEktzI2QB9QWsxaTQobkt7dt91b/HYw1lZ9anb6
 W6hSN8PECxvP+Y3IqOH8iuaK22B0ekehL2f8ZN1LU25ENLd9OQC4gST3XV0OTUsJ9BsJ
 RfgEDZQOUjAyLzZidCafPfL2iezS5SyV4LCg38wwWvBHk3z9JsmiqIe+AmP8c2MAosrA
 psgL07DUNmWTT2eJdEdAV+savh7D75rxCTOmv8SEeGef8Y/yIPQx6o8Zru4YnTSbRo0w
 uJLw==
X-Gm-Message-State: AGi0PuY7vghG72CPOo9cGdvjRgDDI/FupMGmm/0aozJxKiV4dNgsLhsE
 cjY4dW4EyaubmLKh5TLasWqcplrRrCc=
X-Google-Smtp-Source: APiQypKnx33o/rJS2SWygWjCaWHRxWvOotCeldokd3D5Mero1E+X+SKoXFMzcdQhRJxrt8mqZeA+8A==
X-Received: by 2002:adf:8162:: with SMTP id 89mr17890205wrm.387.1587386799750; 
 Mon, 20 Apr 2020 05:46:39 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 h17sm1217802wmm.6.2020.04.20.05.46.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 05:46:39 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 2/2] arm64: dts: allwinner: h6: Add thermal trip
 points/cooling map
Date: Mon, 20 Apr 2020 14:46:34 +0200
Message-Id: <20200420124634.32726-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200420124634.32726-1-peron.clem@gmail.com>
References: <20200420124634.32726-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_054641_418520_60D4065F 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+CgpUaGlzIGVuYWJsZXMgcGFz
c2l2ZSBjb29saW5nIGJ5IGRvd24tcmVndWxhdGluZyBDUFUgdm9sdGFnZQphbmQgZnJlcXVlbmN5
LgoKU2lnbmVkLW9mZi1ieTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+ClNpZ25l
ZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgfCAyNCArKysrKysrKysr
KysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCmluZGV4IDM3MGU3N2I4NmZlMS4u
NjBkYTE2Mjc3NzJiIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9z
dW41MGktaDYuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGkt
aDYuZHRzaQpAQCAtOTY0LDYgKzk2NCwzMCBAQAogCQkJcG9sbGluZy1kZWxheS1wYXNzaXZlID0g
PDA+OwogCQkJcG9sbGluZy1kZWxheSA9IDwwPjsKIAkJCXRoZXJtYWwtc2Vuc29ycyA9IDwmdGhz
IDA+OworCisJCQl0cmlwcyB7CisJCQkJY3B1X2FsZXJ0OiBjcHUtYWxlcnQgeworCQkJCQl0ZW1w
ZXJhdHVyZSA9IDw4NTAwMD47CisJCQkJCWh5c3RlcmVzaXMgPSA8MjAwMD47CisJCQkJCXR5cGUg
PSAicGFzc2l2ZSI7CisJCQkJfTsKKworCQkJCWNwdS1jcml0IHsKKwkJCQkJdGVtcGVyYXR1cmUg
PSA8MTAwMDAwPjsKKwkJCQkJaHlzdGVyZXNpcyA9IDwwPjsKKwkJCQkJdHlwZSA9ICJjcml0aWNh
bCI7CisJCQkJfTsKKwkJCX07CisKKwkJCWNvb2xpbmctbWFwcyB7CisJCQkJbWFwMCB7CisJCQkJ
CXRyaXAgPSA8JmNwdV9hbGVydD47CisJCQkJCWNvb2xpbmctZGV2aWNlID0gPCZjcHUwIFRIRVJN
QUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD4sCisJCQkJCQkJIDwmY3B1MSBUSEVSTUFMX05P
X0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+LAorCQkJCQkJCSA8JmNwdTIgVEhFUk1BTF9OT19MSU1J
VCBUSEVSTUFMX05PX0xJTUlUPiwKKwkJCQkJCQkgPCZjcHUzIFRIRVJNQUxfTk9fTElNSVQgVEhF
Uk1BTF9OT19MSU1JVD47CisJCQkJfTsKKwkJCX07CiAJCX07CiAKIAkJZ3B1LXRoZXJtYWwgewot
LSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
