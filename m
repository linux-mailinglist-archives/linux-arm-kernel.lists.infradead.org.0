Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA711F8385
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 15:42:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7e+DLqSuh6cranEA5uKCFKebmmF1q+Mc0yzGopfXWSQ=; b=cV8AWyW7Dntazm
	g0T1zbdxuioGsv32tDAsZUFv3tL6zvnS/B84z4wLQqIuJO4mbURc/DA7ppRcM/iNtdSFlZWWO0NhF
	D1kk37b35HMHbnrMcmDOV2iFZ2EYx41dhbK+PHoTK2e+6d/4ZcztVKLxlNcQgor1WsLJHnNm8mLeO
	NL7+qQnVspi3yG3HuGNzTridO1eOlDPDpRwaItp01tzTY3xnz9ZVl6/qs3WyeSB6q+ILpknyX4m+H
	p6b3G7lsCg5e9WCEqXCjTMPCkPpjtMAmrzZD3uE4rSa7WfTj/3ldWsNYv9RYxTCWc08rgcGzF3Bui
	zt7vrG/qkcQ12gX7W13g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk6Qp-0004Jo-Kn; Sat, 13 Jun 2020 13:42:47 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk6Qh-0004JU-My
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 13:42:40 +0000
Received: by mail-pg1-x529.google.com with SMTP id r18so5462659pgk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 06:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lhjeK9z5v60R6YHO++XPi5NmF7IKqnjXEf4qitMfo/U=;
 b=vOte31zJljugGB1gDdmNCw1Zmf5029uSmTy/iOUH69zfFgblQ5Cpr8W2OmXyDfOKDM
 EHBL0q71Lv6HTpbATGzgAFlEvdM9phMRFou3BnKj50gGjlW1OjyyQ9zvZAbp6Oab31Sf
 BjyPV9h4JNt8Dp6cgMHpvcAwoJAti2LLdnxul2rfod+QSWImXywd8dMoptSqi3Wec43f
 YSkym2V5cgO4zf4uxlvZc0Fcg+k4A3IFZv8SCem0uBbzYydRpf0dO3jwVXeJaPQj5Rs9
 vr+jDX45iCsiTN+XMTsEyQLZ28Bwhely3o8e5oo+2Vhkxtoo+Jk6CcL7ucLEpdjp8Hyq
 UIEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lhjeK9z5v60R6YHO++XPi5NmF7IKqnjXEf4qitMfo/U=;
 b=lDA5HBF52ZHxZEzYw2/8axIRN/H0fvURrXf3EDUObjEEc8xCi3YEIPjyeABkzyw97o
 Yh5ZVvvkIW5YsNhmDrShr7pd2i5PDS8GQKzPxwrG5KR9Hux05G86PHebULwpdOfsBmfc
 e+NQUfrIc0AzNkfiTlsyneRtpQzhdpGX+xsvrV6HmPAIfLQ2LdMQR74haMSgoA8p5f3t
 wVG2qQVtQM5yv1wz9Qu7LhqhSkt6LWSOB3on11WibzwznUx77a0MAS++Isda6Zp54yxq
 /WfVEZUyEx2Rn91d3usZYMIgvGDUNpPRN6vZz2qQ0zFcGI6Nn0CBwy6ZnHjw/FNUH2zh
 ziYQ==
X-Gm-Message-State: AOAM530y7AzERIwGpsL2Z9JGuaiaRizkng2ATh4CM/IDihGQNnYz9jsh
 NxxxSI5Dzytv2oBgK4848Qw=
X-Google-Smtp-Source: ABdhPJzB3giL0j3yf3vrpr2UTvpNzC2SsGkvwZhajh/25WwJXbCFV6r7O1I2rhMantYF3ZouqjyX3w==
X-Received: by 2002:a63:4d53:: with SMTP id n19mr12875818pgl.60.1592055758583; 
 Sat, 13 Jun 2020 06:42:38 -0700 (PDT)
Received: from localhost ([49.207.210.132])
 by smtp.gmail.com with ESMTPSA id u17sm8050602pgo.90.2020.06.13.06.42.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 13 Jun 2020 06:42:37 -0700 (PDT)
Date: Sat, 13 Jun 2020 19:12:36 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [RFC 1/3] lib: copy_{from,to}_user using gup & kmap_atomic()
Message-ID: <20200613134236.GA4086@afzalpc>
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
 <9e1de19f35e2d5e1d115c9ec3b7c3284b4a4e077.1591885760.git.afzal.mohd.ma@gmail.com>
 <CAK8P3a1XUJHC0kG_Qwh4D4AoxTgCL5ggHd=45yNSmzaYWLUWXw@mail.gmail.com>
 <20200612135538.GA13399@afzalpc>
 <CAK8P3a25ffh_2Y1xKDbkL2xU9nLpGbEq7j6xHdODEwUtavgdwA@mail.gmail.com>
 <20200613120432.GA5319@afzalpc>
 <20200613125126.GE23230@ZenIV.linux.org.uk>
 <20200613125615.GF23230@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200613125615.GF23230@ZenIV.linux.org.uk>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_064239_798624_C6F4FCCD 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:529 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Sat, Jun 13, 2020 at 01:56:15PM +0100, Al Viro wrote:

> Incidentally, what about get_user()/put_user()?  _That_ is where it's
> going to really hurt...

All other uaccess routines are also planned to be added, posting only
copy_{from,to}_user() was to get early feedback (mentioned in the
cover letter)

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
