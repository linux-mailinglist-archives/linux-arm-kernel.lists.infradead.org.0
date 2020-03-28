Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F80196391
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 05:32:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1pq3LEH93/rfSqwARTXmljmEFs+M4gRQrJCZEa+YBmg=; b=OQBw42osyPmx/X
	1nMe6xnKFwOM2j4rl73JAcwytzE7Oj0j18QMaziGKb/B6odTxyTXgY0Q423AMnzyMYcToc7Jgu5AZ
	Z54nKw0HgWvpcjTxZACgWZpL5Gwbn9l5cO8IhOS3mjXHVEcwPWm3OVrlYYVYtiQw1+IOlSmZf33vE
	OysYL0dyWUqcUIu15OuhvXDXSuOU0jXAtga9cfgMyQPa8Y2zbSDwP+oBkE7VU4NHBW69CWrpyoyV3
	1iJ+G4YqsjnV+Tg0UvhdQofbF4so9yqF0Xc1U2iGjr5TP1OcTTB2w0JFF/4y3QweYK+GMvTBX3xRg
	Z4OdIN7ppXAcMJU1DwWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI38m-0007wR-72; Sat, 28 Mar 2020 04:32:12 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI38e-0007w3-LD
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 04:32:06 +0000
Received: by mail-wm1-x335.google.com with SMTP id d198so13828732wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 21:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:autocrypt:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=JyKBWtHF/AkbdS7emKh1g1wpW0Y50OHJA10bqgrcGn0=;
 b=SLMrfR3L+Wj4017+f73/AB9179NDJQ9wDZKr3b3lIc1HMpu7BvLNgJVYkh9QOGMuwn
 fHn0I44VrZQkw331HdjYtWKT8ojSyYcj5lmU2TCuMTMWy1xUWFSIjsrfUHXCA/LhREIo
 KPt+p3pZQIZfkRSo0TtdULPZL2lLIvAXFlcRXPOhM5dAdUAfYF22aasrQvuAma3L2b4D
 rNsZ32t/FhGj8NjfDywp5JGfKOHRWVsI7kpi7JUuh0DYDvajOAwf4MNeHU8vyxrYVyze
 TrfFyJmLdHhL5g3pK6JFTnDj6V/RyljgnwWhchyxJOFSo+/CetC2d7FfL39MmXqNVDlI
 JGuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:autocrypt:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=JyKBWtHF/AkbdS7emKh1g1wpW0Y50OHJA10bqgrcGn0=;
 b=B1LTtnm83ycruMZCPJTVynDdRgai/jgbnwN42eIMERnDN0rTvLYGSvjfzYp4xbPK23
 i1SZEnHtC7jLXH2Cc3Y2T8OvTaSOIRIURbuozihyayKR8XFni7o9BIcr+ZnhF8XQj94n
 KaARLj9yz68FSTM8K0Th2ee1BJ7rmgDFrpKqSeGRkqdSXYPTJ3Qzjglv5q+Inja+0zNN
 /beGJGLTrG1/DSABF8G05VQD3XQMNU+eV5OXOskaMweT+aSaL2q0quzjnuqXAXr9HTAQ
 ZwiBG1ml/9QIRoSTPv1XPlB2XolCtdol0i+3U80ftGniSl+Fb7276vSSJzbr6+Cq3BYB
 oQVQ==
X-Gm-Message-State: ANhLgQ3lleIL7rf6O7onM5aO43ziLF/mAL6MUDq+M90837U5EF9xKzRH
 WJG0Bwy35hpGiZpv7r1vlrk1RdVx
X-Google-Smtp-Source: ADFU+vsSpqRrUQtPEEvC2BjavG2vhEDPY6YZCXA5rDWiR0AvPqoXd6IPO1ntoO02WUcimfjVUIM1sQ==
X-Received: by 2002:a05:600c:291a:: with SMTP id
 i26mr1928671wmd.96.1585369921780; 
 Fri, 27 Mar 2020 21:32:01 -0700 (PDT)
