Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1241439A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 10:38:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZKCeeTvVGbQxYIMfZF7gGyUeK4fSGqnGQN6KuQsb6E=; b=GqYDh3tl4ecFAC
	G/Xw0bsbqIgfigFOszXr2IM56hiBaNeCRjxMEFGfZ7TlhPEnsyCMhaWUFpUv37Ox073EiWgGbCuu9
	Mqcb+TjqF5HzdUCvKDPL762eb/4oq7u2g67Ipvly1ouFVWqb5uHF/x+a5RTcGnVReLwpTggOYB9Ts
	+kNdI4WPMoRa11poNAoakXfrqBIprI0tqG7zpV2/k6i7O+xdJS8hw8I/jPtTA+Y16YLBuQ9FaJfii
	c98JVrY3u15QEkXtd9hrButMGEEXCTyzZUhMK1PpJs58IRXkXmmqe+bhPhW4jDePbHa55SRBylACo
	ABHhjd814wkJrBB80dUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itpzC-0001Wv-K2; Tue, 21 Jan 2020 09:38:14 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itpz0-0001VK-2U
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 09:38:03 +0000
Received: by mail-wr1-x441.google.com with SMTP id y17so2353197wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 01:38:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+M730A48Aqh4pFSc6/yOGVnR2p3jp3qMHztEPqPnpzo=;
 b=I4Il4xqb/mQRJaa0qSSl+Y25gZ18e057wP1tdP0lh2yLeaVpX0hadSOR4cl/LQpB3Q
 tyaDpcGYEDRokttwYZKiVcZfJVF8EHoSYV8AeT5Pk8Cx7E9Px1VKdhTcXR1aAUSJd42D
 xFOr6MeGSxv5TF/P/YEky3SS2IZFj68f7cxUiU1OZ4UxuYB744pGOuVT1Fv5ZBgPKRCQ
 7lN+SeGd90TfRO9gjPQRhJKb/pkMVZLlA3k0gUeRo6+ZVDTta1IW1eGaQBVEL1GveVLC
 n0vz510kYT0OpN/IyanOQzCHQTHpjRTMgbVeaY/5N811ccD6PckCAVfLKOa3fN1tAM5n
 aJ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+M730A48Aqh4pFSc6/yOGVnR2p3jp3qMHztEPqPnpzo=;
 b=W62eJ2IA1QcfRErXVc7arv2YKJtZOaS/mTLzsyLvwPpJ2m3q0lWYIxzurbQ6pgRjWp
 cuQdM3mZb5pkCL2kkmnBgKvpD+0K5E1RKtiPBVJdR6sAHOJX0Da36TiDeNRSrUCu7Ek2
 XWWFQFeeGBZcDVZeOZpwiWWcbB0yRNWZ4PZVImfzlZ0GCoLuqal/aDjtlfQhJB1wX6y6
 eU4eVDIGhvFir74yoOUMM3OKb053D3Vlo6noPQQgr7q+NXBSXqn/Ahgf2+cvPk34bOIe
 9WPgEZ2Dwyya6U+pS88popcTybKFSR+IY7Hs3YtGCo0jSmA7ZsbjZU5BRO+uNJxe25Th
 FD/A==
X-Gm-Message-State: APjAAAUhSJckUQUSbuNkv7Z1Vj/09outi+TCDrg75QQOBqGhOfbG7FUN
 IG8tuSgzuP+isOTrMN348CNVLA==
X-Google-Smtp-Source: APXvYqzNPRBGH9fYa6XMUb9Kcbd+L9DaQWdS1c4YXNu4dlR3oazpTgiDZXxcGp6bVMzhgy2FLbeDYg==
X-Received: by 2002:adf:dfc2:: with SMTP id q2mr4336811wrn.251.1579599479951; 
 Tue, 21 Jan 2020 01:37:59 -0800 (PST)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id u22sm54210033wru.30.2020.01.21.01.37.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 01:37:59 -0800 (PST)
Date: Tue, 21 Jan 2020 09:37:55 +0000
From: Quentin Perret <qperret@google.com>
To: Dietmar Eggemann <dietmar.eggemann@arm.com>
Subject: Re: [PATCH 1/4] PM / EM: and devices to Energy Model
Message-ID: <20200121093755.GA157387@google.com>
References: <20200116152032.11301-1-lukasz.luba@arm.com>
 <20200116152032.11301-2-lukasz.luba@arm.com>
 <20200117105437.GA211774@google.com>
 <40587d98-0e8d-cbac-dbf5-d26501d47a8c@arm.com>
 <20200120150918.GA164543@google.com>
 <8332c4ac-2a7d-1e2d-76e9-7c979a666257@arm.com>
 <b02da0ed-9e0b-36db-9813-daa334cbf2ba@arm.com>
 <c9910c74-ab47-0c78-a1c7-4f3978e1dd09@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c9910c74-ab47-0c78-a1c7-4f3978e1dd09@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_013802_139651_B885EF93 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -13.9 (-------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-13.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: nm@ti.com, juri.lelli@redhat.com, daniel.lezcano@linaro.org,
 peterz@infradead.org, viresh.kumar@linaro.org, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, khilman@kernel.org,
 agross@kernel.org, b.zolnierkie@samsung.com, steven.price@arm.com,
 cw00.choi@samsung.com, mingo@redhat.com, linux-imx@nxp.com,
 rui.zhang@intel.com, kernel-team@android.com, mgorman@suse.de, daniel@ffwll.ch,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Chris.Redpath@arm.com, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie, javi.merino@arm.com,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, shawnguo@kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 sudeep.holla@arm.com, ionela.voinescu@arm.com,
 Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tuesday 21 Jan 2020 at 10:10:16 (+0100), Dietmar Eggemann wrote:
> True. But then we hard-code that a CPU device performance domain can
> only be a frequency domain (which is true today).
> 
> The task scheduler (build_perf_domains()) and thermal are already using
> cpufreq_cpu_get() to access the cpufreq policy. Now the EM framework
> would too for CPU devices. I assume that could work with a couple of
> adaptations in Documentation/power/energy-model.rst.

Agreed, and if one day we have a real use case where the pd mask and the
cpufreq policy mask need to be different, we'll do the necessary
changes. But until then I don't see a reason to object to Lukasz'
proposal. So +1 from me.

Thanks,
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
