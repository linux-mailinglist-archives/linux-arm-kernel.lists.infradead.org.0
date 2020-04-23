Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B05281B5F34
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:29:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bdUiVA85m3qcwcxJ97Xla6lHnNIvz59r9Aom3XWdETA=; b=WS9w65Dp3f1Q+q
	fOCo8VhipVCZAux+SNYik00JQcuPVAnQpkyFFJLrlza2T25G0Kf8oQBqECOv1nuygsEPN70iRKKIg
	cfiszUBV9O1jq+4G0NWgx3IMD/Xp30yKmpEnuNs0g5jQsjZnafRtTDFUOvVdDrQgzti0Qj/PK3meO
	SfkeGbo0wfipEbxIoQX2hsF4PR/9Ua30QLKDf530ZEX99XBHx48n9lGUiOyEKJ9kgSy7BewS4oIM4
	PkCgle8Y9fHz6Xza/w0bA5tpvi46ZsIPmFWukFD3HwLg8yh/s2pCw9htth7jnXbl+3fDkVQbw1glB
	L+5n9H0yyvafE2FlQ6Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdn2-00039B-L5; Thu, 23 Apr 2020 15:29:24 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdmh-00030p-D1
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 15:29:09 +0000
Received: by mail-wm1-x344.google.com with SMTP id v8so7727878wma.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 08:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=K0XwhvnZ5fHku+zX8bB/tqMgI8KM65JG7UKJ1LIe+hw=;
 b=f3HaI4v7q0s0ma9brDtDfqbZ273js/4jOfpcLSe86Rdc4863/LFECt156kdpFRFuFU
 /qAg5B9O+PLzlWP3310ATVRODsMIrhzfM6FRjI2ZfFrQh4TULq2AHJGPyPOzharxZjGs
 7nU7Xz0r39aTzO4K1n1DPslhQOZhvyuKKyIbf0lq4Ckrwalxc66TSGtchPiX+in6/vCG
 TN+C9llUiHzgI7809zQxurlbhQHWjyyCzDT1ymd5TPr0DGAHiwg0sY3T6f3iwZEMaYMz
 GyZiPpsxXPYpGo5h9qA9IliuLqsreuoUyXoDk50xYzX1M3L64josfqN4NbTZNRwbZFey
 lCWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=K0XwhvnZ5fHku+zX8bB/tqMgI8KM65JG7UKJ1LIe+hw=;
 b=Kqk7CQ41iSVuBH0CeltK8V1688nDJ3P2Hg51X5CSS6WKbs7wnFKKuHM5npwtk5pxEo
 tB3wbEQHux40MYOYcLd5yhNQNzQ0fDuN3e9tS+Mz/8aAX8iU4HJRJ/3WThQIiKsU8sFs
 FAYih3I8EdrNMjq89Vo8ZfNuYi8e7qqCiwDFS3s5Zbm+S+ilNqTlnJzNmRJKzS2IScxW
 pbkKhBRaxmvu7mIG/4yPdwueIM3vv2/T9lzOLcIfYs/NyRWxCV5seWpiu7ybpVEbNYpH
 q4YVfJTKnLlNprGyc0IasZhqP5V3NQv6DdiiCmXxtnZ1zvoWKbdWWIdORwB57M22KQmP
 yL9Q==
X-Gm-Message-State: AGi0PuZIlH37L/lvvmv7X2ZloLpCQmzrWB6geoZ8+c3NeDoZB1HnR3GF
 9qwZNta27lBU/yOhfNwmfpc1zA==
X-Google-Smtp-Source: APiQypJgzi6SD42pIpK5DubH9kPf+0CuGHiKBJHzVOd+VDHdvOQf8wEqsCDznBChQjiLenoFM3eaig==
X-Received: by 2002:a1c:a794:: with SMTP id q142mr4732427wme.4.1587655741551; 
 Thu, 23 Apr 2020 08:29:01 -0700 (PDT)
Received: from linaro.org ([37.167.216.250])
 by smtp.gmail.com with ESMTPSA id j13sm4361278wrq.24.2020.04.23.08.28.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 08:29:00 -0700 (PDT)
Date: Thu, 23 Apr 2020 17:28:54 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v6 06/10] PM / EM: change name of em_pd_energy to
 em_cpu_energy
Message-ID: <20200423152854.GD65632@linaro.org>
References: <20200410084210.24932-1-lukasz.luba@arm.com>
 <20200410084210.24932-7-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410084210.24932-7-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_082905_013370_7654895B 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, mka@chromium.org,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 khilman@kernel.org, agross@kernel.org, b.zolnierkie@samsung.com,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com,
 linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de, orjan.eide@arm.com,
 daniel@ffwll.ch, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie,
 tomeu.vizoso@collabora.com, qperret@google.com, sboyd@kernel.org,
 rdunlap@infradead.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 09:42:06AM +0100, Lukasz Luba wrote:
> Energy Model framework supports now other devices than CPUs. Refactor some
> of the functions in order to prevent wrong usage. The old function
> em_pd_energy has to generic name. It must not be used without proper
> cpumask pointer, which is possible only for CPU devices. Thus, rename it
> and add proper description to warn of potential wrong usage for other
> devices.
> 
> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>

Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
