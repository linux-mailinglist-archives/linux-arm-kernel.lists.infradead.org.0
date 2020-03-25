Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADC2192737
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 12:34:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J3Xuei5K6EjaNAyuYxUN/SnIz7Hv86WdDNdxW+IPhKA=; b=pvrQspWDx7/t4R
	KoNbVVQPSC4pCKnx3jt5zzwcUXjp5VTDzEDzxOmAkQ2ddmiuXA2WCw/0VMbOGxabKkCrHNAgro/5b
	r71w60Bf7mvPfKBAkSWgUkb2MinF7UMxpyeHUEllumOfEFwdkccC4YWtChGGtk7/7xnT37Xv3AXNw
	Ri+B7Ilv22aZVbbIc4pCEL6y+B4jjQWjlLMTaCowAeVK9elPQ0bcpECNf2ZFSqknhdJbJUlNDaTMh
	o7JwzBrmGJTQ7WBbYRcj9lPCajrE3DlFrlwW7otq3acbgoW3OrYiHy0MMH3kXxOgtm8k0sw+I+gVj
	UPlOEdJOz0pt3BtFYFew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH4J1-0005w8-Ds; Wed, 25 Mar 2020 11:34:43 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH4In-0005t3-8F
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 11:34:31 +0000
Received: by mail-lf1-x144.google.com with SMTP id q5so1436888lfb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 04:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GygzIdLieGBXLHn6ARjh7cxx6yFmsNHIRCvqZUoEcYs=;
 b=DRqp7xKN9hAEg0yzoACoL1sqSGt2zkuiC8T/kc3khyd5AU7yPm9TzjP9g64Lfnx0eV
 IhR3tdxeoYYwlcecjzbXSLbsGvsQ80B5x/pe2vK+cKy97E4y4MlXheTXRvDwOcTVpb54
 uPvIKuS2eopieWOxV6LYZthn3rlPGYobpYqAxc4g09nnk02DRFaiSasWr+QeggEGBirs
 uskLdv0pYvdYCYNvKmCAzzxGP5NKeNL/P+SD9dr8Ze/keCsGXnzPB2yDQDKTFcOcBkFA
 cGUbVY78QaEcXGchRKeR/OFkguB+lq1BvGOpXwl+7dwCxVD6mcOpV1IN5lopIzPW//94
 giOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GygzIdLieGBXLHn6ARjh7cxx6yFmsNHIRCvqZUoEcYs=;
 b=B1nc2m/1MdQ2tPAKlf60o1DLZHgQKlefFB3bf0neoe35Z67Qn28R5YtblvjiD5NJ9q
 oZqOwxyP5xOD+giQGY9gPb/i3MDq7hKsWTMsVMxgjd3mX2E3tx8wdNTp4ciEM0WNvQCc
 e5rkVn6Yy/H++hssdsI1EVowFiXeBj0VyXi5CWaiawnGhwzT9Fi7pFfbPr4UpxvFuwkG
 /4Cq/q8wYqfRkUb6rLvxqP62H7YTHVW4Jzvn8GcEStX6N9cUYdVBHh7Yo7bkdNFVmat5
 Sauyl5FkZOv3fX8fvDYo4h7+FJLMY1SbiqPcywFARFIBugPMO5YDWDvVNDdJv/xETRGB
 0eRg==
X-Gm-Message-State: ANhLgQ13kcmNnKVz4rTohS/DvhOnlcRx6pH5mGaT98IReY5HC0PHJGnj
 FvjSTSSHV3pnhLUurvMk0cj+Eg==
X-Google-Smtp-Source: ADFU+vtnjU4L34iNseu0oH29xgbKLOULZjfBlZISdEH9KJSXiDUGagFRm4SrzXiL2Hzwl8XydqOIRg==
X-Received: by 2002:a19:ca12:: with SMTP id a18mr604115lfg.213.1585136067038; 
 Wed, 25 Mar 2020 04:34:27 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id v22sm3920009ljc.79.2020.03.25.04.34.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 04:34:26 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] amba/platform: Initialize dma_parms at the bus level
Date: Wed, 25 Mar 2020 12:34:05 +0100
Message-Id: <20200325113407.26996-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_043429_833423_D84DC058 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Haibo Chen <haibo.chen@nxp.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org, dmaengine@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Ludovic Barre <ludovic.barre@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's currently the amba/platform driver's responsibility to initialize the
pointer, dma_parms, for its corresponding struct device. The benefit with this
approach allows us to avoid the initialization and to not waste memory for the
struct device_dma_parameters, as this can be decided on a case by case basis.
    
However, it has turned out that this approach is not very practical. Not only
does it lead to open coding, but also to real errors. In principle callers of
dma_set_max_seg_size() doesn't check the error code, but just assumes it
succeeds.
    
For these reasons, this series initializes the dma_parms from the amba/platform
bus at the device registration point. This also follows the way the PCI devices
are being managed, see pci_device_add().

If it turns out that this is an acceptable solution, we probably also want the
changes for stable, but I am not sure if it applies without conflicts.

The series is based on v5.6-rc7.

Kind regards
Ulf Hansson

Ulf Hansson (2):
  driver core: platform: Initialize dma_parms for platform devices
  amba: Initialize dma_parms for amba devices

 drivers/amba/bus.c              | 2 ++
 drivers/base/platform.c         | 1 +
 include/linux/amba/bus.h        | 1 +
 include/linux/platform_device.h | 1 +
 4 files changed, 5 insertions(+)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
