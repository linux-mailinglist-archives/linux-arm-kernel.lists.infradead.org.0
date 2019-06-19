Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E46A4BA55
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:42:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwqGhfu6j7KyDiRhHk/K7aHPUeKim2nZw/sk/qsQvJM=; b=EYTHF8/vnpUSU/
	Iz9rMx6Vzz9wKMeuIIQPR7chWAtBXtGICGAvOM0YZSS7LreXbnOcp4bTw1B9Mn+pKYCnXIpnPnCk+
	j+SW6e0Vtwm0QlwV1BfW+Z+W47Smggzch7IVpzQkgpvWDXvBAJ3nyjEyWKI1gVHWsoXz+W74SXpmQ
	O2zyHU5ygKcclssm+I+3sKm4aA3YeUFyx9AHy1Lg0O0AwqnuCB7lVSLOtoBKXwQhR07y4gQ9nM3UQ
	QMXszI7LaAW3O4ce1WjGEW5VfdTMq4mgxqyVSPCXr4Hr4KDE1sNA676heWUJ7nzPZizIWOPwoYQfQ
	dDsqE9xMZEVMZuroK8Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdarI-0003FY-GT; Wed, 19 Jun 2019 13:42:40 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdao8-0007ji-Rc
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:39:26 +0000
Received: by mail-lf1-x143.google.com with SMTP id y13so12152777lfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 06:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=poQTjuhtDsupGdVClN0ALov7TDRSULG2jSa2vmjVCU4=;
 b=l0/gF9/OzFgtGmzu7Ddh94ZXY54MyG2jXNCKTSFXAdsBC/fnoN5fG8IjW/eOgNukxP
 Ge373wE/T0YzSFbHLkXp6XkrtHU9mUmwjk7EHw+f2TeVxkgML3d9iDSEvjNajpa+6746
 yQdmuYz36CveVabg5LDbdCLwdMklqodT2SjIvIpGoP+x6PzsZNlG8/lox1bj7i/NL2Ki
 N0gSC8rBoz7T5YInhwaB6YKHfeP5/SMeNjw1NWhrKZXNSem0XOZ/OOLbEFF1/+nnrBFQ
 n3mN0QBoDJo4oGA+e2ID+94wEft9iVNHGoVAxH/PiA6Y39yWM+Mc57ZyDDFsez8ElW+R
 QzuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=poQTjuhtDsupGdVClN0ALov7TDRSULG2jSa2vmjVCU4=;
 b=PWW+L1CRVYSxps+NpxCGr5gjLVqmNuP3THNZKuKFTry+rbFtO4N6/1bPhYlVN4IJG8
 0LcNFHVkRszss/cudHF5kECyNCb5ny+5MW66/kPYs4iICu9cLq7AtCcxY5jnvXDtk8aM
 EQQyvXkLPIRDlZIgJbFFfUPtT+e7G9GkdFfbuxkxBFCGPFzgSIC+OzwDliLRUcnauNqe
 htYoBDHWJ1dwRziGnS6P/2OHv8JKn3mOnlbBVMSj/3fKXm/1Whm9SEj0Zpnk43+/pJxR
 CO8pHuJSQWCEyIy+vWiLHGFeYGrdNrUJiRScJpikYjAbq4BVTdod3HSCK7BVUdYCJW3Q
 rZ7w==
X-Gm-Message-State: APjAAAU/BrHBdUHhWibe0P4Fn7VqPiApKkWozWSN5oQrZ966CdKvB/0/
 reNcFc5CHtmMdSGCADZKhILBHQ==
X-Google-Smtp-Source: APXvYqxKjnVwguoOB08XOnRxBMmddtcMtOfbSZXzkSUZWCk4zT6Htfabazmn5u6TTmwmpHl9zyBoRA==
X-Received: by 2002:a19:491d:: with SMTP id w29mr45756307lfa.149.1560951563329; 
 Wed, 19 Jun 2019 06:39:23 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id n1sm2648220lfl.77.2019.06.19.06.39.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 06:39:22 -0700 (PDT)
Date: Wed, 19 Jun 2019 06:27:50 -0700
From: Olof Johansson <olof@lixom.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [GIT PULL] ARM: dts: exynos: Pull for v5.3
Message-ID: <20190619132750.crkv5cvdt2w5jt3h@localhost>
References: <20190616175513.3681-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190616175513.3681-1-krzk@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_063924_990341_D75C4C3E 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, arm@kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 16, 2019 at 07:55:13PM +0200, Krzysztof Kozlowski wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt-5.3
> 
> for you to fetch changes up to d2cac68e0d9b038da7207c0b63e1399c4f9f60c4:
> 
>   ARM: dts: exynos: Add ADC node to Exynos5410 and Odroid XU (2019-06-11 20:37:21 +0200)
> 
> ----------------------------------------------------------------
> Samsung DTS ARM changes for v5.3
> 
> 1. Fixes for minor warnings.
> 2. Enable ADC on Exynos5410 Odroid XU board.
> 
> ----------------------------------------------------------------
> Krzysztof Kozlowski (3):
>       ARM: dts: exynos: Move CPU OPP tables out of SoC node on Exynos5420
>       ARM: dts: exynos: Raise maximum buck regulator voltages on Arndale Octa
>       ARM: dts: exynos: Add ADC node to Exynos5410 and Odroid XU

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
