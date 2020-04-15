Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C95A1A9709
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:42:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xICJ7o61qPK0f5tmBFX96cA9e7DdukGbBAR9VczaJc8=; b=KsKeFUdGuQ9uWzrKUx5ZPVCfl
	XJaj1t+mO9Sj1H9yh881qBkvaI2yfTFRV2Jr8PRHEHNG8gn4uqKZ3woFU/INn+K9Q8HckOML+6TFf
	kiCW6HuGvCVrI4TEFQ8a3QADIRGA8gVgZ5KeuMSoHFHyYSvXrmQ2vgs4E08gwGJftqKQucoSuBDQW
	XRG4ItTEd5xdzChtMw0kJFdkzOc7seKwwK8zCMLzoQvowCkcIPTEcL1dvjDrYSuF++8URkbEDmBgs
	IrS7885IRNiuIwA8bMyFYvKY4HSTN310R9PCktpC5gf5wjCkShTq/AhynQNTH4DanZZ3ZAM6OU7Zn
	FpeZKfc0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdcQ-0007ON-V7; Wed, 15 Apr 2020 08:42:03 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOdaa-0003HZ-AN
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 08:40:12 +0000
Received: by mail-wr1-x442.google.com with SMTP id u13so17584044wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 01:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to;
 bh=UrgT7wSdMoxC/RrnuBGfx9Flpwdpyrd8OIIl88CP38Q=;
 b=r+q6VWwWplsZyK8nW0yyEAwuekMEL6XsOjfiaudV9Ea1rUGFjnQM3kg5GIjJtU4SeD
 rch9TIZsUmjifqDjK+WvJ37DANa7M52BZOts/wUDVxfpCEYTWpl8Nqom3I+0tdE9+xm7
 vfVJ7PMNELFSeQiU1VPmyCQkWHIYtolSqvN1AJTDf5byAc22M6Q4hKut57yG8i8NIr/f
 mgudi1Y/M52KtlhijfVi94wcy5BRnuLs+dMo9ev0xBrLBJk8QopP50GEK0xQe5YWdtBD
 yPshwm5izTWC8RiZYy8F/+TczADEo+UFhSh3hktyMgVgEGfZ+4j990MEpXpRicvC77bM
 KeLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to;
 bh=UrgT7wSdMoxC/RrnuBGfx9Flpwdpyrd8OIIl88CP38Q=;
 b=lg6kUsxC2l0qqnruPcjrwvn62HK/N20ELhNsvg3hoLkx9bQFHBFbLoElbf0Jjw9DFP
 g73kqR8h+eAw92y9CqspsX2kcauUMhbdwBIl5AMOFoD0yr++vmjvBeZ1HJq0tOujb86o
 7gmTYXOS9rLAKkKz9VycVORLX1d6BD8Ak8bYk5f4zpJmqnz6y7pZzab+JT1A/XvQdeQ6
 0n9SykuEnQ4JDTgOvXzegxnmpwvkMMpmRBS58TxbsEthJu28JQvaoKjLCm2cVbdN1URg
 VVvjxlInR/hmiFwKHkBTReF3bDaMs+hiHETdMC7/gaZLNkqB84vnAQaqWF3+0+DmuYKV
 diEA==
X-Gm-Message-State: AGi0PuZo79QeJg5VBvyTuRRP9YlItYFf/0Pmic/QQKkKOuxnzx9Qsr2Z
 7UnbCTCIhF/58as7jffAwcTIuw==
X-Google-Smtp-Source: APiQypIktIBbOp0xkrRc8oV2zDeo5f6+XenMI8zyCwnGFas2If0f7LjCiy6hAmEZJ5vS57BM/+4grg==
X-Received: by 2002:a5d:4283:: with SMTP id k3mr19357148wrq.238.1586940006141; 
 Wed, 15 Apr 2020 01:40:06 -0700 (PDT)
Received: from [173.194.76.108] ([149.199.62.129])
 by smtp.gmail.com with ESMTPSA id j68sm23094011wrj.32.2020.04.15.01.39.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2020 01:40:04 -0700 (PDT)
Subject: Re: [PATCH] arm64: zynqmp: Fix GIC compatible property
To: Michal Simek <michal.simek@xilinx.com>,
 linux-arm-kernel@lists.infradead.org, git@xilinx.com
