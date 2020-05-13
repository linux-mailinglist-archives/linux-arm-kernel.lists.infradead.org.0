Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D9B1D09BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 09:18:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YNxHNAnsJwZKyvUVoOSvY9yW786nZDYsBLIipI9i3EM=; b=XtEj2Qdeo8/pic
	+Xv8Hb11W2S8VVUjyrIwPRZsQXFdWnM+TLbtfkVFXwVHnOJtyWtBdOdfc3qnEkGgE0lBwOFAPn5cd
	dKk+LtXDKUAW/A8Z2q7qetERtuImd3966uPcpC2befIpuB+b4e9f561fyBJXrhB6gZCCu+2/Cp0/A
	GFEpoUVtwInhqSznq0Gn3rDeWY1RavHYi1U9UMnWQStvTQIg+8qpfDoDFY+UJJXyGeLDL9Rv82HSr
	p/wWqqJpULHSbYlMSCjFO9Hz636RlTq5YWcC1+Riln4SUe2+d7OfRcZ15JjALRr/+JntHC7DgRhJF
	xB6Usp9iz+SSA/N+NGaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYleO-0000Jp-1I; Wed, 13 May 2020 07:17:56 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYldy-0000DU-Il
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 07:17:32 +0000
Received: by mail-pl1-x642.google.com with SMTP id s20so6479194plp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 00:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=tkA6rRaBD6E1Ww1nvRw+WrNb46ZImWrhfSkAqjbSYRo=;
 b=1MYhzUHNKsAhMNXlwetfPF3CBVwN4ETjPRjNOmrWoQmott71zW5nC5fMsua8lHqzpM
 WHP0k6WpGmyjRG/LmvQeOyqFoihALzxAdZgYIvFDte9dbo1Xu1vEa++e2LRLChOYNs5D
 OZnmiFR1RVgM+Fux81jmprpUXEPVmosyp/PV1JeJI4bk7czIFMsjJ9Wm1PbI+DRbz8m7
 UgEzeF/0HLrCsqB+njBvQ6d6I+IMuWtur9Rsc+Cj+aeSPC39OsLoWoWUBuLJNP9JMOpR
 a04rzIsSjg/r8yhn15W561OrosipD7W5iZeCt9Wda+mvNhtgVOuwJYNroJGdjbD+knqn
 5WSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=tkA6rRaBD6E1Ww1nvRw+WrNb46ZImWrhfSkAqjbSYRo=;
 b=uQfKo1rGWL76C6Qc5OXylcVH2yPDMD5g2czY/Px+MGaTyojQuFuim7xIlV/fr2MAr0
 SAQ+LcG+XwpH0vhPWBviyhuqM8ldIxOAywtJWgKk/XIfxQz4/ujnmJWFSKNjzOtYb0Xo
 uhjc5BGapeo7IQDnhK+IEJl+R3jixe+IruX9aBfvzjm2MrzD1vjr/OTOY1erzxhRRvD0
 A9Gepl7JbLhDxkDX6pIFtK5Da4COFL6YuEQV5+3njFUKDgqHo+c1XAxI1scNUJAmT5NC
 9eevFrbLWxHHhCZ0wSPYFLcdsQ6P0QUbRQhTacWq9vK2BLKynuBRv0EgKe4/hdduVcwx
 PTfA==
X-Gm-Message-State: AGi0PuYCU3CpE/cf9cDoqWZEORrhGZsdQP2tz33F+xcc1jrWiOTG0Cp0
 o9str6CGDLESMYaD/rtCOvThHl/+L8M=
X-Google-Smtp-Source: APiQypKpaHwqbOyhiKNl+soDBMR5gMAl6ysnMDnYftgftkOnVXYIXYgrUh8sfMp96GgM/a+ipCVK3A==
X-Received: by 2002:a17:90b:a8e:: with SMTP id
 bn14mr34389714pjb.197.1589354249539; 
 Wed, 13 May 2020 00:17:29 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id e12sm12085071pgv.16.2020.05.13.00.17.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 00:17:28 -0700 (PDT)
Message-ID: <5ebb9f08.1c69fb81.dbe60.b180@mx.google.com>
Date: Wed, 13 May 2020 00:17:28 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.7-rc5-98-g51f14e2c02e8
X-Kernelci-Report-Type: boot
Subject: arm64/for-kernelci boot: 27 boots: 2 failed,
 25 passed (v5.7-rc5-98-g51f14e2c02e8)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_001730_675526_F6C46CAF 
X-CRM114-Status: UNSURE (   4.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

arm64/for-kernelci boot: 27 boots: 2 failed, 25 passed (v5.7-rc5-98-g51f14e2c02e8)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.7-rc5-98-g51f14e2c02e8/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.7-rc5-98-g51f14e2c02e8/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.7-rc5-98-g51f14e2c02e8
Git Commit: 51f14e2c02e8e96bfa07dd0561f18bc2ca9f534e
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 25 unique boards, 7 SoC families, 1 build out of 3

Boot Regressions Detected:

arm64:

    defconfig:
        gcc-8:
          meson-g12a-sei510:
              lab-baylibre: new failure (last pass: v5.7-rc4-89-gc1c5ead13189)
          sun50i-a64-pine64-plus:
              lab-baylibre: new failure (last pass: v5.7-rc4-89-gc1c5ead13189)

Boot Failures Detected:

arm64:
    defconfig:
        gcc-8:
            meson-g12a-sei510: 1 failed lab
            sun50i-a64-pine64-plus: 1 failed lab

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
