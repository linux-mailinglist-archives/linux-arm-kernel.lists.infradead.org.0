Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C46D14E79C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 04:33:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTregX0RN0EUkyYZbiaoxPhPCYq8b2Zuk8DoIsGaQeM=; b=m+9bUcTIUm8vaC
	9U43dfOIZlspNsBp8BOezbEcrVQhg91ZjnzOvmVyTUl5FKlI+D+FnZlC4Cx21igEVct5gmHWQlH/5
	qxH93bNhnTgV9f7pwxSUs+Zo3u5Chi76D0zPCZpOYYZVL4DROiQ4LBKabMDn7v+fizxBkoXeB5Kzv
	pfyNSYKO5z9rgvykoNcshP3cN7mkQRXiy88EFn5oxKeQDA708QF43EI+hNAax51/t8LKpEy38H1JD
	+l5fo0Ee6pwOWn4Ll9hwQNphBtm0M8U3XFJCH8u/mBp8WLFKd4sgXxpfeCAgRC//JLcLQ76pZykCF
	ROldUnTXAo4FNdJqHZAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixN3z-0002ki-Ge; Fri, 31 Jan 2020 03:33:47 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixN3r-0002kF-Or
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 03:33:41 +0000
Received: by mail-pl1-x642.google.com with SMTP id t6so2166008plj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Jan 2020 19:33:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sCkfQKuAvr2OwnqtodV9K1xSpHrcxn/rSTQuhtrvKOU=;
 b=pxNHn2M9cXBrfcqStDTNXinFnaFZgwzgE2vm+n4vJm654u2TQVB0U8AcdZbLnH/0g+
 b0xIAlR2PKnZ/wbMGuTlnRPoKi/bDdKQIn7FBhUDH0StxMMBjs5LZCOTa6xFzF/o39jW
 2sIWq+xNvlahrcdmuSTJWgrfyH/Zsh6ThmqCUqaO37MfNgjDQuZ4KRRZsEOHeJCYk1re
 nLnBjR3j1RSm0i9ce8hQE3kSbH1g8lQOHH97vWhkoRd1w5lNmidpiHPZdAzCWDUaWc5D
 sGJKbgZ3G9taQCKp2p3pvTL9d6xPWdONNF8wrFoaasOXiPrXixz3O+D/TIIUlAd6JBvU
 9CxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=sCkfQKuAvr2OwnqtodV9K1xSpHrcxn/rSTQuhtrvKOU=;
 b=gsZZi1zewTzIacxnEEYoOBsBEMaV4ocnCaN7yNIgRuoIyCEiuztjbU1FAELJJiSAE3
 86chf8cpIFWP+c/Kxm63RG8dKQd/K/XHzm4KAGiGlx7iJvSgfO5XjH9QBLOU2Ofq8kA/
 yBiLU6cRkENjJXOKW1hFmt7AlWqm+fymIjkbBHlZyOsCTOXX0Tb+Jw2plg+zpECQCktt
 eofHzebBmy54uLDB7MH++3ictcj/r+Ar/Vieuvbez4kZJHTIvteBjJBRcZ68OoqnNpbG
 1JiYzYvuE7xZYUf85Oo1ulpIFcJddAS4VIRwvweFwqP3ormosycsnck5ujkTgc8FaPTG
 u2WA==
X-Gm-Message-State: APjAAAXOrgPOKUZuVCm9DGDuwXFL5+EQZH7AmfpWFi21f/479yuEr90b
 ytzoW/VtJc35QJ2k6O3/YNZoRxmC
X-Google-Smtp-Source: APXvYqySsR2sWrcTsnIM80y8gVrz4GNW8m+Aulayv+uKMP9cPNMzycm2QjRc8e+Hd+umVZ/W1qW23w==
X-Received: by 2002:a17:902:7b86:: with SMTP id
 w6mr7789279pll.317.1580441618553; 
 Thu, 30 Jan 2020 19:33:38 -0800 (PST)
Received: from [10.230.24.186] ([192.19.224.250])
 by smtp.gmail.com with ESMTPSA id g21sm8738494pfb.126.2020.01.30.19.33.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Jan 2020 19:33:36 -0800 (PST)
Subject: Re: Request to backport "Documentation: Document arm64 kpti control"
To: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <520fee3a-4d14-9a78-e542-cce98acae9f6@gmail.com>
 <20200126135233.GB11467@sasha-vm> <20200127155106.GA668073@kroah.com>
 <20200129191630.GB2896@sasha-vm>
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
 6XFgQaosWxkV0OELLy2N485YrTr2Uq64VKyxpncLh50e2RnyAJ9qfUATKC9NgZjRvBztfqy4
 a9BQwACgnzGuH1BVeT2J0Ra+ZYgkx7DaPR0=
