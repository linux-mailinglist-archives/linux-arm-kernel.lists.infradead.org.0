Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F45BD4643
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 19:09:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hrFdRZ2e/T9KhlbO7e2nm3F5aBEbzP6L/ZmQgmhRlf4=; b=D6kqJxR1lb9l35
	HX1uehn6UVqNquJjjLyVLcQgrtOfERQajrxyY7zzorx0eVz3382iHec3keYLHd1v1myVaqt7FG5wb
	7NBd5duF1D1DXnusMm1SykYN5TyVo5/e1xEXp14Sg469t8U01VAqiu0kwCr8iU7xz1b20PzpRetK4
	12VPn0SK6BqvlpMxoFil1QHpgwzF11QxW2O2JCHlZJxBLxoctaj8pcbB+/Cn4jM+5dexTOV1H6+B2
	ZAb+y1AUjew7wdVlkbzGdNHTMpKcxtFFJgd0bXNvDeYioay5vCipYZzByyhTqtdw+SgX61806tTCO
	Y9F2qBIiJX8MP8wyI1Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIyQ7-0005R7-20; Fri, 11 Oct 2019 17:09:39 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIyPy-0005Pg-1H
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 17:09:31 +0000
Received: by mail-wr1-x441.google.com with SMTP id b9so12778373wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 10:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kZD/slGPT+HURYuc4jWGCyYNKABVQeEvONTiAAt2BlM=;
 b=TJlaeQWiw+rm/0HShaNai1fxJWuC7DNfKVSt3cNH3e/lPFzqKpow7XdQ+CN6hrPe3Q
 u7R8v+HJQVWuTT7x9Lo6AdEgH2T3QfwxM2+t/dSL/jHchu2/MCFHXNd2wlsk7Z/JeCjx
 vCUELlAKszmHdPSRkhQ0zwqK88EMwW6F+dP3pwYNUmKcRfbAO4WR8ZEomP8iAJNd/Xaq
 bRTxOpvui7Glx9S3bdTcl6GbMqt4IbeD1tU0n7p87LaFjFfl6GMTXC+cEhaeXIPriZs0
 gjoBP79sVfVYg8+Kh0s0jyLqWvgqiGsppTbOr8gxEJOPQ+hr1GjkvrmkbhA2KuEhLtOk
 AR2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kZD/slGPT+HURYuc4jWGCyYNKABVQeEvONTiAAt2BlM=;
 b=UeR5qeDN58VIm2Ivw1LH/WO1HEk/jy6VpUX+fPDsAB8iseRFLbBjVR9lqYXG/xYRhu
 pSPE+9uLhTZ8MCbDw0PgeAJp1iwCDjiAEjHmZM7pN2i5RxIqKr36i34x2DAo9R6g4lDE
 O5JVNK/jlXPlAhSxjYSXIhsUTdu/gvp5W11LMKNY2NG/a0AJqmG8niJpc57GVBJ9msvd
 Pc1fvoFV5O8hvtURYEFH0ngoTPkDObMEw4aTuyMePvbyRk05drXPFFDjBBTY7R/69rld
 ae7KjjUgsZc2cy6szHN48d1SItJnx9ERkMffM2xZTh0t6cJTU9Aicm4WSyiu0LUAhJzl
 jUiA==
X-Gm-Message-State: APjAAAXPCnMig2SA3ktpmx4q2ED16qN7BL8hASkIyc+GVeK5CQj0SggU
 KMhwnfNMMFwZekzbfjfQywep/Q==
X-Google-Smtp-Source: APXvYqx+AinXmXrqVF+PPFAOtYaBKjKMwZsF2oXux9p9r13CenuQJ0Xno3u34QkatlluV5fjC1P2dQ==
X-Received: by 2002:a05:6000:18d:: with SMTP id
 p13mr143885wrx.396.1570813768349; 
 Fri, 11 Oct 2019 10:09:28 -0700 (PDT)
Received: from localhost.localdomain (91-167-84-221.subs.proxad.net.
 [91.167.84.221])
 by smtp.gmail.com with ESMTPSA id f9sm11876875wre.74.2019.10.11.10.09.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 10:09:27 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 0/2] crypto: aegis128 SIMD improvements
Date: Fri, 11 Oct 2019 19:08:21 +0200
Message-Id: <20191011170823.6713-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_100930_080688_E593C2DF 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ondrej Mosnacek <omosnace@redhat.com>, herbert@gondor.apana.org.au,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Refactor the aegis128 code to get rid of indirect calls, and implement
SIMD versions of the init() and final() hooks. This results in a ~2x
speedup on ARM Cortex-A57 for ~1500 byte inputs.

Cc: Ondrej Mosnacek <omosnace@redhat.com>

Ard Biesheuvel (2):
  crypto: aegis128 - avoid function pointers for parameterization
  crypto: aegis128 - duplicate init() and final() hooks in SIMD code

 crypto/aegis128-core.c       | 125 ++++++++++----------
 crypto/aegis128-neon-inner.c |  49 ++++++++
 crypto/aegis128-neon.c       |  22 ++++
 3 files changed, 134 insertions(+), 62 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
