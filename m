Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8F01BD3FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 07:29:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nPmfckTHZYTEcgfK4Ebbejx1Q4KkGnbPgoGYf758yuM=; b=Nm3p4G2mN2RYjy
	E4tZwPI4V6pUbsx9ib+YGIWHoscOd0w3X+yHCK1xtTJ7b06hbTY/viQr1NiGcdHP5G+BUwv9278Ej
	4WJFNkaSmMvWTaHmJDuL6nz5Qmvnde2J96i1QIF0XM8Wo/4ojWX229MndIyr9IfYsa6TpZev1CFVY
	jzhUhquzO06lnz8Bf1e5QhlSD8T+08KAMjqeIxrUKFYE4+x1oLSArX4R3Q8/jkKZlWYxn/Rbfw1Id
	8hbDczqOZ06G2cHArnYrClhiUJq4xphLweNocCS1lY03mMu7SAbZ46NG+QKPjAU1XeYsg8Ikm34fW
	KyP8TS2JMxmXHpRyMBjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTfHQ-0003mI-H5; Wed, 29 Apr 2020 05:29:08 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTfHG-0003lf-Ll
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 05:29:00 +0000
Received: by mail-pl1-x642.google.com with SMTP id f8so437621plt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 22:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=rGPuYOPEfdslSJOajpa2Kv3VROVAoCeN+BZX3FPFhxc=;
 b=amWObkXXkaOUOxaNYsF4sooIzcrpeSoowBnsqLGl1MiyW+ZjZqexsOAH0jd++0VbRE
 zU8Ql/V+6EHe+pAA1sc8m9/3lvyONM7UbLTvJQAMxLgOGaa5nxkn1I2iBwn7O9Du5YkZ
 IX7osJEAyl8Z/EmNs71IdtUKf18wgExUeFbpEkGvZ3WIc4QbkMFRk/IlgJNsbrY+8p/V
 R521d3olvaGbmL2uVo4VQw6DjRPDGqyKl3mM/bj60+tYv8r8QXm1OwFCw1bL4V042FBv
 tMqrQ9b/Aeuz728f9AnGFtiO7cJrD5kl4RHO23Al3FLdjKTclI0lgkGsmLrNeptT544R
 QMGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=rGPuYOPEfdslSJOajpa2Kv3VROVAoCeN+BZX3FPFhxc=;
 b=oEa2x0VZVxHW/06++16LrxQaoCnpEQJq21hhB/2beVn5k7ZZLK4HK5Pttw+b8hd7Q0
 2WbMEUKKoQxNXEIxUHmZNp18GDqIzgxQ0ZtMeM0EBE6+iYbSAqVZcJ5ngJoZ85Ds5Asm
 vibem/xhnzYXZiWuGca40bnZP1gOfaUz01PFuFHGQt7ZKxIVwMRJtVnVgl415d4FYS98
 UX0qD65Bu7RbZyONKioANL32ttEca06aEztN5lVzGX40O6yRaESbnmv1sVDXDe3jFJJS
 RHkfI+kKOclmyiTXEz/tyjGEEdKjeVNh8/kkh5aPj30l8z0lw3WhTNTULsaEkwi8eTCR
 6Qyg==
X-Gm-Message-State: AGi0PuYGTPRdm0w4yhHeFP1qn6pc68Uf0tRuDMusTgaNahtBgd8O6CDC
 /3bWbdAGZxmOQiUQFWalMdLPSA==
X-Google-Smtp-Source: APiQypJzRgVDYwYP2dRSxMMomfpHQPzWzFGLjdgVhOZRCPgtKHs5ts8w04aQq2bG6CE3erx1zEdVZQ==
X-Received: by 2002:a17:90a:8d0f:: with SMTP id
 c15mr1209940pjo.100.1588138137286; 
 Tue, 28 Apr 2020 22:28:57 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id g74sm60061pfb.69.2020.04.28.22.28.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 22:28:56 -0700 (PDT)
Date: Tue, 28 Apr 2020 22:29:32 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Qualcomm ARM64 DT fixes for v5.7
Message-ID: <20200429052932.GA2627045@builder.lan>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_222858_745198_A24618E5 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-fixes-for-5.7

for you to fetch changes up to 7710f80ecd9c74544a22557ab581cf603e713f51:

  arm64: dts: qcom: db820c: fix audio configuration (2020-04-22 19:26:14 -0700)

----------------------------------------------------------------
Qualcomm ARM64 DT fixes for v5.7

This reduces the (hard coded) CPU voltage to a safe level on MSM8996 and
updates the audio nodes on db820c, db845c and c630 to reflect audio
changes that landed late in the cycle.

----------------------------------------------------------------
Bjorn Andersson (1):
      arm64: dts: qcom: msm8996: Reduce vdd_apc voltage

Srinivas Kandagatla (3):
      arm64: qcom: c630: fix asm dai setup
      arm64: dts: qcom: db845c: fix asm dai setup
      arm64: dts: qcom: db820c: fix audio configuration

 arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi       | 23 +++++++++++++++++++---
 arch/arm64/boot/dts/qcom/msm8996.dtsi              |  2 ++
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts         |  3 ---
 .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts      |  2 --
 4 files changed, 22 insertions(+), 8 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
