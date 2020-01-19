Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AACD7141BF6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 05:22:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8zQyDqS7mLECdGk8CcnX+sQR15UQu/aR1taI3XRJKu4=; b=g17ieA2O1n/nLq
	kvy1cyQUJsizF5SlF1KyjF/TQdMKXXN+pI0p7OJZOyMwOP8pbnx8TLfx4aaS9DV57ebFgtnnWBd5f
	Qa9KYYBuGYpAg3sWZ11I233IqkGQ/OTTRqbNEGHPonHEENxRLGnL5mWWS4kD3umSnDe7s8uKXSAvp
	zrAsxwbw8ngESLoyiFp3CdpTLPKnJFX42E+pPCamYhftnVfSfHp3p1RLHnNl96vsXlmntpULvgCZn
	uCEoOULcEMEY0aV8PExe6SBa38uAA4kN2Lpr2QIxsQU6iaYwIZd7GGvDWAwCCZ+wHAKgSaQZlOBVr
	Il6jaeIoHYxOFZro0u/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1it25z-0001d9-Hx; Sun, 19 Jan 2020 04:21:55 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1it25q-0001cn-AP
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 04:21:47 +0000
Received: by mail-pl1-x643.google.com with SMTP id p9so11645423plk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Jan 2020 20:21:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:autocrypt:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=szD+KEp5JMedpU/ESl+XBAVyw+4cZyi4d3383NhKcEk=;
 b=tn6v5ucgfbp4MHdl7WHTRyMQmuFcENyb+iPbHtmVGDvDFGkkQfye1MHrLV41KbtaG5
 UDLd7upvW/wDGFkcQCWOubQKZcImzuUGu4H+zbRyw+AMnSkADGjZX1Z6wZnmqzzbl+K1
 hq0o0iKV3Wr6Y9y4UUVeSKA8yrFb7Uzm3r1ZZUw454P0ChZ/4uf5piSVpBVlimT2Axza
 VkO/zCzvFzUzLuEUF2tUqT3U5naKGKl1nsdozMsdCjNFevop3UIEn+UJSR0PhwiyWdgH
 pIQgRHXUeHifyK4Bl/CVxlCn9bLgRZSw8vDsnaVmDpB3/VRc4QI2Rpas5Qu0Cqegifoz
 4dwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:autocrypt:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=szD+KEp5JMedpU/ESl+XBAVyw+4cZyi4d3383NhKcEk=;
 b=lu6LKoDe/qAz95OiCohgdc20eu2wtfeEUuk7tjg+Gsz2xBzUwNK+xcI77C2Gp5Na1g
 ibPdWHKizyGbk391Uv9QRoIxpJzLXHnwfg3C94Tud997Tw6alWa/MDlcDwDYTOqcLu54
 hdf2nqTKs/D6PI9Lnf5UeoVrflCl3rH/6s3BsVpYx5Xhlg3+TKNdiaClZEmwO8DfWDgZ
 W01H8H2ivG0XdkScXHntCN9OkxeARDlDMq2Q7ihaqoM7MY0g7a2WWQxTVuj1QN5nDWie
 dHuPOPnhb1a2NB2egBWAGFKiMq/J4/+GqWcsD6mBLw4lJrm+alMSgfy1Fib/ApMTDGHX
 nJdg==
X-Gm-Message-State: APjAAAViwYvKsrDHoA47hv0iYo32iUMI0wzoZZVTfgtgrzjWtDz2Xk0W
 /v+Ra/e7p+Qmer9neN6u3AwZybJn
X-Google-Smtp-Source: APXvYqxCf1YLgNXGcV/+cDdab1Lj7iswVdpX/5C8MLJCDCrx6CiejLpybBQJz/R16U9jciGIV/giMQ==
X-Received: by 2002:a17:90a:ead3:: with SMTP id
 ev19mr15877949pjb.80.1579407705103; 
 Sat, 18 Jan 2020 20:21:45 -0800 (PST)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 b42sm5443106pjc.27.2020.01.18.20.21.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Jan 2020 20:21:44 -0800 (PST)
To: Gregory Clement <gregory.clement@bootlin.com>, mripard@kernel.org,
 Chen-Yu Tsai <wens@csie.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
From: Florian Fainelli <f.fainelli@gmail.com>
Subject: No master_xfer_atomic for i2c-mv64xxx.c
Autocrypt: addr=f.fainelli@gmail.com; keydata=
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
 6XFgQaosWxkV0OELLy2N485YrTr2Uq64VKyxpncLh50e2RnyAJ9qfUATKC9NgZjRvBztfqy4
 a9BQwACgnzGuH1BVeT2J0Ra+ZYgkx7DaPR0=
Message-ID: <da0061d1-917f-d807-a7ac-05d302d88565@gmail.com>
Date: Sat, 18 Jan 2020 20:21:43 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_202146_388489_929B0911 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hello Gregory, Maxime, Chen-Yu,

Happy new year to all of you! On a lamobo R1 (A20) the trace below can
be seen by typing "halt" which makes us try to perform an i2c
transaction in atomic context by the X-powers AXP20x driver while the
i2c-mv64xxx.c driver does not support it.