References: <a50412fbb520954e4602f274f19a7ffbd1154ead.1582621224.git.michal.simek@xilinx.com>
From: Michal Simek <monstr@monstr.eu>
Autocrypt: addr=monstr@monstr.eu; keydata=
 xsFNBFFuvDEBEAC9Amu3nk79+J+4xBOuM5XmDmljuukOc6mKB5bBYOa4SrWJZTjeGRf52VMc
 howHe8Y9nSbG92obZMqsdt+d/hmRu3fgwRYiiU97YJjUkCN5paHXyBb+3IdrLNGt8I7C9RMy
 svSoH4WcApYNqvB3rcMtJIna+HUhx8xOk+XCfyKJDnrSuKgx0Svj446qgM5fe7RyFOlGX/wF
 Ae63Hs0RkFo3I/+hLLJP6kwPnOEo3lkvzm3FMMy0D9VxT9e6Y3afe1UTQuhkg8PbABxhowzj
 SEnl0ICoqpBqqROV/w1fOlPrm4WSNlZJunYV4gTEustZf8j9FWncn3QzRhnQOSuzTPFbsbH5
 WVxwDvgHLRTmBuMw1sqvCc7CofjsD1XM9bP3HOBwCxKaTyOxbPJh3D4AdD1u+cF/lj9Fj255
 Es9aATHPvoDQmOzyyRNTQzupN8UtZ+/tB4mhgxWzorpbdItaSXWgdDPDtssJIC+d5+hskys8
 B3jbv86lyM+4jh2URpnL1gqOPwnaf1zm/7sqoN3r64cml94q68jfY4lNTwjA/SnaS1DE9XXa
 XQlkhHgjSLyRjjsMsz+2A4otRLrBbumEUtSMlPfhTi8xUsj9ZfPIUz3fji8vmxZG/Da6jx/c
 a0UQdFFCL4Ay/EMSoGbQouzhC69OQLWNH3rMQbBvrRbiMJbEZwARAQABzR9NaWNoYWwgU2lt
 ZWsgPG1vbnN0ckBtb25zdHIuZXU+wsGBBBMBAgArAhsDBgsJCAcDAgYVCAIJCgsEFgIDAQIe
 AQIXgAIZAQUCWq+GEgUJDuRkWQAKCRA3fH8h/j0fkW9/D/9IBoykgOWah2BakL43PoHAyEKb
 Wt3QxWZSgQjeV3pBys08uQDxByChT1ZW3wsb30GIQSTlzQ7juacoUosje1ygaLHR4xoFMAT9
 L6F4YzZaPwW6aLI8pUJad63r50sWiGDN/UlhvPrHa3tinhReTEgSCoPCFg3TjjT4nI/NSxUS
 5DAbL9qpJyr+dZNDUNX/WnPSqMc4q5R1JqVUxw2xuKPtH0KI2YMoMZ4BC+qfIM+hz+FTQAzk
 nAfA0/fbNi0gi4050wjouDJIN+EEtgqEewqXPxkJcFd3XHZAXcR7f5Q1oEm1fH3ecyiMJ3ye
 Paim7npOoIB5+wL24BQ7IrMn3NLeFLdFMYZQDSBIUMe4NNyTfvrHPiwZzg2+9Z+OHvR9hv+r
 +u/iQ5t5IJrnZQIHm4zEsW5TD7HaWLDx6Uq/DPUf2NjzKk8lPb1jgWbCUZ0ccecESwpgMg35
 jRxodat/+RkFYBqj7dpxQ91T37RyYgSqKV9EhkIL6F7Whrt9o1cFxhlmTL86hlflPuSs+/Em
 XwYVS+bO454yo7ksc54S+mKhyDQaBpLZBSh/soJTxB/nCOeJUji6HQBGXdWTPbnci1fnUhF0
 iRNmR5lfyrLYKp3CWUrpKmjbfePnUfQS+njvNjQG+gds5qnIk2glCvDsuAM1YXlM5mm5Yh+v
 z47oYKzXe87A4gRRb3+lEQQAsBOQdv8t1nkdEdIXWuD6NPpFewqhTpoFrxUtLnyTb6B+gQ1+
 /nXPT570UwNw58cXr3/HrDml3e3Iov9+SI771jZj9+wYoZiO2qop9xp0QyDNHMucNXiy265e
 OAPA0r2eEAfxZCi8i5D9v9EdKsoQ9jbII8HVnis1Qu4rpuZVjW8AoJ6xN76kn8yT225eRVly
 PnX9vTqjBACUlfoU6cvse3YMCsJuBnBenGYdxczU4WmNkiZ6R0MVYIeh9X0LqqbSPi0gF5/x
 D4azPL01d7tbxmJpwft3FO9gpvDqq6n5l+XHtSfzP7Wgooo2rkuRJBntMCwZdymPwMChiZgh
 kN/sEvsNnZcWyhw2dCcUekV/eu1CGq8+71bSFgP/WPaXAwXfYi541g8rLwBrgohJTE0AYbQD
 q5GNF6sDG/rNQeDMFmr05H+XEbV24zeHABrFpzWKSfVy3+J/hE5eWt9Nf4dyto/S55cS9qGB
 caiED4NXQouDXaSwcZ8hrT34xrf5PqEAW+3bn00RYPFNKzXRwZGQKRDte8aCds+GHufCwa0E
 GAECAA8CGwIFAlqvhnkFCQ7joU8AUgkQN3x/If49H5FHIAQZEQIABgUCUW9/pQAKCRDKSWXL
 KUoMITzqAJ9dDs41goPopjZu2Au7zcWRevKP9gCgjNkNe7MxC9OeNnup6zNeTF0up/nEYw/9
 Httigv2cYu0Q6jlftJ1zUAHadoqwChliMgsbJIQYvRpUYchv+11ZAjcWMlmW/QsS0arrkpA3
 RnXpWg3/Y0kbm9dgqX3edGlBvPsw3gY4HohkwptSTE/h3UHS0hQivelmf4+qUTJZzGuE8TUN
 obSIZOvB4meYv8z1CLy0EVsLIKrzC9N05gr+NP/6u2x0dw0WeLmVEZyTStExbYNiWSpp+SGh
 MTyqDR/lExaRHDCVaveuKRFHBnVf9M5m2O0oFlZefzG5okU3lAvEioNCd2MJQaFNrNn0b0zl
 SjbdfFQoc3m6e6bLtBPfgiA7jLuf5MdngdWaWGti9rfhVL/8FOjyG19agBKcnACYj3a3WCJS
 oi6fQuNboKdTATDMfk9P4lgL94FD/Y769RtIvMHDi6FInfAYJVS7L+BgwTHu6wlkGtO9ZWJj
 ktVy3CyxR0dycPwFPEwiRauKItv/AaYxf6hb5UKAPSE9kHGI4H1bK2R2k77gR2hR1jkooZxZ
 UjICk2bNosqJ4Hidew1mjR0rwTq05m7Z8e8Q0FEQNwuw/GrvSKfKmJ+xpv0rQHLj32/OAvfH
 L+sE5yV0kx0ZMMbEOl8LICs/PyNpx6SXnigRPNIUJH7Xd7LXQfRbSCb3BNRYpbey+zWqY2Wu
 LHR1TS1UI9Qzj0+nOrVqrbV48K4Y78sajt7OwU0EUW68MQEQAJeqJfmHggDTd8k7CH7zZpBZ
 4dUAQOmMPMrmFJIlkMTnko/xuvUVmuCuO9D0xru2FK7WZuv7J14iqg7X+Ix9kD4MM+m+jqSx
 yN6nXVs2FVrQmkeHCcx8c1NIcMyr05cv1lmmS7/45e1qkhLMgfffqnhlRQHlqxp3xTHvSDiC
 Yj3Z4tYHMUV2XJHiDVWKznXU2fjzWWwM70tmErJZ6VuJ/sUoq/incVE9JsG8SCHvVXc0MI+U
 kmiIeJhpLwg3e5qxX9LX5zFVvDPZZxQRkKl4dxjaqxAASqngYzs8XYbqC3Mg4FQyTt+OS7Wb
 OXHjM/u6PzssYlM4DFBQnUceXHcuL7G7agX1W/XTX9+wKam0ABQyjsqImA8u7xOw/WaKCg6h
 JsZQxHSNClRwoXYvaNo1VLq6l282NtGYWiMrbLoD8FzpYAqG12/z97T9lvKJUDv8Q3mmFnUa
 6AwnE4scnV6rDsNDkIdxJDls7HRiOaGDg9PqltbeYHXD4KUCfGEBvIyx8GdfG+9yNYg+cFWU
 HZnRgf+CLMwN0zRJr8cjP6rslHteQYvgxh4AzXmbo7uGQIlygVXsszOQ0qQ6IJncTQlgOwxe
 +aHdLgRVYAb5u4D71t4SUKZcNxc8jg+Kcw+qnCYs1wSE9UxB+8BhGpCnZ+DW9MTIrnwyz7Rr
 0vWTky+9sWD1ABEBAAHCwWUEGAECAA8CGwwFAlqvhmUFCQ7kZLEACgkQN3x/If49H5H4OhAA
 o5VEKY7zv6zgEknm6cXcaARHGH33m0z1hwtjjLfVyLlazarD1VJ79RkKgqtALUd0n/T1Cwm+
 NMp929IsBPpC5Ql3FlgQQsvPL6Ss2BnghoDr4wHVq+0lsaPIRKcQUOOBKqKaagfG2L5zSr3w
 rl9lAZ5YZTQmI4hCyVaRp+x9/l3dma9G68zY5fw1aYuqpqSpV6+56QGpb+4WDMUb0A/o+Xnt
 R//PfnDsh1KH48AGfbdKSMI83IJd3V+N7FVR2BWU1rZ8CFDFAuWj374to8KinC7BsJnQlx7c
 1CzxB6Ht93NvfLaMyRtqgc7Yvg2fKyO/+XzYPOHAwTPM4xrlOmCKZNI4zkPleVeXnrPuyaa8
 LMGqjA52gNsQ5g3rUkhp61Gw7g83rjDDZs5vgZ7Q2x3CdH0mLrQPw2u9QJ8K8OVnXFtiKt8Q
 L3FaukbCKIcP3ogCcTHJ3t75m4+pwH50MM1yQdFgqtLxPgrgn3U7fUVS9x4MPyO57JDFPOG4
 oa0OZXydlVP7wrnJdi3m8DnljxyInPxbxdKGN5XnMq/r9Y70uRVyeqwp97sKLXd9GsxuaSg7
 QJKUaltvN/i7ng1UOT/xsKeVdfXuqDIIElZ+dyEVTweDM011Zv0NN3OWFz6oD+GzyBetuBwD
 0Z1MQlmNcq2bhOMzTxuXX2NDzUZs4aqEyZQ=
