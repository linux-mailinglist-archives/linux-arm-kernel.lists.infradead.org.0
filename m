Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CACA1C46C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 21:06:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sMY7HoChq2bPs7sYX26T4hV7nlhz3oryMEM8QTf+nH8=; b=bSU1eH9MhrJ/im
	r11zV2J/FDA7FZmi1MOa67doyuiGatYxO5AHqXgmj0o0yYjIWzHAhbkodngA7kQ3OQFVem0H4PMQz
	z91qrjg0xbZyWj6rTN/zivb6muvJCO6kif13DDvwNBqUXp6jp15CVdwd3OSrSy7l34++BVDmehFES
	/Yqd01w6q6xe1/GfMXrhYQNMAwDpY1P7FKos+ZD4gOpf+bSJj5meUGon2bFSn4rKTYgO1UTTwTcOz
	LQ4DVXUgavAv07EN07GCsMRJyeLse9wa/oofuHMgl+DQkbl7Z2/qAWq5dPx8xiVInVGKfujaOWymL
	474q1SE/6MRxEKNdkHpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVgQM-0003xG-3M; Mon, 04 May 2020 19:06:42 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVgQB-0003oM-Ft; Mon, 04 May 2020 19:06:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1588619183;
 bh=C+isCjntLYt9kqlli5LSKtDu8IdWLHTZ5RJUWs7zbXM=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=UHnf72akfI+ig976rUPUvYEE/g44QCfj5/+G+3sMt1sXdGrPRWSKofoPKDgiRn3TA
 tdv1hD0HR7F2fWWNDS8EQJgF5EG3sTw7fzdUjDHyEmeXsjSohNFYAcNaH1rdu55SEv
 M6X8XMRxOATlr337Obt4+JEARXw50d88WQOTFb64=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.164] ([37.4.249.134]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MF3DW-1jKfvL1y9Y-00FSFH; Mon, 04
 May 2020 21:06:23 +0200
Subject: Re: [PATCH v7 2/4] firmware: raspberrypi: Introduce vl805 init routine
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, helgaas@kernel.org
References: <20200429164734.21506-1-nsaenzjulienne@suse.de>
 <20200429164734.21506-3-nsaenzjulienne@suse.de>
 <5fce05ca-5d7e-f4cc-be34-0764fbe4edff@gmx.net>
 <d105712418b93ebce7c0498d05eea77171892366.camel@suse.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <b9b02ec0-0cb7-995a-40ce-ed38b78dfe46@gmx.net>
Date: Mon, 4 May 2020 21:06:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <d105712418b93ebce7c0498d05eea77171892366.camel@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:JZFObt6Lk3DQRXt5KLfTd6EmGQIybewYIU19LjW8nO9jbS567Pa
 shT7uvbZLy3upf6B2GVztaX/RCAkdmnOiLCzmrl3dxPY7dM8awJ2+2Ue1OgQiCinNqEP5Gz
 805JHhEefUDbD+u8N5NXVpu03EunuqFgq0HDp2DmoDmnQ0dxyNfBGX5Ph5LLD7I+dKrrqfV
 32Uh4GWXZ7afJ7HmSpVUw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8ctWgi5jAtY=:Ir/e6Xdi2cSRtGMJ+KSoIy
 c+oPGotCSd0Sh3VpUue+y1jolaLc3f5equZDJwXF5RHsf+veLkJN0dVkRULMEjhpPIpYunJKQ
 FaGks40bInyiWe0DCFP0dZr/gYgh2TKrOlI7Z3p4DUxsCr59sUqzAo47sBDoufvVNGUYB+Fcx
 tbtelpQq8+z/WYP8jWUnxOrMn1IYrV7YtxkN3lhyGtEju5EAceu9I8owFdujj5+dNpibJmbIy
 lyNbQ5FHdjmS0xjIHdW1NndW7Vy4NSatxaub6o76E4wbwSQdOy2QjZCHuUXEOswJGPL22TcIw
 xAsRYX+BCyyZvyOuF5ig3zammnavIh8Zp5Fb5yAM2Slt2bJAKk29WZ39jfo9ySCdO2mT4l9eb
 1I8Ecenbf3o1oTS7gwTp4ePwzlgVYSbai4izB6UkcHRPLgZ0dNlgMSiY5zwiPT9/qTgsxEiaM
 FqymPDrZ3otiNCiMvfQ4+YTBKxDhgqbR9QoL+1KTwc91NT0JcvPfCC8rkiKB5ZchGaW+sPNBB
 /RafI4PpXK/WZfHwHnknsFg2xu0hsgrfi/2uF3T9WF8swwkpTz7D+9A/L4Iuc2n/lNy9gx89j
 +M9S414OEW4rTuwdu1IF/QpmXfO8u8B7TnWcOErLu5NbRmmJmyqQ5232TeM4RKhJ7CiUSrnhC
 h9Bv8x+WMNAjBuuhA2yj4+Ca5WgyaX7/ZsizkMEw4WZQHoW1VOuznymeRe0DVLzgb9UYLV5jx
 2RoOoWDfRi5ersuUxfCWJIokjthUGi9Do+cEmK32bquozqQOY7peSM1/ziNOztk/Clfno5BwW
 vRvzjAr7/MflYO+DT7lw3o5CmXKJdN7E9UGyxAjkpH/DDJgs2cHkcXfyV72Fxy8hSCU1K4npg
 r8x/hbhmo+kGGmUgFI5bThflHMsURunQ/uoMle9lzEW1YTfv2BDwJG4N1ZqAIv0GC8LtHnLvr
 kbHk4dZkWw/30g90Q+KntOMpeCO2lyEdKKGRpaOOSAYdIrOyblvKwWaIfdj3YerwKdjUab0hm
 PlA8UyYVWrumqZCgirbAo+uqgS11j0oWj0vspgVk9Qjf9vUNZwx0LGvK0kqH2gXpHWDv4+/2S
 CKa/bdzMXbOLbTjoIu3Fv0Ai45WIz/M3WGPBr1lGzXH/zPFP9oTqdfyCCDlP5BVyyFexaL9h8
 61kbkM8Q6vNhfWK2fU/dLsIiUkJF8RHrzjwD0jv/SvlowqtX2skClroSweUYx0ROsNc20O1y0
 yP+28L1sA+veTCg9S
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_120631_872961_4CB7965D 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wahrenst[at]gmx.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.15 listed in wl.mailspike.net]
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
Cc: f.fainelli@gmail.com, ScottBranden <sbranden@broadcom.com>,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, RayJui <rjui@broadcom.com>,
 tim.gover@raspberrypi.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

Am 04.05.20 um 10:59 schrieb Nicolas Saenz Julienne:
> Hi Stefan, thanks for the review!
>
> On Sat, 2020-05-02 at 11:05 +0200, Stefan Wahren wrote:
>>> +	if (version)
>>> +		goto exit;
>>> +
>>> +	dev_addr = pdev->bus->number << 20 | PCI_SLOT(pdev->devfn) << 15 |
>>> +		   PCI_FUNC(pdev->devfn) << 12;
>>> +
>>> +	ret = rpi_firmware_property(fw, RPI_FIRMWARE_NOTIFY_XHCI_RESET,
>>> +				    &dev_addr, sizeof(dev_addr));
>>> +	/* Wait for vl805 to startup */
>>> +	udelay(200);
>> I know, it makes it harder to read but do we really want to wait
>> unnecessarily if rpi_firmware_property failed?
> Yes, I figured that it wouldn't hurt much at that faulty state, and you'll be
> waiting some extra 5s further down the line in quirk_usb_handoff_xhci().
>
> But if you feel it's more correct I'll be happy to change it.

no, i don't insist on that.

Best regards
Stefan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
