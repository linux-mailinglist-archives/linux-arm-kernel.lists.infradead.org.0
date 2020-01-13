Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A71139AE4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 21:43:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+rVmldpB3QXRUs/RNBKmLr3P57DGHiB6C0+hpEV6z3A=; b=PdOsTcS99DZJmx
	Wr1Det2nYOhdf1faVCvuEyndFrjSqAg/lV8/fqnj/idYEPHUYktlRMJrlsvyw4GZwpKuETQIVt3yx
	8W4zzKSKoRgtFxXlmBv3CdWEVg4hrBSymhv4ZoHEorhsOIFMaozkKORA1u8qhDGgurhhDMk1Q9jdw
	d+D4XDLitELsd5PQvdeJm2eDkU1N6+AXBl5RMh5EsmcRdKJ7l5KNg7GFJEQcZqoYOcKCc1TIVrAat
	4QYEw3X5+41oY6dRLNeP/tSI3UHSxZF867yP7DKkjpzQ1b9zAFDarURMr9SzUJt9XcoyabkwKkPT1
	jkDJC0PREZIFEp5b87WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir6Yc-0005dE-0K; Mon, 13 Jan 2020 20:43:30 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir6YP-0005ch-G4
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 20:43:19 +0000
Received: by mail-pj1-x1044.google.com with SMTP id n96so4664164pjc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 12:43:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=/wcE+sOMyagMCyC4QZgrH+gZMviyyqGaVgp9gejXTLQ=;
 b=UCtxwdfu1MOhvv0Dl3SIlKj4WeOKM4Dhn8MRGiZYewOvcSeF4oLUyTjWl0fEsxJ5Le
 V0EqkGLW8DpL16QvA1DLE9bWuiLJZLfWmQ4c0oL/EBMTEebem4oyZH6jeFP8qa9msM08
 zCm/AZAF10rP7s6Ii1M/udhohwVFfinDuUwavZgLV9e3JOra26aG7S77LKa1Rt/6ZZ/P
 QiQTAG2ZD+Q+vPxH+fCknSr+GX6+Fbz3Kzg7yg2i4XocMgX/ImH4q9W0U+d7N43VxRPa
 bnuln6bVu5rszU8TMXgWH7iXDnYHQeNzxjqwA7PANhz0b1WzwO62znAn6HlMD38qgk9b
 FJhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=/wcE+sOMyagMCyC4QZgrH+gZMviyyqGaVgp9gejXTLQ=;
 b=OoBQjAMBDdj16yL9gXz0etXIDCenMQfnpWqkE6152fw1AkQ70owHMWRXEUtLOzV5qr
 XTKk4yi3+QIWRyGABA04QwF0TOWpQVOw5hOCNEi5xsIBoGkWg1cGrGDJmwln4qdbN4KZ
 pv636OfcB8pCpSWAFDzx2OiwpqSE/PrDE0wiRTKimJ1xuy0mrmQPpQNPJwZoKdqa83YH
 cKewB2BgMu6WrhyR9sTMz0jSNmxpNDj00d+Y07kAI4jzwz7p6Kj7adYfHWJCcTkmpJ49
 JM9pZFicD590ZdIoZhQwGbwjMgnBOnsfTVvsY9kVe6YmwJh2aIyeUHRc2FzmSPjIfd3j
 VELg==
X-Gm-Message-State: APjAAAXvvzBNDVJNUgBSEZq0HRxg/B0e1jyWhZzk2MLKRRKU5JezHVS2
 4kHUvfNXaYOCypo9OroFCAg+FA==
X-Google-Smtp-Source: APXvYqwUVBNTh02pgToXPNw3Bd2uSFTulE0jmJfktcvwZGZ06jhKFme/S5lzlj1gOTKgRkr7r3GPKQ==
X-Received: by 2002:a17:902:b187:: with SMTP id
 s7mr22079286plr.104.1578948196983; 
 Mon, 13 Jan 2020 12:43:16 -0800 (PST)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id a10sm43484pjq.8.2020.01.13.12.43.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 12:43:16 -0800 (PST)
Date: Mon, 13 Jan 2020 12:43:13 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Qualcomm ARM defconfig updates for v5.6
Message-ID: <20200113204313.GC3325@yoga>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_124317_542222_38ECDE6A 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org,
 Brian Masney <masneyb@onstation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-defconfig-for-5.6

for you to fetch changes up to dd973b89ebba7246bb395b89bfec55deee24af2a:

  ARM: qcom_defconfig: add anx78xx HDMI bridge support (2019-12-10 09:42:50 -0800)

----------------------------------------------------------------
Qualcomm ARM defconfig updates for v5.6

* Enable anx78xx HDMI bridge driver
* Enable MSM8974 interconnect provider driver

----------------------------------------------------------------
Brian Masney (2):
      ARM: qcom_defconfig: add msm8974 interconnect support
      ARM: qcom_defconfig: add anx78xx HDMI bridge support

 arch/arm/configs/qcom_defconfig | 4 ++++
 1 file changed, 4 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
