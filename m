Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0266054E87
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:13:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7gm0ChhYmqTcSROrK7ZJN0vgO64dB812Cv41LKYrg24=; b=EPRLYO9FiSw+NK
	ci/A2Nu69+7nODK1qYlMpfm7DzcUFfMJ3h1viGFEAmY7zZAY/nA/coFcbbV23MyNrbVnc/psTmyKm
	4buy5FLG/V8MY78vcNX5qtMDtP6IunhuXkLedi3Y4/wqZ+EDULeIc4MW/COpt+/2oz7rqjlpeCLF2
	KQ9s+efeZs3A1Xi1djmuwZkvgcScr5XlK0XWZa6lgK9XAmTPDHh9lTWy2WbFRRHO/j7loyPyUzVsY
	d2XpXGOZy48c0cvuxinhInlf9CUAzCE+WtA7EWUOV3Cqff8s7xgpVG0jhA1R0hi03AhyUcySKqUza
	GGM+Iue+VbhYGn9HHAmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkKR-0008Ne-Vf; Tue, 25 Jun 2019 12:13:39 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkCC-0000Xw-Vm
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:05:11 +0000
Received: by mail-lj1-x243.google.com with SMTP id v18so15978147ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wvGe083zbylM3jgvJx4TqLSooUPkgB+aRcGmkGGWWus=;
 b=F9CLG24UnzExVPm+suZ01ykzU3RjN96pXvfOaksfPmxiT8z0/18sYuK6M4q6E+4jH7
 fbmm99bZ+LLiVbuWVeKKLEEknj2DPjDPAk2DiDUZI1dqizwRUtgm20+pHm1T4Q13WgLd
 k0qMVrgyRa60QnP5fiLNRVvtzTgdTfdRbiQtPlb28KKGwVvBKfreAfaG9q8CyFBx3T1z
 J5aR/qn4Q8GfVhE5t151OuV+zJ9xIQCcJbO2POjIe1KYGUyMKexPsI5nIK/jw/TY0MRC
 JRl+4c/bay5wCGBvLSRe0Fr73fiBC/R/g4TWVOerRLP4s1g0UD1HMxNcATf22Y1ZgVkv
 u5Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wvGe083zbylM3jgvJx4TqLSooUPkgB+aRcGmkGGWWus=;
 b=s1tITPUXcoBzo4nbjEdxt+HyGXwLvdgpEoeXeIkeLg47CHpCnLQ+k17SMnQ0qog0bc
 0knTPLwTgfNOJXgpx7T5rdybuNggYQSWC4yw3ZmcPZ74QAFlnXsuawP06s1LFBxQBANf
 50bKtD+nKOelIukaAODHiFhc9OD1tD+JA0NWwAllZ3o64rUlGOD+fTzNBQmhyBSn3NU+
 g13nAf/2w5QC8mzFubFcLoTSQO4qxRNz2c4oUUXSNzYnGmc2OtMUR+MNQu/C8iUzgBCN
 T8/L8vTXyptV3SN8HWL7OFMDciubytgRi00+6MrPjjJYkqljbxILW6HFgvqbKLbiojJN
 DOqA==
X-Gm-Message-State: APjAAAWnN7dSbikJAwHZrFd+xTdqFRuC9reYLXpEk8MCZjcuLhrN0Cdg
 1S8JdUChxw4AVp5X8yqawRTijw==
X-Google-Smtp-Source: APXvYqzR9kYABIJL50Hsx+QRqSTW09Nz1lg5hEopwCu/6IzfR3G/ipPbm7I7W2Ipe5WReMEmYWKleQ==
X-Received: by 2002:a2e:6c0f:: with SMTP id h15mr21400419ljc.36.1561464305338; 
 Tue, 25 Jun 2019 05:05:05 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id z12sm1913670lfe.2.2019.06.25.05.05.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:05:04 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:48:07 -0700
From: Olof Johansson <olof@lixom.net>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: [GIT PULL] STM32 DT changes for v5.3 #1
Message-ID: <20190625114807.cwsgmsliymen7dno@localhost>
References: <9f17b8fd-a354-618b-f70a-168c75d0da27@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9f17b8fd-a354-618b-f70a-168c75d0da27@st.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050509_334301_0ACD093F 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Kevin Hilman <khilman@baylibre.com>, arm-soc <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 04:39:38PM +0200, Alexandre Torgue wrote:
> Hi Arnd, Olof and Kevin,
> 
> Please consider this first round of STM32 DT updates for v5.3.
> As you'll see in highlights, main changes are the addition of a new board
> (stm32mp157a-avenger) on the STM32 MPU family and devices enhancement of
> STM32mp157c SOC.
> 
> Thanks.
> Alex
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/atorgue/stm32.git
> tags/stm32-dt-for-v5.3-1
> 
> for you to fetch changes up to f65aaf8b897efce4df1c3e2498bc48795dc2ba56:
> 
>   ARM: dts: stm32: replace rgmii mode with rgmii-id on stm32mp15 boards
> (2019-06-21 16:14:33 +0200)


Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
