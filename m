Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 802191FCDAE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 14:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4PyKSi4/Qk1m8wa4UtlROD3KFeO9V1YzpkZ0oKtwCU=; b=dcypsCrOlVGPcs
	RpNiizbBMiWtIQckCvdr4lk+gOczhgO2SkT5SKNdKzDcmZQ2joht7D/JP3T4ZPfLo8cHY2CSkqSd9
	L3wRB6tE6jMLPt5/8dWrmPCxjzPdGuTavIzVufAXOSrNOMqPHUhOKShYK4SrI5bIfOU8hO87a4mqn
	Aq/fuyt27Yn/VVdVrSMN3DkuhyeGUX2QFXjsoKmQJekukKDpMsDEGiAae5q+DTPObUi3JBxy0/lVW
	wd8CGlc3ztmQJuqSAnEYG1iPV2Rt34fWoNZefmbCeshCbHOCWZBeK/Kqd/gwOSzYxVeSN5H8A+f25
	f7z87jCvWGIx3GsVWiOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlXUB-00058y-39; Wed, 17 Jun 2020 12:48:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlXU2-00058M-EI
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 12:48:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6E62E1042;
 Wed, 17 Jun 2020 05:48:01 -0700 (PDT)
Received: from bogus (unknown [10.37.12.89])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C35E93F6CF;
 Wed, 17 Jun 2020 05:47:59 -0700 (PDT)
Date: Wed, 17 Jun 2020 13:47:53 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Nicola Mazzucato <nicola.mazzucato@arm.com>, viresh.kumar@linaro.org
Subject: Re: [PATCH 2/2] cpufreq: arm_scmi: Set fast_switch_possible
 conditionally
Message-ID: <20200617124753.GA15211@bogus>
References: <20200617094332.8391-1-nicola.mazzucato@arm.com>
 <20200617094332.8391-2-nicola.mazzucato@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617094332.8391-2-nicola.mazzucato@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_054802_522196_6595653D 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pm@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>,
 lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 17, 2020 at 10:43:32AM +0100, Nicola Mazzucato wrote:
> Currently the fast_switch_possible flag is set unconditionally
> to true. Based on this, schedutil does not create a
> thread for frequency switching and would always use the
> fast switch path.
> However, if the platform does not support frequency
> fast switch, this may cause the governor to attempt an
> operation that is not supported by the platform.
>
> Fix this by correctly retrieve the fast_switch capability
> from the driver which knows if the platform can support
> this feature.
>

Hi Viresh,

This is first step towards avoiding polling based cpufreq set if firmware
has fast access registers that bypass normal mailbox based messaging.

If you happy with this and provide ack, I will take this along with scmi
changes via ARM SoC. Hope that is fine by you.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
