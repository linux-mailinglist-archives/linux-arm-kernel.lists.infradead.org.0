Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB3094F73
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 22:58:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Tkzj94yEi8XUKhGKeMfrVZkoe3gVQkKmVuVzDPtILSw=; b=MzK
	heCU0XZWgZcvPS/41dCBJOawUyeyzgYrXDtX+tCEVEtQkPUzSRWdF2GPDpM5KgBUbWxC6KSOe9nUU
	blZYf+ZNq8EGceJsGClHPNQ+ioiAPbE3a7OWxt0EuXB3W75OBGRWc9gan7Z/2r5U/ZwkTMtQnh4XR
	zGXeqnFLIiLGnhaAfvhCK9XjKGto5Gcd8RsnYOiaApWmj+4QHa7MzPNQP1FTnxM0wt+/oSImTYN+5
	qFb2WPc7+Rul6x3CgInr9ICXT00+MKRDUfAYH9J22XmnDU5UkhQukW+ozqmpwNP3UFTOlX27+A/0x
	7falxeKs6Qu9k2SptLWPccx1GxOBeig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzojV-0005kY-N5; Mon, 19 Aug 2019 20:58:29 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzoij-0005GR-8c
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 20:57:44 +0000
Received: by mail-wr1-x442.google.com with SMTP id y8so10103304wrn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 13:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=XjZALN5ZxOMq51Km/q6wKAo29aol3+Lfl2pvPVUUYDA=;
 b=caF+HLO+gD0O8dot0Rc/h5HI7ZCaW+pFdlXAGtKNOQxH8RNdEod3cLclsOpc/EOQuW
 5WhyNvUHk3cIBpZcmuJPMPcwZUMTzVkhgRFbXA9wnsJczBIADsbUOmiBZz48asG4Rb4a
 qlsnP8x/1roA3e+9Ev84iV92Nc4Sx2XlCgm6bvBF60MJrc6fs/wW3aBSQOsZ50lBONgR
 Q17PcCtJ9O4JU84dpU+aUDETpwQRqWV3ywl3pXtbXaQIK94M/SS8uJG9lpw4MwEME1e+
 d5JnrkO0kdrQBvZvTgeIFhjmnjt8+64bSwYKXQlacVhQb2XOGGu00fDXo5x3ySsMW2Jo
 96oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=XjZALN5ZxOMq51Km/q6wKAo29aol3+Lfl2pvPVUUYDA=;
 b=hz+mD4Bq65M1rFhHgoijY4MoWTx340Fb6EYOBQPLkdGJ9nYYMjLuyhryaeJrmLg0fs
 Y637Xk6BvXNoDi9xIhPzcJXwCJCZne5NC3sbD2EIcGxoFsnIHhrrGL1T5FxvW0uwr4cZ
 bnVoGgPwRW9hId2RsbS0Xd29t/8lwZzvpmFNHam05umZ6iNzInCeIxlZJ0DzStzJnSFd
 YDUSkrqxslePBECDZDLsgopvFo4LSEexcKMWrbd0Hp44vpiSTAQ+/bHL/nZtMUXI/XuV
 YdOP4ev6MF6w8poCXt0AwHmLhB+2Ja0kJkZZs/z2SIe3RKy2glN41QWA/L2nCTZSUtaO
 asBQ==
X-Gm-Message-State: APjAAAXoHjBnW3GC1lNL3okR1pftae3DwoyQeDdxMHZDsayndysiCD58
 1ZUFWwlD1diWfJXtqkAQyv1G8A==
X-Google-Smtp-Source: APXvYqz9WZxaA6Akttb0nW+/OyASsAQVAGMAqMZ2ByUCoLVhazpd5JEnDftjQNSnntVsZhun2UQB6Q==
X-Received: by 2002:adf:9484:: with SMTP id 4mr28519190wrr.14.1566248258013;
 Mon, 19 Aug 2019 13:57:38 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:247e:6e55:2413:b21c])
 by smtp.gmail.com with ESMTPSA id n9sm6698423wrx.76.2019.08.19.13.57.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 13:57:37 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mathieu.poirier@linaro.org, linux-arm-kernel@lists.infradead.org,
 coresight@lists.linaro.org
Subject: [PATCH 0/8] coresight: etm4x: Fixes and updates for sysfs API
Date: Mon, 19 Aug 2019 21:57:12 +0100
Message-Id: <20190819205720.24457-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_135741_349363_6C55E430 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: suzuki.poulose@arm.com, mike.leach@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Review of ETMV4 sysfs code resulted in a number of minor issues being
discovered.

Patch set fixes these issues:-
1) Update for ETM v4.4 archtecture.
2) Add missing single shot comparator API.
3) Misc fixes and improvements to sysfs API
4) Updated programmers documentation and reference.

Mike Leach (8):
  coresight: etm4x: Fixes for ETM v4.4 architecture updates.
  coresight: etm4x: Fix input validation for sysfs.
  coresight: etm4x: Add missing API to set EL match on address filters
  coresight: etm4x: Fix issues with start-stop logic.
  coresight: etm4x: Improve usability of sysfs API.
  coresight: etm4x: Add view comparator settings API to sysfs.
  coresight: etm4x: Add missing single-shot control API to sysfs
  coresight: etm4x: docs: Additional documentation for ETM4x.

 .../testing/sysfs-bus-coresight-devices-etm4x | 183 ++++---
 .../{ => coresight}/coresight-cpu-debug.txt   |   0
 .../coresight/coresight-etm4x-reference.txt   | 459 ++++++++++++++++++
 .../trace/{ => coresight}/coresight.txt       |   0
 MAINTAINERS                                   |   3 +-
 .../coresight/coresight-etm4x-sysfs.c         | 308 +++++++++++-
 drivers/hwtracing/coresight/coresight-etm4x.c |  32 +-
 drivers/hwtracing/coresight/coresight-etm4x.h |  18 +-
 8 files changed, 902 insertions(+), 101 deletions(-)
 rename Documentation/trace/{ => coresight}/coresight-cpu-debug.txt (100%)
 create mode 100644 Documentation/trace/coresight/coresight-etm4x-reference.txt
 rename Documentation/trace/{ => coresight}/coresight.txt (100%)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
