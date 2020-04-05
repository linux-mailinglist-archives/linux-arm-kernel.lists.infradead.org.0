Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD3A19ED08
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 19:37:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K56LUIox95OQxjISRbWZ9O9al3OW2nohelHdDYRldzc=; b=EFclbiOYlT9WzZ
	xKU1a60lRfl8DCICUn1TEBUzOCozRROkN1XcFEIZX9EVTJoBY2ARMJsrhavsXnMZGIfEdPlvZZVhK
	IGs1G+7Snk7tZwj924ak5PnMy0KkRkzX+gDSmwLyoX3OCAEEXfaxK/n1mie88RTBY73HBv9T+FKe8
	z9vDyAHpjlEQsQyB+MaFElOg79Gp3EFjdDyDrQIASaDVtSo0F/u7TQ9dyuhRpOiJqkG+HafLGU+fP
	tHFvE/tyOUsmIUJNo0ibowt7g3m+NpPpyBoE3O8GPIHdNJWcZZu5CHTUKlBBPzEwTscNRkaYPFjrQ
	bgatjgFRHOMhD4RcJPWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL9DK-00031p-Nf; Sun, 05 Apr 2020 17:37:42 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL9Bt-0001aU-0m
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 17:36:14 +0000
Received: by mail-wm1-x342.google.com with SMTP id y20so1411791wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 10:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nFAsHjVU6b7NNT38u9ettTWIqYB/IZzmmPnlZ2m+olc=;
 b=qV2G48ZU/GRR8qj7behLADB0E7+tqrPv8+OwH+8pHoxRPWrQ9PmnUWvRFN2jwqUrsT
 /l51yPoc58h9fkQT7tNQBwrRxIc8X/ZrggXtI+eDQwDHHNaIvUCX9c9Nt3kS25EX3tZ0
 uTUTCVVVYxZWKcSVpNANAZcTIoVAxcRiUe3qr7wP+RCGv57Rz4Cy0hU4sH4oNfgJCdiP
 7Z9fntAo/NmcvGQn8P+5TxKWScrUEKWrDfT4LldHQimFx/rgttHkJJMzQIqxeP1WVy2V
 RDZPOvYLkq36AhLzTtRj9LkKF3ApIHrdY7z8bxyEo/8y9mBO6hocPJVorWvQhStNCAX1
 JnGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nFAsHjVU6b7NNT38u9ettTWIqYB/IZzmmPnlZ2m+olc=;
 b=SlpOU/xx1LMWsw8W37JmzlZlrkIfm78F319EbIHsOR79KZUMz0xl8OJ99GBpSl99T0
 eP3ch0txJ/i6usXyks+nrDlMje3MJden/KJeoMQjUKXeUmFV3pDbdreLEuwK/S6ucdyl
 adkS5zaZbk2tF1vbO6V0iXPnnpe6PWh/7NE5MrTXI8uiNXOuN+sBETZQyvdtikHnWa0w
 +RjTycMOJFVOlzUFFgx5XNSrUj2I+nCUf7A726qqp68Ab32xG+axQkRGXhCinwaSGVX3
 AwCCx21HtXMEfv4BcEBbM6Gn6Cjl2ZWqXl4Iyke6lO6YCoaCBMwL8xJ6kVjj8qBpNkKN
 pNqw==
X-Gm-Message-State: AGi0Pua5OeY5XWd9A6NzDY5z0Q+43lSFI/0s1raz35SxMAWqJZX4T3uX
 KLBpzET3jdy2NHM/uSpJi5Q=
X-Google-Smtp-Source: APiQypJPysQWZFaE8PWMr/LYe7GjHyFAHhd6zdO721IN0w1NByz1NXKmyFHLoD2vVuEXGbGbRHX6kQ==
X-Received: by 2002:a1c:9cc6:: with SMTP id f189mr697924wme.75.1586108171751; 
 Sun, 05 Apr 2020 10:36:11 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id s13sm6031669wrw.20.2020.04.05.10.36.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 10:36:10 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 6/7] arm64: dts: allwinner: h6: Enable CPU and GPU opp
 tables for Beelink GS1
