Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FC710910E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 16:36:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJhMeANISICa9Z5f210Ahj5/9DiPJFVf1QaqngiPuVI=; b=I4fvYamhsjq69i
	mWpHk8wqyQZ6U/1WTm0/YKLKsOI+zcQ5Q64kHAy9FJVhz8jYYxJE7vJHzJqbTiJj0L4PVOS0xyH1g
	QabHx+1oA8xBpsYVGcWNIDzSILpwbiDdso9Wp6HcRSaY3ceq0vWhQ3Dqi29rmtJNtb03G02fcvC2g
	lpQA8V3dERkSdIeoVl5C+oPyJMu2e/VircrnmN4o2wmdW7jOXoYYn7vW2z8xNsFEIKba5Ahq/tveg
	9Cve1BTg6sIblRdIK7eizz/wfFyv4Kh6dHU3wht0RFeRickHH74yBzDxrch4+Kq9ueR1IzJ4gqC0g
	LJVgAr6WsFfc+JAfdaKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZGPM-0008NA-DI; Mon, 25 Nov 2019 15:36:12 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZGPD-0008K4-Rh
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 15:36:05 +0000
Received: by mail-lf1-x144.google.com with SMTP id m30so9527980lfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 07:36:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZQdIyme6ZG3X2m6iPrJ5ub+wJgNPBCPtZkNSwctyhnM=;
 b=p1ldyS/SwNR93tJ4O9yQxJMSm7WCkDS9QbAG/jwjPQnuKULErVXD1kbDq/3tp+MHH3
 S+76eqkPvdR61ujrBe997YgjYVtS7P7MfELVxk8KAyvQmTxD6P/+/VSOMnyXJ8+U1C3M
 2DHxsvxvyRmTqZVwZjgWV9YeBpca3k6BOBr2c4mRnYBBQ8XB5GvljPH8d9Gc+N+lhuxr
 dIfXl3J3qqM9bnDIbKK5tOpNG/RyHC0V7dJJpnYdLFiDcE+QKEQbidXYceWipLncPk1u
 ximXm/UILNcw9OL55vwYzLL9wBG9pmi+yj/hNHieVdGp+S2xXVtdBKgUrY3YEVJNS+k7
 /ssA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZQdIyme6ZG3X2m6iPrJ5ub+wJgNPBCPtZkNSwctyhnM=;
 b=qAGqqGlMJvT2xioYaUSXX4WRh1IszSMMMhtgPMKnV4a69iOZ1LF2lOo1dCCMkoSzmG
 SdAtEG5lJo+Xkiy2y/JrBvVN1OpqpGV4lCCejcGzMp+TRoTwGjwanGx/LrrmfmoqJ2SR
 vliCMVviBTwURub8rWWol7/alcmbLhm1ND4dcAmqgu4PW231JCrMViTDScmsMp/36klu
 S412669IwnuMfuwA4ZYo00jJgwNG5iXK2RQ82vDXS5pPyOynSXU5JmVQ1pD6feXGz5Pr
 Z3KGCSA8YV8wFN4IUh9K24j91WpmH2W/0PLHuJ0b1PomFxpQ4kSbxxdjzfRTxpf+osIm
 5wEA==
X-Gm-Message-State: APjAAAUOQbUHBZej26ha55TzjIMoBo0oyyCZBROedCA+qptGbHiaX8uX
 4uyjSCzel2OTMDJKfBLr9hgVy1AWJpb41nBwPPggXw==
X-Google-Smtp-Source: APXvYqz3tpf6SKfxdFRnoZEjY5rLhCm2HbK+cWy5vbhvHm8tHkoIA/I6Jn5s/sjh7LHEsTW2tbVWuKm5WLWLOSC9WnI=
X-Received: by 2002:a19:c84:: with SMTP id 126mr7464529lfm.5.1574696159586;
 Mon, 25 Nov 2019 07:35:59 -0800 (PST)
MIME-Version: 1.0
References: <20191125122256.53482-1-stephan@gerhold.net>
In-Reply-To: <20191125122256.53482-1-stephan@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 Nov 2019 16:35:48 +0100
Message-ID: <CACRpkdZ6eg=uLmJJA9OhJBpCL5Q_0MwBvoKwv0RJL=5ZSzwx2g@mail.gmail.com>
Subject: Re: [PATCH 1/5] ARM: dts: ux500: Move generic pin configs out of
 ste-href-family-pinctrl.dtsi
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_073604_102915_709811BF 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 1:26 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> All existing Ux500 boards make use of ste-href-family-pinctrl.dtsi,
> which contains shared pin configurations for UART, I2C and SDI.
> Most of these can be also used for devices not based on HREF.
>
> Move the generic pin configs into a new device tree include
> "ste-dbx5x0-pinctrl.dtsi". There is no functional change (yet),
> as a next step we will rename the pin configs to use more generic
> names.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Patch applied for v5.6.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
