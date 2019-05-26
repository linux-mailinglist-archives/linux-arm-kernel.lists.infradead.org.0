Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C662AC76
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 00:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4jbeYd1Tc8QSlXaIfu/rtzn/MAF3SvcDQeNQNi7slBQ=; b=lOptlKGdwXbBFe
	twVC1/+PSvNJfN87FiYpG9hSLJkRopM3T9e45Imm5cLNInlgSW0e7CCmYMk7hf6QfCSI76mH9xsy8
	++pjcrNAV6UJKGAL9msbViN48e+uwaWs0Ff1BLF34J2civY9iTEJjosR8Utlh8jrDy4fJoqLhPxQT
	GAjeGp2NkxBLUnmgfbFAsNl8+RrHvlw6EhsxXomnxj3xI9dwUduc30j0w3w5GveBtZZuBPvvAnBjD
	/hCIIbaKtcc9tA3RCVNq7oZNUGrCjb/DF2Hufkhp2wyVSaR9S0Lq6ZCFenPiBtxgJW6aYJm2ScI7P
	Tv8pGB2n2M1Ed2JZAtIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV1by-0005ZO-Br; Sun, 26 May 2019 22:27:26 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV1aU-0003lZ-8K
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 22:25:58 +0000
Received: by mail-wm1-x342.google.com with SMTP id i3so14233791wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 15:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=f1zmDm9n7G9V5x4Qey/KRvnzXY0A1V0uEl3s5XqqEzY=;
 b=ixgQJky1wVVtXXRKn3zr7saZgE0rP9pmcvwINRRzOo4E+4yOBlqJp6zBzQcTxeQxvd
 oLoeCKu2uMQBjgggE97DtGKGjWrO65/MEGPh47rscGdM1xqxkksgLkxo7Z/U0g6nDjue
 Rlono7E6sbZPeJcpU/fE+rm69q09z4XJRCCDSIcRjbymMEY/ITp79RXGhsLlBrFnKRrc
 HScM3R8OvipPRfq/knihNMJxa+4FAP740gDYm+xAf/jnnpdpL4a89frAoGULifp/juvV
 p4Wsq1PIe4uO80qdaewWnRzlQxMgaXe0tmgTBXaiATFozPohVQPODnSS733FOcYgzr03
 o4Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f1zmDm9n7G9V5x4Qey/KRvnzXY0A1V0uEl3s5XqqEzY=;
 b=UO4eYlLZZWSAQBreNFRX6e16R8bsH7gOfSpUuhbezYBhbKaJwKIHUaoWIqXRXdyDWA
 SSQkLkl3L70e6tMHRH3Tj2umXZIFU7hOdPT27ZWxJOyw91/CgRGZCK4Y9rZZGWuERzRM
 CgrJfqvNl6NbrPW/pM6VzdH2ABBzLfel7C/6qzhtUu5+4LWJbHFCVOZ0Wbnls28wgdPl
 1IO5Src3NhA6W7PjPAy7yLI5SoDFYOZgmhpiv4FYsAp7ZcpqlfERBAKKTiiwwunWdMrp
 yhtsGhuuLUeQd663kW1E6/ZWQ3bHWlgahWcl2F1HhzRE7IXhY9n8XqT2aDN+zmMxissm
 0yfg==
X-Gm-Message-State: APjAAAXiL78rSbEK4m4bPju3xQJG2PILTM1RiSJdlNKS1gIWLavZegcI
 ejWiD+VjelR1qvsc4pxA7Hk=
X-Google-Smtp-Source: APXvYqzNxMDvJErVSAYX1CErZnfVjsHwRpfsjf26f1XbSjKAv9Dl2F0QIgr6Sh6x3Y/xidX4lHWv2Q==
X-Received: by 2002:a05:600c:228b:: with SMTP id
 11mr108670wmf.26.1558909552439; 
 Sun, 26 May 2019 15:25:52 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id o20sm10368398wro.2.2019.05.26.15.25.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 15:25:51 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 08/10] arm64: dts: allwinner: h6: Add IR receiver node
Date: Mon, 27 May 2019 00:25:34 +0200
Message-Id: <20190526222536.10917-9-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190526222536.10917-1-peron.clem@gmail.com>
References: <20190526222536.10917-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_152554_669567_11EC36F2 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IElSIGlzIHNpbWlsYXIgdG8gQTMxIGFuZCBjYW4gdXNlIHNhbWUgZHJpdmVy
LgoKQWRkIHN1cHBvcnQgZm9yIGl0LgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxw
ZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9z
dW41MGktaDYuZHRzaSB8IDE5ICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAx
OSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5u
ZXIvc3VuNTBpLWg2LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGkt
aDYuZHRzaQppbmRleCAxNmM1YzNkMGZkODEuLjY0OWNiZGZlNDUyZSAxMDA2NDQKLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKQEAgLTY0Nyw2ICs2NDcsMjUgQEAK
IAkJCQlwaW5zID0gIlBMMCIsICJQTDEiOwogCQkJCWZ1bmN0aW9uID0gInNfaTJjIjsKIAkJCX07
CisKKwkJCXJfaXJfcnhfcGluOiByLWlyLXJ4LXBpbiB7CisJCQkJcGlucyA9ICJQTDkiOworCQkJ
CWZ1bmN0aW9uID0gInNfY2lyX3J4IjsKKwkJCX07CisJCX07CisKKwkJcl9pcjogaXJANzA0MDAw
MCB7CisJCQkJY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LWlyIiwKKwkJCQkJICAg
ICAiYWxsd2lubmVyLHN1bjZpLWEzMS1pciI7CisJCQkJcmVnID0gPDB4MDcwNDAwMDAgMHg0MDA+
OworCQkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMDkgSVJRX1RZUEVfTEVWRUxfSElHSD47CisJ
CQkJY2xvY2tzID0gPCZyX2NjdSBDTEtfUl9BUEIxX0lSPiwKKwkJCQkJIDwmcl9jY3UgQ0xLX0lS
PjsKKwkJCQljbG9jay1uYW1lcyA9ICJhcGIiLCAiaXIiOworCQkJCXJlc2V0cyA9IDwmcl9jY3Ug
UlNUX1JfQVBCMV9JUj47CisJCQkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwkJCQlwaW5j
dHJsLTAgPSA8JnJfaXJfcnhfcGluPjsKKwkJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwogCQl9Owog
CiAJCXJfaTJjOiBpMmNANzA4MTQwMCB7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
