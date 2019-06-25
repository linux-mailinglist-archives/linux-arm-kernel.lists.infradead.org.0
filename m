Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF40254E6C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:10:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mkvcFk6YCWXEutyCyloyLDU3hQhEGZYoIgrzlHj+RHU=; b=eOxFJSYv2np5mG
	AMjvTlIEY0IFafJDEaReyf5UC8DLD/fjsxdaw1raIpJYimAc2scoeqGFTOSvmyipUU66KoixlioZ1
	BCJkK0VFasnnWWmfqgYjCJHm+AsIITYXJurG0t0d9ybHJE7GkP9t1vY4OvDhS9jpUqyjTLu4Ix9t6
	UoAnxLWtRWPrX6y42rguVzlsi4Zn8zAyPWD2prQ7L2O3uZrBD6aNGTt49fiGVkYYzRaflBXTK94nA
	jVOZnfIr6YW/7HY8GM9VCxssfqpmFaouDiUXLGOLqqDFUHYc8yB1SPb86m9/zRBXSt32Yy4mW364K
	vXzhmhpAbUVewyQYk/Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkH7-0003S0-9P; Tue, 25 Jun 2019 12:10:13 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkBe-0008TA-1d
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:04:39 +0000
Received: by mail-lf1-x143.google.com with SMTP id a25so12449449lfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3uLUVt4+PyqNapscbK0+INaqomQ7Z5R6bzOtCzcM84k=;
 b=y70lH7CknFBUGMidxKOvlg3NBuPtjELWN7zCCwvow/EINNy6bFm8mNyR6Vyd6UvF52
 RhY3L2JqU0ir6w0u6WNL0GjNgSh0IgsF3ZFa5a3QPl8VWGihDexXJrYA7EzvEzHxTMvq
 y7WG0fDuq+lS4i5oCH0rc6GwKwsnj76+lV+bJJyTOOLKA4GTEN6tFN6hga5TWqVV8NHs
 q1HhIyOFXgFTC99Vq9XQiN5TRA35gYKyboYVtnTQFgIMNL9ZJnPXkdjrg37fER7brPDN
 mKtlMR4lbLXLB5haMEKn2GsfWRxONdTUJkg0mZ9nW9PQA0VyBjz06vI+57CLOujyqS7A
 41bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3uLUVt4+PyqNapscbK0+INaqomQ7Z5R6bzOtCzcM84k=;
 b=ge9aQZg8JKNy8uX/WaLXKoVVJlvjTLBotAwCMeCYehXz90fvbpbPOlCMwPPhAeoUA0
 mzc0QqbHvkbuaUyIXIkDNRIixJKuD57NYA/+BtYdEzgryRoaf/V6NU9qAIXwvAQeHPUn
 r68xpq7t5C6zTrIRHe5nruN0hQwKn+KESsJ6KixhxZcfCR+B23/7PxAmTJTmHOAF1eMs
 RFZhlAxIMBjzLxmdXAi+0dyubywyJSba3gOucBJhDhO2PSwRsXQjJI/RgkBRk+Lgncsq
 Fl4oxInt+GYxA/fLza4XpdO6Sv5orA79fN+Y8WbYu0eHJi9P4ZOuEZIToQMz7bwnmZzI
 X1jg==
X-Gm-Message-State: APjAAAV8FNhbFQwiGQP/yQzwuh7zF9LAmnFSzMUp0NXHD/5xb2//DygK
 eKwd7vP3LYce76prAZByji2SHA==
X-Google-Smtp-Source: APXvYqwZlKm9Js7mpJhkZw7bczSfxMxrqGRD7K41K+QVVYo/A92X6/6gVg711xf+1xlbsCrSu177IQ==
X-Received: by 2002:a19:4017:: with SMTP id n23mr85397272lfa.112.1561464272546; 
 Tue, 25 Jun 2019 05:04:32 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id m24sm1915887lfl.41.2019.06.25.05.04.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:04:31 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:31:55 -0700
From: Olof Johansson <olof@lixom.net>
To: Andy Gross <agross@kernel.org>
Subject: Re: [GIT PULL] Qualcomm ARM64 DT updates for 5.3
Message-ID: <20190625113155.gncxhz2aeehawflw@localhost>
References: <1561006911-28519-1-git-send-email-agross@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561006911-28519-1-git-send-email-agross@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050434_118194_DE1AE9A9 
X-CRM114-Status: GOOD (  13.78  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, arm@kernel.org,
 Kevin Hilman <khilman@baylibre.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 12:01:48AM -0500, Andy Gross wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-for-5.3
> 
> for you to fetch changes up to 2410fd450c09a126aefefc9106b4652285b5d60f:
> 
>   arm64: dts: qcom: qcs404-evb: fix vdd_apc supply (2019-06-19 23:50:52 -0500)
> 
> ----------------------------------------------------------------
> Qualcomm ARM64 Updates for v5.3
> 
> * Switch to use second gen PON on PM8998
> * Add PSCI cupidle states for MSM8996, MSM8998,and SDM845
> * Add MSM8996 UFS phy reset controller
> * Add propre cpu capacity scaling on MSM8996
> * Fixups for APR domain, legacy clocks, and PSCI entry latency on MSM8996
> * Enable SMMUs on MSM8996
> * Add Dragonboard 845C
> * Add Q6V5, GPU, GMU, and AOSS QMP node on SDM845
> * Fixup CPU topology on SDM845
> * Change USB1 to be peripheral on SDM845 MTP
> * Add PCIe Phy, RC nodes, ANOC1 SMMU, and RPMPD node on MSM8998
> * Update coresight bindings for MSM8916
> * Update idle state names and entry-method on MSM8916
> * Add PCIe, RPMPD, LPASS, Q6, TCSR, TuringCC, PSCI cpuidle states,
>   and CDSP on QCS404
> * Add reset-cells property to QCS404 GCC node
> * Fixup s3 max voltage, l3 min voltage, drive strength typo, and
>   s3 supply definition on QCS404-evb
> * Fixup ADC outputs and VADC calibration on PMS405

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
