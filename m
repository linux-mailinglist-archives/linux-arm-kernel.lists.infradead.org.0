Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 813AE1048B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 03:47:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MiKy3ij+IA48LVKom0lfIpmXomdKoNp2STgharOVgy4=; b=l3HcZHDkLIwULH
	p3Z7MSJEfFy0SUhS4pH24CxnodolwCoKIoAAsqSetGD1N+tEbytRVbfPZygf6QkzPnLgdnWu9+qit
	xRCc0EZkh/UlTr26rHcDMtemJcfurnMNxWeWdX1QnDNwk6/edA1IN1Jr/zhQCVBS58h8nMJF4cIf4
	r9xHllzP/2YkRu3RUxUlIe15bad6R6HV1P0vRRhyFOqJ5JShfkpyPV217iUza6H9RC9099y95wLkY
	dM/+FaIfGPFf9agxhdIh/wKGHleZEElwSbq3DxsDbU8I+Fbu9gFPeJ8P1m/ySrewgx8nvEyAPZNuw
	lr94e30J7EGP5zIVmjbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXcV7-0000yn-NA; Thu, 21 Nov 2019 02:47:21 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXcUz-0000yH-41
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 02:47:14 +0000
Received: by mail-wm1-x329.google.com with SMTP id u18so1970091wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 18:47:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=j5f7VqF62dsdH1xCB04m7MRKIMG4Hqyv94LxKt1Y0l8=;
 b=a0jKzr6YQ1a//JDgH2mGNolFVFldHtWK4Yk261dNu8wguQ62RhozNDJ8wGVdz69iAN
 zpwpPN7XZebdXPTMusz0LDgWYDUz5cIyFbpLFN1gZ30xX7lkDUFbhss29efuyg8whist
 L/1wf6opej2dTHEXQ3sqxJrIRRx5+EL17p9J1NE0BNJUQ/Qmbc8Pla3XHqHF9w6MiDY8
 1J0c1XcM+jLPouclI1uZZV9Tstnj198DBaZ5N33UbzRTHZMTzzjsSm9KokrMrVwhRcHC
 m59bud+3WZomk5bx2LoxZjQU6Zvhe1ovBOOOYcxjAGKDRGRKUah3vfC9SNaQ9AHvYEwB
 uIQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=j5f7VqF62dsdH1xCB04m7MRKIMG4Hqyv94LxKt1Y0l8=;
 b=bMlGuzPiUI9qwrXB+xrhI9Pw5vhA8sDyfuEcGsYYFF5tc3uYA1p3ucm+S4cwUPAdd3
 rwGVuFMqb+gSYHrieSx/Q2Qo7ARArjodFkTqvF2AgkQ51GnI18iOIiZsIMEUYSOjdPAx
 Z38/neUM4U8I8d3R1igesFM9hUbBopgAOttyIHoAytPvffAEv16CtsnHU7WpwnY7r++u
 gbEMvL7qnmRacw2l7lezpGyJZ2f6IkBsbc/jg2k2cUkfzkR9Dy4c9jCI9XcCtbc0v49p
 PoDWM+8oIIQQmetKDicM69WaFJaE2/rUctXRDdvy554SskW05TO4EmrblK4xTealpMuG
 PzeQ==
X-Gm-Message-State: APjAAAVtpOSs+dcgvbzhQob91LwhYuuL8pMPlpUW5a+gP3nio5HKb8t7
 BiMwQDnJZ2LVah+F11MNpSfFQw==
X-Google-Smtp-Source: APXvYqxmbJAPS9c+z/HRS2312gjSlJgUUUBJSL6I25+VvCgaePK+9pE1eNrlLMDGjCjEprDpE9Znrg==
X-Received: by 2002:a05:600c:299:: with SMTP id
 25mr7288792wmk.50.1574304431283; 
 Wed, 20 Nov 2019 18:47:11 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id n17sm1426530wrp.40.2019.11.20.18.47.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 18:47:10 -0800 (PST)
Message-ID: <5dd5faae.1c69fb81.9bfcb.6f62@mx.google.com>
Date: Wed, 20 Nov 2019 18:47:10 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: boot
X-Kernelci-Kernel: v5.4-rc8-104-gfbaa9209b833
Subject: arm64/for-kernelci boot: 27 boots: 0 failed,
 27 passed (v5.4-rc8-104-gfbaa9209b833)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_184713_164356_3DF8DC79 
X-CRM114-Status: UNSURE (   3.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:329 listed in]
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

arm64/for-kernelci boot: 27 boots: 0 failed, 27 passed (v5.4-rc8-104-gfbaa9209b833)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.4-rc8-104-gfbaa9209b833/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.4-rc8-104-gfbaa9209b833/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.4-rc8-104-gfbaa9209b833
Git Commit: fbaa9209b833102c942d5fa8b5b08010220d2cf4
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 23 unique boards, 8 SoC families, 1 build out of 3

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
