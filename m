Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A69BC4701
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 07:32:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QEaYPlsxxizLVnigulIo0M2aJD43IM3dvN+ydpUMsrY=; b=UJ2ZO2hNww6HotPPmUmha1RAL
	WLHfxT+TWx+JDj0CZ2tQLZRqUFdZypkkJS18c6b9JEntQxULtAfLWaPukm9jRhlrnrTWuV3FbNOCl
	mImDgXssQ4sSQgwyZHwrAwPyLOkRfKfA0BH4C/ahCs/EKTcKxgjAanMD+s51gH3Itna85uDQmj2rd
	t1LLiAVGczvpqgQGpGar5/ljxo62acOeunlBB2bf2u4Yc1HVPLGWNVZ7sY7Po/isAGE5uuihrVuIa
	qbTnXLwcLZLWu9mQubY3vIrrc6xzyp/Grgmri41jtpehWbFx7if1rkfwM4aVzgYyv9lTeOW6QO4Lr
	KJHhLiYCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFXFw-00026z-Mu; Wed, 02 Oct 2019 05:32:56 +0000
Received: from uho.ysoft.cz ([81.19.3.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFXFp-00025G-3V
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 05:32:50 +0000
Received: from [10.1.8.111] (unknown [10.1.8.111])
 by uho.ysoft.cz (Postfix) with ESMTP id 5B75DA211B;
 Wed,  2 Oct 2019 07:32:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ysoft.com;
 s=20160406-ysoft-com; t=1569994362;
 bh=5AcZEITR50EqYwQF+Thz3U0N2SH4PgzQ+ow4rmj91Wg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=lsWbrPuLkR+N3vdIIaYAxfZVN32AeZZgTP8UbRtHXtoBUrJgnFuYMEy2S9OUTso8T
 1z4bXsDQH6i4vGDDSf7ezji3fpLHRJtCjO4fOXpEYRDdFnBj6poSxwYp8A+Tws6ygP
 hQoYmypLsF0vX47CW19QH+//T2ypw15vsac5cLuo=
Subject: Re: [PATCH] input: touchscreen: imx6ul_tsc: Use 'dev' instead of
 dereferencing it repeatedly
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Anson Huang <Anson.Huang@nxp.com>
References: <1569315731-2387-1-git-send-email-Anson.Huang@nxp.com>
 <20190930230806.GX237523@dtor-ws>
From: =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>
Message-ID: <c0773e65-fc14-8cad-06a3-861bd264a44c@ysoft.com>
Date: Wed, 2 Oct 2019 07:32:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190930230806.GX237523@dtor-ws>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_223249_300216_3A82EB7B 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: shawnguo@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 swboyd@chromium.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 linux-input@vger.kernel.org, festevam@gmail.com, mojha@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01. 10. 19 1:08, Dmitry Torokhov wrote:
> On Tue, Sep 24, 2019 at 05:02:11PM +0800, Anson Huang wrote:
>> Add helper variable dev = &pdev->dev to simply the code.
> 
> Do we get any code savings from this?

I noticed Anson submitted similar patches into various other subsystems.
Here [1] is a very detailed response from David Laight shedding some light
on this topic.

[1] https://lkml.org/lkml/2019/9/24/151

>>
>> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
>> ---
>>   drivers/input/touchscreen/imx6ul_tsc.c | 37 +++++++++++++++++-----------------
>>   1 file changed, 19 insertions(+), 18 deletions(-)



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
