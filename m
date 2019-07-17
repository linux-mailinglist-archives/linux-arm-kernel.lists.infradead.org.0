Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 873F76C2C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 23:51:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rPQvTWzZYENqMEAxnv3wBCetE5BjfJSPuwT5yKdED7M=; b=bKX+2uKEV716Lt
	3FtBoFuVQmGocbQ6aG1RoYnAUHdSVAUtH7lHsbE+vHg6zCVbiSPqrVC4rQtAL6WXwFsGlBcKEIdcJ
	to6DPmELhLD6tYgDGTRXmtVW2jY31s9EZ7vVOnuLJHUTgKe3lOkpU7vbCm8vQbjXoUXmR3FI0SxR/
	3G0Lqc/1AgTSyPGx7AYCWZSCWN8rHarXSEBq0Zo8A46Cb+qjWFOHdUeQBdsETjMidG5xFSkYdKOi/
	4eMT3VNqr1tT/penh01ycqkPc5sEZzNXYYq6BlsZ4DsV7NDxyZ1crpJiXAy63nZF2KrD2Ltz6i5hF
	V++9rkxbrCBnoLeIR5gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnrpe-0006eP-9W; Wed, 17 Jul 2019 21:51:26 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnrpM-0006di-FE
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 21:51:10 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 7F1DD5C02AF;
 Wed, 17 Jul 2019 23:51:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1563400264;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uth6fLeys8HDB4u6TB/dHVDpp/rfkpeApY6+uB3BCDY=;
 b=Aqdb2TGTP3Frx4PVbsw1zZ38lDC1juJFEMcUSpYP6+zkw2xdxLTJxKU0J/bQkzXr0JgU8a
 l9hvJDqv4eFaWqSBN2Kt9U+QBAbrZiQ+Dit12xatORWJLIKn3+O31jmu4Qb+nBvQgTf02a
 f3akyjhvUdxbEi573iT++jgLPyH/Bko=
MIME-Version: 1.0
Date: Wed, 17 Jul 2019 23:51:04 +0200
From: Stefan Agner <stefan@agner.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 05/33] drm/mxsfb: drop use of drmP.h
In-Reply-To: <20190715162815.GC27038@ravnborg.org>
References: <20190630061922.7254-1-sam@ravnborg.org>
 <20190630061922.7254-6-sam@ravnborg.org>
 <a2727131814fe53ed162853f1215ba45@agner.ch>
 <20190715162815.GC27038@ravnborg.org>
Message-ID: <5f25e5de0a908c25d89e7c8f81dc3be3@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_145108_874878_A134AEBF 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marek Vasut <marex@denx.de>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sam Ravnborg <sam.ravnborg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-07-15 18:28, Sam Ravnborg wrote:
> On Fri, Jul 05, 2019 at 10:47:30PM +0200, Stefan Agner wrote:
>> On 2019-06-30 08:18, Sam Ravnborg wrote:
>> > Drop use of the deprecated drmP.h header file.
>> >
>> > While touching the list of include files divided them
>> > in blocks and sort them within each block.
>> > Fixed fallout in the relevant files.
>> >
>> > Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
>> > Cc: Marek Vasut <marex@denx.de>
>> > Cc: Stefan Agner <stefan@agner.ch>
>> > Cc: David Airlie <airlied@linux.ie>
>> > Cc: Daniel Vetter <daniel@ffwll.ch>
>> > Cc: Shawn Guo <shawnguo@kernel.org>
>> > Cc: Sascha Hauer <s.hauer@pengutronix.de>
>> > Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
>> > Cc: Fabio Estevam <festevam@gmail.com>
>> > Cc: NXP Linux Team <linux-imx@nxp.com>
>> > Cc: linux-arm-kernel@lists.infradead.org
>>
>>
>> Acked-by: Stefan Agner <stefan@agner.ch>
> 
> Applied, thanks.
> 
> As a strange note, this mail also showed up in my gmail account.
> Maybe because I send mails out using gmail but the mail address is not
> visible anywhere. Anyway - just a note.

In the email I received your gmail was in the header as "Sender", and
the other email in "From". Not sure what is the right address to answer
to, but it seems that my client chose "Sender"...?

--
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
