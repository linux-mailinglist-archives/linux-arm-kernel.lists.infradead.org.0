Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAD5EF997
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 10:37:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v1hI4CrOn32OHGnt54atWJbYk3Tk/OCY4KorJS24wls=; b=jM7/c5vdk2qghe
	PshV0lBDQuyM8QxgPdOCsDxjr4gyltQjD9r9wy+Ai7HGiCemR79EXt8Z6qs31/uCwnx+aZ+C7usw4
	tTo5Zb+B39g28NCz4Kg7gY9h55oQvHWpPYulCzku4lCOua4Gd/cVT/iX7YAFPzZHGHh/gg6qxv+iT
	qUjmECPNukME4of0/bacB4xw7IkcyXmpeIMYpj7tmfLTO2xlKEUHVMOd0pcc1jdDUEKW+MRIqeoaH
	et+AQGQ9fOW5tLQZaHahG1vOOTQRnPW/pD98w4bPgYXtqDuNogLNmnTsPaRTHu73k5yfKG320P1Sp
	wZV1leYBaT1OShRiOzEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRvHF-0005ht-S7; Tue, 05 Nov 2019 09:37:29 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRvH8-0005hY-9H
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 09:37:24 +0000
Received: by mail-pg1-x543.google.com with SMTP id 15so502334pgh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 01:37:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jDulaD8yGPSw9RKsvK4+mof/PDtVuO9RYsvVXQwxzXM=;
 b=o27oGeaQFxD86u8gIGPhrzIR6SfI9fMQiBcCgp5sHCQPiaD27PrDoNQBJWtB0QX+dP
 qzXuOric5LOnQdEqqsdBrNIrsOh6QfgTwdZqm8w+5Bbo7Aqbc1nQr+Z2iKKg2xNmpSdW
 XBp/BuUmEQddIvttxGZhA/tCgUFUvbqjcFk/iOpIDzFyrlKHe+nOzDET9BacRvs9g3AQ
 /Z7xa0vBzFtlr1TRIsIb3T8BpEzi5Alw/tFY56gRnfYNBVsRaHVVTnHprjy2VeynAt1u
 HVe3f6kmQpXlYTtVHFnMAEw897EAarckuA+gTg39J3OAKNz5oqgDex9R818HEacqL0TP
 74jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jDulaD8yGPSw9RKsvK4+mof/PDtVuO9RYsvVXQwxzXM=;
 b=GBQ6KQhgY81xW2d+VL9tNa25yZNqe+xHdcFiIUkKsEJrJ5XavIpe4fNiNmawgGumbJ
 x6TWgc+GMDDI/1WFktzdWe/ZDvs0+aiyhX5zj7GcC2nLBGjn574ZAn5uL1fWjoal0gjV
 3OghG+8Z3JYBfMP1SlA6fuwlzOont2Dry8xK/0nHX4KcE8ONuJ65SWiapv/8bqiAQSmT
 /jBIAUHriKy5ix4qD4J23Ig+bdQA5T1eI7XJwipXlLzLIQ+Lwrez7rK/aTt/dxeY+StY
 1/BRKFvzhoa3IGSoYFLhPof3+392zwxy59Yg0lRJebv0NFQPVa0g5gSmey4giMQH0woj
 uo2g==
X-Gm-Message-State: APjAAAUKLmndPTP8kKyLI8q7Pm0gXLvJYO5GQwSSpubY2jnIBo9cm/8g
 4Jk+AQGhJZ6J88Dxrs7T9CIbpQ==
X-Google-Smtp-Source: APXvYqyzuRVgyvTXTyQjC8xtu0nRUNtH/fWQGOgOhCgO04UFjuK/wTl+n0U3uw5++iupsawbMVoZEA==
X-Received: by 2002:a17:90a:ab83:: with SMTP id
 n3mr5259220pjq.21.1572946641205; 
 Tue, 05 Nov 2019 01:37:21 -0800 (PST)
Received: from localhost ([122.171.110.253])
 by smtp.gmail.com with ESMTPSA id 135sm17540908pgh.89.2019.11.05.01.37.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 Nov 2019 01:37:20 -0800 (PST)
Date: Tue, 5 Nov 2019 15:07:17 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v2] cpufreq: sun50i: Fix CPU speed bin detection
Message-ID: <20191105093717.q5ixjjsnb3aqzxql@vireshk-i7>
References: <20191101164152.445067-1-megous@megous.com>
 <20191103155901.GC7001@gilmour>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191103155901.GC7001@gilmour>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_013722_333774_8DBA0C43 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ondrej Jirman <megous@megous.com>,
 "open list:ALLWINNER CPUFREQ DRIVER" <linux-pm@vger.kernel.org>,
 Yangtao Li <tiny.windzz@gmail.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Chen-Yu Tsai <wens@csie.org>, open list <linux-kernel@vger.kernel.org>,
 linux-sunxi@googlegroups.com,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03-11-19, 16:59, Maxime Ripard wrote:
> On Fri, Nov 01, 2019 at 05:41:51PM +0100, Ondrej Jirman wrote:
> > I have observed failures to boot on Orange Pi 3, because this driver
> > determined that my SoC is from the normal bin, but my SoC only works
> > reliably with the OPP values for the slowest bin.
> >
> > By querying H6 owners, it was found that e-fuse values found in the wild
> > are in the range of 1-3, value of 7 was not reported, yet. From this and
> > from unused defines in BSP code, it can be assumed that meaning of efuse
> > values on H6 actually is:
> >
> > - 1 = slowest bin
> > - 2 = normal bin
> > - 3 = fastest bin
> >
> > Vendor code actually treats 0 and 2 as invalid efuse values, but later
> > treats all invalid values as a normal bin. This looks like a mistake in
> > bin detection code, that was plastered over by a hack in cpufreq code,
> > so let's not repeat it here. It probably only works because there are no
> > SoCs in the wild with efuse value of 0, and fast bin SoCs are made to
> > use normal bin OPP tables, which is also safe.
> >
> > Let's play it safe and interpret 0 as the slowest bin, but fix detection
> > of other bins to match this research. More research will be done before
> > actual OPP tables are merged.
> >
> > Fixes: f328584f7bff ("cpufreq: Add sun50i nvmem based CPU scaling driver")
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> 
> Acked-by: Maxime Ripard <mripard@kernel.org>

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
