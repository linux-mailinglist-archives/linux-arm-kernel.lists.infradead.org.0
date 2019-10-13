Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D95D576A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 20:42:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3X/N/EeNLXgx1YYsPN9doJtLXeqVNa7gDkP5Q5l6+/w=; b=QZnb8RVHe3Nom2
	hG/sRFKxfWcjMtH7L+bRWpcWEU3/5zi2RUgJUxJ9zAk+63CDtgssfJfUHd3etPo6f+5VgJ44Su+ru
	No5C27r/petuTnoRILsusXh+73rxC7buiEZaRpuKQW7uQtBnNgjU2Gdzo449vl1w8BqQYdGra8m3e
	wGxiyg+RtJKnKXAzfL1vmxgTAouf4aORBsv6CjKNLZNF++NrSdmugzdO2yJrmV9ZlU8MIzhFc/0A/
	HRITvO7czsWhEhY1geGdpHQma6oKBqHj5nClx1YOg/q6oaiwb3JCLHizPazY2SuSdn11b6s+lFLu7
	TPriilxjdig69gq0o0nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJip7-000297-8J; Sun, 13 Oct 2019 18:42:33 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJiow-00028f-O5; Sun, 13 Oct 2019 18:42:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570992113;
 bh=8D3QySR8QYt/OLa5e0b+l6cv0uIB1uYUh4eOufQv0Sw=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=VxtvlICWnEeMdR0FAVjFGtXlxZ22d9Wr3BSikA5yuF4/YCFnBW5OeLDQmXClgNYZB
 E0dJshM3GBLeDaXSpxDl9pXBtAahtqbxBlsQpSHa6+jRjtGZWMe1/GsMnp89+hzhEv
 8nb7k0m8AMq+gvP+ucV2aEUcuI8euQY3v8LJLJRQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.112]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mlw7V-1hazze0OLj-00j5l6; Sun, 13
 Oct 2019 20:41:53 +0200
Subject: Re: [PATCH v1 3/3] ARM: dts: bcm2711: Enable GENET support for the
 RPi4
To: Florian Fainelli <f.fainelli@gmail.com>, matthias.bgg@kernel.org,
 "David S . Miller" <davem@davemloft.net>
References: <20191011184822.866-1-matthias.bgg@kernel.org>
 <20191011184822.866-4-matthias.bgg@kernel.org>
 <a514751e-e82a-b5ea-34d3-46468c851a80@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <c7fac096-4a0a-1d52-2284-4fe86554fbc8@gmx.net>
