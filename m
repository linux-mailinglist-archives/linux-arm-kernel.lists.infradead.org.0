Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 882A13D09B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 17:19:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=D7i44dsbi1amgRqY0yi7SSymUTwyHZbRe965o9GefDY=; b=t1L
	fwUTLKFOHNUOsrtESKl1Fm0O2S941U2D2qCc+ozaPMJ0MdC38eIBsBUze4e9qAgxd/KfyZx3L4QEI
	btq3WKz/c1Zcz544daKwzHXFvt22WzlIIow3TasyApUDVB7ysplznYhEGz6fYmHuAWg4PCXgfcsA9
	27zqBy3Vf9CIq2XfyiiZ0E/zmPerdhku4A1eDDWWjdFSXd9n9wrkqxNvuW7kAQX9YNwHt5+Q9Sz2q
	+KkIuCCQru/ZTFCYU2jg1+4iVkOd4lOIW2MnZ0k2Ss2Qulya5xUkM9YmarAXZ1b0ZoeQ0Ye5jgUDH
	S9qP5QmePYqsyA6aPuhDO6XgXBHDpIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiYx-0003Su-9J; Tue, 11 Jun 2019 15:19:51 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiYk-0003HA-T0
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 15:19:40 +0000
Received: by mail-qt1-x842.google.com with SMTP id h21so14945014qtn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 08:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=kg91m/sJcxPHqFT1g9clpn/F84Kg2JYsIXkgOrosMxA=;
 b=UCGIgQFX7Ax5GANZnFSoE4A2CfOvsxLOhWTJ2CDXQ2pbqSLm68AYfyGIJseVxWV9fP
 m+UafrwcE9+EI9vssGMAvJgOfEVy/4tmwZtBq27pKO9YfU086RV41KvXLS70xrDQLr42
 OZDG1FoJoqyYVOpIPvTfZNzxUx/9/IEVUGbQRN2vH1EHk1fWJEwUfEdsl8U/7HDBG1O5
 wuBdmG8H4Jv6hza0zx1zbtsYkpdi5nzL5zpmq1/nItFUp5c9VMRX+J3oz3eGKIaA5c17
 IHpRc7ucS17TAQapqiJoSA2qLbCVYPApBZH57HJZisa5Q3PmAkOPE1kOZ/2L4k/2s8wd
 HjJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=kg91m/sJcxPHqFT1g9clpn/F84Kg2JYsIXkgOrosMxA=;
 b=k+8HkIS32FOUkA7W/E60UTubk5dAPY+Qr47u7igh1R94iGrM/0WyrEhyM+YxgAf5ow
 7wGUez2dT+zkcBSuhgSo5vqgo6tw8v2VNYrQl4ClghoZmji9jVxwuulOEL4IRXJ+Qs83
 6/X99MYALcjkfPvcofKLaIOkb2WC76qNDHUDiMGPC5Soa/cg5c8WBceVyKQgZ9/DKPi3
 PY2qzCQR7zPt1a5wu2Q7J1whLYKLw2tfqb/zyYS3M/kcul0WB9fkvu1XykgPLMY5sZnC
 bnXkV5gT94ZpNfUzm49DjHMf5pswKFPIJ8HJBhz9R0eNm6kJzaim+Ly58U/QUK5mPvBR
 JSrg==
X-Gm-Message-State: APjAAAWinnhKfVI/FKJoILQn2R4zawPvRhGcf0AToEmcixiGZirYX03B
 WbqPWXuGsV8AIQF5ygAEmw==
X-Google-Smtp-Source: APXvYqxqKUjZCNGzPTqqjaZAUIDyNVMNNbZ7yHVfjGNp9uMe9ANdgOsfpgtugQlDcZNWYCk5lSGQOg==
X-Received: by 2002:ac8:3613:: with SMTP id m19mr63926870qtb.193.1560266374218; 
 Tue, 11 Jun 2019 08:19:34 -0700 (PDT)
Received: from gabell.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id z57sm6538533qta.62.2019.06.11.08.19.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 08:19:33 -0700 (PDT)
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] Correct the cache line size warning
Date: Tue, 11 Jun 2019 11:17:29 -0400
Message-Id: <20190611151731.6135-1-msys.mizuma@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_081938_947401_C586CBAD 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>,
 Masayoshi Mizuma <msys.mizuma@gmail.com>, linux-kernel@vger.kernel.org,
 Zhang Lei <zhang.lei@jp.fujitsu.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>

If the cache line size is greater than ARCH_DMA_MINALIGN (128),
the warning shows and it's tainted as TAINT_CPU_OUT_OF_SPEC.

However, it's not good about two points.
First, as discussed in the thread [1], the cpu cache line size will be
problem only on non-coherent devices.
Then, it should not be tainted as TAINT_CPU_OUT_OF_SPEC because
according to the specification of CTR_EL0.CWG, the maximum cache
writeback granule is 2048 byte (CWG == 0b1001).

This patch series try to:

- Show the warning only if the device is non-coherent device and
  ARCH_DMA_MINALIGN is smaller than the cpu cache size.

- Show the warning and taints as TAINT_CPU_OUT_OF_SPEC if the cache line
  size is greater than the maximum.

[1] https://lore.kernel.org/linux-arm-kernel/20180514145703.celnlobzn3uh5tc2@localhost/

Masayoshi Mizuma (2):
  arm64/mm: check cpu cache line size with non-coherent device
  arm64/mm: show TAINT_CPU_OUT_OF_SPEC warning if the cache size is over
    the spec.

 arch/arm64/include/asm/cache.h | 2 ++
 arch/arm64/mm/dma-mapping.c    | 9 +++++----
 arch/arm64/mm/init.c           | 5 +++++
 3 files changed, 12 insertions(+), 4 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
