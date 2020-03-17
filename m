Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 330F218925D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 00:59:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VfbdNr0T03KIWyRRYOt77Pydsl1Qd7ke3KbeTh3MsBg=; b=Dewm1/09XhEKpt
	9uWf62c5z81Qvazx+t93OLsBBorM+8mZAt2u4Mt58aRuKeftg4ixBjzi7T4FjqRQZUIB2KB8oNQx8
	eMEO+6hJTqlFH1cEP47qK/rfGHCpaI5KAHZQjn2F4b/T+uNiwkcfqa0eZejVaDZQAHkBStajqcxFn
	H63U+LKcqggefOV1I5Zzl8mvL8CjBiMefcPJzz/Y2JLsX3oeo/sj4rAErZ0GqG2H0qcd8Oz1KWYKM
	FkDJnS++XrAzks+KuHohUcSMcO24dLdpttB3AjVuRPYULABGTKZKJpcxq1JqhzXR/IYoinPijlMIv
	2nopYvYx+VmkTtggzHdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEM7e-00045H-U2; Tue, 17 Mar 2020 23:59:46 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEM7X-00044j-B6
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 23:59:40 +0000
Received: by mail-pg1-x530.google.com with SMTP id h8so12614756pgs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 16:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=DJmS6mcw+rRCxjLwj8JR1I/E8hUSrk0p54TTRYJI2xw=;
 b=Q/yoDT9A/zjhEk4133s7har/tNbZ2nEOHY6tJy482yPu6Vz2UzNpO47XSfW8a3tgQy
 LJLCwoZeBQimnASNub+PGw4znn8H9fPMon9Bj0Jryq11u7Y9/4cWXaUBWwVZ9FC/LfQU
 DIKnxvIJb06oveJw2Vb4S6/CRpCWi8wCObHR+p8TPoc8yjufL6ocBzBYb/FgPQj2eb5e
 Bo05S5VPGkT9j7uz6UCNajfFizxljwyPK6XyFLYlQlt7gfnWMlWYdfWnefc0zF9bgsCr
 z6/zPtp0c9VLJQPm0h3d/QKekpBLcusgJPA+I44oTTPtGhxaJFM/q/j1B0NAXxmMjmwK
 rjsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=DJmS6mcw+rRCxjLwj8JR1I/E8hUSrk0p54TTRYJI2xw=;
 b=E4tzf8Q4F8UjmgCvUqVj62me+o6hCmYt1aGW92wtPgtqM+XkI9NDzsLeL/KALSQDvX
 pDpn3RTslTYoqLqQ+uxNA4d0JNfxAghUOG7a/xjGuw3sNtHa0L+wuiTYks9lYn1PEiy8
 qKqkMT/xfIPukzWw9n/q2uG6g6+2GYWztBYSUJerIuNvAli8AMo5hXz1rWbauIYQtJrn
 BqsvIg0DxjgIMtAp+DkQzoQKvKzOEDnVXHoTQRpPNelaqjPItADQMp1k6mCt3BryeE1F
 RBOOS//12DybVu523mYfxU2s0PAS2ESUHiwWSsgRqr37civebeLfFIdqiWDFGnSAulqq
 aR7w==
X-Gm-Message-State: ANhLgQ0ooYfwrTtPOXWrdQhdHMpkeg4KPfG4fjFR5Bmk1vPiTTIzno3S
 /omtpu2+Wfj1sVFuDYD19bZpRQ==
X-Google-Smtp-Source: ADFU+vsXyrrsyAIg+yNGysJipFeN7IwbFs01sv8BE8tZ9GPg7jzgWoY6QPzWKAAwBxsnHRch94XFlA==
X-Received: by 2002:aa7:96b8:: with SMTP id g24mr1319414pfk.260.1584489577146; 
 Tue, 17 Mar 2020 16:59:37 -0700 (PDT)
Received: from [10.0.9.4] ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id p4sm4212535pfg.163.2020.03.17.16.59.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 16:59:36 -0700 (PDT)
Message-ID: <5e716468.1c69fb81.53899.fdf8@mx.google.com>
Date: Tue, 17 Mar 2020 16:59:36 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.6-rc6-67-gcf89e8c383a6
X-Kernelci-Report-Type: boot
Subject: arm64/for-kernelci boot: 25 boots: 0 failed,
 25 passed (v5.6-rc6-67-gcf89e8c383a6)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_165939_381629_00BBEECB 
X-CRM114-Status: UNSURE (   3.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:530 listed in]
 [list.dnswl.org]
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

arm64/for-kernelci boot: 25 boots: 0 failed, 25 passed (v5.6-rc6-67-gcf89e8c383a6)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.6-rc6-67-gcf89e8c383a6/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.6-rc6-67-gcf89e8c383a6/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.6-rc6-67-gcf89e8c383a6
Git Commit: cf89e8c383a6447a635400f669d0cd97e89770d9
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 25 unique boards, 6 SoC families, 1 build out of 3

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
