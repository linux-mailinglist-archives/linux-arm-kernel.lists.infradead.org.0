Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB46711BB2F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 19:12:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJL6iQAzm7AsSQEf7kbznfmPbhchPllGxh9Q8cRTQhE=; b=JVJo8d+P5/+9kC
	7gWOD5YVCNCBuDozMjiuF8rlQcSDr8CjqCq2WVLi7TFlziHiMfVwONMMhuazuAU3Ux6cUGAHnHGBk
	UY1UXvKkiQmO3xtE+TMVOteeXhSKso8xRF3/MswkAj/exmeZUqm9ygVU7fXBl/x4IaBRvmq+HuZMc
	tx5JLpIruVxMyKVA/VoJeN7/+Coe3eOATh0VUWAlz2k+hoCG88QFU0vkNJcHT+S+c16rOzWP3ZNfh
	0B94e/s6W1oqainROzzu8z6hf/h2sdcmK41zzKSl2Ll4qF+o3/CdFEcV4hEgRvmo1ivERukA2AOom
	p1XqdXSHMhGX7pSxxBaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6TK-0007TI-EI; Wed, 11 Dec 2019 18:12:26 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6TC-0007Sg-UN
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 18:12:20 +0000
Received: by mail-pf1-x441.google.com with SMTP id y14so2172475pfm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 10:12:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mQeGFHveTHebaelml1aHZBuXXsokPzTEQ06fsvkfyC8=;
 b=mI+boveAcYhI2Ifbt6cDI58x0/eSNDwiYFM++fDlHxEWTBAdMsjmWrJGrAR/186zn7
 LEt+5DfFz2F3MwfN7LAx6cQZ62sV3l4N/Dmc3ZxWP/+jJoDljMf9RKdOWgu5TrVTeMzw
 eoV/BJBpdhvZWMvU83GlS7R4jKvXnW/QoHm4CnDuLgYD6voisRFge+Bn5HUchhQALLJg
 8FlUJ7GRrKhmb2Xwc6tQtYddHWT5j46KhIAIKM/7q1fvCrmz+y5Ypuqn+ex8z7cvOQ3L
 U/qm6W/6RU5jjWYe6qLfEeVyP/dtYbC43h7Vk2rNqFMBR/sAF3D+Euwbsg7FHzSovBzo
 t0XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=mQeGFHveTHebaelml1aHZBuXXsokPzTEQ06fsvkfyC8=;
 b=ip5x72DO+koa6DG1vCEoGDhBS0w4Wbb69dJ72DvNoCGCB3zek2M/VoODRIYMedAK7w
 dcj/Gt9kGB4HxcdRtBeAzoxfjDkes9Vpof/zJuHQh9HkJECOOv/7/bfUOiTnwrGurhJF
 vz4fCWoRgfiRRTBeZvRCKBmEdBsMJvwotRBp0e4rnVE5+59lH7nbWXf8HnJGpRjQoqpd
 dkdQKZ477J9drjdFk9Y6z84MAjlt+9jU1q3zME/qyI/dU0YPm/AFOXNzGFPIK2wFJ4/H
 yM6r7CxzO/tIQlEdGWp4AgyAGlxXCmziYSQV+kN09ljfx2Fa/Q4cwrqfbSADKV1AsGPj
 YJFw==
X-Gm-Message-State: APjAAAWFUl6gr+qBZQraKC1oCWlKKjYae2J6qZOx7z3PZwV0ByjeVvUn
 9ZwLvMwK8bPqJnW8Cmzb/2zTIiP0
X-Google-Smtp-Source: APXvYqzllpl/S6ftD0ojhliYQ7BNkmhWRJWd5RuYBGE6oCjcmoOKKhxaOFNhgTHHtlDgNmIedTuegw==
X-Received: by 2002:a62:7a11:: with SMTP id v17mr4919968pfc.191.1576087937559; 
 Wed, 11 Dec 2019 10:12:17 -0800 (PST)
