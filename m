Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDC318F62E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 14:51:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Yd0z82bDUfcez0Jdl/hSPSb+kfbY65rg9WXq0iH3buI=; b=RCmNnDEA61czJbM55tS7jILCP
	Q2Ip0kcgHBXhNQDCHjpDNl8HP9cNWVpVuDrcfaclVuUpuh8KKXKhOKFyp+i+68ZIu+SUlSd9fiC+m
	fC0bE2fd+wXvmx4pBbU/66CKEUGIZg1fojQ92Inz0ovN4oeIvdTxDn1/SC7LdiJAESkbPPjYnAzNn
	/iDzE96t5USUYFPFmUACbPZotxPR/Jnp70lu7OWcSG7umUqYof1PCBaVz+9CteKmQ7/eTZKBdTbjL
	yuvjxCBu2/MobGN7zeOQKHbmKfwMM3k2pJytbZsw8DXFj3yZMAp46he4bpSfFDsY/WfIPrd7oRU5O
	q6ITXYSQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGNTf-0001XZ-AI; Mon, 23 Mar 2020 13:50:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGNTT-0001W4-UK; Mon, 23 Mar 2020 13:50:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C7DB61FB;
 Mon, 23 Mar 2020 06:50:35 -0700 (PDT)
Received: from [10.37.12.102] (unknown [10.37.12.102])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 855B83F52E;
 Mon, 23 Mar 2020 06:50:25 -0700 (PDT)
Subject: Re: [PATCH v5 5/5] drm/panfrost: Register devfreq cooling and attempt
 to add Energy Model
To: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
References: <20200318114548.19916-1-lukasz.luba@arm.com>
 <20200318114548.19916-6-lukasz.luba@arm.com> <20200318131114.GA1812@kevin>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <4bc1cf2f-e5ea-6265-d685-167d7a92da56@arm.com>
Date: Mon, 23 Mar 2020 13:50:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200318131114.GA1812@kevin>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_065040_024406_07E18A95 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 bjorn.andersson@linaro.org, bsegall@google.com, festevam@gmail.com,
 Morten.Rasmussen@arm.com, robh@kernel.org, amit.kucheria@verdurent.com,
 lorenzo.pieralisi@arm.com, khilman@kernel.org, agross@kernel.org,
 daniel.lezcano@linaro.org, steven.price@arm.com, cw00.choi@samsung.com,
 mingo@redhat.com, linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de,
 orjan.eide@arm.com, daniel@ffwll.ch, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie, javi.merino@arm.com,
 tomeu.vizoso@collabora.com, qperret@google.com, sboyd@kernel.org,
 mka@chromium.org, rdunlap@infradead.org, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, b.zolnierkie@samsung.com, kernel@pengutronix.de,
 sudeep.holla@arm.com, patrick.bellasi@matbug.net, shawnguo@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/18/20 1:11 PM, Alyssa Rosenzweig wrote:
> Reviewed-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>

Thank you Alyssa for the review.

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