Date: Sun, 13 Oct 2019 20:41:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <a514751e-e82a-b5ea-34d3-46468c851a80@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:jaIkXziA0ZiyqtSywENbnXByWr9/ua/7ampTfGe+MOY4GUzAzKW
 YHhJeG7fNYknbq2uYPRd1hgVBoVYSqe9X2GX8PrbWwA8c5hlD4rEKNo3H0bLtiIYD5b/MgI
 pDhadMQdbyMDPnQmK96FHZHn6rqAQVwJ36lCQdxY3+WwpfcGKXs25y6372lc5BpY1FhvKeN
 UXjLpjEarqA9BtQcBfEQg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eZ/z0o+61/g=:vkN0uoedVvsd9iVqPUk2Vd
 htLHK7eVvRpiBUYBE6f4RgucN5eI/EPosmhlSQKVFD9r3n7hhYOz0duxRWqfdbhfrwLNJHinn
 vnAZnqdykjR0UyLSCJOvMaqHfRBOxXaC5blwgUHaGOuDTDmjr8ROpfqhV/dnskoR0ybOtEzKV
 6a5tuqK7hMTOvd7ZNezQDQik3PyhU1IT9mGdtCg0XcsS/Q3lCkne931viQNGUxyH4MhuOSCbP
 Ovsn+cEX+9PUxJeSk5qcjfJhxlrK12OxibYY/ZVzcgsSe0msJi/vMs26ZVb9i+SUktu1/Msv3
 Po4tXToxHdBkycSifjir+BZMedwEpNFCNbmmHmPXvpvEmE8KPa9S5Sis/vP7tsNHoY8jcBwo4
 8oXHc5OSR+R+nVMUCyXNwOHM8WTngdQeZPRscgAT5jQC6DXvbAz3Sh9PRzHMg40KjPRQAZxfZ
 doNKkWf2kHusRrRMeohJTlAPQv0B97hvbz1+PgslgiFLN/m+ZugMxeJynd8VAo5qbO6xRqELL
 yc4vITAoYbzDt4yAjFV4EWZxyIZvyIBVbepP90ugvTix0e5Hnq0U1KJko+NbB4HXkRN8ohV4/
 WvE80/GiYMT1X/T58q3qlP69NbbvlvkK51CVTpjg7/+n0VGTBkK5fH66Cf+6lGXqmMCfBqPMF
 fAicmwebtS94Z0aFWvSbp/FioaA7mlN5/COVkA+VoyOOyp+Lfp4woqjwLlgel7anaI3eMPLU+
 ZP3ahL3Z2Ok2cfoI7kLz4agBM5T+5wofsDXNrRKGTtNt0yCTYDwal+buQjZBOeKlR69hPL4Sb
 bGi5ukXSdXTTbycKXJmi1fO1Y7gNEslag7H4/NxAPnfQ+ca9rvs9LL+vCDTn34/2LZpCopuly
 VgEnJEkb1P1VMNUml04bSZnP7I4FlormyIzMJ4y1R4TQMU/5r/MSS6zVurJMIQeH+PIJxVtvp
 yQ/yjykfHtQtbHFqhPCWId0k/ImM9drXztSK3uJMCyylqzuauaHOn1BEKooJWb1f2JAB5H3LO
 y/LxxEHG6GSkYkWdjMOpn1WqigmuWaNUv4oHRzWI9t9w+ZnqBJioRarMHqsZ9A62grgvf/EAD
 4WPC5hNa5i2rwjPnYgh/FyEMjbQuyJbbB/4/AnljrDE88w38E1gZtoj8KeNm2jgTqGmMb29Is
 Il9pzh6TK1hF+nUs9OmMYj8+uU7vtAT8NSRr9cgkPwJVcabwVhar9t8GpWNvCdCikiGFO1atQ
 6YI0zuJEWoP5vMFwKx/aixTVfqNY+gjGL7tbwZsTOcUN0Dcq/o+NwfbyDohs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_114223_118512_49C5A400 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Matthias Brugger <mbrugger@suse.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-kernel@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

Am 11.10.19 um 21:31 schrieb Florian Fainelli:
> On 10/11/19 11:48 AM, matthias.bgg@kernel.org wrote:
>> From: Matthias Brugger <mbrugger@suse.com>
>>
>> Enable Gigabit Ethernet support on the Raspberry Pi 4
>> Model B.
>>
>> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
>>
>> ---
>>
>>  arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 22 ++++++++++++++++++++++
>>  arch/arm/boot/dts/bcm2711.dtsi        | 18 ++++++++++++++++++
>>  2 files changed, 40 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
>> index cccc1ccd19be..958553d62670 100644
>> --- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
>> +++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
>> @@ -97,6 +97,28 @@
>>  	status = "okay";
>>  };
>>
>> +&genet {
>> +	phy-handle = <&phy1>;
>> +	phy-mode = "rgmii";
> Can you check that things still work against David Miller's net-next?
> Tree, in particular the BCM54213PE PHY might be matched by the BCM54210E
> entry in drivers/net/phy/broadcom.c and I just fixed an issue in how
> RGMII delays were configured:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git/commit/?id=fea7fda7f50a6059220f83251e70709e45cc8040
>
> This might require you to change the 'phy-mode' property to what is
> appropriate.

i applied your changes, kept the phy-mode above and the interfaces cames
up. But there is a lot of packet loss using ping. After applying this
downstream patch [1] the packet loss doesn't occur.

Is the packet loss a possible cause of the wrong phy-mode and mentioned
patch only a workaround?

[1] -
https://github.com/raspberrypi/linux/commit/360c8e98883f9cd075564be8a7fc25ac0785dee4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
