Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4C91ADD5A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 14:33:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AO+dtlFzSL30sZyOB1tRahMDP+/IkgbBcgdKBgdlFFI=; b=OlScfyQ4L/ynbUINcfjSuHewV
	W3Zfrg8VOsoVLi9ar//zR7wrW7WCNBxoMUIt6cYOnVPO16CuVegUGROE1XHTRZ6mSIyP7wrGNgcru
	1CM0GWEpV6XyPtcDMZ/OTx8MQQuHnI6t4p2trqmfPuHweOA5TbNbhEdOlxNwtz6pV/vgUm77xLLdr
	meREFJU402YRve9eyMlOPx+Sz4H1uP2ehE61f6DWep4Cckm2hg+crlq/+9BIgRO89saxsXQnQWKi4
	rQ6sczZYnHh3hRkWPoQwM9v6gzoJhLWk825Lm7OvLGmErqxRATwgQTzpGhs6wN1vLto60gbbDq7sC
	XhipQFDHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPQBQ-0002ew-Cw; Fri, 17 Apr 2020 12:33:24 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPQBI-0002do-D6
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 12:33:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587126796; x=1618662796;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=KoXqWzqYq/w2d+HZn8byhgpTiDLf6r5C2Ybuny75IaM=;
 b=G6iYSlNCotc/Dq/ZBVQlGXcBUbk6jMc+KuhvG3u1Ot6RIRuy6TUY3Omp
 A1OpnHoFCZwGPcoAOQb41oJEAUsOdjo6vbGVuU3WJvoh1Mflb76l+rzri
 thrAtJhGKXwuj2TsJZDcI3jDtkFtCWVyAfiXVm36ttsp6evN9R4T7RIEo
 hp44RrVF5ld+eDig+phqE8N2rDq2nFHWuOEnMweZMK0Z96wtMdxaDe4gl
 02iYiUkxI4Es7TPA+lDY8QZvK+C6Z2eWnXltQV88Ba0Ph05+vq/gFl6Le
 UcabkIweePMFiXHbe3+arDqs7BPrnPL4PmWxV/HFk4fz0FY3GebIfpUHj A==;
IronPort-SDR: gWqIczFLyA96iDGpH5JnlYbjBaosq3zeGhSGMYW1MpmLw6wBaKd/m5lzsnC5A5lxqflsMkBCcl
 iK3RqGgR+ZruiKh3p0qZfV+wvJTGOrxpeOi9iag8qESRYzg2gs/CxlvksC7ml19M6F1iGRXOpa
 nd+76P8dKowiZQG9+x5WTbDs5pggHwxnCKqxAVlqgnhIbOPr3JYqNOI0fYG9beh4qv/8dkYCkD
 COoII3vOvnVHdONyprH1PlugE6r8DyEwdj1OSQ1yPjbWyp62/+406rTyTtTNE1tsmvbEtnvmp8
 eNc=
X-IronPort-AV: E=Sophos;i="5.72,395,1580799600"; 
   d="scan'208";a="9534003"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Apr 2020 05:33:10 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 17 Apr 2020 05:33:10 -0700
Received: from [10.205.29.56] (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 17 Apr 2020 05:32:45 -0700
Subject: Re: [PATCH 1/5] net: macb: fix wakeup test in runtime suspend/resume
 routines
To: Harini Katakam <harinik@xilinx.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Claudiu Beznea <claudiu.beznea@microchip.com>
References: <cover.1587058078.git.nicolas.ferre@microchip.com>
 <eba7f3605d6dcad37f875b2584d519cd6cae9fd1.1587058078.git.nicolas.ferre@microchip.com>
 <MW2PR02MB37706E6E182F19F278B35707C9D80@MW2PR02MB3770.namprd02.prod.outlook.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
Message-ID: <ba239f44-b3e4-723e-ad3d-3fbb90e8bfc1@microchip.com>
Date: Fri, 17 Apr 2020 14:33:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <MW2PR02MB37706E6E182F19F278B35707C9D80@MW2PR02MB3770.namprd02.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_053316_529006_AE2C06DF 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "sergio.prado@e-labworks.com" <sergio.prado@e-labworks.com>,
 "pthombar@cadence.com" <pthombar@cadence.com>,
 "antoine.tenart@bootlin.com" <antoine.tenart@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 Michal Simek <michals@xilinx.com>, Rafal Ozieblo <rafalo@cadence.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/04/2020 at 20:26, Harini Katakam wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> Hi Nicolas,
> 
>> -----Original Message-----
>> From: nicolas.ferre@microchip.com [mailto:nicolas.ferre@microchip.com]
>> Sent: Thursday, April 16, 2020 11:14 PM
>> To: linux-arm-kernel@lists.infradead.org; netdev@vger.kernel.org; Claudiu
>> Beznea <claudiu.beznea@microchip.com>; Harini Katakam
>> <harinik@xilinx.com>
>> Cc: linux-kernel@vger.kernel.org; David S. Miller <davem@davemloft.net>;
>> Alexandre Belloni <alexandre.belloni@bootlin.com>; pthombar@cadence.com;
>> sergio.prado@e-labworks.com; antoine.tenart@bootlin.com;
>> f.fainelli@gmail.com; linux@armlinux.org.uk; andrew@lunn.ch; Michal Simek
>> <michals@xilinx.com>; Nicolas Ferre <nicolas.ferre@microchip.com>; Rafal
>> Ozieblo <rafalo@cadence.com>
>> Subject: [PATCH 1/5] net: macb: fix wakeup test in runtime suspend/resume
>> routines
>>
>> From: Nicolas Ferre <nicolas.ferre@microchip.com>
>>
>> Use the proper struct device pointer to check if the wakeup flag and wakeup
>> source are positioned.
>> Use the one passed by function call which is equivalent to &bp->dev-
>>> dev.parent.
>>
>> It's preventing the trigger of a spurious interrupt in case the Wake-on-Lan
>> feature is used.
> 
> Sorry I have some mail issues; meant to reply earlier.
> Tested patches 1, 2, 3 in this set and they work for me.

Brilliant! Thanks for the feedback.

> I'll try patch 4; it looks similar to what I'm using locally but I'll add whatever
> tie-off queue handling is required on top of your series, thanks.

Alright, I'll hold my v2 for a few days then. Thanks. Best regards,
   Nicolas


-- 
Nicolas Ferre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
