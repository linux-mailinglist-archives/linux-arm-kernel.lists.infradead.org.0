Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E41DB13FC32
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 23:30:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tEhd2x7CGgFm0Yd3QN34G3WY86yFqz6oKOA6D7RIMHw=; b=H6ufPaTYpDhjTs
	iNam1Er0Zfe8lOSzbTQdVQc59+/VZfEp914KjUWCbaFIhFom7E4qSL3lhG79lQVQ3QBqBKIX8u2jk
	5Tr6eFAMtvl/KqwgSnYMqQssltePdcn8qZWgna2GN8FWADALXol3qmr58zZ5aZDMLc1ivwEQOwJeM
	BcVEqs2CQjQyjDSCCFARYLyT4dFVxtCagjAWSsOA6oaw97QTEg19cQlrwTvkPGiuLJMKUPIKji4Pa
	kyazISHEsZSrlbsOGwicm1LMnx8w/73rcEdedMSkg89MXZ6OQP179KgZO7nPc41n7DDCXC5MBGsk9
	b4/myZ1QOheQ5iT2pQhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isDeH-0000HA-NC; Thu, 16 Jan 2020 22:29:57 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isDe5-0000Gf-5M
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 22:29:46 +0000
Received: by mail-wr1-x42c.google.com with SMTP id d16so20798574wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 14:29:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=CzWhblzhSHV4nHFZG8QfOz3u5IM2IWV8BNxccTFhFL4=;
 b=OZV3OgpJO5uYChtBYawe09SrRf/wzreTNZEqmg9SKjZ9QWyF1PRvlqbZp4mIcqkKS7
 Vpz2CNbV+Vj7BhXjUIA+yybgsqQmfJwYhjHykDbbsCIK4FqtiK/gGbbaKk0J2R3//HOf
 WPkCbhxIC8Wm0sCyoHwtd+oMK80+sRvvqwVLvhOXU5yhadG47E4K0EWiNu9QZXA3OPiv
 pTQ1ltFUmQZHMwrtl8xhTvGNHrKqT6VmqrGoh0zF6dYgju7oSq3n/6zhBH6PIslhiQaR
 Qi6cTwKszs3E0yc+YlxKicDRIDpx7+dl1hVBwBvbtM883ivVklHhWG+gQTwSiLM1SY3A
 prYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=CzWhblzhSHV4nHFZG8QfOz3u5IM2IWV8BNxccTFhFL4=;
 b=BPQQf++G0XYlK7UV2G6ezxXEsXyVXhONzxA0BPxdfhiMGXH5VMPd9iKEJ0A/b9bbKb
 UgpDqbXACGOcdk7Zg2pu+wCAcW8HG3LJYqUdD3Oey++AQPooWjg5U9DpOBryFPKCivmk
 papVd8j07HaoZm7EBm8t1vYYm9ZWa8Vlpah6+NMvxpXgsi5VJdvtNEtWhLiGRwX2B3yS
 11/o99N0IhRm3tQ0XaWd7ptYGDv4e1dwwEw1HwjiqhYo1mQQz78TPpBDZ7AioyLS27uE
 aUgKVNA8odx6jcB9doDJJGXMFp+qIjM7z4nL3YBgQjST13emXbQZFVcOuZrjLqBV8eA3
 CcCQ==
X-Gm-Message-State: APjAAAUIpXVZBBRBst61l89Rn8fXweeqJQWyIDD316Aegww7X+ehJThn
 vk3pP7gGGLi0uiuaqK1TjVe5Dw==
X-Google-Smtp-Source: APXvYqxonKzAGXNE7IlRlFn2g1ydH+ayAUrODue6Pq0JyagctSTphkzwCzWim+OkVPyoqFiEC3mktQ==
X-Received: by 2002:a5d:630c:: with SMTP id i12mr5573826wru.350.1579213778571; 
 Thu, 16 Jan 2020 14:29:38 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id 5sm31326891wrh.5.2020.01.16.14.29.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 14:29:38 -0800 (PST)
Message-ID: <5e20e3d2.1c69fb81.cd75c.29cb@mx.google.com>
Date: Thu, 16 Jan 2020 14:29:38 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: boot
X-Kernelci-Kernel: v5.5-rc6-60-gb260f5eb4e57
Subject: arm64/for-kernelci boot: 24 boots: 1 failed,
 22 passed with 1 untried/unknown (v5.5-rc6-60-gb260f5eb4e57)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_142945_207813_B66F3A5D 
X-CRM114-Status: UNSURE (   3.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42c listed in]
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

arm64/for-kernelci boot: 24 boots: 1 failed, 22 passed with 1 untried/unknown (v5.5-rc6-60-gb260f5eb4e57)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.5-rc6-60-gb260f5eb4e57/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.5-rc6-60-gb260f5eb4e57/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.5-rc6-60-gb260f5eb4e57
Git Commit: b260f5eb4e571549f47906273e7b53ad8c0087c4
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 21 unique boards, 7 SoC families, 1 build out of 3

Boot Regressions Detected:

arm64:

    defconfig:
        gcc-8:
          meson-g12b-a311d-khadas-vim3:
              lab-baylibre: new failure (last pass: v5.5-rc6-47-g40f39e8372fe)
          meson-gxl-s905x-khadas-vim:
              lab-baylibre: new failure (last pass: v5.5-rc6-47-g40f39e8372fe)

Boot Failure Detected:

arm64:
    defconfig:
        gcc-8:
            meson-gxl-s905x-khadas-vim: 1 failed lab

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
