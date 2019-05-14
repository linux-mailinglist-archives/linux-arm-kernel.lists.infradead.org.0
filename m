Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 833ED1CA1F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 16:17:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kXCsIXli09J7QKWjSj6/LXJsZrDq16piAMIkwhQBHYY=; b=APhgHq4FujqMt6
	r2rrjhpkbQ0oYEGVzQAptpxlhUNsVjxy63NGHWPKOfTJbljEoUVT/EONnhgrDeIBi65tpu9r/3mRV
	xghWxjan83J+ldKFrLZWPPmvwFQ1bKPBv6GA6n2YxMrl0CuIwdDhgRheOsbs2Z+cEFxn5WDcV3oCO
	S9aTc7gMBlfL6yR41X1RkXUjcRejrO25OcbOTN8EFljnFwyc5HFSjqiGQ8Lg6bGYNsB0ueQNGzSDY
	BubblVfVLyvTZGWergbZs5p8yNhWf0U3UYsn1DB3+GEibKSPFW3NBjnIeqYZ4xCXY9LqkuwYhSSaY
	hCifTFAAaNny40u5NMEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQYFa-0001Jm-BV; Tue, 14 May 2019 14:17:50 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQYFT-0001Ie-1l
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 14:17:44 +0000
Received: by mail-pl1-x644.google.com with SMTP id g69so955021plb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 07:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ArFnW1VY3ms9qyz4p1fVUAVmj/4GdKkZjXhkCrGDcic=;
 b=XPWJG741EQYNQPD+hgI3shXcsBj/Ku7w2rUJYu/EBxfP916HYq124NZroB7TfHv3Ie
 PTfiTc7nuPV6GfE1rww2RSetpQ8nL37LkRmf1Rb3mHS5xTyTPSEBrwoRtvOdq38MAJLo
 B9tPEVpZYCnt1S0jhdsX1X3u1yNJXuTV7M/3InB4zykPFLi1pV5ZVyler1Xai+zVXU0M
 4rAgLSD1hYKqWyqq08TtQ5Y2Sqvuv0i3OvnNHcdTsEF3m9n32kv9x6FH8nGe45iwOUpK
 FY281isLNjYAJL3T/ctd8waOPCEqkZdUq1Zz+iwWMdk0P9s3OH681FQdlwXFRBk1szPU
 Zbyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ArFnW1VY3ms9qyz4p1fVUAVmj/4GdKkZjXhkCrGDcic=;
 b=EZSJ5Emahh56uBGTKm6ZgnfT5JHQjZ4rVHkabzST5ra+49Z9Fei0Y14aOdySrjzY2y
 HfY588RV0BoP5soXszw9GOTlbJAAUWK+Z9545j3boivTnQW+uxkXMb0aKLdWfyY89w6q
 MwLwx1M8ppzo38itmIjD1PAC/rp/iQeu7Ev6TpvqSBpibJiSRthZYJ24ybLkVZ+gIqde
 /fr9a4m2zT7kRwogsKY1lzWwWupGRH5maMhAYKHA35tueMQAk2x5crZGkQy+YHh9HVs9
 hpbNTekKyL2ShE6v6Zn/KB/8aB/PUQZs5OSCLVTJglX6hepASgZj51iOvDLYE1iVjnhO
 NFRw==
X-Gm-Message-State: APjAAAXfWkoooFDR8ts+BSWX1cguD4rBAFUX7xKQQ8y0m0VfU0Qwj2ad
 XaeRvCQ+E173US+sHBQkvxc=
X-Google-Smtp-Source: APXvYqyEoNeXQY01NVeGJknPJkVArnV8DTbciFn5z6wBalJ/oPW7cEOETXrh7Dz2iEuMNL18s/0cEw==
X-Received: by 2002:a17:902:9a03:: with SMTP id
 v3mr39294120plp.27.1557843462222; 
 Tue, 14 May 2019 07:17:42 -0700 (PDT)
Received: from localhost.localdomain ([2601:644:8201:32e0:7256:81ff:febd:926d])
 by smtp.gmail.com with ESMTPSA id p14sm19852605pfa.112.2019.05.14.07.17.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 07:17:41 -0700 (PDT)
Date: Tue, 14 May 2019 07:17:37 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: Quentin Perret <quentin.perret@arm.com>
Subject: Re: [PATCH v3 3/3] thermal: cpu_cooling: Migrate to using the EM
 framework
Message-ID: <20190514141736.GB16968@localhost.localdomain>
References: <20190503094409.3499-1-quentin.perret@arm.com>
 <20190503094409.3499-4-quentin.perret@arm.com>
 <20190514034056.GA5621@localhost.localdomain>
 <20190514071506.ykjg67elsydaehlz@queper01-ThinkPad-T460s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514071506.ykjg67elsydaehlz@queper01-ThinkPad-T460s>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_071743_092978_D8A39F64 
X-CRM114-Status: GOOD (  21.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (edubezval[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pm@vger.kernel.org, viresh.kumar@linaro.org, amit.kachhap@gmail.com,
 daniel.lezcano@linaro.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 will.deacon@arm.com, mka@chromium.org, catalin.marinas@arm.com,
 rui.zhang@intel.com, javi.merino@kernel.org, ionela.voinescu@arm.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Quentin,

On Tue, May 14, 2019 at 08:15:08AM +0100, Quentin Perret wrote:
> Hi Eduardo,
> 
> On Monday 13 May 2019 at 20:40:59 (-0700), Eduardo Valentin wrote:
> > On Fri, May 03, 2019 at 10:44:09AM +0100, Quentin Perret wrote:
> > > The newly introduced Energy Model framework manages power cost tables in
> > > a generic way. Moreover, it supports a several types of models since the
> > > tables can come from DT or firmware (through SCMI) for example. On the
> > > other hand, the cpu_cooling subsystem manages its own power cost tables
> > > using only DT data.
> > > 
> > > In order to avoid the duplication of data in the kernel, and in order to
> > > enable IPA with EMs coming from more than just DT, remove the private
> > > tables from cpu_cooling.c and migrate it to using the centralized EM
> > > framework.
> > > 
> > > The case where the thermal subsystem is used without an Energy Model
> > > (cpufreq_cooling_ops) is handled by looking directly at CPUFreq's
> > > frequency table which is already a dependency for cpu_cooling.c anyway.
> > > Since the thermal framework expects the cooling states in a particular
> > > order, bail out whenever the CPUFreq table is unsorted, since that is
> > > fairly uncommon in general, and there are currently no users of
> > > cpu_cooling for this use-case.
> > 
> > Will this break DT in any way? After this change, are the existing DTs
> > still compatible with this cpu cooling?
> 
> Yes, all existing DTs stay compatible with this CPU cooling. The EM can
> still be built using the 'dynamic-power-coefficient' DT property thanks
> to the recently introduced dev_pm_opp_of_register_em() helper, see
> a4f342b9607d ("PM / OPP: Introduce a power estimation helper"). And all
> relevant cpufreq drivers have already been updated to use that function.

I see..

> 
> So, this patch should cause no functional change for all existing users.
> It's really just plumbing. I can probably explain that better in this
> commit message rather than the cover letter if you feel it is necessary.
> 

Yes I would prefer if this info goes into the commit message.

> Thanks,
> Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
