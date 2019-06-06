Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA77374B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 15:00:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gZlNHrFNHx4Wl7vvcqg3LjYyBI5BjMROGq18sucXUl8=; b=oS2L5h9SKtwWchT5UDZl+XVpM
	SsSoEF1pEb5OJod2cXkKMY6+QIPy+vaGs1eCkGD2V0vO9BbZF6I3x2sJN+XSwyhVcN9bs0Ey4Hu58
	vbssme0L9Lm2w/rLyFrvsHrWqyceT6+Sm7w4XSGAMg+Jko/6bAmL6bSsTT17jQtJUtApFhtMDnNA7
	B2MMUXn88Sx5ahcOX14OnEC7GiOXDUgz8DIEdXuDqML3y4AR2J5k3Lz6PTIxCbR9pVlQtFM5mA6QD
	6Dza9q1HidANcdyIZyvBui3EJYrUTwYmBsjR0j/PpsezlxWWN8Jb7ynMiWVDz+xBbr8cJPAohYlMg
	ELKLdTqxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYrzs-0005LA-Mo; Thu, 06 Jun 2019 13:00:00 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYrzl-0005KD-8c
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 12:59:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BA5C6374;
 Thu,  6 Jun 2019 05:59:52 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CCAA53F5AF;
 Thu,  6 Jun 2019 05:59:51 -0700 (PDT)
Subject: Re: [PATCH v3 1/4] coresight: tmc-etr: Do not call smp_processor_id()
 from preemptible
To: mathieu.poirier@linaro.org
References: <1559235267-25232-1-git-send-email-suzuki.poulose@arm.com>
 <1559235267-25232-2-git-send-email-suzuki.poulose@arm.com>
 <20190603192902.GB20462@xps15>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <c4b3ff16-904b-1755-b622-33b2d38bcedf@arm.com>
Date: Thu, 6 Jun 2019 13:59:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190603192902.GB20462@xps15>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_055953_310601_46DCF19C 
X-CRM114-Status: GOOD (  15.03  )
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
Cc: coresight@lists.linaro.org, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 03/06/2019 20:29, Mathieu Poirier wrote:
> On Thu, May 30, 2019 at 05:54:24PM +0100, Suzuki K Poulose wrote:
>> Instead of using smp_processor_id() to figure out the node,
>> use the numa_node_id() for the current CPU node to avoid
>> splats like :
> 
> I was in the process of applying this set when I noticed the changelogs are
> still referring to numa_node_id(), which is not part of the solution anymore.
> Please address in all 4 patches.
> 

Sorry about the last minute messup. I will resend it.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
