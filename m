Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D99321CDB99
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 15:45:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RaNd4jgS4mC5qL8k3MhsN/QSHknx6yAcxkBJr27CH88=; b=k4rxCC23xkHZDd
	jsjF2D70B0/vVXfEYPpD1ykbprrIMXyzgGy2gH+judK1ERTZRtwilYsza4hrZwFz9sj8K3sy8asZE
	3/ElFdnyS9eM7aMYn8+04oCZA0V2ZeKuo8Uau6a+E/cTNuMahOx1HFdg45PlWipwprtGXLC/Ft24u
	/BdbJg9RYep+HjP8mBMy4moJiSijFnYPn+WpmpEo9gkjrQ75nlpS7DXv/HGbxalmE1s8fBo8I119Y
	9vxy+Sb+ohh2DrSBE17a8PF4bReuAY1gvDMP2p4FroXARvhuP4YmOC60Lp/DWzn5VjwglT1asXNbq
	Z9UZpw0U8UAoDEXrfFZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY8jn-00022O-0M; Mon, 11 May 2020 13:44:55 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY8jf-00021g-J0
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 13:44:48 +0000
Received: by mail-wr1-x444.google.com with SMTP id k1so11046699wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 06:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hpFE9CUsmF5QuTw9fCnRsO/HIcrfLKfZVWo5gx0AO38=;
 b=m0ElpsF0pRp5TglEUDXatsddqa+Pb36Mj0Ppynh2iPIzzZz0EgUlzEtzkWyZeAg3vB
 uBs8o5cgAfl1IJaebtKgziRr73o57iHO5kRqVLTfaRC9X/zbKfqE0X7WUY3tyIHVtzsE
 vFx9MY8AD+wURjQHSKOL4msglFChmdK1OF0GOTXEyOPCB+/qCeUlNUl3WRSD8mjpJY46
 hSQALRhOTEhqYS5oyb8QdeT0A4PD7fA1adHgJP7v3DqW9SxYfGkzAgGWjuOFXLrwzjzb
 N6qFsfSm3T/OSIzW2mqIAKD2F9YJwb6IdZnQgigtlyOUiCH7V2syhUCmrF3QsgphlAHW
 IDRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hpFE9CUsmF5QuTw9fCnRsO/HIcrfLKfZVWo5gx0AO38=;
 b=qQ5K2wljgE7uFSIUuMO9nYbJZIKl22fLk6Lkl7rGAQLYOXVg8ImgRLP54c2WxPicmc
 7H0fH03msH3Lg4017vKTyGuxVMrErMb9kgJ3JbTAJOVw0HleIaxEgkBihqYHyHbrMG0E
 YbR/ITsLIEtriTw8YaDIs8Ze0+vYGBVF8KruutYnW9KJCMLLgpIOfr6zVGxiYtY6lBXr
 DEg6Vt2c7G/jgYDzLqWjAf2s78htKdyU8iu375gPqOGtqaBoIas9bKgqR/skrkunYXi2
 FgvjglxQNXPhkjcb/jZ28LCwQcHbvCBcopqv4rS++GvNPwj4rAEV0xaV1a3+28I5Jsu3
 dW6Q==
X-Gm-Message-State: AGi0PuZLyN/4JBeNniMSNq4lRjLGneZvTAiJR22JsF3bYIznjDvkpe5S
 wUEq6Ct66oUy7HBDR/YmjL5UGA==
X-Google-Smtp-Source: APiQypLqeWUYDX3crs5ryt2QKIDbqRz/76rh57q7pYtJbxnpgj5n76IycVeDM/ojI700iAgxeVhE4Q==
X-Received: by 2002:adf:e28c:: with SMTP id v12mr21053389wri.157.1589204686152; 
 Mon, 11 May 2020 06:44:46 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id a15sm18111170wrw.56.2020.05.11.06.44.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 06:44:45 -0700 (PDT)
Date: Mon, 11 May 2020 14:44:41 +0100
From: Quentin Perret <qperret@google.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v7 05/15] PM / EM: remove em_register_perf_domain
Message-ID: <20200511134441.GB29112@google.com>
References: <20200511111912.3001-1-lukasz.luba@arm.com>
 <20200511111912.3001-6-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511111912.3001-6-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_064447_651285_45028225 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

On Monday 11 May 2020 at 12:19:02 (+0100), Lukasz Luba wrote:
> Remove old function em_register_perf_domain which is no longer needed.
> There is em_dev_register_perf_domain that covers old use cases and new as
> well.
> 
> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>

So, as mentioned in patch 03, I think this one could be squashed. But in
any case:

Acked-by: Quentin Perret <qperret@google.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
