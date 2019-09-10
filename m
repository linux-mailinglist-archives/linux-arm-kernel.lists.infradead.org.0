Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF678AF332
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 01:20:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HnAIWVwXEr0dHplxSU8IFlzrXJ7n92nB7WG7qT7ZYRA=; b=OzA
	STvn2/MCIn7g5x9YWIQGmzW/v7UUqkp2FO4lR0N2g8+FrVJQQKb6F/6N/C9pvPx3KHas03bk8Y5MW
	Qn+kAT4jYJAOZXaA3Qi4bYLLmbr8wNuKmHaIQvWzwtMrucKIxguL6Hvj8UH+MkECiSF4xhF/aK4zF
	q7r+5GVCbFr+njRa8KUOoBkztYyYGz2pTBMti6YvAsSRSuzajSsnWHrSzRXHEmY3/Gi3L1oMPf8Sk
	4jETLSPPdPE/6+jAQ3TCwhwzzmyV77uJSfXE2AKoMFfAhFxfkrlHjRkLuxnNqEyQGdg/HsWLw4bO0
	Zk4q/YO75f65dvaxo/abaT4cQXkJZkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7pQH-0007xj-IE; Tue, 10 Sep 2019 23:19:45 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7pQ3-0007wy-TT
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 23:19:33 +0000
Received: by mail-wr1-x42c.google.com with SMTP id q17so17671135wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 16:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=SXqvufRx22Snq4CxB9/c8WHZDNZ5MvJ2HzCzsXJqgHM=;
 b=d1fze8HNJ26w372C7MOYSl0YeOaaQILdmYBO7wYoFgSxcXpHBbR34WKtDC+CZBA8oW
 hzVUtpxkmbGLc+gVz/0BJkN6I5oHEKF4b0hJh6xD2qRuSxqBU5d4Tme9MnewwhIYSgYY
 ICTkBMjee+VVdvZKRhEEs4q28XXfEwca/0PJn4eRKJmFo9F5u2u8sLW5m9jP8gZTND6Q
 zo2soetshVnRVzSSOZ4fMMx0yNOVovfVWSBWsehLNJdeuezamtQaXKscWkAvrP0/7ukr
 6KrJvq3hptbx+97kXW8IYpaNqsZdeAhsZWTDbKUW4I2F0wgVueb5FavMUrh1QfVGVdnj
 iFAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=SXqvufRx22Snq4CxB9/c8WHZDNZ5MvJ2HzCzsXJqgHM=;
 b=MulE/Jh5mKrrkswFcEBXQgx0oUYcn42TnBg6q42dm+S4Sk65QjQ9e1kgsrwSMw6tE4
 tHls1d0hw4L9RKHyD6LFy2ELquGjR2KZtL/kZFomaAzofU8jeLaiAukYlcTM7pRgq1Rv
 /cFFjELgaHQ8cPSwtD1e1YDETiRF+sCDyO9s+vHcftz3rtx6L+a0VXbP/z5kXurKWeN7
 2tW4+93T0NXmhe0prtR/LGtl6/eAzh2H2diX1RVezOUNXqAepBbr6zYbtzIXMgffyYK3
 BOKmcutHXpVZruqcymUI3aXNbJQV9nOe8dxz/dk9MoB7Vw7ULgoYqxLSkaRWKXDX0G6Z
 7dlw==
X-Gm-Message-State: APjAAAW1ZjjD7aGA/jvMWyCVGsr5liZF8WtUjmZ/Eka8WU86U3dIeKQG
 9GzNbERdX0w8OwGBSY6CreU55A==
X-Google-Smtp-Source: APXvYqyWtnl6Kb4GtaRJecmKRxkjIVDfunGlWD24PiMglBNoCWz0IXGtn1ox7W76gE/Y95a5RlizNg==
X-Received: by 2002:adf:ef05:: with SMTP id e5mr27760313wro.127.1568157567583; 
 Tue, 10 Sep 2019 16:19:27 -0700 (PDT)
Received: from e111045-lin.nice.arm.com ([148.69.85.38])
 by smtp.gmail.com with ESMTPSA id y186sm2137846wmb.41.2019.09.10.16.19.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2019 16:19:26 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 0/2] crypto: faster GCM-AES for arm64
Date: Wed, 11 Sep 2019 00:18:58 +0100
Message-Id: <20190910231900.25445-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_161932_013696_86EF22A5 
X-CRM114-Status: UNSURE (   6.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: marc.zyngier@arm.com, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 herbert@gondor.apana.org.au, linux-arm-kernel@lists.infradead.org,
 ebiggers@google.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series reimplements gcm(aes) for arm64 systems that support the
AES and 64x64->128 PMULL/PMULL2 instructions. Patch #1 adds a test
case and patch #2 updates the driver.

Ard Biesheuvel (2):
  crypto: testmgr - add another gcm(aes) testcase
  crypto: arm64/gcm-ce - implement 4 way interleave

 arch/arm64/crypto/ghash-ce-core.S | 501 ++++++++++++++------
 arch/arm64/crypto/ghash-ce-glue.c | 293 +++++-------
 crypto/testmgr.h                  | 192 ++++++++
 3 files changed, 659 insertions(+), 327 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
