Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B051A3065
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 09:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mn4ifhMjOuYit3U1afqy0+MOQNAhGtLfqlYamkz5FH4=; b=uIReR6Cm4HrkbZ
	dJtKT4d6wk6T1MTQ4/h8XpCPJlrXOUIT275sPs9NUG00YUCbh6NC1J9MSMrlXT6t2qfdbY5IH76sG
	h2NxysEYLf4Vj92VAHM+8S7l4JOOPaDQ/kLz+PrvJ2MJH3SPYZSE4RFZVSpeq6gpkqa5w8RiTdGXB
	pfBIAiSdZeweJCOfDv+fsNrBr7dDonOv/Sa1xmDhhOK2F1U9EoBC9JKeGLypvNjZLEblFb1A75Fll
	I39TR7vS2IfcHTOrFwKwMS5iPv6vEdf9R+rhSKFtL3w3/h63Xm2d5kaTHjrvasrcl2a3aCIeSPZMu
	chTXiFQRUUFRI1qkI8VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMRrR-0000TU-RH; Thu, 09 Apr 2020 07:44:29 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMRrJ-0000Rc-AU
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 07:44:24 +0000
Received: by mail-pg1-x543.google.com with SMTP id w11so435177pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 00:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=S4xKuTMpvub44uC+2VePDHC2aHUHahAepDBHwFjnk3U=;
 b=BRdTs+aUrBtkDH3qvrVnSv17R/XI4bmx3i/sUL+WIVC1VN4nUGqRW5P2DPokR8Pox4
 Jty0vLGz8xpjnzIArbd/y1S9HKzmdEkIdu9W4GOJTfwKOpiZhOqxOzouv8wtRXDiTVKA
 H/ktGuX7DMh5izjF8whaDS/SOYuiDuTxVPUagdnP0URZMl8Cuxm/4Iy9x7uepkxNoix2
 3CK8gk7FLxV6hSNKJKLoLh4gJ4/b06x5uLe1Cff4Yd2rdscP3gAZuYZAf3XoXSX+oBvA
 fHtPSef1lmA5xyTN1GH/OnUNoXFgIktEnp+S6Hb3v0DipiT2x4Q6w99rvOXqdzALSXcI
 q42Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=S4xKuTMpvub44uC+2VePDHC2aHUHahAepDBHwFjnk3U=;
 b=pv3Rjpie5Nbrt2uR90pubLvBJ5ow3DwzQEobjCkY9Z0SQkhf5OyXq6o3skUaKlbgJU
 Y46GTivJLauKIN5THPYo0uxqIADg5bWkijjbR0lL3batXdcvSpk4XxCmfHYHB+p40dh5
 HKTJQmZObS3rA8xlri5jvXdswhEkTuiWJWtrAzjxRg8g1boky+TntP4/Uy2Xhx4/xRDW
 kVoc6gW165xtbikV8z4OI0zLOL7Bs712kgGnjwFYYE0bxJGSCbb8szU0H74/RM0i4Lil
 zF98CjOuncIEt0OSXkhnlMRG6H0yaELyI9wJQ/eTU8dunhdEIQ5zFZTaVbDnhJQYLfY1
 /Nfw==
X-Gm-Message-State: AGi0Pub+TISjwDqWHymka9lF6q05K9D6f9qZD6w9fIolTkf6+4nka6Oh
 Z6CHmIdy/9B7z2RVT2DDh0uMHA==
X-Google-Smtp-Source: APiQypLfvzycvtY7B0F9LPaaNExw8KdQUsdLORxwe+vO7XdvZD2yR56LW38fhQ7je8aXybIQeolseA==
X-Received: by 2002:a62:d10b:: with SMTP id z11mr11675504pfg.205.1586418258201; 
 Thu, 09 Apr 2020 00:44:18 -0700 (PDT)
Received: from localhost ([122.171.118.46])
 by smtp.gmail.com with ESMTPSA id k20sm17128358pgn.62.2020.04.09.00.44.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 Apr 2020 00:44:17 -0700 (PDT)
