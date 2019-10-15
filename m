Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D14C5D806D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 21:39:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BUOqLSzs3ldMs7iwPSmJ2lB20ibrqEccgPkqFXMzJsk=; b=mj+UoaZxSB/Ww0
	umoW/V2UM0n6UbTggg0Q+WYbdG6rlTnN7KBA5LfhGJIGFUxRGjhR5oXTjBw+jMqV7XyigAvuaFXyL
	h1+iHE8SaethcuEOlKkxx0cMEo3ojCWMSgNrhcMFXc90Eb9bAEazPRNgSyA3Lg/fudWuQsHFMZpiK
	+25DVRd0xtVH6DIn3Q7d8O9WChNndc8dhhahtKFebv25w7ZH90JoJ/+TPMTviujopt5vvBYxR+zQ8
	t1gHF7et3M3GFX70eorOX0cAa3/PqY0NSHjsiKVBtIKAP3oMDjJRfQnQxDyuF9k1HBxQ+1hxhKVqN
	c/NOzOaS6fogoD9u0gpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKSfX-00028p-IM; Tue, 15 Oct 2019 19:39:43 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKSfO-00023X-O0; Tue, 15 Oct 2019 19:39:36 +0000
Received: by mail-ed1-x542.google.com with SMTP id v38so19175540edm.7;
 Tue, 15 Oct 2019 12:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=z0yelwMl/Srg64GuPisqo6ubCgC5IIfRfeZRrsJf3WM=;
 b=nOJzxsY/bwtImTmefBCyn2uUU+yDrBcEEyTTJB1uFkDfyBaE4O0BjkSJjLwV4LGdwJ
 DzZGv3V8fbzFYqEzXXK2fTJ4rchscXglG4X99qzY7X0QsFbGc5lAad47eGeauBkYcjTK
 FMMkFivlaKmwCuyUzt2BjmqdzaOSNjv/YWFOTrd2oYo0yREcOm0mlzlbw8+jkqK5XW9x
 eTVHse6KOApYjCHv3WIteuCuUS5DQ3OvrwZZtVwPvH3DkUwI/iecUBn8fux5RbkNN08C
 fmZ6LkMz5y+L9GheOqqj4bEj1ZbUdchoSPo2sDkiGT/mIlg4yiLhBH78CF90nNDF+i0c
 twrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=z0yelwMl/Srg64GuPisqo6ubCgC5IIfRfeZRrsJf3WM=;
 b=Evwu05xlEYPemw9wvR/MCru0FXBqy8J/Np0jXJ3YhIXG7MCuJIWdVqLmvChcunioRW
 YLOxsQ+Xw1Gw+efk0naQS/SkfRG0Al/lxTsKUzwD/MRXOm9g1l9PY1MIiFZJkmHnTwdj
 9L8WA43NqlrTFj4QvhdDxlkfmmUTuK5xEV92MKIWQgl4HI8ymct4QVK3xKCZPuY/9yFg
 hnY6+Y9DnErTFwrAIkxtEteUDxSPcG35se9NyTF/wpZ/UoFFliA9Q9DjVDlgokklS0wZ
 wYnzGWXwYfAEccqZQ/HAI7Gxg/D+rX9Y35Xz3tZ03YqNCDxUyYsbUL8cb9Eg8mnq+U6r
 aIdQ==
X-Gm-Message-State: APjAAAV1Yz3lHDlwzoGecuG3aGt7emisUUbhOyunYGS1dDYaSYsR65pV
 nVzvSqRPmCvRcGEJpyjoEUe1zRC9
X-Google-Smtp-Source: APXvYqx6h4JnPH/G3Lmz7p10m3F4dKG/DlIhaM0Vi1JxdCBgA3No8vsb38HuXHV0GTrh1gLxf0b7Jg==
X-Received: by 2002:a05:6402:120c:: with SMTP id
 c12mr14394059edw.119.1571168373080; 
 Tue, 15 Oct 2019 12:39:33 -0700 (PDT)
Received: from [10.67.50.53] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id w16sm4035330edd.93.2019.10.15.12.39.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 15 Oct 2019 12:39:32 -0700 (PDT)
Subject: Re: [PATCH v1 3/3] ARM: dts: bcm2711: Enable GENET support for the
 RPi4
