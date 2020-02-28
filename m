Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 861BA1741AF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 22:51:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ADLC9fGq2T7GtEJNv0Zdz+cVKU+Ms399X+M2eqv/ajY=; b=p99NGYhh02x4v72VaABCBJMwZ
	JP4iCWXQRrWQnsBqga8al8gkfmYhwX2b6odhg922vov7dJBdhUB/mBrTU6GiFmvbvTRM1IlJG79nZ
	/SNjJVQHxBboGlPkzhqLnD1vdMQeQB+Y5TO5SyKSTBz4TllRRKNge5wCs2ykqbVK2f4Gk01H3qzU3
	v3UKpnjlEI3hF27E7TY/8Qrm9xWDQ13LbBwZmY6tFqpOYF+UINOFq2/VKFDM4IatlF3p+QoA2rOJG
	BZPcxir9oBpqcBaM+NWvxne+vXyO8ta1i/rnyQVocTXLEIU5J8rYCud4TStrQN1a20t7Y21XHCT06
	mtiZuKKPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7nXO-0003jv-6a; Fri, 28 Feb 2020 21:51:14 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7nX5-0003jY-Dk
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 21:50:57 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id D735D23E29;
 Fri, 28 Feb 2020 22:50:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1582926652;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oYF0XupHCNrJePiMiwuR1qNRjdHRjVb4x1LouSfF1I4=;
 b=utAc0NN1aDLhRtpGKBeNvJSNKQa5PluFyiMyy9TK6sRiqMm7D5mU0tUS4DM/gz9cLsFpTT
 HBKXqrPcpfqKmgF8uRHUwNAThWGigvVWE1ytVCFRRzoyUCcACkjNPcuERohmfkfNObruwS
 Y+XzZUVQUA6Q7xCDddtK8wJy4sWoYiQ=
MIME-Version: 1.0
Date: Fri, 28 Feb 2020 22:50:51 +0100
From: Michael Walle <michael@walle.cc>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 3/9] tty: serial: fsl_lpuart: handle EPROBE_DEFER for
 DMA
In-Reply-To: <639a1df72fbeda77436b282a99f17995@walle.cc>
References: <20200221174754.5295-1-michael@walle.cc>
 <20200221174754.5295-4-michael@walle.cc>
 <CAL_JsqL8QGKARtRAfjCMyk4Pp7EWhFMV8JQpveHoJ2OyH5kBPA@mail.gmail.com>
 <CADRPPNR1n1sviJnhq_zuUFJcMYqsVKy0O7NOF1pxF_4VH+dasg@mail.gmail.com>
 <CAL_JsqKMNFFG5H4gPQwRdcTpfHynqZWo2A2db-oL7EmvTNqNkQ@mail.gmail.com>
 <639a1df72fbeda77436b282a99f17995@walle.cc>
Message-ID: <24b9a657a65f75a4f4f10baa17561451@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: D735D23E29
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 TAGGED_RCPT(0.00)[dt]; MIME_GOOD(-0.10)[text/plain];
 DKIM_SIGNED(0.00)[]; RCPT_COUNT_TWELVE(0.00)[12];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_MATCH_FROM(0.00)[];
 SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_135055_623757_D5738E24 
X-CRM114-Status: GOOD (  21.38  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Vabhav Sharma <vabhav.sharma@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-02-28 12:46, schrieb Michael Walle:
> Hi Rob, Hi Leo,
> 
> Am 2020-02-28 00:03, schrieb Rob Herring:
>> On Thu, Feb 27, 2020 at 4:49 PM Li Yang <leoyang.li@nxp.com> wrote:
>>> 
>>> On Thu, Feb 27, 2020 at 4:35 PM Rob Herring <robh+dt@kernel.org> 
>>> wrote:
>>> >
>>> > On Fri, Feb 21, 2020 at 11:48 AM Michael Walle <michael@walle.cc> wrote:
>>> > >
>>> > > The DMA channel might not be available at the first probe time. This is
>>> > > esp. the case if the DMA controller has an IOMMU mapping.
>>> > >
>>> > > Use the new dma_request_chan() API and handle EPROBE_DEFER errors. Also
>>> > > reorder the code a bit, so that we don't prepare the whole UART just to
>>> > > determine that the DMA channel is not ready yet and we have to undo all
>>> > > the stuff. Try to map the DMA channels earlier.
>>> >
>>> > Changing this means you never probe successfully if you boot a kernel
>>> > with the DMA driver disabled (or it's IOMMU disabled). Some other
>>> > drivers request DMA in open() and can work either way.
> 
> Oh, I see.
> 
>>> We got this exact issue previously with another driver.  When the
> 
> What driver is it? I've been working on the i2c-mxs.c driver which has

whoops, i2c-imx.c, not i2c-mxs.c

-michael

> the same problem. Ie. its not working with DMA when the IOMMU is 
> enabled.
> Now that I've learned that dma_request_chan() will return EPROBE_DEFER
> if the actual DMA driver is not available, I don't think there is any
> trick like this there. There is no function which would be called late
> except you'd do something like on the first master_xfer() try to 
> request
> the DMA channels. But I don't think that would be the way to go.
> 
> -michael
> 
>>> required DMA driver is disabled, the DMA framework cannot figure out
>>> this situation and keeps returning EPROBE_DEFER.  I'm wondering if we
>>> should update the DMA framework to use your deferred probe timeout
>>> mechanism.  Is it still only used for debug purpose?
>> 
>> It's undergoing some rework ATM to not just be for debug. However,
>> it's not really going to help you if you care about the console
>> because waiting for the timeout will be too late to register the
>> console.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
