Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 959102CB62
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JVubn2D7TX2qjTLpAOKhqd6joA1DobLVAYzx1viyClM=; b=KQGdSiIb67p/Hj
	GcHzhGyQKT+/GonlnFalgE1gfMQ031vVhZnyGYsaqV20B0RU8v3jOFGaSsEd/xpc/snq1Dj3rOGWn
	JJ8wa+o2B0NFrFuAd8SJrEx817E6T7jmgDHZu5U2/IwSis7VIbzktZRbhs27Bmx/FE2xlkN5GW8jD
	OrnPyE4lv3AdCXMkgmizv55JzBf3YAnY1y7B3csnlgotNdPbm0gTCB48qC5Z8qNjYzEvgSb4rmlpn
	L8E+fIy8vKGEE1BBty9ix3PufFXDy0IAydtNd4zkfgaEKD9JdDE+9rcy8S2l7wFxgv4/0o6W+/W5Z
	tYDvm9q5LnLkWrLDhMRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVekr-0008Va-Jo; Tue, 28 May 2019 16:15:13 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVekd-0008Jg-Rg
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:15:01 +0000
Received: by mail-wm1-x344.google.com with SMTP id f10so3623750wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 09:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K/XHCO5OpLMI7hm5w9MXtKPLk5GaTtp3symSRQtLrEY=;
 b=EyM0D5GavuIb2ZHU3Ey2iuUrjxx5yFjgNYGJtX+8Zore5n4WfYzSMfIgAzEJ3qhtY1
 AB2Nw7oYWntoTt98IWF8mPj9NyY/gWEkWlQR9cOLwsqfFJk072jFtE/XYVsSxoPCr738
 pNqDCTpQ8OzCwhfrXj5tgKUrqX37WBC1im8BiXLOtQn4R5VLAsaCbcCcOZMPW3M4Fpqp
 z2PPhRioLG6uAcgAvrBiYITN2get23JzjqSzdqf3sUf2huHQUSBFLezGXXkQM9WRAwuf
 dcZeZ0/WyT8I6lpM/QCXXFP8KGkbzITB6Hqi3pOGKNZbpHo7KxGem4JdEFbN4yE0Bedl
 wU/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K/XHCO5OpLMI7hm5w9MXtKPLk5GaTtp3symSRQtLrEY=;
 b=ZeqDQEduskQM0wJoRUuMNWhSR7q4dEPzoSZ8J8x58n+aVjtS+jCt9HCMfOy8kHQTeL
 nfZrJAol5lhrvfY9+qTpSDjLR1lq1432J1kkHz2qGDOciziir0+UpVdXb0ustsYxrO6F
 o1g1EzfGIPFEqXcG8oDOagsUISARjfu+T0Hsl0mqYKZN9SuO4u8SbRZfIIQxy3PsCe6U
 yl2LS0BtaEfT3KvQDLPfuGbUM7luzVztmOU0NEzvnOHL5lfQOh4SIEluDYOGCDsdGsDm
 c0b+nwiUVNFyabUDcCYIzPEcm3BzyOq0GNs4Lv2qE3giK01dz9evfnDWWH/L7BImfUtb
 4Ehg==
X-Gm-Message-State: APjAAAVQ5j+KFIBvD1Q/a8IhnN0afvBnjkz3BlMj1snYe6B3HxJDnwQW
 2vNGXDJ86FlBd6WRtiG4eLE=
X-Google-Smtp-Source: APXvYqyEiWcBV7Gxq6C/3F0I6ecov4ivFns4OBUBpcj4xXx1WWacV5+gIGN9TAndCV5ongzHxXWx0A==
X-Received: by 2002:a1c:730d:: with SMTP id d13mr3664693wmb.88.1559060096018; 
 Tue, 28 May 2019 09:14:56 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id l14sm13678787wrt.57.2019.05.28.09.14.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 28 May 2019 09:14:55 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 01/12] dt-bindings: media: sunxi-ir: add A31 compatible
Date: Tue, 28 May 2019 18:14:29 +0200
Message-Id: <20190528161440.27172-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161440.27172-1-peron.clem@gmail.com>
References: <20190528161440.27172-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091459_890451_0C4AECBC 
X-CRM114-Status: GOOD (  15.35  )
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
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
ZW1AZ21haWwuY29tPgotLS0KIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRp
YS9zdW54aS1pci50eHQgfCA5ICsrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbWVkaWEvc3VueGktaXIudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL21lZGlhL3N1bnhpLWlyLnR4dAppbmRleCAyNzgwOTg5ODdlZGIuLjJlNTlhMzJh
N2UzMyAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlh
L3N1bnhpLWlyLnR4dAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVk
aWEvc3VueGktaXIudHh0CkBAIC0xLDE2ICsxLDIxIEBACiBEZXZpY2UtVHJlZSBiaW5kaW5ncyBm
b3IgU1VOWEkgSVIgY29udHJvbGxlciBmb3VuZCBpbiBzdW5YaSBTb0MgZmFtaWx5CiAKIFJlcXVp
cmVkIHByb3BlcnRpZXM6Ci0tIGNvbXBhdGlibGUJICAgIDogImFsbHdpbm5lcixzdW40aS1hMTAt
aXIiIG9yICJhbGx3aW5uZXIsc3VuNWktYTEzLWlyIgorLSBjb21wYXRpYmxlCSAgICA6CisJImFs
bHdpbm5lcixzdW40aS1hMTAtaXIiCisJImFsbHdpbm5lcixzdW41aS1hMTMtaXIiCisJImFsbHdp
bm5lcixzdW42aS1hMzEtaXIiCiAtIGNsb2NrcwkgICAgOiBsaXN0IG9mIGNsb2NrIHNwZWNpZmll
cnMsIGNvcnJlc3BvbmRpbmcgdG8KIAkJICAgICAgZW50cmllcyBpbiBjbG9jay1uYW1lcyBwcm9w
ZXJ0eTsKIC0gY2xvY2stbmFtZXMJICAgIDogc2hvdWxkIGNvbnRhaW4gImFwYiIgYW5kICJpciIg
ZW50cmllczsKIC0gaW50ZXJydXB0cwkgICAgOiBzaG91bGQgY29udGFpbiBJUiBJUlEgbnVtYmVy
OwogLSByZWcJCSAgICA6IHNob3VsZCBjb250YWluIElPIG1hcCBhZGRyZXNzIGZvciBJUi4KIAor
UmVxdWlyZWQgcHJvcGVydGllcyBzaW5jZSBBMzE6CistIHJlc2V0cwkgICAgOiBwaGFuZGxlICsg
cmVzZXQgc3BlY2lmaWVyIHBhaXIKKwogT3B0aW9uYWwgcHJvcGVydGllczoKIC0gbGludXgscmMt
bWFwLW5hbWU6IHNlZSByYy50eHQgZmlsZSBpbiB0aGUgc2FtZSBkaXJlY3RvcnkuCi0tIHJlc2V0
cyA6IHBoYW5kbGUgKyByZXNldCBzcGVjaWZpZXIgcGFpcgogLSBjbG9jay1mcmVxdWVuY3kgIDog
SVIgUmVjZWl2ZXIgY2xvY2sgZnJlcXVlbmN5LCBpbiBIZXJ0ei4gRGVmYXVsdHMgdG8gOCBNSHoK
IAkJICAgICBpZiBtaXNzaW5nLgogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
