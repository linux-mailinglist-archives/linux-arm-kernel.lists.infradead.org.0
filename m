Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA683178C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 13:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQVvS5yzzheJEHHVK3A0NpxVEpJo914dzC66zo8S7FA=; b=I5PSAGAIH4peDr
	yMM6wPEyMryfOUD8LJJ1MeEtKS09DkS8U++Wixp2DLlsD8DQg9zxCcJyn0NBdx8K9SvuiWzXwTNmP
	fgEMyVX04ptlafuUsYWyvaZLyskpQ+okHPWlv7LVRzdOE+RRhSJDnQMnO0dP+34bjP3Ihw3sosFNR
	PeL52XN9IFqO6VZMsRY8voMPhjVmFaZnp96A5MQJj84JrLUFEnnFQml9YqY0uEzCKL5AAO8WNqAKi
	ybX6ISU6+4jZi60tBXMYWv05TuO1mw3vzX6pxYNDQX5V2PpUVxPKNDHmU/qAUZKDjc5oajU+0auSA
	O6rsPVpfpeWnL5RZciVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOL4a-0006XL-6M; Wed, 08 May 2019 11:49:20 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOL45-00063e-0w
 for linux-arm-kernel@bombadil.infradead.org; Wed, 08 May 2019 11:48:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pdO81VETnFTYDFzyuJTwpRlD6LHRt0F6UvCGdTldp/U=; b=NdGYAfFJ57g1jYxrSHAJOrew6
 OPzvUgmYkcBSZQ1JVB5I99VM6S6ynvVnaTZwu9RNNcSBwJ6YElPpG/kgJPeE/6kbNgg/oZzISD9Yo
 7gIGDcsUEdOvLU3KwdDSi5ND3AuWAe3zV12yiuaqkhTqqVhHvUgEpLxD4cd0PFhnB2XrWAjxRTBe2
 UGmi3rO2vK3U6d1VenD7PWZ1nZHMClqjQ6mRJvKE4ZpINyckNujFPRxVeXRaRIYeJPjGDfgoEWWG8
 7jPoUnt3d8Vwy4E+vL/+BZbPwI05i95pAy5TAbfTRe/cBqaa76PQiSNW85VgcuscGGP2X5ySXyEeZ
 03WFsCpbQ==;
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by merlin.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOKrB-0006On-Un
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 11:35:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B549341;
 Wed,  8 May 2019 04:35:27 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 10CC43FBF8;
 Wed,  8 May 2019 04:35:25 -0700 (PDT)
Date: Wed, 8 May 2019 12:35:19 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v3 0/2] hwmon: scmi: Scale values to target desired HWMON
 units
Message-ID: <20190508113452.GA27209@e107155-lin>
References: <20190507230917.21659-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507230917.21659-1-f.fainelli@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_073530_098268_B036E3DC 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
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
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 04:09:15PM -0700, Florian Fainelli wrote:
> Hi Sudeep, Guenter,
> 
> This patch series adds support for scaling SCMI sensor values read from
> firmware. Sudeep, let me know if you think we should be treating scale
> == 0 as a special value to preserve some firmware compatibility (not
> that this would be desired).

So are we providing raw values from sensors.c and handling conversion
in hwmon layer ? I was thinking of just providing converted values
to hwmon just in case if the scaling thing change in future with
newer versions of SCMI. I am fine either way, just trying to keep
hwmon-scmi simpler. I will check if scale = 0 needs to be treated as
special(I don't think so, but will read the spec)

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
