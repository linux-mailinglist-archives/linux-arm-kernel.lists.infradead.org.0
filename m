Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC5611AD9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 16:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4+GzK2Mc8Prs3wJqvClWaulgX/OCFEjPGDsfpPjhtU=; b=tm1dXErQbasKqu
	jWiV6/hlnnMuink5vIzJMJ+YGB+J6ElOr3isipGR+q3SW8+2JoNLmnYPcXZsoujJynxMGmyBh2itW
	eXidbB+cmhjJiH2wT5d265f4FdLcl3Ch9Ozr6xklBiKfsF/tOuagYN8SbtFbmiipZUNJ92jVig4hm
	ANa/GTrBxj9SXNCat1nmsPjWHH+bJyYkl+qGzMzsi/z8TXJbEHZ3XHERgYlUR7GezDot3AUi4fuGt
	qqb/g+e51XkZF6l8oMXWINAueLGuVNRVD6Cn2kEKsH2eWzi3PAlTGc9owXHBoBCl3d9EMEcJ/DXnq
	a+XwrTLeNfITh3S+622w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMCOW-0007RZ-MA; Thu, 02 May 2019 14:09:04 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMCOP-0007Qt-8q
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 14:08:58 +0000
Received: by mail-wr1-x444.google.com with SMTP id o4so3596640wra.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 07:08:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=kygBrnbyyUIh06s/hyc0OhhB1Y6TkH3Yrp9X9NpJCW4=;
 b=b7WOqPHHITgk/LEMlqnA8E9YrsHCJOmgZ+bsAwZgNGbQwwnzFpfWOfWzb6fYGwFwz6
 ANSPvVz5X9C3ofDYbAhPofd1jRxllj+9jLbsOJpKXMdisvQia0fP8aeNLf1HR1YLh9kj
 wECKNy1oMRnot/P+KKRnTYxKCVwdN9DJftxlurba3no7w2nAcBJsNVM9Y1FaEm4OImj0
 7N+/98ptMPw9pxFdzPFvKSYc1wPk7V/DVo7dKn/dQGmv5AysjwOpQ1n5b925CL0BJ74m
 4uooqhaEbU2FB0U8+AzFkMrKO0R71Y5Z+CXrN9beLwmxmjABopEzfFLC8oxIp9DB3bZi
 qO5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kygBrnbyyUIh06s/hyc0OhhB1Y6TkH3Yrp9X9NpJCW4=;
 b=DSqDngdhZfd3hhy/9PwnuC4w5ulQlQJ/u1n7ollYJu2yMIL2EXfyyFjRMG21mJpsv0
 baQjuPuimlSP9uI1oXhRfHqrF0nSVdp9WzvCGof2tFYiC55sGbguRuTMbSy9khHS8ETA
 DpyIQnQV+fwVuLFlQ4tCo/evCzxyzL8Is3xw2Xz/T6ZcKYVpM7aRh5W4qL4Lni8XjVN7
 AIaDSV3LoPaAus35zwT3QuX3IYraObB46Er4Cr/E/ZkbXMgws0TjvYz/vXeZ2OVNxKcx
 0mkifvLvNlQBiSYVPtfFL+irQ99DuKv8YfB1e1JVeO+BGwbk2Fqm3kaCi0edRo1yyfbw
 jShw==
X-Gm-Message-State: APjAAAXYBLQQ+dM3lJoITrWfSC0LXmhb8sT8tNfwFJsD3INI+SgNRwq2
 rHuejAfoNUISY2XmRqE8YO8=
X-Google-Smtp-Source: APXvYqwyGwkkGawbX2FelP9+u3J6EFtdwnuGMnfCrSFayOUrbY46hGOSr5ZE3x1bWHN6HfAkyzFnuQ==
X-Received: by 2002:adf:e309:: with SMTP id b9mr2977875wrj.165.1556806134209; 
 Thu, 02 May 2019 07:08:54 -0700 (PDT)
Received: from [192.168.42.184] (cst-prg-80-10.cust.vodafone.cz.
 [46.135.80.10])
 by smtp.gmail.com with ESMTPSA id m22sm4711438wrb.15.2019.05.02.07.08.52
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 07:08:53 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: r8a7792: blanche: Add IIC3 and DA9063 PMIC node
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <20190304195958.8383-1-marek.vasut@gmail.com>
 <CAMuHMdV1K+0yCbdDD37oeOCQRs7n2-06SQi=6pX_NY0cVcPcWw@mail.gmail.com>
From: Marek Vasut <marek.vasut@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <d7455e6c-f2b7-3bfc-29a1-78ee632c050e@gmail.com>
Date: Thu, 2 May 2019 16:07:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAMuHMdV1K+0yCbdDD37oeOCQRs7n2-06SQi=6pX_NY0cVcPcWw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_070857_313571_7C68F296 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.vasut[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms+renesas@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/19/19 11:26 AM, Geert Uytterhoeven wrote:
> Hi Marek,
> 
> On Mon, Mar 4, 2019 at 9:00 PM <marek.vasut@gmail.com> wrote:
>> From: Marek Vasut <marek.vasut+renesas@gmail.com>
>>
>> Add IIC3 node to R8A7792 SoC device tree and a DA9063 PMIC node
>> to V2H Blanche board device tree.
>>
>> Signed-off-by: Marek Vasut <marek.vasut+renesas@gmail.com>
> 
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> 
>> --- a/arch/arm/boot/dts/r8a7792-blanche.dts
>> +++ b/arch/arm/boot/dts/r8a7792-blanche.dts
>> @@ -308,6 +308,26 @@
>>         };
>>  };
>>
>> +&iic3 {
>> +       status = "okay";
>> +
>> +       pmic@58 {
>> +               compatible = "dlg,da9063";
>> +               reg = <0x58>;
>> +               interrupt-parent = <&irqc>;
>> +               interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
> 
> I've just realized none of the R-Car Gen2 boards configure pinctrl for the
> IRQC2 line (intc_irq2/intc), so they all rely on the boot loader doing that.

I just sent out a patch

-- 
Best regards,
Marek Vasut

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
