Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF28039972
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 01:11:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dljHP37l13bvBbYDqZIfSPRR+vDzKdXcDKsHX9cPLEY=; b=gSZFOr3yEjiek2
	/hGlR63451cVZXYqwNEjkxKJovqZ+gvOdb46yZNm2YLK4zhwXoxNUZi5z7xGD8XadGT+dZbtXFzmW
	dcf4BsKFQolpBeJFkeV9F4rMZJDJSk91ugrNatpn3YsvgIHClRBsMsdCUPx7tTWksMQ1UJVIer5yj
	3WKgJfBuEaIDGuewWIgT9kOSbQZsmYbw9anKnelLE77KfZwatFd6W8e3zh8YO0QKeA9YZ/90bTfsh
	l0ZGLxzCbGkA1tglZHyzwXiFXR2FYwysz34/N/DZKTgUqcstoiIBJhIQ/alglCTI/YIdm29MVBIYx
	p8anFJ3nS1bBa5v3YgIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZO1T-0001CQ-9m; Fri, 07 Jun 2019 23:11:47 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZO0t-0000uQ-AM
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 23:11:12 +0000
Received: by mail-wr1-x444.google.com with SMTP id c2so3618431wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 16:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fSxZI8EC5PtCV9rMqk5b6iP4sZNex2jHwm6j6LayujA=;
 b=IjBjOJm+fMtl+k47Jb+MoI7wK6zNUwAp3Xqv+mnEqlvbZVa1s4gRP7ABh634VkaW6I
 PoWRcLgeCNzkqym0sy0T52hCYiWifkIzGqWXc6BKmrEym83kNcyitLbxXRcEmU0OeMHG
 4buJOpicNyA7ww6YJkl3teBb8vwg40V8pEngLQSRRdSvm0D2dHzJt0vmgPVnRFkRVIQ+
 ixRYXERNbuXC0kUsfitCT1TIBoiCI0dreXZ5FJnyHpo7CBn1zWaQKhPrNpMf+B79fdYG
 nldVaVLE8PD0dumalfgk2/FL8gbiheUGV2GTFTKUlp70ERRkxCvZDAHnqJ+4GGMtXH9v
 2cEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fSxZI8EC5PtCV9rMqk5b6iP4sZNex2jHwm6j6LayujA=;
 b=BeIekVwgETyFmjdzNA3cZPpTTrIeCKlXrsrDomJpd0oEr3kSFgtMcMu/ZYLLFCwo8v
 Ldy64u3nvJvdMh6g5Yue8r7CuINhenFcc3bJ3rerGyUL8Q1GfTZ4TPGo0VYcWJuAGJf4
 hp1OBL4FvK9Csubyn73tf+DsBvXjqtFs6AKHTkCUgCtyrFmEmKKz1m9S3oBcS7/wX9cS
 8jSUgXJdE47Ht4c8V+vFWp3V6EEE9m0YFwbrTm7qBfBZdQGXsQ/RBPkoRoTQapQ+svj9
 Kv5sRlEyCoeIbigAUezL/tfN1l1SIrjEqifet0fNcnC6SkVgbTMBJmyFKO39SgOHQ+Zi
 NtQg==
X-Gm-Message-State: APjAAAV0NjMEothS7gKR+iXIULNl06QtpPUwEcIF0qWBd2qUoiYfJfE4
 R/nE1+98ixkCZ9f1aWgEeqI=
X-Google-Smtp-Source: APXvYqz/xMBVF7B54pr7kQTSNoBThGB1ZrYt6kSdD2qCIyzse+KpGDY3fYfN5JJH/fw+HZ3+9eUtQg==
X-Received: by 2002:adf:ff84:: with SMTP id j4mr8597734wrr.151.1559949069714; 
 Fri, 07 Jun 2019 16:11:09 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id h84sm4108559wmf.43.2019.06.07.16.11.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 16:11:09 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v5 01/13] dt-bindings: media: sunxi-ir: Add A31 compatible
