Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC6D11CBA4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 12:00:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=34mK4EmcOzNR/F9XUlol+lA7q5Zmatfv6RKrx/NNH5U=; b=Y8Nd7Re6wRVw3Ku3dyv30fKuE
	TVLeZ7WNFOD7/gJX676XefgxLqKtTi60sXW+L2MMnwzSFOGRU0neIIQLLUADHwFuyFg9XS2XSITZk
	mT2/ic2hd8QSB0DqwUCH+ygYqWcV7oVx/oU1OR7M5NGsUPnhunvjc7Nv4qb9w2IoPelVuBI0MaOIw
	2Yq9DNcP7AS8QlXweYOALto9K1aeC0hPmWmTJuQ6mQlFq4rtvqOZMgs8z3Y4UPy84h7ypv0zVs42B
	alPgB8IEbU+8vmqvBVp/Q5jcn3KIIDxB4/h3YTsEsQUe4XfZiTMK609nJUg9B/0ycrJD2UuUpLc53
	F31PlNalw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifMCN-0003gM-FI; Thu, 12 Dec 2019 10:59:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifMC9-0003d8-2G
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 10:59:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B83F5328;
 Thu, 12 Dec 2019 02:59:42 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 676103F718;
 Thu, 12 Dec 2019 02:59:41 -0800 (PST)
Subject: Re: [PATCH v6 03/15] coresight: cti: Add sysfs access to program
 function regs
To: Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org, 
 coresight@lists.linaro.org, devicetree@vger.kernel.org
References: <20191211230748.5037-1-mike.leach@linaro.org>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <faff0b65-0fb3-7ec8-f78b-5fe8d9036979@arm.com>
Date: Thu, 12 Dec 2019 10:59:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191211230748.5037-1-mike.leach@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_025945_153557_01E592BF 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org, liviu.dudau@arm.com,
 agross@kernel.org, robh+dt@kernel.org, sudeep.holla@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/12/2019 23:07, Mike Leach wrote:
> Adds in sysfs programming support for the CTI function register sets.
> Allows direct manipulation of channel / trigger association registers.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>


Thanks for the changes. This looks really nice

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
