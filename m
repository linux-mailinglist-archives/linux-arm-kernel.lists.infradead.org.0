Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA78F64959
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 17:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=25K/sUO0cSVpNECK/4RHwkJbHegLpMy1F0ZgCFhU868=; b=hK4StlN9aLRP97
	rvYX0OrpznZj6khCkVdZR6kMBj7VqO/BEZvpXh8Qp5J4nEMQrMp/t2hK+PDPZ0LKkZwm43gL/BNBp
	EVAL8u2l1C5hMc59UwWEJP5ZD+5w7iSTBIOjY8UQmygX2ae91WH7GIL2oOXrBqRg6n/eHcVofpLKL
	+kJAu+RHiZabNcaaQ10MzbHsABSSbv9x9IGOMitt+iliA/rmvoIy/KSLGJX27zKotpHNTQXXjv1X2
	ZTRL84ILGY1ke4SwV1GTWl/y7EgDDAIDIi6DkXnugsxOM17i2k9dxeQ6hKHEKpwBj8V4ygagRM6E0
	ZFygVrVocrGqBIrMHSfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlECF-0004lP-JT; Wed, 10 Jul 2019 15:07:51 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlEC1-0004kV-5w
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 15:07:38 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 7299020371;
 Wed, 10 Jul 2019 17:07:34 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 5AD6420200;
 Wed, 10 Jul 2019 17:07:34 +0200 (CEST)
Subject: Re: [RFC] SW connection between DVB Transport Stream demuxer and
 I2C-based frontend
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
To: Peter Rosin <peda@axentia.se>, I2C <linux-i2c@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>, GPIO <linux-gpio@vger.kernel.org>
References: <5e35b4fb-646d-6428-f372-ee47d7352cd6@free.fr>
 <7d47a978-5307-a2c8-acc2-f29ce7567bd5@axentia.se>
 <12b7118b-5118-cc43-2d0b-aff9650914a5@free.fr>
Message-ID: <ae5896d2-3046-8c28-2419-c5a932050c95@free.fr>
Date: Wed, 10 Jul 2019 17:07:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <12b7118b-5118-cc43-2d0b-aff9650914a5@free.fr>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Wed Jul 10 17:07:34 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_080737_370859_6A90D3D1 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Peter Korsgaard <peter@korsgaard.com>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, Wolfram Sang <wsa@the-dreams.de>,
 Linus Walleij <linus.walleij@linaro.org>, Brad Love <brad@nextdimension.cc>,
 =?UTF-8?Q?Jonathan_Neusch=c3=a4fer?= <j.neuschaefer@gmx.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Antti Palosaari <crope@iki.fi>,
 Simon Horman <horms+renesas@verge.net.au>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Olli Salonen <olli.salonen@iki.fi>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/07/2019 15:52, Marc Gonzalez wrote:

> Your solution works great. It's refreshing to have stuff work
> out-of-the-box!

Arg! I spoke too soon. For some reason, si2157_init() is not being
called when it should. I'm trying to trace it down...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
