Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9479D1A095B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 10:29:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xCOtUGtZK4rzVBJ1ORt+MXUnilyXOTv8qfRaWq4hlpc=; b=WQnSECSOg/3PtX
	gSEAqLzUJ6qtMoCxBMEMsOO6mgJW2eKYr7T5RhNxiYg1OzQ9xo+sBkW+TDr6FJsAqAR5MQTEEQWZt
	dNcQADP+g6iRmsjV58R1pv7RebhXSlf8LrsD/fs+e0ngJt+PbodmobYCQB9+AIfOGiRHwauzYTg3L
	W7H1i3iYF/sKKWrJHth3JcE1vO+LeDoRDPMeGjDSHYGXA8ZKJkdpM0++XPd5zK1uYyysKY909W2eq
	gK5OUgufLKB7nnl899Ta+6LHDh3gfxHtDvuQkJEQrzrzCgCLFYnuR78PS8o4l2U9RRaaKUgF4M8P8
	kb6Qxid2HZFMooNkVMhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLjc5-0000Gf-72; Tue, 07 Apr 2020 08:29:41 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLjbx-0000EV-3L
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 08:29:35 +0000
Received: by mail-pj1-x1043.google.com with SMTP id m15so431029pje.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 01:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4R/FPBL4dOo4mvZ9ReJ8CLxavGglB5XXnfcP3bpIQMU=;
 b=YF7pfVtnVNormD+6w1FhUmCCmIPX8WylGW+gMb6fcDVCwxbjNpGspR80BZhFu81/wC
 9mGnJKwUU3jjI6aV9mcWfz9QHoD3N9j+t3t7uW1fJfq3k9+V6vPBnljs+ugaNxvH2oM3
 4fBcqqWsKDX8Vg/5/IVAXwf+8dlGNtHJhTMLogSVr30vlUXOSwvnl5PxBYoUdlZqZHZz
 8hYl4Zqcu6CNjvxU0x9amIs54FLIYOip55tk5JBJ+2Pi1ijg3lhIm+XWqxUIXtIsl/Gu
 3Y8xRbNRGLHZTKZBmWLyUyWGcwSuRyW6xDHlEgTIVdhWpg0gMdR1bVdSlt0FgGwI1rX+
 myNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4R/FPBL4dOo4mvZ9ReJ8CLxavGglB5XXnfcP3bpIQMU=;
 b=Avdn3VDGxl5/y7omMCSSZ1MnQeyMDIFSOgUrHZyRyPa/UXmXmH36MLDCg0CZFumQyM
 zhxCHDQiu0o0InmLbHz36q/s+JasdC5mre8P4EzxWWjI4adW0BfjaLRXSjqvp5VoMTNU
 Mx+8exTzc9Y7XE2hZzbhIRpxKBxoAvd26B625zAoeQWpkhoW1NGb4qnwAPmF3cwvu5rr
 t8+V8KvDQrrS6o3JESIhtA9+oy6/C4vAV5wlXI6RhO3NVNkClBdRQ/UANzNR9VtnaMRr
 1ARE8d4yVRu6RU/X8at7SKdgaSYqkzlcNTWFl+gqrthzTMqbw9wyk5gAtMcg680dtNhL
 IDjw==
X-Gm-Message-State: AGi0Pub4jnXirAeJpgJGX1JqKv4xeEUkLSHgfz5013tOFS7jbT7WxlI1
 id0uVg6N4awRKkuCrHRt/ZO4bw==
X-Google-Smtp-Source: APiQypIcnVfCrjU/SQx6rFcAG9MOEb1k60YQzwaCjM39FmAU4PrzS6vHLapoN/BLX9AQQ8GBXTqLpw==
X-Received: by 2002:a17:902:b489:: with SMTP id
 y9mr1436701plr.144.1586248171653; 
 Tue, 07 Apr 2020 01:29:31 -0700 (PDT)
Received: from localhost ([122.171.118.46])
 by smtp.gmail.com with ESMTPSA id np4sm989176pjb.48.2020.04.07.01.29.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 Apr 2020 01:29:30 -0700 (PDT)
Date: Tue, 7 Apr 2020 13:59:28 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "andrew-sh.cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [v5, PATCH 4/5] cpufreq: mediatek: add opp notification for SVS
 support
Message-ID: <20200407082928.lancywbqts5yg4ks@vireshk-i7>
References: <20191127083619.etocnhpyyut3hzwq@vireshk-i7>
 <1575874588.13494.4.camel@mtksdaap41>
 <20191210064319.f4ksrxozp3gv4xry@vireshk-i7>
 <1583827865.4840.1.camel@mtksdaap41>
 <20200311060616.62nh7sfwtjwvrjfr@vireshk-i7>
 <1584084154.7753.3.camel@mtksdaap41>
 <20200313091038.q7q7exiowoah4nk4@vireshk-i7>
 <1586164366.5015.6.camel@mtksdaap41>
 <20200406092945.d5thcd2h3bo7mn45@vireshk-i7>
 <1586242489.10019.1.camel@mtksdaap41>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586242489.10019.1.camel@mtksdaap41>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_012933_418914_587CB44B 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Fan Chen =?utf-8?B?KOmZs+WHoSk=?= <fan.chen@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07-04-20, 14:54, andrew-sh.cheng wrote:
> On Mon, 2020-04-06 at 14:59 +0530, Viresh Kumar wrote:
> > On 06-04-20, 17:12, andrew-sh.cheng wrote:
> > > I will use regulator in the locked region.
> > > And regulator will use mutex_lock.
> > 
> > Yeah, you can't use spinlock here, use a mutex.
> > 
> Hi Viresh,
> 
> I am not familiar with read/write lock.
> Do you mean there is another read/write function, which is not
> read_lock()/write_lock(), using mutex but not spinlock?

Heh, I am asking you to use simple mutex here, leave the read/write
lock thing completely as it won't work here.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
