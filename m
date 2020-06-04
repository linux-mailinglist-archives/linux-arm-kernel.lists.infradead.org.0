Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 520BC1EE837
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 18:06:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9XWudaBrblSrxl/Em81sur/C2etmUrOdQiIcz/U47Oc=; b=jhETn5lLirzKgX
	6NhIraSNKQlhmhGvseoK6AKk+W0LJEZDVlTF0Gsijauu4lksGTbEdLBYcctSxeLIo0UcTe2BeOZVf
	YmLu7FkvdYy1yddn73kq2ZzFRCL5Dr4Y6YpFM6ddWbTscFGMWu5PmKhaE+P44A8pPe/S4obd/IOry
	vyOfjFEPMINjBm6bwNFGbYRcEG+xEWOjqM90EInWO7wEcnYxQAPVY33GbdsEap3TTaGc2v0wGzx/j
	UAOp+VycAXKZtDzRO+ySgpQoBF6264s/VWUS7z05TX8s5ZSPvVu9NFUcsInlabVWHjkloTW1aCi8y
	S7CR7SvfzGu1PDTtKu2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgsNQ-0003x8-7D; Thu, 04 Jun 2020 16:05:56 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgsNK-0003wl-FS; Thu, 04 Jun 2020 16:05:51 +0000
Received: by mail-pl1-x644.google.com with SMTP id g12so2348981pll.10;
 Thu, 04 Jun 2020 09:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HAWfVJ/MMzDDKipytKTsDnZ0G7qcc8KGtxLvXJOdNtk=;
 b=Vr/I6zf9wpjvEwDaJRBX1+2aezi8wRyFreAa10APW8X1OHOEJVUF5Q7ARa3lfsQxV5
 PonhEHPXMbOZ92Hv3xwguR8YsivIs6B6pm4J5X1yPTPMefCXweIlZEILCdduTmW+yxyw
 OhnEBT4jsdV70Qrr/oA/Ze0IpOOH9DdR2SA5hFnhkya/j7r/2psfkWCwVhcqQIt/xwQy
 shgoaSohosf7QXYHzM2Sp3IzNFwxzNG2HrlEmLya+hN+YPiSKSe2J76DTQQC9iYlPsjv
 N7o0wJbseIrr7hrSLutCvvD3KwHNTA/MPX1Ln8fg20ENbh/0qci1FwGRVgYfXf/irWnd
 uUeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HAWfVJ/MMzDDKipytKTsDnZ0G7qcc8KGtxLvXJOdNtk=;
 b=baAmmmLRpJjfjPZQWfwNKg8YrlGcFHSW774tjgmbYwHmq/ilqdDnJKvCPjNrNrjebH
 /zP/KIry6WCqxI3cV1LYQoj/6fjSGTjjDVx3xcQRmQ/JQ0cXCy2MRaY8d406KLlF5Hg4
 Scy7/+xj521ybgsiQukTdbcrb2RPEK35k6iSL1MdLDsYst+tYfKFecToupIkYpJDoEk9
 TxYWVC1yAEfHnjbbPnEQdzXWlq0ONpq4hWcr3IKvB7xMD75WszputuWMeS540Yplz9a3
 AL0F+iZbzcEp72AuEkxQm4bo0dl40C5C5/z5lusEi3X4KP4LgsuUd6g3XiEaxuI+YO6H
 u86Q==
X-Gm-Message-State: AOAM532ID7AjMB+1lal6Mx0snykWwVn8pCrGlsC4XSAiPBqJLrFgItUT
 3R4ncUkGUH+vt+6byndDTHY=
X-Google-Smtp-Source: ABdhPJzDmXwGbLzqmN4JtHAm4tslIFeo872mF9VRUt+Ly23GpPsGhckeyoYK7qV6BFeOQmVssm8UQQ==
X-Received: by 2002:a17:90a:5806:: with SMTP id
 h6mr7122674pji.66.1591286749669; 
 Thu, 04 Jun 2020 09:05:49 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n8sm5559105pjq.49.2020.06.04.09.05.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Jun 2020 09:05:48 -0700 (PDT)
Subject: Re: [PATCH 3/3] spi: bcm2835: Enable shared interrupt support
To: Mark Brown <broonie@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>
References: <20200604034655.15930-1-f.fainelli@gmail.com>
 <20200604034655.15930-4-f.fainelli@gmail.com>
 <20200604123220.GD6644@sirena.org.uk>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <21772111-fa1f-7a50-aa92-e44b09cff4eb@gmail.com>
Date: Thu, 4 Jun 2020 09:05:46 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200604123220.GD6644@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_090550_535279_2EACA4F6 
X-CRM114-Status: GOOD (  25.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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



On 6/4/2020 5:32 AM, Mark Brown wrote:
> On Wed, Jun 03, 2020 at 08:46:55PM -0700, Florian Fainelli wrote:
>> The SPI controller found in the BCM2711 and BCM7211 SoCs is instantiated
>> 5 times, with all instances sharing the same interrupt line. We
>> specifically match the two compatible strings here to determine whether
>> it is necessary to request the interrupt with the IRQF_SHARED flag and
>> to use an appropriate interrupt handler capable of returning IRQ_NONE.
> 
>> For the BCM2835 case which is deemed performance critical, there is no
>> overhead since a dedicated handler that does not assume sharing is used.
> 
> This feels hacky - it's essentially using the compatible string to set a
> boolean flag which isn't really about the IP but rather the platform
> integration.  It might cause problems if we do end up having to quirk
> this version of the IP for some other reason.

I am not sure why it would be a problem, when you describe a piece of
hardware with Device Tree, even with the IP block being strictly the
same, its very integration into a new SoC (with details like shared
interrupt lines) do warrant a different compatible string. Maybe this is
more of a philosophical question.

> I'm also looking at the
> code and wondering if the overhead of checking to see if the interrupt
> is flagged is really that severe, it's just a check to see if a bit is
> set in a register which we already read so should be a couple of
> instructions (which disassembly seems to confirm).  It *is* overhead so
> there's some value in it, I'm just surprised that it's such a hot path
> especially with a reasonably deep FIFO like this device has.

If it was up to me, we would just add the check on BCM2835_SPI_CS_INTR
not being set and return IRQ_NONE and be done with it. I appreciate that
Lukas has spent some tremendous amount of time working on this
controller driver and he has a sensitivity for performance.

> 
> I guess ideally genirq would provide a way to figure out if an interrupt
> is actually shared in the present system, and better yet we'd have a way
> for drivers to say they aren't using the interrupt ATM, but that might
> be more effort than it's really worth.  If this is needed and there's no
> better way of figuring out if the interrupt is really shared then I'd
> suggest a boolean flag rather than a compatible string, it's still a
> hack but it's less likely to store up trouble for the future.

Instead of counting the number of SPI devices we culd request the
interrupt first with flags = IRQF_PROBE_SHARED, if this works, good we
have a single SPI master enabled, if it returns -EBUSY, try again with
flags = IRQF_SHARED and set-up the bcm2835_spi_sh_interrupt interrupt
handler to manage the sharing.

This would not require DT changes, which is probably better anyway.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
