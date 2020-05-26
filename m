Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B22D1E2009
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 12:47:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KqjGNk8QUpehlV/xv6H3ibY26p2tRgK/z098f5G74qA=; b=r1r
	hUVncs2gk+85JCbpb4KUOlvsBhLFSyrrkvkiZhShcqYuHeVjXQPskjvt7tWbbtvm/KJZOKjs/7TTv
	YvYeXK4WBgoDUR4yh9WLBDZXJK0mrmeLr/eEt5QDyjjXHDv4hDve0lyz//fvcjFBUUw0F11FIcvyw
	7gl3jxMBLg/VVfNzTGhdhz81NbcxVJF60gdmgljBfCchAVvKAjJD3UTLc1cpSs5Vtcdg+mMNYU/ug
	K0PE+uUpTVdPpo/1KkzTKwBVV+hrkm9dciZm6j9PtwglhMtlEOYeITEIdTa/Aq4/BHgiNhK1R2dm+
	9NDYoc4RusK7L8MI533w58UXBetpz/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdX6t-0001rB-HX; Tue, 26 May 2020 10:47:03 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdX6h-0001py-CV
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 10:46:53 +0000
Received: by mail-wm1-x335.google.com with SMTP id r9so2667542wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 03:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=xtTP13EAR8qA3JpqgH7NgOrGcYs1srhjI6MA7UaS9xQ=;
 b=i8lRWC1AnC8fKiPGCDX5uT6YJXsrut4SK/nLuQ4w2YXeSbeBfLHmbDTwT1h1UjdCjJ
 MFJPqjQYfR2E7Y9iB2s2DfiTLosX95WePGmU7Qr6y8ulizlzaVhe4M5qw2QXYmwZh4YL
 +aUueuHmWMM50YtHXH9Zw2Q4PknMhNNtiGASFhx/UwT9GmHpAGndDp4v8wgKyy7B2ErM
 twIAG74qS6jIsU8h2EPmClhGW8oAAO+pgGS6mT6RBUh5/9fPYHsT82J+IKget9Edtyxk
 CQJEHj3au0klzyQb0zqCXkp4eyA379heSPWH/wAzyh5NgjiY06vhwcjpDc+H2+R866nV
 8fTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xtTP13EAR8qA3JpqgH7NgOrGcYs1srhjI6MA7UaS9xQ=;
 b=lp7Uet+WUIAHwCxLd1VQLowNFai5vkEnUkso1EeXW9m7FowHhT33w7WkRrtpfesC29
 takW8Jm5bDY83c5WLwtc+ghi3uOO4T1Ikj4Oz86plHubs1a184HhVvZ3ps8GbrTHpCug
 SPXWGqZxU37qKdwzxamLw39Jf9HZ8DZEJ+XtGhJRJ1k23fBLSWpAQYcBc7Oo6H0Th2c6
 kAbukY5d3NSA0Z3/YN22Utw3exl+9rw3+XMC2ZgJ3oq1Oiduv96Ex9fuj1Kqt3cv1x8n
 gBN5LTnW+1cEqTnBgbuwZxEQ9mLcPyT2UuDyNubeoNiNeA5qXZOntpQGxjb8r6z50PI4
 OlDg==
X-Gm-Message-State: AOAM533+02HucOn0G9EwdivlzyWhH+lSpgpNpc41uHTAX2FYgbsUtX1+
 1Al4EOkyvRsduO9JcCdNw/gdNNRwVVo=
X-Google-Smtp-Source: ABdhPJyYq0w0TjKNgBu1unTpnpKoQwiT395sAbKFB8FgK4ZC44DZypzmch0TIMb8loj5CmR7MObCmg==
X-Received: by 2002:a1c:117:: with SMTP id 23mr884439wmb.90.1590490008825;
 Tue, 26 May 2020 03:46:48 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:8bee:312:6092:58f2])
 by smtp.gmail.com with ESMTPSA id u3sm393441wmg.38.2020.05.26.03.46.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 03:46:47 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 mathieu.poirier@linaro.org
Subject: [PATCH v4 0/5] Update CoreSight infrastructure to select a default
 sink.
Date: Tue, 26 May 2020 11:46:37 +0100
Message-Id: <20200526104642.9526-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_034652_428020_0E4E4D04 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:335 listed in]
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
Cc: Mike Leach <mike.leach@linaro.org>, acme@kernel.org, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset provides a proposed infrastructure to allow for the automatic
selection of a sink during CoreSight tracing operations.

Currently starting tracing using perf requires a sink selection on the
command line:-

sudo ./perf record -e cs_etm/@tmc_etr0/ --per-thread uname -a

After this set (and the follow-up perf change set) the infrastructure will
be able to select a default sink:-

sudo ./perf record -e cs_etm// --per-thread uname -a

This matches with the default operation provided with perf and intelpt.

Where no sink is specified at the start of a trace session, the CoreSight
system will walk the connection graph from the source ETM, to find a
suitable sink using the first encountered highest priority device.

The CoreSight infrastructure is updated to define sink sub_types to
differentiate between sinks with built in buffers (ETB / ETF) - BUFFER
type, and those that use system memory (ETR) - SYSMEM - types.

SYSMEM types are considered higher priority.

When two sinks are found of equal priority, then the closest sink to the
source in terms of connection nodes is chosen.

The automatic sink selection will also operate if an ETM is enabled using
sysfs commands, and no sink is currently enabled.

Applies to Linux coresight/next branch

Changes since v3:
1) Removed RFC designation and distributed to wider audience.
2) Split set into CoreSight driver code (this set), and perf user runtime set.
3) Minor cosmetic changes.

Mike Leach (5):
  coresight: Fix comment in main header file.
  coresight: Add default sink selection to CoreSight base
  coresight: tmc: Update sink types for default selection.
  coresight: etm: perf: Add default sink selection to etm perf
  coresight: sysfs: Allow select default sink on source enable.

 .../hwtracing/coresight/coresight-etm-perf.c  |  17 +-
 drivers/hwtracing/coresight/coresight-priv.h  |   2 +
 drivers/hwtracing/coresight/coresight-tmc.c   |   3 +-
 drivers/hwtracing/coresight/coresight.c       | 147 +++++++++++++++++-
 include/linux/coresight.h                     |   6 +-
 5 files changed, 168 insertions(+), 7 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
