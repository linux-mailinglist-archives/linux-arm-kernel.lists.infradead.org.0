Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66989144C80
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 08:33:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b835XXYwDKs9qfioFe5C/euryGqTIcixHGzkgt678D8=; b=lBAjFuX5gqr30+
	N3dZMBO2vQFoNbGdMHAMWThmZjb7KFMi3KNpof19YQB1rdXGEKKRGdVRDOPM691S841Ny5kwjLlqm
	b1RaUWSzx5Dbn3p6faiX5sJVgL3jjM2nstNT9eMvOdaEo0YG40q+Xa/adGrXrZzSNcGerjDqzPlno
	2ZvWTjD927MEQON657hH7LkB2/seUg53Tudnnu21YHqk/vy5VTtzhot3i/IiKwB+FaRuSC1KjVe/v
	6KUyZpYqWchooP0Mo+JKNnEiG6Xrc7iuDTPEX0UmZcVxs/4dAnV2SiHeJeVdIwkifQ4idE2ccT7Ku
	BNkzDWWYlv2Jgrk9Lg4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuAVL-0003TO-Fo; Wed, 22 Jan 2020 07:32:47 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuAV9-0003T3-L1
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 07:32:37 +0000
Received: by mail-wm1-x343.google.com with SMTP id p9so5690417wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 23:32:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fm/bzorqFXGRjSleITF9pD+r1ENd6CB0azL8igPUALM=;
 b=VDzeQxeEhDd8ZKku1Vsa6Rm+0dEX0MsSrnfFkdfeGLwJy/mHgwEerx7eS8/YGXEbxr
 fyEL+uolSK2w7xtim5NpnRib0fMpIpzzD4fTzsPKUkHpTmHE2AJMShtmpCJAYDJkeJfi
 V9M2aHfVdu8ai4eNZ8fDRxLyX+uaMPI3rK/B5Dv5n6RV0aIWB2x6tFbIRGtF93S+yJD7
 P4Km/plRniTRmu24NArSI3NaiO9WS4KR483rANpvgUlGIQ/eFZh9G5TaKcRj/x4m86MZ
 yWIy330NA0EvuDPtSQ2KQbJIFWWKPn32Q6b3HiCm6rvGSriyBRD4L3WquLLdMYnW+ei2
 hV3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fm/bzorqFXGRjSleITF9pD+r1ENd6CB0azL8igPUALM=;
 b=PBb0qQPYw2yCyQ3pJtcPIXRk/eIHsbYuLl20pzY7Ro0BNbdfUmi6Ba0kMLzjV10xUn
 zJH3qDQ41kBpNLoW2pzl4+i3lXjR+hpXTYJQmQ28Wk11wnNBwRCM0fZXpXbVvJAfzdwB
 UOzhkW7CWqXRnN9wGjQb37z461ZhbnFDvpU9J7CNl4raNoa8C8jaTxZv2mQJhLfWxHGs
 nKwT0/iDZxtdt30GrlUfgEhtZOjQqxC9hgxJtDIyHvbGQTnQG7+hU4C6vJTmnn4jddAu
 r4okReogX0Vw+Sww/MgSakDbeNZ2uDltp4wuqaDmvNFxYpLOIdk2LRvhWEjbdcpPo+wX
 yW5w==
X-Gm-Message-State: APjAAAXkaHkj+V34X98rh22JtEeWVeoKK9RW0OlLNRWW/E3hHarkmvfr
 N1D8+TkIizNVJMyM0/lrAdiSM5p4
X-Google-Smtp-Source: APXvYqxsj7I9WlzOG+WOoPFUiCwN4qWOvJotIYRZmaWyfy5/ihC4mSOyzoLZoK6R3hu9TVPC7u6gzA==
X-Received: by 2002:a7b:cf0d:: with SMTP id l13mr1458811wmg.13.1579678354144; 
 Tue, 21 Jan 2020 23:32:34 -0800 (PST)
Received: from ?IPv6:2003:ea:8f36:6800:9425:8dfb:676f:4467?
 (p200300EA8F36680094258DFB676F4467.dip0.t-ipconnect.de.
 [2003:ea:8f36:6800:9425:8dfb:676f:4467])
 by smtp.googlemail.com with ESMTPSA id a132sm2495983wme.3.2020.01.21.23.32.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jan 2020 23:32:33 -0800 (PST)
Subject: Re: [PATCH v2 net-next] net: convert suitable drivers to use
 phy_do_ioctl_running
To: Florian Fainelli <f.fainelli@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 David Miller <davem@davemloft.net>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Doug Berger <opendmb@gmail.com>,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Salil Mehta
 <salil.mehta@huawei.com>, Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>, Timur Tabi <timur@kernel.org>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Steve Glendinning <steve.glendinning@shawell.net>,
 Michal Simek <michal.simek@xilinx.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>
References: <2db5d899-a550-456d-a725-f7cf009f53a3@gmail.com>
 <9d2dbcc0-7e22-601a-35f6-135f2a9e6f99@gmail.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <ec2a401d-e504-da38-8bc7-1826f5de7941@gmail.com>
Date: Wed, 22 Jan 2020 08:28:06 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <9d2dbcc0-7e22-601a-35f6-135f2a9e6f99@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_233235_716830_AA94ED37 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [hkallweit1[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hkallweit1[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 linux-renesas-soc@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22.01.2020 05:04, Florian Fainelli wrote:
> 
> 
> On 1/21/2020 1:09 PM, Heiner Kallweit wrote:
>> Convert suitable drivers to use new helper phy_do_ioctl_running.
>>
>> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> The vast majority of drivers that you are converting use the following
> convention:
> 
> - !netif_running -> return -EINVAL
> - !dev->phydev -> return -ENODEV
> 
> so it may make sense to change the helper to accommodate the majority
> here, not that I believe this is going to make much practical
> difference, but if there were test cases that were specifically looking
> for such an error code, they could be failing after this changeset.
> 
Right, I also stumbled across the different error codes, mainly as you
say -EINVAL. However there is no "wrong value", if netdev isn't running,
then typically the PHY is not attached, and from a netdev point of view
it's not there. So ENODEV seems to be best suited.
In kernel code the changed return code doesn't make a difference,
but yes, in theory there could be userspace programs checking for
-EINVAL. However such userspace programs should check for ENODEV too
anyway to cover the second check that already returns -ENODEV.

> For bgmac.c, bcmgenet.c and cpmac.c:
> 
> Acked-by: Florian Fainelli <f.fainelli@gmail.com>
> 
> Whether you decide to spin another version or not.
> 
Heiner

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