Date: Thu, 9 Apr 2020 13:14:15 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: sumitg <sumitg@nvidia.com>
Subject: Re: [TEGRA194_CPUFREQ Patch 2/3] cpufreq: Add Tegra194 cpufreq driver
Message-ID: <20200409074415.twpzu2n4frqlde7b@vireshk-i7>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <1575394348-17649-2-git-send-email-sumitg@nvidia.com>
 <20200326115023.xy3n5bl7uetuw7mx@vireshk-i7>
 <d233b26b-6b50-7d41-9f33-a5dc151e0e7d@nvidia.com>
 <20200406025549.qfwzlk3745y3r274@vireshk-i7>
 <3ab4136c-8cca-c2f9-d286-b82dac23e720@nvidia.com>
 <20200408055301.jhvu5bc2luu3b5qr@vireshk-i7>
 <08307e54-0e14-14a3-7d6a-d59e1e04a683@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <08307e54-0e14-14a3-7d6a-d59e1e04a683@nvidia.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_004421_881815_A291B75F 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: bbasu@nvidia.com, linux-pm@vger.kernel.org, catalin.marinas@arm.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 talho@nvidia.com, thierry.reding@gmail.com, linux-tegra@vger.kernel.org,
 mperttunen@nvidia.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08-04-20, 16:54, sumitg wrote:
> 
> 
> On 08/04/20 11:23 AM, Viresh Kumar wrote:
> > External email: Use caution opening links or attachments
> > 
> > 
> > On 07-04-20, 23:48, sumitg wrote:
> > > On 06/04/20 8:25 AM, Viresh Kumar wrote:
> > > > On 05-04-20, 00:08, sumitg wrote:
> > > > > On 26/03/20 5:20 PM, Viresh Kumar wrote:
> > > > > > On 03-12-19, 23:02, Sumit Gupta wrote:
> > > > > > > diff --git a/drivers/cpufreq/tegra194-cpufreq.c b/drivers/cpufreq/tegra194-cpufreq.c
> > > > > > > +static unsigned int tegra194_get_speed_common(u32 cpu, u32 delay)
> > > > > > > +{
> > > > > > > +     struct read_counters_work read_counters_work;
> > > > > > > +     struct tegra_cpu_ctr c;
> > > > > > > +     u32 delta_refcnt;
> > > > > > > +     u32 delta_ccnt;
> > > > > > > +     u32 rate_mhz;
> > > > > > > +
> > > > > > > +     read_counters_work.c.cpu = cpu;
> > > > > > > +     read_counters_work.c.delay = delay;
> > > > > > > +     INIT_WORK_ONSTACK(&read_counters_work.work, tegra_read_counters);

Initialize the work only once from init routine.

> > > > > > > +     queue_work_on(cpu, read_counters_wq, &read_counters_work.work);
> > > > > > > +     flush_work(&read_counters_work.work);
> > > > > > 
> > > > > > Why can't this be done in current context ?
> > > > > > 
> > > > > We used work queue instead of smp_call_function_single() to have long delay.
> > > > 
> > > > Please explain completely, you have raised more questions than you
> > > > answered :)
> > > > 
> > > > Why do you want to have long delays ?
> > > > 
> > > Long delay value is used to have the observation window long enough for
> > > correctly reconstructing the CPU frequency considering noise.
> > > In next patch version, changed delay value to 500us which in our tests is
> > > considered reliable.
> > 
> > I understand that you need to put a udelay() while reading the freq from
> > hardware, that is fine, but why do you need a workqueue for that? Why can't you
> > just read the values directly from the same context ?
> > 
> The register to read frequency is per core and not accessible to other
> cores. So, we have to execute the function remotely as the target core to
> read frequency might be different from current.
> The functions for that are smp_call_function_single or queue_work_on.
> We used queue_work_on() to avoid long delay inside ipi interrupt context
> with interrupts disabled.

Okay, I understand this now, finally :)

But if the interrupts are disabled during some call, won't workqueues face the
same problem ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