Message-ID: <5457028c-6eaf-86e3-ed87-cebe30a39d1e@gmail.com>
Date: Thu, 30 Jan 2020 19:33:34 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200129191630.GB2896@sasha-vm>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_193339_832505_F2357B93 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, stable@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxLzI5LzIwMjAgMTE6MTYgQU0sIFNhc2hhIExldmluIHdyb3RlOgo+IE9uIE1vbiwgSmFu
IDI3LCAyMDIwIGF0IDA0OjUxOjA2UE0gKzAxMDAsIEdyZWcgS3JvYWgtSGFydG1hbiB3cm90ZToK
Pj4gT24gU3VuLCBKYW4gMjYsIDIwMjAgYXQgMDg6NTI6MzNBTSAtMDUwMCwgU2FzaGEgTGV2aW4g
d3JvdGU6Cj4+PiBPbiBTYXQsIEphbiAyNSwgMjAyMCBhdCAwODowMzoyNVBNIC0wODAwLCBGbG9y
aWFuIEZhaW5lbGxpIHdyb3RlOgo+Pj4gPiBIaSBHcmVnLCBTYXNoYSwKPj4+ID4KPj4+ID4gQ291
bGQgeW91IGJhY2twb3J0IHVwc3RyZWFtIGNvbW1pdAo+Pj4gPiBkZTE5MDU1NTY0YzhmOGY5ZDM2
NmY4ZGIzMzk1ODM2ZGEwYjIxNzZjICgiRG9jdW1lbnRhdGlvbjogRG9jdW1lbnQKPj4+IGFybTY0
Cj4+PiA+IGtwdGkgY29udHJvbCIpIHRvIHRoZSBzdGFibGUgNC45LCA0LjE0IGFuZCA0LjE5IGtl
cm5lbHMgc2luY2UgdGhleSBhbGwKPj4+ID4gc3VwcG9ydCB0aGUgY29tbWFuZCBsaW5lIHBhcmFt
ZXRlci4KPj4+Cj4+PiBIZXkgRmxvcmlhbiwKPj4+Cj4+PiBXZSBkb24ndCBub3JtYWxseSB0YWtl
IGRvY3VtZW50YXRpb24gcGF0Y2hlcyBpbnRvIHN0YWJsZSB0cmVlcy4KPj4KPj4gTm9ybWFsbHkg
d2UgZG8gbm90LCBidXQgdGhpcyBpcyBzaW1wbGUgZW5vdWdoIEkndmUgcXVldWVkIGl0IHVwIGZv
ciA0LjE5Cj4+IGFuZCA0LjE0LsKgIEFyZSB5b3Ugc3VyZSBpdCBpcyBvayBmb3IgNC45P8KgIElm
IHNvLCBGbG9yaWFuLCBjYW4geW91Cj4+IHByb3ZpZGUgYSBiYWNrcG9ydGVkIHZlcnNpb24gb2Yg
aXQ/Cj4gCj4gTXkgb2JqZWN0aW9uIHRvIHRha2luZyBkb2N1bWVudGF0aW9uIHBhdGNoZXMgaXMg
ZWl0aGVyIHRoYXQgd2UgdGFrZSBhbGwKPiBvZiB0aGVtLCBvciB3ZSB0YWtlIG5vbmUuIElmIHdl
IHRha2Ugb25seSBzZWxlY3QgZG9jdW1lbnRhdGlvbiBmaXhlcyBpdAo+IG1ha2VzIGEgZnJhbmtl
bnN0ZWluIERvY3VtZW50YXRpb24vIGRpcmVjdG9yeSB0aGF0IG1pZ2h0IGNhdXNlIG1vcmUgaGFy
bQo+IHRoYW4gYmVuZWZpdC4KPiAKPiBMZXQncyBzYXkgSSdtIGxvb2tpbmcgZm9yIG5ldGZpbHRl
ciBkb2N1bWVudGF0aW9uIG9uIDQuMTksIGNhbiBJIHRydXN0Cj4gbGludXgtNC4xOS55IG9yIGRv
IEkgbG9vayB1cHN0cmVhbT8gUmlnaHQgbm93IEkga25vdyBJIGhhdmUgdG8gbG9vawo+IHVwc3Ry
ZWFtLCBidXQgaWYgd2UgdGVsbCBwZW9wbGUgaXQncyBva2F5IHRvIHRydXN0IHRoZSBsaW51eC00
LjE5LnkgZG9jcwo+IHRoZW4gd2UgbWlnaHQgYmUgY2F1c2luZyBoYXJtIHRvIG91ciB1c2VycyB3
aGVuIHNvbWUgZml4ZXMgd2VyZQo+IGJhY2twb3J0ZWQgYnV0IGNvcnJlc3BvbmRpbmcgZG9jdW1l
bnRhdGlvbiBmaXhlcyB3ZXJlbid0LgoKRm9yIGEgaGlnaCBwcm9maWxlIGZlYXR1cmUvcGFyYW1l
dGVyIHN1Y2ggYXMga3B0aSBpdCBzZWVtcyB0byBtZSB0aGF0Cm1ha2luZyBzdXJlIHRoYXQgdGhl
IGRvY3VtZW50YXRpb24gcmVmbGVjdHMgd2hhdCB0aGUgY29kZSBzdXBwb3J0cyBpcyBhCmdvb2Qg
d2F5IHRvIGxpbWl0IHRoZSBhbW91bnQgb2Ygc3VwcG9ydCByZXF1ZXN0cy4gRm9yIG90aGVyIG9w
dGlvbnMsIEkKd291bGQgYWdyZWUgd2l0aCB5b3UgdGhhdCBiYWNrIHBvcnRpbmcgdGhlbSBwcm9i
YWJseSBtYWtlcyBsaXR0bGUgc2Vuc2UuCi0tIApGbG9yaWFuCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