I am not familiar enough with this i2c controller to suggest a way to
refactor it such that it would easily gain master_xfer_atomic support.
Is this something you could look at?

Thanks!

[ 1617.999014] reboot: Power down
[ 1618.002111] ------------[ cut here ]------------
[ 1618.006752] WARNING: CPU: 0 PID: 2427 at drivers/i2c/i2c-core.h:41
i2c_transfer+0x108/0x144
[ 1618.015092] No atomic I2C transfer handler for 'i2c-0'
[ 1618.020222] Modules linked in: pppoe ppp_async pppox ppp_generic slhc
crc_ccitt cmac
[ 1618.027987] CPU: 0 PID: 2427 Comm: procd Not tainted 5.5.0-rc5+ #0
[ 1618.034158] Hardware name: Allwinner sun7i (A20) Family
[ 1618.039376] Backtrace:
[ 1618.041837] [<c0238488>] (dump_backtrace) from [<c0238710>]
(show_stack+0x20/0x24)
[ 1618.049400]  r7:00000029 r6:60000093 r5:00000000 r4:c10a197c
[ 1618.055061] [<c02386f0>] (show_stack) from [<c096ae4c>]
(dump_stack+0x9c/0xb0)
[ 1618.062282] [<c096adb0>] (dump_stack) from [<c0252548>]
(__warn+0xe0/0x108)
[ 1618.069237]  r7:00000029 r6:00000009 r5:c075d948 r4:c0aefafc
[ 1618.074895] [<c0252468>] (__warn) from [<c0252944>]
(warn_slowpath_fmt+0x94/0x9c)
[ 1618.082369]  r7:c075d948 r6:00000029 r5:c0aefafc r4:c0aefbc0
[ 1618.088026] [<c02528b4>] (warn_slowpath_fmt) from [<c075d948>]
(i2c_transfer+0x108/0x144)
[ 1618.096195]  r8:00000032 r7:c10a93e4 r6:00000001 r5:ea32fd3c r4:ea945ca8
[ 1618.102892] [<c075d840>] (i2c_transfer) from [<c075d9d0>]
(i2c_transfer_buffer_flags+0x4c/0x5c)
[ 1618.111579]  r6:eb3c6501 r5:00000001 r4:00000002
[ 1618.116199] [<c075d984>] (i2c_transfer_buffer_flags) from
[<c0675658>] (regmap_i2c_write+0x24/0x40)
[ 1618.125229]  r4:00000002
[ 1618.127768] [<c0675634>] (regmap_i2c_write) from [<c06703d8>]
(_regmap_raw_write_impl+0x72c/0x908)
[ 1618.136713]  r5:00000001 r4:ea8d9c00
[ 1618.140291] [<c066fcac>] (_regmap_raw_write_impl) from [<c0670630>]
(_regmap_bus_raw_write+0x7c/0xa0)
[ 1618.149501]  r10:00000058 r9:ea32e000 r8:fee1dead r7:00000080
r6:00000032 r5:c066be98
[ 1618.157319]  r4:ea8d9c00
[ 1618.159857] [<c06705b4>] (_regmap_bus_raw_write) from [<c066fa08>]
(_regmap_write+0x7c/0x164)
[ 1618.168371]  r7:ea8d9c00 r6:00000080 r5:00000032 r4:ea8d9c00
[ 1618.174029] [<c066f98c>] (_regmap_write) from [<c0671294>]
(regmap_write+0x4c/0x6c)
[ 1618.181679]  r9:ea32e000 r8:fee1dead r7:0002e574 r6:00000080
r5:00000032 r4:ea8d9c00
[ 1618.189420] [<c0671248>] (regmap_write) from [<c067d0ac>]
(axp20x_power_off+0x3c/0x48)
[ 1618.197328]  r7:0002e574 r6:28121969 r5:c1004e90 r4:4321fedc
[ 1618.202985] [<c067d070>] (axp20x_power_off) from [<c023605c>]
(machine_power_off+0x34/0x38)
[ 1618.211332] [<c0236028>] (machine_power_off) from [<c027850c>]
(kernel_power_off+0x7c/0x80)
[ 1618.219676] [<c0278490>] (kernel_power_off) from [<c02786a0>]
(__do_sys_reboot+0x190/0x1f4)
[ 1618.228019] [<c0278510>] (__do_sys_reboot) from [<c0278774>]
(sys_reboot+0x18/0x1c)
[ 1618.235669]  r8:c0201324 r7:00000058 r6:b6f69010 r5:becbbe2c r4:00000000
[ 1618.242366] [<c027875c>] (sys_reboot) from [<c0201120>]
(ret_fast_syscall+0x0/0x4c)
[ 1618.250013] Exception stack(0xea32ffa8 to 0xea32fff0)
[ 1618.255062] ffa0:                   00000000 becbbe2c fee1dead
28121969 4321fedc 0002e574
[ 1618.263231] ffc0: 00000000 becbbe2c b6f69010 00000058 ffffffff
00000000 0000201d 00000001
[ 1618.271398] ffe0: 0002de54 becbbd5c 0001ac8c b6f8e408
[ 1618.276443] ---[ end trace 526da779414c6638 ]---
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
