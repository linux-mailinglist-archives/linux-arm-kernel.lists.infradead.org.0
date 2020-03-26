Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5637B193945
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 08:08:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yhI32BFwnTkjoHYlfxOGtdyULvlLq43b6XlG0vsLMtk=; b=jGm
	Sn5XMkdB1x15wxjeScc2BcDLzBVLApiKxWHBQWSnCzHeZryB4YC+a/V4gzWpqfquf7Um1ShVaWVgO
	ifI1QloXnC2NdN/IqsfGgT8tXongkLQrQ5jE/12Y3z8A+jq7zultU0UXiNpVCIylOu0FwDni7kCVK
	FCIoeAULQcL+wQTrLHzsFzd/fw0i1LnWojU0C8BQDTbYyMGY3s6P9ODdIlOLnOicTogtLGq0fqfvd
	XgWd6qe9Stole/wOCBPEpO+YhvV48wKwWYzPknQR9V12Syvydf5XYTpl7d/JnsSqJT50ooDhPqoup
	34spOvdC05KoK2Md7/uokDOudgFRCWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHMcc-0007og-Pa; Thu, 26 Mar 2020 07:08:10 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHMcS-0007nu-Lt
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 07:08:01 +0000
Received: by mail-wr1-x442.google.com with SMTP id a25so6447659wrd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 00:08:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=H2TUyOy7hFlU1mihaYKviLCAQGjbqgsYp50LlzLi1G8=;
 b=YV/YEVucTc4tJe8tVRyZyeopa1bFmsBloz1o8vb0870H7+lU3KBrDXwvdLOMqy7+YH
 PE5wla7gtriZfVzj9J+HE2BVnmMQ4nOcQiOLGgQ3anptlmmGu1EQguydcMw1hd6+e2W9
 7PbMRQG5dPaHvtk9Ou+4gszYCAHp6yVusqQsI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=H2TUyOy7hFlU1mihaYKviLCAQGjbqgsYp50LlzLi1G8=;
 b=d0hCRbZfi0AbBfJDu7TU9LtaaJdF4huCtjEbINdH9xSagH5qbUYOl8f8gnv7UFOpbA
 Awhhaz9ZxODF22UHjetFrF44KK0g+YyHuhRdWy1aE4quW2GMxOTDAA6i0HsxyQDU69Sw
 ogc4GN/bDeMhdUkiQZDWSlvHJTdqsH5eaicv3A7uzzDv3CsjQXnIPwHXXcTO+JIiDYVB
 OBg2xG4i8diHfqY3Q/D/ep+Pm4Aix/RxC9eb+w8sqmxHRDQKEZqDSzP1SkOSrkP6DoaO
 e5GfjeO9LuEOhZEIvCshOowkGuWgzf328e+kPiiG2221wILkc6aL1u0jVNJZa7rpC3q1
 DpaA==
X-Gm-Message-State: ANhLgQ0PNVY0KfDILs2ZhyBJ3mXzU8eqU9qmRIWrJxu5+vpPD4C1C1+O
 ar2KqbvdYnFDRrx725IjIqCceg==
X-Google-Smtp-Source: ADFU+vtoVFnc/MkSSn13lthBxGx1jDdqQOH+rCgiBTbCYRQZtgcw9pqUOFvmC34OnQDJ702CVYW4rw==
X-Received: by 2002:a5d:6044:: with SMTP id j4mr7223851wrt.232.1585206479437; 
 Thu, 26 Mar 2020 00:07:59 -0700 (PDT)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id u8sm2129446wrn.69.2020.03.26.00.07.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 26 Mar 2020 00:07:58 -0700 (PDT)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Andrew Murray <andrew.murray@arm.com>
Subject: [PATCH 0/3] PCI: iproc: Add fixes to pcie iproc 
Date: Thu, 26 Mar 2020 12:37:24 +0530
Message-Id: <1585206447-1363-1-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_000800_719376_C63D1C44 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-pci@vger.kernel.org, Srinath Mannam <srinath.mannam@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series contains fixes and improvements to pcie iproc driver.

This patch set is based on Linux-5.5-rc1.

Bharat Gooty (1):
  PCI: iproc: fix out of bound array access

Roman Bacik (1):
  PCI: iproc: fix invalidating PAXB address mapping

Srinath Mannam (1):
  PCI: iproc: Display PCIe Link information

 drivers/pci/controller/pcie-iproc.c | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
