Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D02617CC46
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 06:33:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Kb2nyimd/4q8vAd+5X2rUmHjqx3bY6CeYGwh/tqP6+0=; b=LAe1F7887fwupe
	uI940MjXCJERx9bmw1BETfenhD/vle0b7mU8XYOWZKvHcpm/bA7XMr9xen7UZG5YZrbRU+pfkwTak
	O40VZBIWKNfa0m/790oWAx+mDFUmwOKi4GRaXq7T9IUpaKU+BrTk9q+/80N7P43MZ9AvrheLPE7Hv
	hYNm6OUqpUCiJ1vebSZ3wK5oNaDSQSqg7uKDEMJI85+ZxTzOHytnU6cOoqsmI3IKhKEzGTWaBIxzP
	TB1Rm9T3ObQuRqfAekElnG13vRVs674q3ZebT2/POEQAZ5BScF9xA4KRXttkvhN7OVZgS0hj37OeW
	OGiu42fVLROcwFH26NZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAS5F-0005cq-JV; Sat, 07 Mar 2020 05:33:09 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAS4y-0005aD-S8
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 05:32:54 +0000
Received: by mail-pj1-x1032.google.com with SMTP id a16so1998251pju.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 21:32:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=of0SHcTFyAKMv3ItJw2eJkNdgd536KEeQ6xfFrkGouo=;
 b=r772NbmbHH1LIgitQyBPUBKObRMtJ3W4o9XkbdyuaiNmgx9BFX/6q1YuqNHUDC2/uB
 DJOnzr6avNPeo40XE4uX+LUDl79axbACLidBMMSjL0jN0yFx5PompYDfqrKy+j+VnYql
 0Y/p2MN29bVbm1CccL77CoRGCuWgrjKMM73sL8vV5KZSXxYO4G2MYBENVKe5i/fbckqf
 0mH/HcdMvwv1hfPBMZh3oqkNY62t9FHmKyC/PQIJXi6hN4AvVW2/8AgVxE07rCD2jwfs
 Utm5uHLHqQZxzg3HPApdHOIa7xcghq2rbHxc3t7oNfMcAP5WJps77qdQb+eo5WE8hssY
 oACQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=of0SHcTFyAKMv3ItJw2eJkNdgd536KEeQ6xfFrkGouo=;
 b=jnj6pLRMlwJUhB0W44qj8H8uHg6+kYEcuK/hwRNDE8FBCsWytDxqDwkk6QOol77T2V
 nx1weqVxG19YX2g8v7c7TTmS4q7Iq4KWMRe5L4T/GC9PHhwgD79TWPa3CeTWmZEqzu92
 kCiQIpgninNGcGrTU4mrX0mTaBM2Yu9YacNOQolAN1WPRwBMLuZt42kV6CoKUBCIQwnu
 M8bFw7owiPrrd3/aFUZdCQZEPJ8J0hnCi4B/H/CN0sLIi8hCKntc8Lp1H17759KqeCWs
 zL+hfp08OoEPrBsn94PB49zTTuCM2WCgeCfqrcHhm8b78hhT+RxREbFWylm5nmQE1uAo
 nk5A==
X-Gm-Message-State: ANhLgQ1eCOjQHnP8nxdB5nTMfENqNuyLcizV+g5vuX3DpV4m2T2hf+sE
 L2qZMs73+e4Z5rlCjarEMGi3fc78NYE=
X-Google-Smtp-Source: ADFU+vtNqc2OZbP/tPcMPH4u+oakwUdnwzEVqYh1IE4CtBsOR8hm76vhZfKdJ819Q0HJAq6pP+5ICw==
X-Received: by 2002:a17:902:b692:: with SMTP id
 c18mr6415301pls.7.1583559171987; 
 Fri, 06 Mar 2020 21:32:51 -0800 (PST)
Received: from [10.0.9.4] ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id w195sm35248595pfd.65.2020.03.06.21.32.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 21:32:50 -0800 (PST)
Message-ID: <5e633202.1c69fb81.24a49.d65e@mx.google.com>
Date: Fri, 06 Mar 2020 21:32:50 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.6-rc4-20-g215ae3ad8d91
X-Kernelci-Report-Type: test
Subject: arm64/for-kernelci baseline: 21 runs,
 0 regressions (v5.6-rc4-20-g215ae3ad8d91)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_213252_934294_DA025A51 
X-CRM114-Status: UNSURE (   4.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1032 listed in]
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

arm64/for-kernelci baseline: 21 runs, 0 regressions (v5.6-rc4-20-g215ae3ad8d91)

Test results summary
--------------------

run | platform                     | arch  | lab                   | compiler | defconfig | results
----+------------------------------+-------+-----------------------+----------+-----------+--------
1   | bcm2711-rpi-4-b              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
2   | bcm2837-rpi-3-b              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
3   | imx8mn-ddr4-evk              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
4   | meson-g12a-sei510            | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
5   | meson-g12a-u200              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
6   | meson-g12a-x96-max           | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
7   | meson-g12b-a311d-khadas-vim3 | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
8   | meson-g12b-odroid-n2         | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
9   | meson-gxl-s805x-p241         | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
10  | meson-gxl-s905d-p230         | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
11  | meson-gxl-s905x-khadas-vim   | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
12  | meson-gxl-s905x-libretech-cc | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
13  | meson-gxm-khadas-vim2        | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
14  | meson-gxm-q200               | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
15  | meson-sm1-khadas-vim3l       | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
16  | meson-sm1-sei610             | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
17  | qemu_arm64-virt-gicv2        | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
18  | qemu_arm64-virt-gicv3        | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
19  | rk3399-puma-haikou           | arm64 | lab-theobroma-systems | gcc-8    | defconfig | 5/5    
20  | sun50i-a64-pine64-plus       | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
21  | sun50i-h5-lib...ch-all-h3-cc | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    


  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.6-rc4-20-g215ae3ad8d91
  URL:      git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      215ae3ad8d91782b7e88e07c246a1501a724e164 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
