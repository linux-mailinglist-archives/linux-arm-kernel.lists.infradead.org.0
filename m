Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE411EE8F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 18:56:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TbgsiUsYySYmz4oJpnZxyz+E861NKtn0UF6Y/AxRp0Y=; b=hm2fOo7lrFoUhi
	33jfRvYcrGNZqu2boQcJhGFlqg126PFlVGOvFGF0dRNr7LBvjxES73FGLtda46Pu+zoLt8q0giSuc
	/OG+qTa4sYzz5wDhHytDHSN3CCq39RwtqANBW2Oq8CkA25Sdch4nKZSc+BKPnXF3AIDAzzhnWuNiz
	JWZCheSx4INPzrivwrUfC6Q7G8ZvXspcvs/zUkoP/HBRNXFkX5v9M29a826ipGLjhPVb2xQahYlaH
	mTCOTH5QmAiz4Buaq2H0mRDpLtKl3ryWnmfyYwfkOb6oOIlATxio4hpT7id7Va2M/I2rCPPoqx7B1
	CgkTKDVQC1F6/Eu6eccw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgtAZ-00015A-Sl; Thu, 04 Jun 2020 16:56:43 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgtAS-00014m-HP; Thu, 04 Jun 2020 16:56:37 +0000
Received: by mail-wm1-x343.google.com with SMTP id d128so6411757wmc.1;
 Thu, 04 Jun 2020 09:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yyo4KyvNLCp48hTrE/2wSjir4V0WrNaYX/MRdBgNvDA=;
 b=IU4b3IdczSWQInpvnunrpURYrLt9dtAraztan0YpZXMhsrIooTfV+cKrzsgD2w8NrH
 iO2lSkobzNPiBIzzqRROjNx1d/yDEsMzTAjW2Vgbp0smWuVh523AUxRitJbak7koxdmE
 zUHUvgri1wv2ok4NsfZxp57OGAtOzXwiu3cJRE3+kiNAIChRKj3TeKssKcv1GDezBmKy
 ABRcYshhW7ucUX9J1BY1WCqTzADIWKfscnyEGrzmS4gyam8AmvfevbqgsD8/ZkrNYft1
 aKYcdNw1WEx1nR8BvGl4sQrAKB1wPYUruVW7vgBcLv28VZ7xpVRRwfu3i/hKn8TF/TDR
 c+TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yyo4KyvNLCp48hTrE/2wSjir4V0WrNaYX/MRdBgNvDA=;
 b=eAz9vN20GpMr/BRB4gRO/kMruYjDXWbVgZp/RWYROiVAC5jGD6YrPsvlke5j/NMsaK
 8h65yJV5Fpao4iq/0/L0fVaHdzulieVqKw7QjR3dt+R+JybZckIxCa1CQgT5txOhHode
 9dPhYySfGMQdnKBUOI5s8ZTgI8iF7ztOtCzwJpiCf0j7QOJWR/6+Tc3CbRLybOy5221b
 mhzq/ocfwRCgxJObgnkEnNJdjTn6+TfEBGVJ6SYCg+prMdMPHWQRYYPeH4ZB+uloQw5i
 KZUsyeXzvZlhlS2mcx63l1mZkWPqmhbxs8robw+Ux6tzcWbM6bxIa7QIHLg9hW+g7JBp
 c6kA==
X-Gm-Message-State: AOAM533ogYtWguwl5MA3KbWloG8YY/Jb1fRJHTtaZLifMiMDoAoCDdk+
 MdncxQ2jQA6nZMIrBWze7y0=
X-Google-Smtp-Source: ABdhPJyxMsabr1zTTvpkZOvWyqmukJw7LjSZh+pHXhWsCUNL2Y0pldact5JckuW0x6wB8nxIGpJFGw==
X-Received: by 2002:a1c:408:: with SMTP id 8mr4796343wme.15.1591289794801;
 Thu, 04 Jun 2020 09:56:34 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 u13sm7751254wmm.6.2020.06.04.09.56.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Jun 2020 09:56:34 -0700 (PDT)
Subject: Re: [PATCH 2/3] ARM: dts: bcm2711: Update SPI nodes compatible strings
To: Stefan Wahren <stefan.wahren@i2se.com>, Lukas Wunner <lukas@wunner.de>
References: <20200604034655.15930-1-f.fainelli@gmail.com>
 <20200604034655.15930-3-f.fainelli@gmail.com>
 <20200604042038.jzolu6k7q3d6bsvq@wunner.de>
 <15c3995e-87de-0f2b-3424-5dd698b181d3@gmail.com>
 <2978874a-fe1e-3b07-381d-55dcb00ecca7@i2se.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <903cf9fc-d493-583f-a3da-42f58cd7b474@gmail.com>
Date: Thu, 4 Jun 2020 09:56:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <2978874a-fe1e-3b07-381d-55dcb00ecca7@i2se.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_095636_594964_C73AA83D 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Mark Brown <broonie@kernel.org>,
 linux-kernel@vger.kernel.org,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/4/2020 9:54 AM, Stefan Wahren wrote:
> Am 04.06.20 um 18:40 schrieb Florian Fainelli:
>>
>> On 6/3/2020 9:20 PM, Lukas Wunner wrote:
>>> On Wed, Jun 03, 2020 at 08:46:54PM -0700, Florian Fainelli wrote:
>>>> The BCM2711 SoC features 5 SPI controllers which all share the same
>>>> interrupt line, the SPI driver needs to support interrupt sharing,
>>>> therefore use the chip specific compatible string to help with that.
>>> You're saying above that the 5 controllers all share the interrupt
>>> but below you're only changing the compatible string of 4 controllers.
>>>
>>> So I assume spi0 still has its own interrupt and only the additional
>>> 4 controllers present on the BCM2711/BCM7211 share their interrupt?
>> Correct, there are 5 instances, but only the 4 that were added for 2711
>> actually share the interrupt line, I will correct that in the next patch
>> version.
> 
> No, all 5 instances uses the same interrupt line. Please see my comment
> before.

OK, but this is not going to be needed, I have another solution that
does not involve device tree changes.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
