Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D723D24848
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 08:44:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8z12fG87vfF9xq+vioPPKe9vlpSUpXaoaZdqbPyckY=; b=nCzDOb/+UteXSx
	Qo1QOGOLb76D6Lm537z9arMJxhOC+2k81WHWUUhkcq9HrdLqO828+FAdpN6ILy4r2vJNIqzBYuX4o
	Qs27MobIULnNVnzdMvA8ETefUb/NxqA1e2eckg4WaU+IOU9tPTfIyuL47noTcP5UcocvOM2SUV6s6
	LoD41eNB5qRgLjr2Mf0M7ANC59DLkiB8GzuKj+T9n7W6GcTCaFuEM/5tue5dMfWTeT854SKrW0df1
	CiYIVs30gl6s4cK3wJ2PI+ltiz9XuMWXLAzpL2lCUyJ865xtvdQhyKr17yfrHChGz1PHQv7phnpog
	nYVrbu/xBfb+VKU785/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSyVP-0007gX-Kt; Tue, 21 May 2019 06:44:11 +0000
Received: from mail.z3ntu.xyz ([128.199.32.197])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSyVH-0007fd-FC
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 06:44:05 +0000
Received: from [172.27.227.142] (unknown [185.69.244.31])
 by mail.z3ntu.xyz (Postfix) with ESMTPSA id C4E31C59C4;
 Tue, 21 May 2019 06:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=z3ntu.xyz; s=z3ntu;
 t=1558421037; bh=dvaJRPAFRepM6HgXr2hIRVw7xqblQwDjcz3JJFlmUQ8=;
 h=Date:In-Reply-To:References:Subject:To:CC:From;
 b=HCR66knYPdrhHpKFMowayhtCwu0h0E7c81aKIrfEcX5IFfDcF0wdgv5h5wxTmIhKh
 rSeWV2vvL7N/yrBvMF7ztJaMpw0tzAbsWKLDTKwX0uZAe0JQ/Edg1ww5BeXGCz/bz4
 hgr8yLLrutP/uoHkbey6T/Xku++ah100IHnk+4sA=
Date: Tue, 21 May 2019 08:43:45 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <20190520110742.ykgxwaabzzwovgpl@flea>
References: <20190518170929.24789-1-luca@z3ntu.xyz>
 <20190520110742.ykgxwaabzzwovgpl@flea>
