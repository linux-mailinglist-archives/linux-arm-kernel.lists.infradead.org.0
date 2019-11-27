Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9395010ADB5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 11:29:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/AV7yseLUU29KENZM8CfCEyiBxm4UGZtEkxx2tXKmXs=; b=ij9
	HWrcF9KcDiE1C+191xeEVVTkvf4xhJZqbtj9ZCD9ETV5A2GdCCNZraZwGmdHiIo28R0PuUhyRRxzm
	vpCyhNoaiC7ZQlUqb9hSBl4TuoOkOUShWv4zHeYFaxDhHYplyDKCX80Dej2knFKNbZ3f4h6aT4bqS
	xMiEvM/jEurZxYlD1HaqzOBE4OMQ5l0ymDfwns4FQSEKj8FJyyf3xiVuUm05W3rlxpsDcW1+OQXQh
	8HR1QwCNBOv1qTRe83VK43EBRwmXy0u3axazficcFBziaD3Oy88nxktI71MdIk62Bq2NAx8QptSeV
	l1FNDPqfXZL7DK6O6zkyjAOR3mi5g/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZuZm-0005ZO-Rj; Wed, 27 Nov 2019 10:29:38 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZuZU-0005Xf-55
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 10:29:22 +0000
Received: by mail-lf1-x143.google.com with SMTP id d6so16736083lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 02:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=ix8gklYmB6UDNV/QC3c+tosxDnV18E4E+uiNnO6VScw=;
 b=WjmA9qLe/NecRbZ3fzetc0/1Nm2xYFXmf6V+NnuxS9t/I35sAGxJE5N2A/3ajU1how
 1tmTUhAQ8BZ2SL12A5B+pD1I7QQAgUKS/3lecivVvUrmS42uKZQOvokBmcaKA6fXiyhz
 71cGRHIkFcMNWPhnwTGyeJYz4qUUjDM9W9cgT8Gg6qRWI55mgOTpkJnwhsNeutE+NNbB
 Chcr7Pe9cW7ZF1uEAQMpz7qMtS/jK0OTWPq+BR3+MPTnPSq6HQyxyAAGny6hl2799QzJ
 /ipHdBqyNwQcDJ7CHr5feCfwYuQqGZkZS05veAwKx65zFqrQVAW1uiXiV8e2CU11dm2s
 wiSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ix8gklYmB6UDNV/QC3c+tosxDnV18E4E+uiNnO6VScw=;
 b=PgeLx8S8qmMSHGzUb2A03e51puaaoyufukr0qQSn/ePKi9EMGdyTwqAsbd80Cgut9H
 76EqwtNnD/cAUDyQqTQzn3X1alXxRbMYy9PSg2wJxyiKhe+NJnJ5UMo3PFA77UCDZ9Bj
 vay++drrkQnvVobUBJo+yEPIgkcygCFLgg9OaGEOjWUE2LruawjLDexfsbdk3OFJUp6u
 HFsOlE1spw37RJTdwOglhiV8XB39mRSSe//mvmtwY4z/2VW15DuYI4Mq2Q/Wjvxu1VRW
 L/hecyNUOIh2CPpWghH4UN3U7suQTgHr7q/86fEJdNOeJS0mjZSy3DMXfPVbaPdsM73a
 wpVw==
X-Gm-Message-State: APjAAAUr0tlK0dfdXrwpCv8jJQ8b89H7V8LpMM01PSQpM5DGTf9X2Gil
 nN2qC4PgDP+IzDxQ8Ey2GXvsWQ==
X-Google-Smtp-Source: APXvYqzwxSjoX0WePnCcqKWVwhIrIupw9nuRgrbFXnTzGgsvQBmMgqmcnl+RS0sDa/QqD5iVi1qHMA==
X-Received: by 2002:ac2:4312:: with SMTP id l18mr28284015lfh.38.1574850557532; 
 Wed, 27 Nov 2019 02:29:17 -0800 (PST)
