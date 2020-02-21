Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA01167EF7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 14:47:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aUlWAvlbQDEYEnf7s9GQnppZY1rlJoMg/JfMro4jtbE=; b=EDPb1l3HwA5eSz
	0TPtOhauDuYgOtceqZk/32g32WKacIRmmF2u1PC/P3adIudRUXmar9eyzaJUxVk2j6bDyhnybglas
	vq/+DjakC3cnjsFFqkDcP6TyvYfbSRgJC3AEPv6qR+rWLKJZ1P+X0mfBXfzTW2FgylM60JJUN6yyL
	UT7FA7gSiEuwDzTm8gVwjd2lTJY+l3iNBe0Cwh8LhaXJNOdHNXyl6HMcKECyS1vg81YH7F4l+HLPE
	zf417F9iraUfIq3sotKJtfW9QiqmfFWUWgtDGnq7q2RotOfbjXDihbLwMNnKNCnpx9OpugTm/VXjS
	2bzNtBJFnqV0L2ttnJBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j58ea-0008CA-6D; Fri, 21 Feb 2020 13:47:40 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j58eO-00089J-RC
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 13:47:30 +0000
Received: by mail-lj1-x241.google.com with SMTP id w1so2245030ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 05:47:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6RiDIgBnM17s0MhdLFdue8lQDMd7IU/QHmr8wXGck+U=;
 b=LrtzUHshefW35GP6ZfEoYXl7PU7Ew/G3Olj5e9FBDEm0N0uRMbD106U333sP+XdFGl
 oKIZmvtCNOzaLh17pnvgyRA9+mFeV7G+9zCVGN0pjQV4Y6p/E5NGzkm9wYYrevaEQjpH
 ejXx6bANY0OhMZKX5OJROiRHYzuvZONL0JDjbAp3mz/MMI1EqSr30aiIXqeP7kOVSXWj
 EOhrQ/o5tEXWomMLfszjof3ypPYs9bKQv/l9AgrwdmLRkYA9mvJuvmRj7Qgwl/h/viag
 DdLp7ObOU0eqfNlWn6lSSo0GUTsCIW+Bmq7+zPEFXWsJrqPGQr0cUm0eWkN6FTONdaeK
 chrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6RiDIgBnM17s0MhdLFdue8lQDMd7IU/QHmr8wXGck+U=;
 b=VSBcbt/+h9cusftRuPMv0h/Krm75SGwy2il7r8oH0BwKG/j257vTM+hKwLvaZBa0Lg
 ELs2jvsSmSpFWmZ0D4NsIiFbaiF92ttdrbUAvjG6NpwLmsvuVzH9NEPq3gQKNFGPi/05
 qEw8nzYQGQUM4FtkwIjZcipljA82qsB5hlbWzWcd4aKNcPwWWV4lEe6eRtdYHY0+sOzZ
 ZsmVv8If3Og8d6AOEWyq/Y+gygxA2TUMKS3TcfaAzQAtzIqrNwlDaIVdOINeAFGmItfz
 uh46qck+MXtDQLuDCkrdg9EbbEi2qtiFzXc4WM65B46pf2PWIvfwBVtzjWptRKODNRb9
 9+Tw==
X-Gm-Message-State: APjAAAVR63YFNzugTiEjvfY+GB5dfhYpyN0Md0GZabxy5MIDuC6R6qJ5
 u5dsh9l+aLawbSvf3KTkf8seKePl1ADxMXvrORWVtQ==
X-Google-Smtp-Source: APXvYqy0v9gcI71kNOOkUK7oygUEUPyQ1/Vc5JOaBADO6tiKLQPSAXDQnjesGOK/oFE4d/DSEaPhvt5lW2ObMIsj1nI=
X-Received: by 2002:a2e:2a84:: with SMTP id
 q126mr21375720ljq.258.1582292846656; 
 Fri, 21 Feb 2020 05:47:26 -0800 (PST)
MIME-Version: 1.0
References: <20200125113355.GA22220@Mani-XPS-13-9360>
 <20200214071856.197028-1-matheus@castello.eng.br>
In-Reply-To: <20200214071856.197028-1-matheus@castello.eng.br>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 21 Feb 2020 14:47:15 +0100
Message-ID: <CACRpkdYbxCi3WGq7WBWVHmNmGSaWO4=VrxruBy87MKLK0464mQ@mail.gmail.com>
Subject: Re: [PATCH v3] pinctrl: actions: Fix functions groups names for S700
 SoC
To: Matheus Castello <matheus@castello.eng.br>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_054728_883488_209AE697 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, pn@denx.de,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 8:20 AM Matheus Castello
<matheus@castello.eng.br> wrote:

> Group names by function do not match their respective structures and
> documentation defined names.
>
> This fixes following errors when groups names defined on documentation are used:
> [    4.262778] pinctrl-s700 e01b0000.pinctrl: invalid group "sd0_d1_mfp" for function "sd0"
> [    4.271394] pinctrl-s700 e01b0000.pinctrl: invalid group "sd0_d2_d3_mfp" for function "sd0"
> [    4.280248] pinctrl-s700 e01b0000.pinctrl: invalid group "sd1_d0_d3_mfp" for function "sd0"
> [    4.289122] pinctrl-s700 e01b0000.pinctrl: invalid group "sd0_cmd_mfp" for function "sd0"
>
> Fixes: 81c9d563cc74 (pinctrl: actions: Add Actions Semi S700 pinctrl driver)
> Signed-off-by: Matheus Castello <matheus@castello.eng.br>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>
> Thanks Manivannan for the review.
>
> Changes since v2:
> - Mention s700 SoC on subject

I already fixed up the subject and applied :)

Please check the result.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
