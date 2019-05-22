Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C675626A08
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 20:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=h9/FRGFNFU6PHt+jOW2t5rfUXQ8Dspsap4iZyitiQ8M=; b=PnB
	1MRpnx51O9CHJaGi1x+GbRqncRH4UaFGO2upGm8gPRKatZ15/bqHOd1fQxLxjGvFRfe1H1WZSA8nh
	KjbEwZWRxtZPQN/jZW4jsptjlVQlf51lxmUxBXRDGe7Kqk6GFikaRSp0BhaJtjLhMiOCHS/pUvtZU
	2RonqpprZVR1xd2CD0T6/YcfppXOWsA83Bd8SdLlhu5dClutbffrb8VB7AgvOQcXlSi/x7Lw2Fu4D
	JGyl1QYmhQFlWYyIKSDZ6F4PBAVXIgb7lWE7EvPWg3rpbs+NMwhzQINQ6aADHQyRfTa2siDO8uCma
	/LP789NHQVsUzSG9+O55o5KwnA5CGpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTWFq-0004Qc-B5; Wed, 22 May 2019 18:46:22 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTWFi-0004A5-7O
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 18:46:15 +0000
Received: by mail-pl1-x62e.google.com with SMTP id f12so1486021plt.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 11:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=O1znsyun5k31ul6fBEA+RjUaCYqXoow7Mzb/sgD9eYc=;
 b=Liwk7BDgA5Iglig6m0mb2LfwL1u9OLghbwyUFckRqJTDaFmasEbzSl1/ciR+AbzTm0
 ekVpm8d21vO8e9PNvVZ6KCUQ+qMtgbY0SttsF0sYxTTxJ5QK6IRMu+WoNrpbNArSwDbV
 Yp8fpLVOnc9+krxB4I8QejUSkpVJJxnZamugXSuoAUG8s0QtQUJScuHjijL4QgZBj5Pk
 M8En9fwXCb02IwCj6yBdPmRJrnaa6qkNBhNOY75uG+TGUQ76zHcMd4A5BzOP5UCIW58s
 otrXv11sAvf7Iqh+EZ/CwbywmCJSv3mU4aIUzS9ktCffEo9PTRCpdcMQkFQRDFu+OWos
 I0lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=O1znsyun5k31ul6fBEA+RjUaCYqXoow7Mzb/sgD9eYc=;
 b=q23rv8sqmCEabotRr3Bq0xwoEfhZuITKdn8MuwsGre+Uv0GVhUYpAbEd9D63FIA8Nn
 eLUvM+6WXKo5S3Wh2ziUQbzITrBeVKg1KYr84Fcfr/VK11BsupNr/ncLMU1qXC+dbA85
 +N15fSS/Y6s9+dEH6IQWlQ7Negc1WqGXAxEOX8fWT2VRTSSpoArBPNRKBpYxNCt7foS6
 ZvXR1JMlC3ikkXm9I1wu1lW3zAimHKpHgMxyn4gx7U/2ojvS4U5EMgDr2Y5238YAEIE9
 k5GJq5+ZRngT2o6wo++ZhNqH05rwPJhUL0pPxEZ9LoRIDXmvGx1wPRhCVYKjM34Lj+f+
 sS9g==
X-Gm-Message-State: APjAAAVlKuDbApfYKpLqoLkJRFogvGe2MuOQaS+Y786Q+ER2OLB5RmEs
 cnu7Pfphp0iioVjpekf5aOs=
X-Google-Smtp-Source: APXvYqw6heevUJ2swRbGZS0xxVKiZnMhXMs1Af4Hhp37/UeOa9UZrmjlJpFoBifUUSwMZqySNo9opA==
X-Received: by 2002:a17:902:b581:: with SMTP id
 a1mr90420442pls.206.1558550773318; 
 Wed, 22 May 2019 11:46:13 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 25sm2439585pfp.76.2019.05.22.11.46.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 11:46:12 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] cpufreq: brcmstb-avs-cpufreq: Couple fixes
Date: Wed, 22 May 2019 11:45:45 -0700
Message-Id: <20190522184547.31791-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_114614_273216_F344A2C1 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Gregory Fong <gregory.0xf0@gmail.com>,
 "open list:BROADCOM STB AVS CPUFREQ DRIVER" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "maintainer:BROADCOM STB AVS CPUFREQ DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Brian Norris <computersforpeace@gmail.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rafael, Viresh,

These patch series contains two minor fixes for the brcmstb-avs-cpufreq
driver.

Florian Fainelli (2):
  cpufreq: brcmstb-avs-cpufreq: Fix initial command check
  cpufreq: brcmstb-avs-cpufreq: Fix types for voltage/frequency

 drivers/cpufreq/brcmstb-avs-cpufreq.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