Received: from [10.230.3.19] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id 5sm8087423wrs.20.2020.03.27.21.31.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 27 Mar 2020 21:32:01 -0700 (PDT)
To: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Dave.Martin@arm.com,
 james.morse@arm.com, Doug Berger <opendmb@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Scott Branden
 <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Subject: SError handling vs. SIGSEGV
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
Message-ID: <3da89354-78f7-5f48-9eec-75c74270fa3e@gmail.com>
Date: Fri, 27 Mar 2020 21:31:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_213204_720030_FD20BE50 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:335 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Up until commit e4ba15debcfd27f60d43da940a58108783bff2a6 ("arm64:
fix for bad_mode() handler to always result in panic") we had been
getting SIGSEGV delivered to applications running on Broadcom STB
platforms which access register holes or registers for which we have
purposely blocked the access via the GISB (proprietary bus for control
registers) bus arbiter used on those SoCs. That commit arguably plugged
a hole in that scheduling was possible when panic() was intended, so
this is not really the only culprit. We are actually relying on this
behavior to pass a number of tests that specifically exercise that
register blocking is effective without taking down the whole system.

Due to our SoC integration all of those register access errors are
SErrors with the signature at the bottom.

Doug had tried to submit a patch series that allowed a given platform to
install custom abort handlers, similar to what ARM 32-bit permits, but
this got shot down:

https://lkml.org/lkml/2017/3/24/413

and this was eventually merged in this shape:

https://lore.kernel.org/patchwork/cover/775056/

I understand that such a SError is deemed catastrophic and
unrecoverable, but taking down the whole system for something we could
possibly resolve with a SIGSEGV provided the platform is known and hooks
are in place would be more desirable IMHO, otherwise we have nice DoS
lurking around and hard to debug systems in production, too.

As it stands today, I see no way to have a self hosted test case that
exercises that our GISB bus arbiter blocking works correctly because the
whole kernel is taken down when the test is successful :/

Thank you!

[   14.460690] SError Interrupt on CPU3, code 0xbf000002 -- SError
[   14.460695] CPU: 3 PID: 177 Comm: devmem Not tainted
5.6.0-rc7-g3893c2025fec #82
[   14.460696] Hardware name: BCX972160DV (DT)
[   14.460697] pstate: 60000000 (nZCv daif -PAN -UAO)
[   14.460699] pc : 00000000004087b0
[   14.460700] lr : 0000000000407b54
[   14.460701] sp : 0000007fea6fd740
[   14.460702] x29: 0000007fea6fd7e0 x28: 0000000000000000
[   14.460706] x27: 0000000000000000 x26: 0000000000000000
[   14.460709] x25: 0000000000000000 x24: 0000000000000000
[   14.460712] x23: 0000000000000000 x22: 0000000000000004
[   14.460714] x21: 00000000004cf000 x20: 0000007fea6fd918
[   14.460717] x19: 0000000000000029 x18: 0000000000050600
[   14.460720] x17: 00000000004cf408 x16: 0000007fba21b3d8
[   14.460723] x15: 000000000000013b x14: 0000000000000000
[   14.460726] x13: 0000000000000000 x12: 0000000000000007
[   14.460729] x11: 0000000000000008 x10: 0101010101010101
[   14.460731] x9 : 0000007fba25b1a8 x8 : 00000000000000de
[   14.460734] x7 : 1fffffffffffffff x6 : 0000007fba2999f0
[   14.460737] x5 : 0000000009902000 x4 : 0000000000000003
[   14.460739] x3 : 0000000000000001 x2 : 0000007fea6fdf71
[   14.460742] x1 : 0000000000000030 x0 : 0000000000000000
[   14.460745] Kernel panic - not syncing: Asynchronous SError Interrupt
[   14.460747] CPU: 3 PID: 177 Comm: devmem Not tainted
5.6.0-rc7-g3893c2025fec #82
[   14.460749] Hardware name: BCX972160DV (DT)
[   14.460750] Call trace:
[   14.460751]  dump_backtrace+0x0/0x1d8
[   14.460752]  show_stack+0x24/0x30
[   14.460753]  dump_stack+0xdc/0x14c
[   14.460754]  panic+0x13c/0x320
[   14.460755]  nmi_panic+0x50/0x70
[   14.460757]  arm64_serror_panic+0x74/0x80
[   14.460758]  do_serror+0xb4/0x158
[   14.460759]  el0_error_naked+0x14/0x1c
[   14.460781] SMP: stopping secondary CPUs
[   14.460782] Kernel Offset: disabled
[   14.460783] CPU features: 0x00002,24002004
[   14.460784] Memory Limit: none
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
