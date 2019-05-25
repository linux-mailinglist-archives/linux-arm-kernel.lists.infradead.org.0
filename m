Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BB12A609
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:10:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2SBn+R8GMRRZRcgJOHEqCS5dmG2CMfMm7JCF1WfNwfA=; b=A5zyCjXGHBn+Tx
	tnalOHNu8IB3FtD4c+1vHaVNW40s42m+diu2W908u/UPfhBVZh+gWPfm03xn7gmfqaa8t6OXVe8jU
	MUJ0GEhfep6TwZQ+xUDA727ZmOw1uDOHw1Ii7cfQ2SscOygYEwTFIcdqcpjgpCTPbO3PWUAYLUmvX
	P6E3omWLlES/fAu/ebAnuz/iEXYnFyvTc6mp/LJELQoPi6peu8L2TkAixIH9Br8HobraOhmKVErP/
	P5317JIKTqi+8xhlFoR41Eyetigch6+4XV+3Jlw5Gc2+As7aol7292Y/yoHS4VU+tlYJ+W71Wx20i
	LkOAHxGvhGg6FokQSDRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUb7g-0007CZ-Md; Sat, 25 May 2019 18:10:24 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb6w-0006ni-BE
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 18:09:49 +0000
Received: by mail-wr1-x444.google.com with SMTP id u16so9053572wrn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 11:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a5dpLWzLTGHqoLzmEuuyzv0j7B4AjJYpWV0u2Vp/+l8=;
 b=m4J/SBNV++wPUP3Q2lfu4OcIQeafT8464+M72Ciw2geBym5L3IlPlC8/D4TSyf11+v
 8qDLPoYnhoCt86us0EuV6B09dA+LoFeHFSkAHtigcOaZjjd3YIdHOc1q8oM4m3v9Cai4
 jM5oK7DxKpyU0SDL8l66OvkSczHDixYd69YcFbpulIbMMN99z4HJeFpE5GSzLrvISXQR
 Qf4+54HQxcsTwRqQznwUQHqeZxz4ZQeVinJORTp7oLgNzYHwc6gLUHryxmHNlFydhTMg
 U1Qm3f+KNb5uq4QEQwgU1oQA6kD4J2R40Ehl+yYYU12BYJ8cW8qrKccV3Ri1tVvsPUXs
 DQ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a5dpLWzLTGHqoLzmEuuyzv0j7B4AjJYpWV0u2Vp/+l8=;
 b=LghSPoexr2bb2VqPaDeicNbfFKJdkKTVrZdtp4N43ECNv8gAZ4eQwAmkVgIg9pPX+x
 tmluatKgEgtoSqhFc5/3EGAB7K8FF6ctEbqLEYe/ooCBQ5i65HkSfDaB61FPjyvhgzi6
 WREBq3s2uwjzMIMf5a++xUyGVUMKHbfXbwfU0VE3znjEJV4ZrUaHVTrbUhzZ6JdfNx10
 x7qYEYUh+1yxNCx4Dw5/omfw5C5Va4YbKLDGtrY4ywnRbITsIB3ailfQnFZ52Ya2Dh1X
 fQ82PMLL+DRGJlA5VNzxlxep46wCnFuHsIbIyrc3MzSEodjKqOj8dwhjfcWzT24o9K6r
 9oIQ==
X-Gm-Message-State: APjAAAX46/o4ffWzYyCe24EHX8fEJicLgsT9TLPC/1LeKM+pxJbuQp1I
 pzqQFgqSAKfB2H2BGFM52OQ=
X-Google-Smtp-Source: APXvYqy2yHnmPQd3zV1hveiQKrxBwBy4jQr1o0cCgEEz1aZsNV3dnft83FH/coWeqnUW6441OpZDGw==
X-Received: by 2002:adf:f38a:: with SMTP id m10mr21043667wro.81.1558807770617; 
 Sat, 25 May 2019 11:09:30 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id s127sm5656914wmf.48.2019.05.25.11.09.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:09:30 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 01/10] dt-bindings: media: A31 compatible
Date: Sat, 25 May 2019 20:09:14 +0200
Message-Id: <20190525180923.6105-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525180923.6105-1-peron.clem@gmail.com>
References: <20190525180923.6105-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_110938_484670_62333432 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2luY2UgQWxsd2luZXIgQTMxIGFsbCB0aGUgU29DIGhhdmUgYSBkaWZmZXJlbnRlIG1lbW9yeSBt
YXBwaW5nLgoKSW50cm9kdWNlIHRoaXMgYmluZGluZ3MgdG8gbWFrZSBhIGRpZmZlcmVuY2Ugc2lu
Y2UgdGhpcyBnZW5lcmF0aW9uLgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJv
bi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bWVkaWEvc3VueGktaXIudHh0IHwgNSArKysrLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9tZWRpYS9zdW54aS1pci50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbWVkaWEvc3VueGktaXIudHh0CmluZGV4IDI3ODA5ODk4N2VkYi4uNTNlODhlYmI1
M2ZlIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEv
c3VueGktaXIudHh0CisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRp
YS9zdW54aS1pci50eHQKQEAgLTEsNyArMSwxMCBAQAogRGV2aWNlLVRyZWUgYmluZGluZ3MgZm9y
IFNVTlhJIElSIGNvbnRyb2xsZXIgZm91bmQgaW4gc3VuWGkgU29DIGZhbWlseQogCiBSZXF1aXJl
ZCBwcm9wZXJ0aWVzOgotLSBjb21wYXRpYmxlCSAgICA6ICJhbGx3aW5uZXIsc3VuNGktYTEwLWly
IiBvciAiYWxsd2lubmVyLHN1bjVpLWExMy1pciIKKy0gY29tcGF0aWJsZQkgICAgOgorCSJhbGx3
aW5uZXIsc3VuNGktYTEwLWlyIgorCSJhbGx3aW5uZXIsc3VuNWktYTEzLWlyIgorCSJhbGx3aW5u
ZXIsc3VuNmktYTMxLWlyIgogLSBjbG9ja3MJICAgIDogbGlzdCBvZiBjbG9jayBzcGVjaWZpZXJz
LCBjb3JyZXNwb25kaW5nIHRvCiAJCSAgICAgIGVudHJpZXMgaW4gY2xvY2stbmFtZXMgcHJvcGVy
dHk7CiAtIGNsb2NrLW5hbWVzCSAgICA6IHNob3VsZCBjb250YWluICJhcGIiIGFuZCAiaXIiIGVu
dHJpZXM7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
