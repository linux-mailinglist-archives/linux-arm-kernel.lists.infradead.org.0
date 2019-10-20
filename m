Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6D2DE006
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 20:25:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5zABgWDHILApZZkiku4DoBaUBp94WR9pR4/WIA6MQP8=; b=VtoBpyM1N4+Jcm
	ZZXlLmVqA1XW3RWE7+ADit4SswqbaByCyPTAGyIUe5VDWOTAxDU3q+fcXKUV3X0fmCIo8rRc5pkO0
	AupuieAqhYX9ccEogIirxXKsl76xw0If3GE0ZAJz0xmUOwcMQHzcYCJSfwucTnjV2hkSE1ojFJllW
	mIOZe50w7dO2g27Pc235AP80TwDyRKCDwGYDssUYgvdNHTsPvNzs4GwC9VuRYViQbuQRzTP3RhX7P
	rTuemEdP4p7LMzgFy+muhnljCMWvww2Y2vJRlTGVE/GM6ffHE+CltN31/6P9sspwlqwsI2BGyfWB4
	DSTwdmvCrwVT42l/RvCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMFsp-00054t-GT; Sun, 20 Oct 2019 18:24:51 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMFsW-0004RM-Qq
 for linux-arm-kernel@lists.infradead.org; Sun, 20 Oct 2019 18:24:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1571595869; bh=xHZcvSKU/IBWW2SVcrSlMQ+cmOT8EZkQSGIMBsAhJ4U=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=BezfH1bZNs2DSpcO4W778Sml3B90rcRc079OR8tWzOd/6DODdRrfMuUJQxLKuUyfw
 WjWTNVBP1D8tNFacPCkPsqWOUTALJhyuOmU8n17EhuhjMASREfRXyM4QJ3K8Zd4a4W
 pnzYsFKY4ckLViwByBcWANzdcC0D5kRlkWDyTJh0=
Date: Sun, 20 Oct 2019 20:24:28 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Adam Ford <aford173@gmail.com>
Subject: Re: pwm_bl on i.MX6Q broken on 5.4-RC1+
Message-ID: <20191020182428.76l3ob4sxblrjr4m@core.my.home>
Mail-Followup-To: Adam Ford <aford173@gmail.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-pwm@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>
References: <CAHCN7xJSz+QhOb4vE6b67jh5jnSOHnw79EyX8RW91TqPkD__Lw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xJSz+QhOb4vE6b67jh5jnSOHnw79EyX8RW91TqPkD__Lw@mail.gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_112433_211493_57DC7C14 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 02:55:54PM -0500, Adam Ford wrote:
> I have an i.MX6Q with an LCD and PWM controlled backlight.  On 5.4-RC1
> through the current master (16 Oct 2019), the backlight does not come
> on by default.  I can get it come on by manually setting the
> brightness, but any video activity seems to blank the screen again
> until I change the brightness again.

You might want to check PWM driver that's used on your SoC. I had a similar
breakage on Allwinner SoCs, and it was caused by a broken get_state callback.
The problem was there for a long time and it was only exposed by the commit you
bisected to.

regards,
	o.

> I bisected the patch to 01ccf903edd6 ("pwm: Let pwm_get_state() return
> the last implemented state")
> 
> If I revert this patch on 5.4-rc3, the issue goes away.
> 
> I was hoping someone might have a suggestion on how to fix it to play
> nicely with the iMX6Q PWM or revert if no solution can be found.
> 
> thank you,
> 
> adam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
