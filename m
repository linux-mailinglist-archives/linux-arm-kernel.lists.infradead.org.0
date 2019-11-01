Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D94ECA5C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 22:41:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJi8r1vTWh9i6+obDJptrY+6zI7mQ7v16y8Xj3QZ6fs=; b=mmkWPCDYyVGQQL
	Wfuu+fXkhZV8a/VvUsc73i0Q6VNzm2Hct7HbqGcrJ1cJjdDIsyMvtO2gCnvNKt6knvY/zO1i8Cl7V
	Q5+uDWFKpWJJ4kiE5oZG43veJr9JHMvo3JV64SGJj8355WFK39XjgjpcZorWlKlswsPGORStWiZA3
	tM7vZyjH9CDbJu327P+6bd+Wao8BefjAeWVds6HG+gxmq2M/xik29fhXnxgTwCHWP+TcnDNFRfCOI
	e1CAyUHxOGw4ZTP7ZpjP8Lh88MDvuN/pnFHRDDDu7vi0ypV8Z71EH458gbBwUIFaL2rmIY/KSm0xs
	Aj8pioISW9Tu5yEjZ79A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQefB-0005Gg-0A; Fri, 01 Nov 2019 21:40:57 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQef3-0005Fe-CI
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 21:40:50 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 656935C35E6;
 Fri,  1 Nov 2019 22:40:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1572644446;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UQ0Zt0OUXYdDbK7jxc5SzMQz2nIcNAjdmM4xf+Xj0xg=;
 b=fCkfsPf1F5hA9GJWCThZmjWj1+FNW5GZKdKpnKUwT5LWRVCdsb/CIVe7yEpxO2FlY037AN
 jxLcritbSksusfUPz6luuuHmdYErc8fluMSWjV5+KAhmXzV4X+QvdDwqrjtcoLQLXJtTpR
 NV5kDvWJBlXpbA9NcjAa+g8yI+ZPij0=
MIME-Version: 1.0
Date: Fri, 01 Nov 2019 22:40:46 +0100
From: Stefan Agner <stefan@agner.ch>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH] ARM: imx: use generic function to exit coherency
In-Reply-To: <20190416042337.GA4690@X250.skyworth_vap>
References: <3f58c55e48c28f41e92883e81c675b8478af6a5e.1554937960.git.stefan@agner.ch>
 <20190416042337.GA4690@X250.skyworth_vap>
Message-ID: <a99b439b8c8deb247f7ba2e6b598e808@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_144049_566690_B34077CF 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: s.hauer@pengutronix.de, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

On 2019-04-16 07:46, Shawn Guo wrote:
> On Thu, Apr 11, 2019 at 01:14:12AM +0200, Stefan Agner wrote:
>> The common ARM architecture code provides a generic function to exit
>> coherency called v7_exit_coherency_flush(). Replace the machine
>> specific implementation using the generic function.
>>
>> Tested on a i.MX 6Dual by hotplugging the secondary CPU under load
>> through sysfs several 1000 times.
>>
>> Tested-by: Stefan Agner <stefan@agner.ch>
>> Signed-off-by: Stefan Agner <stefan@agner.ch>
> 
> Applied, thanks.

It seems like this patch never made it upstream. Any specific reason?

--
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
