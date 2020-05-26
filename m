Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0DC1E245C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 16:45:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f4X4SpF6KVX6dw1jo3PHdyw5w2JFLdXIWd17WofjuKA=; b=XQuOnqCVN3JJ36GqscdJClzzZ
	j5xgjPNGzHpD5IZ4v7wJcHcYcPj4FKylraPzoTiVk5ZB5gU13S+6pEy0A08o5/7hJ59rrUKdezTeh
	por+FOE5w9wkkIPwq4S389bdRuLtv5iRAGhT56tRtR/7X6ggkPy5ifvnOWvI4989nLscNid/lOUZF
	Qw5iF31YEw5wFoSNdjdxaiW8CWICwsnYxPNfqTUe1ms6ryD6FotPXHu2JL8V/0TfBPYyKOEmf5S8c
	JEMneIkNAJ0FAS7F/GbZRy9SgKvbpfXJT+0BYSl7KJlQYUW53yDzhnZw9I892NRoiWT0DsY1Gqasd
	XC/cjJEOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdap7-0002Z6-SW; Tue, 26 May 2020 14:44:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdaox-0002YC-48
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 14:44:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 22F471FB;
 Tue, 26 May 2020 07:44:45 -0700 (PDT)
Received: from [10.37.8.5] (unknown [10.37.8.5])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DA3613F305;
 Tue, 26 May 2020 07:44:43 -0700 (PDT)
Subject: Re: [PATCH v4 1/5] coresight: Fix comment in main header file.
To: mike.leach@linaro.org, linux-arm-kernel@lists.infradead.org,
 coresight@lists.linaro.org, mathieu.poirier@linaro.org
References: <20200526104642.9526-1-mike.leach@linaro.org>
 <20200526104642.9526-2-mike.leach@linaro.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <9e55a8e1-27aa-b88b-d833-49b1a479c3d1@arm.com>
Date: Tue, 26 May 2020 15:49:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200526104642.9526-2-mike.leach@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_074447_207313_C007C40E 
X-CRM114-Status: GOOD (  11.11  )
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
Cc: acme@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/26/2020 11:46 AM, Mike Leach wrote:
> Comment for an elemnt in the coresight_device structure appears to have
> been corrupted & makes no sense. Fix this before making further changes.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
