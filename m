Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E4B2AC72
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 00:26:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RTaFNEuIjxMjgzjep4YD4dusk2axgRAIQ8BMjYt+teo=; b=Q5HEfQpR7tC7dN
	XUWRjWokd0KIs+8RBK7miRKrn8DA+z8b9A2aXjNGSoa23tyeDtWHgHJWuLKk8c41EtX90plfcV9od
	/zflfilGf+H/14qZy6krGhAkue0Cp7EnlO7NiWJ1KnX495G/0YpBN3JhehQgSzGYjJReAn2bRjpuM
	zKmMf3K03QrPRjL6cpazMmmBLu9qid4betyxfPW1MTzpYLltk/6s/gsROozW6di9ccHgujT7bFV0o
	uO4qdkUZP78Hvjp6B/sbWksDs0udyEztVhHVS4mehRVbReXiBdKt2Z6tLPpOhYDqP79u5fEp4hcc3
	oR2xdxmd1fy1W7OsWUjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV1bI-0004cw-Rj; Sun, 26 May 2019 22:26:44 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV1aQ-0003eS-Ix
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 22:25:56 +0000
Received: by mail-wr1-x442.google.com with SMTP id r7so14963569wrr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 15:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+vaehzousi1ZvrkZVCU5L96BprdpUm+MB96+HzfnfTc=;
 b=fTSTK4loejbHv8OiY2aKVD9yytte8x9X8MJ+h+/6invxOjOVbxrQyD8XqynT6i5j9d
 si92YhxPz7rAoYC28iLJzy18lMkolVeTdBoCz2wosUG9iKMGQLtnZCwsU0tO64J9WblB
 sciupEFJFBcXKvGJr2+bH3K1jbcP1w2+JDUU4EhOZpnhYkkK87d8SzAcGoQHwB1L6b1w
 /2jYpLjLF54ITd6DNvgwuk1RivUAxG6I/68IZfH39pu+oFr6gOM8mECT9a5yClPrgoiS
 fRfShHT+qvFgq0dqngFnvKgQTAx0rtLNWCYn4eP1AWdjvTALf3hZHMDmUNlCTxQ7iUVC
 QQAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+vaehzousi1ZvrkZVCU5L96BprdpUm+MB96+HzfnfTc=;
 b=tqqfR6B9BWYSNG2qx0XAvozMC5i92JVIpqNhb4VJAkxSVaSQihB1ZdwJ0tPeV+9Xnd
 yGXVbWHPkahjCjopPCC3r+NTea34zYEBR6iCfe8X3Kf1cRTjxPdOr72FEcZYJOjAfz8H
 sE/RsuE5xIVnv9Km4pm1JS6e7orihhnT/miACJ+9tLR4lhfsIit/w288JgRabU4xCWe8
 4s5CcaA3XQobp55U6hUZ9qEXm+duxodazBM3fja/yzn/Gy2tkBkDh5Kykp6zeYOeSqls
 kFZplrKcVo9nYeF7i73ytDZZqJ4wGE6BG+Cw8r+jby6I3poYacwSfj+X1nsBvVWdVvW4
 W/5w==
X-Gm-Message-State: APjAAAVpr0DQx8eSq0PNeZdM4PhqdJrAcVJlPQLrsJPXYMjL4YvhTqNB
 B8fwT7wAkwP1RstbUA4nf2U=
X-Google-Smtp-Source: APXvYqyFnqOmHgAzXV2IX3zI/93AwTPEgF89lW1l5NyIbDZwfAuKEuxgfypD2AreMSkzLbi7bkFM3w==
X-Received: by 2002:a5d:4212:: with SMTP id n18mr10471393wrq.330.1558909546828; 
 Sun, 26 May 2019 15:25:46 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id o20sm10368398wro.2.2019.05.26.15.25.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 15:25:46 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 03/10] ARM: dts: sunxi: prefer A31 instead of A13 for ir
Date: Mon, 27 May 2019 00:25:29 +0200
Message-Id: <20190526222536.10917-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190526222536.10917-1-peron.clem@gmail.com>
References: <20190526222536.10917-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_152550_985323_014D59CD 
X-CRM114-Status: GOOD (  15.04  )
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

