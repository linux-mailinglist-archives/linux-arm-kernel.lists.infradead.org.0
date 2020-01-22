Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9B0145CE1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 21:10:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iiXVLShVrD3de07Mkn90zQDIT8JM8HSAhdpgML3TxOg=; b=EXZK0cmhyRk3DV
	y55+FY/TOmmgXDE44eEp66yGa04AgFGeA5Kj/L93xjCYXYLUSfH3zRuM+nlmO7HJj0QfFLsFM5zUW
	kSuh0H18w/UyZuUHYHHW2SwBzXwKiwF9jgLEU9ToU4iIAlou3Rm72mTMckoHEAFkuTyJGH7+1pH+J
	rHXqiqBsZwfLGmpNAREs22U+GhJ2ppsKfxGeBRbFx3BhsazhWZCE/Fy1k7HaEdyRu/fkxLbngBVoE
	rod9PYgf2chQuMXgbWld9JXQoGsDcrbTj7qGg9PboRL3EcC+KI+03f9GuFslMJ1HFCNOV44lkHtn1
	Ho8yLJ50GG41YE0EguGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuMKM-0000EV-DH; Wed, 22 Jan 2020 20:10:14 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuMK9-0008Fe-Cc
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 20:10:02 +0000
Received: by mail-wr1-x435.google.com with SMTP id b6so504302wrq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 12:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=W83eoxzlT+tLQ48Iwz6RdofshzGgMPkPAL5HizxZpkM=;
 b=zGQZY8/Q2vAqpDtq9/b/KGNRLFVFXy1wpz226kzdW+05Cb30KkLkpUMF3cUF5KguW/
 BoydgFyJR1jxi4yT9GLbgt+yp/j9uFkVZe3IUYCfG8F2laZr7EgQlc4plUP9EraBYmgH
 Rb0rjh7EsfLx2JEhGVS76Kq52gWQ0i2Ancz4/H1JIN2HwVYyjJGyTbJVuZyFclKcCybp
 Svelvv7n2tZw0PQCDJ9tSKetUD4PWsZmhcn2ZJq6hYQZINDoI4Am6ZA8ZUicc4VVmvDM
 wpZLqB2mWBuX4GdrCCl3E654ZEFO2PTfUriCLfT03d4G5TKXb/xCKcfdXjNzw7+FZ8O2
 sWFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=W83eoxzlT+tLQ48Iwz6RdofshzGgMPkPAL5HizxZpkM=;
 b=ZqNS4S2AWcDXbkBveVjJiHOEmrnhhNqCEXQmS1HzOzHCcjNoUS1ePDCfh8lU5ZUt8M
 zkpQP3+vwHCuIaObzHOx3LXPFnYSL0/xuMM0lttix6mzY7ejTEwFZeIjnOO39HINUhNa
 znK41JIPxD+6pe2MTz8c1PfQS85aXo3OpBT2CEUmSY3kRv741ErQZDp9kVRobRGeTwz0
 GBVZ5QQxb9aRfbKz+9PVaxXnTzqyhqaLXJmBca4CQwHB2MjSJvWwVAxwN9lMLYeF6WmJ
 3J51CGH6tUpQi09IAHlSLLJ4zAqTiaLRV62eaI1U8MDcT2ERRA5VOH2kuLQqXdEnFp4S
 eBWw==
X-Gm-Message-State: APjAAAXukiEHa2VkgesR/UKDSothZ3BxL7u/RkfW36sjYful1f8mBPoj
 2h+QL1Goeg6YT1XUpJtqrkfTEGFhh4p6Ng==
X-Google-Smtp-Source: APXvYqyEyxI8ydqFb1ekguFnesSDGK8WgdjSE4JnAOsfYqLD5B2HxbC0RVboV19QtwXPVCVYscGiew==
X-Received: by 2002:a05:6000:1288:: with SMTP id
 f8mr13602548wrx.66.1579723798689; 
 Wed, 22 Jan 2020 12:09:58 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id v3sm58343254wru.32.2020.01.22.12.09.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 12:09:58 -0800 (PST)
Message-ID: <5e28ac16.1c69fb81.1ddd4.a02d@mx.google.com>
Date: Wed, 22 Jan 2020 12:09:58 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: boot
X-Kernelci-Kernel: v5.5-rc7-78-g7bf8ec415871
Subject: arm64/for-kernelci boot: 23 boots: 1 failed,
 22 passed (v5.5-rc7-78-g7bf8ec415871)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_121001_431856_582E490F 
X-CRM114-Status: UNSURE (   3.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

arm64/for-kernelci boot: 23 boots: 1 failed, 22 passed (v5.5-rc7-78-g7bf8ec415871)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.5-rc7-78-g7bf8ec415871/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.5-rc7-78-g7bf8ec415871/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.5-rc7-78-g7bf8ec415871
Git Commit: 7bf8ec415871eeb90108d33f31293f2917c8e022
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 23 unique boards, 7 SoC families, 1 build out of 3

Boot Regressions Detected:

arm64:

    defconfig:
        gcc-8:
          meson-gxl-s805x-p241:
              lab-baylibre: new failure (last pass: v5.5-rc7-77-gae2b4b8eca96)

Boot Failure Detected:

arm64:
    defconfig:
        gcc-8:
            meson-gxl-s805x-p241: 1 failed lab

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
