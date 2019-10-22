Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B756EE08C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:27:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nsxiXF/Xt+eOdNc2uh4cg8R0zrMsK0ktHMs79OabI1U=; b=ZjhfSs0Rzgbtgo
	qB1q3TnbApiOBJpOH4p/kldjJhTC7M3cEOhHHVVgrShtzTHkMxUicGuWXb1T+6P6oVyX3jfSjhSpD
	qCVKen+iRAhSVGSAL1zZtctTLugX6SrESKBGG98PsaWNPPH5yxNwpgjPlAAHcJ4DmgUEaHSbDlPti
	bVj1/57IPbwvABHA4d6UlEZk0dyKnJasbQJW1YptH3r9fajP8UPXzI2t28V2hgRU1iG2Vzj1KLPBh
	e2CuIxEftPwgJU60VzTZ9Frf4eKxIg3GSB9BB3U/6Qnh3j+/dzLULbWDMZv6u6+TjxDVDWbgga+z5
	kup6bhOMZmy3O83p4kNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMx0l-0000q8-8C; Tue, 22 Oct 2019 16:27:55 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMx0a-0000pZ-BB
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:27:45 +0000
Received: by mail-pf1-x443.google.com with SMTP id v4so10967967pff.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 09:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=yCqef9gQT6nmyTqqGL+wlHZ1CGtJs3cHNc9rYV1fhGQ=;
 b=Akp0RE/L/DluE7lJNU+chwNolLm4k9jsXnFTp9tcKG5xdcIVWiC2r0h9i0cwWyG7m7
 1M0XchljXyxrcF5F3z8kYQRl4stUEGdCXI7OA+TvymmMfiDz9QjnwWIItRChIyof8pgy
 LqJ1hg3+WyGv6FMYaKq9RKP9Q3ZF+joMQTEmY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yCqef9gQT6nmyTqqGL+wlHZ1CGtJs3cHNc9rYV1fhGQ=;
 b=TzuoUbXy5GLOlqRu32/65cAn49+l5SozRy25Z+K335M574LwXqCPJbVcVDESTZ6YFj
 RBeMLqstMLHaZxk00u7+ZFIMHIdeslhKut9tkCFTIdHRRRtmxiYYnyGZa1GtQJXkyiT5
 BhgzOr42XlDAClOBQ8GuTfQ46T2nmc2bOgQa5Q6tpFJUgDbs5QGH0Dt/PxRcxuEE6/fR
 yWN1KhrqLZvhaGaRFt1ojmwDeAoHgD5IEZJl8FCGGG5yfrqA64ax+eCTyP3a5RmjkqUs
 nYHGr0KG8aytnClqtkQ82s1xiMgG2kl66DH30o3fPs+Y0+/kdduj0HB9lf1ALb1vlAFf
 7JbA==
X-Gm-Message-State: APjAAAXTD6LNGF0DZ+RM3fagVtulLuUtbRMYPKH/xvgQJrPneqg/aExV
 8BaNWBzCkRoD41vv49TkSCU3RA==
X-Google-Smtp-Source: APXvYqy0V08cVd3k9DTb6b5fAVT9pV7tar1OJtZIZQ+pxwtsG2Lik9okZfxhxg4bRHHBWocLCOzgYQ==
X-Received: by 2002:a63:68c8:: with SMTP id d191mr4555216pgc.197.1571761662807; 
 Tue, 22 Oct 2019 09:27:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id r30sm20868424pfl.42.2019.10.22.09.27.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 09:27:42 -0700 (PDT)
Date: Tue, 22 Oct 2019 09:27:40 -0700
From: Kees Cook <keescook@chromium.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 12/18] arm64: reserve x18 only with Shadow Call Stack
Message-ID: <201910220926.B78C4D88@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-13-samitolvanen@google.com>
 <CAKwvOd=rU2cC7C3a=8D2WBEmS49YgR7=aCriE31JQx7ExfQZrg@mail.gmail.com>
 <20191022160010.GB699@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191022160010.GB699@lakrids.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_092744_411110_F55B6917 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 05:00:10PM +0100, Mark Rutland wrote:
> If we wanted to, we could periodically grep for x18 to find any illicit
> usage.

Now we need objtool for arm64! :) (It seems CONFIG_HAVE_STACK_VALIDATION
is rather a narrow description for what objtool does now...)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
