Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3511DBC10
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 19:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KMHk5CKR0whSxLSZDeYMxF3fepHjPs0swrBnFQwNeM0=; b=M+/jetfdK5zX6t
	8e39B8jBUfCCiSxdM267YZTJagXbk/d65Tu2G43TYxzrOevKaCzwMaeopt1qKGJdUdnTZowOdXBRg
	G96pJ5IT8WcIeHOnuFgYnsK8usxPsn9gq4a7MHB5P6/Qe9Rbcg3HDKALBoINBIjs5i3UwZOSPeA+c
	qEeU4iTT2hdpJl0kSK5k4n6hb4Z8FmUK02ewLFx8PMg0y2ifEeLqrABBUMzi/i9cDMECxfVfbcIxy
	/gJUSTHv8QVTbGazZV3Ss02b/xSMw2NoNcwWzJ1YNHd8TFvOLgbnH0PKFTOE5xON5hPCGG1kdgdH2
	a1njlIOGJHa1zmxHdkTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSwV-00030a-A8; Wed, 20 May 2020 17:55:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSvZ-0008Mf-4d
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 17:54:50 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6973E20823;
 Wed, 20 May 2020 17:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589997288;
 bh=tSusfwEtnTufQiTMMaZ15xY6HANjfc5RrrUfXAHd4bU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WzowI8+GqPbs73hL8wdgdaas6aoLB4lvYGw1rWSCDNTR9IC7pFclCVbjgGMKgBAh5
 uB8VqgZAdfEHAyY7/qcBGKGpkHNPWQ1Y/ve3p3PeYIQ8Vv10LRnYd9/A8NnP+uNj10
 z/N/0AOm7CzIOSU+1BrQmu7FJsG6OoT+c8Inlxnk=
From: Will Deacon <will@kernel.org>
To: Tuan Phan <tuanphan@os.amperecomputing.com>
Subject: Re: [PATCH v5] ACPI/IORT: Fix PMCG node single ID mapping handling
Date: Wed, 20 May 2020 18:54:38 +0100
Message-Id: <158999660879.126681.3746296394205258449.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1589994787-28637-1-git-send-email-tuanphan@os.amperecomputing.com>
References: <1589994787-28637-1-git-send-email-tuanphan@os.amperecomputing.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_105449_246477_F4762D55 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, catalin.marinas@arm.com,
 Sudeep Holla <sudeep.holla@arm.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Robin Murphy <robin.murphy@arm.com>,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 Hanjun Guo <guohanjun@huawei.com>, patches@amperecomputing.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 May 2020 10:13:07 -0700, Tuan Phan wrote:
> An IORT PMCG node can have no ID mapping if its overflow interrupt is
> wire based therefore the code that parses the PMCG node can not assume
> the node will always have a single mapping present at index 0.
> 
> Fix iort_get_id_mapping_index() by checking for an overflow interrupt
> and mapping count.
> 
> [...]

Applied to arm64 (for-next/acpi), thanks!

[1/1] ACPI/IORT: Fix PMCG node single ID mapping handling
      https://git.kernel.org/arm64/c/50c8ab8d9fbf

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
