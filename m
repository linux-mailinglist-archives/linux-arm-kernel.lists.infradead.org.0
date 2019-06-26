Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052DE571B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 21:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3iDrbbrWIQ0E78rqhQBC2AWrRyF2NEkzz6UKbe+s0U=; b=GIiifFNgDciq7A
	79XdftP3gMwjOVanx/w4Z8FCuSj6g+72j0oLI84SZXjdUFiisyHxfvF3/PBeo5RrMNWeIdrnCqixK
	yAIibs5/fZkuP+B3VPSdPfq4JPgvTyHXc3Tz9uoNoHaFCqRqRX/8KJcX7Aiw1MvtSdE2MW2jQMbwp
	6GH3PmwtML631CoanPPM78rM0ZJegOMvDc0z4B/KdoRp02vd7P/0NLsiJyMnelzTnZ64sEquoP3iN
	F3vSIQhdYA9Je+9RAm1tmyUkwBSSNfvD/7l7BXPeA2obgqDjxaNgofgCWW+xfTOZKszpPlW2ab1Qf
	So6ho0NLMidhitAILLnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgDXE-0008AU-2u; Wed, 26 Jun 2019 19:24:48 +0000
Received: from smtp02.smtpout.orange.fr ([80.12.242.124]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgDX0-00089r-EJ
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 19:24:36 +0000
Received: from belgarion ([86.210.207.101]) by mwinf5d56 with ME
 id VXQQ2000A2BnxPa03XQQkJ; Wed, 26 Jun 2019 21:24:29 +0200
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Wed, 26 Jun 2019 21:24:29 +0200
X-ME-IP: 86.210.207.101
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] pxa-dt for v5.3
References: <877e9ayg88.fsf@belgarion.home>
 <20190625115042.qrlpbjzehjhxilvh@localhost>
X-URL: http://belgarath.falguerolles.org/
Date: Wed, 26 Jun 2019 21:24:24 +0200
In-Reply-To: <20190625115042.qrlpbjzehjhxilvh@localhost> (Olof Johansson's
 message of "Tue, 25 Jun 2019 04:50:42 -0700")
Message-ID: <87y31ow3o7.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_122434_780078_3DAD717E 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robert.jarzmik[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: arm@kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Mack <zonque@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Olof Johansson <olof@lixom.net> writes:

> On Mon, Jun 24, 2019 at 08:45:43PM +0200, Robert Jarzmik wrote:
>> Hi Arnd, Kevin, and Olof,
>> 
>> This is the pxa devicetree pull request for 5.3. Can you please consider pulling ?
>> 
>> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
>> 
>>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
>> 
>> are available in the Git repository at:
>> 
>>   https://github.com/rjarzmik/linux.git tags/pxa-dt-5.3
>> 
>> for you to fetch changes up to bea8754e784ef894a7aaf1821a1e8b700cc70f32:
>> 
>>   ARM: dts: pxa300-raumfeld-speaker-one: add channel output mapping for STA320 (2019-06-24 11:35:02 +0200)
>
> Merged, thanks!
Thanks.
I hope you have also seen the other one of the split.

Cheers.

-- 
Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
