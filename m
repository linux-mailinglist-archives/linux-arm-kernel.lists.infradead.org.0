Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C031717C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:46:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vjX66H9o9tVdqpWw+utU7CuSf9xLcT6t3yjaHrwMoVQ=; b=lbFTPqo5UtsTck
	IieagoSAsqmlYKA6JLH/E0oHJmirf4WyNXHnP/pkuNd62Zet6KAWXR+jAbHnvmuKINsDxB0UjN7/h
	kMi18DsM2djlkf+PG6Z4uy+gjf6FXckW0ePCGKGzMteaguqkq9T48t6Hzpu3sO8LlNOsjUfsR/s3a
	qyQQZRu/eBoM9WeKEWrQlfQJcAzAii8UxaJrUyI2xpsKb9uJck+JFlHjvCkYf1IJU7JoHbvaO+df7
	gJCI4+deve5nUkXTSkxgfXUU+kiJRYoibJqbH7szm/zb+iokon8GPOUyb/PrEDg26E0ZkqHalEI9Y
	PhJzEag4DpKUdU++/ekw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7IYZ-0000Jf-4M; Thu, 27 Feb 2020 12:46:23 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7IYQ-0000JB-Cf
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 12:46:15 +0000
Received: by mail-lj1-x243.google.com with SMTP id d10so3227153ljl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 04:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hEHNqtZr84prvnGzPTSQM0fiaw+Go9OgL/MTasulZ2Y=;
 b=WDhilDJ/typ2BlzCcai6/yKM8rKBFjmzv/89fuWAqwLgzVG9CyfSB5jCS4iKBnhXPA
 UYx2q22HanCoBiu6uQWZHkTgy8H0eCi4Y+eHb0oR5CjhltvlIKiTUNt9fcq6WeIFEsv/
 iF9pOXg/hoSWdO8gse0z5/Gw24hawWMMFbz54QpiD7ZtG22k9swkMQEsZePf2vF8lGir
 1TQ0mMpzXOvu6mQPTwmx9TF6vzegax6N57+2HSsLEcSetlxuje5rpcRFS6szZ6OWQl7m
 vu2OqprK3KMDJZwfJv0jjt9HoGVpLk0FfWG+hY46k3woVXg2u6cUEcN6zDU8JDLZKXhK
 n8lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hEHNqtZr84prvnGzPTSQM0fiaw+Go9OgL/MTasulZ2Y=;
 b=Nb9ovVaQYVFO8xDbtrLQPq1aQIXV8KyxJx768MyV4vT3QXT8+jE5742YB70oUkROOB
 tEZwcs/Lkz01TDP64WvRAY6O2CTmK81+OjxzhKQ+nmlGU0mBVrtvpgA/QulUMe4VFqp+
 9x6ORf7A0AJMv6bwMhzvMCOUQsvBkcJxe5EhwIoQ1xmnielfi4wRki/ypttdQ2qFTH5+
 pRbTRUQB31EgjWPeqQFl1bqi08Usuicg1i10XWBT5dh073rNkQhprfyTrvwY+HRJztWh
 TGc6NGQblBzEkH6lq99T9aGeqm+QPBBeJTZorV03Qhs6HMl/Nop+zKetAFlV5IzIZRGA
 BwRQ==
X-Gm-Message-State: ANhLgQ28ds5FQl+7xL1nMs0k73G6TvLNqnfmOxz0A4mvrhXLjNthkzWP
 2CrkC2Bi1bu6O0KoDwZm7pOx4A==
X-Google-Smtp-Source: ADFU+vu7Ql4hYXMx5DHndFRCmO9xHiwjSi9zx0MKy0UsYpX2RBb22uIL9lTDVCtDCFwFTFuBxw4Eqg==
X-Received: by 2002:a2e:6815:: with SMTP id c21mr2538037lja.10.1582807571400; 
 Thu, 27 Feb 2020 04:46:11 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id l16sm2669334lfh.74.2020.02.27.04.46.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 04:46:08 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org
Subject: [PATCH 0/4] cpuidle: psci: Some fixes when using the hierarchical
 layout
Date: Thu, 27 Feb 2020 13:45:47 +0100
Message-Id: <20200227124551.31860-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_044614_460476_66749467 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While collaborating with Benjamin Gaignard to deploy the hierarchical layout
for an ST SoC, it has turned that I have clearly missed to test a couple of
corner cases in recently added support to the cpuidle-psci driver.

This series are fixing the issues we have found.

Ulf Hansson (4):
  PM / Domains: Allow no domain-idle-states DT property in genpd when
    parsing
  cpuidle: psci: Fixup support for domain idle states being zero
  cpuidle: psci: Split psci_dt_cpu_init_idle()
  cpuidle: psci: Allow WFI to be the only state for the hierarchical
    topology

 drivers/base/power/domain.c           |  2 +-
 drivers/cpuidle/cpuidle-psci-domain.c |  6 ++
 drivers/cpuidle/cpuidle-psci.c        | 96 +++++++++++++++++----------
 3 files changed, 67 insertions(+), 37 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
