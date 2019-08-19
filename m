Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD08C91C10
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 06:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7KShr+H+/dwSGYeZdo51UHi5Kg0Bf7XybEEybRZzkI=; b=YPGLci40hiCUU+
	eL4z4WSlXKmukmlkaBZ8YMh4ggW+j5823rIsTd1Iwx7OIAcLCJ71P0rmSLOH1j6Iv2g1NeLejtYHY
	Tzs/3xcMg9jstkf4C2uDPosxoiJugwfXQg1UJE93mymWjEhvS6ukq/CeRpoEmRruTR1RyXxYwVgCO
	5LkH4jCasom1GtnaDhY19kT9nbWQejZ1fcBoZS4xCGk/RAnJIqDcaN2yM1u7ZWQGvaxl5g0GLwDaV
	OQhnVM+esopKicCQG3qkaeXlA0cfKXlTn1hbYXikhFYLzJondCzE0vvHdxuqHXTigEHk/sNPMcQxb
	7A2fyNlr9V+I7ux+PzsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzZMd-0007s7-AN; Mon, 19 Aug 2019 04:33:51 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzZMG-0007ri-Ew
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 04:33:30 +0000
Received: by mail-pg1-x544.google.com with SMTP id x15so413513pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 18 Aug 2019 21:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=72ELnDTzM6YoNYA5xuMcBDOagLAJM+myxC5fFXnFV48=;
 b=Z9vuTLauhILmFT4izzT0W9vrtgqP/Xr0XOa45NfzQa5oXQEh15wihhLl9XXLTBEyfS
 PGuiI5f1/qyvjSDjE7/U3rMq8VEh/8Z3XlXNAPid/v+5T/L1dckkH4m68hOzakwYsmiS
 DR4jU7yr8VWRNYqwux35MvR3ALybBBLxvrJ29v88gCnILUTZNjv07FH4zuXQZiOE4Bek
 z3AjR4vwfq3poqp2dvl0cnpg6DLBxxeI+YURikqDXfQMxaIYf4C6aFRwebA4kkbqBXYg
 K4S2rOTLfy9dpAB3cPRCdHq8mO5StS09+MNiM/OJkPQrgAKaNxuLijm3Cni0/J+X5E0K
 mUrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=72ELnDTzM6YoNYA5xuMcBDOagLAJM+myxC5fFXnFV48=;
 b=mUq4Z9QRutOmsGlo0+5aNT/C0wU/cHgRtuYKtvkz0Drh+/pafbSdI/IkFroMYVf3Hc
 NEbla2D4h5juKti1SV9IQtFoDEVataT40iePJvi/eUE3wE8KVLBn+xzxTQ6fV+K9Ml2p
 F5zm2p4Zj7s5MEKDu2vywMLLzOQ/6zwIPn8DP+FMpjeUCBWVlZ5t6KEvBLI6wIAquJ1w
 t/v8C3CkIHx6RWkfeMda8f8m0mkaJLvc1Os6xgWwKvcKf8PaakMQ9WPskmeq0joHKVXI
 ssgjEKtpVNcAmy4zoLektgvytcrwm9JKYuVZc8ya+zE1Vnajuu9PjELtgMLyl1dnv0Np
 VjYw==
X-Gm-Message-State: APjAAAULwcPQV/cz3O09iKDFBQY8c9N8w4XmpDd1E1uIksX9+9QjFsIx
 hpw/LqaVNdIjrTRgZSNX10ELwSwUO18=
X-Google-Smtp-Source: APXvYqx0GITYVJU0+6/P8ffsNYIHIW1krQG1LL8IcUsIyyFWccg1orw3OU3X7LPPaX0vGUeYIUGxjA==
X-Received: by 2002:a63:62c6:: with SMTP id
 w189mr18101877pgb.312.1566189206207; 
 Sun, 18 Aug 2019 21:33:26 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id f14sm15192021pfn.53.2019.08.18.21.33.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 18 Aug 2019 21:33:25 -0700 (PDT)
Date: Sun, 18 Aug 2019 21:35:08 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: next/master boot: 254 boots: 16 failed, 231 passed with 4
 offline, 1 untried/unknown, 2 conflicts (next-20190726)
Message-ID: <20190819043508.GY26807@tuxbook-pro>
References: <5d3aef79.1c69fb81.111b9.a701@mx.google.com>
 <20190726134843.GC55803@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726134843.GC55803@sirena.org.uk>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_213328_532129_4DF2AECB 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

As you might have seen this problem has come and gone on the
apq8096-db820c and I've finally managed to narrow it down a little bit.

The problem first appears on next-20190701, with the introduction of
CONFIG_RANDOMIZE_BASE in the defconfig, but after further efforts I've
concluded that disabling kpti removes or hides the problem.

With kpti=no on the command line I've now successfully booted the db820c
100+ times without problems (a clear improvement from the 75% failure
rate with kpti=yes).


Unfortunately I'm not yet certain why this is causing issues and I'm
also seeing the same rcu stall on SDA845 under certain (erroneous?)
conditions (where I don't expect them). 

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
