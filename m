Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE54CFAC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:59:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SpMZthXsbH6IXwodK2hoSJT6VfaOXf86bNU+NTnp5Jw=; b=WfBk4DVDm5h0HF
	JY7qB4B8k7ikshMPg3t4JQa/wYaDd+jFYMkOuLygxJ5Tb+bHCTR370zN9IKCc/baLCvVGLiI5YhBT
	UKnNJpIzgVGP6SSgM8cv0/am4SIB7WrYAukEGSKc2R3LUA1GJ2wf368vAoLfWzNOCcSHB1AtjZuiR
	WZxII2ClbvqA5ep5F652L3//317EaFV2Bg1705kpZNasWPaTGBusW0Kd/CX3qA2jFENdc6IDQ1dYB
	kUr3zE5NJvvwqRWnN/xr0Cc6OOOlp/j7/RP4B1D14Fj4wUD162DYC2GpZ3iwO9bO0O+MYBwWT07wo
	R9z+d8+WQ5wVXqC6rpmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHp58-00087U-9R; Tue, 08 Oct 2019 12:59:14 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHp3d-0006qv-Dm
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:57:43 +0000
Received: from localhost (91.red-2-139-156.staticip.rima-tde.net
 [2.139.156.91]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id A0E1D240004;
 Tue,  8 Oct 2019 12:57:28 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Tomasz Maciej Nowak <tmn505@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2] arm64: dts: marvell: add ESPRESSObin variants
In-Reply-To: <87a7abtn0y.fsf@FE-laptop>
References: <20190603155354.3902-1-tmn505@gmail.com> <87a7abtn0y.fsf@FE-laptop>
Date: Tue, 08 Oct 2019 14:57:27 +0200
Message-ID: <877e5ftmx4.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_055741_616144_F1956336 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Konstantin Porotchkin <kostap@marvell.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Hi Tomasz Maciej Nowak,
>
>> This commit adds dts for different variants of ESPRESSObin board:
>>
>> ESPRESSObin with soldered eMMC,
>>
>> ESPRESSObin V7, compared to prior versions some passive elements changed
>> and ethernet ports labels positions have been reversed,
>>
>> ESPRESSObin V7 with soldered eMMC.
>>
>> Since most of elements are the same, one common dtsi is created and
>> referenced in each dts of particular variant.
>>
>> Signed-off-by: Tomasz Maciej Nowak <tmn505@gmail.com>
>
>
> Applied on mvebu/dt

I meant mvebu/dt64

>
> Sorry for the delay.
>
> Thanks,
>
> Gregory
-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
