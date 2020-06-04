Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A22A1EEBDC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 22:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RrEJk0LF3g4mA0QmG8FISWq+xZTEpPqgPHW/q5Lw7s8=; b=WRn+XElR6/KIKK
	mBVioa25ccdA5QfIUFr/v+L+3FQP73C1kaWM8zc0njj5ciW/hWDlFxyn3HP/V9eSFU15A4eF/S0Uy
	CJUzi5LqdUHjz+U7YuKwsdx4WocKAk9KL6PNB4CF1fr1ZxidNQ5oTAfFGYx0+NuzqvNT5Ko+lQRWg
	hL8clhchHOsjgS8Y2sTY/slyKzR1Ql/UuNrCmUmnBAxSc6jdlddk2PBN+fO/knXxQBafXpUzO0vuz
	O9xDWYhV9DFkK2wPwi8jXDTHu3H1PhE4JPRO3oMM2uwsfqGEkmuvqkVIbtrF8aMqC9/RhDZlGwhBb
	z96AtBjQv62FV3MjamiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgwQO-0000Mi-I0; Thu, 04 Jun 2020 20:25:16 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgwQA-0007pg-2O; Thu, 04 Jun 2020 20:25:03 +0000
Received: by mail-wr1-x442.google.com with SMTP id j10so7499566wrw.8;
 Thu, 04 Jun 2020 13:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Kk92pwYJ8IKxem/FhLo1PGHOIRMohDuIFS2c8njRHHI=;
 b=b0R04DBdQzKUkFz3auHl3/33aB8QKHOVW4ieezufx6qQ6fTGBGrN/jtvhl7mbb7FER
 HCuQ78GCrJNMAB3SsvsoZEQWMMEFU15unhzkbtXKC1cw+SvTCdRFEFXqm6kb2pqGGvhm
 acKwZyXm+VLjO1hOnPESdZ7rc4hVZ5W3AYXkesQqduDJOdfx/dd6cDIZVQkMnu3sc+v2
 SpPs5qHe9ndiPh0toGy7mbT+ygxwUA6vANu6SnKQQi084MrjVFig6ORzDKSuzLDJRgew
 Thicol+gjUGeMLM3dykVd8ktmrJ6Ov96MkqfP+yDx9N++dGKDzCaEav0DfLLfb/ZMHlv
 dDuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Kk92pwYJ8IKxem/FhLo1PGHOIRMohDuIFS2c8njRHHI=;
 b=PFEvYonFM3bZTP8VDfx8NSgkp0XJl482rKn6VXuaOJMP83Q4OhAkGTg+RAcetMe06u
 gajuAFriziEceMGzHt3cW+yaatwAS9XXiiEL8tPccpLh363b0xpGrt4vWgNDG1BZEnhB
 b3HBsSFgsWcbBA/ymVt+96YwuRxlUJNGarF/bggEjniFY1Q7P7G83a2om1ZK/LOZeqMY
 FxWooX6R633/VHqOy0QsOA9WLL5d7NyuSwn1eON9g58XsrbpmKUbuVlFSmLE501YiGyd
 awrTXQqLzb/EtyplxoQMcV/Rh4QU0yPqe3HV5CCvPXU1YxAxJDkVweW3ZjfpFJ6LJs7W
 WIRQ==
X-Gm-Message-State: AOAM533fiT0/18jWwYe75klQrNPG0d6dxti7110lLp1g9gxHj1v1+WB2
 IIuBFJuOPuS30D8gUY4soOU=
X-Google-Smtp-Source: ABdhPJzB8OlXyKXA79AKVZis7NyP04IisboWQ1Cd1jz0jQqqDmOACm2MkLcPS90Phps9g64nMrhXFg==
X-Received: by 2002:a5d:46d0:: with SMTP id g16mr6560334wrs.229.1591302300380; 
 Thu, 04 Jun 2020 13:25:00 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 c5sm10129201wrb.72.2020.06.04.13.24.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Jun 2020 13:24:59 -0700 (PDT)