Date: Sat,  8 Jun 2019 01:10:48 +0200
Message-Id: <20190607231100.5894-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607231100.5894-1-peron.clem@gmail.com>
References: <20190607231100.5894-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_161111_370843_53BFA11A 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Sean Young <sean@mess.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEEzMSBoYXMgaW50cm9kdWNlZCBhIG5ldyBtZW1vcnkgbWFwcGluZyBhbmQgYQpy
ZXNldCBsaW5lLgoKVGhlIGRpZmZlcmVuY2UgaW4gbWVtb3J5IG1hcHBpbmcgYXJlIDoKCi0gSW4g
dGhlIGNvbmZpZ3VyZSByZWdpc3RlciB0aGVyZSBpcyBhIG5ldyBzYW1wbGUgYml0CiAgYW5kIEFs
bHdpbm5lciBoYXMgaW50cm9kdWNlZCB0aGUgYWN0aXZlIHRocmVzaG9sZCBmZWF0dXJlLgoKLSBJ
biB0aGUgc3RhdHVzIHJlZ2lzdGVyIGEgbmV3IFNUQVQgYml0IGlzIHByZXNlbnQuCgpOb3RlOiBD
R1BPIGFuZCBEUlFfRU4gYml0cyBhcmUgcmVtb3ZlZCBvbiBBMzEgYnV0IHByZXNlbnQgb24gQTEz
CmFuZCBvbiBuZXcgU29DcyBsaWtlIEE2NC9INi4KVGhpcyBpcyBhY3R1YWxseSBub3QgYW4gaXNz
dWUgYXMgdGhlc2UgYml0cyBhcmUgdG9nZ2xhYmxlIGFuZCBuZXcKU29DcyBoYXZlIGEgZGVkaWNh
dGVkIGJpbmRpbmdzLgoKSW50cm9kdWNlIHRoaXMgYmluZGluZ3MgdG8gbWFrZSBhIGRpZmZlcmVu
Y2Ugc2luY2UgdGhpcyBnZW5lcmF0aW9uLgpBbmQgZGVjbGFyZSB0aGUgcmVzZXQgbGluZSByZXF1
aXJlZCBzaW5jZSBBMzEuCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNs
ZW1AZ21haWwuY29tPgpBY2tlZC1ieTogU2VhbiBZb3VuZyA8c2VhbkBtZXNzLm9yZz4KQWNrZWQt
Ynk6IE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBhcmRAYm9vdGxpbi5jb20+Ci0tLQogRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3N1bnhpLWlyLnR4dCB8IDkgKysrKysr
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdW54aS1p
ci50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvc3VueGktaXIu
dHh0CmluZGV4IDI3ODA5ODk4N2VkYi4uMmU1OWEzMmE3ZTMzIDEwMDY0NAotLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvc3VueGktaXIudHh0CisrKyBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdW54aS1pci50eHQKQEAgLTEsMTYg
KzEsMjEgQEAKIERldmljZS1UcmVlIGJpbmRpbmdzIGZvciBTVU5YSSBJUiBjb250cm9sbGVyIGZv
dW5kIGluIHN1blhpIFNvQyBmYW1pbHkKIAogUmVxdWlyZWQgcHJvcGVydGllczoKLS0gY29tcGF0
aWJsZQkgICAgOiAiYWxsd2lubmVyLHN1bjRpLWExMC1pciIgb3IgImFsbHdpbm5lcixzdW41aS1h
MTMtaXIiCistIGNvbXBhdGlibGUJICAgIDoKKwkiYWxsd2lubmVyLHN1bjRpLWExMC1pciIKKwki
YWxsd2lubmVyLHN1bjVpLWExMy1pciIKKwkiYWxsd2lubmVyLHN1bjZpLWEzMS1pciIKIC0gY2xv
Y2tzCSAgICA6IGxpc3Qgb2YgY2xvY2sgc3BlY2lmaWVycywgY29ycmVzcG9uZGluZyB0bwogCQkg
ICAgICBlbnRyaWVzIGluIGNsb2NrLW5hbWVzIHByb3BlcnR5OwogLSBjbG9jay1uYW1lcwkgICAg
OiBzaG91bGQgY29udGFpbiAiYXBiIiBhbmQgImlyIiBlbnRyaWVzOwogLSBpbnRlcnJ1cHRzCSAg
ICA6IHNob3VsZCBjb250YWluIElSIElSUSBudW1iZXI7CiAtIHJlZwkJICAgIDogc2hvdWxkIGNv
bnRhaW4gSU8gbWFwIGFkZHJlc3MgZm9yIElSLgogCitSZXF1aXJlZCBwcm9wZXJ0aWVzIHNpbmNl
IEEzMToKKy0gcmVzZXRzCSAgICA6IHBoYW5kbGUgKyByZXNldCBzcGVjaWZpZXIgcGFpcgorCiBP
cHRpb25hbCBwcm9wZXJ0aWVzOgogLSBsaW51eCxyYy1tYXAtbmFtZTogc2VlIHJjLnR4dCBmaWxl
IGluIHRoZSBzYW1lIGRpcmVjdG9yeS4KLS0gcmVzZXRzIDogcGhhbmRsZSArIHJlc2V0IHNwZWNp
ZmllciBwYWlyCiAtIGNsb2NrLWZyZXF1ZW5jeSAgOiBJUiBSZWNlaXZlciBjbG9jayBmcmVxdWVu
Y3ksIGluIEhlcnR6LiBEZWZhdWx0cyB0byA4IE1IegogCQkgICAgIGlmIG1pc3NpbmcuCiAKLS0g
CjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
