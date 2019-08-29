Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA35A27F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:29:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AY8hRCJB+juuvDpQFbCrgwISeD6ZoCpg7WDkEtw1BAY=; b=IVl
	yfdVcztbRINFZ3eWt/hPuOPlPDq+PMyJvS5ae2RAHur3Jcz122IKMeIGSbC8jNH7E1Eb0Z4dO7Re7
	uVTAxr9vxJpDdnx+D7tsoQD3XTtAcIPPWbrOvjBKxyevJJHGbtwnIemSOOHnw1GWeKn6MCO0UTER1
	tGe+1O57Io7bUcsFsTFW2y80EUUfPSm2ql9ugy/w3ZBuwCf4LdvS/TKfEt1ALo83YYuLl/6mMlc9A
	8iNM4nuttfzgG4gMLv4rqsXWnilb7QwKzoKonFiQ/QR8Du2/aYKPG2wJIsviLAtfGgewy1Rk6PxMR
	yfZjBRNN7DVTOyudrTJzqmrzKSmVy4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3R2Q-0003fs-C6; Thu, 29 Aug 2019 20:28:58 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3R2C-0003eW-KP
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:28:45 +0000
Received: by mail-pf1-x444.google.com with SMTP id c81so2840992pfc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 13:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=pkVE8qoyJXUVItF4ryqkoRfFrO/p4Cvt88Q5ZGUeMZQ=;
 b=v0kbbZ14YKmiKKK9dnFcfJX0SqxSCAu9Yw/Z2ylO8dAKqlZgZ3vaOUDvOXfgo3C3hK
 V9uBgToR/IeGGP8dYFCeJRZ2ZOAlGrD40gS2L4RZC5kcNMgKbM53TxAmK0IF3t7pCs+D
 aoXxawVpOrk3O/NIvYyt9ybD+5HqeqGGtKwIsBOelHpQs+KkUolZ2GhHhWdDMZgZQESa
 cRMdYFJ09qR4FOceJk2TtbP+1wKK7ozftqAyp6MrJYULAr+SfaSq9dtfcyaUgrkiWS9l
 mbs4REji6kZK40gj0rrEdlJ0YHTkQqiS4bIrRWNciDzrcY1bcSEgG7NCmN81jtJ6Wdnr
 y8XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pkVE8qoyJXUVItF4ryqkoRfFrO/p4Cvt88Q5ZGUeMZQ=;
 b=Kecf6SsVUgLZvnAIsMf/sXnD1yH9zY1SXyaGWujonOXN7u7ERvmRAlWT5pVg0uh5MP
 eK54AhWpdZvWVbWnW4uOVzuApo/5Gfi0Saw5l3TN6ZZtgcqDuMmeXCO/MsEuIZlM+C8O
 IeEtghZM2PTV3MuVbIP2zibAviuc6NbnefsKdds6REvdJ1fe6mHUxTnxDY84nYvoTk7c
 r957e2VFcSFBNMdcMt5m0d4RIvzaSrsARzPWmMPXlwvmrPFMKi5hF5wVGEW8VJCC/YGr
 /0I531/1+AwJvIVBgjv7YmTAbWW/Chr3FKsBoDe4FYjTXkWS3CBANT4RyR++PdhOD7iK
 Jq4A==
X-Gm-Message-State: APjAAAU9Bl/hpfI+02zUMhO/bUCvCNWbr7BWTrQ77m9/USnORN8aIRmu
 70hLqyjGQrThQfXiMJUjqo1NjRoD7lQ=
X-Google-Smtp-Source: APXvYqy5kow0bi05wuzGCTNhe/uYE86xG7WZimF+c35VN0EpVuPJx7w79RWoaRur77sel0g66+//Yw==
X-Received: by 2002:a62:5802:: with SMTP id m2mr13712733pfb.169.1567110523424; 
 Thu, 29 Aug 2019 13:28:43 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k64sm3620947pgk.74.2019.08.29.13.28.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 13:28:43 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 00/17] coresight:  next v5.3-rc6
Date: Thu, 29 Aug 2019 14:28:25 -0600
Message-Id: <20190829202842.580-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_132844_668006_FF4D1D86 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Good afternoon,

Please consider the following for inclusion in the v5.4 cycle.

Applies correctly to the char-misc-next (d4e34999a757) branch.

Thanks,
Mathieu

Andrew Murray (4):
  coresight: etm4x: Remove superfluous setting of os_unlock
  coresight: etm4x: Use explicit barriers on enable/disable
  coresight: etm4x: use module_param instead of module_param_named
  coresight: etm4x: improve clarity of etm4_os_unlock comment

Markus Elfring (1):
  coresight: etm4x: Two function calls less

Mathieu Poirier (3):
  coresight: tmc: Make memory width mask computation into a function
  coresight: tmc-etr: Decouple buffer sync and barrier packet insertion
  coresight: tmc-etr: Add barrier packets when moving offset forward

Sai Prakash Ranjan (2):
  coresight: etm4x: Add ETM PIDs for SDM845 and MSM8996
  coresight: cpu-debug: Add support for Qualcomm Kryo

Suzuki K Poulose (5):
  coresight: etr_buf: Consolidate refcount initialization
  coresight: tmc-etr: Handle memory errors
  coresight: tmc-etr: Check if non-secure access is enabled
  coresight: Convert pr_warn to dev_warn for obsolete bindings
  coresight: acpi: Static funnel support

Yabin Cui (2):
  coresight: tmc-etr: Fix updating buffer in not-snapshot mode.
  coresight: tmc-etr: Fix perf_data check

 .../hwtracing/coresight/coresight-cpu-debug.c | 33 ++++---
 .../coresight/coresight-etm4x-sysfs.c         | 13 +--
 drivers/hwtracing/coresight/coresight-etm4x.c | 38 +++++---
 .../hwtracing/coresight/coresight-funnel.c    | 11 ++-
 drivers/hwtracing/coresight/coresight-priv.h  | 10 +-
 .../coresight/coresight-replicator.c          |  3 +-
 .../hwtracing/coresight/coresight-tmc-etf.c   | 23 +----
 .../hwtracing/coresight/coresight-tmc-etr.c   | 93 +++++++++++++------
 drivers/hwtracing/coresight/coresight-tmc.c   | 40 ++++++++
 drivers/hwtracing/coresight/coresight-tmc.h   | 11 ++-
 10 files changed, 176 insertions(+), 99 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
