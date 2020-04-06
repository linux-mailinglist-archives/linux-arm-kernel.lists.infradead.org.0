Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F0119F7E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 16:26:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S26epmJ/n/IDhN7arPlbNuXsLR9v16viNvTmKkItjnU=; b=BrTDqlMvuxPy0Ylxhkb3sOmKl
	fcCnzM+/X10g5DQ3i7OwjiSPOWI3Rn4mKEDcBWWfPP58hhUuHgAT5B3Q3FCVzCtuK9A3nb491t3oE
	6MN4xB7J/C53X93aCQHWqGSKT824uoyMlmcxmddqNYbwck9H8CJjdYbL8sVeX3h2poiTiaNbjALwm
	Uyqq/wsbXxLatUrg8ezXwBSHq38BOZzjmfgjQjbIlFKXQgFKfe/sKRrre9iSq6M5K8kJWflub5bp3
	UIUlQSxyoZ8RUa8U8Zc8++oLpYvRep+NY77dPypym53G4yhP1kv6CB9JH+5hmuMy7xvJNEtOdt3J+
	/hYbKW5MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLShS-0005WB-9B; Mon, 06 Apr 2020 14:26:06 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLShJ-0005Us-Vf
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 14:25:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586183157; x=1617719157;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=UXzCuqx6XZgdIt0F7s7TA6ZJVX4IiMnBpMRn1/zp2lI=;
 b=gZ+/1oD+kZiG1MpupM+aO17/ul+fScOdDhSdKhSy5JJS3yNv2wZ7Wuz2
 132AuZU8SHTWGiTh92uU9IHG9yWRvlPoaxG9/VxXglrwZseU1lreP9Cm6
 xNnp8ulh61fwhQ2Q4RTFfjkGA8FPEsh+Uemb2VMhbIRXAdFjeZD0Iyqjy
 20xDuZyFAGLHeZ/1hGKYQN4lvep5yB8fjKuRQvzaeycHINAuIkuH9yGLk
 vFb4fO/nlENvxkXPdUzeYF+IRTYfuh4jWtEZoHN6qaJF0yrDEE5bE/hAu
 BH3yxudEJ3NmuUClgtF6b6apmjU03808M0mMZA1bYiy9RzungU/FCabO2 g==;
IronPort-SDR: H5syFWIQd+kmpgpKXjZxdOQf82lfiky2bmuHF7wNpAAIWVIBlb8ry5JVAOMq8BMW8jGJaUfab2
 OrW+cRC7l7TKi15Mx2PnZ1eOpoQCakci6MnXG+wnowIxWCcQdIhgnqb+/XWJZ7zfa1MWlB/H32
 LRBV4tPMh7xjsjQ8zHozNVZMBey22a0WKQvgYzaGsG2ELGLvcLadjtO42cdFpWVa5C4T6V8bZS
 CfXObXN/FT6jhyT9z1nyujtZiJjZVkiSp4cim4QjP3wxJmghANoWS6VY7ioJ4AXFIG5BFwSnGc
 VZs=
X-IronPort-AV: E=Sophos;i="5.72,351,1580799600"; d="scan'208";a="71358618"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Apr 2020 07:25:54 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 6 Apr 2020 07:26:05 -0700
Received: from [10.205.29.84] (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 6 Apr 2020 07:25:59 -0700
Subject: Re: [RFC PATCH 0/3] net: macb: Wake-on-Lan magic packet fixes
To: Harini Katakam <harinik@xilinx.com>
References: <cover.1585917191.git.nicolas.ferre@microchip.com>
 <CAFcVECLkPxN0nk=jr9AxJoV3i1jHBoY4s3yeodHDO2uOZspQPg@mail.gmail.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
Message-ID: <9e2ab6cd-526d-f1b5-4bd0-4a8f80d9dd8f@microchip.com>
Date: Mon, 6 Apr 2020 16:25:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAFcVECLkPxN0nk=jr9AxJoV3i1jHBoY4s3yeodHDO2uOZspQPg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_072558_057077_A75884AB 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rafal Ozieblo <rafalo@cadence.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, sergio.prado@e-labworks.com,
 linux@armlinux.org.uk, antoine.tenart@bootlin.com, netdev@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org, Claudiu
 Beznea <claudiu.beznea@microchip.com>, Andrew Lunn <andrew@lunn.ch>,
 Harini Katakam <harini.katakam@xilinx.com>, "David S.
 Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Harini,

On 03/04/2020 at 15:36, Harini Katakam wrote:
> Hi Nicolas,
> 
> On Fri, Apr 3, 2020 at 6:45 PM <nicolas.ferre@microchip.com> wrote:
>>
>> From: Nicolas Ferre <nicolas.ferre@microchip.com>
>>
>> Hi,
>> Here are some of my early patches in order to fix WoL magic-packet on the
>> current macb driver.
>> Addition of this feature to GEM types of IPs is yet to come. I would like to
>> have your feedback on these little patches first so that I can continue
>> investigating the addition of GEM WoL magic-packet.
>>
>> Harini, I know that you have patches for GEM in order to integrate WoL ARP
>> mode [1]. I'll try to integrate some of your work but would need that this feature
>> is better integrated in current code. For instance, the choice of "magic
>> packet" or "ARP" should be done by ethtool options and DT properties. For
>> matching with mainline users, MACB and GEM code must co-exist.
> 
> Agree. I'll try to test this series and get back to you next week.
> 
>> The use of dumb buffers for RX seems also fairly platform specific and we would
>> need to think more about it.
> 
> I know that the IP versions from r1p10 have a mechanism to disable DMA queues
> (bit 0 of the queue pointer register) which is cleaner. But for
> earlier IP versions,

Which IP name are you referring to? GEM, GEM-GXL? What is the value of 
register 0xFC then?

> I remember discussing with Cadence and there is no way to keep RX
> enabled for WOL
> with RX DMA disabled. I'm afraid that means there should be a bare
> minimum memory
> region with a dummy descriptor if you do not want to process the
> packets. That memory
> should also be accessible while the rest of the system is powered
> down. Please let me

Very interesting information Harini, thanks a lot for having shared it.

My GEM IP has 0xFC at value: 0x00020203. But I don't see a way to keep 
DMA queues disabled by using the famous bit that you mention above.

> know if you think of any other solution.

I'm trying all this right now. I keep you posted.

Thanks and best regards,
   Nicolas


-- 
Nicolas Ferre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