Received: from uffe-XPS-13-9360.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id t9sm6868260ljj.19.2019.11.27.02.29.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 02:29:16 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v3 00/13] cpuidle: psci: Support hierarchical CPU arrangement
Date: Wed, 27 Nov 2019 11:29:01 +0100
Message-Id: <20191127102914.18729-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_022920_227378_C8FE42C2 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rob, Lorenzo, Sudeep - apologize for sending a new version in the middle of the
merge window, but I thought I might as well get this out, especially since
there are only a very small amount of updates. Please review, whenever you find
some time for it.

Kind regards
Ulf Hansson

Changes in v3:
	- Take one step further to completely avoid executing any OSI specific
	code from the ->enter() callback, while operating in the default PSCI
	Platform Coordinated mode.
	- Update example for the PSCI DT bindings to make it compile with
	"make dt_binding_check"

Changes in v2:
	- Avoid to affect the non-OSI path with specific changes for OSI. This
	forced me to re-order the series and a caused more or less minor changes
	to most of the patches.
	- Updated the DT bindings for PSCI to clarify and to include the "psci"
	name of the PM domain to attach to.
	- Replaced patch1 with another patch from Sudeep, solving the same
	problem, but in a different way.

This series enables initial support for hierarchical CPU arrangement, managed
by PSCI and its corresponding cpuidle driver. It's based on using the generic
PM domain (genpd), which nowadays also supports devices belonging to CPUs.

The last DTS patch enables the hierarchical topology to be used for the Qcom
410c Dragonboard, which supports the PSCI OS-initiated mode.

More detailed background can be found from previous submissions [1].

The series is also available at:
git.linaro.org/people/ulf.hansson/linux-pm.git next

Kind regards
Ulf Hansson

[1]
https://lwn.net/Articles/788306/

Lina Iyer (1):
  cpuidle: dt: Support hierarchical CPU idle states

Sudeep Holla (1):
  cpuidle: psci: Align psci_power_state count with idle state count

Ulf Hansson (11):
  dt: psci: Update DT bindings to support hierarchical PSCI states
  firmware: psci: Export functions to manage the OSI mode
  of: base: Add of_get_cpu_state_node() to get idle states for a CPU
    node
  cpuidle: psci: Simplify OF parsing of CPU idle state nodes
  cpuidle: psci: Support hierarchical CPU idle states
  cpuidle: psci: Add a helper to attach a CPU to its PM domain
  cpuidle: psci: Attach CPU devices to their PM domains
  cpuidle: psci: Prepare to use OS initiated suspend mode via PM domains
  cpuidle: psci: Manage runtime PM in the idle path
  cpuidle: psci: Add support for PM domains by using genpd
  arm64: dts: Convert to the hierarchical CPU topology layout for
    MSM8916

 .../devicetree/bindings/arm/cpus.yaml         |  15 +
 .../devicetree/bindings/arm/psci.yaml         | 104 ++++++
 arch/arm64/boot/dts/qcom/msm8916.dtsi         |  57 +++-
 drivers/cpuidle/Makefile                      |   4 +-
 drivers/cpuidle/cpuidle-psci-domain.c         | 302 ++++++++++++++++++
 drivers/cpuidle/cpuidle-psci.c                | 114 +++++--
 drivers/cpuidle/cpuidle-psci.h                |  17 +
 drivers/cpuidle/dt_idle_states.c              |   5 +-
 drivers/firmware/psci/psci.c                  |  18 +-
 drivers/of/base.c                             |  36 +++
 include/linux/of.h                            |   8 +
 include/linux/psci.h                          |   2 +
 12 files changed, 647 insertions(+), 35 deletions(-)
 create mode 100644 drivers/cpuidle/cpuidle-psci-domain.c
 create mode 100644 drivers/cpuidle/cpuidle-psci.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
