Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 654BD1CD8C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:46:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g8CczWsR2Lq6TNW0FvZRxhSm4PlndYf8i2r2NbsOIzg=; b=XbEry81ikGS8uS
	MHUckuWp3T9esH1upm67Sw9n4XZWRGzrPqFGrzkst92tTSftpZa1XqrEq1/zJimQHKUN3Keb7t0gk
	+/HVBfYDDPQ+uW6pVXCDlFF1ets4YeAhW+AjPahmdYf5Ex64ClMNgBtCWCH7yxZefrwrKHpB/AHFS
	WbDuQTgmcJdzolxDR9b4HS4aLL/GuRlwQ4st/UiV3BgKOSvwp8kBlOhL4azyzghXUckDNJcu1x7h4
	XIPoHkiRI/VJdWqyIjRgbs1hzeb2gI4l4r2rV/QnhqOTk5RVElaa5ICTUUiP0WFK9P7gX+33tX6+9
	flT4v8CpHJuqAp1+HerA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6tN-0004wu-9X; Mon, 11 May 2020 11:46:41 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6tF-0004vW-DG
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:46:34 +0000
Received: by mail-wm1-x343.google.com with SMTP id d207so3724099wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 04:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=8HihaMjBho7yHhoZ4dXDWrBXozE3xr0NvWok/3IgXso=;
 b=KTJtUy+xvCilgtfASvMVkrHFxJGWQd6oQfRtMj53UFUDKm0GLZdcKmysVquVdcGnNQ
 GnLnowb53q2mnDekrftfm5idSn2La4Hwi3EQlRIr2/x9kLZEGljvyDzDJ/tH/iPMhCm1
 Br1Mj0mQ+w2yON0HQ2T8K1qFr/JqndsQWJkbeeocTf/p+tdDaBtBm97H2lzKg+T6eaZa
 e1c0Mmv7ay3WSrdGzzxq+HftjVHi1YFqLO/rTY4o27q48B7uXHJnRU8plAj3pMPpDMjc
 48oZp2j9ep2hx9TCcvQ4njLDs5w+TaPPZM4SJGoDmaM0Jh1BZ2wDTD7I2hrixnS3uVeE
 pxUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8HihaMjBho7yHhoZ4dXDWrBXozE3xr0NvWok/3IgXso=;
 b=XKUy2PySOj7GnJhg8I/Ek8ip+b90zqPscW5XwZHfMcoKTulF+TrI0CEgVZdH9tH5lX
 kiTlGDg8urIA/dFnEQFwwliiyMf4psFSn+RxFX8ue7jgZaoRup5owF3k5iAT8Aw5srKN
 PvX8VoyOFaeRouNPNibDsoWrvy4DZFS7C37ddfHEpSURMAO6S8SX7aeqbf6td9yncYWt
 8uXnlEroC+HLMe5FGQqoSYa4J/npTayTG4HCSKtg9bviYAQ4EmX6F9JE+zMB2ez1HXK0
 1EvH6h4DqdgsvqT/9paeBtx4Ms5k6tMDLmZETp5zJBZsGzBoi9AgM3TyDxdnzsqldtUv
 rtpg==
X-Gm-Message-State: AGi0PuZriOSMzbLN84Mu7j9C/Q2JltF1FPx+AXrlUGB9IndCqzIlIyYM
 qnxYrFdm66yLboYWeH5gOEqB8Q==
X-Google-Smtp-Source: APiQypK+52M5jh5tMkIap1YctDwL5nM0Q2YdPkE9mtpXjfSY9F6Whlp3f9IAQU+9uwYyfn1ELFgsiA==
X-Received: by 2002:a7b:ce89:: with SMTP id q9mr33216701wmj.185.1589197588860; 
 Mon, 11 May 2020 04:46:28 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id w18sm17682226wro.33.2020.05.11.04.46.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 04:46:28 -0700 (PDT)
Date: Mon, 11 May 2020 12:46:24 +0100
From: Quentin Perret <qperret@google.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v7 01/15] PM / EM: change naming convention from
 'capacity' to 'performance'
Message-ID: <20200511114624.GA11091@google.com>
References: <20200511111912.3001-1-lukasz.luba@arm.com>
 <20200511111912.3001-2-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511111912.3001-2-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_044633_471741_F7C62E81 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 khilman@kernel.org, agross@kernel.org, daniel.lezcano@linaro.org,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com,
 linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de, orjan.eide@arm.com,
 daniel@ffwll.ch, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, rdunlap@infradead.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, b.zolnierkie@samsung.com,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Monday 11 May 2020 at 12:18:58 (+0100), Lukasz Luba wrote:
> The Energy Model uses concept of performance domain and capacity states in
> order to calculate power used by CPUs. Change naming convention from
> capacity to performance state would enable wider usage in future, e.g.
> upcoming support for other devices other than CPUs.
> 
> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>

Acked-by: Quentin Perret <qperret@google.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
