Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC20D13B1EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 19:19:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ogy4Og/RNUjFh0HkbeeLXTR+2ccDJZYJEEtmy6QTL60=; b=B325HY+gBrpYqi
	HcEdzd6rPACB8UGz+xbYIqvCVM3OJfPlnweshdMA8klFT/pCrzAgN+6sS6pjHD+VqL8RYZayjzw0A
	yHfP9ic2BmwqhBkokVAGxhNfGvty5qUOvUIxA6f9325UCNWt5YJ0Q7rcfvRcLnEKc4JJKhaTgT6RC
	z8cUVfhiZbkzULiHr5zPdxxB8N8Q688gjAv2t28n5mQFIAVQuQT/X7qFmZd45a7klztxW2fjF3nVh
	MekLDSiokoPdesyl28NT8CNYpA0FmOgU9T4BQhqUQMvqLeGBS+9ycmpzeb5jyLmB4/055b9wrNWf0
	zkv2vYYlq400hqUteZHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irQmc-0003HT-OQ; Tue, 14 Jan 2020 18:19:18 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irQmO-0003D8-Pk
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 18:19:09 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00EIIxmx099296;
 Tue, 14 Jan 2020 12:18:59 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579025939;
 bh=dVspaz0t1GzTYAqWFeRPJMJm08g4RPKvpcOi/oOiY9Y=;
 h=To:CC:From:Subject:Date;
 b=JimSYmVdbhzsBEN+yQAOlBQSvNHxAP7Zp3Af7Qv959Nhew/lmPV+0yu37+RvB1LWn
 xV79K23eQ7zPx3IvMsLENb4+gnRSMgouNB9HIruFcQ4/r9uP4tx4GHM1Ro/GnnxQPu
 RC+nhTT4JWE08UcWG7+5KgEfQd7YRaYBCsadXhfg=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00EIIx2A070069
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 14 Jan 2020 12:18:59 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 14
 Jan 2020 12:18:59 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 14 Jan 2020 12:18:58 -0600
Received: from [172.24.145.246] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00EIIt9P057683;
 Tue, 14 Jan 2020 12:18:57 -0600
To: ARM-SoC Maintainers <arm@kernel.org>, ARM-SoC Maintainers <soc@kernel.org>
From: Sekhar Nori <nsekhar@ti.com>
Subject: [GIT PULL] DaVinci SoC updates for v5.6
Message-ID: <043eb5b2-a302-4de6-a3e8-8238e49483b1@ti.com>
Date: Tue, 14 Jan 2020 23:48:54 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_101904_945119_3A62A52E 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:    
                                                                                
  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)                                     
                                                                                
are available in the Git repository at:                                         
                                                                                
  git://git.kernel.org/pub/scm/linux/kernel/git/nsekhar/linux-davinci.git tags/davinci-for-v5.6/soc
                                                                                
for you to fetch changes up to 5e06d19694a463a012c2589e29078196eb209448:        
                                                                                
  ARM: davinci: dm644x-evm: Add Fixed regulators needed for tlv320aic33 (2020-01-13 17:36:26 +0530)
                                                                                
----------------------------------------------------------------                
DaVinci SoC updates for v5.6 include migrating DM365 SoC to use                 
drivers/clocksource based driver for timer. This leads to removal               
of machine specific timer driver.                                               
                                                                                
There are two patches adding missing fixed regulators for audio codecs          
on DM365 and DM644x EVMs.                                                       
                                                                                
----------------------------------------------------------------                
Bartosz Golaszewski (3):                                                        
      clocksource: davinci: only enable clockevents once tim34 is initialized   
      ARM: davinci: dm365: switch to using the clocksource driver               
      ARM: davinci: remove legacy timer support                                 
                                                                                
Peter Ujfalusi (2):                                                             
      ARM: davinci: dm365-evm: Add Fixed regulators needed for tlv320aic3101    
      ARM: davinci: dm644x-evm: Add Fixed regulators needed for tlv320aic33     
                                                                                
 arch/arm/mach-davinci/Makefile              |   3 +-                           
 arch/arm/mach-davinci/board-dm365-evm.c     |  20 ++                           
 arch/arm/mach-davinci/board-dm644x-evm.c    |  20 ++                           
 arch/arm/mach-davinci/devices-da8xx.c       |   1 -                            
 arch/arm/mach-davinci/devices.c             |  19 --                           
 arch/arm/mach-davinci/dm365.c               |  22 +-                           
 arch/arm/mach-davinci/include/mach/common.h |  17 --                           
 arch/arm/mach-davinci/include/mach/time.h   |  33 ---                          
 arch/arm/mach-davinci/time.c                | 400 ---------------------------- 
 drivers/clocksource/timer-davinci.c         |   8 +-                           
 10 files changed, 60 insertions(+), 483 deletions(-)                           
 delete mode 100644 arch/arm/mach-davinci/include/mach/time.h                   
 delete mode 100644 arch/arm/mach-davinci/time.c                                
~                                                                                                                                                                                                         
~                                                                                           

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
