Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB71C1E903D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 11:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HPS4MFL0CNwcXSBds1eTr6MMYU7BJQHyVyCRXeeLpbk=; b=WI1sSn4xCIWARs
	QhMfptpMQa808MlULlmxbgCGm6vQutw89Ycm5SqOGikH5vBQQA5iJUCYlzFQ4eEmst1XD+b3lDk3w
	enhb8rB/u4iMruAf+XW3klnleU2yAWZWqsCi9ZaLlGXeEQutl5CbruCFn06fn3SII5c38eV6LzVpV
	kU4qoaNm/2PrnA2qWUNheYlcH96TnBIQetUiVNWQdUATb54vlrQD2w6dSESEV4+DGxIDxAKqh1NYy
	IL9BFTSNnP56St0G9zABoDgCcsjC2YbG1FPiIlO+FZ/BAz+HHmhWRMp0KLOYIsjbaXiG7zcfMW3LY
	MjTG5JgrTlbDy/FrTatw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jey44-0006iL-Ja; Sat, 30 May 2020 09:46:04 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jey3t-0004A9-NX
 for linux-arm-kernel@lists.infradead.org; Sat, 30 May 2020 09:45:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=73MMfueoWp3O9MARH/BR3+rDia4lZUeJmAGiQu0hBYs=; b=QY0CoQptM3vcN8m7QNDn4q6uK
 gIPUOe6k+M3redoEf1Eg+mEiVYU9XhMNrsqV8EkLD6Z8fFGvlrL4GPacHBmMdxpDU74F+k2kcgvYY
 E3bGXzsQ7FHq4yBDcTFzR68k3Vk0WDkRfza2j52e9m1EacfgSVrL4dnGdedYVcLcKpLN90JspKkDA
 gX82xXcAYQ6Zo6DXBWf4ATMQWzUfyJMKPcUEA7tyZnqsFfrmmj3TPEoQDWjFB3jZbP/m8jzMsBq0X
 rn865YQdWjw81vwxMoCOc8h+VYni2zQcn0Ig/skNsBdWGlrY/et/7wKy3ttK/IKFddLBXO2vVqQHJ
 /fCMoFRNQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:36466)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jey1k-0001rf-IR; Sat, 30 May 2020 10:43:40 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jey1i-0000yO-AE; Sat, 30 May 2020 10:43:38 +0100
Date: Sat, 30 May 2020 10:43:38 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH] scsi: cumana_2: Fix different dev_id between
 'request_irq()' and 'free_irq()'
Message-ID: <20200530094338.GE1551@shell.armlinux.org.uk>
References: <20200530073555.577414-1-christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200530073555.577414-1-christophe.jaillet@wanadoo.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_024553_768083_CE524B1F 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com, jejb@linux.ibm.com,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 30, 2020 at 09:35:55AM +0200, Christophe JAILLET wrote:
> The dev_id used in 'request_irq()' and 'free_irq()' should match.
> So use 'host' in both cases.
> 
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

This is itself wrong.  cumanascsi_2_intr() requires "info" as the devid.
Either cumanascsi_2_intr() needs changing to use shost_priv(host) along
with this change, or free_irq() needs changing to use "info".

Likely the same for the other patches, I haven't looked.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
