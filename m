Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D1B11BDE9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 21:32:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qbB5pMIuexgx37seXDbYqef26C4P60onj7lqvT32dug=; b=HQu
	+3necmNK5C6ugbKaGoXXgclMfWw56/dqeri5pO4+tRdbLy3qyy3NojZyp97NX3e4oZZBGvvSuJEX/
	ZuqjblY8woJqF9pjcp9GoKVyy11xRNKbC9xz08hsD1BJKcG6Z6a8fDHC5EoKLxZ/41ODgH7t8Ysf3
	xyvMOhnToemXaDcZT6aL4PdAj2jX6fJ+NCV/FNTCbpilBOOpTEpoKRZqwVbknQHyjCMzQtSYoeTMw
	qe9taJqBJpEC1Ybw4/9OxCfCm+MKXcd6vOy0bA4FliU6TIKG0F+ibWRmL+LdJ3Akj4T9EFA/bv+7K
	7LFrL17iW19w8zuboqbb6CGr+wbpoNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if8ea-0008Ft-Ki; Wed, 11 Dec 2019 20:32:12 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if8eL-0008Ed-1F
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 20:31:58 +0000
Received: by mail-pj1-x1041.google.com with SMTP id s35so34612pjb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 12:31:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=3/hSvLwudWoN+XB6HWteXACnz1YCPLXglnwpmxopZ+U=;
 b=orgHVXb3Fpmfg7W8yttF3NemcT87svc1e27QdNm2SE6bOsNJk83szXiD4eT3iS6Cg0
 zpj9sfIWomAbpFUpRGeXDHCLV/yulMMmqhKceF1wYi0olUR10GZSjm/wpHjzYFmjHuUD
 eRBQa+aXghUUtmZSGpJv8ICRRkg9Lz87i9GEn13ahz63SWSsvPMjOwDrAjPEYX+mWKai
 OehB+EhlcdWumJ8b7TpB+LkoN21NJY5y3+5X8hdYYIkwCVbAxiZQsWUitSauCb2Lqktu
 ecZ/wVBxiUXVxDPDo9hCZLlYx0aNgVfZkI/M8ymac0NMVwLLNHxPEzj/vmlI20vszSRh
 OP7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3/hSvLwudWoN+XB6HWteXACnz1YCPLXglnwpmxopZ+U=;
 b=nftomzjWhkqeTt652k9XFvZyW9lQFaVjG1UVEFSApBh7JS58VN+de9Qqm8b43mm8Cn
 zqWMNWsHKXSIQWq7odK7z1bLU3Q5NFgpLttJLXc3HELzAhf/h4tdqbrMcdHEWVuQN4LG
 cv4zlCQqNTVOZrihqHYGEY/0CRPjBnqIlf4dKbfZAVU+hR4p7rLt+CCqr6+v8XpBXX08
 psvJxFV1ZzDLaeFEtiWYVZFwTO7hnx4vB8nHcP95b27rh0szqvWodKGM4udK2Zlt43vV
 ZQcmQW9qLl1LOM7dldyVreTGZBSNbFPQxPqufUr4uueASc9N0B94grAPXluXduT2Wft2
 mpPg==
X-Gm-Message-State: APjAAAXnVUI55fVN0jCrfg9YLeakBdHifHAV7RqW+zHKngfJhn/3wNRb
 bIDcUneFIQb3qDy5P+EeqneNtBXw
X-Google-Smtp-Source: APXvYqz9LDJfuBSN3rWSsIsBVJ8ollAAEg3nqsBeGqaPCp5Jf59583LSmX1aTye4SdtIkza1iG4nGQ==
X-Received: by 2002:a17:902:7207:: with SMTP id
 ba7mr5476246plb.254.1576096315871; 
 Wed, 11 Dec 2019 12:31:55 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a19sm917570pju.11.2019.12.11.12.31.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 12:31:55 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	daniel.lezcano@linaro.org
Subject: [PATCH v2 0/6] brcmstb_thermal updates for new processes
Date: Wed, 11 Dec 2019 12:31:37 -0800
Message-Id: <20191211203143.2952-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_123157_101801_68574994 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>
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

Changes in v2:

- kept defined constants in patch #1 and keep using them for subsequent
  patches
- add Reviewed-by tags to patches #3 through #6
- rebase against v5.5.-rc1

Florian Fainelli (6):
  thermal: brcmstb_thermal: Do not use DT coefficients
  thermal: brcmstb_thermal: Prepare to support a different process
  dt-bindings: thermal: Define BCM7216 thermal sensor compatible
  thermal: brcmstb_thermal: Add 16nm process thermal parameters
  thermal: brcmstb_thermal: Restructure interrupt registration
  thermal: brcmstb_thermal: Register different ops per process

 .../bindings/thermal/brcm,avs-tmon.txt        |  8 +-
 drivers/thermal/broadcom/brcmstb_thermal.c    | 99 ++++++++++++-------
 2 files changed, 67 insertions(+), 40 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
