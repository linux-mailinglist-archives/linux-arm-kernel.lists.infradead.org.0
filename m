Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E5018301D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 13:22:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Subject:To:From:Date:MIME-Version:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iyAz1e+MNYsW66ATWTywuuvtSEIcQG8+nFs+WZflQTM=; b=jKrTxndBXrlcuHX2sACNEETEuy
	qH7sbQTcG8akXfZGwT4j+59HR6SkrX+KlIMueX0pOk3pZLTmfOkHOiu/0fUp4hQz4OFfkBkgsbvsd
	3swQu0IBjvmHbeSystoNFhHdPJuBd7854/eatn8GfL5cnxRwYv66jBWzGJ8tKVJ9Ji6OdkwyZau3L
	FRSH+bvrB6JSxbKPHNS3glz7UVAh6ZlThTPirQqd0LHuImwnCScz90WZe0uaHG6epcmFoUm9gTms2
	iSbb7XF/r6pD76FvChokWvOD7cOrGGxl+/kz+unpcdditrA64eoDD2vRnx0VEUfU4EcQvULOAoZX6
	yEZVptSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCMrI-0004Fr-Tr; Thu, 12 Mar 2020 12:22:40 +0000
Received: from web0081.zxcs.nl ([2a06:2ec0:1::81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCMrB-0004Eh-OK
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 12:22:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=pascalroeleven.nl; s=x; h=Message-ID:Subject:Cc:To:From:Date:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Lfs0z/+L0TSule7hHn2nDAOGMSOIAkxM0mBa2N+gqjI=; b=bkeEHHZBvkZiglRESydGIwO20
 weVZ3patJWJi0cvR5/syyzc+uHlgg6uan/zJcW6zVRFFRPJ6Q8bDLdr7ESeNW3hTfkxtN00/EIS+g
 l87uXsSridQ3jVJnEnD5YmkJjxlT4teuILe6lthyYHv6rnzPaeRA5nNPAXJspn7IQTlMXWYNMGj3Y
 PCtR+EF5IFvC7wu8JqK77gTwj2q5bRId7EtMRyitcz4KmX60KHs7IkC30dLI3YLdQy8n/6AGFWRdF
 eRLdCZk41tk0ZT/z4EdptxiDvMdlmDzUrlJ4zSP5B6DYkl3GvewdR/8fkpyNfeYa4qUHBRqyz1dQW
 4vUIiqu6A==;
Received: from spamrelay.zxcs.nl ([185.104.28.12]:33708
 helo=mail-slave01.zxcs.nl)
 by web0081.zxcs.nl with esmtp (Exim 4.92.3)
 (envelope-from <dev@pascalroeleven.nl>)
 id 1jCMqr-002bnY-GC; Thu, 12 Mar 2020 13:22:13 +0100
MIME-Version: 1.0
Date: Thu, 12 Mar 2020 13:22:13 +0100
From: Pascal Roeleven <dev@pascalroeleven.nl>
To: Thierry Reding <thierry.reding@gmail.com>, =?UTF-8?Q?Uwe_Kleine-K?=
 =?UTF-8?Q?=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, Maxime Ripard
 <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: pwm: sun4i: pwm-backlight not working since 5.6-rc1
User-Agent: Roundcube Webmail/1.4.2
Message-ID: <6185b5540ca082d887d7d13330c9d938@pascalroeleven.nl>
X-Sender: dev@pascalroeleven.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_052233_938733_86E97034 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 TRACKER_ID             BODY: Incorporates a tracking ID number
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-sunxi@googlegroups.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

I am working on adding an old A10 device to mainline and noticed an 
issue when testing on 5.5.8 vs master.

Since 5.6-rc1, I can't control the brightness of my LCD backlight 
anymore. The backlight stays on full brightness instead. I am 
controlling the brightness value via sysfs for testing.

I am not sure if this is a general pwm-sun4i issue or if it is related 
to the backlight. However I narrowed it down to one commit for 
pwm-sun4i:

fa4d81784681a26bcf7d2a43c6ac5cf991ef28f5

If I use pwm-sun4i.c from 5b090b430d750961305030232314b6acdb0102aa on 
master, the backlight works fine. Unfortunately, due to my lack of 
kernel experience, I can't see how the commit above broke it.

Not sure if it helps, but the binding for the backlight is as follows:

backlight: backlight {
     compatible = "pwm-backlight";
     pwms = <&pwm 0 100000 PWM_POLARITY_INVERTED>;
     power-supply = <&reg_vbat>;
     enable-gpios = <&pio 7 7 GPIO_ACTIVE_HIGH>; /* PH7 */
     brightness-levels = <0 30 40 50 60 70 80 90 100>;
     default-brightness-level = <8>;
};

Please let me know if there is anything else which might be helpful to 
know or anything I can test.

Regards,
Pascal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
