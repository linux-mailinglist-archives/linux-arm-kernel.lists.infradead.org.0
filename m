Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5D7167979
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 10:35:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=isLhAq6rBdJFShjvUbHDrQis0eROoUou6OOefELS8aE=; b=VeS2FnzjDN9nq/BTzAg548tY3
	DJt21251g3pnvA4CbuUTnkE5V3Oq0Q7SF+j78mCFK7R6gs8jeWOJ3P5gd3j3GhpN1RqaSStrojixs
	s4nWT89N9m8+Xpeyqd9jQVSRvAvO1DwH3VOFELmm/z+K/u2K2J2mwSg61/RTDY0u2MY0QSIIx6nWb
	GiSVOIOFfqDNZdPB8LlcyWLK4qH/wwJGqd9m71hM0FmFvuF7D1Cr7w5eIKNXOnd0K6Jyd4Dkb16xa
	dpNzrA7mVBgRNrrSqjCME3YM9zAIOPzuLaxieGdW7Ost0sTWaEOSjUAGQkm6tzRn7DXb01pWYlSfd
	zRNVcjWxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j54i2-0003VM-9c; Fri, 21 Feb 2020 09:34:58 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j54hs-0003NE-Ao
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 09:34:50 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id C90A023D18;
 Fri, 21 Feb 2020 10:34:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1582277684;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Snop1RpX2rRCwWvJOlE+k0QPMCh/eFbh+WZC0GsS4uA=;
 b=KmGNlDaQ0PxdmjCYZnUUKedfMyyTcUd1gXD7yIRoHmxoX8UnGY0zb8lm/piMWP+VR63s+Q
 xDwYHFxwJHy9ZFrwvVkKljKvR6iTMLBWGm73MzpxQ7dvFMbKyX8tHOeOi7EYExgDLXEGCm
 m1eae/F2FAQ5vFJE9UpYBMB+T+cGQ+g=
MIME-Version: 1.0
Date: Fri, 21 Feb 2020 10:34:43 +0100
From: Michael Walle <michael@walle.cc>
To: Peng Fan <peng.fan@nxp.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/7] Revert "tty: serial: fsl_lpuart: drop
 EARLYCON_DECLARE"
In-Reply-To: <AM0PR04MB44817308EA80EBEDC0338E6D88120@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20200220174334.23322-1-michael@walle.cc>
 <AM0PR04MB44817308EA80EBEDC0338E6D88120@AM0PR04MB4481.eurprd04.prod.outlook.com>
Message-ID: <51db0e6ba10b4b32dab207e0df8ef0d8@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: C90A023D18
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 TAGGED_RCPT(0.00)[dt]; MIME_GOOD(-0.10)[text/plain];
 DKIM_SIGNED(0.00)[]; RCPT_COUNT_TWELVE(0.00)[13];
 NEURAL_HAM(-0.00)[-0.601]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_013448_532214_268F5866 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vabhav Sharma <vabhav.sharma@nxp.com>, linux-kernel@vger.kernel.org,
 Leo Li <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Yuan Yao <yao.yuan@nxp.com>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am 2020-02-21 02:30, schrieb Peng Fan:
>> Subject: [PATCH 1/7] Revert "tty: serial: fsl_lpuart: drop 
>> EARLYCON_DECLARE"
>> 
>> This reverts commit a659652f6169240a5818cb244b280c5a362ef5a4.
>> 
>> This broke the earlycon on LS1021A processors because the order of the
>> earlycon_setup() functions were changed. Before the commit the normal
>> lpuart32_early_console_setup() was called. After the commit the
>> lpuart32_imx_early_console_setup() is called instead.
> 
> How do you pass earlycon args to kernel?

earlycon=lpuart32,mmio32be,0x2950000,115200

please note that there are two possible declarations: (1) an OF/ACPI 
based
earlycon, eg just "earlycon" on the bootargs and (2) an elaborate one 
where
you can give the offset and access method yourself, eg. the one from 
above.

(1) will still work even with the EARLYCON_DECLARE() removed. But (2) 
will
search through all possible
   OF_DELARE_EARLYCON(lpuart32,..)
   EARLYCON_DECLARE(lpuart32,..)

and doesn't take the compatible into account. So which setup function is
actually called depends on (a) the order of the OF_DECLARE_EARLYCON() 
and
EARLYCON_DECLARE() statements and (b) on the compiler (thats just a
guess!). For me, the order in which it will actually end up in the
__earlycon_table is reversed, eg. the last one is called. So now that
you've removed the EARLYCON_DECLARE() the last one is the imx setup
function which will add the reg offset and doesn't work on LS1021A.

I've proposed a fix of the underlying problem [1]. But that fix also 
requires
the EARLYCON_DECLARE() in this driver.


-michael

[1] 
https://lore.kernel.org/linux-serial/20200220174607.24285-1-michael@walle.cc/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
