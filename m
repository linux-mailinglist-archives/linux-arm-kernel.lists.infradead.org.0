Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63887161CED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 22:44:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1fmKbyT3o8M4c9vj9AvaonDwmpmhMjkuTp9j1ccUSX8=; b=MGWWsFxsgcqgZjOMnrv8WOKU7x
	7fwp2CZU56OYIUePBeBCS6IhuvYJQJcT/Pnx67n1ii+hU43hzau+OMtqmkKZ5Re1CeKCFslLRXkjR
	XeWPey+gM+hpShWrk4RPCAM02fJ5KLMH8qhH5wHRs6Efl30mYYx3lAwfWyLlR63shSFeuW/ysH9IO
	MMENTiLqxtdRJaxip06SyKRwcPpH6nKE+h3rVbs9pEhw/V5jadZiMHJoJfCTkRvR9NT6z/nnAk0iW
	lIlB1lkNlJJLbwjm8wZ0vCbjWtps4ZvMWW7T5ajQaF7kHdiLWWlxsggX4yTLJUh3S05A4GC/304pZ
	+WCifZ5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3oBn-0005HJ-6s; Mon, 17 Feb 2020 21:44:27 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3oBc-0005Gl-6m; Mon, 17 Feb 2020 21:44:17 +0000
Received: by mail-pj1-x1042.google.com with SMTP id e9so81672pjr.4;
 Mon, 17 Feb 2020 13:44:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=w27qsuZx10Vbc69sZj4Y3pLHnEYu9JJkWVQ759WZqtU=;
 b=UZqg+07MWOqDsnws7h2aUem4u/TKIUGWLEhMcVMpkH9eXKTitWP0RkoR7vGmBsNp8m
 POzBFT7mAGEUZRdxrHn2bhSfmmUIBiUFRQORhC5q1LgOLEBqyppecBoCYmJ2aIoIydi6
 73lAtAdDAEpmIs9Ql9pA6iqjKshfKUXCBd82wc+Ob3il4k0xOxkzEq8KLEOdnH5PkTuS
 KBB8vE5rL0cKTD4bNVvB/0QzRi9m3yuZKPV5Kf8xfxMlnEhfb7FKJCRJ8faXCPMGGtxw
 L+TEs/G2JysfOLxEoydIYFVSn5MJi7XQxhsvSi5hDrmba0Yfs5ZFtW4yoHT86MjkpnlB
 DOEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=w27qsuZx10Vbc69sZj4Y3pLHnEYu9JJkWVQ759WZqtU=;
 b=EB/tnhI1XwTKiKu/NRfu9neE5YxPSYPVvtb1zthnEPqbhezRY6Qz4UtPbaocmgkqf1
 aFv+SUgwUK5uzvtHR/NyRynYDmiHIk3lNNNlmpjBT+mqAUax38dDJr5ooHVCQvoIDHHr
 /Kf3ITWhUL4PKWm7cZA+veVmfTMaWDhDEipXtK0MghELK+12r3aRFv+2+VOzicYkDpd0
 bCndLr9namnSCjUasio+KsBxvR0pe7yMCZN+R+IvK2N8u/0hzwaRH/AkZ2pqwC2+l9OR
 ZivW4LBwaXaJF+xVHWACvaQLiDLlJwb02Dyv4Lh7lcyMdGRV9EmZs947ktvLPYaOvjMo
 nE5g==
X-Gm-Message-State: APjAAAUay55GwZ/kNLbKCqTCjCYHG4OgWBs04lzC5h3AcNZFdqU+cYAR
 T16HS5nCuY6lIh8qH52h/4Q=
X-Google-Smtp-Source: APXvYqyGI/8Yqw3R47rMKwanH0TzIGNPPefYMJrfqYHx6FaudyVxDpIa20dsA8w3QY/IfaQ4p0jokg==
X-Received: by 2002:a17:90a:d986:: with SMTP id
 d6mr1230336pjv.78.1581975855591; 
 Mon, 17 Feb 2020 13:44:15 -0800 (PST)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 w26sm1358047pfj.119.2020.02.17.13.44.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Feb 2020 13:44:15 -0800 (PST)
Subject: Re: [PATCH] ARM: bcm2835_defconfig: add minimal support for Raspberry
 Pi4
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Stefan Wahren <stefan.wahren@i2se.com>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <CGME20200214151840eucas1p2ccd15a69aea02a20eda1e4b6e9c8f44e@eucas1p2.samsung.com>
 <C0LZGU1IU7QO.9VKWHWJ56XZV@vian>
 <9330d511-dc7d-8d67-043a-acee7e6ebd73@samsung.com>
 <5eca1bbe77c8731f1eafd11a3bf0df25196d08d4.camel@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; keydata=
 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
 a9BQwACgnzGuH1BVeT2J0Ra+ZYgkx7DaPR0=
Message-ID: <d9833996-3163-fc82-3d0a-673fd5d1bd80@gmail.com>
Date: Mon, 17 Feb 2020 13:44:13 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <5eca1bbe77c8731f1eafd11a3bf0df25196d08d4.camel@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_134416_341181_FE24CD73 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2/17/2020 12:18 PM, Nicolas Saenz Julienne wrote:
> [ Adding Florian to the coversation ]
> 
> On Mon, 2020-02-17 at 13:22 +0100, Marek Szyprowski wrote:
>> Hi Nicolas,
>> On 14.02.2020 16:14, Nicolas Saenz Julienne wrote:
>>> IMO bcm2711_defconfig if the last resort solution. I don't think you can
>>> do bcm2835_lpae_defconfig as RPi and RPi2 SoCs don't support LPAE.
>>
>> Okay, if you want I can send a patch adding bcm2711_defconfig.
>>
>>> An intemediate solution is being discussed here:
>>> https://lkml.org/lkml/2020/1/10/694
>>
>> Right, I also agree that multi_v7_lpae_defconfig is needed. Best would 
>> be to have both (bcm2711 for quick tests of board-dedicated kernel and 
>> multi for distributions).
> 
> So I understand you'd be creating a new bcm2711_defconfig based on
> bcm2835_defconfig plus whatever is needed. Sounds OK to me. It'd be nice to
> have a small kernel config to do bisects with.
> 
> Any comments Florian, Stefan?

If we can make bcm2711_defconfig a fragment that applies to
bcm2835_defconfig then we are not maintaining a completely new
configuration file and we take advantage of all existing coverage from
bcm2835_defconfig. A completely new bcm2711_defconfig would be hard to
justify IMHO when multi_v7_lpae_defconfig is sort of what we would prefer.

BTW, if you register the PCI outbound window as part of 2711's machine
descriptor map_io callback, you should have it trickled down from
iotable_init() -> create_mapping() -> __create_mapping() ->
create_36bit_mapping which should allow the creation of such a mapping
into the 32-bit virtual address space of the kernel. You would not quite
be able to use the entire 4GB of DRAM in such a configuration because
your virtual address space already needs ~41MB of register space + 64MB
of PCIe outbound space but at least bcm2835_defconfig would keep working.

NB: this only works AFAICT if you do this at map_io() time, not sure if
ioremap() will accept a >= 4GB physical address.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
