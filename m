Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBF82A573
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 18:38:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y6GiWQM3xB0b5PJYC+/WcyYVZ5KY8hPzvDblKk68FBU=; b=mUKKN0CX9cmZEv
	zaD4LuisxgOPH36SbyfZKatJ8Et0b05nWZG5k5z6K7oqWBJWSQ+bam551p1fm+cQqFpSLpiYd9CAO
	T0NWi60iLjJS0wbKnKqmOsElXj4/ocRXGsvF9iXLayb/qI6BBoVkJgDIkwHMk14Zjl1vtumVEJgOP
	vPtuGgSaglbWG8mie1dtMAM7JsvalLsQ6renuJqpS+B8Jji6qK2LbOt72/Na72fucLSZNY5RjvAiF
	zcvshNAMQzlfogf8KNM9Ql5kamdRNmx2A/KEjOpvjZjsB/o5e5MzbeYucS8JS1zs6m3d4fKFJ+Wjh
	k1bsBEjmjid8DkSjyGTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUZh7-0003uX-6a; Sat, 25 May 2019 16:38:53 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUZgi-0003aa-Li
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 16:38:29 +0000
Received: by mail-wm1-x342.google.com with SMTP id f204so12230332wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 09:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+kaEItJcaTQdesa5AwBphmDXJUwfK0zSJiZ3kKfuxsg=;
 b=tldWfn+OxPKMZx/Oyc1ypAr0UlqU6Gfb3hmG/dfSR1D7w2GpoPTcyQPqYd8+tYpGGw
 b4wcvDj8ybAuteLbUuoZ+aHQiK4l2LsWPlLBVQ0zcV6T7IX8sMcbaTuOh2X1jnrzk/bw
 LQIecJOG389dHZ8bejwGAi0a7Y+IcWLEqmOIcbIDaKfz49mZPUpE69CeSatuusTVC8As
 I7l5xnB9TWjVy36bLabTU3ydRFFbYXoYo5QAh9YrKH0qNBgwBrFGw1cbSdytxM6vGegX
 Ym8FjFr+z8FEPrs40fr0OKNPXaWBCVYGJUep+c5rT0sfOwwq/0wK36OaBFrhRZxQ/wxV
 XX9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+kaEItJcaTQdesa5AwBphmDXJUwfK0zSJiZ3kKfuxsg=;
 b=A0jGlkCd76kwFd4bbqaEoXgwCaHLqROzcuDePj3irO8qcfrUZdNWbfwqHb5w3mEfte
 krqgiYQpM7adHNXy78bqEIG+EWkb6d1fA3NCQbsHKXLKjgJTlKTtl7RajCJzuync0vff
 Db8+cQYFKs8P5J3mLq+f++JmwT7wmKi9VXsbpKRfEk75iX8GahoS7TFHloFj+uo5/Icf
 2KoD+QTsdHih0q8pnZ00s2fw8sesHbAf1kNLDk0mBrWhyoGLCccE4RqM56UA0oTJwJ/a
 zR7b61bW8CYCdMWckWFAnjHZ3PNWjTzQMSk8ACKK4R9qUq/qum3JXJpQYxpazJlVEKJM
 tSQg==
X-Gm-Message-State: APjAAAXRG2fMMg8NCYqX8SF30Ls96tCCiokhe1/imQLtyEKvWBaZ0TeY
 5XqdjZulWFXCHNboskh4R8g=
X-Google-Smtp-Source: APXvYqwB8tQa8yREQBVlZfFZNxC8QpkOD/EKvarkstGMVEuMayTCJjBx4vyzn5n0K91H3QWUM8JSfw==
X-Received: by 2002:a05:600c:28d:: with SMTP id
 13mr20072685wmk.15.1558802306796; 
 Sat, 25 May 2019 09:38:26 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id f65sm9306498wmg.45.2019.05.25.09.38.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 09:38:26 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v2 1/7] dt-bindings: arm64: allwinner: h6: Add binding for DMA
 controller
Date: Sat, 25 May 2019 18:38:13 +0200
Message-Id: <20190525163819.21055-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525163819.21055-1-peron.clem@gmail.com>
References: <20190525163819.21055-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_093828_708154_F17C733D 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKRE1BIGluIEg2
IGlzIHNpbWlsYXIgdG8gb3RoZXIgRE1BIGNvbnRyb2xsZXIsIGV4Y2VwdCBpdCBpcyBmaXJzdCB3
aGljaApzdXBwb3J0cyBtb3JlIHRoYW4gMzIgcmVxdWVzdCBzb3VyY2VzIGFuZCBoYXMgMTYgY2hh
bm5lbHMuIEl0IGFsc28gbmVlZHMKYWRkaXRpb25hbCBjbG9jayB0byBiZSBlbmFibGVkLgoKU2ln
bmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgpSZXZp
ZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KU2lnbmVkLW9mZi1ieTogQ2zD
qW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvZG1hL3N1bjZpLWRtYS50eHQgfCA5ICsrKysrKystLQogMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hL3N1bjZpLWRtYS50eHQgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hL3N1bjZpLWRtYS50eHQKaW5kZXggN2Zj
Y2MyMGQ4MzMxLi5jYWUzMWY0ZTc3YmEgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9kbWEvc3VuNmktZG1hLnR4dAorKysgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvZG1hL3N1bjZpLWRtYS50eHQKQEAgLTI4LDEyICsyOCwxNyBAQCBFeGFt
cGxlOgogCX07CiAKIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQotRm9yIEE2NCBETUEgY29udHJvbGxl
cjoKK0ZvciBBNjQgYW5kIEg2IERNQSBjb250cm9sbGVyOgogCiBSZXF1aXJlZCBwcm9wZXJ0aWVz
OgotLSBjb21wYXRpYmxlOgkiYWxsd2lubmVyLHN1bjUwaS1hNjQtZG1hIgorLSBjb21wYXRpYmxl
OglNdXN0IGJlIG9uZSBvZgorCQkgICJhbGx3aW5uZXIsc3VuNTBpLWE2NC1kbWEiCisJCSAgImFs
bHdpbm5lcixzdW41MGktaDYtZG1hIgogLSBkbWEtY2hhbm5lbHM6IE51bWJlciBvZiBETUEgY2hh
bm5lbHMgc3VwcG9ydGVkIGJ5IHRoZSBjb250cm9sbGVyLgogCQlSZWZlciB0byBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hL2RtYS50eHQKKy0gY2xvY2tzOglJbiBhZGRpdGlv
biB0byBwYXJlbnQgQUhCIGNsb2NrLCBpdCBzaG91bGQgYWxzbyBjb250YWluIG1idXMKKwkJY2xv
Y2sgKEg2IG9ubHkpCistIGNsb2NrLW5hbWVzOglTaG91bGQgY29udGFpbiAiYnVzIiBhbmQgIm1i
dXMiIChINiBvbmx5KQogLSBhbGwgcHJvcGVydGllcyBhYm92ZSwgaS5lLiByZWcsIGludGVycnVw
dHMsIGNsb2NrcywgcmVzZXRzIGFuZCAjZG1hLWNlbGxzCiAKIE9wdGlvbmFsIHByb3BlcnRpZXM6
Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
