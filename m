Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2320F142312
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 07:14:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V9psrHyZZZrKNyU4Esk0qtsqDPyyFyiuNyWthzz5SIs=; b=tCgO86S6TY3Kf8
	QKgLy5zTrsd4QctU+uN/NtaIgO/Mcf3DuhXpqO6QRmQjiUnT7rlL0iS+PPLLPm+sWzW2JOa2HltXj
	AUl8+o10+Cq+d8dODGKtvCZtazvLtSagvGHrT/PZQa4TiRNdhevRfFy5M2kOZfAzqZkUsKpjC8FuG
	ViM5HumZpZOg//UHTWsGsKRfvP+xhSA4LoXGe96myeSuAEeyB64sEZPwQku91/iHStK+iVwvssq5Q
	oOVYDHmmkhRgVIrBebvJXOJyr5U5dEoHpKVYyYCDEaPZ6HD5m784vYu8X6NBlarDQ+tNjPvX2mFgg
	HjfuHoO0tVwBmAl/rHCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itQKA-00050J-KN; Mon, 20 Jan 2020 06:14:10 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itQK0-0004zS-DX
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 06:14:01 +0000
Received: by mail-pj1-x1041.google.com with SMTP id d5so6253028pjz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Jan 2020 22:13:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HEnK5zOWrM4EtjOOUObaQ50k2YuQm6+zLeTAwK5KuFw=;
 b=rHrnilphdbZXls873AYNAy/Pyu163ib9A5hLLJVruxIy8qlPn78vsdw6+F36xjOgce
 XjdI2PGOVTosulcFr+I0I5kswvr43SJZMn35UnIJTas0+ticPMhCqLCULN2KicOVEwfn
 qXAvCc5CQyI7g4xLpCZ9xC2j8R84/hke00FsZCqQsdXYz31l/7k3F4xLnT74wmJKZg5I
 hy1WemXy5OyVXEZq2zrqKLxzuzGubxV+kdR3gdcoJef86dBgSeHCgXS1cpveLgr6SUW8
 5iTXwX6/ZPItEwg6Z7uBF+4kanfO77E94NKSbqeL9wTWdW1qc2EvtdLE3TvJmMvhKg7S
 pH1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HEnK5zOWrM4EtjOOUObaQ50k2YuQm6+zLeTAwK5KuFw=;
 b=NE2NyXDf0pkp+rdoZBkIX1Ws0HJ7kex74kVQaXlafUmo/w4ag7XVvY9gm378a/6PVC
 lUPKo07v7jU0737mLOUiaPTKjbFFV4tYmwxEbiN6p1RUi0j2A5B6Gnm5X/33th8V51AB
 O0g+L+P1M5zKqszpBJgOVraN8bPrRq+KjyPeIGeInZeTNOWYdRng3ZSIfkgWM2YPb7+Z
 BFZa+XtJRc4M/6JOr2HgM39JoKWfd6yPCKdW3Uqj3OSpJsV6MIggmeyc8jIAY/yh0KQO
 TIw5SaA0CZSjlVK7EhbwCCfVedqEp0zrkAzZOd/YPZVKmpBR1gR41AnajMe+fb9g5//s
 rm5Q==
X-Gm-Message-State: APjAAAVJp6HBHumsoaKFCqrwjIQYXE8SR/OF6/8NHR40Bzip9FO5XVAX
 fXXOHTSMFI+BIBNc4u39NM4=
X-Google-Smtp-Source: APXvYqy5vJY131Lor3YeVDhjCpeI3gktCtJOpO+P6J1mFr58LYnjO2gN5V2DNmNZVLK3YEshLDX/sA==
X-Received: by 2002:a17:902:b617:: with SMTP id
 b23mr13530550pls.285.1579500839281; 
 Sun, 19 Jan 2020 22:13:59 -0800 (PST)
Received: from localhost ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id y14sm37008006pfe.147.2020.01.19.22.13.58
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Sun, 19 Jan 2020 22:13:58 -0800 (PST)
Date: Mon, 20 Jan 2020 14:13:56 +0800
From: chenqiwu <qiwuchen55@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v3] cpufreq: brcmstb-avs: fix imbalance of cpufreq policy
 refcount
Message-ID: <20200120061356.GA5605@cqw-OptiPlex-7050>
References: <1579417750-21984-1-git-send-email-qiwuchen55@gmail.com>
 <20200120053250.igkwofqfzvmqb3c3@vireshk-i7>
 <20200120055822.GB5185@cqw-OptiPlex-7050>
 <20200120060134.izotrbzjvzk327zx@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120060134.izotrbzjvzk327zx@vireshk-i7>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_221400_482339_FF7AA01E 
X-CRM114-Status: GOOD (  24.27  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [qiwuchen55[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [qiwuchen55[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: f.fainelli@gmail.com, linux-pm@vger.kernel.org, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 mmayer@broadcom.com, chenqiwu <chenqiwu@xiaomi.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 11:31:34AM +0530, Viresh Kumar wrote:
> On 20-01-20, 13:58, chenqiwu wrote:
> > On Mon, Jan 20, 2020 at 11:02:50AM +0530, Viresh Kumar wrote:
> > > On 19-01-20, 15:09, qiwuchen55@gmail.com wrote:
> > > > From: chenqiwu <chenqiwu@xiaomi.com>
> > > > 
> > > > brcm_avs_cpufreq_get() calls cpufreq_cpu_get() to get the cpufreq policy,
> > > > meanwhile, it also increments the kobject reference count to mark it busy.
> > > > However, a corresponding call of cpufreq_cpu_put() is ignored to decrement
> > > > the kobject reference count back, which may lead to a potential stuck risk
> > > > that the cpuhp thread deadly waits for dropping of kobject refcount when
> > > > cpufreq policy free.
> > > > 
> > > > For fixing this bug, cpufreq_get_policy() is referenced to do a proper
> > > > cpufreq_cpu_get()/cpufreq_cpu_put() and fill a policy copy for the user.
> > > > If the policy return NULL, we just return 0 to hit the code path of
> > > > cpufreq_driver->get.
> > > > 
> > > > Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
> > > > ---
> > > >  drivers/cpufreq/brcmstb-avs-cpufreq.c | 12 ++++++++++--
> > > >  1 file changed, 10 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> > > > index 77b0e5d..ee0d404 100644
> > > > --- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
> > > > +++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> > > > @@ -452,8 +452,16 @@ static bool brcm_avs_is_firmware_loaded(struct private_data *priv)
> > > >  
> > > >  static unsigned int brcm_avs_cpufreq_get(unsigned int cpu)
> > > >  {
> > > > -	struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
> > > 
> > > Why can't we just add a corresponding cpufreq_cpu_put() instead of all this ?
> > > 
> > 
> > cpufreq_get_policy() does a proper cpufreq_cpu_get()/cpufreq_cpu_put(),
> > meanwhile fills a policy copy for the user. It equals to using
> > cpufreq_cpu_get() and a corresponding cpufreq_cpu_put() around access
> > to the policy pointer. I think both methods are fine here.
> > What do you think?
> 
> cpufreq_get_policy() does an extra memcpy as well, which isn't required at all
> in your case.
> 
> -- 
> viresh

Huha..Do you worry about the race conditon with cpufreq policy free path?
If the policy has been released, cpufreq_get_policy() will return -EINVAL,
it won't do an extra memcpy.

Qiwu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
