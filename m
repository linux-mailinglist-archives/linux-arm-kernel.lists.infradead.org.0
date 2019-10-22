Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D047DFEDB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 10:00:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WsOtYjqZf01vAg/N8fgnnsYW+6YH2ihd+bcuJreC57g=; b=Lyk2hs2T2Z9gqnWxF5u4fVcYm
	noL1f+mnVrCp0rd7esIwNCLJ7WpmokGC9a1K7rVgyjBBEiW+OR71nQo4nFI1qC9IXsScQklTI/D7+
	QWGn/Ipk0WQ+YWp7U9vyWZOHikbBHTin+ZOdMeJDTzI0hKoH35xmaiXkPtdLB6Mlc9U3wK2s1RDpl
	bs91RGBmo+eLNVuyppbIEmVDOeLY+15DG21HL4vey1y2fIkwjiSCQKLO4gWGuwUWAyncBHEAbLlpm
	IBqIQP6oMUMRI5U0GcQ55pUy6p1huWV8yUllYO2FDvvJ34CvfnfXtvppOngOMkhXlfbaVAPautIb0
	QjuLRigtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMp5g-0003FA-1c; Tue, 22 Oct 2019 08:00:28 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMp5Y-0003F0-Lz
 for linux-arm-kernel@bombadil.infradead.org; Tue, 22 Oct 2019 08:00:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6OnUfSvMgQl5U8P+vpl7qXD9q9O9fpmnQZPszIiY/ec=; b=Gby71Oaf0gpcYLWjwcWT51sGms
 FjJJ8TcBMqxZjAqi1jpM+4b+ogXMD/gDx8VULIFtFN4AAjH6Xe4TYWNTdlJeCNs8fJDgWN+JIlimH
 M5PHCXKtrf3cF2ALzcf9sjvZijRxuUXjmt3Nhk6t7eGkQkB+ktgNz7JuGpuiulGf0yBozGP19FjV4
 Ze4UuHH4/gIsQNSi2EqlvBT1PG4aKPyYO95GHAGpBEstlkToDiRcfbwFvpyJuOQegL20cKKrABljf
 70969FI3T0GFPwujre9YfAuMn0G82Ond+2vYTxYjyl1JaBS8GtuaqJiZNt42eJ9uE0dBjfdrVa0Kg
 GgCb95cQ==;
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMp5V-0000IH-9W
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 08:00:18 +0000
X-Originating-IP: 92.137.17.54
Received: from [192.168.10.51] (alyon-657-1-975-54.w92-137.abo.wanadoo.fr
 [92.137.17.54]) (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id BFCCE1BF203
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 07:59:43 +0000 (UTC)
Subject: Re: [PATCH 2/4] i2c: at91: implement i2c bus recovery
To: linux-arm-kernel@lists.infradead.org
References: <20191002144658.7718-1-kamel.bouhara@bootlin.com>
 <20191002144658.7718-3-kamel.bouhara@bootlin.com>
 <20191021202044.GB3607@kunai>
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
Message-ID: <724d3470-0561-1b3f-c826-bc16c74a8c0a@bootlin.com>
Date: Tue, 22 Oct 2019 09:59:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191021202044.GB3607@kunai>
Content-Language: en-US
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/10/2019 22:20, Wolfram Sang wrote:
> On Wed, Oct 02, 2019 at 04:46:56PM +0200, Kamel Bouhara wrote:
>> Implement i2c bus recovery when slaves devices might hold SDA low.
>> In this case re-assign SCL/SDA to gpios and issue 9 dummy clock pulses
>> until the slave release SDA.
>>
>> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> 
> Setting up the bus_recovery looks OK. However, I don't see any call to
> i2c_recover_bus(), so the bus_recovery is never used. Did you test this
> and see an effect?
> 
Indeed, I guess I mess it up while doing some git stuff, it should be 
called from at91_do_twi_transfer() when the transfer times out...
I actually tested it and verified the recovery is triggered by pulling 
the SCL to the ground ...

> Also, I think we should merge this patch "[PATCH v3] i2c: at91: Send bus
> clear command if SCL or SDA is down" into this series. The crucial thing
> for both is when to apply the recovery (at the beginning of a
> transfer!). The rest is "just" that some HW needs a bus_recovery_info
> for pinctrl/GPIO handling (from this patch), while other HW needs a
> bus_recovery_info with a custom recover_bus callback.
> 
> Opinions?
> 
I'm OK to merge the two series.

> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
Kamel Bouhara, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
