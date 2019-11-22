Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A25851072C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 14:08:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:In-Reply-To:Subject:To:From:Date:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=kOU8hCVj3IACUZ6lhH/MwPceESgnPUAKBszLqtHyC+o=; b=t67fnNdPrdMZn1E/2FUS/9vmb
	B2b0U1BvnkdyE11Ed8PglGijvQVwEZ2NGaspTFPiM5SNP8cUYQ/u/I3XF/NI/1n8eiryFlImB0FWD
	9A0ORcga9kS8xvvZKK5Q22kV+LaqksKtIv1T7GTBHnvkF6LpSeLl5D87IFM3yBKwJswTTRTE8jzfo
	k+IO7/jyyUkSOaKNMSUxX3V1q6sM1ylznABFv1384klSHSwfJZOeLN88WUdHx62JWi1uaZADeui6W
	FDasdzvudP8TTostPLGFvTtD8EI9bhyMnL8eoKWEz6qJF65ZNaxLasYnMl5OlSfgVXpJxN5bl8HHK
	n1hfabAWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY8fk-0007oE-Mr; Fri, 22 Nov 2019 13:08:28 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY8fa-0007n8-PF
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 13:08:21 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id C8C842304F;
 Fri, 22 Nov 2019 14:08:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1574428089;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  in-reply-to:in-reply-to; 
 bh=//5nPzIuRm2evQRb9acrI4hqDZiiDLIkRjl4f5sxneQ=;
 b=Fyrp8yuJV16DLrKi+FF4jNZLBtL0W4BGrdemubN8pw2rZzEV79OsvUW4elJJos5Ec30Tgk
 OPbn46jipXAN8EWBWg3ocL5WBCURrjYE8vf5JuM5SOnf9Mmny/VBEqBLbXI2qOT25Z7ICJ
 zzAkke/VvecTIFaDsLAXvZTe1oP7MXA=
MIME-Version: 1.0
Date: Fri, 22 Nov 2019 14:08:08 +0100
From: Michael Walle <michael@walle.cc>
To: linus.walleij@linaro.org
Subject: Re: [PATCH v1] gpio : mpc8xxx : ls1088a/ls1028a edge detection mode
 bug fixs.
In-Reply-To: <CACRpkdYhLoGdGQt_jzj5aFa-EY_kMimoVShi7QFLG3sZbC436w@mail.gmail.com>
Message-ID: <563f2fdf0c32103d95a53fc1e7fd84c0@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.8
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: C8C842304F
X-Spamd-Result: default: False [1.40 / 15.00]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 TAGGED_RCPT(0.00)[dt]; MIME_GOOD(-0.10)[text/plain];
 TO_DN_NONE(0.00)[]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_SEVEN(0.00)[11]; NEURAL_HAM(-0.00)[-0.923];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_MATCH_FROM(0.00)[];
 SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_050819_825605_604EA1D8 
X-CRM114-Status: UNSURE (   6.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, hui.song_1@nxp.com,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 bgolaszewski@baylibre.com, robh+dt@kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>> From: Song Hui <hui.song_1@nxp.com>
>> 
>> On these boards, the irq_set_type must point one valid function 
>> pointer
>> that can correctly set both edge and falling edge.
>> 
>> Signed-off-by: Song Hui <hui.song_1@nxp.com>
> 
> Patch applied!
> 
> Yours,
> Linus Walleij

mhh.. this bug should already be fixed in a better way with [1]:
   gpio: mpc8xxx: Don't overwrite default irq_set_type callback

-michael

[1] 
https://lore.kernel.org/lkml/CACRpkdZ5eWHEV-oN77QxH9X4DZRUB3zM=gP=+rM=ZLAX6Wxw9w@mail.gmail.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
