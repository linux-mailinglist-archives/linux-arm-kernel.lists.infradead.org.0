Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24669EA328
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 19:21:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bowKlS7NFcl0t5IbARu+rxuhWZ5+8+fKEiFOtkG5Ds8=; b=H4k
	A66v6PRVhbJSeCxxTTgDrJvkMMTKPdq/UW5MbDhMgAHY6W2eZJ6Z1RQneHjOcPf1suNjC7qDEDzf6
	tdn87HCC129KZg+iVaHjJEOG6UeglgyVh0bhvDJfDNtVG/scTlqcZ4HVLG3FNnLriM/WbKogUdwAb
	5PiZG+DqajrCPd5w0ID3l0p1hwDt0mMBz+GydEdpLR5djxq+cfll8cBkYhNBOSOgAHp+mMEuCUaHD
	Mbv9NRyEEjIiEu4vUSdOUVG4Wh3ekDIgW8SCagGKZDPKOBvNXAipAGjyMTkOC/9er9MRmpzlZ2581
	xqGjTyW0h0HPAEiIO9p81xJC7GE69CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPsbR-0003li-Ci; Wed, 30 Oct 2019 18:21:53 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPsbJ-0003lM-On
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 18:21:47 +0000
Received: by mail-pl1-x644.google.com with SMTP id x6so1360010pln.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 11:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=m5V1c15U0TRN6vcPfIUexZJlP17sTsMG1spksDWqkgo=;
 b=VIYtnp2tw82TUaocPbDHIebvaM6KlLz6C/l7fT8PzqeQNmI0H+TPWMF/EmeD4WdzJO
 k1YC1RjTzBGMjHIo0QbbsAKn1/SgaRR0BlN1wku1+2W9TQNBg8Fbq2kgyQ28KCSaQj5H
 PdCUEacbKLwm6rE6FcUGzhH7fixaUBu3t143lVuAq8QHm6m8KQBZ1Dx3G4dn42t+Zz/2
 dbkzOnaSwRhOMq/GM53ACClQcNFPHV1NhH7BROnh1onPesk1t3nnKCMCWhxuNk3vW9Wh
 9fQ2KqmF8+Az5hvlsGD61dZ4VAXRmI2z0yCeMZyi+fU6BlYo4QnSMlC42B0Gt2MTpTST
 J34w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=m5V1c15U0TRN6vcPfIUexZJlP17sTsMG1spksDWqkgo=;
 b=Mv4XQ0emSezmmE++h9WvHdFKEiFbGSNTf5S4KL248pqEt7HV2SWU9rMOEpJ5AJog1+
 yXXNQ2ez6iKTb0heSOfe06gWrLF4WhCVY4qW5i5LUOGMUAOtnTUKkc5jhIO5RpDPcZyA
 B/EgtA3f+vQ9pxnDwbKpA17FyAv0m6jzdGMNkX/9Zo5KFE9jWylXt5K2Rb3CnGmjHE3K
 zqQHZ+t3yY5I5w+jqB83yUUSUInHz97OhkhVDSx9P4/ynJaS4xrM2VE+PxZJaicAXH4q
 Dg8WKbW8S5QNN5SlQ4XiYxR4+WKFoLqTPwyE38pGolPQDqO6yAgPJenN8Y3d4uEOawWd
 g5xg==
X-Gm-Message-State: APjAAAWDw6P5j/rS7RNZ3x9o/a5h7Wuv5tEo7YP0AAT81l2+/4JXSGvL
 TNhw7yjEIefVjZQg3kB5zbaEWGX8
X-Google-Smtp-Source: APXvYqwovkeawEjQc8Fpc4nu8GD5wMmrSR/nUwd//Arjwauo1SKoqktzbXGHyeUCWuR0WQRs5GRFPA==
X-Received: by 2002:a17:902:b7c2:: with SMTP id
 v2mr1464868plz.202.1572459704769; 
 Wed, 30 Oct 2019 11:21:44 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id z5sm521637pgi.19.2019.10.30.11.21.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 11:21:43 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/6] brcmstb_thermal updates for new processes
Date: Wed, 30 Oct 2019 11:21:26 -0700
Message-Id: <20191030182132.25763-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_112145_857572_D0C92E1B 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This patch series contains a bug fix for the existing platforms and then
paves the way for adding support for Broadcom STB's latest chips in 16nm
processes, and finally updates the driver with pecularities introduced
with the 16nm, like the lack of interrupt notification from the HW.

Please queue up the first patch for -stable if you want, thanks!

Florian Fainelli (6):
  thermal: brcmstb_thermal: Do not use DT coefficients
  thermal: brcmstb_thermal: Prepare to support a different process
  dt-bindings: thermal: Define BCM7216 thermal sensor compatible
  thermal: brcmstb_thermal: Add 16nm process thermal parameters
  thermal: brcmstb_thermal: Restructure interrupt registration
  thermal: brcmstb_thermal: Register different ops per process

 .../bindings/thermal/brcm,avs-tmon.txt        |   8 +-
 drivers/thermal/broadcom/brcmstb_thermal.c    | 108 ++++++++++--------
 2 files changed, 67 insertions(+), 49 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
