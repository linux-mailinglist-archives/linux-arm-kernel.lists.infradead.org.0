Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCBB1EDFC7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 10:28:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mf6iQnaDW/9g5f7tkpMCGp3fi1sOqHCCz7J2SIRsrL0=; b=mPVTIFf95vYT+y
	zS5IHA+Na5K5mKhTHOCgk1MGuIExZDUibnwjspb22ZTsnTNATB3ucTGHaimHiiRaWLFxU7sV6fnRc
	HgYZogqp+g5dIZaNQF425J/i0E6yoWN2krL0h9AgaI04nuznMsWE6n1wRhYYJk31uxjfQ2xCQxDDu
	aTiUlli5HY1OQgIQMEaVV5SsC+aYEH1QYak83gvcYGaZ+cqxQEwPXZCBx58WYKRdnPBqIx4SSolKJ
	ryJTVorhH4iBgzeqbWJvqu6EIx2fPd1f3BSiKFMlcIUEKpYagv+jNAfhNoVEYxdaEAdx8nsQ2gZXG
	QiDiNWZpJsUxi7FXRsiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jglEn-0006FW-Hj; Thu, 04 Jun 2020 08:28:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jglEg-0006F9-IK
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 08:28:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 581B331B;
 Thu,  4 Jun 2020 01:28:25 -0700 (PDT)
Received: from bogus (unknown [10.37.12.7])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0A2E43F305;
 Thu,  4 Jun 2020 01:28:22 -0700 (PDT)
Date: Thu, 4 Jun 2020 09:28:14 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
Message-ID: <20200604082814.GA8814@bogus>
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <20200528192005.GA494874@bogus>
 <20200529040758.kneg2j4n3gxh2rfv@vireshk-i7>
 <20200603180435.GB23722@bogus> <20200603181743.GC23722@bogus>
 <20200604055903.ycvu6qfnlwgkh52a@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604055903.ycvu6qfnlwgkh52a@vireshk-i7>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_012826_653015_D7CC7348 
X-CRM114-Status: GOOD (  10.41  )
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
Cc: Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 11:29:03AM +0530, Viresh Kumar wrote:
> On 03-06-20, 19:17, Sudeep Holla wrote:
> > I just realised that we have the timing info in the traces and you will
> > observe the sensor readings take something in order of 100us to 500-600us
> > or even more based on which sensor is being read. While we have 100us
> > timeout for cpufreq opp set.
>
> Which timeout from opp core are you talking about ?

The one we have in SCMI itself to meet the fast_switch requirement.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
