Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 451AC182057
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 19:04:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gl84Sh6oPUfakT92tRuEuOy8y3Myf1xrmAkQbQE9Hqk=; b=dWdDReX/v0V+zL
	+IO7MNwIfHVRsbBjDL0wWolpKfX/fNPh99b/5U7bYBZj2gv4mF/1eXbIxGgg04bAd6zAqy1KOR0u1
	awgCCSd6/6YRvU+dis53k5m1OU6rM8wxv2YsIF/p9rpGVYgqcdA4QglMsooNVZNIqtI1+X9Yr43mO
	dxwSj+ix12jmLNBfHZrqkjWofh2rbq8E+NEssyuZQiroOKmCg8TOaBp66R+FAGpxJeKF7CqjPEGkG
	UWEYnjoxQBX9fwChVpWzQS5HXqYtIBOBc8zUC58QKDLawnn8GhyZANGzgAP30n3QISTVU7REO4JRh
	1wSfFgiCK23TWbjsmQew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC5ia-0002XL-SF; Wed, 11 Mar 2020 18:04:32 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC5iN-0002WN-H0
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 18:04:20 +0000
Received: by mail-pj1-x1043.google.com with SMTP id ca13so1403323pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 11:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZLV1pW5+10dGSALbp9ys5qPxSkJ4XmOqLqRRLgiQ85s=;
 b=ostU2oBecXbFdYJdZxhu8798rJhX/hIhfvbX0gyP5tLTLbjreX0SjPCS8vZJkjJ9Ja
 kS0GRVqAdkPuX0uKBA30FoeNzPEKliWQcsjvPOmiN204ICePLfImVTRWtFEdvLHlk3yp
 JecceE0eAQl65hpkbjxcPQtflnvDyhMoc8PCNticHorXX8Fxd9z+HmQLYHvyWU9SEyXf
 11GoiKVw0sJUxrdx393VZ2RBslhkFopCADwbIOqwByAD59Rjg0RNIo2am5DJznGM483m
 0PpGIBZcadQbJfOUTMGsjSXIrJhMNiCALPvDcX3KtKhiBnb7L02OmIo6dNbSDH2B1eG+
 k/4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZLV1pW5+10dGSALbp9ys5qPxSkJ4XmOqLqRRLgiQ85s=;
 b=drdL0zi3lScjfvvm6nhNC9L8KqWVAc7tMqh9+GYlkJ2pmmcedWe49FBOz4+M3khUro
 hrb4auAcn1aQWrILnch+gLj/DBmOV29HH7URPZ47cT1ZB70Q/BQ5C4CC6RbAyMVOQ5i+
 Gc/31tje2UtkunGsvgQAi5jC0qA6EM5DvibK5SQ237HGbnrVRKKBiz96fkCB6DfwA1Z/
 DED9vvWFXURg+KVpkrmjl5gnyNqJ5MgetAvuV9Q0ShrDYe4jL61FxLxrP/TiOgEVovmG
 /OvKZ1Ix5hLDEhT+7kcEKLwX1hNXOjLaCuFUvsiirf5FIp22qZVO98AnlJi8V3xgs/XT
 AZtQ==
X-Gm-Message-State: ANhLgQ2kpUoHC7BwH0MeZw8NqP3UcUCNATy7kk50mXXT9qYEMIU6q03/
 GWzm0XF+LYIgtnEfUGDQPPjj7gddx7Q=
X-Google-Smtp-Source: ADFU+vuk+wg+MXWUuASic3fiiH4IEcuUwVm19QdZvou7PzSgL1PmffO/cnkqVBGFa2IXgKk7XSpq8g==
X-Received: by 2002:a17:90b:3582:: with SMTP id
 mm2mr4578954pjb.17.1583949857722; 
 Wed, 11 Mar 2020 11:04:17 -0700 (PDT)
Received: from localhost.localdomain (97-126-123-70.tukw.qwest.net.
 [97.126.123.70])
 by smtp.gmail.com with ESMTPSA id k9sm6079383pjo.19.2020.03.11.11.04.16
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 11:04:17 -0700 (PDT)
From: Richard Henderson <richard.henderson@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/6] arm64: gcc asm flag outputs
Date: Wed, 11 Mar 2020 11:04:10 -0700
Message-Id: <20200311180416.6509-1-richard.henderson@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_110419_595446_4D839CF2 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With gcc 10, arm64 includes support for flag outputs, much like
x86 has done for years.

The most effective use of this within the kernel is in uaccess,
where we can branch directly on the Carry flag output, e.g.

	adds    x3, x2, #0x2
	csel    x1, xzr, x1, hi
	csinv   x3, x3, xzr, cc
	sbcs    xzr, x3, x1
	b.ls    ffff800010084b5c <aarch32_break_handler+0xec>

Changing __arm64_rndr has very few uses, and so the effect is
very minor, but is also changed for consistency.

Finally, a mostly unrelated fix to uaccess.h, which I noticed
while poking around the header and looking at the assembly.
Has no effect on generic kernels that include ARMv8.3 support,
but eliminates a branch if one starts to play with the knobs.


r~


Richard Henderson (6):
  arm64: Add asm/ccset.h header
  arm64: uaccess: Use named asm operands for __in_range
  arm64: uaccess: Untie the input address in __range_ok
  arm64: uaccess: Use asm/ccset.h macros in __range_ok
  arm64: archrandom: Use asm/ccset.h macros in __arm64_rndr
  arm64: Hoist CONFIG option out of ALTERNATIVE in uaccess.h

 arch/arm64/include/asm/archrandom.h |  7 +++--
 arch/arm64/include/asm/ccset.h      | 19 ++++++++++++
 arch/arm64/include/asm/uaccess.h    | 46 ++++++++++++++++-------------
 3 files changed, 48 insertions(+), 24 deletions(-)
 create mode 100644 arch/arm64/include/asm/ccset.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
