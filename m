Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CD51181C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 09:10:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j825ZxggouNiwo/mpqgB3jdjsYWFkfXqrbhsqOB1954=; b=BEBr3+VV082Pjq
	1KU2R7yiJeoFR9jSY+RogxGtTijEWlN2cLDqpFxaQRzm0z6mytvoA3SLGJsBfKFWePm7qzyrd4eJE
	/26OrH8GjReOda2lnxAUmkAeqWCguT0IWZaKL08MZkjVFHQ4NaeWgOsthSNjEw/HOaCeb8Y8V3u7F
	2dP5AnWMaCWQh5VhGlNOLJlC+hBd0XRuirKDJEwrEOatnuPletiYosKqsA2n4WCTSAxsQuXaN+yNe
	TRV9fr7UJ7zn2EYllzoH6ZuQe7XMxc0s7YHizu1dmVV+Gkjd7F/Bxvi4eA2wxkvbGxz7tPq9DNOzn
	6+vIoBLIRKJCbSJpDUhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieabA-000846-5O; Tue, 10 Dec 2019 08:10:24 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieab1-000835-Ul
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 08:10:17 +0000
Received: by mail-ot1-x341.google.com with SMTP id g18so14693211otj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 00:10:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vz6R87ni7yUsJSvbtHOrtG+4LLjpsYmM0XLZzDuCYMQ=;
 b=aO0EDGG+taUiH1lwzLmkh8qGtl/vBLFME9dNu7J/7zNoegckJYYSzyE5l2sbALsWcE
 kVBVQt/LJInOFR5TPDw6kSwfIWxUAoUgw0GZnO82G54pAfRRA+9JCtSonntsgOa8VPpB
 /IWCtlvwzKTuL805oj1PU5MOBgAksON69t6gtHaE613pUGuWI1VxPkrt1tLZxkFRQTfo
 tZyfMb7oA87lp4rNJZIQhVGMU2z3WC+zJQN/CoblHKIj3FPLgSTfcfPlYdu+w/76dtXL
 6R7QHRUtGAID7GIj0n4UtgIEbsVxZmoRB1Cvipr9+wfOs/czEfoE2FT/GxEh81CqNFen
 1xmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vz6R87ni7yUsJSvbtHOrtG+4LLjpsYmM0XLZzDuCYMQ=;
 b=QXv5BGBFrWO5ncHWCc3pOPcuXCgCWCuqLcbmIk8zmqjUL0cA0ojbeqVAMCednXX+x9
 AbIoiwc6N0q22tBOrhbW3pcfuKrmgEi5Mct5dgk8Fi3WMQr07o7twnEQN/g7f5AeJWup
 wzd3we4Da2cKelA4ROOGiHw9sdNZiAXmgvHslvWXFGjlF1JGbDAbjj28ToiAX5BavB8y
 FToLsZu4jyOibl9K5bn4fcHP6IWrfZreJzUpEXiMYs1IDjsAqvy8U9FTD8n9meTU7PFH
 dOwax/Y21ONVo5/sLgfyjuS5ida8kQt4+2MAOD5WTEwYVgew2VwI06K/fDc587jVmoIx
 EYNQ==
X-Gm-Message-State: APjAAAWFu+6k8nRFZLDormqlHL8EJb3tpYejjfghnqmzW/rbRU4W/+nE
 hAPCO0wLx86r68jRKLJ7i4l0jjabRzLhlYEDron0cg==
X-Google-Smtp-Source: APXvYqygDaavz4i17hlWrXkldSyRPJaVOXQpkqPFbd5B2mH9fpEPh7U7DJu0ZX01rHah/3Lhaw6V12ZcXjKbgVd51kI=
X-Received: by 2002:a05:6830:130d:: with SMTP id
 p13mr25773146otq.161.1575965407039; 
 Tue, 10 Dec 2019 00:10:07 -0800 (PST)
MIME-Version: 1.0
References: <20191209180752.GJ35479@atomide.com>
In-Reply-To: <20191209180752.GJ35479@atomide.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Tue, 10 Dec 2019 09:09:55 +0100
Message-ID: <CAHUa44EJAjL+MGqgKd6YvQAg0z4hRYXb9MeTqsTYhAe-RBZt+g@mail.gmail.com>
Subject: Re: arm_smccc_smc as generic smc interface?
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_001016_124035_B7EB2FB9 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Sumit Garg <sumit.garg@linaro.org>,
 Arnd Bergmann <arnd@arndb.de>, Volodymyr Babchuk <vlad.babchuk@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, "Andrew F. Davis" <afd@ti.com>,
 Olof Johansson <olof@lixom.net>, Russell King <rmk+kernel@armlinux.org.uk>,
 Marc Zyngier <maz@kernel.org>, Andy Gross <andy.gross@linaro.org>,
 Colin Ian King <colin.king@canonical.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tony,

On Mon, Dec 9, 2019 at 7:07 PM Tony Lindgren <tony@atomide.com> wrote:
>
> Hi all,
>
> So it seems that we could make arm_smccc_smc() into a generic kernel
> smc interface instead of being limited to optee usage. That is
> assuming optee and legacy calls are never be enabled the same time
> on a booted system :)

arm_smccc_smc() is not limited to OP-TEE only. A quick grep gives
quite a few places of which OP-TEE is just one.

>
> I know arm_smccc_smc() currently assumes a specific register usage
> for the optee case, but AFAIK those limitations do not exist for
> non-optee cases.

arm_smccc_smc() is for SMCs following SMC calling convention, see
http://infocenter.arm.com/help/topic/com.arm.doc.den0028a/index.html

>
> Does anybody see some other issues with making arm_smccc_smc() into
> a generic smc call interface?

I suppose that depends on what you mean with a generic smc call
interface. arm_smccc_smc() is quite generic already as I see it. :-)

>
> If there are some more optee specific considerations with making
> arm_smccc_smc() into a generic interface, we could just set up
> something generic that also arm_smccc_smc() can then call.

OP-TEE is relying on SMC calling convention
http://infocenter.arm.com/help/topic/com.arm.doc.den0028a/index.html

>
> The use case I'm familiar with are the old TI smc calls that need
> register specific quirks enabled only for the non-optee case,
> while with optee enabled, quirks are not needed. There are
> probably similar issues with other SoCs too.

I'm not too familiar with those. There's a few of them in the OP-TEE
code base too, so at least some of them can be handled via the SMC
calling convention.

In <arm-smccc.h> there's already been made room for some Qualcomm
quirks, perhaps it's possible to use or extend it to cover the TI
cases you have in mind.

Thanks,
Jens

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
