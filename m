Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 779A910CFDE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 00:00:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfDAR1xqdo9TJOsUs5epoKkgBuJZLSVAWFxxnL7HfKw=; b=s6EEbpY8i0UCN2
	cEwJfJrhGyYYnwcMy0Pn/zAQsyXAVnzfxuHOC4KHymtkWZEL7F1gG3gI/oNkCtKMzZMzCumNVQi+c
	JL9MwNuv29TlL0vADcSj9IWb5ZdxtciQFEFry7c7UXkRhffCYyS1D9hLGlksuno23J3YmsW6xRm35
	EDQ6V4M/2+7u7cjfUmI9myNripPp5pC3gOjIdSUyzLqPVD3JVQSK6WvW3D3eFybdxUkepvMG/Isdo
	xhyi6vu3N7Y8dfL1PTD+Qhqhgf/OOuy2tXq4AvHdWpSeCm9BFjJ5amK08jcFWTreXJZdFjj57mi88
	Vjul0TBQY5j6o62kFbgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaSlU-0005f5-98; Thu, 28 Nov 2019 23:00:00 +0000
Received: from mout.web.de ([212.227.15.3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaSlL-0005eW-6I; Thu, 28 Nov 2019 22:59:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1574981980;
 bh=EvEfm6y/RB5YckvRo/5+L6OhoAw+x433Z/iu5wl68Pc=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=ECzHCdVK8KEUyJtqZfSrrZ5rMAtWX3SXgA7dsUO7RQnH+R2aRMLB+bBZpeGDyeK99
 4ZVrDNHAQIW5cWGZRGvXZ//9OeKLiD2G1naPwu4sXD1PnxoEvZsjvYhFzSBKZH6+x8
 VImnQiStQr+/dzVtdkkAz58VQAZRug68v1MOy/OE=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.43.108] ([89.204.139.119]) by smtp.web.de (mrweb002
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0LZvrx-1hwDzy32eD-00ll8L; Thu, 28
 Nov 2019 23:59:39 +0100
Subject: Re: [PATCH v2] arm64: dts: rockchip: split rk3399-rockpro64, for v2
 and v2.1 boards
To: Heiko Stuebner <heiko@sntech.de>
References: <3fa2e3df-221b-99a8-796a-2e21f75cf706@web.de>
 <9133677.cKcSbgiQdr@phil>
From: Soeren Moch <smoch@web.de>
Message-ID: <f6dc3daf-7cfb-0ac2-99ee-1c691eaf2ef0@web.de>
Date: Thu, 28 Nov 2019 23:59:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <9133677.cKcSbgiQdr@phil>
Content-Language: en-US
X-Provags-ID: V03:K1:GTMg10fwIdQgUypiLStUkuDQaNnuemDGISy4kPeso8Aml2Yiy3J
 XtmDMK1Ck9OCIgB4gsvXpwluyfHEvVL6odI13iVUGcJkp8gIKMkbhpmj22h0kwTZ0gpG1iQ
 hwb/wytSRQ4Fv3jJZaoAPEiNtYb7IWNr/qszbQWVTWnWM+BcdH7Wf2IQ39U68XlEdl1lWJg
 JrMLLTWCDs1r/aF2CwWNA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tNqU8rJXfoE=:L/TF0Z0VappKZaTu5kUmcC
 Y3w/seh85+uHhb3ZXodgr/DvZRVReMe09Nyb+V+oyWBETEvRbbL++HbPRFpk4M4XMUdjf76t+
 pz1C0ILVqt/+8MFw+sP/Us5zWWdxDhPHQJA00ax2196FxN/9PYQwaeCBu6oA44P3f2WMxMQ1p
 myRG9gtl3lGk4QLJcH2avmBUJAWuTpcOQcRbz3sbgN9acOTXVoxC04USTcUUmFz3d4ufnJIOi
 WBklHLLxWVP0o8agZ+MYDxcX+thhsFnvzm+w7ofrdly7xfv/Jbi4Mf86fdStI4zS0x184dYC3
 y+JwBVbNewVz/+iXUhc1bHdocbk6vdP78ZHLl5Oevgd/t/+ATFhV96y0i26KnXRk/IGb0s7+X
 qAMUYXcA9XdpG1W7YWybCRpgzklqAXW1l6a8GqDqaPzIoow4mZN9SNNXU1dUdpS4JoPDh0Go0
 HLuVQPgr3mVe02rFsa2NAyAskoaeQO/XB10r8DqOwejooToermq3y0t13+f642w8L4iJO/oqw
 maqIFEsGkpGFDgcZlYiC6/XRqFlSLhJ+jylXXsCxKOiyBU9Bzz32OYXejcGRfGQJxo5V+RF51
 2VSMynG3lG0f7iaI2FAogltuzCLzzGGCOXgQSX6DMhTDeSUZ5wuHPkQfCdsjBsrKp8RmEM2D9
 ebM0azGWsik6XZh1ecCcDCg+G/DcI//khthFQCPCaE0RF3CBNfB/zFwMJYxC+nRkTAbXyzKBE
 1cTWCWfH9usk5q3EW54j/GVBXhIM0q9ZmggCtTvINVDyVG80Z60x6Py4ZwcPYPcEcHPM2wC/3
 JtY8UtwMgHW5ObswoItIU4+IOEnk5lWpb8nAZdksuSoochBX4fT/bHHGclCGZv9xOVlesslVV
 35DaV5YDxVxyBYczKnf2wrnXNbyD2FyHDUJvRYA6lqesBPipVlsFvxbvxdlaK+Kx0jWXBl0/I
 OPRImOfES5z49bbvgkCBixNUvVM3muvShFLz6c3k6nbknNTKZzTLEHUCvFM5f2E38z3WRmedm
 PYQyDHtQL0M8+gbDS0YrFMZjDrrsUakq9vfchxmRNn8ol0PooEArQ0ahHc1dzrgZfN5uTQQXC
 hXI7+kLzgGOJCaPZw46Mitg+fP+Z7jgPo1YIl5UPksBeMiZz/xkwE5Sq07iQDM6WnU+62ly4f
 sarMThs25UovzQSHKseDrDgV3OHbButJ1PBfF5GfiP9KVGSkbKZM+ygvLU+NvCD2WJOuPNUNK
 Gn6ERpHWFPHsd+wlg855oiXLLJu5BCKDhIs0coA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_145951_565202_44472261 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org, Hugh Cole-Baker <sigmaris@gmail.com>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28.11.19 22:53, Heiko Stuebner wrote:
> Am Donnerstag, 28. November 2019, 20:55:54 CET schrieb Soeren Moch:
>>> On Thu, Nov 28, 2019 at 6:02 AM Katsuhiro Suzuki
>>> <katsuhiro@katsuster.net> wrote:
>>>> This patch splits rk3399-rockpro64 dts file to 2 files for v2 and
>>>> v2.1 boards.
>>>>
>>>> Both v2 and v2.1 boards can use almost same settings but we find a
>>>> difference in I2C address of audio CODEC ES8136.
>>>>
>>>> Reported-by: Vasily Khoruzhick <anarsoul@gmail.com>
>>>> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
>>>>
>>>> ---
> [...]
>
>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>>>> new file mode 100644
>>>> index 000000000000..183eda4ffb9c
>>>> --- /dev/null
>> If we add this as new file, should we sort handles and properties
>> alphabetically, where it is not done yet?
> I'm torn here ... on one side, doing missing sorting might be nice
> on the other hand, there is the moving without functional changes
> paradigm, which is generally nice to adhere to.
Agreed. Since we don't move a file, but most of it's content, it was not
clear to me what's more important.
>
> But I guess sorting would generally be ok.
>
>> I'm not sure about all the exceptions that usually apply for rockchip
>> devicetrees, status property at the end, also the pinctrl node?
> In general I don't "enforce" the sorting, so don't reject patches but instead
> just do sorting myself if necessary ;-).
>
> The general rule-of-thumb for nodes we came up with during the rk3288-veyron
> era is something like:
>
> compatible
> reg
> interrupts
> [alphabetical properties]
> status
>
> as this makes it somewhat easier to parse the core properties (compatible,
> reg, ints, status] when scrolling through a devicetree :-) .
Thanks for your explanation, perfectly makes sense.
>
> Pinctrl position is at the discretion of the dt author :-D .
> Position at the end has just the advantage that a long pin-group list does
> not get in the way so much.
>
>> What about unused references, e.g. "fan"?
> Don't change too much when moving stuff around :-)
Yes, good compromise to do some sorting, but no other changes.

Thanks,
Soeren

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
