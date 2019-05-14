Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFC11C719
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 12:38:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmJTKwYAG4jxdmCckaUlEmLEnNlNkJoBv09CyuJoB04=; b=TYbhRd8a2wHyzq
	kZkbwIUGPIZIqs7QG40qUIj8PrIpn4x80pu/wPx9iRMrSvOfycEjMRgn0G0VuNJIzAkWvDn92liNA
	zbUrpSgPUjBjzYmywEYxV/AdRRouPz0Gj59/pE3IpfSHRzYwEutFkUlC3r4itj/DuX/WhLjEm7uiR
	69nICz+tHm3aZiXsrRkV5tlJTi0jS9BCgg5ozY7drrubFqYZjj7lkBYyL8/VszpGhqzjY+AtxODT/
	+Z4iJecSobBJHjRfzho2iuDzOpVWb6JBeqQBl70oEDtu85b7/gqVa9kia59TTGRK37U7MdxKSw8hj
	fMw2iMzw3XxofZluLzag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQUpC-0005NS-Cz; Tue, 14 May 2019 10:38:22 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQUp3-0005N1-L4
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 10:38:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A172374;
 Tue, 14 May 2019 03:38:13 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B61CD3F703;
 Tue, 14 May 2019 03:38:11 -0700 (PDT)
Date: Tue, 14 May 2019 11:38:02 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v5 2/2] hwmon: scmi: Scale values to target desired HWMON
 units
Message-ID: <20190514103802.GA21306@e107155-lin>
References: <20190508184635.5054-1-f.fainelli@gmail.com>
 <20190508184635.5054-3-f.fainelli@gmail.com>
 <20190508211017.GA29998@roeck-us.net>
 <1212a00f-76f8-8f21-d19a-a5681c3668a0@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1212a00f-76f8-8f21-d19a-a5681c3668a0@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_033813_690538_CD8CF114 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Guenter Roeck <linux@roeck-us.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 11:10:28AM -0700, Florian Fainelli wrote:
> On 5/8/19 2:10 PM, Guenter Roeck wrote:
> > On Wed, May 08, 2019 at 11:46:35AM -0700, Florian Fainelli wrote:
> >> If the SCMI firmware implementation is reporting values in a scale that
> >> is different from the HWMON units, we need to scale up or down the value
> >> according to how far appart they are.
> >>
> >> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> > 
> > Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> > 
> > Question is which tree this series should go through. I am fine with arm.
> 
> Fine with me as well, Sudeep are you picking up these patches or should
> they go through HWMON and Guenter?

Sure I can pick and send it to arm-soc for v5.3

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
