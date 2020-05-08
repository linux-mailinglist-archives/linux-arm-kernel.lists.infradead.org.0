Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FFC1CA073
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 04:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tLt9OXM9PJIH0pkvKeBt0X7K+r2Ltn89K24UmvHM9Pc=; b=d3bOEcKWTJATpY
	htjiRWS8O02ZfYBvQn0waghHbLMp9bjKujZ59wPOraUqzkbuxSzWm6zJZfxwjFqICJVxjPQFWj6xL
	XRVFyQZfs2K6Le4Cf07Kr2UnX2X6pdVx1p1vFEVNt+Z89M1LKILXsof6MOdD/oRJ5YYCgJYA82WUX
	+amq2FbOD34Eorb6uUieWDN5M0BE7zcrCfx300KjzU+FF7gQRblmthPxjyfeP5uwYe6ZrYi6v/+25
	7BxC2vemXfJv3g25uCR2uSFLuoHSRurpSG1Ib4oLLCLHPoljEmsTEeqy8zVXwVPWCSmUG6FxGpL5y
	yIe7IM1Jh/EbuUP68UZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWsJt-00060R-17; Fri, 08 May 2020 02:00:57 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWsJm-0005zu-0B
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 02:00:51 +0000
Received: by mail-pj1-x1041.google.com with SMTP id js4so1480060pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 19:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=+pN/X6TkF3QfQYN0iq5kejzd2VQyRewrwmDk20zIsPE=;
 b=vCzGqaVNib8spUXXwtRW6MJigRfoyS2QfLnEx9ZtwD2mRTAj9a7Ls4Y/vh+k9Wj0+q
 3lWuopgW5WzWcYboBqTdJqEr8A2ym/7gixP7fWLpvgdOW48bX695pWkBzXp6tJpKb5qC
 i27RgsOCx/NResBMPTS5Lx/woNtgYymgKCll606ETk8Z7uJpZEhzO1VhZuMXDVP51ov4
 ogmXDQfGEt1Qmk0H/Owy/elxD3nWljMsRZRnwKFskKfrZBufiANTlUiFLTJT2mjHb9/F
 RGdMBk7+G8JY2ZJGXRotcpeQWhbeNnW6YoVaFQqfrXEhz0/WOMgW1Y9h7ib/Gerwu6M3
 KF2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=+pN/X6TkF3QfQYN0iq5kejzd2VQyRewrwmDk20zIsPE=;
 b=Jt29NMOPz0eq1nebVFhKC+vMJI39/5AoYUklqhum2vOEBQREh69DhHk78/Hzn2rSqE
 s1S3Oyw9+ULF/BUIuDFcOYNvCu3+cOBkIjN8XENc8rJeSwzXUS0yuJpZMdLjgG9kUvEZ
 l8sFDyLIBcuZYuButLHEbUi0LC/lmivaOXFKwwsX3TOmdHMt/0/qtaVVb5DG27un/HLG
 9Ey7cby0T8dpeaCBFsQkjRyjoKAwhWVt6xdpN/bfCgfxB2xNWV3kXa1JRVmNYn9eVXPb
 rRUse7dj+npUVo4PzFDQcAJCzcI3xlOYpLtWMT+a29+IfJ1QKxKCkvL6Yd/KpOEDO2Ac
 4dBw==
X-Gm-Message-State: AGi0PuZqz4kda6gyiVW1gn+ACAL4YW00dWHJeG58cNTHV6lvgUR8annR
 DXUrJ/+ojw7t0IXlM7PIUD9k8g==
X-Google-Smtp-Source: APiQypLF5mX4931No0SUP/hRJ92Dcfyk/oXO006XpbplBrNM2S/bBSxvflVHORg17Yjweetaq1CHEA==
X-Received: by 2002:a17:90a:1912:: with SMTP id
 18mr3161230pjg.115.1588903249378; 
 Thu, 07 May 2020 19:00:49 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id c14sm159795pgi.54.2020.05.07.19.00.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 19:00:48 -0700 (PDT)
Message-ID: <5eb4bd50.1c69fb81.a1f1c.0dca@mx.google.com>
Date: Thu, 07 May 2020 19:00:48 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.7-rc4-89-gc1c5ead13189
X-Kernelci-Report-Type: boot
Subject: arm64/for-kernelci boot: 26 boots: 0 failed,
 26 passed (v5.7-rc4-89-gc1c5ead13189)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_190050_045321_429BF3DA 
X-CRM114-Status: UNSURE (   3.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

arm64/for-kernelci boot: 26 boots: 0 failed, 26 passed (v5.7-rc4-89-gc1c5ead13189)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.7-rc4-89-gc1c5ead13189/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.7-rc4-89-gc1c5ead13189/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.7-rc4-89-gc1c5ead13189
Git Commit: c1c5ead13189568cadef4f1dfb13f67d42183d3c
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 23 unique boards, 7 SoC families, 1 build out of 3

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
