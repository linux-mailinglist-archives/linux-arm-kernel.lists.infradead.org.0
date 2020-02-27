Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AB4172B69
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 23:35:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VGtUByY3KcqqBOss3Q9ihcdbyjEbYcNfDpSccYxc0D8=; b=BiKtA4T3iprnBB
	EIfUAt6htkNGmw/wpo2jhY6RjeyRlYIhTvwp7UPAqHG7lMRqFINhz9dYjMjPxjgRdF66Kw3gMKO0G
	jhDAJG+6ALR114aMNQMdpHjfgrZkVj3uhXZOta+nWVTwjjr36OMeG6JNn5H9CJQWl83Sl60GiYyBX
	EYPo3vSGsRk2/7WZlD5B59FEoU230yynTXUbAQsZRQCOCYa1nVxNXsPOUUpwKhJrpPCsM9ngu17eq
	paFqCOr5GzKA99nNQ5y35wMjt0RO8Tp30neqbwCWm3ACPlnT4ZgCDyIjrPKpnw7OgJzmV0qYxKIvF
	0w4OBxxTZ/ARBgzpzGow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7RkK-00047z-4o; Thu, 27 Feb 2020 22:35:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Rk0-00043p-D6
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 22:34:51 +0000
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9ABD2246AA
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 22:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582842885;
 bh=YaGh6D1HzZ7fNKCmGcqwfIeREmWsHw1fRwfnKYtFmzE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Vtupj6DZECBmVkSIhKs//W0XwsQmOxTt4UepDYJwQEuOg4vEvKHMYW6U5MI3XG6rF
 ECX0OqVBvXgDCczjDg9okCAU/kyqNMdfNI7pwFpFCaT7/sxNNRbX5mhW9rSHId5kS8
 HrdfBSFLZoIotsMniP2g4di6KEv10U2Gl95hVKVo=
Received: by mail-qk1-f178.google.com with SMTP id e16so1165588qkl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 14:34:45 -0800 (PST)
X-Gm-Message-State: APjAAAXqQXluzLj4VqP2fsnZY5HtS0ZgrktePYazGMfYMrQCNHcnXpZa
 /HtNukNp/WAHnyIflha2lIsM/Au83bNRusAiXA==
X-Google-Smtp-Source: APXvYqyeC5qhzNELpJaQTWJ0dR3EvH/Ikp7mcj1v76BER8UPpw9OHDgX/94cm+5BGXHVmQc+0agiMxuvdmrlGH8RZmI=
X-Received: by 2002:ae9:f205:: with SMTP id m5mr1905154qkg.152.1582842884742; 
 Thu, 27 Feb 2020 14:34:44 -0800 (PST)
MIME-Version: 1.0
References: <20200221174754.5295-1-michael@walle.cc>
 <20200221174754.5295-4-michael@walle.cc>
In-Reply-To: <20200221174754.5295-4-michael@walle.cc>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 27 Feb 2020 16:34:33 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL8QGKARtRAfjCMyk4Pp7EWhFMV8JQpveHoJ2OyH5kBPA@mail.gmail.com>
Message-ID: <CAL_JsqL8QGKARtRAfjCMyk4Pp7EWhFMV8JQpveHoJ2OyH5kBPA@mail.gmail.com>
Subject: Re: [PATCH v2 3/9] tty: serial: fsl_lpuart: handle EPROBE_DEFER for
 DMA
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_143448_476014_572F5522 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Peng Fan <peng.fan@nxp.com>, Vabhav Sharma <vabhav.sharma@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 11:48 AM Michael Walle <michael@walle.cc> wrote:
>
> The DMA channel might not be available at the first probe time. This is
> esp. the case if the DMA controller has an IOMMU mapping.
>
> Use the new dma_request_chan() API and handle EPROBE_DEFER errors. Also
> reorder the code a bit, so that we don't prepare the whole UART just to
> determine that the DMA channel is not ready yet and we have to undo all
> the stuff. Try to map the DMA channels earlier.

Changing this means you never probe successfully if you boot a kernel
with the DMA driver disabled (or it's IOMMU disabled). Some other
drivers request DMA in open() and can work either way.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
