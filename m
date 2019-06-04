Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9209434D47
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:30:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZtEB5ZqZmR7JkQKtNPPngjC2wQPDh1kSJrdOPUz0dvc=; b=c/z8AkdTsEBHi9
	A2LQeijz6eBlTMIofBVHtMOxI0/yezO0nzhIYRviBKh1b9MmIBRg/3erb8OuATvNYkTpBdfGvs3q/
	UT6g2BhOlX3f+lZ90HlLvhNG/K8rgu5+Z6GdI81Jw9BQGpcZCKh6gNa2249ZUokz2s+yux2sZrmfd
	kdRqBbwOo8erOAMCkA0jpmZvrsTn6rFm14TT/15stxHleR6AtYIswM4VsmSc/86WUJkF/DiTD7bX3
	00hKngpj7LGwqJYFsiP+hzLIAnDzHlLJRTXHnjsznR+N0wIhkZIeocYhYw6AMdXo2+NyuvPQRjLSO
	nzOA19LYn80kJS+3nBiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCKG-0006KU-Bx; Tue, 04 Jun 2019 16:30:16 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCK7-00064e-L9
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:30:09 +0000
Received: by mail-wm1-x343.google.com with SMTP id 22so732268wmg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 09:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+ItpZv98uGNXVHvsKA+wMDHUe83WSTbZUJdpb4oIfkI=;
 b=bo/YprrUKpC6Rpn6p9wmA2Zo//yrk66+wgvE05Q3EMN6NO4KgNta/Stz+nJy7hfou6
 s+T2+EHU4pICuut13QgBFR6KDRy0fSfap6aQKrnkhsFuGx6LtoesevGE1P3oD/Iljigg
 u+It7fJRJ7CVlLdWVJCk9tNRtPe4ugbFSx8kIPYaDTXo6UZ4jRZeexkUJUYSCqrXhWHn
 qzGRcUZEBxLGwEEEbXt5CKLOQaR8yCw+hJhUxHRsvmkUX8qJ72HOOH8tb4u5x8DLHt0j
 rtjNUX1NNqOO0AfJtBVUO1QPX3AF+YHJhh+o+qIDhmYjj851E/tTV0RD3xHPh6hU0NI0
 cHJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+ItpZv98uGNXVHvsKA+wMDHUe83WSTbZUJdpb4oIfkI=;
 b=MnecQA2GUQb+q9Gvs89Lm9nOWFtkbn18LzvG4C92F0j9eJ3m2ycBnZLvk2g1gikGer
 52DxzXKcsYiQzAexovTw93UMuMfhso/UMr3dcQRjLsQdfDbDd5KQsaSUAT0Mcfu3JUQY
 rjUJTuA0MXURiu8mO6FPxcIDNOp4YmCxRyImAl4xWm0e+elFYNDNUQbcvACNzu2ioI40
 lF4tZIx2xNMYZhSydyKoL9uQLwWI2z4P6qB8bjtfmjFMQVg6iHEqNwE2WnUTJN0Xu+7t
 yNksBLsKhWSm1TU7Nqqbv6nfav+CJI73i+J30qGN+FF7yRYOlkwFDlr/q22kgm/zoGf3
 Mv2A==
X-Gm-Message-State: APjAAAXI/TRYdOXX1YeP8H3rbndXYinhVO4B8F/jVzea++o9NXF+/WR5
 WbRtSqFhlqGkDT2wOUl2Pw0=
X-Google-Smtp-Source: APXvYqyuxr/eS6LF9BsE1JCeLrvKAvLnu/CvPjkOoH4LergYJP1rASUPPT4CJf5ubSK8EpGRgf1Xmw==
X-Received: by 2002:a1c:44d7:: with SMTP id
 r206mr19492073wma.164.1559665806209; 
 Tue, 04 Jun 2019 09:30:06 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id y12sm15108176wrh.40.2019.06.04.09.30.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 09:30:05 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 01/13] dt-bindings: media: sunxi-ir: Add A31 compatible
Date: Tue,  4 Jun 2019 18:29:47 +0200
Message-Id: <20190604162959.29199-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604162959.29199-1-peron.clem@gmail.com>
References: <20190604162959.29199-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_093007_725175_A9400128 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
ZW1AZ21haWwuY29tPgpBY2tlZC1ieTogU2VhbiBZb3VuZyA8c2VhbkBtZXNzLm9yZz4KLS0tCiBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvc3VueGktaXIudHh0IHwgOSAr
KysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3N1
bnhpLWlyLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdW54
aS1pci50eHQKaW5kZXggMjc4MDk4OTg3ZWRiLi4yZTU5YTMyYTdlMzMgMTAwNjQ0Ci0tLSBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdW54aS1pci50eHQKKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3N1bnhpLWlyLnR4dApAQCAt
MSwxNiArMSwyMSBAQAogRGV2aWNlLVRyZWUgYmluZGluZ3MgZm9yIFNVTlhJIElSIGNvbnRyb2xs
ZXIgZm91bmQgaW4gc3VuWGkgU29DIGZhbWlseQogCiBSZXF1aXJlZCBwcm9wZXJ0aWVzOgotLSBj
b21wYXRpYmxlCSAgICA6ICJhbGx3aW5uZXIsc3VuNGktYTEwLWlyIiBvciAiYWxsd2lubmVyLHN1
bjVpLWExMy1pciIKKy0gY29tcGF0aWJsZQkgICAgOgorCSJhbGx3aW5uZXIsc3VuNGktYTEwLWly
IgorCSJhbGx3aW5uZXIsc3VuNWktYTEzLWlyIgorCSJhbGx3aW5uZXIsc3VuNmktYTMxLWlyIgog
LSBjbG9ja3MJICAgIDogbGlzdCBvZiBjbG9jayBzcGVjaWZpZXJzLCBjb3JyZXNwb25kaW5nIHRv
CiAJCSAgICAgIGVudHJpZXMgaW4gY2xvY2stbmFtZXMgcHJvcGVydHk7CiAtIGNsb2NrLW5hbWVz
CSAgICA6IHNob3VsZCBjb250YWluICJhcGIiIGFuZCAiaXIiIGVudHJpZXM7CiAtIGludGVycnVw
dHMJICAgIDogc2hvdWxkIGNvbnRhaW4gSVIgSVJRIG51bWJlcjsKIC0gcmVnCQkgICAgOiBzaG91
bGQgY29udGFpbiBJTyBtYXAgYWRkcmVzcyBmb3IgSVIuCiAKK1JlcXVpcmVkIHByb3BlcnRpZXMg
c2luY2UgQTMxOgorLSByZXNldHMJICAgIDogcGhhbmRsZSArIHJlc2V0IHNwZWNpZmllciBwYWly
CisKIE9wdGlvbmFsIHByb3BlcnRpZXM6CiAtIGxpbnV4LHJjLW1hcC1uYW1lOiBzZWUgcmMudHh0
IGZpbGUgaW4gdGhlIHNhbWUgZGlyZWN0b3J5LgotLSByZXNldHMgOiBwaGFuZGxlICsgcmVzZXQg
c3BlY2lmaWVyIHBhaXIKIC0gY2xvY2stZnJlcXVlbmN5ICA6IElSIFJlY2VpdmVyIGNsb2NrIGZy
ZXF1ZW5jeSwgaW4gSGVydHouIERlZmF1bHRzIHRvIDggTUh6CiAJCSAgICAgaWYgbWlzc2luZy4K
IAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
