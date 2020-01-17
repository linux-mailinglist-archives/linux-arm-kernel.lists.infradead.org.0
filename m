Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E524140AB9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 14:32:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0iIoMBzd0huv4Vt+VHqDCM7kd7l15NSXhc45UNmpoXE=; b=N+VztIuct90mL4
	8GJFjW2/RlijHVDg3EV4ttuRtS5+hYg8difGTdp1jOygCHDGPO+RwLFmrsKsCy5FxN6qDXXO1RcJ0
	Uh+o5Hov5PkIzAB9FepbvQeXycD9iS7nP73Pu21x+rXAmjnTWqWJvnQASEKxn483sX4thHN4Ii8Xt
	m/bqt6wEzEveub2FooavAi1Kzgu4yMLdWiCJFWcUJPTgN8b9w5Vfz/wr1Ydj/8BPXsqHLlZ5N7wzY
	6a1zw6xmofNjZcvWw0kkLQRJjqzy4b4YLceJcJNcX/6/s3+0LcKgmfIPdMOwluna2E6h7wwtnmMFT
	8aPGz3Yd0ztZVDZ5Ma1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isRjD-0002l3-4C; Fri, 17 Jan 2020 13:31:59 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isRj1-0002kR-MP
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 13:31:52 +0000
Received: by mail-wr1-x42d.google.com with SMTP id j42so22688830wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 05:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=bu+4yKQVtIVcVB/ievMp2U0jwjgXlxHIil26qtcC0i4=;
 b=xCOY8/AYMzC7BobdQL13TUBRSk3X4rDZj1rHEOifkN5SN7syzBglnsNd01P4+RDFDF
 2O9FUvJ3JVjqCP58CLXZbY6owRGn4rtPfYgd+SUnswN/ebLyvBpjqNbMBgLoksI7XUkl
 3sxeBPHzSlwykd+DuNDO/xoVt0/oITGAI4ByDAXMhtpqjrinf+hTRRgopfUe8j4T2QZz
 rQjTrzFMfdZRft3ukHa5RQbvDLA5tE+FdxXXbzKZSETKPRCo70QrOBk2NKukI1tbb/r5
 ypc2C5mKewX1LjMLBlHRUWxOcVunyC5glsG4YyBCR3e2qKN7HW9VcdBrAxV3eUvmpbt2
 F/CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=bu+4yKQVtIVcVB/ievMp2U0jwjgXlxHIil26qtcC0i4=;
 b=coedWxSY7k4UeCSOhqpcBAK+Gg1x6pQpdRJvUGHAkaeV8UrwD3w27gsLLMwBE6bFJC
 QjB6t6V8zS03AQt7VPVjlg1vHmL4r7g297Wain30yRRc21ZNg/8cuqJh610mtBLyeR95
 tWGYXJEkIfd+D2iX/KPkXVTCy2Zg+dw8MjOOPQkDSH/W+qv70jOfx+BtPkAWM8UbNfKp
 bA/e/N+Mn4qA7qnk/L8ZX0mDPpuP9Oo0MqShkOiyfX/6Wx0K2boHvs0K9Xj1gjdNlFVc
 cHe6qDCGAsIJuW3AY+2M7GYZvPDV10iB49RTbQkA5OEesaDX6orWRp2LRrijdhRQ/dbw
 aTtQ==
X-Gm-Message-State: APjAAAUbTo4sGlAII6Sw46OzWT67TSPiG4G1LC9MaomSm74J5Ov33loc
 QX0fLKPGMhNVOJoNAz7U32c6NQ==
X-Google-Smtp-Source: APXvYqzpV1nzPU5PM0HwffcIHlaRYWQBeA033vF5S+7Qx5aJn43z26MgHcq5g0rp25UiysiZxUUBiw==
X-Received: by 2002:adf:e8ca:: with SMTP id k10mr2934534wrn.50.1579267906166; 
 Fri, 17 Jan 2020 05:31:46 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id o4sm33777656wrw.97.2020.01.17.05.31.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 05:31:45 -0800 (PST)
Message-ID: <5e21b741.1c69fb81.f9a06.bb92@mx.google.com>
Date: Fri, 17 Jan 2020 05:31:45 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: boot
X-Kernelci-Kernel: v5.5-rc6-61-g2556a8d3927a
Subject: arm64/for-kernelci boot: 27 boots: 0 failed,
 27 passed (v5.5-rc6-61-g2556a8d3927a)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_053147_731941_061DCF61 
X-CRM114-Status: UNSURE (   3.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42d listed in]
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

arm64/for-kernelci boot: 27 boots: 0 failed, 27 passed (v5.5-rc6-61-g2556a8d3927a)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.5-rc6-61-g2556a8d3927a/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.5-rc6-61-g2556a8d3927a/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.5-rc6-61-g2556a8d3927a
Git Commit: 2556a8d3927ad14ba52e6bd7203cb80caca4895c
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 24 unique boards, 7 SoC families, 1 build out of 3

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
