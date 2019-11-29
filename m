Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE23610D5DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 13:50:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I68h4pOyWfxzkAb2Xr2MBrOslQa2ttN5lICoY39v1Bk=; b=ClPbDBoouA+kbA
	nUh6YEOpDa6B5ECaq7GmtsSOrJQXaIi0JxnbqjRjv+mb4owpYfqZQ0xGgmaSkfel+BNLdbOHF31Ku
	mYI60FxtEGY1w5Lkk3FKeh2DFu6x0dxqnTHyWj8qawwmDHhO+WusJhd/egWxQVnBSk2ecoljx9OQc
	kKMCxzOrAFRmaBIQu0bsxAC7eX6PJ8uquIWQMuePyO/uVNWEdsFAzeHMviiGCXG3hK8MYqLbZtfgX
	aGgmeg2ILZ9fcUbddsxkSWmhrJEqo/ALm15DfDtK2HRg0KcihAZvIKv8RxvQjkyLMfAWFsRV+4cGo
	h2+U/4QQ0JyNfTuFPkSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iafjW-0006jm-9S; Fri, 29 Nov 2019 12:50:50 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iafjO-0006jL-CI
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 12:50:43 +0000
Received: by mail-qv1-xf41.google.com with SMTP id s18so11537390qvr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 04:50:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lJbIAqeUDXD4kcUbIecANlElpIrUUQHr/u/gzWsPOOU=;
 b=Z7TY7lJe2RR0bY595O8O8pFed9bQc/UF1lJ7h+m2Ur4M40GihCpYzBmRuXU2nAchEz
 A4GM945FLCCo3SCNfGP/xiJM5Z6jcYycs+VyKa73tAE73kf3c1fS8EiGwv/N2SGGvFpU
 Y1tJYtW4W9nM380QBmVcoCE06ms6SXlEePb6QaOJGs9Lz5w1J7V0VL0okZzDNif+PwnR
 8S0B0jPw6QIq6mFDn2ecGQLUsZgOA9cmlZR1rIiH5xnGa1Yml0I9zpLsvoLe3Za4WcAY
 HSuAaYID813yC+bug59gLqoI2nnUWfSzyhtirvtTFimT4P8X8sIgQnxIoetg9z6793CU
 IhCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lJbIAqeUDXD4kcUbIecANlElpIrUUQHr/u/gzWsPOOU=;
 b=KrK7aPyaxaHCXPDBGTaLZl6Iwu/Dk+IKvCo1UQw6z4K2a32QK1g3nVCDDQMVH/a0e1
 InP7RPva1+uy7tQj/bs9hBnIKh24tsGLYOJT9GQ5jAk8F8EwBv7Xli152l5amwo6w/G3
 NosEryj+TiY36acNKcDVl4ERXUwO4l67R5d9HEhgRCcLvOG3u1R/9dFn/LZfe5zRBZO+
 1mg5gl0OIXcWkZsnvcqUByx4yUKITEBjhmah02V7HeZWtyldxxBxYwSd9VS5waMof5aA
 Boyw1cAbDfpRB39513465uiexxFMLMqCjXC2UY0YJndtd0PIQc9nQMOYV2m0sgwdMqWC
 Sofw==
X-Gm-Message-State: APjAAAVxtQtEy0K5JMP0i+KJ2x6SqWqVQpPjrXpaytBUtwNXxYBcVaIO
 AY6LCa+93IKE+jK7AyERftAXc6AnJnrkAhDo8fYyzw==
X-Google-Smtp-Source: APXvYqwgNwgGwC0/hhgzT5ewCqO0LQ/ZTP/UDvHdFa1bVBib5Bq/FnKSVHeDG4EOI2aRFcBiV5or57cU3hFUD7PidXc=
X-Received: by 2002:a05:6214:245:: with SMTP id
 k5mr11234215qvt.182.1575031841425; 
 Fri, 29 Nov 2019 04:50:41 -0800 (PST)
MIME-Version: 1.0
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-4-mike.leach@linaro.org>
 <cc0eb144-48a2-bde5-4790-2fd5e1168360@arm.com>
In-Reply-To: <cc0eb144-48a2-bde5-4790-2fd5e1168360@arm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Fri, 29 Nov 2019 12:50:30 +0000
Message-ID: <CAJ9a7Vh=J8QbPbng0OMmH6uNjhTZJMfm9hn63zw8rNcr00msbw@mail.gmail.com>
Subject: Re: [PATCH v5 03/14] coresight: cti: Add sysfs access to program
 function regs
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_045042_419486_6A7101C4 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Coresight ML <coresight@lists.linaro.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki, Mathieu,

On Thu, 28 Nov 2019 at 10:54, Suzuki Kuruppassery Poulose
<suzuki.poulose@arm.com> wrote:
>
> On 19/11/2019 23:19, Mike Leach wrote:
> > Adds in sysfs programming support for the CTI function register sets.
> > Allows direct manipulation of channel / trigger association registers.
> >
> > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
>
>
> > +/*
> > + * #define CTI_DEBUG_INTEGRATION_CTRL to enable the access to the integration
> > + * control registers. Normally only used to investigate connection data.
> > + */
>
> On a second thought, I have some comments on this symbol.
>
> Given that the integration control registers may be useful for people to
> find the device connections, I strongly feel that this is provided
> via a CONFIG symbol rather than a  debug symbol within the code.
>
> i.e, CONFIG_CTI_DEBUG_INTEGRATION_CTRL, to help the people better.
> Codewise this doesn't make much difference, but it certainly makes
> it more easier for people to use it.
>
> We have used debug symbols elsewhere in the drivers for pure functional
> debugging purposes. However I feel this is case is superior.
>
>
> Cheers
> Suzuki

Per the comment above, and the discussions following, I would agree
that using a config symbol makes it easier for users to select the
feature and gives us an opportunity to put in some explanation as to
what it does.

Thanks

Mike

-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