U2luY2UgQTMxLCBtZW1vcnkgbWFwcGluZyBvZiB0aGUgSVIgZHJpdmVyIGhhcyBjaGFuZ2VkLgoK
UHJlZmVyIHRoZSBBMzEgYmluZGluZ3MgaW5zdGVhZCBvZiBBMTMuCgpTaWduZWQtb2ZmLWJ5OiBD
bMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGFyY2gvYXJtL2Jvb3Qv
ZHRzL3N1bjZpLWEzMS5kdHNpICAgfCAyICstCiBhcmNoL2FybS9ib290L2R0cy9zdW44aS1hODN0
LmR0c2kgIHwgMiArLQogYXJjaC9hcm0vYm9vdC9kdHMvc3VuOWktYTgwLmR0c2kgICB8IDIgKy0K
IGFyY2gvYXJtL2Jvb3QvZHRzL3N1bnhpLWgzLWg1LmR0c2kgfCAyICstCiA0IGZpbGVzIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2Fy
bS9ib290L2R0cy9zdW42aS1hMzEuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjZpLWEzMS5k
dHNpCmluZGV4IGMwNGVmYWQ4MWJiYy4uMTEwNjIyYjMwNzk2IDEwMDY0NAotLS0gYS9hcmNoL2Fy
bS9ib290L2R0cy9zdW42aS1hMzEuZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9zdW42aS1h
MzEuZHRzaQpAQCAtMTM1MSw3ICsxMzUxLDcgQEAKIAkJfTsKIAogCQlpcjogaXJAMWYwMjAwMCB7
Ci0JCQljb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41aS1hMTMtaXIiOworCQkJY29tcGF0aWJs
ZSA9ICJhbGx3aW5uZXIsc3VuNmktYTMxLWlyIjsKIAkJCWNsb2NrcyA9IDwmYXBiMF9nYXRlcyAx
PiwgPCZpcl9jbGs+OwogCQkJY2xvY2stbmFtZXMgPSAiYXBiIiwgImlyIjsKIAkJCXJlc2V0cyA9
IDwmYXBiMF9yc3QgMT47CmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9zdW44aS1hODN0
LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9zdW44aS1hODN0LmR0c2kKaW5kZXggMzkyYjBjYWJi
ZjBkLi44ZDYwM2YzMzA5ZjIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWE4
M3QuZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9zdW44aS1hODN0LmR0c2kKQEAgLTEwNjcs
NyArMTA2Nyw3IEBACiAKIAkJcl9jaXI6IGlyQDFmMDIwMDAgewogCQkJY29tcGF0aWJsZSA9ICJh
bGx3aW5uZXIsc3VuOGktYTgzdC1pciIsCi0JCQkJImFsbHdpbm5lcixzdW41aS1hMTMtaXIiOwor
CQkJCSJhbGx3aW5uZXIsc3VuNmktYTMxLWlyIjsKIAkJCWNsb2NrcyA9IDwmcl9jY3UgQ0xLX0FQ
QjBfSVI+LCA8JnJfY2N1IENMS19JUj47CiAJCQljbG9jay1uYW1lcyA9ICJhcGIiLCAiaXIiOwog
CQkJcmVzZXRzID0gPCZyX2NjdSBSU1RfQVBCMF9JUj47CmRpZmYgLS1naXQgYS9hcmNoL2FybS9i
b290L2R0cy9zdW45aS1hODAuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjlpLWE4MC5kdHNp
CmluZGV4IDBjMWVlYzkwMDBlMy4uMzEwY2Q5NzJlZTViIDEwMDY0NAotLS0gYS9hcmNoL2FybS9i
b290L2R0cy9zdW45aS1hODAuZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9zdW45aS1hODAu
ZHRzaQpAQCAtMTE2Nyw3ICsxMTY3LDcgQEAKIAkJfTsKIAogCQlyX2lyOiBpckA4MDAyMDAwIHsK
LQkJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjVpLWExMy1pciI7CisJCQljb21wYXRpYmxl
ID0gImFsbHdpbm5lcixzdW42aS1hMzEtaXIiOwogCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDM3
IElSUV9UWVBFX0xFVkVMX0hJR0g+OwogCQkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKIAkJ
CXBpbmN0cmwtMCA9IDwmcl9pcl9waW5zPjsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRz
L3N1bnhpLWgzLWg1LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9zdW54aS1oMy1oNS5kdHNpCmlu
ZGV4IDg0OTc3ZDRlYjk3YS4uZjBmNWJhMzQ5YzFiIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290
L2R0cy9zdW54aS1oMy1oNS5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bnhpLWgzLWg1
LmR0c2kKQEAgLTgyMiw3ICs4MjIsNyBAQAogCQl9OwogCiAJCWlyOiBpckAxZjAyMDAwIHsKLQkJ
CWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjVpLWExMy1pciI7CisJCQljb21wYXRpYmxlID0g
ImFsbHdpbm5lcixzdW42aS1hMzEtaXIiOwogCQkJY2xvY2tzID0gPCZyX2NjdSBDTEtfQVBCMF9J
Uj4sIDwmcl9jY3UgQ0xLX0lSPjsKIAkJCWNsb2NrLW5hbWVzID0gImFwYiIsICJpciI7CiAJCQly
ZXNldHMgPSA8JnJfY2N1IFJTVF9BUEIwX0lSPjsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