Message-ID: <f943a6ba-2040-4b78-8c90-cb6ee1d13c38@monstr.eu>
Date: Wed, 15 Apr 2020 10:39:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <a50412fbb520954e4602f274f19a7ffbd1154ead.1582621224.git.michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_014008_411368_2E618326 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Durga Challa <vnsl.durga.challa@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, Nava kishore Manne <nava.manne@xilinx.com>,
 Michael Tretter <m.tretter@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Manish Narani <manish.narani@xilinx.com>
Content-Type: multipart/mixed; boundary="===============5685441384528062156=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5685441384528062156==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="8qCppseVFnBYesUMXQf2YqqxPjyp7Gte2"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--8qCppseVFnBYesUMXQf2YqqxPjyp7Gte2
Content-Type: multipart/mixed; boundary="h2oqIBgbjxjxvvrpHQfFPOMWLsTp5ZpTk";
 protected-headers="v1"
From: Michal Simek <monstr@monstr.eu>
To: Michal Simek <michal.simek@xilinx.com>,
 linux-arm-kernel@lists.infradead.org, git@xilinx.com
Cc: Durga Challa <vnsl.durga.challa@xilinx.com>,
 Manish Narani <manish.narani@xilinx.com>, Mark Rutland
 <mark.rutland@arm.com>, Michael Tretter <m.tretter@pengutronix.de>,
 Nava kishore Manne <nava.manne@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <f943a6ba-2040-4b78-8c90-cb6ee1d13c38@monstr.eu>