Date: Sun,  5 Apr 2020 19:36:00 +0200
Message-Id: <20200405173601.24331-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200405173601.24331-1-peron.clem@gmail.com>
References: <20200405173601.24331-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_103613_071873_F6B48277 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW5hYmxlIENQVSBhbmQgR1BVIG9wcCB0YWJsZXMgZm9yIEJlZWxpbmsgR1MxLgoKVGhpcyBuZWVk
cyB0byBjaGFuZ2UgdGhlIENQVSByZWd1bGF0b3IgbWF4IHZvbHRhZ2UgdG8gZml0CnRoZSBPUFAg
dGFibGUuCgpBbHNvIGFkZCB0aGUgcmFtcC1kZWxheSBpbmZvcm1hdGlvbiB0byBhdm9pZCBhbnkg
b3V0IG9mIHNwZWMKcnVubmluZyBhcyB0aGUgcmVndWxhdG9yIGlzIHNsb3dlciBhdCByZWFjaGlu
ZyB0aGUgdm9sdGFnZQpyZXF1ZXN0ZWQgY29tcGFyZSB0byB0aGUgUExMIHJlYWNoaW5nIHRoZSBm
cmVxdWVuY3kuCgpUaGVyZSBpcyBubyBzdWNoIGluZm9ybWF0aW9uIGZvciBBWFA4MDUgYnV0IHNp
bWlsYXIgUE1JQyAoQVhQODEzKQpoYXMgYSBEVk0gKER5bmFtaWMgVm9sdGFnZSBzY2FsaW5nIE1h
bmFnZW1lbnQpIHJhbXAgcmF0ZSBlcXVhbAp0byAyNTAwdVYvdXMuCgpTaWduZWQtb2ZmLWJ5OiBD
bMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIC4uLi9hcm02NC9ib290
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cyB8IDEwICsrKysrKysrKy0K
IDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEu
ZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3Mx
LmR0cwppbmRleCBkZjZkODcyYzM0ZTIuLmQ3NmEwZGQ3NTIyMiAxMDA2NDQKLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cworKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRzCkBA
IC00LDYgKzQsOCBAQAogL2R0cy12MS87CiAKICNpbmNsdWRlICJzdW41MGktaDYuZHRzaSIKKyNp
bmNsdWRlICJzdW41MGktaDYtY3B1LW9wcC5kdHNpIgorI2luY2x1ZGUgInN1bjUwaS1oNi1ncHUt
b3BwLmR0c2kiCiAKICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KIApAQCAtNzAs
NiArNzIsMTAgQEAKIAl9OwogfTsKIAorJmNwdTAgeworCWNwdS1zdXBwbHkgPSA8JnJlZ19kY2Rj
YT47Cit9OworCiAmZGUgewogCXN0YXR1cyA9ICJva2F5IjsKIH07CkBAIC0yMjcsNyArMjMzLDgg
QEAKIAkJCXJlZ19kY2RjYTogZGNkY2EgewogCQkJCXJlZ3VsYXRvci1hbHdheXMtb247CiAJCQkJ
cmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8ODEwMDAwPjsKLQkJCQlyZWd1bGF0b3ItbWF4LW1p
Y3Jvdm9sdCA9IDwxMDgwMDAwPjsKKwkJCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMTYw
MDAwPjsKKwkJCQlyZWd1bGF0b3ItcmFtcC1kZWxheSA9IDwyNTAwPjsKIAkJCQlyZWd1bGF0b3It
bmFtZSA9ICJ2ZGQtY3B1IjsKIAkJCX07CiAKQEAgLTIzNSw2ICsyNDIsNyBAQAogCQkJCXJlZ3Vs
YXRvci1lbmFibGUtcmFtcC1kZWxheSA9IDwzMjAwMD47CiAJCQkJcmVndWxhdG9yLW1pbi1taWNy
b3ZvbHQgPSA8ODEwMDAwPjsKIAkJCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMDgwMDAw
PjsKKwkJCQlyZWd1bGF0b3ItcmFtcC1kZWxheSA9IDwyNTAwPjsKIAkJCQlyZWd1bGF0b3ItbmFt
ZSA9ICJ2ZGQtZ3B1IjsKIAkJCX07CiAKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
