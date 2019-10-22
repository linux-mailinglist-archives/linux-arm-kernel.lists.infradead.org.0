Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5CCDFFB3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 10:39:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cpnh+d5k+1X8NwpWQfDwj0SYIVW4g3yFEyuZFO2k8ZI=; b=OFt1783qyoZZqs
	uiTNxcaODNkKRhDZxexgyLA26eMc3fcD8MzHrK4taZ5UUcnLi3FUoEH44e9qm3QHdDq6GvBXCgevL
	2zrtobeVogxnHoDqP6yCxd9CUZqWVGmCERgDf4+Yhws4z5dCSXT48xEPKg/g+oDnhUEY1LNAnRZuq
	hyDjI9dsY+uGCUh2OQBLqwYQUU4uPOTi0cmWMInl86UNLMpvCKebBAWZhhbMt0BSNu1mbNCgQAFX0
	K1f+ZtV94gb1kdjDAU22hrnWYdkmMte5pHPTGT9cctHTcaZVcB1iMpLUmP+vpQbLTRx7hMRywrMiz
	66W9b3c2IcZPg4ccvcQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMpha-0002oY-7I; Tue, 22 Oct 2019 08:39:38 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMphO-0002nA-RT
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 08:39:28 +0000
Received: by mail-pg1-x542.google.com with SMTP id t3so9505241pga.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 01:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eApqYsG4e2cicMJq62zYg3NteuGKFbsXj+rZHKlYrI4=;
 b=cDDUvT7tE6kS1y83Xq++77H6H+Yisw1zBg5XQKZM01Ku2NMUOCvt+fjK9vnwStNlMd
 G1XP7moU287HDuI+90wzDg4KmHiMAREfcyjZgBDWnWhXGjZIXyxGj9Hlq2/rlvv/T7Vr
 QcwefftZNu9druK8hY710/5qE2kykFpQj1gXoPUCbNKf+yt14RoqzUnfUzDVZLmV9oSF
 0qYRgRJk3HtZycxlHl/UQXcjaZ7nNc1QQ1C708JwIPoSi+cVt7swoXR6fClCxm4HiBS4
 jj3nUyN+pUpT58Uk6c+SbtgRwXF0w2mr7msDr6HQaqaNxVzWxfd+l6C7PoK1zEe3odxK
 TO3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eApqYsG4e2cicMJq62zYg3NteuGKFbsXj+rZHKlYrI4=;
 b=l86CY8nor0uMI3HIETzITjA5k4zTv27GKFHemaHYK+slf81t126wbXHdx8trYPVASG
 CXO3Dwf1xiv5XK/gtkCvK3bNLaRFuYrUHhOfrx61paW5ZP8+jjBlFrTQlQPeqrAY78TV
 FP+vek28vFdZm+fRQMyIio2TRmyBtqtnbvd8fE96ZfAUNSNdITE7vN/GydvT6WIOK3u+
 G7Q4p6cU0h8k/WO6QGin8/GaVjdId1aAZsW8OoHCYK/bWNanBqfuH0g8hayH3TxyOdKT
 t6INSUhuB62GHipqztGYigORnW30zlTp+fOPxh7ermeaqyVRT0kEyMGWfWzxkk12FkIK
 sNxw==
X-Gm-Message-State: APjAAAVxpqwJ0HakyZag6HQ0IlIKKVZ4AhjZ8S7zxQka5NC9AAY1Svg8
 D/L6ME4dPv5VJsM++3dUk7A+tw==
X-Google-Smtp-Source: APXvYqzoU91PMefRaVNwx7NkTM3WdM9pc2FdfwqZ56vV/RMHqHndA6hwGJsvhbRBkt0v+CwbGGBDLg==
X-Received: by 2002:a17:90a:c406:: with SMTP id
 i6mr3159050pjt.98.1571733566156; 
 Tue, 22 Oct 2019 01:39:26 -0700 (PDT)
Received: from localhost ([122.172.151.112])
 by smtp.gmail.com with ESMTPSA id m19sm15343255pjl.28.2019.10.22.01.39.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 01:39:25 -0700 (PDT)
Date: Tue, 22 Oct 2019 14:09:23 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2] cpufreq: imx-cpufreq-dt: Correct i.MX8MN's default
 speed grade value
Message-ID: <20191022083923.pjqfokyoegispumw@vireshk-i7>
References: <1571733199-17406-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571733199-17406-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_013926_898242_B8BF9829 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pm@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 rafael.j.wysocki@intel.com, linux-kernel@vger.kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22-10-19, 16:33, Anson Huang wrote:
> i.MX8MN has different speed grade definition compared to
> i.MX8MQ/i.MX8MM, when fuses are NOT written, the default
> speed_grade should be set to minimum available OPP defined
> in DT which is 1.2GHz, the corresponding speed_grade value
> should be 0xb.
> 
> Fixes: 5b8010ba70d5 ("cpufreq: imx-cpufreq-dt: Add i.MX8MN support")
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- Improve the coding style by removing the tab;
> ---
>  drivers/cpufreq/imx-cpufreq-dt.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
