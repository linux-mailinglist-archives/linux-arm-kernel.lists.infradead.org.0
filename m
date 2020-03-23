Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F291018F0C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 09:23:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVO/0HBwPsLEOaSkUrJfSJSx2jc704brXmWWfUsoxTg=; b=CmUSZQZFmWEarP
	+qqM/2HxRsiMu3eiLw7MtKnJ4g/i3ijHMCneY0qHgb/W6xR2z7Da7d36oyxb9gglnKhz1gKosnU8l
	OeCY9g11nAjlCmArMjVOOwEApysY56fOEtf3oa1K4SL4a6TxQLDVsqs9boNDrGaEfl58Knx/cKlQC
	PLuyJPDGXIDpBSeJ2EkyisOedj6iptCJ3oYkOMeX7iQUuislx7SvxoLvdj+AXSpXwSe6tjxgral0F
	hIm7yARPC6pWK1iSkABq7k2YkR7SI8Wu0NMm+AfO9SrQwla40igEaq4en8e55C/6LzAnb5x8Feodd
	F+hb4E/Bd8hatanNdhCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGIMY-0003Dw-37; Mon, 23 Mar 2020 08:23:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGIMO-0003DD-UN
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 08:23:02 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1jGIMM-000414-26; Mon, 23 Mar 2020 09:22:58 +0100
Subject: Re: [PATCH] ARM: imx: build v7_cpu_resume() unconditionally
To: Sasha Levin <sashal@kernel.org>
References: <20200116141849.73955-1-r.czerwinski@pengutronix.de>
 <20200322185022.GA82867@workstation.tuxnet> <20200322202224.GQ4189@sasha-vm>
 <20200322230951.GA75142@workstation.tuxnet>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <f04cefeb-b94a-4c2a-7a3d-04db80d35934@pengutronix.de>
Date: Mon, 23 Mar 2020 09:22:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200322230951.GA75142@workstation.tuxnet>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_012300_980597_DB8B1022 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Clemens Gruber <clemens.gruber@pqgruber.com>,
 Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Clemens

On 3/23/20 12:09 AM, Clemens Gruber wrote:
>> Is this a problem with Linus's tree as well?
> 
> Yes, it affects Linus's tree and linux-stable.
> 
> Reverting 512a928aff in mainline (7199cb65bb in linux-stable) fixes the
> build error for us.

Thanks for the report and sorry for the inconvenience.
I just sent out a patch[1] to fix the linker error.

[1]: https://lore.kernel.org/linux-arm-kernel/20200323081933.31497-1-a.fatoum@pengutronix.de/T/#u

Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
