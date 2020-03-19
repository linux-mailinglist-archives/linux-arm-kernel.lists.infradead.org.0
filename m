Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA6718AA7C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 02:55:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fsk7Aek/NQ2nA7ZD68sO8E7b4yUoKRRUwdOO9vo9HSI=; b=CklkXu0XIx14Lu
	C/tsktmbsIu39iF8xRsjvbQayDRTLOAeLgunGxLXQGQ8TyXjm6uSbllvaXwgxp6r3AfRJ7JOAou0r
	9iwBx1VO2frWg2i6da/66zM+OmxyQ3P65UOVV0VsP+cCsY0C9+UrXm3yJt3hsevzd+JXbMvtfSgVT
	qrmGKnZStdp6xQqyZ/eKyFilAZQoVXm/dM6ouEJorsjmE3MsKU/lcGL7+3zDpdVvUbr/BNZ+FoU8g
	e03xDbQ5GNQlbzpJmsz2vvsmo+4sWQr+QSSzwHxvXIX/k6aNZhfkUA42aHRgMKCT+LcQi4FSm0dLq
	RVfxr/j7AefL5F/sKN7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEkPA-0002aQ-NC; Thu, 19 Mar 2020 01:55:28 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEkP2-0002Zs-Kl
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 01:55:22 +0000
Received: by mail-pf1-x434.google.com with SMTP id j10so484035pfi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 18:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=u/yqaSQp90S3VCROuIoPFdfK2Rvu6COHXBl8IUG2eQk=;
 b=FtxBuluvucIH7skY+MgJY334KnBZackHwj7Fr/kQvGdrQwWGoQHRu27n+JSGtMYDC6
 702/7879QMmgWfot3YFBlCVO77Fg/ak/GAuj7ElE2qSQaTk3qClQVmyqK0drW8nnrjAZ
 99LSXCF7lBByOvUSdrviQbNAND7/B+jTxYqN+4ZhZnmptzeziKI+7dO2OhWtEqt8rcn3
 PVkNWQ8gk3RsqwbSGBtvF1ZvNRXyx2TE5tJ5dgWfUJe2AM3L/eojWpKEdgokRka+cQZv
 iqg3YhHFGFEnp7nWoeT/I3jOkgV0ns9taHH7thviCnt7zMG0v3LmtXmkEmwYsb2c++0z
 wvQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=u/yqaSQp90S3VCROuIoPFdfK2Rvu6COHXBl8IUG2eQk=;
 b=nPJ+lK5wlGQN/1uNStc//wNh51fs8JOnf0smVPE+HoHNI5Fc+oDoGK9KpmA73yEtfx
 5CqfTlmI8BOPd1+0ZHP8P0PRiP8fxKB6Y7mY93TM9IYDSKatOhIU+BPpywPyk0Aqe/FB
 NsK00q7rGjPlImLh6kjwSVFsC3emiZikdV5Kbu5KHcp0iafuuV1pBWvFVkueD0mR/kHD
 7sg7A6/qBziadQiPE9OHjffpki6B534CEJTCtfRGC9A2AqMsqFHzx9Jds1SVaHMD7O9W
 0JGCZg9qo9shYkCHUT17Ds7B7sevSwhi/QyKej53gxrBSv6JmZa3zAqFVXw51OAmeNHC
 Qy1A==
X-Gm-Message-State: ANhLgQ32esK9MvgBKlnq9TRrLkuhqVQtLACEK+Hb0G3QN3akdaJmG4dX
 y+EP+5U2+DOozd7gJ7XpsI4ujw==
X-Google-Smtp-Source: ADFU+vsPaQYUba1ykOHUKQfdpPNAHsrGuYSMxQrBIe5/NdgRbMx2/1Z0ksczPPGrbtrq65ySdu82UQ==
X-Received: by 2002:aa7:951d:: with SMTP id b29mr1406946pfp.30.1584582918747; 
 Wed, 18 Mar 2020 18:55:18 -0700 (PDT)
Received: from [10.0.9.4] ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id i126sm269762pfc.105.2020.03.18.18.55.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 18:55:18 -0700 (PDT)
Message-ID: <5e72d106.1c69fb81.9704b.254c@mx.google.com>
Date: Wed, 18 Mar 2020 18:55:18 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.6-rc6-97-g825596c5c10b
X-Kernelci-Report-Type: boot
Subject: arm64/for-kernelci boot: 23 boots: 0 failed,
 23 passed (v5.6-rc6-97-g825596c5c10b)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_185520_707001_AF6EE52F 
X-CRM114-Status: UNSURE (   4.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

arm64/for-kernelci boot: 23 boots: 0 failed, 23 passed (v5.6-rc6-97-g825596c5c10b)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.6-rc6-97-g825596c5c10b/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.6-rc6-97-g825596c5c10b/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.6-rc6-97-g825596c5c10b
Git Commit: 825596c5c10b0f4093181bdc8e7b4fbc86228743
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 23 unique boards, 6 SoC families, 1 build out of 3

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
