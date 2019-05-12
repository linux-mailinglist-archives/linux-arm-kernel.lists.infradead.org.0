Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0344C1ADA6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 19:47:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CMu3kClgjG2cQOag9ZupLWtpo1W3C4hTRnToWnefq2A=; b=mdmx7vNpmHXObH
	DPmV5/Dt3a+/z9j539dcCdAnlbz5qsWrkmyeCUXhtBU+D0+ZEEZapeBoZQIkG9eQQvgKKgz8UAvNa
	fhAqY4b6hnsLPoRiaykCZl1wp2JP7rsx39IimJLxvvmudVoDJCMXRclJ1o3R/q1dTgQ8n/y5QhTyg
	HEAX415cAiRXjPpid+HuSyqsl5GlrtWg0GuodrBImWHsoWE9haVoqp3ykb0fXQhk06+2LuDHFDZ1U
	JCjm+hLzL/PtzrLIOknd7BxsgOMAHUCHP8xq1XmBAXa5WhN1Jg1qXmUq2u8NUpb6Ws2ALC02VxHdx
	iD1ump+VE08y9x5EjEkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPsZG-0007AI-Mm; Sun, 12 May 2019 17:47:22 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPsYI-00062i-QT
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 17:46:25 +0000
Received: by mail-wr1-x444.google.com with SMTP id v11so12721988wru.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 10:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PpFKiSt85cZObJXkqM+4NINsxlg/dnFUO7/fP7CyTZ0=;
 b=iMmeY2xPP9Gkz4hrehGXNo2bjZMgTBYhInSPHslK0abKhJynkPsYjC0Q6H1xlqV7ux
 INxX22Cir+VWX1qCXokJ6pP3rd+Upeq2WH/Ioyba0ng+aA3q0dNwJrbCfqJZJrbDdsCq
 BUm9j/kb4b+47ifOlPJIyYuM6/qdfyRQxaJ3PxI8x9jwVBhOoSvF+h9wMbfCKLh404iE
 6DOEaCILT+OL+uDUpfdsmbX+1pXB196Kkq7QUCkoyu0YCa8TDj+XonhZRx9f9yNxPfAL
 M6JI3n5NxNiE9zbvD/UGmmQehA3YDbwjg+wjTNkfj3/69pl2nCwXVA9B9ojgrIoKVEyE
 rQnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PpFKiSt85cZObJXkqM+4NINsxlg/dnFUO7/fP7CyTZ0=;
 b=kMoolV0bu/UudQKLTaPP6LTFevqItSo9xr6iRz9JYVi0lDZBk3Q+LdYtcje86g2ano
 A15oQAL39NDfvuSzagkJjeMjjJ4K/9oFHOR17a5YrQ/xhSw36oZtkWxRuUuCmOhQny+I
 eN1NKmmerw4zAV3/k0gsu8SwWon4NAKzTJP5zgl0KG4oiDmnsX36akTV/FmRLYSS6YDs
 CBljT9HfgGjXBkPT2NnltcPe436Xjk20tJ5mxtsFKavgFrSRaL2OQcfwLKwcUuzcVNh2
 9EvYaJLHS54JxtSDx4vqBCIskc2syG0Z+ZPCXoIbmXjzn5rnhjeiueY7azdeQZh07T4p
 H8vA==
X-Gm-Message-State: APjAAAUTRdqEJmT5i9cBFeLC7YWF2DqRvx6xIYhU1XkJvx57PRZs4jEI
 n/C+/XNfTt8G1i3APTeUulE=
X-Google-Smtp-Source: APXvYqyQ4hsYAZCq/NBC97ZKDgZwacx09DQv3e6Ca9hA1rxZqrgnHiF+a99dzDlj9/3v8toWPtdO8A==
X-Received: by 2002:adf:e2c3:: with SMTP id d3mr14927414wrj.189.1557683181084; 
 Sun, 12 May 2019 10:46:21 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id d14sm9090558wre.78.2019.05.12.10.46.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 10:46:20 -0700 (PDT)
From: peron.clem@gmail.com
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 5/8] arm64: dts: allwinner: Add mali GPU supply for Pine H64
Date: Sun, 12 May 2019 19:46:05 +0200
Message-Id: <20190512174608.10083-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190512174608.10083-1-peron.clem@gmail.com>
References: <20190512174608.10083-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_104623_132240_DFA92A02 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KCkVuYWJsZSBhbmQg
YWRkIHN1cHBseSB0byB0aGUgTWFsaSBHUFUgbm9kZSBvbiB0aGUKUGluZSBINjQgYm9hcmQuCgpT
aWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0K
IGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1waW5lLWg2NC5kdHMgfCA1
ICsrKysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXBpbmUtaDY0LmR0cyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1waW5lLWg2NC5kdHMKaW5kZXggNDgw
MjkwMmUxMjhmLi5lMTZhOGM2NzM4ZjkgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1oNi1waW5lLWg2NC5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXBpbmUtaDY0LmR0cwpAQCAtODUsNiArODUsMTEgQEAKIAlz
dGF0dXMgPSAib2theSI7CiB9OwogCismZ3B1IHsKKwltYWxpLXN1cHBseSA9IDwmcmVnX2RjZGNj
PjsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCiAmaGRtaSB7CiAJc3RhdHVzID0gIm9rYXkiOwog
fTsKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
