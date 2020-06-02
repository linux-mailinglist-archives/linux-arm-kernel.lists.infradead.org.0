Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B54141EC4B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 23:58:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2niKByg5NJ0Ivk9lrGpfC3kFzumIgNMsuBlxYtiP1WI=; b=tsr9E8Ef0T0Euw
	wJVeh0LosWQI9x7k2WjiAsuNrgUY95R0QBZDdcPTQNeIsPufwgJ8qMTI0UnawDQiuZgDJRNh+e5Dg
	AbqHPPxDIX6vwfh8LhXpwsfXOaRwhvzO93Hry+fFTlgAk2QLJbMIgfWhsOQzs4PctbUSf6uLbbrAa
	iT+sSgadjyPxFRkoIvon7u9xKIFLUqBUwERLk6XXiVjbTepQk5iigVLM/kL1Lm+lqXLYQSBLQqn2y
	qa5JiGy4gFzdOzsmQEhPN5mPre1bq/V4Zx9FAlLohaD2wpqCz+Ymv/ju32mTQh4uCr+TrqdEpzw1e
	uKtiPNFET3ZyoxsfGd4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgEuw-0005q3-Cq; Tue, 02 Jun 2020 21:57:54 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgEuo-0005pQ-8O; Tue, 02 Jun 2020 21:57:47 +0000
Received: by mail-wr1-x442.google.com with SMTP id e1so210576wrt.5;
 Tue, 02 Jun 2020 14:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=x7AN5XUNLuQTYg56C70ga61tHZwFYIHa2AHQltczmFg=;
 b=U0M5kO/8jyb/C740fEOYcR40kb1ux5x8uoxnQ9CONuX5Qf2+HD4+DUjHVay4hDowBx
 emMBMfxfr0F+a7T6SH/gc6www4bjdTGBTxtrIr+bz30R+/swZKMnVC/CfMPIImjvUB8f
 B+jsJqM46921FPCCtudANp8fvg9Ajl5OeqGjiehUVoiYQ9ovWDxjK72hDl+R1Ab/MV2Q
 O4aS08d2IrlbGJYXzYfOJNRJ4YhXUGrNCYKN3RckPEaPwYX0cCQi9RovM/eUg9DYZ7Yt
 +s7RQRJ6Ie3Mf8+yNLYSrqdr7fHtNKS47Um0woaZYpsO2nq9dMLoneWLzGRhnrlk2X7/
 /bGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=x7AN5XUNLuQTYg56C70ga61tHZwFYIHa2AHQltczmFg=;
 b=MW/3gvm9OWElVPZAW1b49CkLAyV/HCQ/JSAKW6IhYpgp20fDnG5CaujAGoqJQ+o7bb
 O+FOtllPtlggor6wv3I8Sis2clft1IDshyrJOjXWAQvjSLQWbusVsSrhTHrLJwoeUlVd
 e2UWbPGKlWBmOZv4hTzYcy6+XClrTbsxsuFRB7rZQC+7cXnrpLdgrUqlmQAfBxEGg1dv
 uZWrv9tnuMMgCgmF+BdES/Tzv2sKjQ7L4lXxL2zda5v2Gc3BnFNGJYsg5mOzHz8h6RS9
 OOBY+hgdNL8qz/CEXlOT4HJfAB0fIrETDiajYyE0ilsf4cH6F53ZlXgctgVjdp24km2S
 3F0Q==
X-Gm-Message-State: AOAM533/HLOh2MmIhqrleut7iPn1GJJdc6bWvuUVzIiMkmPU5iEtbJN6
 wFPGzsXhxIPm6KNgN+Le0lM=
X-Google-Smtp-Source: ABdhPJy4YSjVEqczNAzcxEmsNN/lUYdvDuqjTKqzm2pWbMKypz5vH+9xQ5nc74+DxdvTResbkxAWHA==
X-Received: by 2002:adf:e58c:: with SMTP id l12mr28203147wrm.34.1591135064541; 
 Tue, 02 Jun 2020 14:57:44 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id b201sm208844wmb.36.2020.06.02.14.57.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Jun 2020 14:57:44 -0700 (PDT)
Subject: Re: [PATCH v8 4/4] USB: pci-quirks: Add Raspberry Pi 4 quirk
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Mathias Nyman <mathias.nyman@intel.com>, Rob Herring <robh@kernel.org>
References: <20200505161318.26200-1-nsaenzjulienne@suse.de>
 <20200505161318.26200-5-nsaenzjulienne@suse.de>
 <7cbe4da8ba4a1524824473f8c58720f412a00fc2.camel@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <edcbc0a6-f901-d8ff-748f-73017397799d@gmail.com>
Date: Tue, 2 Jun 2020 14:57:40 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <7cbe4da8ba4a1524824473f8c58720f412a00fc2.camel@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_145746_302613_1D75741B 
X-CRM114-Status: GOOD (  20.31  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: tim.gover@raspberrypi.org, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/2/2020 3:05 AM, Nicolas Saenz Julienne wrote:
> On Tue, 2020-05-05 at 18:13 +0200, Nicolas Saenz Julienne wrote:
>> On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either be
>> loaded directly from an EEPROM or, if not present, by the SoC's
>> VideoCore. Inform VideoCore that VL805 was just reset.
>>
>> Also, as this creates a dependency between USB_PCI and VideoCore's
>> firmware interface, and since USB_PCI can't be set as a module neither
>> this can. Reflect that on the firmware interface Kconfg.
>>
>> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>> ---
> 
> It was pointed out to me on the u-boot mailing lists that all this could be
> implemented trough a reset controller. In other words have xhci get the reset
> controller trough device-tree, assert it, ultamately causing the firmware
> routine to be run.

That is actually a clever way to solve that problem.

> 
> As much as it pains me to go over stuff that's already 'fixed', it seems to me
> it's a better solution. On one hand we get over the device-tree dependency mess
> (see patch #3), and on the other we transform a pci-quirk into something less
> hacky.
> 
> That said, before getting my hands dirty, I was wondering if there is any
> obvious reasons why I shouldn't do this, note that:
> 
> - We're talking here of a PCIe XCHI device, maybe there's an issue integrating
>   it with DT, given the fact that, as of today, it's not really represented
>   there.

You can always provide a PCIe device representation within the Device
Tree, this is not very common, but it is sometimes useful for e.g.:
assigning MAC addresses, see this example for instance:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi#n647

(does not assign a MAC address, but it could). This should allow your
XHCI pci_device::of_node pointer to point to node declared in the Device
Tree. There you could add a 'resets' property accordingly.

> 
> - There is no reset controller support in xhci-pci, maybe there are good
>   reasons why. For instance, it's not something that's reflected in any way in
>   the spec.

It seems to me this is not usually necessary for PC systems, so it was
not really needed until now. Maybe you can write a small wrapper around
xhci-pci.c, similar to what xhci-plat.c does which is responsible for
grabbing and releasing the reset.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