Subject: Re: [PATCH 3/3] spi: bcm2835: Enable shared interrupt support
To: Mark Brown <broonie@kernel.org>
References: <20200604034655.15930-1-f.fainelli@gmail.com>
 <20200604034655.15930-4-f.fainelli@gmail.com>
 <20200604123220.GD6644@sirena.org.uk>
 <21772111-fa1f-7a50-aa92-e44b09cff4eb@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <8c8d6007-e4c6-8484-9d40-3b679842be27@gmail.com>
Date: Thu, 4 Jun 2020 13:24:54 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <21772111-fa1f-7a50-aa92-e44b09cff4eb@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_132502_172809_92553A6C 
X-CRM114-Status: GOOD (  26.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 lukas@wunner.de, Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/4/2020 9:05 AM, Florian Fainelli wrote:
> 
> 
> On 6/4/2020 5:32 AM, Mark Brown wrote:
>> On Wed, Jun 03, 2020 at 08:46:55PM -0700, Florian Fainelli wrote:
>>> The SPI controller found in the BCM2711 and BCM7211 SoCs is instantiated
>>> 5 times, with all instances sharing the same interrupt line. We
>>> specifically match the two compatible strings here to determine whether
>>> it is necessary to request the interrupt with the IRQF_SHARED flag and
>>> to use an appropriate interrupt handler capable of returning IRQ_NONE.
>>
>>> For the BCM2835 case which is deemed performance critical, there is no
>>> overhead since a dedicated handler that does not assume sharing is used.
>>
>> This feels hacky - it's essentially using the compatible string to set a
>> boolean flag which isn't really about the IP but rather the platform
>> integration.  It might cause problems if we do end up having to quirk
>> this version of the IP for some other reason.
> 
> I am not sure why it would be a problem, when you describe a piece of
> hardware with Device Tree, even with the IP block being strictly the
> same, its very integration into a new SoC (with details like shared
> interrupt lines) do warrant a different compatible string. Maybe this is
> more of a philosophical question.
> 
>> I'm also looking at the
>> code and wondering if the overhead of checking to see if the interrupt
>> is flagged is really that severe, it's just a check to see if a bit is
>> set in a register which we already read so should be a couple of
>> instructions (which disassembly seems to confirm).  It *is* overhead so
>> there's some value in it, I'm just surprised that it's such a hot path
>> especially with a reasonably deep FIFO like this device has.
> 
> If it was up to me, we would just add the check on BCM2835_SPI_CS_INTR
> not being set and return IRQ_NONE and be done with it. I appreciate that
> Lukas has spent some tremendous amount of time working on this
> controller driver and he has a sensitivity for performance.
> 
>>
>> I guess ideally genirq would provide a way to figure out if an interrupt
>> is actually shared in the present system, and better yet we'd have a way
>> for drivers to say they aren't using the interrupt ATM, but that might
>> be more effort than it's really worth.  If this is needed and there's no
>> better way of figuring out if the interrupt is really shared then I'd
>> suggest a boolean flag rather than a compatible string, it's still a
>> hack but it's less likely to store up trouble for the future.
> 
> Instead of counting the number of SPI devices we culd request the
> interrupt first with flags = IRQF_PROBE_SHARED, if this works, good we
> have a single SPI master enabled, if it returns -EBUSY, try again with
> flags = IRQF_SHARED and set-up the bcm2835_spi_sh_interrupt interrupt
> handler to manage the sharing.
> 
> This would not require DT changes, which is probably better anyway.
Unfortunately this does not work.. The first time we probe the driver we
need to set an interrupt handler that is capable of handling a shared
interrupt. When we probe for subsequent times, we can use the -EBUSY
return code to know that we are in a shared interrupt context, however,
it is too late to change the first controller interrupt handler.

So we do need to know for the first time we install the interrupt
handler whether we will be in a shared situation or not, I cannot think
of any solution other than counting the number of available DT nodes
with the "brcm,bcm2835-spi" compatible string.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
