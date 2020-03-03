Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F04717841E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 21:36:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AHLCTdPJA3LYLhl4C6Uih/XO8Pimmt9NZ0Wa2VW1w4M=; b=VeoBMqKs6xwf+q
	OCAh+eA2EAcz71gTMq/7rpzrIpnZOLeiQ3wxBqCxBf1/6KWdjp0GsXHXFY6IowqTKZ4EUn9D88oAO
	x0Di//FwWeFZBVsfmzYTe+F6X/OpKMbH2I3CXwTZAVpuZvNOLdKTnSj4RpDY/iS1m/mNaIkphY2BB
	E6uQwULInlZdS0QY/hOv2MIFlHRSbsIZn4D0ioql5GqIa7zWIZunNh1xb+/AY5JlN07j7771qx60K
	bryfOd4OQ0TGIKD8uSVJnY+CXZg6W+Vo+vcZTpHA18UFzqRyTsOv1PFZflajau5gicI8YWEa1dR3h
	lQgMHQLm1S9ytShzxvWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9EHH-0004mH-Dl; Tue, 03 Mar 2020 20:36:31 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9EH5-0004l9-Rc
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 20:36:22 +0000
Received: by mail-lj1-x241.google.com with SMTP id 143so5043755ljj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 12:36:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5+bbZY+UsNnL04aTIiRpPmDrPXRA/0XmSjw+FgKbksk=;
 b=MYdizgquonWpZBpfTQ0jzerK3kK9LeudcWxqxJ710OmJ3xPJXuGTJy9PMARessYarQ
 RJCnp9pKXBCsDDk5QJC+LDix5HGrmNOlG4159dEsvuoIMVofyHybb5PZoQ3VJHjEW2O4
 uZGu7eeWv/4kJ+f0W+umTqAHZ+s6Cst+KhrgYUN5srxUgzM53QS8yORqxHWzb24ebYBs
 86ZuCfk2d6ZQ/XeDwgvM/ax4OTWoyWyNsvF9djVefusgQEmGRXAGHPo0pjzraimis4VL
 LZDq1l6640NeHHEIsHh+0dut90Z4ONsCGjBrmOxyjgarr6dGyn8YSIW/odBez8wylQSy
 QMBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5+bbZY+UsNnL04aTIiRpPmDrPXRA/0XmSjw+FgKbksk=;
 b=Or7tY2eERgEq9xTSudE+w2cC9CXWNRQlnlgM8M5gL7iOR024mZ3EY8XD6f5/PdxGQY
 WAwhavpBi5PSm+7SWiMsyOXDsqjOTVTXZcP8t9V78qCYP/MUgSzcPyCFzitJhsQBrWYQ
 gmyHYllfcPIwcmKa0r/qU+LVdZ8lxSLqlhp2D40Z/woyNETNhYJZj57dWsFrkmF15vqV
 9qeOosBmNzuLYM0mbXpO3dRX8cxK3DsB6L+q7Xhx91NSw7HekkcXLSSCKTIwn0g1tanS
 dTKEfeIuhnlLBeI7CbO+y/6UCFoi4DG5NvnNQfWTh56ptKDhyJBcuIgTiqee2YRzQm1H
 9u5A==
X-Gm-Message-State: ANhLgQ0rEiNItCayKQTwPeXLvwN7VcAdwNNJMNwUSqoRvs/EUinwfIlf
 V8moNVoG6ECzSiF29NtW+NnVBA==
X-Google-Smtp-Source: ADFU+vs3C98soMOJnxS970oeUUzODjBIS+POFjrHM2XmE9VThLMxFSqHh+D6NIBRdP/2VoBr1tq/QA==
X-Received: by 2002:a2e:80c3:: with SMTP id r3mr3439399ljg.105.1583267777636; 
 Tue, 03 Mar 2020 12:36:17 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id t195sm1339532lff.0.2020.03.03.12.36.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 12:36:16 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org
Subject: [PATCH v2 0/4] cpuidle: psci: Some fixes when using the hierarchical
 layout
Date: Tue,  3 Mar 2020 21:35:55 +0100
Message-Id: <20200303203559.23995-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_123619_957208_055E0E63 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Changes in v2:
	- Small changes to patch 3 and 4, see their changelogs.

While collaborating with Benjamin Gaignard to deploy the hierarchical layout
for an ST SoC, it has turned that I have clearly missed to test a couple of
corner cases in recently added support to the cpuidle-psci driver.

This series are fixing the issues we have found.

Kind regards
Ulf Hansson


Ulf Hansson (4):
  PM / Domains: Allow no domain-idle-states DT property in genpd when
    parsing
  cpuidle: psci: Fixup support for domain idle states being zero
  cpuidle: psci: Split psci_dt_cpu_init_idle()
  cpuidle: psci: Allow WFI to be the only state for the hierarchical
    topology

 drivers/base/power/domain.c           |  2 +-
 drivers/cpuidle/cpuidle-psci-domain.c |  6 ++
 drivers/cpuidle/cpuidle-psci.c        | 92 ++++++++++++++++-----------
 3 files changed, 63 insertions(+), 37 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
