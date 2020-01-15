Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCE713D0C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 00:47:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9CcalyqG+TbM7keRCUGbGIOep0f/B9TzniI3ksmLckU=; b=m+BPBt1ondzdP9
	ZQI4gpAsXVRsHV4IJ2AIYlcbZQli2ULKncRj0i/YCoAVz+Ig2ZoXFSfhs78SpuYtsaCjjI2sIhzIq
	+25Cg8eCWDnjkSfHVoLmyystxvYqAd3ZwX83tTUosIuWVIzdt61Ibpn1iGXDZ3vyuk36+nEoRS/3E
	ZXc4H8DDS4hfcHWb71I65nk/aSBtiyDilVXlpRTuCE1k8x26sVUra8VhTAAlu+QVF669cYIExIsA4
	YBsXJisvd2kInIO0YBUbPHjtixOuFFw7jvUel5nI8+7szgOfKgZn7Kgj5DbQl89FU2ya3ADYmRvKM
	zgUP+ky6ROyrxkG8SwSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irsNY-0000Jh-1P; Wed, 15 Jan 2020 23:47:16 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irsNQ-0000JP-9z
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 23:47:09 +0000
Received: by mail-wm1-x32c.google.com with SMTP id a5so1887472wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 15:47:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=erSKNl0GVC+DLseOlWOVqHAOJvERJDfEMEr9aR/GOt4=;
 b=P5NsgU6rEu/f7cOd3qs5+wpDyfQBy5N7DywhIqswgCgbXzq5oAnt0JgufJyPODix/r
 cMWYRQUSaEk0UF86CTUgjgvp6PX6P851OhoNEu3xx5jBOYkPif/IMp9DG/T337/+5RxX
 B7ZhBpJsXWmqVUdflv1QEF7htFXVP/qp5VLTUdiQUYjP8lqnHAk4ew/EnsQkL0+JXE0z
 3e30byesBJIYEQusMyat+wQN7sBnmmCSEpBBliC/FyiIhP7sreh+4v4G3uLzYLySbTIO
 nTEHqwGVH3vfqzy62/1uPIPSIIO9c91thf+2NS1ecU8JrlpoLq8y5UKaUN5S32wBLeBv
 JAJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=erSKNl0GVC+DLseOlWOVqHAOJvERJDfEMEr9aR/GOt4=;
 b=kIYM79NT22iPbp+BONUEOMdURyOLYBgULFXDSCYaUye7LVC9DIi//89yVU+JGDK9tJ
 WFsw0jD5z770QiZnrIMpu35Guwp/kVnia+XAiIqoJme49thbbp6n1PMSLE/fiZ8xH2Tz
 +rGnUvQzSe2OgKMZvxPWcgSVBkFErB36SdJ+OTpyEq89APe1oZ9qtWTrOGoH92EUTs1F
 SIYfXdrLIAZnLL9GAzCUf/RJB0vJQLTWwZJQ/fyTjNCJawfK4PkC58nv3WNpYocagkaa
 A2W87b6MSlA+3cinitNeaWjh1+96uq+tx683i3MftJ/1hofmfflZU4cfG+OkI38vWpZm
 maIw==
X-Gm-Message-State: APjAAAUtP92Puq6ARPUk2T59rRddLwbUu2OvaN0yOzy8QyPRWNU4ejAP
 PnvAV4Hd50HHGvJhYn3Ou20WFZkKqByRfw==
X-Google-Smtp-Source: APXvYqxijVUhQXPT2gOdbMdReptY8i8rlJbwossS1G/Jgb28a2oMsgnQPCHqe6Q5fDsRMyQIHv5uwQ==
X-Received: by 2002:a1c:1dd7:: with SMTP id d206mr2608163wmd.5.1579132026544; 
 Wed, 15 Jan 2020 15:47:06 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id x18sm26830787wrr.75.2020.01.15.15.47.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 15:47:06 -0800 (PST)
Message-ID: <5e1fa47a.1c69fb81.1d095.07ed@mx.google.com>
Date: Wed, 15 Jan 2020 15:47:06 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: boot
X-Kernelci-Kernel: v5.5-rc6-47-g40f39e8372fe
Subject: arm64/for-kernelci boot: 24 boots: 0 failed,
 23 passed with 1 untried/unknown (v5.5-rc6-47-g40f39e8372fe)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_154708_344229_31262817 
X-CRM114-Status: UNSURE (   4.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32c listed in]
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

arm64/for-kernelci boot: 24 boots: 0 failed, 23 passed with 1 untried/unknown (v5.5-rc6-47-g40f39e8372fe)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.5-rc6-47-g40f39e8372fe/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.5-rc6-47-g40f39e8372fe/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.5-rc6-47-g40f39e8372fe
Git Commit: 40f39e8372fe0ae2e061d26075a49b2f47515c8d
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 21 unique boards, 6 SoC families, 1 build out of 3

Boot Regressions Detected:

arm64:

    defconfig:
        gcc-8:
          meson-gxl-s805x-p241:
              lab-baylibre: new failure (last pass: v5.5-rc6-40-ge31626d443db)

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