To: Stefan Wahren <wahrenst@gmx.net>, Florian Fainelli
 <f.fainelli@gmail.com>, matthias.bgg@kernel.org,
 "David S . Miller" <davem@davemloft.net>
References: <20191011184822.866-1-matthias.bgg@kernel.org>
 <20191011184822.866-4-matthias.bgg@kernel.org>
 <a514751e-e82a-b5ea-34d3-46468c851a80@gmail.com>
 <7ac16f46-8f75-a91a-c096-7645da8f044a@gmx.net>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 mQGiBEjPuBIRBACW9MxSJU9fvEOCTnRNqG/13rAGsj+vJqontvoDSNxRgmafP8d3nesnqPyR
 xGlkaOSDuu09rxuW+69Y2f1TzjFuGpBk4ysWOR85O2Nx8AJ6fYGCoeTbovrNlGT1M9obSFGQ
 X3IzRnWoqlfudjTO5TKoqkbOgpYqIo5n1QbEjCCwCwCg3DOH/4ug2AUUlcIT9/l3pGvoRJ0E
 AICDzi3l7pmC5IWn2n1mvP5247urtHFs/uusE827DDj3K8Upn2vYiOFMBhGsxAk6YKV6IP0d
 ZdWX6fqkJJlu9cSDvWtO1hXeHIfQIE/xcqvlRH783KrihLcsmnBqOiS6rJDO2x1eAgC8meAX
 SAgsrBhcgGl2Rl5gh/jkeA5ykwbxA/9u1eEuL70Qzt5APJmqVXR+kWvrqdBVPoUNy/tQ8mYc
 nzJJ63ng3tHhnwHXZOu8hL4nqwlYHRa9eeglXYhBqja4ZvIvCEqSmEukfivk+DlIgVoOAJbh
 qIWgvr3SIEuR6ayY3f5j0f2ejUMYlYYnKdiHXFlF9uXm1ELrb0YX4GMHz7QnRmxvcmlhbiBG
 YWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+iGYEExECACYCGyMGCwkIBwMCBBUCCAME
 FgIDAQIeAQIXgAUCVF/S8QUJHlwd3wAKCRBhV5kVtWN2DvCVAJ4u4/bPF4P3jxb4qEY8I2gS
 6hG0gACffNWlqJ2T4wSSn+3o7CCZNd7SLSC5BA0ESM+4EhAQAL/o09boR9D3Vk1Tt7+gpYr3
 WQ6hgYVON905q2ndEoA2J0dQxJNRw3snabHDDzQBAcqOvdi7YidfBVdKi0wxHhSuRBfuOppu
 pdXkb7zxuPQuSveCLqqZWRQ+Cc2QgF7SBqgznbe6Ngout5qXY5Dcagk9LqFNGhJQzUGHAsIs
 hap1f0B1PoUyUNeEInV98D8Xd/edM3mhO9nRpUXRK9Bvt4iEZUXGuVtZLT52nK6Wv2EZ1TiT
 OiqZlf1P+vxYLBx9eKmabPdm3yjalhY8yr1S1vL0gSA/C6W1o/TowdieF1rWN/MYHlkpyj9c
 Rpc281gAO0AP3V1G00YzBEdYyi0gaJbCEQnq8Vz1vDXFxHzyhgGz7umBsVKmYwZgA8DrrB0M
 oaP35wuGR3RJcaG30AnJpEDkBYHznI2apxdcuTPOHZyEilIRrBGzDwGtAhldzlBoBwE3Z3MY
 31TOpACu1ZpNOMysZ6xiE35pWkwc0KYm4hJA5GFfmWSN6DniimW3pmdDIiw4Ifcx8b3mFrRO
 BbDIW13E51j9RjbO/nAaK9ndZ5LRO1B/8Fwat7bLzmsCiEXOJY7NNpIEpkoNoEUfCcZwmLrU
 +eOTPzaF6drw6ayewEi5yzPg3TAT6FV3oBsNg3xlwU0gPK3v6gYPX5w9+ovPZ1/qqNfOrbsE
 FRuiSVsZQ5s3AAMFD/9XjlnnVDh9GX/r/6hjmr4U9tEsM+VQXaVXqZuHKaSmojOLUCP/YVQo
 7IiYaNssCS4FCPe4yrL4FJJfJAsbeyDykMN7wAnBcOkbZ9BPJPNCbqU6dowLOiy8AuTYQ48m
 vIyQ4Ijnb6GTrtxIUDQeOBNuQC/gyyx3nbL/lVlHbxr4tb6YkhkO6shjXhQh7nQb33FjGO4P
 WU11Nr9i/qoV8QCo12MQEo244RRA6VMud06y/E449rWZFSTwGqb0FS0seTcYNvxt8PB2izX+
 HZA8SL54j479ubxhfuoTu5nXdtFYFj5Lj5x34LKPx7MpgAmj0H7SDhpFWF2FzcC1bjiW9mjW
 HaKaX23Awt97AqQZXegbfkJwX2Y53ufq8Np3e1542lh3/mpiGSilCsaTahEGrHK+lIusl6mz
 Joil+u3k01ofvJMK0ZdzGUZ/aPMZ16LofjFA+MNxWrZFrkYmiGdv+LG45zSlZyIvzSiG2lKy
 kuVag+IijCIom78P9jRtB1q1Q5lwZp2TLAJlz92DmFwBg1hyFzwDADjZ2nrDxKUiybXIgZp9
 aU2d++ptEGCVJOfEW4qpWCCLPbOT7XBr+g/4H3qWbs3j/cDDq7LuVYIe+wchy/iXEJaQVeTC
 y5arMQorqTFWlEOgRA8OP47L9knl9i4xuR0euV6DChDrguup2aJVU4hPBBgRAgAPAhsMBQJU
 X9LxBQkeXB3fAAoJEGFXmRW1Y3YOj4UAn3nrFLPZekMeqX5aD/aq/dsbXSfyAKC45Go0YyxV
 HGuUuzv+GKZ6nsysJ7kCDQRXG8fwARAA6q/pqBi5PjHcOAUgk2/2LR5LjjesK50bCaD4JuNc
 YDhFR7Vs108diBtsho3w8WRd9viOqDrhLJTroVckkk74OY8r+3t1E0Dd4wHWHQZsAeUvOwDM
 PQMqTUBFuMi6ydzTZpFA2wBR9x6ofl8Ax+zaGBcFrRlQnhsuXLnM1uuvS39+pmzIjasZBP2H
 UPk5ifigXcpelKmj6iskP3c8QN6x6GjUSmYx+xUfs/GNVSU1XOZn61wgPDbgINJd/THGdqiO
 iJxCLuTMqlSsmh1+E1dSdfYkCb93R/0ZHvMKWlAx7MnaFgBfsG8FqNtZu3PCLfizyVYYjXbV
 WO1A23riZKqwrSJAATo5iTS65BuYxrFsFNPrf7TitM8E76BEBZk0OZBvZxMuOs6Z1qI8YKVK
 UrHVGFq3NbuPWCdRul9SX3VfOunr9Gv0GABnJ0ET+K7nspax0xqq7zgnM71QEaiaH17IFYGS
 sG34V7Wo3vyQzsk7qLf9Ajno0DhJ+VX43g8+AjxOMNVrGCt9RNXSBVpyv2AMTlWCdJ5KI6V4
 KEzWM4HJm7QlNKE6RPoBxJVbSQLPd9St3h7mxLcne4l7NK9eNgNnneT7QZL8fL//s9K8Ns1W
 t60uQNYvbhKDG7+/yLcmJgjF74XkGvxCmTA1rW2bsUriM533nG9gAOUFQjURkwI8jvMAEQEA
 AYkCaAQYEQIACQUCVxvH8AIbAgIpCRBhV5kVtWN2DsFdIAQZAQIABgUCVxvH8AAKCRCH0Jac
 RAcHBIkHD/9nmfog7X2ZXMzL9ktT++7x+W/QBrSTCTmq8PK+69+INN1ZDOrY8uz6htfTLV9+
 e2W6G8/7zIvODuHk7r+yQ585XbplgP0V5Xc8iBHdBgXbqnY5zBrcH+Q/oQ2STalEvaGHqNoD
 UGyLQ/fiKoLZTPMur57Fy1c9rTuKiSdMgnT0FPfWVDfpR2Ds0gpqWePlRuRGOoCln5GnREA/
 2MW2rWf+CO9kbIR+66j8b4RUJqIK3dWn9xbENh/aqxfonGTCZQ2zC4sLd25DQA4w1itPo+f5
 V/SQxuhnlQkTOCdJ7b/mby/pNRz1lsLkjnXueLILj7gNjwTabZXYtL16z24qkDTI1x3g98R/
 xunb3/fQwR8FY5/zRvXJq5us/nLvIvOmVwZFkwXc+AF+LSIajqQz9XbXeIP/BDjlBNXRZNdo
 dVuSU51ENcMcilPr2EUnqEAqeczsCGpnvRCLfVQeSZr2L9N4svNhhfPOEscYhhpHTh0VPyxI
 pPBNKq+byuYPMyk3nj814NKhImK0O4gTyCK9b+gZAVvQcYAXvSouCnTZeJRrNHJFTgTgu6E0
 caxTGgc5zzQHeX67eMzrGomG3ZnIxmd1sAbgvJUDaD2GrYlulfwGWwWyTNbWRvMighVdPkSF
 6XFgQaosWxkV0OELLy2N485YrTr2Uq64VKyxpncLh50e2RnyAJ9Za0Dx0yyp44iD1OvHtkEI
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <50b687c7-fc7b-cd17-7427-ea66be8edb55@gmail.com>
Date: Tue, 15 Oct 2019 12:39:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <7ac16f46-8f75-a91a-c096-7645da8f044a@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_123934_836250_ADB1130C 
X-CRM114-Status: GOOD (  22.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Matthias Brugger <mbrugger@suse.com>, linux-kernel@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/15/19 12:35 PM, Stefan Wahren wrote:
> Hi Florian,
> 
> Am 11.10.19 um 21:31 schrieb Florian Fainelli:
>> On 10/11/19 11:48 AM, matthias.bgg@kernel.org wrote:
>>> From: Matthias Brugger <mbrugger@suse.com>
>>>
>>> Enable Gigabit Ethernet support on the Raspberry Pi 4
>>> Model B.
>>>
>>> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
>>>
>>> ---
>>>
>>>  arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 22 ++++++++++++++++++++++
>>>  arch/arm/boot/dts/bcm2711.dtsi        | 18 ++++++++++++++++++
>>>  2 files changed, 40 insertions(+)
>>>
>>> diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
>>> index cccc1ccd19be..958553d62670 100644
>>> --- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
>>> +++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
>>> @@ -97,6 +97,28 @@
>>>  	status = "okay";
>>>  };
>>>
>>> +&genet {
>>> +	phy-handle = <&phy1>;
>>> +	phy-mode = "rgmii";
>> Can you check that things still work against David Miller's net-next?
>> Tree, in particular the BCM54213PE PHY might be matched by the BCM54210E
>> entry in drivers/net/phy/broadcom.c and I just fixed an issue in how
>> RGMII delays were configured:
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git/commit/?id=fea7fda7f50a6059220f83251e70709e45cc8040
>>
>> This might require you to change the 'phy-mode' property to what is
>> appropriate.
> 
> since i didn't get a reply from the Pi folks yet, i tried all the other
> rgmii variants on top of this branch [1].
> 
> But none of them worked.
> 
> In case of "rgmii-id" i'm getting:
> 
> unknown phy mode: 9
> 
> and for "rgmii-rxid":
> 
> unknown phy mode: 10
> 
> In those cases the PHY didn't even probe. Did i missed something?

Well the GENET driver can only deal with two specific RGMII modes, so
you would need something like this:

diff --git a/drivers/net/ethernet/broadcom/genet/bcmmii.c
b/drivers/net/ethernet/broadcom/genet/bcmmii.c
index 970e478a9017..a12656cccf89 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmmii.c
+++ b/drivers/net/ethernet/broadcom/genet/bcmmii.c
@@ -241,6 +241,8 @@ int bcmgenet_mii_config(struct net_device *dev, bool
init)
                id_mode_dis = BIT(16);
                /* fall through */
        case PHY_INTERFACE_MODE_RGMII_TXID:
+       case PHY_INTERFACE_MODE_RGMII_RXID:
+       case PHY_INTERFACE_MODE_RGMII_ID:
                if (id_mode_dis)
                        phy_name = "external RGMII (no delay)";
                else


> 
> [1] - https://github.com/lategoodbye/rpi-zero/commits/bcm2711-genet
> 


-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
