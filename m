Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 172491A8C23
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 22:17:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bf0KsczUoV2CvKgxL0mcdenAIYVTMSaPXL5oQ2IBZAk=; b=EIm8U81ZIKSEyx
	PjJArJspyCMSNBzjhIy9Sqwozz7tg2Wk+ZgxCeVGSAuu6SbOWEbKYdk6VVo5SOKwBTkRtDdMB52mX
	rhGxJTdrLPCItpGOcW4UlwBXsGj6ueR5oRrtiONoNKILmYektbwmx1ejNSgeCCe3YiepjWblhnu7W
	vh0sMrnXKlEW4zEwFDOLCprJHxo7ZshwSsALpHLyly+ZL/6K/3es8fgTOjwHtpTzqleSI5xwErVIt
	bm/GblrV38yk/1TLt+CWqS2v6qg2JkH9EhzjMf841ovl4sguQUITBvQPSfyvqoV4nF6LtSwTfzN2v
	Y47CilOlzYWbfwXjZ6MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jORzc-0001w6-0M; Tue, 14 Apr 2020 20:17:12 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jORyE-0000EV-DI
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 20:15:48 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id C599824000B;
 Tue, 14 Apr 2020 20:15:42 +0000 (UTC)
Date: Tue, 14 Apr 2020 22:15:42 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Diego Elio =?iso-8859-1?Q?Petten=F2?= <flameeyes@flameeyes.com>
Subject: Re: [PATCH 1/4] at76c50x-usb: update dead links.
Message-ID: <20200414201542.GB96267@piout.net>
References: <20200413170031.13104-1-flameeyes@flameeyes.com>
 <20200413220832.GA34509@piout.net>
 <09542b31-58df-4950-93ec-836492aa514d@www.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <09542b31-58df-4950-93ec-836492aa514d@www.fastmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_131546_601591_491E71A1 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/04/2020 23:09:52+0100, Diego Elio Petten=F2 wrote:
> On Mon, Apr 13, 2020, at 23:08, Alexandre Belloni wrote:
> > Maybe it is worth having those as part of linux-firmware instead.
> =

> Possibly? But I was not really trying to update the way the firmware is p=
ackaged, as much as I stumbled across a few broken links and decided to fix=
 them :)

BTW, you should send this patch to the net maintainer, instead of the
microchip ARM maintainers. get_maintainers.pl lists the correct people
and mailing lists.

-- =

Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
