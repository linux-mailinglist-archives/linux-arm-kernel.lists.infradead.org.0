Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F01C20D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 14:46:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8CMml7TAaMN/kni6EosPWCU8u07L3/HfMtOoRcU7oU=; b=YZrlaK9XnzlfDO
	N7KZg+POt7nL6hFhqM/uTmf2ABvJy6/ZenCdrvOSdmIjJxKpSk7UziXk5IHUf9AnuAVldjcn4rzVr
	cJPcI96l5iX5DtuVSnyzf33Cre/iLFFD9DJOqozsD4p8b9VGmAzhr0l3AyNrT/QyHc/Y4BnLuKB7L
	Jz4HoFxizSbfWSpLSQ09RHRhz3jmUskr0wZ8SRXQs0pdrvMvqzZUbzP104ztAzCrbj+SSnjB8mtYL
	zQ/8LhQ1X4dSGVmrMs7CJ20i07jy6g5p6yZepYYf7mVh2bJRdjMYGqW6YGvdLV9VteG7TO4lttyk0
	SEW4j328W7+QYo/U9x5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEv4B-0002Zk-R5; Mon, 30 Sep 2019 12:46:15 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEv3m-0002NR-1B
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 12:45:51 +0000
Received: by mail-wr1-x443.google.com with SMTP id a11so11177888wrx.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 05:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PJhrjEXe+xzHtPNUW70+nF7eYn4Rt0IksQWllhw/WAk=;
 b=pZLd1h5JkC5nTha34R5MhAAXeVrRWcnpfELhNWVUu59JR2vi5syyK9nupCVsgC7MCT
 gutPdLdtMYXZsoUONUoKxKoIxEX9wnV5C1ju+TQp98EuaUsMb+Vxeg74fIW3+712b2HY
 1gfiItyyK7U2FfQ/61GayJVkLlpDLeptefiiH6waFYNG0gSv4DSMbJTXZzCbYRhn6Ma+
 1t/J7wiWB468U2GNtegDa6UDumTZ1NxSdRN8XRwCytRUmqXVbbk8Uw9mNXDeWwJzLfsm
 JT3UzFJ7qDi6M1yIw38UP4FwLVGqFPktkFn+3m2BHB/C4BqsNjdCFp0AhhIuuIO784b7
 gWnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PJhrjEXe+xzHtPNUW70+nF7eYn4Rt0IksQWllhw/WAk=;
 b=j33LLKN4smrX56N2CtXTjseJKCUq4Fc/XJPLJA+wqaoFe1W6joSU6+1mNaftG1e+A7
 waGBzuPW01sYn7yoQ55tSH4ZzYDLvSywfCt9cGHap+7Dx0VLdnX6icUnDc/ycVinRrjx
 VgrahsJKwYvDlRhGRbJy67HLWR+zPNsj+Kkw+YklfvEQstioIVDKHDf+cujwWlpcM8eX
 87gmBHMVc9TKuYdWLVKf5dFPLylNycsXvtH/yvwjcLd7BDgxih1fNS/n81CuDhMJFHCQ
 zndylxdbHSj/sEQKfg5VhesaGxJCXUWhN06z89gdRK5uvGKaf1/Oz2LA2kC/tcx2bAEh
 fIPw==
X-Gm-Message-State: APjAAAU8wsY7xUsSpUbx2yQtWHgXEzi21bzwx1hbewnW/W+AizNDFK6r
 xVnH79E1nhdiGQ3AU2E1KDE=
X-Google-Smtp-Source: APXvYqwvpvSEiCuQhm0DFtQunuc79toJaZNaQKNaiWTtRWTp9MTodBak09Q5J2Va4IMdxHBpyrwHsg==
X-Received: by 2002:a5d:4745:: with SMTP id o5mr13169825wrs.125.1569847548549; 
 Mon, 30 Sep 2019 05:45:48 -0700 (PDT)
Received: from [192.168.1.4] (ip-86-49-35-8.net.upcbroadband.cz. [86.49.35.8])
 by smtp.gmail.com with ESMTPSA id
 r7sm12623807wrx.87.2019.09.30.05.45.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Sep 2019 05:45:47 -0700 (PDT)
From: Marek Vasut <marek.vasut@gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: Add /soc dma-ranges
To: Rob Herring <robh@kernel.org>
References: <20190907161634.27378-1-marek.vasut@gmail.com>
 <CAL_JsqL47dQT-P78j4Ph61fsgA45Ha0AJjDajiMk52yFj++s+g@mail.gmail.com>
 <CAL_JsqK+SwX8Lu+-4UgpLVxL05yTcs8Af9mPVHqzbf6+HF9v3A@mail.gmail.com>
Message-ID: <0bf7c8c8-d03e-c08e-4879-3d3a2fb90ca7@gmail.com>
Date: Mon, 30 Sep 2019 14:42:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqK+SwX8Lu+-4UgpLVxL05yTcs8Af9mPVHqzbf6+HF9v3A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_054550_070505_E52D195B 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.vasut[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 Wolfram Sang <wsa@the-dreams.de>,
 "open list:MEDIA DRIVERS FOR RENESAS - FCP"
 <linux-renesas-soc@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/24/19 12:33 AM, Rob Herring wrote:
> On Fri, Sep 13, 2019 at 10:14 AM Rob Herring wrote:
>>
>> On Sat, Sep 7, 2019 at 5:16 PM wrote:
>>>
>>> From: Marek Vasut
>>>
>>> Add dma-ranges property into /soc node to describe the DMA capabilities
>>> of the bus. This is currently needed to translate PCI DMA ranges, which
>>> are limited to 32bit addresses.
>>
>> FYI, I've started working on this problem and issues around
>> dma-ranges/dma_mask. Hopefully I'll get some patches out next week.
> 
> I've pushed out a branch here:
> 
> git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git dma-masks
> 
> Can you test it on Renesas. I don't have a real platform having the issue.


With the following patches applied:
      https://patchwork.ozlabs.org/patch/1144870/
      https://patchwork.ozlabs.org/patch/1144871/
on R8A7795 Salvator-XS, works fine.

-- 
Best regards,
Marek Vasut

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
