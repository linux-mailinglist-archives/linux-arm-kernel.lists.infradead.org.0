Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A5B13BCA1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 10:43:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l+BvC1wrgIU+4hL6vOkt++tW+RE8M/faAx152bTxZDs=; b=d5qI/i6Uouw4iAgziGaE6xHa8
	6tBtuKnR8a0IaIavs1LCgsyzE+w/7oavAJ5wGKliof/KR0N40ZlYX+MBQmiaXmiAekSB4WpEv2G3u
	SfYUYiFbcIVxHBlQ7Kt0J8Jhju1ekHXA43n3vT7vyu8t9PUB0NgGfFjzZwy8cQf2oMPBq8f1S6xgV
	nTkHPtk3Bk30HPXQuJ4iIfNnf8zRCdffiz5aStKWI7ew7YabOsKZArOT8UuUfhKuSPb+ECiNAEQqG
	56uuzN+k7VlsD92svFyi3GBEsg/Ptbl72WPwH4qs1w/Qat6gZrZE+dX1KZOlhUxgAf6tPWSxQL/kV
	WoWehnbTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irfCR-0003K6-Pw; Wed, 15 Jan 2020 09:42:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irfCG-0003Ja-5n
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 09:42:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BCB1631B;
 Wed, 15 Jan 2020 01:42:40 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 145DB3F6C4;
 Wed, 15 Jan 2020 01:42:38 -0800 (PST)
Subject: Re: [PATCH v8 04/15] coresight: cti: Add sysfs trigger / channel
 programming API
To: Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
References: <20200113213149.25599-1-mike.leach@linaro.org>
 <20200113213149.25599-5-mike.leach@linaro.org>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <00236ff2-ea51-fa02-8286-b34376d55ed8@arm.com>
Date: Wed, 15 Jan 2020 09:42:37 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200113213149.25599-5-mike.leach@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_014244_263097_31E4D6FD 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org, corbet@lwn.net,
 linux-arm-msm@vger.kernel.org, liviu.dudau@arm.com, agross@kernel.org,
 robh+dt@kernel.org, maxime@cerno.tech, sudeep.holla@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/01/2020 21:31, Mike Leach wrote:
> Adds a user API to allow programming of CTI by trigger ID and
> channel number. This will take the channel and trigger ID supplied
> by the user and program the appropriate register values.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
