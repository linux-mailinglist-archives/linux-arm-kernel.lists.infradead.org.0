Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 683B310F327
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 00:09:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/hNExAPSyZuzZQJ1RKt0IW47CjuBeeZxqrs+oiJHAfQ=; b=k9Hyo4hqE5k37F
	7DIqgv0+9PpRbr+mVeLnnnFU9yOBNUKBAeth5Tk5bSTVoVizXrw5aXSmIBYUilu/MC3aAuhUfLgWi
	HkjACxdjpwOTCIJqzzI/pZQNtpxfgAMKFjPd4taMS36r+I76uaGR+P7NGFw4UWnHZTvP31dqp2kZP
	aORD6l56IrApsPB45KW7W2tWqEdeFvgPqi4OoyrdtbYJ5745OaZlW3osIvtkIpMvJNlBJ8ajh0tV1
	MDzrLOhf6ImWWcz47iKmrJqy3LTnohr+7wNvBHKXXNy5EgnLEFRMHJtASjMtHmWK4mUwYMO8GX4Vi
	7340F8Gb/tB0ttAjSrrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibuoz-0007fe-Jd; Mon, 02 Dec 2019 23:09:37 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibuof-0007aI-NO
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 23:09:19 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 3F6A914DB02A2;
 Mon,  2 Dec 2019 15:09:17 -0800 (PST)
Date: Mon, 02 Dec 2019 15:09:16 -0800 (PST)
Message-Id: <20191202.150916.2303395989063321734.davem@davemloft.net>
To: leoyang.li@nxp.com
Subject: Re: [PATCH v6 00/49] QUICC Engine support on ARM, ARM64, PPC64
From: David Miller <davem@davemloft.net>
In-Reply-To: <CADRPPNSXS95DCpbnEG14tN7H4uxo7kFb8-azMU+MfPStyRcdpQ@mail.gmail.com>
References: <7beef282-1dd8-7c7a-4f6d-d0605d11eab5@kernel.org>
 <fb810251-f444-bd5d-54e3-774d2e1ccdb9@rasmusvillemoes.dk>
 <CADRPPNSXS95DCpbnEG14tN7H4uxo7kFb8-azMU+MfPStyRcdpQ@mail.gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 02 Dec 2019 15:09:17 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_150917_767163_9F597720 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: christophe.leroy@c-s.fr, timur@kernel.org, linux@rasmusvillemoes.dk,
 linux-kernel@vger.kernel.org, oss@buserror.net, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, qiang.zhao@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Li Yang <leoyang.li@nxp.com>
Date: Mon, 2 Dec 2019 16:56:39 -0600

> On Mon, Dec 2, 2019 at 2:14 AM Rasmus Villemoes
> <linux@rasmusvillemoes.dk> wrote:
>>
>> On 01/12/2019 17.10, Timur Tabi wrote:
>> > On 11/28/19 8:55 AM, Rasmus Villemoes wrote:
>> >> There have been several attempts in the past few years to allow
>> >> building the QUICC engine drivers for platforms other than PPC32. This
>> >> is yet another attempt.
>> >>
>> >> v5 can be found
>> >> here:https://lore.kernel.org/lkml/20191118112324.22725-1-linux@rasmusvillemoes.dk/
>> >>
>> >
>> > If it helps:
>> >
>> > Entire series:
>> > Acked-by: Timur Tabi <timur@kernel.org>
>>
>> Thanks. I'll leave it to Li Yang whether to apply that - they already
>> all (except for the last-minute build fix) have your R-b.
>>
>> Li Yang, any chance you could pick up these patches so they have plenty
>> of time in -next until 5.6?
> 
> Sure.  I will.  I'm waiting for the Ack from David on the networking side.

Acked-by: David S. Miller <davem@davemloft.net>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
