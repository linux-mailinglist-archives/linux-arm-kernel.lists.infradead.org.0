Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C711B5ECD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IvFhTE+QdqaIXBbw9weuIos4cSPxlVB0idkXT0hJ+pY=; b=mTKHvnlwDGn7p2
	Iu9Sa/IhTR5XZ+ZFsMbCQpyE9tuJ6mHXRYAQr7gn+icJQrAdcIP2YOjkrPTtM5KPvWvBaO9EE0hbF
	MPEIUsJoMNiMLSj4o+3kWz5GFQhIM8T6Lh+MjN9V/v26plu7bvwvJhdHSp8UfMA6goaWzZYuOdH84
	aM53vQm6Mn0Pvj7wMf8jfYUyi4Q2/u8AE5J4bUZw/qW76EBWPkGCGnX1ixwiuVoWQCxaIgv2GMUkO
	57seRowzUhat2pPl2vvpQ/i6NBJX4VFlcD7y9rBKq4MlM5JyzGtEi4LnY/SNDnMu4ykPvhS7a27/6
	SJNegvBfnzNkcWTwhXng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdXH-0006cu-6g; Thu, 23 Apr 2020 15:13:07 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdX8-0006bF-M4
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 15:13:00 +0000
Received: by mail-wm1-x341.google.com with SMTP id u16so6942557wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 08:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=UTeQeyto1m9v5SuM5s4edMyeNen1x/MgttTL6x5XBaI=;
 b=iw5PumrkE5tqjlzCsaMqI20CHiXkIq28cZxQKuxfCha3jMxVbtGl6SD5je3Nz0E4bV
 cqmjnLcMA2tqqU8+zI3/jNhwckZtEBWsz/83I1YLcPij7OdReAARgFEvOCsQfvSg2Hue
 CV+ej96HusLzaqZEYHGcQItEgti4huE+fBPOnCnmhtMwrLqS6xDGdq2YwK6kpsPcAgPK
 9/kZwf+6oOTKdSytvqn7NUBtlDJQzxJbbRstoM5Rn9Td82mHmVtiPUaOf9mlba3BR9X9
 WqihTMlRXZYAEeGiEiTm/kkDgR2NEXT+s/pOJLW5xVi4Jy50tC67SaICig75NffChPdy
 GP7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=UTeQeyto1m9v5SuM5s4edMyeNen1x/MgttTL6x5XBaI=;
 b=ToHRIUtN8wipvs5168S4b/dglg0HFpHaG83s7J/5AhblVO9+7OJFmkCSAHjnOZps2f
 xZPcDDA2UMEkQxe4UHhwUwj5jxNl3mEAXjEv8AxIKHKwl9q6vxZV2GrEuWm5hyR1Wbq3
 GxgmOJ5oKd/PiFC9nL6AaH5nxA1QuVi9Kiuv/CPIDAqGcfo4PcidVghpg26vE464te2f
 XXGCGEKZ2+lDuJ3q5qYvG6Z0phwBwLbO2zy4rUCfMiUC5Uqb/q+OIeLotO+xwf7GkzQh
 9+A1fGmyoMR46F6S+TEWD07/Y9xXpLTFOUfKAnukm0QkjEPkY0Z4Tm3Vk+zEv8MXvKXn
 WAjQ==
X-Gm-Message-State: AGi0PuaL9qRdX1EwahFtEUxRDCJN8Fc5gbCYMVcNUNkafoyuXsq5qZ/6
 bOVk5ym82Ald3wzJyktrqekOTQ==
X-Google-Smtp-Source: APiQypJEQibO8s5dDdPKk1vNMfNrO+DNEUITlcbdqfwFUErA7buEWgNGHo8cuZ6SAl0DQrcK5ToIww==
X-Received: by 2002:a1c:1d84:: with SMTP id d126mr4597986wmd.119.1587654776840; 
 Thu, 23 Apr 2020 08:12:56 -0700 (PDT)
Received: from linaro.org ([37.167.216.250])
 by smtp.gmail.com with ESMTPSA id l16sm4161477wrp.91.2020.04.23.08.12.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 08:12:56 -0700 (PDT)
Date: Thu, 23 Apr 2020 17:12:50 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v6 04/10] PM / EM: add support for other devices than
 CPUs in Energy Model
Message-ID: <20200423151250.GB65632@linaro.org>
References: <20200410084210.24932-1-lukasz.luba@arm.com>
 <20200410084210.24932-5-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410084210.24932-5-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_081259_245160_1731C25E 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

On Fri, Apr 10, 2020 at 09:42:04AM +0100, Lukasz Luba wrote:
> Add support for other devices that CPUs. The registration function
> does not require a valid cpumask pointer and is ready to handle new
> devices. Some of the internal structures has been reorganized in order to
> keep consistent view (like removing per_cpu pd pointers). To track usage
> of the Energy Model structures, they are protected with kref.

Why not add the energy model structure in the struct device directly?

For instance for the em_cpu_get() function, the cpu id allows to retrieve the
cpu device and then from there, the energy model instead of browsing another
list. The em_device life cycle will be tied to the struct device.

Then when the struct device and the em_device are connected, add the debugfs
with a struct device list for those which are energy aware, so you end up with
a structure:

struct em_device {
	struct device *dev;
	struct list_head em_dev_list;
};

(a global single dentry for debugfs to do a recursive delete is enough).

Locks when inspecting and add/removal called from the struct device release
function. So no need of an extra refcounting.

Does it make sense?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