MIME-Version: 1.0
Autocrypt: addr=luca@z3ntu.xyz; keydata=
 mQINBFgc0/QBEACzBE9TBfe+O2TARphhmhVgMd2zo3lkvjWdohb9mg9+NvUq7swQR2l8davgwaTN
 VwDUA9jdzfjp4GShf0VFnqqFGouEc3OMeuHFdtjG4RoYGW+XvEoAcTWgY6glANmMZMi33D+2wnQQ
 Qziie3LMTQ7Tlpk8at8Ck4ShmmGTmek9LNFq1eHs3IHK5eH0fDA/rYvPxFMmwbHRDjdwtXjZlXBC
 nxEXK8CJkNG58G+RbtPU0I8Iu02TDOkr9x6KwLT1lJmq03wCkuQEXrDAzo6kkeAMhzWBtBtxTB1M
 byOZqNlbzEtxOTK9iA74U6POyN//876ESQ87LicFS4mgoyHL0Vt7ro9CSH7Imzv96Ae8HDZqIcBy
 Bn9YMBswjy4JOsC9JP/oDhr71y40nnrVvgx4ZesJM0PL9J1JYQWJQ22GoinnDwSB11Re51OYsK+l
 xEqph38N+AjcNYm+l85O/l+BkkULC+0kHWG6wQCv67KyeYCJJhNqJucXj2gXXaKyv2ltWPwHgK6w
 OAtN9QbimcYV2PUgfx6hl5r7buwc3tefp9ccmtoLq74mgrKiLurHqa4pKCa1uqfhBEN5/Os5tMrX
 IGa2sRvKHK0Pn7iyJQyuclyOp4r9W+QUw2DENm4n6ovkl7rfriL6ibBgVLcnexdG/8LZRaWFV96G
 YY3VCcRlz8SCwQARAQABtBtMdWNhIFdlaXNzIDxsdWNhQHozbnR1Lnh5ej6JAj0EEwEIACcFAlgc
 0/QCGy8FCQWjmoAFCwkIBwIGFQgJCgsCBBYCAwECHgECF4AACgkQ+vac9s0tAs3X3BAAo6F00XKQ
 LAvQl/nTK4+2EHjtFUF0OnUK0rIN1b1l5WMVHFF8njcVqG1Qc7CKyYCS6mN6bbYkXsj3TXy8Vx9R
 P4ek8UoxEnVXYeayF5D+ke7yCmOJjSEBZVh/meA2jYOnPXEXR7bTT+PNaCTIgS6MucYous3ngiIL
 kDT9Q09ESjs9xhoqbpBr19fqE9HpuWCaVGi5tt8EQAVq32kfq9DFqanjuaz18/I3VV1fMKWoNZBu
 qJKveh9oDmkKe32PTVV8ak1tpWYNRhoIL8jZgJkzG8cMPdi6fi8xy7wIaT49py+0rndGF7i79nAx
 Sq3vlt6dMgcOlMYTZMw1O8Y28eiHm5DCzyPR5FkQvQ1xY2TPTZh9H4zukBLBkctDtccosGwZt3tb
 uoQ2Nelm12ldf4kdbGmWdSIEgTWLJb8LfiNe4PIPnWU2Ho0EbHs2RBa81Y83NEZpXYWpYLwUafkE
 5GG4E6tG1aUU2g/HSf+3BaHYVZ7vv2Zc7DmCkeYS5VyzZvajmVWj4pjPY5RrNbDKWOIIOc5ow+5e
 eLFX6wHWFlgM3zPr4IU/XqKhDUydx8pyRHEfDUTRJHokP4Ga3DyvfqtfF8zQQwIGbc+D8Tdt9JbM
 Op7ZhZwmE0J3q5DUuYVXFO9kWT5Rf2QvNNmbBNQnpXXUirwztbKA6BWoygQDVvVgdrQ=
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Add lradc node
To: Maxime Ripard <maxime.ripard@bootlin.com>
From: luca@z3ntu.xyz
Message-ID: <9B2B83DF-2C91-4DDA-B707-664A792A8BCF@z3ntu.xyz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_234403_789230_2FABA294 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: 3.9 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [185.69.244.31 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On May 20, 2019 1:07:42 PM GMT+02:00, Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>Hi!
>
>On Sat, May 18, 2019 at 07:09:30PM +0200, Luca Weiss wrote:
>> Add a node describing the KEYADC on the A64.
>>
>> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
>> ---
>>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
>b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
>> index 7734f70e1057..dc1bf8c1afb5 100644
>> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
>> @@ -704,6 +704,13 @@
>>  			status = "disabled";
>>  		};
>>
>> +		lradc: lradc@1c21800 {
>> +			compatible = "allwinner,sun4i-a10-lradc-keys";
>> +			reg = <0x01c21800 0x100>;
>> +			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
>> +			status = "disabled";
>> +		};
>> +
>
>The controller is pretty different on the A64 compared to the A10. The
>A10 has two channels for example, while the A64 has only one.
>
>It looks like the one in the A83t though, so you can use that
>compatible instead.
>
>Maxime
>
>--
>Maxime Ripard, Bootlin
>Embedded Linux and Kernel engineering
>https://bootlin.com

Hi,
Looking at the patch for the A83t, the only difference is that it uses a 3/4 instead of a 2/3 voltage divider, nothing is changed with the channels. But I'm also not sure which one (or a different one) is used from looking at the "A64 User Manual".

Thanks, Luca

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
