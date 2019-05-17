Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8CC21D04
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 20:03:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OcNOOcm6fFjsJrB6QTanQjTaETGTd6at2s8trsJdUdA=; b=RKFbIAA3/OJXf//AYu+ukBudB
	CF6WGrTBd6AYoOASnT1WIO/9izLNgmKM1jWtyQGrjl9bSn+y26Y8lthJ3SvdhljcO3FnPkJhXvlNx
	fmg8T+dHBI8EeGs8ZU0AyFY7X8bV4qBE1Xeg0PilodIJ0srMbAXcW16QjYNJPS8q2TuFStLXjDwSX
	iZ0bOm/zvYaYEoimsezGJHuVhPy7sbkI9WAQd2+lV8k6ISdrRtL4/CP15hiCPqIwwEhLzXR9ebiL7
	xdlv97nOzW2DKfM8Vk8BxebJkkUlVgZw6nN3KUyhUbv54GtsQikAzvxWmnb6544DYszI1F1bg74nS
	apuefZNgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRhCh-0006W4-P6; Fri, 17 May 2019 18:03:35 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRhCZ-0006VO-UQ
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 18:03:29 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 5E15B60C72; Fri, 17 May 2019 18:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558116206;
 bh=IbnAGN0DIJaVE08Oe3a19rRp+gftn7Ija/z3WCGwkO0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NDgI8+6CYqnF8diJemuqlcWXw/rstDhr6EhAJpNjtQViz20zqZfb/HRBA409/ptji
 BK9U78AP6MF65458eeJ2yCLPVSqmi/icnfLP3rfEaBTRLoB+toygC420X2ylZmKUIn
 quFWas97jXQ2y5CfxNmqUzpL9byhGtv9hgbqwL2Y=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id CA38F60709;
 Fri, 17 May 2019 18:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558116205;
 bh=IbnAGN0DIJaVE08Oe3a19rRp+gftn7Ija/z3WCGwkO0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=FQuv3ev3EX9qWa2YCFlsJLLzSG2NzmK3M4Bqbi5/hsQe6ONxTcLSituDiE5n7nNb0
 n/d7lWdlwjS0dTCJla9dRqo+2otFs7mN92+PUVBuYjQgl5IwvVKNOZ40uE2tHJkPnH
 PjGQOez5db7UBgcDNXJXLUC8eahmjBe6eHaz1h1Y=
MIME-Version: 1.0
Date: Fri, 17 May 2019 11:03:25 -0700
From: Sodagudi Prasad <psodagud@codeaurora.org>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: Re: [PATCH] kernel/panic: Use SYSTEM_RESET2 command for warm reset
In-Reply-To: <20190516182949.GD10985@darkstar.musicnaut.iki.fi>
References: <ce0b66f5d00e760f87ddeeacbc40b956@codeaurora.org>
 <1557366432-352469-1-git-send-email-psodagud@codeaurora.org>
 <20190516182949.GD10985@darkstar.musicnaut.iki.fi>
Message-ID: <caa4ee48af33b320d8a1bcdbb974ada8@codeaurora.org>
X-Sender: psodagud@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_110328_001486_289695A6 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, julien.thierry@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 sudeep.holla@arm.com, akpm@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-05-16 11:29, Aaro Koskinen wrote:
> Hi,
> 
> On Wed, May 08, 2019 at 06:47:12PM -0700, Prasad Sodagudi wrote:
>> Some platforms may need warm reboot support when kernel crashed
>> for post mortem analysis instead of cold reboot. So use config
>> CONFIG_WARM_REBOOT_ON_PANIC and SYSTEM_RESET2 psci command
>> support for warm reset.
> 
> Please see commit b287a25a7148 - you can now use kernel command
> line option reboot=panic_warm to get this.

Thanks Aaro. Yes. I can use this option.  Thanks Sudeep and all for 
discussing.

> 
> A.

-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora 
Forum,
Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
