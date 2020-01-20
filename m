Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0EE143371
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 22:39:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uLtL8dG0Fk5aWGN7vN08ERG4ccy5r5Vy1brlq3tUraE=; b=pV9VnxhkqBxIKc
	DHeBZ80eDis+y1Gm4vsUa5u9JbyTjxMWZuMfypjG/Osof39xzRjnHi3BNm5MFj0pjE1Altrpe6i8B
	unqFvCbe9kE8HmrKptHbToydrlqq8maSJ7pvD2yjO8xv9x+b5bGVI/g/fdYoL9tDUvLKKloqXNgOr
	Cj+lg5CkQr+Udn16R2j4aZav5btlP6BeWU5FGudDRBqT3PJEKXowdtJ0r/lPGSkp/kTKJfTt0hCtl
	v6IF+fTDVF9OYnEF6H+IEPPIGlEOj7w0cvkxkBvKzjVueMmV5neJhxj7eHV7F84v0obxW3GWcvkkJ
	2AzURQn0WIIikiB83XGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itelA-00069U-Rr; Mon, 20 Jan 2020 21:39:00 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itel0-00068l-F0
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 21:38:51 +0000
Received: by mail-wm1-x331.google.com with SMTP id m24so848840wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Jan 2020 13:38:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=12yAq2wyFjHnLQZdUp9mPsxUV726uhaeshy5bq2tPgU=;
 b=CGwSQnnh/iOuaNRlIftp2KZxsApbg9HDIPbI92owhXFAN8oiiX41oPEDis5CtVnDqE
 20Dj2Dv2CHVvvUymB2U665+BElrwRSfjzxOTcaaWH4w+4W/bgRI2fgarazY68K7nllqC
 14pNaJHvvD8CP1imilV1v3wpwdwigldieh3gfkF5k4xEta4WB55E36FQr/Wh+jk6Ezch
 tP7eaQA2Sp4qhLEkSCigzZe17kadvoUrkuPRk3p/q4snbYdaMnYrZtHCZzXT7yuYP9VE
 zIcZVL3AKS8z9u8iB67gclcZuC9p8BhNxH09WlGBYAW/Q5q73KttsSOsacJAqmtFzEjh
 Jksw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=12yAq2wyFjHnLQZdUp9mPsxUV726uhaeshy5bq2tPgU=;
 b=s6c/ay/iNytQHN8Ulvnl0oLkSfjeKbbSwFy2nd05nx9a/Aq8mDrWdvLNsc0NBczlkP
 Sc8OtT80gxYdAoTLjQeJYnMw3om+a7fIwUwYFejMbf2c6I4O2/sug2+LhrsnzMembrhn
 fXGSQewN4SD/xwH3gv5M6iELoWz399ZO28Hye/l35bklCUObhE2T1PeKy2NR1Ccf6hWg
 e3EIgATJUjHIURE/lvv88uvdyjA+G9xG0S0/2FSMNzopssUzW1U62/uaNZTGX6Utj/uX
 JmVD7OQw1nPYF/acqLohCIKlFaCWs+1ywbm3w/dMunsORMIoDtP5Xxg3/KLTWR1YftWh
 pXwA==
X-Gm-Message-State: APjAAAUf/VJv+QMpMhiuDm9STePKiR+vNStbGJE8fqMVcHDd4GkOHJ1n
 RSBM3RTZHxFLnCr6jIiWO3sK6w==
X-Google-Smtp-Source: APXvYqyC9I7QMX0gt8Asf28DwgNFbAHYMa6Rnhgj2VF7+eul+AVQ2VeNzjNBScPc+RnzgNUxx1j59g==
X-Received: by 2002:a1c:f407:: with SMTP id z7mr784735wma.72.1579556328703;
 Mon, 20 Jan 2020 13:38:48 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id z11sm51421356wrt.82.2020.01.20.13.38.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jan 2020 13:38:48 -0800 (PST)
Message-ID: <5e261de8.1c69fb81.56359.cc62@mx.google.com>
Date: Mon, 20 Jan 2020 13:38:48 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: boot
X-Kernelci-Kernel: v5.5-rc7-70-g46158a360c3a
Subject: arm64/for-kernelci boot: 24 boots: 0 failed,
 24 passed (v5.5-rc7-70-g46158a360c3a)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_133850_503045_E8D2C1A7 
X-CRM114-Status: UNSURE (   3.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:331 listed in]
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

arm64/for-kernelci boot: 24 boots: 0 failed, 24 passed (v5.5-rc7-70-g46158a360c3a)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.5-rc7-70-g46158a360c3a/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.5-rc7-70-g46158a360c3a/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.5-rc7-70-g46158a360c3a
Git Commit: 46158a360c3a354573d99b15c052116ab5f1f9eb
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 21 unique boards, 7 SoC families, 1 build out of 3

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
