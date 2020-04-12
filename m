Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E35391A5FD5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 20:32:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d9KI1NLNTjxLOqJjh7vXzwp+93wZT9rQJggnbo3ju24=; b=apIC/JLScLRObv
	EFx5/ZISaT+ccKqqtqRYFsauZXTulAxdpd0fyaAfxPYmbSrm0cY9lpciICDRh/x85DukMHB45J+mx
	xka3TWO9G2j/DEVjUlccwvZLJJbkkjsvU3ojWVG3jeFb9JBvu9MHqWWd4kN5mje/Kib6hGWEWMN55
	YphSdsyDE/cuqzy4Q/jyU8MPQn3u6w4rb3/hfAzbuJV5frXghc4o3kIkIjP6p2yjh9YtC/+/bBB39
	pOx+mgeiKhfUydZYDzFSZRM0oU8tZX34CFK4Nf10I31qBU0yh2nqNoa70ngHD3XdigN8/VrFC4ryC
	CYOel4Lcu8G2H00afAoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNhOo-0007a5-2K; Sun, 12 Apr 2020 18:32:06 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNhOg-0007Zg-MY
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 18:32:00 +0000
Received: by mail-pg1-x542.google.com with SMTP id r4so3538385pgg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Apr 2020 11:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=SNHJwZ7hjFiGbHS5a+nwP0gZIXhtkHtQtUuODvUButQ=;
 b=TfQXuxP8cHo7imcRJzcKiWG/kft0/UYjEalBfRZK0rgDn0X9+co+a4PTLCbxSHNq+x
 BWukFLB1cGSHlCWS5p0ozCgVNJCiyPvXQiOPkSjjGMfwPGH1xSFyqgV0BtwiuAelzOH0
 ZHmyCu2KQgaSA8El6UM926X2ssJjw4dnFdSpjORkTTz2mrGQ6mC8cz1iSYi05s+GPZEO
 bjJCFugceTLexfwbk98VngATYGpx54xF6XktbO/O+3YS7RPQfL9ltVRVNe7aDv7vQ3GY
 LahWztPyr4OWrSSKQFDWdshVcPrT0t5xk8zAPSCZ+QIQinAcL0G22/lhG73YGmo/uk69
 3wag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=SNHJwZ7hjFiGbHS5a+nwP0gZIXhtkHtQtUuODvUButQ=;
 b=j5AVTou3iZBfIeh+hGZQL3JsgnO5E+32m3nNMbRwfwvhOUk7PFttXsK8KmD2ogZTEg
 HMMfTKQDi5+OwPWnEE0ytKFuTSHODQTK89SXRm2P48E3adguYijELYSNcV7X/HobaVV3
 XTGlTjVFnw8zqpx+F5fqN6cFNRW1U5soxIHivkJhhVJ0fuOdyt2Kw3j3eM5gBm9mqKLy
 U4bkatE2g5fHmy3kJzXn6R4BplmG6mUzQcNi0VUxc4tzEEqbmNfB7yzRP5cFXLF5ujCA
 w4AiRr50slxVthVBBEx4tUdDJ1/lmqzwqVcuTYxsCcaNVVdKvzJSyr/xBVYL2XBNiDad
 yHsw==
X-Gm-Message-State: AGi0PuYf/qpoePHXi6Rr354fsXh7gV7aGBJsSJ5dZ0N40TI6ytWVTfMm
 8IARzH0L7vOGJBXk8JPwZ20=
X-Google-Smtp-Source: APiQypKFy/Vn0dgYQMy/AXy8YysZIQZHdm7WDz/M3Twrm/FHt6b1peSQ7yho/PcU9MIkxUojQv2ZUA==
X-Received: by 2002:a63:d512:: with SMTP id c18mr13894791pgg.347.1586716317579; 
 Sun, 12 Apr 2020 11:31:57 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 k12sm881593pfp.158.2020.04.12.11.31.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 12 Apr 2020 11:31:56 -0700 (PDT)
Subject: Re: [PATCH net] net: stmmac: Guard against txfifosz=0
To: Jakub Kicinski <kuba@kernel.org>
References: <20200412034931.9558-1-f.fainelli@gmail.com>
 <20200412112756.687ff227@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Florian Fainelli <f.fainelli@gmail.com>
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
 6XFgQaosWxkV0OELLy2N485YrTr2Uq64VKyxpncLh50e2RnyAJ9Za0Dx0yyp44iD1OvHtkEI
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <ae06b4c6-6818-c053-6f33-55c96f88a4ae@gmail.com>
Date: Sun, 12 Apr 2020 11:31:55 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200412112756.687ff227@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_113158_737984_0BF4D753 
X-CRM114-Status: GOOD (  21.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>, mripard@kernel.org,
 "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-stm32@st-md-mailman.stormreply.com>, Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, olteanv@gmail.com,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM/STM32 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/12/2020 11:27 AM, Jakub Kicinski wrote:
> On Sat, 11 Apr 2020 20:49:31 -0700 Florian Fainelli wrote:
>> After commit bfcb813203e619a8960a819bf533ad2a108d8105 ("net: dsa:
>> configure the MTU for switch ports") my Lamobo R1 platform which uses
>> an allwinner,sun7i-a20-gmac compatible Ethernet MAC started to fail
>> by rejecting a MTU of 1536. The reason for that is that the DMA
>> capabilities are not readable on this version of the IP, and there is
>> also no 'tx-fifo-depth' property being provided in Device Tree. The
>> property is documented as optional, and is not provided.
>>
>> The minimum MTU that the network device accepts is ETH_ZLEN - ETH_HLEN,
>> so rejecting the new MTU based on the txfifosz value unchecked seems a
>> bit too heavy handed here.
> 
> OTOH is it safe to assume MTUs up to 16k are valid if device tree lacks
> the optional property? Is this change purely to preserve backward
> (bug-ward?) compatibility, even if it's not entirely correct to allow
> high MTU values? (I think that'd be worth stating in the commit message
> more explicitly.) Is there no "reasonable default" we could select for
> txfifosz if property is missing?

Those are good questions, and I do not know how to answer them as I am
not familiar with the stmmac HW design, but I am hoping Jose can respond
on this patch. It does sound like providing a default TX FIFO size would
solve that MTU problem, too, but without a 'tx-fifo-depth' property
specified in Device Tree, and with the "dma_cap" being empty for this
chip, I have no idea what to set it to.

> 
>> Fixes: eaf4fac47807 ("net: stmmac: Do not accept invalid MTU values")
>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
>> ---
>>  drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
>> index e6898fd5223f..9c63ba6f86a9 100644
>> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
>> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
>> @@ -3993,7 +3993,7 @@ static int stmmac_change_mtu(struct net_device *dev, int new_mtu)
>>  	new_mtu = STMMAC_ALIGN(new_mtu);
>>  
>>  	/* If condition true, FIFO is too small or MTU too large */
>> -	if ((txfifosz < new_mtu) || (new_mtu > BUF_SIZE_16KiB))
>> +	if ((txfifosz < new_mtu && txfifosz) || (new_mtu > BUF_SIZE_16KiB))
>>  		return -EINVAL;
>>  
>>  	dev->mtu = new_mtu;
> 

-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
