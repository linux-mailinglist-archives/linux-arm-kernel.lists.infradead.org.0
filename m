Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F313BDEE92
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 15:59:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X4pqCSQ+8jnPJsl+g9QvP253UolS4luQTNMvenoNuU0=; b=dz1Wrc9hkN+32YMKeMFHK0dcw
	mPd0b95kDBtw0NOBnUlEzYY2AD8Ws0of95BSfMp+BZ9IbGYYIWI9mD1VdkAKYKZsTWWM8/tzXsvfs
	5pli7GguxFlP1Rsp4RBSX/+RwHzHhvD+p4TKB9AFVtPaBFHocPzv5Yx8Bt5e1irU+trmbtvRAC/NH
	QHAZyDbjN/JkKOjEc81swy6iBSikf6UM1X8ROinKJr8gKznI7Jg7waA1SPNzTCatuKwE8NYfqIdng
	jfEpmW/7xddRJx5gZlaj/y6+sd9HKBmnDki3Lglssm9ZxbkZVB3JpXzmuskRUg5DHuxq16buGPHeV
	5rTmTPkYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYDq-0000dQ-6z; Mon, 21 Oct 2019 13:59:46 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYDb-0000aJ-1d
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 13:59:33 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iMYDV-0004zv-5h; Mon, 21 Oct 2019 15:59:25 +0200
To: Christoffer Dall <christoffer.dall@arm.com>
Subject: Re: [PATCH v3 0/2] Improve handling of stage 2 aborts without
 instruction decode
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 21 Oct 2019 14:59:24 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191021133707.GA2652@e113682-lin.lund.arm.com>
References: <20191011110709.2764-1-christoffer.dall@arm.com>
 <865zkjzpbf.wl-maz@kernel.org>
 <20191021133707.GA2652@e113682-lin.lund.arm.com>
Message-ID: <3ba9db99efaadd8c9372708358da0ac6@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: christoffer.dall@arm.com, kvmarm@lists.cs.columbia.edu,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org, graf@amazon.com, berrange@redhat.com,
 xypron.glpk@gmx.de, stefanha@redhat.com, peter.maydell@linaro.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_065931_241735_FDD8D95E 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Peter Maydell <peter.maydell@linaro.org>,
 =?UTF-8?Q?=22Daniel_P=2E_Berrang=C3=A9=22?= <berrange@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>, Alexander Graf <graf@amazon.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Stefan Hajnoczi <stefanha@redhat.com>, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-21 14:37, Christoffer Dall wrote:
> On Sun, Oct 20, 2019 at 11:25:24AM +0100, Marc Zyngier wrote:
>> Hi Christoffer,
>>
>> On Fri, 11 Oct 2019 12:07:04 +0100,
>> Christoffer Dall <christoffer.dall@arm.com> wrote:
>> >
>> > When a guest accesses memory outside the memory slots, KVM usually
>> > bounces the access back to userspace with KVM_EXIT_MMIO.  However, 
>> on
>> > arm/arm64 systems, certain load/store instructions did not provide
>> > decoding info for the hypervisor to emulate the instruction, and 
>> in this
>> > case KVM has rather rudely returned -ENOSYS and printed a not 
>> overly
>> > helpful error message:
>> >
>> >   load/store instruction decoding not implemented
>> >
>> > This patch series improves the error message and allows userspace 
>> to be
>> > notified of this event instead of receiving -ENOSYS, and also 
>> allows
>> > userspace to ask KVM to inject an external abort to the guest, 
>> which it
>> > can use for any memory access that it either cannot handle.
>> >
>> > One remaining case which this patch set does not address is if the 
>> guest
>> > accesses an in-kernel emulated device, such as the VGIC, but using 
>> a
>> > load/store instruction which doesn't provide decode info.  With 
>> these
>> > patches, this will return to userspace for it to handle, but 
>> there's no
>> > way for userspace to return the decoding information to KVM and 
>> have KVM
>> > complete the access to the in-kernel emulated device.  I have no 
>> plans
>> > to address this limitation.
>>
>> You had some pending comments on patch 2, and you seem to indicate
>> that you would respin the series. Do you have plans to do so in the
>> coming days? I'd like to put that series into -next, but I can 
>> either
>> wait for your respin, or queue it as it is and apply fixes on top.
>>
>
> I think those for v2 and this is v3 which should address those 
> concerns.
> Did I miss something or manage to confuse mysel here?

Gah! No, it looks like the mistake is mine. I've mixed the two series 
in my
Inbox, and the result is a total brain-fart. Ignore me.

I'll queue these patches ASAP.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
