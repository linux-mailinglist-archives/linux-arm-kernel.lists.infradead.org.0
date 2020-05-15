Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 138421D4A2D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 11:58:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bNNBhC6FErBSyZB+XDbOfi6AgAGm7+wevoxyODIafqI=; b=LYMeqxLpBQLjHi
	yfGML260UAZAqdHo6o4wnYoQ6zR8FHgeFcceDoth1wD5s1CiXxxcAEfUxheDwy8Qmrl3aT6V4szJl
	qiGp5egYHIht2kcGCHkf1XnbW87Pkd5F04GD+L2jOHhRUKlqcxY7RBtKnzpW0zbJp1mwrVUKFExjY
	TbOa4f4KqvD2EYD/5WaK+l9PtyBeD5MD8Ec6eyDm5VEIiGKiXoAQxCAXtUAs+qsEJZXUC/EVEAN4l
	pPi2Dz3E+HcDy/6KMJ90SL7/7LYlDElJrOi+Kip0z9V/IZJya4xXBJLxbAlyAXkDE1ksvMKeCM7mF
	6hXowbDTxMfptaY953Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZX6l-0003hU-8A; Fri, 15 May 2020 09:58:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZX6d-0003gc-Sg
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 09:58:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F5B92F;
 Fri, 15 May 2020 02:58:14 -0700 (PDT)
Received: from bogus (unknown [10.37.12.6])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AAD183F71E;
 Fri, 15 May 2020 02:58:12 -0700 (PDT)
Date: Fri, 15 May 2020 10:58:02 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH v4 4/4] thermal: cpuidle: Register cpuidle cooling device
Message-ID: <20200515095751.GA25267@bogus>
References: <20200429103644.5492-1-daniel.lezcano@linaro.org>
 <20200429103644.5492-4-daniel.lezcano@linaro.org>
 <99b3bc79-f48a-3d51-a8ae-8b9ca4856d36@arm.com>
 <04b5da25-d591-b08a-e554-6e084d7ea908@linaro.org>
 <f3cee834-4946-10bd-a504-df6cf62d9e90@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f3cee834-4946-10bd-a504-df6cf62d9e90@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_025815_967268_F6756684 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:CPU IDLE TIME MANAGEMENT FRAMEWORK" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:CPUIDLE DRIVER - ARM PSCI" <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>, rui.zhang@intel.com,
 Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 08:00:01PM +0200, Daniel Lezcano wrote:
>
> Hi,
>
> On 29/04/2020 23:01, Daniel Lezcano wrote:
> > On 29/04/2020 22:02, Lukasz Luba wrote:
> >>
> >>
> >> On 4/29/20 11:36 AM, Daniel Lezcano wrote:
> >>> The cpuidle driver can be used as a cooling device by injecting idle
> >>> cycles. The DT binding for the idle state added an optional
> >>>
> >>> When the property is set, register the cpuidle driver with the idle
> >>> state node pointer as a cooling device. The thermal framework will do
> >>> the association automatically with the thermal zone via the
> >>> cooling-device defined in the device tree cooling-maps section.
> >>>
> >>> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> >>> ---
> >>> =A0 - V4:
> >>> =A0=A0=A0 - Do not check the return value as the function does no lon=
ger
> >>> return one
> >>> ---
> >
> > [ ... ]
> >
> >> Reviewed-by: Lukasz Luba <lukasz.luba@arm.com>
> >
> > Thanks Lukasz for the review.
> >
> > Rafael, as Lorenzo and Sudeep are not responsive, could you consider ack
> > this patch so I can merge the series through the thermal tree ?
>
> Gentle ping ... Sudeep, Lorenzo or Rafael ?
>

Sorry for the delay. I ignore this as it was generic and I was fine with
it. Didn't know you were waiting me, sorry for that.

FWIW:

Acked-by: Sudeep Holla <sudeep.holla@arm.com>

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
