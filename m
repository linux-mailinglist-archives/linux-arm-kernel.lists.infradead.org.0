Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B99D81C8174
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 07:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UxRt9n2iZhfNkq8WD6VtDushnNH6sxbjSHtJB+zgcGs=; b=cKF6NQxDWb1bb4
	Z72iBl7ZDLqtr5ysV9II8IfnQX3iMwvCZeYa573xmiUv4VlXZae+FyvtFm57o//xiznKC1oKjHmiM
	Js3i/l2F1+rji01YTfC+Zf8gW5ztYLcBBTTFBsX0rWpXAJ09wVuZJWsaU+3quolnPWh1g8a4RxgVw
	oqJyP+TLHUOH+dYvvhO5dSWjlpAiLC402bTTRRpPUaEKlGi7Fcl7CNxBGgKzcBt/FIjzTGAuTlfzW
	NBg4t11YBxkx9h0XxgSCjmj4MJnKNJf5dbWy4vA8uzJNb0nhXeMAqySJDfsF1I/EHXfOQDxOWFEfV
	Xuv5m9cShzqOULGkLE4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWYvX-0004su-2a; Thu, 07 May 2020 05:18:31 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWYvP-0004rw-Fu
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 05:18:24 +0000
Received: by mail-pf1-x441.google.com with SMTP id w65so2393376pfc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 22:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EjwpJVR1oS9DdS7pegxHcKxChjnzSaTIkyZTVhILaoo=;
 b=slcpKIceAq3cfjYgNr8Zhq1cKoLAoXXqoHotEAb2xiQ35kfA512G47MwpKhZXuM/7e
 CPnlmatcZzVIRfNzpy00KH25stfePubouqjpWYnEmzYbZ4ABGq0cZy3Nmuh7tvH2wUGL
 a5veNcqHV2kXAgW7D+G/lGfw7VAQcdJhiOQnGPFvP3w7C1vRRwMk7rCHjG23Uw3Q0w1u
 jBhgWVFKipZ/m5hr6AzK9WoqH9NgDiX0dGl4AWiRoCTXvB4aa07ZvnHrV99m3lGg3wsh
 //8wutcZlOEfr0/AnEAjs7Cc4yZV4yYPA2Db4R7sXaVoPjV+1d9BSXEk4soUalWD6wMI
 L1ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EjwpJVR1oS9DdS7pegxHcKxChjnzSaTIkyZTVhILaoo=;
 b=mgphJnkp6fXoSpCysYA/1tOYGwDYNJOr09DVGvmcRUNEd3nCw0pBA8geuOH992ld0W
 klKlNh6zs4xObkbzuiyqXT4qiaW7TkXDL92IB/a+WrCsS7QtfPUdhWh4Ug6HRoiQCKiw
 OJUPPxc9P0T6ts8B8C4tSYWvuqpmFlqfKF/x9D15CxwQH9BtU7FTBsWHKLsyhRADII2F
 IcpXkfFN8ADc4b3VFgTtSJOJydpP2av+0jCw/wNeOs6LhFcyZlNG659rsuPxrA/2VCBK
 QCiiRrQ35pwHjjI/7Lz8xl55ZmQ0+p+tx8hbV0Zn28CN9wp084uh2QW8YjIQQ7T/hZPw
 A4rQ==
X-Gm-Message-State: AGi0Pubpmy99iLc/MA4IhiwxOK7pv7QDBCvWcpcvb2M3KN/5ZDZuVWxK
 z+t55ZPhsdv5nJDR/9TSUOEbfg==
X-Google-Smtp-Source: APiQypIEmsP8B+EwGLQga6A4T0mFxXwfh7oJIQ8PZk2O+MdkKuUNTJ0xX+z5cnzD4HZ+G174irQzXg==
X-Received: by 2002:a62:3181:: with SMTP id
 x123mr11697759pfx.109.1588828701997; 
 Wed, 06 May 2020 22:18:21 -0700 (PDT)
Received: from localhost ([122.171.118.46])
 by smtp.gmail.com with ESMTPSA id v127sm3499629pfv.77.2020.05.06.22.18.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 May 2020 22:18:21 -0700 (PDT)
Date: Thu, 7 May 2020 10:48:18 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: rjw@rjwysocki.net, Mian Yousaf Kaukab <ykaukab@suse.de>
Subject: Re: [PATCH v2 1/2] cpufreq: qoriq: convert to a platform driver
Message-ID: <20200507051818.xi43yfusjktemd5r@vireshk-i7>
References: <20200421083000.16740-1-ykaukab@suse.de>
 <20200428110125.lobyrsbma6astfmq@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428110125.lobyrsbma6astfmq@vireshk-i7>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_221823_558310_848172EF 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: andy.tang@nxp.com, linux-pm@vger.kernel.org, sboyd@kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, shawnguo@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28-04-20, 16:31, Viresh Kumar wrote:
> On 21-04-20, 10:29, Mian Yousaf Kaukab wrote:
> > The driver has to be manually loaded if it is built as a module. It
> > is neither exporting MODULE_DEVICE_TABLE nor MODULE_ALIAS. Moreover,
> > no platform-device is created (and thus no uevent is sent) for the
> > clockgen nodes it depends on.
> > 
> > Convert the module to a platform driver with its own alias. Moreover,
> > drop whitelisted SOCs. Platform device will be created only for the
> > compatible platforms.
> > 
> > Reviewed-by: Yuantian Tang <andy.tang@nxp.com>
> > Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> > Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
> > ---
> > v2:
> >  +Rafael, Stephen, linux-clk
> >  Add Reviewed-by and Acked-by tags
> > 
> >  drivers/cpufreq/qoriq-cpufreq.c | 76 ++++++++++++++++-------------------------
> >  1 file changed, 29 insertions(+), 47 deletions(-)
> 
> @Rafael,
> 
> Though this looks to be PPC stuff, but it is used on both ARM and PPC. Do you
> want to pick them up or should I do that ?

Applied now. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
