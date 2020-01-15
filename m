Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3675713B917
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 06:37:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V/wom6poK95uaG4FJhPvFsZkUEcF+rsdYLVOHYU5WTs=; b=MvEoNA23shx/5G
	F7BWnDKc+fP5m0OKiML4Y9uRssyoFrt7J2bEcGxDzqZgLr+2Dc+wHNyPUlqXTXzC/Z4sxP1ZO+OcU
	3200FRcW3e2y2A8FkeGzZEirF0z6NER9tyccXDCpC5NvtJE9u0Xj8TVrxSVIeAy3tOcBB/gaNWqqa
	3YPjGRh6jkJi6+KHWTU4swTCIyGM/MDx7dc89VOb7v6CBx8Bxq5//K3lZfIVIFtTXTrYdBdbB54/U
	gGIIpMsNs/pdzJRO0RbttIeSM4h5PK6wjClTF5Sq5NfR+jcOKSQbZc2MqEf+EFP/Q4UH058x84/Kz
	SqCkaelfh8ZpPnWRzwCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irbMZ-0003Ua-7A; Wed, 15 Jan 2020 05:37:07 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irbMM-0003MK-NK
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 05:36:56 +0000
Received: by mail-wm1-x330.google.com with SMTP id p17so16388058wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 21:36:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=xlU85uAaK5jpEp1Si2/SjrrUXL3cwxd/TXu/F72jkCM=;
 b=0NdASZrBsL4AoCzFs5AEBaGg6s4EJVa3JTEM0Gi2DaBxrtp92M6svY95qxoO9fBX3y
 0L/RSRGpf84RcIoWIeoLhXL7RQihlH65d6v0vEVl4NGC9k/uFArYQRYm68kSWKQEGOyK
 Nq+Gi+N1y+f1MFATfifBr1JLDNppbmBg+NckB+HaJixypnDglm5xPT0oT0ZhjKiL/PbA
 o4SEKCPzgBgu12mOWu0tlbzCHO23Wsv0jL2kcvdUzIuV/842jNRGWfD1by0bLx7zD1Zy
 jCdraYkpGULDghteJkZyIxqRLYEL0ngvdyWXt/WJjIigsnhxP57p3UfXkPEPCplskG0Q
 I5lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=xlU85uAaK5jpEp1Si2/SjrrUXL3cwxd/TXu/F72jkCM=;
 b=gzTlGnfSNxHTKtUa8OD8vDYQ4vUKV8sfGri/OguN2Q+87gvsD2zpdknXwW99Fvza+c
 pl6tFAuELtKc+w5xZ22kRAMASai4UlOhFnIXOp/CmsVyz5Rwykmn31KFlT9Xus6f21w/
 EeLOEVMhD+uuFBcwESBktEsFTb/nMiE+AqRGDB3O4NlNKM+odSUZy/2EuOLgI/rnVTyF
 +S6aaB9eMmD3gdtIgIhNz72lGgdE/Dpjs+ifuMGC3E7iQbkE1i8bAiEArelWqQwYu7b0
 +CtTX5ikwdFJaztRCLfPzgpnWdsMnfXeuttxavede0PD5xQpQPl3BtTxAn33LbGRF58i
 5FJA==
X-Gm-Message-State: APjAAAV4KXigv7Ao9qxs/9h2xEyT7SFsJydTb0u7YuajBVA38rVKXCg/
 d007qnyTj8+RHrUrFVUyEYAXGw==
X-Google-Smtp-Source: APXvYqycUVy/2gD8ORTEvwAHOzQXPXX89ubOwXFRgdD/SWNZzMSUpFXThCfBWZDoQLsOF27lkX9B9A==
X-Received: by 2002:a1c:1f51:: with SMTP id f78mr30023680wmf.60.1579066612356; 
 Tue, 14 Jan 2020 21:36:52 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id q68sm23294321wme.14.2020.01.14.21.36.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 21:36:51 -0800 (PST)
Message-ID: <5e1ea4f3.1c69fb81.636a8.0e45@mx.google.com>
Date: Tue, 14 Jan 2020 21:36:51 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: boot
X-Kernelci-Kernel: v5.5-rc6-40-ge31626d443db
Subject: arm64/for-kernelci boot: 26 boots: 0 failed,
 26 passed (v5.5-rc6-40-ge31626d443db)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_213654_765138_F2F196CB 
X-CRM114-Status: UNSURE (   3.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:330 listed in]
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

arm64/for-kernelci boot: 26 boots: 0 failed, 26 passed (v5.5-rc6-40-ge31626d443db)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.5-rc6-40-ge31626d443db/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.5-rc6-40-ge31626d443db/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.5-rc6-40-ge31626d443db
Git Commit: e31626d443db6933723cf756816cd0af6c9b8d89
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 23 unique boards, 8 SoC families, 1 build out of 3

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
