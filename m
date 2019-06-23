Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E581B4F985
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 04:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=47LGq9kHbQienjHREXhZ3sFi8R1mLFtE9oP3UyNRjmE=; b=JDNxnO4ytFcnRN
	KLUTVqIal1l2xOKxhRzhP/yQQx78RklEGCdNLWN2/x0nbBeZ3copa/aehK8HIUrShhVcrlwFxwNWT
	paBUkW3PuOb0lYm2QwEGD0jQHoclrqqezcuTYZj6K6e1HX58RNB1TbqqO2ilI6auDzh9I3q9oPhpp
	XA8OuYeD9chyY1ic8bnm7BJ7vXql68Y+0dneYLzM+vgF4ws5hGcUwMhcFPb53za+5pie+a+5sYxPN
	0voO/WX9P72rM4gCiLBph+oVRUi1i+zWjzrPYQ6Y0H04Noo6B1OQ6S9VaUOhb9MWNEq26EzsxcgfW
	pb4h1+ogoYfs4lWqt9GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hes9a-0001am-PG; Sun, 23 Jun 2019 02:22:50 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hes9I-0001aI-Rd
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 02:22:34 +0000
Received: by mail-pl1-x641.google.com with SMTP id a93so4907499pla.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Jun 2019 19:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=QfZz6B+9uWfpA3Yd8WOOqxF+p/SIJiqZSVY41fzaPcA=;
 b=Myff+VJUeDQ/s0Iqy4NOEY34QcsqaObR6OPcUvh1T4zFZzIUhNJUlI2Bz7p6Xb/PAw
 DeKBEIBj0v8hto3/F+VK+zTZOHwZP1S1wSElTIX3QHl7y4iKWt85I8gCxIKJzQE/z/Dt
 1BcllJh1cxgeG/Swu2RTMIYpHObnuP4u9mQ07TKUABh4XLOrFbJOWOPr40Sw4ivcA/mT
 /o8ux4aT0jAPsPK+fUYPKnHcEaNYi1lEhXLU9ff4WPv6lmWa9Mw7yJy1lvykcpycYZvw
 GTG2IW2tbYjLTzpe+n9f1jTub0OCLaG/NdrABsD3RI7M95x2R1TmbHO/nROnm/LsRMQz
 Ohug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QfZz6B+9uWfpA3Yd8WOOqxF+p/SIJiqZSVY41fzaPcA=;
 b=onbf9llZzZ4uJkP/ppJauBT2ChJwxl8u85+iEQCAOCRNwfxCCpsT3EZHLUrB92AXby
 VVyBkKNKQXHXWyvxXumgwy1lRIRwZyf3iSPqxe9XCxlLCULcadaxSqbfXrjiIKyL1IGY
 aEJpsoD8lzrqarSLVQswOFjhN1vKXP3ui/emktRy5vJX4wXUkBn3Aprc/PF7X+aUu7q2
 m0e/durZZeyHOFW2l21bMLV4zyrvxfV3EkPwUfXIhxkydOUIWTzfDt+NtffetH+i5lpu
 vH3JTJbO7qDTLSu1xucefeGD2s0WGs65c46EV13YXMygSivscU/tJd3yCMj3rzOMkDxC
 DIOw==
X-Gm-Message-State: APjAAAW8/tIiY12bR7LH2uEdqryNTIkXa6CPnmWFF4l50effGTyQgVKh
 sgpuLte/DmBdTZfjrz3NsnlicdkN
X-Google-Smtp-Source: APXvYqwTbE8H+4UaF/fr8E8WJf7FPcIPZTSjhi3nYRf4eQjRmj5GfDtHAwVDLy85UxBTJJcK1A0h+A==
X-Received: by 2002:a17:902:8a94:: with SMTP id
 p20mr120855842plo.312.1561256549609; 
 Sat, 22 Jun 2019 19:22:29 -0700 (PDT)
Received: from [192.168.1.3] (ip68-101-123-102.oc.oc.cox.net. [68.101.123.102])
 by smtp.gmail.com with ESMTPSA id cx22sm7554518pjb.25.2019.06.22.19.22.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 22 Jun 2019 19:22:28 -0700 (PDT)
Subject: Re: [GIT PULL 1/6] Broadcom devicetree changes for 5.3
To: Olof Johansson <olof@lixom.net>, Florian Fainelli <f.fainelli@gmail.com>
References: <20190612025028.13118-1-f.fainelli@gmail.com>
 <20190619133538.64htegz3xepd2mu7@localhost>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <7b1ed927-bc60-c5a1-6255-b4180776cba3@gmail.com>
Date: Sat, 22 Jun 2019 19:22:27 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190619133538.64htegz3xepd2mu7@localhost>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_192232_899723_E491E64D 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, arm@kernel.org, arnd@arndb.de,
 Kevin Hilman <khilman@kernel.org>, Eric Anholt <eric@anholt.net>,
 Lukas Wunner <lukas@wunner.de>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Martin Sperl <kernel@martin.sperl.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/19/2019 6:35 AM, Olof Johansson wrote:
> On Tue, Jun 11, 2019 at 07:50:23PM -0700, Florian Fainelli wrote:
>> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
>>
>>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
>>
>> are available in the Git repository at:
>>
>>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.3/devicetree
>>
>> for you to fetch changes up to 34b1441452e550169b4d3647a4f851d9332d4b76:
>>
>>   ARM: dts: BCM5301X: Fix most DTC W=1 warnings (2019-06-11 15:07:56 -0700)
>>
>> ----------------------------------------------------------------
>> This pull request contain Broadcom ARM-based SoCs Device Tree changes
>> for 5.3 please pull the following:
>>
>> - Lukas enables DMA support for the BCM2835 (Raspberry Pi) SPI
>>   controller
>>
>> - Florian fixes a number of dtc W=1 warnings in the Broadcom DTS files
>>   and provides a fix for devices failing to boot after the removal of
>>   skelton.dtsi (that commit has been submitted as a separate fix)
>>
>> ----------------------------------------------------------------
>> Florian Fainelli (9):
>>       Merge tag 'tags/bcm2835-dt-next-2019-06-01' into devicetree/next
>>       ARM: dts: bcm: Add missing device_type = "memory" property
>>       ARM: dts: Fix BCM7445 DTC warnings
>>       ARM: dts: Cygnus: Fix most DTC W=1 warnings
>>       ARM: dts: bcm-mobile: Fix most DTC W=1 warnings
>>       ARM: dts: BCM53573: Fix DTC W=1 warnings
>>       ARM: dts: BCM63xx: Fix DTC W=1 warnings
>>       ARM: dts: NSP: Fix the bulk of W=1 DTC warnings
>>       ARM: dts: BCM5301X: Fix most DTC W=1 warnings
>>
>> Lukas Wunner (1):
>>       ARM: bcm283x: Enable DMA support for SPI controller
> 
> Something went wrong here. I merged your pull request for the missing
> device_type that had commit e8bd76dccd79 for that patch.
> 
> Here you have the same patch here as 0e9e8c404ec2. While git normally handles
> this alright, in this case the warning removals changes the line above so you
> get a merge conflict for every file and that's a lot to fix up.
> 
> Would you mind rebuilding this branch on top of your fixes to keep that patch
> at the same commit?

Yes, absolutely. It looks like [GIT PULL 5/6] Broadcom soc changes for
5.3 has not been merged yet, is everything okay with that one?
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
