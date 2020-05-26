Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B93341E202C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 12:53:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LrLw9zcSD4WpYjW/nw+BYCzWza7pKcIS+dsdEajeflM=; b=uol
	F6vKHUJZXWbVUcJBW37w3RlpRfKFkNq9Z8xbYf9/ym5DNfr/hNDSsLeZgaswwJHbqkeJLhUhUv7Ds
	lfIYUGKdNM3PBkuctjirYMVNXdwcxbMGyraNFt7fmzCgrDd0JgGtRz8aBsocr8ayb77G+MBSyCbmO
	/eywTUGOxJ05H1v+MEeLGauozAs+g1JWkv3lEsh1qZIbHUAfeUy5xzaVdNcMXpFvpYMV4+XNyrFsk
	GpNqN+Adm0tbqJl8X6YDEOa2h1botzYetgykY3xnTjF+FcCwvyitZPkbqlhtJEp5DFV4YhEg9mgJ2
	FtnAZ0eiv0ECmIOl4K0s3Kj/xVLOuvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdXD7-0006BW-Dm; Tue, 26 May 2020 10:53:29 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdXCt-0006AN-8A
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 10:53:16 +0000
Received: by mail-wr1-x442.google.com with SMTP id r7so3243927wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 03:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=nU8saynYUtZPSDvPPHKy9vRNOAntHNQylGmuLZh5CaQ=;
 b=bBiqTs9b72ev9erjFKjGGG+M6Nu1PczWqim3YNpR7+Bcug/CY00M+uY1/8NwlBMSXl
 iWN0Wsv2AZqkV060Xy2WUq2vVKNby02ErMinLNop0evTqVO89PdJ9HHaNoWkBzstwIU5
 Qpl6My3j5lM7sJSvdxJQXjw68n7XLb8lo5TTUCxxQxZy8qjDtcxVNOcqU63yc3Nb/vER
 d6tvpiP+CExfjewYAqMY3d/+NFkC2UGSh1cvrD5vSgD4/sM8Ur39+w+tnVNdxn8QBrLj
 M36qQdpdVDP7vxr67OvqQG772+r8I2AMvLOK8/o2l2ru86AtlXljb1p7jH4i8VuToioF
 8f9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=nU8saynYUtZPSDvPPHKy9vRNOAntHNQylGmuLZh5CaQ=;
 b=d9K4vtg7asGyEjODUiYoaT0LoERChq7PRgauoybtUHWolPMHf4mhBToXJhNjWwbnbl
 oXCRw4q+2IOBD0F9H0BqBmGOw3iFxeWsmA2DQOPVvrrmCsALM0xfYEhNsOiXDDtZ268E
 H+PB9ourRUIOCQ33Q6ikzm8A7q0a0ocW99s9dsO5q4cBfAIdhAaaUre5sf1WAf1d2pdH
 94i1ntp7MlWRAVpdzVfJ/dnC2NZsXyB2vI4jGWEUfb/MhLUag1PP/2CM5gM0TS0lA9Q/
 RcQ9HnZiBnoxcetdT7F8wADofffwwvnjgKDRa6NmZYaeuFFrwPK5BUx0vAUjLwxThuan
 eDsw==
X-Gm-Message-State: AOAM530ze0oIhhvL7CIYC6glVepSlQDCy5hQSDcPZvSxWF0/5NgPbtyN
 5Sj30P49Jt05WT+tOVb+6Zx1K7KVGbo=
X-Google-Smtp-Source: ABdhPJzYaV2HXztaCU+TbT3Dx7Qj6u8OyL3CG7a35UxM842Pztr092teJMQu2q6UL5uGnD0UP2XPQQ==
X-Received: by 2002:a05:6000:ce:: with SMTP id
 q14mr21259112wrx.105.1590490393478; 
 Tue, 26 May 2020 03:53:13 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:8bee:312:6092:58f2])
 by smtp.gmail.com with ESMTPSA id s7sm7244395wrr.60.2020.05.26.03.53.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 03:53:12 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, acme@kernel.org
Subject: [PATCH v4 0/1] perf: cs_etm: Allow no sink on command line.
Date: Tue, 26 May 2020 11:53:09 +0100
Message-Id: <20200526105310.9706-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_035315_289560_2CB0DD25 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: peterz@infradead.org, mingo@redhat.com, Mike Leach <mike.leach@linaro.org>,
 mathieu.poirier@linaro.org, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently starting CoreSight tracing using perf requires a sink selection
on the command line:-

sudo ./perf record -e cs_etm/@tmc_etr0/ --per-thread uname -a

Not providing the @<sink> here results in an error and no trace produced.

After this set (alongside the CoreSight change set [1]) the infrastructure
will be able to select a default sink:-

sudo ./perf record -e cs_etm// --per-thread uname -a

This matches with the default operation provided with perf and intelpt.

This patch removes the check that a sink value is provided on the command
line with a NULL value passed to the CoreSight infrastructure if omitted.

Note: If this set is applied to a system without [1], then the effect is
benign as the existing CoreSight infrastructure will detect the error and
refuse to trace.

Applies to Linux coresight/next branch

[1] http://lists.infradead.org/pipermail/linux-arm-kernel/2020-May/734854.html

Changes since v3:
1) Removed RFC designation and distributed to wider audience.
2) Split set into perf user runtime (this set), and CoreSight driver code.


Mike Leach (1):
  perf: cs-etm: Allow no CoreSight sink to be specified on command line

 tools/perf/arch/arm/util/cs-etm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