Subject: Re: [PATCH] arm64: zynqmp: Fix GIC compatible property
References: <a50412fbb520954e4602f274f19a7ffbd1154ead.1582621224.git.michal.simek@xilinx.com>
In-Reply-To: <a50412fbb520954e4602f274f19a7ffbd1154ead.1582621224.git.michal.simek@xilinx.com>

--h2oqIBgbjxjxvvrpHQfFPOMWLsTp5ZpTk
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 25. 02. 20 10:00, Michal Simek wrote:
> dtbs_check is showing warning around GIC compatible property as
> interrupt-controller@f9010000: compatible: ['arm,gic-400', 'arm,cortex-=
a15-gic']
> is not valid under any of the given schemas
>=20
> Similar change has been done also by commit 5400cdc1410b
> ("ARM: dts: sunxi: Fix GIC compatible")
>=20
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
>=20
>  arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/d=
ts/xilinx/zynqmp.dtsi
> index 1ebb540624de..cde6025b7e24 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> @@ -233,7 +233,7 @@ amba_apu: amba-apu@0 {
>  		ranges =3D <0 0 0 0 0xffffffff>;
> =20
>  		gic: interrupt-controller@f9010000 {
> -			compatible =3D "arm,gic-400", "arm,cortex-a15-gic";
> +			compatible =3D "arm,gic-400";
>  			#interrupt-cells =3D <3>;
>  			reg =3D <0x0 0xf9010000 0x10000>,
>  			      <0x0 0xf9020000 0x20000>,
>=20

Applied.
M

--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs



--h2oqIBgbjxjxvvrpHQfFPOMWLsTp5ZpTk--

--8qCppseVFnBYesUMXQf2YqqxPjyp7Gte2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQQbPNTMvXmYlBPRwx7KSWXLKUoMIQUCXpbIWAAKCRDKSWXLKUoM
IcayAJ9i7JMNA/SZA/EidydkgHNtboFuUQCffXbVgvIAnJMaani0OuBFqEZ/M4s=
=0Pe7
-----END PGP SIGNATURE-----

--8qCppseVFnBYesUMXQf2YqqxPjyp7Gte2--


--===============5685441384528062156==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5685441384528062156==--

