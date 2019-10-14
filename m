Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2150D6205
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 14:08:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M9+I7k7wbHIoQ5gMmEXu0+b8nDvPZ0JeBrNMXtN+x7E=; b=idiy5m2qixyTyM
	Bgr6mCQ1GaxFaRzdP07Rq7ezic2NikkYTdnN5lxp1hP6R5cakq5YnSa5uCgA/CJHjHO16JO+aXx47
	sSDrpMF6hhExeNVKA5NQWxLUD3HJwIwYmlADvsmOl5dfltxXr3llMSaCG6yqe7LS9l4G5hVZPQFeT
	wvo2ME/jfuPmUyfsSTj6d2zyolwco0Ix1pwfGbl4WDK4b5CwZucduKEfUjhRbaadkRheJQs3MNfSv
	uzruuUNUgcQENZJOPi4ur3xnbeSWlgizeacq8jccOKm2JDudhRDnPNbztD8RkTE1gLyAeOKa+f9vK
	d4GJpkRrspQUZmBA+3bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJz8s-0006Gw-S7; Mon, 14 Oct 2019 12:08:02 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJz8k-0006GF-Cm
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 12:07:56 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id D3D205C2968;
 Mon, 14 Oct 2019 14:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1571054868;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fGSDKEgEW7BTtJ6OBIYcChc1m09kq3Pb++u8DDpss1k=;
 b=FUMbx870896ZdZPxjyq4W7LVBAjDqlqc5ejZBSky0FJ48m9JvSo2ZoIc1Q7KVs5Ixaf/p1
 L43fFVxgJllKRRQHCuas0Gl19yjPNzoMH/BblCVWfQUDuvKGmjq1UckXJ/GAXuMheVz9/c
 Ka7loV0ooM25DqLB7MgSwaz1fJwu1vs=
MIME-Version: 1.0
Date: Mon, 14 Oct 2019 14:07:48 +0200
From: Stefan Agner <stefan@agner.ch>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH] drivers: firmware: psci: use kernel restart handler
 functionality
In-Reply-To: <20191014100756.GA4028@bogus>
References: <20191012214735.1127009-1-stefan@agner.ch>
 <20191014100756.GA4028@bogus>
Message-ID: <312b244bfacca2f2b3f9b7d7e9462464@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_050754_585011_9B817356 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com,
 linux-kernel@vger.kernel.org, Stefan Agner <stefan.agner@toradex.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,


On 2019-10-14 12:07, Sudeep Holla wrote:
> On Sat, Oct 12, 2019 at 11:47:35PM +0200, Stefan Agner wrote:
>> From: Stefan Agner <stefan.agner@toradex.com>
>>
>> Use the kernels restart handler to register the PSCI system reset
>> capability. The restart handler use notifier chains along with
>> priorities. This allows to use restart handlers with higher priority
>> (in case available) while still supporting PSCI.
>>
>> Since the ARM handler had priority over the kernels restart handler
>> before this patch, use a slightly elevated priority of 160 to make
>> sure PSCI is used before most of the other handlers are called.
>>
> 
> There's an attempt(rather pull request[1]) to consolidate these into new
> system power/restart handler.

Oh thanks for the pointer! Interesting timing :-)

--
Stefan

> 
> --
> Regards,
> Sudeep
> 
> [1]
> https://lore.kernel.org/linux-arm-kernel/20191002131228.4085560-1-thierry.reding@gmail.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
