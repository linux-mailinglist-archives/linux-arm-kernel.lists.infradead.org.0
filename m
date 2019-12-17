Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1DB122A5D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 12:42:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JmuGIGU4HoLVUbWosiUD4fosDd5fh/1tyFtSMjiimKw=; b=XBYQOaa/5qyaioNWyln0xWld8
	u/OR6QRXeALK+ij4nQ9WExiOiHNsgfG4wERFqEkBxjXeeK/GHJoYF4Fwr6hhBQ4+fMtkLgsWH9lVM
	xuGbt+XdjeqDEG6hQ76gePQ9VMmxELfxxeFi7cpBdPd99Vn1py8/vEWhQjGxMR6YX4yx/zRzlOZJt
	LDiTsKvl99r2KEaZMU73K3YaYH0ffUW/NQQga4RChOykvQYOSK6GnVhorcUTYmKOE/cRSdTxMF0LN
	ZcQxjgg0eS9ptFpcH72fmuH3EM+SbHdtf/gKrVUBKrAZbqBkQkZpbpgrlJ2Wg+yCu7yDjGlmWKCdq
	zdZpoCJUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihBF2-0008G7-3A; Tue, 17 Dec 2019 11:42:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihBEs-0008FU-4B
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 11:42:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D993D31B;
 Tue, 17 Dec 2019 03:42:03 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A31B53F6CF;
 Tue, 17 Dec 2019 03:42:02 -0800 (PST)
Subject: Re: [PATCH v6 05/15] dt-bindings: arm: Adds CoreSight CTI hardware
 definitions.
To: Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org, 
 coresight@lists.linaro.org, devicetree@vger.kernel.org
References: <20191211230813.5144-1-mike.leach@linaro.org>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <20600f80-0448-1145-ebf2-5a46690a2c09@arm.com>
Date: Tue, 17 Dec 2019 11:42:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191211230813.5144-1-mike.leach@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_034206_213613_4E0FCBFB 
X-CRM114-Status: UNSURE (   9.28  )
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org, liviu.dudau@arm.com,
 agross@kernel.org, robh+dt@kernel.org, sudeep.holla@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/12/2019 23:08, Mike Leach wrote:
> Adds new coresight-cti.yaml file describing the bindings required to define
> CTI in the device trees.
> 
> Adds an include file to dt-bindings/arm to define constants describing
> common signal functionality used in CoreSight and generic usage.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
