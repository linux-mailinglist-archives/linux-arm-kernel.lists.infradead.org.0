Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B6AD2831
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 13:40:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KP8ny1gAv5y+NZE5yWMrPIydD9yYmc+BT+OYi07JWbU=; b=Lwi
	OTLFeKdXbPPNQAoWDCWZJ29LUCKI5Y6YfV9hfZGjm/8gMwOUfqFITrkMzmhgiukfLyXy8QhxCtse6
	9hfugR0lr3WRfXHfPZ5sCDKI/LDAD39o0MZj6f4wbak/5Qyo0tumEKRQEepx3IY2qFYXliJu160Yv
	YTjGIbS92MDpoLpVWfC7U7UmlOY1OG6U4WFz0FqNiVkgPR6Uws0UyL/X61TFKzwfejyKmFyGLqcbB
	o3lyrw+W/RkSSvH74AdRMLw7rS7O5W/FUONLUCY86In8LywaAhopcUl+7oQlA2ii448xWl3iolLV7
	yuZEIZbybsfpF82I6KAPX7ur66Ir9zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIWnt-0002ZR-Pb; Thu, 10 Oct 2019 11:40:21 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIWne-0001uL-2P
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 11:40:07 +0000
Received: by mail-lj1-x243.google.com with SMTP id a22so5881335ljd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 04:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=2IJCjxfMEpSRJkS++DhjtARW+QNPbTjOBtr+8H3u40A=;
 b=uYRdsI8te0eaDiHtkdh5R/+OqlHAVSLkJADtZJTeFydF4Y47RT8kzwre6xDI4j34zl
 5HdWus2lQAcfjCbqzA71PLvMUI4AYSLWiGgnnZqbibnE62hQ8JnUzXgn/rNxo6+zo6iw
 jH/WkAqyIFtaq1HQNOxSYIrHxWjmHDKbl+WLr/QN7nMcYTJy2KeLDkee8hDbdKsI2c5j
 a2tnpwEyTOk3T7hb9nG8eEJ3MnvNNy1cPuO5XbOWSoEggnlYpeVSWElDz5deVQphhAyR
 8AyvY9N8sSWnidCRIVsMkEy+ojIPLYkB3CvUJJXGtHXVFQk9gOpakS3USZiLR4i9KtsC
 5vFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=2IJCjxfMEpSRJkS++DhjtARW+QNPbTjOBtr+8H3u40A=;
 b=MWytQbdF6+4sVAqWgi+F/HMeKQEK/ASsgw9Gzf4snS99Qbnv1B9p2abdG/wsaHMsaD
 0U6LeHlc9zYpysVyZWWmwlq20zkJgNOZpgTLZZRA5h8L2Uafg9gn681QWyG7HRBmU1He
 MHBtNSwGS7oucpOI3Ol5VE6H1hMob6PrD4Ji/1WuVgGCN03nNJqthSI9pmELg+0wehjN
 Q0nrwLPsoB9ayqBUli5reutJcDECpHFEetaPpyOw2RbZiguxOSWxFYT6Ojcm0JXbE3x+
 4HEip1leJuBYcdgatlV2k0EiFyscWj7XuzALFM0O6F8B6TBNfusXlyufMQeOedHAu862
 s1+w==
X-Gm-Message-State: APjAAAWzv2hhbfQtKJfkCIMsqyiS+kcIvYH/mAbPCA/NsQnRdSiG6C7b
 6+Drit5NKDNwBw3aAVavnXWQtw==
X-Google-Smtp-Source: APXvYqyHTS+mn7MuuwFxGUfhX8Q5zKTf6UWlXj64K9gUalKuMXGaZnYWVktevenm33lDHwfKhHe5vg==
X-Received: by 2002:a2e:2bc8:: with SMTP id r69mr6210726ljr.147.1570707604133; 
 Thu, 10 Oct 2019 04:40:04 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id p3sm1168937ljn.78.2019.10.10.04.40.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 04:40:03 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH 00/13] cpuidle: psci: Support hierarchical CPU arrangement
Date: Thu, 10 Oct 2019 13:39:24 +0200
Message-Id: <20191010113937.15962-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_044006_146652_07191EE2 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series enables initial support for hierarchical CPU arrangement, managed
by PSCI and its corresponding cpuidle driver. It's based on using the generic
PM domain (genpd), which nowadays also supports devices belonging to CPUs.

The last DTS patch enables the hierarchical topology to be used for the Qcom
410c Dragonboard, which supports the PSCI OS-initiated mode.

Do note, most of the code in this series have been posted earlier, but from the
latest version being reviewed, we agreed on that it was better to re-work the
PSCI backend driver as a first step, simply to get a clean interface towards the
cpuidle driver.

Summary of the main-changes since the last submission [1]:

 - Moved implementation from the psci FW dricer into cpuidle-psci.

 - Re-requesting review of the DT bindings, as we have moved to yaml. No
   changes as such, but tried to clarify a few things in the text.

 - Drop the patch enabling support for CPU hotplug, postponing that to the next
   step.

 - Respect the hierarchical topology in DT only when OSI mode is supported.
   This is to start simple and we can always extend the support on top.

The series is also available at:
git.linaro.org/people/ulf.hansson/linux-pm.git next

Kind regards
Ulf Hansson

[1]
https://lwn.net/Articles/788306/


Lina Iyer (1):
  cpuidle: dt: Support hierarchical CPU idle states

Ulf Hansson (12):
  cpuidle: psci: Fix potential access to unmapped memory
  dt: psci: Update DT bindings to support hierarchical PSCI states
  firmware: psci: Export functions to manage the OSI mode
  of: base: Add of_get_cpu_state_node() to get idle states for a CPU
    node
  cpuidle: psci: Simplify OF parsing of CPU idle state nodes
  cpuidle: psci: Support hierarchical CPU idle states
  cpuidle: psci: Prepare to use OS initiated suspend mode via PM domains
  cpuidle: psci: Add support for PM domains by using genpd
  cpuidle: psci: Add a helper to attach a CPU to its PM domain
  cpuidle: psci: Attach CPU devices to their PM domains
  cpuidle: psci: Manage runtime PM in the idle path
  arm64: dts: Convert to the hierarchical CPU topology layout for
    MSM8916

 .../devicetree/bindings/arm/psci.yaml         | 153 +++++++++
 arch/arm64/boot/dts/qcom/msm8916.dtsi         |  57 +++-
 drivers/cpuidle/Makefile                      |   4 +-
 drivers/cpuidle/cpuidle-psci-domain.c         | 302 ++++++++++++++++++
 drivers/cpuidle/cpuidle-psci.c                | 106 ++++--
 drivers/cpuidle/cpuidle-psci.h                |  17 +
 drivers/cpuidle/dt_idle_states.c              |   5 +-
 drivers/firmware/psci/psci.c                  |  18 +-
 drivers/of/base.c                             |  36 +++
 include/linux/of.h                            |   8 +
 include/linux/psci.h                          |   2 +
 11 files changed, 673 insertions(+), 35 deletions(-)
 create mode 100644 drivers/cpuidle/cpuidle-psci-domain.c
 create mode 100644 drivers/cpuidle/cpuidle-psci.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