Received: from [10.69.78.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id t11sm3344493pjf.30.2019.12.11.10.12.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Dec 2019 10:12:16 -0800 (PST)
Subject: Re: [PATCH 2/2] reset: Add Broadcom STB RESCAL reset controller
To: Philipp Zabel <p.zabel@pengutronix.de>, linux-kernel@vger.kernel.org
References: <20191210195903.24127-1-f.fainelli@gmail.com>
 <20191210195903.24127-3-f.fainelli@gmail.com>
 <89d2d00058e34e7571fc0f50ce487cf54414cd49.camel@pengutronix.de>
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
Message-ID: <469c7b73-b028-1691-d5f0-0ceb3007da1c@gmail.com>
Date: Wed, 11 Dec 2019 10:12:15 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <89d2d00058e34e7571fc0f50ce487cf54414cd49.camel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_101218_978317_CD99C526 
X-CRM114-Status: GOOD (  22.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Jim Quinlan <im2101024@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jim Quinlan <jim2101024@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMi8xMS8yMDE5IDE6NDggQU0sIFBoaWxpcHAgWmFiZWwgd3JvdGU6Cj4+ICsjZGVmaW5l
IEJSQ01fUkVTQ0FMX1NUQVJUCTAKPj4gKyNkZWZpbmUJQlJDTV9SRVNDQUxfU1RBUlRfQklUCUJJ
VCgwKQo+PiArI2RlZmluZSBCUkNNX1JFU0NBTF9DVFJMCTQKPj4gKyNkZWZpbmUgQlJDTV9SRVND
QUxfU1RBVFVTCTgKPj4gKyNkZWZpbmUgQlJDTV9SRVNDQUxfU1RBVFVTX0JJVAlCSVQoMCkKPiAK
PiBJcyB0aGVyZSBhbnkgcmVhc29uIHRoZSBzdGFydCBiaXQgaXMgaW5kZW50ZWQgYnV0IHRoZSBz
dGF0dXMgYml0IGlzIG5vdD8KClRoaXMgaXMgYSBjb252ZW50aW9uIHdlIGhhdmUgdHJpZWQgdG8g
YWRvcHQgdG8gZGVub3RlIHRoZSBkZWZpbml0aW9uCmZyb20gYSByZWdpc3RlciB3b3JkIGFkZHJl
c3Mvb2Zmc2V0IHZlcnN1cyB0aGUgZGVmaW5pdGlvbiBmb3IgYml0cwp3aXRoaW4gdGhhdCByZWdp
c3RlciB3b3JkLgoKPiAKPj4gKwo+PiArc3RydWN0IGJyY21fcmVzY2FsX3Jlc2V0IHsKPj4gKwl2
b2lkIF9faW9tZW0JKmJhc2U7Cj4+ICsJc3RydWN0IGRldmljZSAqZGV2Owo+PiArCXN0cnVjdCBy
ZXNldF9jb250cm9sbGVyX2RldiByY2RldjsKPj4gK307Cj4+ICsKPj4gK3N0YXRpYyBpbnQgYnJj
bV9yZXNjYWxfcmVzZXRfYXNzZXJ0KHN0cnVjdCByZXNldF9jb250cm9sbGVyX2RldiAqcmNkZXYs
Cj4+ICsJCQkJICAgICAgdW5zaWduZWQgbG9uZyBpZCkKPj4gK3sKPj4gKwlyZXR1cm4gMDsKPj4g
K30KPiAKPiBQbGVhc2UgZG8gbm90IGltcGxlbWVudCB0aGUgYXNzZXJ0IG9wZXJhdGlvbiBpZiBp
dCBkb2Vzbid0IGNhdXNlIGEgcmVzZXQKPiBsaW5lIHRvIGJlIGFzc2VydGVkIGFmdGVyd2FyZHMu
Cj4gVGhlIHJlc2V0IGNvcmUgd2lsbCByZXR1cm4gMCBmcm9tIHJlc2V0X2NvbnRyb2xfYXNzZXJ0
KCkgZm9yIHNoYXJlZAo+IHJlc2V0IGNvbnRyb2xzIGlmIC5hc3NlcnQgaXMgbm90IGltcGxlbWVu
dGVkLgoKT0ssIHdpbGwgZHJvcCBpdC4KCj4gCj4+ICsKPj4gK3N0YXRpYyBpbnQgYnJjbV9yZXNj
YWxfcmVzZXRfZGVhc3NlcnQoc3RydWN0IHJlc2V0X2NvbnRyb2xsZXJfZGV2ICpyY2RldiwKPj4g
KwkJCQkgICAgICB1bnNpZ25lZCBsb25nIGlkKQo+PiArewo+PiArCXN0cnVjdCBicmNtX3Jlc2Nh
bF9yZXNldCAqZGF0YSA9Cj4+ICsJCWNvbnRhaW5lcl9vZihyY2Rldiwgc3RydWN0IGJyY21fcmVz
Y2FsX3Jlc2V0LCByY2Rldik7Cj4+ICsJdm9pZCBfX2lvbWVtICpiYXNlID0gZGF0YS0+YmFzZTsK
Pj4gKwljb25zdCBpbnQgTlVNX1JFVFJJRVMgPSAxMDsKPj4gKwl1MzIgcmVnOwo+PiArCWludCBp
Owo+PiArCj4+ICsJcmVnID0gcmVhZGwoYmFzZSArIEJSQ01fUkVTQ0FMX1NUQVJUKTsKPj4gKwl3
cml0ZWwocmVnIHwgQlJDTV9SRVNDQUxfU1RBUlRfQklULCBiYXNlICsgQlJDTV9SRVNDQUxfU1RB
UlQpOwo+PiArCXJlZyA9IHJlYWRsKGJhc2UgKyBCUkNNX1JFU0NBTF9TVEFSVCk7Cj4gCj4gQXJl
IHRoZXJlIGFueSBvdGhlciBmaWVsZHMgYmVzaWRlIHRoZSBTVEFSVF9CSVQgaW4gdGhpcyByZWdp
c3Rlcj8KClRoaXMgaXMgdGhlIG9ubHkgYml0IGFjdHVhbGx5LgoKPiAKPj4gKwlpZiAoIShyZWcg
JiBCUkNNX1JFU0NBTF9TVEFSVF9CSVQpKSB7Cj4+ICsJCWRldl9lcnIoZGF0YS0+ZGV2LCAiZmFp
bGVkIHRvIHN0YXJ0IHNhdGEvcGNpZSByZXNjYWxcbiIpOwo+PiArCQlyZXR1cm4gLUVJTzsKPj4g
Kwl9Cj4+ICsKPj4gKwlyZWcgPSByZWFkbChiYXNlICsgQlJDTV9SRVNDQUxfU1RBVFVTKTsKPj4g
Kwlmb3IgKGkgPSBOVU1fUkVUUklFUzsgaSA+PSAwICYmICAhKHJlZyAmIEJSQ01fUkVTQ0FMX1NU
QVRVU19CSVQpOyBpLS0pIHsKPj4gKwkJdWRlbGF5KDEwMCk7Cj4+ICsJCXJlZyA9IHJlYWRsKGJh
c2UgKyBCUkNNX1JFU0NBTF9TVEFUVVMpOwo+PiArCX0KPiAKPiBUaGlzIHRpbWVvdXQgbG9vcCBz
aG91bGQgYmUgcmVwbGFjZWQgYnkgYSBzaW5nbGUgcmVhZGxfcG9sbF90aW1lb3V0KCkuCj4gQXQg
MTAwIMK1cyB3YWl0cyBwZXIgaXRlcmF0aW9uIHRoaXMgY291bGQgdXNlIHRoZSBzbGVlcGluZyB2
YXJpYW50LgoKT0ssIHdpbGwgZG8uCgo+IAo+PiArCWlmICghKHJlZyAmIEJSQ01fUkVTQ0FMX1NU
QVRVU19CSVQpKSB7Cj4+ICsJCWRldl9lcnIoZGF0YS0+ZGV2LCAidGltZWRvdXQgb24gc2F0YS9w
Y2llIHJlc2NhbFxuIik7Cj4+ICsJCXJldHVybiAtRVRJTUVET1VUOwo+PiArCX0KPj4gKwo+PiAr
CXJlZyA9IHJlYWRsKGJhc2UgKyBCUkNNX1JFU0NBTF9TVEFSVCk7Cj4+ICsJd3JpdGVsKHJlZyBe
IEJSQ01fUkVTQ0FMX1NUQVJUX0JJVCwgYmFzZSArIEJSQ01fUkVTQ0FMX1NUQVJUKTsKPiAKPiBQ
bGVhc2UgdXNlICY9IH5CUkNNX1JFU0NBTF9TVEFSVF9CSVQgaW5zdGVhZC4KPiAKCkkgdGhpbmsg
dGhlIGlkZWEgd2FzIHRvIGF2b2lkIHVuY29uZGl0aW9uYWxseSBjbGVhcmluZyBpdCwgYnV0IGJh
c2VkIG9uCnRoZSBkb2N1bWVudGF0aW9uLCBJIGRvbid0IHNlZSB0aGlzIGJlaW5nIGhhcm1mdWws
IEppbT8KCj4+ICsJcmVnID0gcmVhZGwoYmFzZSArIEJSQ01fUkVTQ0FMX1NUQVJUKTsKPj4gKwlk
ZXZfZGJnKGRhdGEtPmRldiwgInNhdGEvcGNpZSByZXNjYWwgc3VjY2Vzc1xuIik7Cj4+ICsKPj4g
KwlyZXR1cm4gMDsKPj4gK30KPiAKPiBUaGlzIHdob2xlIGZ1bmN0aW9uIGxvb2tzIGEgbG90IGxp
a2UgaXQgZG9lc24ndCBqdXN0IGRlYXNzZXJ0IGEgcmVzZXQKPiBsaW5lLCBidXQgYWN0dWFsbHkg
aXNzdWVzIGEgY29tcGxldGUgcmVzZXQgcHJvY2VkdXJlIG9mIHNvbWUga2luZC4gRG8KPiB5b3Ug
aGF2ZSBzb21lIGluc2lnaHQgb24gd2hhdCBhY3R1YWxseSBoYXBwZW5zIGluIHRoZSBoYXJkd2Fy
ZSB3aGVuIHRoZQo+IHN0YXJ0IGJpdCBpcyB0cmlnZ2VyZWQ/IEkgc3VzcGVjdCB0aGlzIHNob3Vs
ZCBiZSBpbXBsZW1lbnRlZCB3aXRoIHRoZQo+IC5yZXNldCBvcGVyYXRpb24uCgpUaGlzIGhhcmR3
YXJlIGJsb2NrIGlzIGNvbnRyb2xsaW5nIHRoZSByZXNldCBhbmQgY2FsaWJyYXRpb24gcHJvY2Vz
cyBvZgp0aGUgU0FUQS9QQ0llIGNvbWJvIFBIWSBhbmFsb2cgZnJvbnQgZW5kLCBidXQgaXMgbm90
IHRlY2huaWNhbGx5IHBhcnQgb2YKdGhlIFBDSWUgb3IgU0FUQSBQSFkgcHJvcGVyLCBpdCBzdGFu
ZHMgb24gaXRzIG93biwgYm90aCBmdW5jdGlvbmFsbHkgYW5kCmZyb20gYSByZWdpc3RlciBzcGFj
ZSBwZXJzcGVjdGl2ZS4gVGhlIG1vdGl2YXRpb24gZm9yIG1vZGVsbGluZyB0aGlzIGFzCmEgcmVz
ZXQgY29udHJvbGxlciBpcyB0aGF0IGl0IGRvZXMgYSByZXNldCAoYW5kIGEgY2FsaWJyYXRpb24p
IGFuZCB0aGlzCmlzIGEgc2hhcmVkIHJlc2V0IGxpbmUgYW1vbmcgMi8zIGluc3RhbmNlcyBvZiBh
bm90aGVyIGJsb2NrLiBJZiB5b3UKdGhpbmsgd2Ugc2hvdWxkIG1vZGVsIHRoaXMgZGlmZmVyZW50
bHksIHBsZWFzZSBsZXQgdXMga25vdy4KLS0gCkZsb3JpYW4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
