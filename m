Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A8F782ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 02:55:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMPBn1U8uqTldqLvHyG0aQXHg8hDYY7W5mPk1yQsYp0=; b=cb3QnFb+Df7u1Z
	9/JLK+UhQLLgjvAF0bunVTlxh/M1c7Xl/0UhOoqwdH19twVzzEqCBqiTFoxKSUb9EQc7l/zp/VelO
	s5HTlFbjGiSQCb735uSSimpcuiiyeGdCumSOViOsaGFbBXkAL80fTHHUgsvkJNNRyDMlCHeICbauj
	PdLYhFzo32azMDtUcMOBVJaxdOabLAVso4um93lZn6+u+KlxS8voNG1pe69Towf6pj9mxGrlqUNB+
	FnkUaAkAnp83m0MC5vQD1wR8ZmCS3WXOOuKRy3XtgiHkivymk9CUEcQo7F6/K2S+moXMfRj6/b005
	QynVaQt8GHnVYYleyN7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrtwp-0000pq-Ro; Mon, 29 Jul 2019 00:55:32 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrtwf-0000pA-KJ
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 00:55:23 +0000
Received: by mail-pg1-x543.google.com with SMTP id x15so16974807pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 17:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hGjJJlgqf6fIZSYi0mQxt5rqQsfHh14p1KL8R7bqkag=;
 b=h/A1tD8sZhM/v7+RhsC11wSVFXSwvl1nieW+O+yBXi1T6IcOt/iyzsP0danqDHl3If
 EiMovzmXIpZ6a4yeWiLLWBocBfGVofuspHURaV752iQnXN95SEOtoI132oPpKIsPhe+L
 dOrVhiDAQWg0OokDiIIWhrFDs5y0lk3yMY/3dhZSMBOHAKBNw/bJeLdpv7bJ4VJXwy/D
 PWUQzxXW8kSvWm+azVhd44dOKo9Aw98CRIfOHQQhbdkCGwdub2hNUQvXMlHJEXOKBY50
 kQcgdE47s1P8T8yv0odSj87jXcrztl61FQMCMJIsay49iIqYbD69vr6zETn5X5eLCFcz
 Jhrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hGjJJlgqf6fIZSYi0mQxt5rqQsfHh14p1KL8R7bqkag=;
 b=cRDhIbqDGv0JLPbwGvKrh7RHNFMte6dn3BZX6n+4PnkKztt8ebluVEtmNeIQ6HGsfW
 RID4E5FA6zhNL7z7mxesI/ZSfvU1M+qSp5+RZDgfG7SuFPFiF1LFEoeZd8irqQz1//jt
 UgIKa18hRTGu3lmiDkySC+qFpGvG9cES6fRbAufH+c4rWjDnDq2MWNZOHTWhIeW/UtIo
 CvTM1vak2J9j5dm+nEyqDNCJ1UmLFi5r8IA1FOLtdufLBlUr+bwQdNhXx/N7EAzm6uxI
 32cuDqEfm9zL+vIVjFQeRMVBhpZ37hkgiwndutJP+BgTr7Aty6eib7NENR/risVZUokA
 ORyA==
X-Gm-Message-State: APjAAAUEcOcynLJw2KzuyqFoeTBWNRDJJFIBtssdtqjCqfbNb5LhsocP
 SNx6M0wt7ShYb42DoFgvoT/3VwPrT74=
X-Google-Smtp-Source: APXvYqz2PSVwN5dKDaP+S/qEaEHuy+/ZLKEjdJ0szwpHKcNw3tpo1lQ9Z3MmyOBXuI4l1b9E1lGNFA==
X-Received: by 2002:a63:1020:: with SMTP id f32mr72808691pgl.203.1564361718219; 
 Sun, 28 Jul 2019 17:55:18 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id k22sm62936954pfk.157.2019.07.28.17.55.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 28 Jul 2019 17:55:17 -0700 (PDT)
Date: Sun, 28 Jul 2019 17:56:41 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: next/master boot: 254 boots: 16 failed, 231 passed with 4
 offline, 1 untried/unknown, 2 conflicts (next-20190726)
Message-ID: <20190729005641.GR7234@tuxbook-pro>
References: <5d3aef79.1c69fb81.111b9.a701@mx.google.com>
 <20190726134843.GC55803@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726134843.GC55803@sirena.org.uk>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_175521_731690_B937D991 
X-CRM114-Status: GOOD (  12.34  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel-build-reports@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 26 Jul 06:48 PDT 2019, Mark Brown wrote:

> On Fri, Jul 26, 2019 at 05:18:01AM -0700, kernelci.org bot wrote:
> 
> The past few versions of -next failed to boot on apq8096-db820c:
> 
> >     defconfig:
> >         gcc-8:
> >             apq8096-db820c: 1 failed lab
> 
> with an RCU stall towards the end of boot:
> 
> 00:03:40.521336  [   18.487538] qcom_q6v5_pas adsp-pil: adsp-pil supply px not found, using dummy regulator
> 00:04:01.523104  [   39.499613] rcu: INFO: rcu_preempt detected stalls on CPUs/tasks:
> 00:04:01.533371  [   39.499657] rcu: 	2-...!: (0 ticks this GP) idle=9ca/1/0x4000000000000000 softirq=1450/1450 fqs=50
> 00:04:01.537544  [   39.504689] 	(detected by 0, t=5252 jiffies, g=2425, q=619)
> 00:04:01.541727  [   39.513539] Task dump for CPU 2:
> 00:04:01.547929  [   39.519096] seq             R  running task        0   199    198 0x00000000
> 
> Full details and logs at:
> 
> 	https://kernelci.org/boot/id/5d3aa7ea59b5142ba868890f/
> 
> The last version that worked was from the 15th and there seem to be
> similar issues in mainline since -rc1.

Thanks for the report Mark, afaict the problem showed up in v5.3-rc1 as
well.

I think the problem is that the regulator supplying the GPU power
domain(s) isn't enabled - and I think there's a lack of agreement of how
this should be controlled.

But we have a partial fix for this floating around, I will give it a
spin.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
