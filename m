Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A191142D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 15:38:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ExQh25NbEUFYVj/KEXQ1H/f0SmwPcE/FBGRjgQkYG0w=; b=MSr
	ENzapyYgq76CcD5p41pGnmcIOwslV9ac9rH0U2PZjSh1c1Yelvzy/FXXh/KnNnb0aIRGbax7ZZvkC
	J/wfVs7nwwlDMXgieCZqVHRY0RV4Q5dM/J0ACUxXOleV3MY4Rj/uoWrCevLO0gc4mSMJZEnQ4ouNg
	oGCkOJWwXfxX6c7zacvn/dcRdQCpuNJ6i5eTGpPehSdp4AdzrMqirfeZxA/VOtTrOZ/Jot7YGCgLX
	CCqETjjn9yj//G3wfJq44ayu6tmqOgs3vc78h/DymloCJNncBQXo9MKrBMDvzX6SXEDjf/ne77FOb
	ubC4s1/0OCkd5SJvJ0jo2/9RdJhhBfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icsGh-0008SB-GU; Thu, 05 Dec 2019 14:38:11 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icsGZ-0008QY-GE
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 14:38:04 +0000
Received: by mail-lj1-x243.google.com with SMTP id m6so3890289ljc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 06:38:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=ySkkqpmB/BOI7Ew6QjgGxPInG6fWKDRrslVzVcjzv2c=;
 b=XC1fPf0WppSyHnQAs0FgBjmmzu2VwnQGY3yrZuC43dI2RW/Kx28FDMxjBy33dFTfa6
 /bFH8jm8Bynv744jXTDQGCXj4HjJfbcy9GXvtzGwRDAi3Ji/OGCkMqtjA8CEpdL+aPzL
 WJVYYaHnytbA8G7IYsyCLh6yFuqwWThgRIq2pidgRPzCFyO/+Mit2fMERYsV/wQbNCKD
 7TF2HF7To5RcdNPFgrUHXvFk0+TMlqdHEMCz1v/K/35MSR4+JxKy1tqdaLpSHMknCg1B
 JwtK0DrFT2dO8A3qxsMZzEay/eVgiKdC02k0IpEWoU/bTQ6kDlSZ3szayL7DP7w4vv1T
 I+bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ySkkqpmB/BOI7Ew6QjgGxPInG6fWKDRrslVzVcjzv2c=;
 b=N9hwVPYmQPrkURr0STA4dSgrhamTKc51mhMpZY0K7u0WccX0owiQUritdGWBMdlkAY
 YPHVJpsSTo4W7joA4cBu4SMNcOzgP9K7BD7TuZr2458cjx3u212btfmGPINw7yqI/KWk
 +bi+mhOF/JIdOK97KjsrvxkT2GkhAxIPnehXaLGmncO0/I+InUnom2oFz3Jmw2YnA3YA
 wJUCCEHNR69oqdG74p+xYG/4kX8gVSxBYg9JMfq22eynXFqUEtwpjgg3RKLCPRrYqWzf
 3wB2aJbfsV7xK0lP/7b0cgcVy69NbKpP09tugchannTI1xJn3usk1dyVyeILplqvkM1O
 AJ8A==
X-Gm-Message-State: APjAAAUZFdYKEw1xdxS8M3olCltUS9kqs77v49BRq8cDJWWk7yRrmCLZ
 Kj61YHNFxrbmgeJt3NliXNRmbw==
X-Google-Smtp-Source: APXvYqw/h/AzAZZmHc8Wi5LZCEupiW1yZV+L37h/WwAkJOovQZvIEuVT13/j+Du7U19X/GkBibSBcQ==
X-Received: by 2002:a05:651c:239:: with SMTP id
 z25mr3401650ljn.48.1575556680825; 
 Thu, 05 Dec 2019 06:38:00 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id q10sm5091294ljj.60.2019.12.05.06.37.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 06:38:00 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	dmaengine@vger.kernel.org
Subject: [PATCH 0/2] dmaengine: pl330: A few system suspend/resume changes
Date: Thu,  5 Dec 2019 15:37:44 +0100
Message-Id: <20191205143746.24873-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_063803_749037_FC0360D7 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I accidentally stumbled over a couple of things for the system suspend/resume
support in the pl330 driver, that I thought deserved to be improved. So here
there are, only compile tested, so far.

Kind regards
Ulf Hansson


Ulf Hansson (2):
  dmaengine: pl330: Drop boilerplate code for suspend/resume
  dmaengine: pl330: Convert to the *_late and *_early system sleep
    callbacks

 drivers/dma/pl330.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
