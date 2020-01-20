Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8A41422F8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 07:02:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IvKyPSeLf7OkONYsNZyfqiDUU3DEdbixnZSVBw6ZrMA=; b=qYtYI6OlEnqRfK
	9/6O/ztgaGbT9DPre8ltf6PwE/i5bH/McIOtk+eorKCX4YcNjTkBFgBxE5VE5u9M/vtQiQOpi8X9Z
	7JPTs930HL9cHJ11tVTVfoMVDr068iJSSA09Z5+dL7Z1vS74umiRB68Ef6NLEIzPALS4JVpCREOo5
	qg/swBnotxv0rc+N4Js32189NyR9Wfhzjzv5SihshrnhTVvRtehyHO3P0J/9LIJ0oajOXprFhTdZi
	Evu9FEJ3fAJH1zRDvAJt1si1KHD6aUENIVMf3IrYVJXbanot5NxPFJZTxwufIrYQjkeHOq3xYW5ra
	ZjDUjsCKz0nUQ2PZ0vDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itQ8E-0001cn-38; Mon, 20 Jan 2020 06:01:50 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itQ82-0001bw-2m
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 06:01:42 +0000
Received: by mail-pj1-x1042.google.com with SMTP id s94so5901642pjc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Jan 2020 22:01:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UjIP4NQICdFcbtsqro77Dl66gHMc15rDrDG54aElo8Q=;
 b=EtUWO1zUEShMQdEWiJeuBDXhGHZUXY15Uxej2fzFPDM89pMVi1z6TMPeHbX/4Mdqld
 x+JU6UizODXuHLcCh+umrIk9kTW/QspQIwGcRNYU3UNZ/9h+63Cf0S8LUcVhz533YPXn
 os3IRfMljjI4WAykqUNNmUCCOYQcXkramKBDydDlqGKrovx6m9T7AbO0utbZ0xzN4khn
 fp3OUz3ZB4uAKyBZzJOZQll0mCg+ayBQQKuljU8UBJlNxTTaIMNyHZOEAw1CqEqvZ+1L
 w3fu/e88vIoLkRLX92wvB4z6KA8DB1zZrpbHzGyEmjE0ZpVhDLSJKv1fea9BgqHGBjft
 dLsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UjIP4NQICdFcbtsqro77Dl66gHMc15rDrDG54aElo8Q=;
 b=ABplwqLYJbfmFfK/ygpM0sVMYjZF/8vWRBXI/BiEHXOX2F8obmKi06NqR2cJDPrN9z
 n/ygQl2Uv8sFSvX3al/BbMx5iIYdOoMo5J2dsCFgoaJqvaNbCEL5yo78HPrLpT/g484J
 J1lLAi9FTfk+9/LmvaNKW845si/OOAqZjUerEvBV/wyYvuwNKbboPPTMbvMijFKgTFJY
 3jR/aTaxfm63uVFKEETEf6cVbw9YbkMsGiSG4HAJmy1Vh7DdammhmOzQWb7URZw1G/n/
 3THODXeK8/9kMU50WVlvTI0Z9HJXyd5V02Y5jT6AlCnlUbc28O2fHMXPSVcX+AI/BBnJ
 3O6Q==
X-Gm-Message-State: APjAAAWp5KRAOvlyAKDtfxiCRrnu2tgSOZf4RbleR2vpywxkfNkKjDHu
 3eRvjmjkxhuOrPFN4UDvy48uWg==
X-Google-Smtp-Source: APXvYqzLP4aRq3CUThjZNYisaaB4VHdDdDEbNPmabr5sam3Oc5gm8d3NVjewGh5QPIsMmhCFol4zRA==
X-Received: by 2002:a17:902:d70a:: with SMTP id
 w10mr13564913ply.125.1579500096261; 
 Sun, 19 Jan 2020 22:01:36 -0800 (PST)
Received: from localhost ([122.172.71.156])
 by smtp.gmail.com with ESMTPSA id x132sm37407277pfc.148.2020.01.19.22.01.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 Jan 2020 22:01:35 -0800 (PST)
Date: Mon, 20 Jan 2020 11:31:34 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: chenqiwu <qiwuchen55@gmail.com>
Subject: Re: [PATCH v3] cpufreq: brcmstb-avs: fix imbalance of cpufreq policy
 refcount
Message-ID: <20200120060134.izotrbzjvzk327zx@vireshk-i7>
References: <1579417750-21984-1-git-send-email-qiwuchen55@gmail.com>
 <20200120053250.igkwofqfzvmqb3c3@vireshk-i7>
 <20200120055822.GB5185@cqw-OptiPlex-7050>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120055822.GB5185@cqw-OptiPlex-7050>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_220138_134388_6737CF70 
X-CRM114-Status: GOOD (  22.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 20-01-20, 13:58, chenqiwu wrote:
> On Mon, Jan 20, 2020 at 11:02:50AM +0530, Viresh Kumar wrote:
> > On 19-01-20, 15:09, qiwuchen55@gmail.com wrote:
> > > From: chenqiwu <chenqiwu@xiaomi.com>
> > > 
> > > brcm_avs_cpufreq_get() calls cpufreq_cpu_get() to get the cpufreq policy,
> > > meanwhile, it also increments the kobject reference count to mark it busy.
> > > However, a corresponding call of cpufreq_cpu_put() is ignored to decrement
> > > the kobject reference count back, which may lead to a potential stuck risk
> > > that the cpuhp thread deadly waits for dropping of kobject refcount when
> > > cpufreq policy free.
> > > 
> > > For fixing this bug, cpufreq_get_policy() is referenced to do a proper
> > > cpufreq_cpu_get()/cpufreq_cpu_put() and fill a policy copy for the user.
> > > If the policy return NULL, we just return 0 to hit the code path of
> > > cpufreq_driver->get.
> > > 
> > > Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
> > > ---
> > >  drivers/cpufreq/brcmstb-avs-cpufreq.c | 12 ++++++++++--
> > >  1 file changed, 10 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> > > index 77b0e5d..ee0d404 100644
> > > --- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
> > > +++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> > > @@ -452,8 +452,16 @@ static bool brcm_avs_is_firmware_loaded(struct private_data *priv)
> > >  
> > >  static unsigned int brcm_avs_cpufreq_get(unsigned int cpu)
> > >  {
> > > -	struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
> > 
> > Why can't we just add a corresponding cpufreq_cpu_put() instead of all this ?
> > 
> 
> cpufreq_get_policy() does a proper cpufreq_cpu_get()/cpufreq_cpu_put(),
> meanwhile fills a policy copy for the user. It equals to using
> cpufreq_cpu_get() and a corresponding cpufreq_cpu_put() around access
> to the policy pointer. I think both methods are fine here.
> What do you think?

cpufreq_get_policy() does an extra memcpy as well, which isn't required at all
in your case.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
