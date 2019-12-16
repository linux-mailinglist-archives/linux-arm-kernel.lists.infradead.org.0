Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC7411FCBD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 03:11:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z1GlBF6NQyKIOeECaYfTEnAqtlh1/lsL3dm5b34cfbI=; b=dUJKpHv9W90c9H
	98fRMhCjC0OYbMyKrC2gbxOLbSoZ+QEmERbDA8qXLMBqFydCTeL+qIgmo8tmkw+AC59Vi6XGC9ar5
	25MCjYGCZNlFmAmXrw0mVKu+ToTjmbnzd1NzQYrLfYSgngwjDZHJOUfhxzS6Y/g5bjtmTh2K0XhGF
	N3Q+d0ce5bERSSeWNOCZA6l3wQUvwlniprNpPva3L9Mo+Rsr2ulymp2agCjBjqRjRJQ/2A49GPDEY
	Gd5l+QhbIeJCWrE958O6KAzHAEztX4epVpKclX52R4XNKaeIRcmZsFO6iJobstqEEbJLgk1c67YzB
	s+ncKYIP+RjZFDe/zhrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igfql-0008Kn-RL; Mon, 16 Dec 2019 02:11:07 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igfqX-0008K0-CW
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 02:10:55 +0000
Received: by mail-pg1-x544.google.com with SMTP id x7so2735022pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 18:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dA+Be6hjL2cHUlLT4b0QsKh2SO4TkadtZEXugHfpPn0=;
 b=YFtjl2oOg9s6QG+eXFDBYnsP4sW5M5MAy/pdUOOJ6vuyeF1jflPjV2z/YOo+il9v4R
 /eGDJcWYRPV1NoTwxvKC28S5k8H1bEsJsLsmVv2mt/jVvcBlYNhrgg+B+7pllBvUZw6I
 d3qmgKuQI/28TpQHnmxJ0pAF9x0DLSZMbVaEK+8l14cJvPKAdTYCJnYtt/PNXh5iwi+Z
 ajVNj0fF9ptvGl7KRtstEdNoI5kWTL0NyIAE6eOtR1auwBLObX+NfVqNYtG5/PoE/oIv
 d62acGTLwbz8ud1mB2Jn9d/s0jSRR069/iAUPxmsEijJaOVAR7RfiGz/br8Hvpm6UEHA
 ufEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dA+Be6hjL2cHUlLT4b0QsKh2SO4TkadtZEXugHfpPn0=;
 b=SJD4TNY/zROAQWu/nnE7Q6TiXDaK9MqP6f8mWGaPD9fMOV8qpCquZVIX1JprWJZIEv
 h1wjmnRc4zAHDz3Rx0o46uNUEhqRBziwI3a6/nv9z4Jb1/4qFg3PFCleZClUjOj20U1p
 +qyQiKlZw0skDdF20DvEjM9giU/ivP6/z70A+hERm8tONS7c8rl/JNcknthAwkiqYvO5
 nNUcNQRS0P9N/6ATWh8uGyZb5YqHYQJBb63dp5hrw5JtLL6v4RbflIEqXQc+vocPgVHK
 A2alS/g4UkBdpiZaIFB6YfejRAF/gFkaz7YQnKDc3e/syq5RXiIBya3b8nt8L3+rmtmo
 9Dvw==
X-Gm-Message-State: APjAAAX0cdb+CbMTLULfBSQKbvoKDplNhSK0wb0bHnVr4zCp6kdC72Ml
 LwqG0yK8jElmOQ3z2FDyY35ICA==
X-Google-Smtp-Source: APXvYqylJxqANyN2tsXOloyg9jZCWJSFnvigEIIla7pk6dyyIchgI7ylkTViTT47zhAEhRlY2Fi3yg==
X-Received: by 2002:a65:644b:: with SMTP id s11mr15436130pgv.332.1576462252631; 
 Sun, 15 Dec 2019 18:10:52 -0800 (PST)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id o31sm18900626pgb.56.2019.12.15.18.10.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 15 Dec 2019 18:10:51 -0800 (PST)
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: catalin.marinas@arm.com, will.deacon@arm.com, robh+dt@kernel.org,
 frowand.list@gmail.com
Subject: [PATCH v4 0/2] arm64: kexec_file: add kdump
Date: Mon, 16 Dec 2019 11:12:45 +0900
Message-Id: <20191216021247.24950-1-takahiro.akashi@linaro.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_181053_514738_2AA61D8C 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: bhsharma@redhat.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, AKASHI Takahiro <takahiro.akashi@linaro.org>,
 james.morse@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is the last piece of my kexec_file_load implementation for arm64.
It is now ready for being merged as some relevant patch to dtc/libfdt[1]
has finally been integrated in v5.3-rc1.
(Nothing changed since kexec_file v16[2] except adding Patch#1 and #2.)

Patch#1 and #2 are preliminary patches for libfdt component.
Patch#3 is to add kdump support.

Bhepesh's patch[3] will be required for 52-bit VA support either against
legacy kexec or kexec_file.
Once this patch is applied, whether or not CONFIG_ARM64_VA_BITS_52 is
enabled or not, a matching fix[4] on user space side, crash utility,
will also be needed. 

Anyway, I tested my patch, at least, with the following configuration:
1) CONFIG_ARM64_BITS_48=y
2) CONFIG_ARM64_BITS_52=y, but vabits_actual=48

(I don't have any platform to use for
3) CONFIG_ARM64_BITS_52=y, and vabits_actual=52)

[1] commit 9bb9c6a110ea ("scripts/dtc: Update to upstream version
    v1.5.0-23-g87963ee20693"), in particular
	7fcf8208b8a9 libfdt: add fdt_append_addrrange()
[2] http://lists.infradead.org/pipermail/linux-arm-kernel/2018-November/612641.html
[3] http://lists.infradead.org/pipermail/linux-arm-kernel/2019-November/693411.html
[4] https://www.redhat.com/archives/crash-utility/2019-November/msg00014.html

Changes in v4 (Dec 16, 2019)
* rebased to v5.5-rc2
* use KEXEC_BUF_MEM_UNKNOWN instead of "0" (patch#2)

Changes in v3 (Dec 9, 2019)
* rebased to v5.5-rc1
* no functional changes (since v1)

Changes in v2 (Nov 14, 2019)
* rebased to v5.4-rc7
* no functional changes

v1 (Sept 12, 2019)
* on top of v5.3-rc8

AKASHI Takahiro (2):
  libfdt: include fdt_addresses.c
  arm64: kexec_file: add crash dump support

 arch/arm64/include/asm/kexec.h         |   4 +
 arch/arm64/kernel/kexec_image.c        |   4 -
 arch/arm64/kernel/machine_kexec_file.c | 106 ++++++++++++++++++++++++-
 lib/Makefile                           |   2 +-
 lib/fdt_addresses.c                    |   2 +
 5 files changed, 109 insertions(+), 9 deletions(-)
 create mode 100644 lib/fdt_addresses.c

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
