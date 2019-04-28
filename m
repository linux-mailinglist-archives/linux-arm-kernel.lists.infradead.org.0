Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F39B695
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nORxOQ3vL9ldyB/5Dg8T+BCNvVGiDl2ws5x9xzrh5qw=; b=V5DkM1MkrbzaNF
	6qN5F080c8jcYooYK1Lk78CoOGB1Dl6dOrUSz6xVucbObI9NplpGsy2H7+pmGectgVoC1dDO/cuDO
	T7zOBfjcYClbIbLUzx+cGOD36SDrgkrYwQsqe6fuwGtaPeI7Xc6mECCMuPjm+r7BVZq4X3kjcVtN+
	cTqZEXOGn/zRQSh2lJOn9+UOwJ3PsFnplZCrUKa2YaS5VB+UNeszfepdL/UVEy9rCAKLmDvin9vJG
	14CHehVwLdJDfPQMlguTvqpqFmWuZXVYDEHKR47wf3NGWBh/riftSBgUNLDIbbNDXl1ZuqTNeyub3
	8gHq1yEDa7uiGSKstVmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqLu-0006Ni-8Z; Sun, 28 Apr 2019 20:24:46 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqHF-00084Z-G2
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:59 +0000
Received: by mail-lj1-x243.google.com with SMTP id q10so7462628ljc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yaTCRND8SN4oOygY6NxcMWQHkTGuaWnRyr29b8jdPRI=;
 b=NiV1mYCrzn+fY40nRhMNwLaCtJOq0+Phs7ysEPlDAck24wXW8Ajq7OEEnFf+ZFwCek
 ZYN5jCgg58c7ZsJDItzL1BOxJZR5z6p23iea5T4UyMGFtlw7vCMfaefOy2qlPdLuyCIy
 Yiq9IR03ajhKuYPyCLiiCuRrlUsjMuvwbU2TtpVLBzfiflLryONkAz+u1Dc+OhqcMOYa
 AKP2BP4J9ff4Bz36d6ZuZLW21CbYyo1cPMVb2kOgNahTMorUW8khbB4/IStegKYglHvu
 G19+C7h2FZRjhtKD9XvMFcSxup5Q98ys+8t5u5T7jaF4xduqOnAB4VEIF9QigdfhJYFx
 1zOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yaTCRND8SN4oOygY6NxcMWQHkTGuaWnRyr29b8jdPRI=;
 b=R4iT/vAvD09HV2M8v4DYKdOa50t15zbdnOXEaCC1YyfSs8fXS+CLWubTieGh5DOIHV
 6Sk0SOI+SvcJiW0jpco9zV7zxMEjw1Y8ItvhahpKSI45k7ufLN4r48Wd/iw8o1iHc0Sk
 jaSOLMNpSrDmtFWRHcb2qg8Hf/02mAKhg2eywDTIavNFPKwrW9RE5LHDSkXTLytipUnG
 XpZFM/IqE3fN0NbLiPd6zH2ASHgDf6AvAV2zJwfc3ZAcAZqmdw//wDvIvnVW3JRZY0bH
 sxqK8wJboQskeKVei8pzAAzIWKpms348J1PmAGhu2KE0EVaPOD6posS3KkbZqpGVK46X
 5ogQ==
X-Gm-Message-State: APjAAAVCiWMKxc1sFZzxVRVGyF2y/i96uWV5lDimFR99dBXXmLasxrLr
 JNiRfHc3CHfI0/oaRqR6MpNlAw==
X-Google-Smtp-Source: APXvYqy9uF62GnHMHrhhELvU/hKPNqjMMu2OTDWZkbrhNJ6wFx2h6HUU5riwnSma+iQzpQCoj4yp6g==
X-Received: by 2002:a2e:9dcb:: with SMTP id x11mr15091268ljj.123.1556482795958; 
 Sun, 28 Apr 2019 13:19:55 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id s26sm6560256ljj.52.2019.04.28.13.19.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:54 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:46:14 -0700
From: Olof Johansson <olof@lixom.net>
To: Simon Horman <horms+renesas@verge.net.au>
Subject: Re: [GIT PULL] Renesas ARM Based SoC DT Updates for v5.2
Message-ID: <20190428194614.eameiyhj6pc45wkb@localhost>
References: <cover.1555655522.git.horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1555655522.git.horms+renesas@verge.net.au>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131957_532745_F9A6847F 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 19, 2019 at 04:34:47PM +0200, Simon Horman wrote:
> Hi Olof, Hi Kevin, Hi Arnd,
> 
> Please consider these Renesas ARM based SoC DT updates for v5.2.
> 
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-arm-dt-for-v5.2
> 
> for you to fetch changes up to 0750e8344eb7c48f82a54920172a5d0f78eb223b:
> 
>   ARM: dts: ape6evm: Reorder bootargs (2019-04-17 17:47:37 +0200)
> 
> ----------------------------------------------------------------
> Renesas ARM Based SoC DT Updates for v5.2
> 
> * R-Car E2 (r8a7794) based Alt board
>   - Enable USB and DA9063 PMIC
> 
> * R-Car V2H (R8A77920) based Blanche board
>   - Enable IIC3 and DA9063 PMIC
> 
> * RZ/G1C (r8a77470) based iWave SBC
>   - Enable HDMI, USB Phy[01], USB2.0 Host and HS-USB
> 
> * RZ/G1C (r8a77470) SoC
>   - Describe DU, VIN, PWM and HSCIF, USB PHY, USB2.0 Host and HSUSB in DT
> 
> * RZ/A1H (R7S7210) based rskrza1 board
>   - Enable remaining LEDs and I2C
> 
> * R-Mobile A1 (r8a7740) based ape6evm,
>   R-Car H1 (r8a7779) based marzen,
>   R-Car M1A (R8A7778) based bockw and
>   Emma Mobile EV2 based kzm9d boads
>   - Tidy up bootargs
> 
> * R-Mobile A1 (r8a7740) based ape6evm
>   - Enable NOR FLASH

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
