Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F9F299EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 16:19:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gCIGzdx/Q7HBbFx9vZxouEC9yV7qS0yCFEIgkrYk/oc=; b=q9pPUqi6u95vr3
	t28lXPZRK6/wUNzennH50grPxz2ltvG3dmvBwrw3nVNuZ9fwVY+c1nT4bGHGHEemQ+MDvNdMBYRhG
	RlsJV0qahCDqQFBE0576TG6hSFNIw6Qu6YeG5oWhgx8tEMf8eONZzY6DtVHMGRnQFgS7foVwMtvG6
	c2rebBKEozzFRYQJ/dWoTD6hJQAvQm8/VzMFxYpQBrMMkVFTFLptJrlsCVENCmtwfkVRtqMkLs93f
	IuYVstBIS3UX7JsbSF5YtNmLS6f5YW/nwn3iYZGtHTQO404y9nnQYpgCSxKxGQkJRPZtR6q0tXuhn
	eOgLSGHaYH8cf5nu+RLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUB2l-00041g-I9; Fri, 24 May 2019 14:19:35 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUB2e-00040m-Bk
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 14:19:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0B02EA78;
 Fri, 24 May 2019 07:19:27 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7CB713F575;
 Fri, 24 May 2019 07:19:24 -0700 (PDT)
Date: Fri, 24 May 2019 15:19:19 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH RFC] firmware: arm_scmi: Allow for better protocol
 extensibility
Message-ID: <20190524141918.GA4408@e107155-lin>
References: <20190521200110.8309-1-f.fainelli@gmail.com>
 <f9403e7e-1b87-dc46-dfc5-62227c659e7c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f9403e7e-1b87-dc46-dfc5-62227c659e7c@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_071928_407327_84B8E668 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "open list:HARDWARE MONITORING" <linux-hwmon@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>,
 "open list:CPU FREQUENCY SCALING FRAMEWORK" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, Guenter Roeck <linux@roeck-us.net>,
 james.quinlan@broadcom.com, Sudeep Holla <sudeep.holla@arm.com>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 10:17:50AM -0700, Florian Fainelli wrote:
> On 5/21/19 1:01 PM, Florian Fainelli wrote:
> > The SCMI specific allows implementors to define their custom protocols
> > in the 0x80-0xFF space. The current scmi_handle structure requires us to
> > extend the structure with a set of operations and associated private
> > data in a way that is not quite scaling well.
> > 
> > Create a 255 bytes structure that contains an opaque pointer to a set of
> > operations and private data and create two helper functions to retrieve
> > those based on the protocol identifier. Several options were considered,
> > like using a linked list but since we could be performance sensitive in
> > some paths, using an array was faster and simpler.
> > 
> > Convert all call sites to use either scmi_protocol_get_ops() or
> > scmi_protocol_get_info().
> > 
> > Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> 
> On second thought, what I really need is private storage to the scmi_dev
> (the consumer side), and not so much the protocol (provider) side.
> Therefore using dev_{set,get}_drvadata() against scmi_device::dev should
> be working just fine, and if we are concerned about another part of the
> SCMI stack making use of that storage, we can always extend struct
> scmi_device with a private cookie.

Sorry, I haven't looked into the original patch in detail yet. But I
always have rejected to add support for just infrastructure to add
vendor specific protocols both internally @ARM and to some private
emails I have received. I prefer to merge it with the first reference
vendor specific protocol so that the users of this infrastructure gets
a fair idea on how to use the same.

I will look at the RFC next week.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
