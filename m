Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2C9E78A4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 19:40:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/rB3xrY3OXr+yfcP2cW2PwV2wumw8MlcF3JOBLAS+Yo=; b=B7EUj0+uSMu6X4
	BOMSKj701aK/0S6WxlEMihjcv0/heiQ3wnlGb8Qyn4NiZmmug1JZeHAp/5b9xM/lagk9jIsewSDTY
	NxL8IgAkuP5tM+Qx0EVSsMuHbOrrfY3RCn6mAbIruu0tREKs9/u9Hl7xJL/WoOS5Xir09OTvWweAv
	cWu7xrdRPNVK+pT6t9AZsgT25tM4OT5tNnZvrQeRYgq+Icke4H9AKp1luMfl0Un4+SJQ4RMWQP7yr
	rerYHEbMWIAX51O01SLwlCpA5J+5GhrlifzFdvgkjsBbeughrKotJymoCrMWdzVkPTvA5Fg1TfD9Z
	1pYU8eLIiCbSqgC4oXqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP9wQ-0008K8-Dg; Mon, 28 Oct 2019 18:40:34 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP9wF-0008JP-3V
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 18:40:24 +0000
Received: by mail-pg1-x543.google.com with SMTP id p1so7475585pgi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 11:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rtVyMwtPvOrpW23XkhVg5/X+0nacLLEGGj2Ipigw/xY=;
 b=eVb6iTWiC8nJCwMdGmmjgZpc0qm2enTOW+W3weS+LHhHCg26yp7avaY/ZJnJlCPJRs
 mpPHqb+SH08MIrrquSc6fzGz8Uhc2qO3mGC5FFBGacceXdJm2kP3Ot6SwmYRzTMynSwi
 SgLbPmddAbo9c0R/va9x+IHYOzgxj3W/GX7MfHLhgL/CPO202aTar3HvuPXDIjByTXNk
 RtQhRhH+/f+7ehxGcK3M5AWpGsjWag0EwtAu+KGONDJAeGdh5OVPeKZXBHJ9uIxsCH1p
 AqidqCDfD81kwxD2rpfBb5FwlYVwWahl8XgCRNxM2t8Z2IiserdVA7RCX1ppdiHgMD/5
 4ASw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rtVyMwtPvOrpW23XkhVg5/X+0nacLLEGGj2Ipigw/xY=;
 b=D9negJVMNjcgZu7jTXZ4M9N6jn307cR1grizH6mh5BE/E3Vn4k+5W+ZAakeYhi9IWj
 WZwa62Lx9ctugoS8NQYxCq41V9ot4U4yPRWAKJQyT3udLE+Q5JWYHIqstha1zDoEbf1W
 c8AFJJsJk8FfDdO2kqcc4IlAZg7zzihH3Z//SVqHq7eQ44dXxFf1R9bJmXSN3BzoYe/D
 6xenF2uFtBdrQ4KqKwfwhTo4y6Zr6jPrAD0lh3yk1eRcL0QqVacwlAbaudq2zejkfjwG
 Rax+Q0RB8UBvqy6VSm/yhPKery1W2yIeQCy8mzTXH+SarCwdSOBZI1Xi5N/iV3Svgn6h
 U69A==
X-Gm-Message-State: APjAAAVwzlUp6PbWbO1SN5TIe+qE12VBBABUKrb00PtWWFNCJrUi/s3+
 O4BT7/Kd97hxf0iF6t+OmVEjSQ==
X-Google-Smtp-Source: APXvYqx/hujgx/DOvNFBp7lXdhq5z6Vp2hA1RFEoiLoQcVOtmb7tUC0uYCb3Ya16LnFwbDxyBD/fWw==
X-Received: by 2002:a17:90a:c38b:: with SMTP id
 h11mr883349pjt.112.1572288022286; 
 Mon, 28 Oct 2019 11:40:22 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id j12sm219664pjz.12.2019.10.28.11.40.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 11:40:21 -0700 (PDT)
Date: Mon, 28 Oct 2019 11:40:19 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: next/master boot: 257 boots: 8 failed, 237 passed with 8
 offline, 2 untried/unknown, 2 conflicts (next-20191028)
Message-ID: <20191028184019.GR571@minitux>
References: <5db7032c.1c69fb81.888b0.b521@mx.google.com>
 <20191028174857.GG5015@sirena.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028174857.GG5015@sirena.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_114023_150392_1BCA0E28 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
 linux-next@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel-build-reports@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 28 Oct 10:48 PDT 2019, Mark Brown wrote:

Hi Mark

> On Mon, Oct 28, 2019 at 08:03:08AM -0700, kernelci.org bot wrote:
> 
> Today's -next (anf Friday's) fails to boot on db820c:
> 
> >     defconfig:
> >         gcc-8:
> >             apq8096-db820c: 1 failed lab
> 
> It looks like it deadlocks somewhere, the last things in the log are a
> failure to start ufshcd-qcom and then an RCU stall some time later:
> 

db820c has been failing intermittently for a while now, it seems that
booting with kpti enabled causes something to go wrong. There are
nothing strange in the kernel logs and ftrace seems to indicate that all
the CPUs are idling nicely.

Regards,
Bjorn

> 03:03:27.191914  [   21.156672] ufshcd-qcom 624000.ufshc: ufshcd_populate_vreg: Unable to find vdd-hba-supply regulator, assuming enabled
> 03:03:27.198061  <LAVA_SIGNAL_TESTCASE TEST_CASE_ID=qup-i2c-driver-present RESULT=pass>
> 03:03:27.208499  [   21.175985] ufshcd-qcom 624000.ufshc: ufs_qcom_init: required phy device. hasn't probed yet. err = -517
> 03:03:27.216720  [   21.176014] ufshcd-qcom 624000.ufshc: ufshcd_variant_hba_init: variant qcom init failed err -517
> 03:03:27.226220  <LAVA_SIGNAL_TESTCASE TEST_CASE_ID=qup-i2c-blsp-i2c2-probed RESULT=pass>
> 03:03:27.239850  [   21.211424] ufshcd-qcom 624000.ufshc: Initialization failed
> 03:03:48.157338  [   42.128777] rcu: INFO: rcu_preempt detected stalls on CPUs/tasks:
> 03:03:48.167648  [   42.128802] rcu: 	3-...!: (0 ticks this GP) idle=dde/1/0x4000000000000000 softirq=1715/1715 fqs=60
> 03:03:48.171895  [   42.133839] 	(detected by 0, t=5252 jiffies, g=2301, q=787)
> 
> Full details, including the whole log, at:
> 
> 	https://kernelci.org/boot/id/5db6bf0d59b514a35660ee72/



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
