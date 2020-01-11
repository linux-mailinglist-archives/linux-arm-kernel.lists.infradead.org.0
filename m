Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00254137AD1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 01:55:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zDvNyF39K/5Ggj5AW/uo5pInQa59M2lFugWkvEvyaa0=; b=VHm787VVUUl2lF
	mN6zmyFf921u74ovcsFlWTXIrblL8ySgrQiJ7p9hzhnHuZ/5k4J0HDFRC6P5qX2xSn0ZARNJHbvpb
	lM8mPumhuMTbJL0i/aug1xqtGmBTdxEABoWoxPWujIjRRR6mDmAd+5mfKLBgXb8au4MR5xtquLW5I
	/JH2XFYhH2Gaay4kUh5jUJiB4ZPZJ8hx2huvFK9N5VR370AnHJpwxMPbXJCZSputyg8TuE6uYFbei
	KphFlTl0WWWdluWD+PAVSi0ZT6RfU1Fx6HBU7a6DYLGDL1yMH2MVN/QNv0lA99IXfd8dai08R2W1+
	s3nUf16L67cuSVthm6zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq53v-0000dB-P8; Sat, 11 Jan 2020 00:55:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq53p-0000co-Kg
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 00:55:30 +0000
Received: by mail-wr1-x441.google.com with SMTP id z7so3443493wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 16:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MM/Yf3NVecuRSv0F4n7CfUV2baWCyZwpXRLFf3og0OY=;
 b=B2gbk1Gu8moLMZJ6A4tpGJaZpA1f+g7PnE2GYTl8BWG2u+bV+lKJDRAl18+NOFETWC
 rLzqMQmbNNJXArAXTsrym2XrgsNjD6NFIXr/B/YY5fv4EuiaHfsYqcsgXDa1//ssrXLU
 aCCnocz661VFfGf10DvEgB8uxTyJPW2gU1D5y85bsUYqfe0yxfsmuJ8ncqmzVr6XDxnP
 KtuKKKkVR5EwgPbQ8INFyxOI11/lVI+zueO9HWRjzq7VSjokGolcoyj8a/4zFgZs4k7+
 me4Bw2D7Pc7HhTXhRjz0W4RZQn4IQDAJ72L6C+nXQcWDa7gsL6eBoYZ0YA+vHv8dQE2D
 tblw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MM/Yf3NVecuRSv0F4n7CfUV2baWCyZwpXRLFf3og0OY=;
 b=kK5aLrSAHX3TB5Vos+4Lofg8nhINOlUS2dGcs7RYeL+9tuqc1e/2nBq5ZthrxKHSk/
 SZ8sm9BuRXNI3UEGQCBGxtDFIa48aJlnl+1DI7jGmv61ntVNJGQ0tEgOu56OxbDmPUsP
 iRaQvxBW9ZJfwElboHacBQBSlogJZVWKPgCT9j7X00SiD364i8uOi5ifDF12FSCJfJ0i
 U9Jf/QzCvszEFdMvrdZK3vipEN0N+M+KiIv4WubJkLShPD2KgC4utyFcsdOhqIC3ZM4d
 O6VZbsbKULH19k5Yg325w8E5d6MGiyBxCkwSCezWtr8ko1FtBBIxwIjDj9CdPtB3n5bN
 dn7Q==
X-Gm-Message-State: APjAAAXjUSpHqvDoxeEzg1ihPvfnm7qQzWnDy6xKNI2yc1Ovq0D+HyHq
 i+xo6MoopR55TCk0VkSQyuc=
X-Google-Smtp-Source: APXvYqzzx2qGeaHgnUv7FNOKQYgX+2m7m3CmddjG0TJqOQyk2fkrvbxi2eQQ5EfKXSpRdibKytrmow==
X-Received: by 2002:a5d:6a8e:: with SMTP id s14mr6266194wru.150.1578704128361; 
 Fri, 10 Jan 2020 16:55:28 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id x10sm4127803wrv.60.2020.01.10.16.55.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 16:55:27 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 8/8] arm64: tegra: Default configuration updates for
 v5.6-rc1
Date: Sat, 11 Jan 2020 01:55:26 +0100
Message-Id: <20200111005526.2413959-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200111003553.2411874-1-thierry.reding@gmail.com>
References: <20200111003553.2411874-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_165529_679641_2CD293A2 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.6-arm64-defconfig

for you to fetch changes up to ddb8840d2777bfca7c9ebc8c24ea20f9a37145ba:

  arm64: defconfig: Enable tegra XUDC support (2020-01-10 18:34:14 +0100)

Thanks,
Thierry

----------------------------------------------------------------
arm64: tegra: Default configuration updates for v5.6-rc1

This enables the USB GPIO connector and Tegra XUDC drivers in the
default configuration.

----------------------------------------------------------------
Nagarjuna Kristam (1):
      arm64: defconfig: Enable tegra XUDC support

 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
