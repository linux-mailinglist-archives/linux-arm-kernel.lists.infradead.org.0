Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 849A972143
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 23:07:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZexCUvp7usQLwvjsc44Far2IIsYGtLTaP5eAEQ30hwo=; b=K4iKxMtZvW3WeF
	4m6DM2u61xSrwTrmCx7bWmc6AjU0xfqnAF/yPAC3V+XN/4poOZJDQ1nvVx8rx/eaS1FiwhfUDe3V5
	thqWoOJDBwJla01AZ2EcubZ8rWWQ3bkvIUCB7pFmkKPhGmjrvlFtJUDsahzD178oidhP6vjRUsPE3
	FPwO+E0wKRaRGp9Uk1WkPL7vbRuWEPB2KpPIRaTIMeHer3QU29UNtjOYzcFSA3RMVO/JfxcJ1V/TN
	Jo2Kk9WqNWCVACx5MyBFisBdzSF+p+rw/xyMPy/dxwyVEw24AsKcf7rgzGmOJqDCERDaqjKN86ri4
	Rn2a3usxUlCJGjm0F1QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq20H-00017G-Gg; Tue, 23 Jul 2019 21:07:21 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq207-00016x-2g
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 21:07:12 +0000
Received: by mail-ot1-x341.google.com with SMTP id 60so6003319otr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 14:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hzz7GvZmVNUIEg2vdFuobiy/ybjfM36GExlAr9zgJIY=;
 b=hfDRuYXpZnCOSj8BAHqrD9nVDzG1ceddj/KmOgXWEZhOQe/oyJm8RvJuGm6qPykYtx
 Um0XpLky5LsMXIi6BhQwogy4xS4MaSNXVVf3w+ML7FxGSxFWoemoH3HE97i2c41K4REg
 1gjz6VW71K+/AaKUQVvWkx4Mk75WZrFKCk7To=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hzz7GvZmVNUIEg2vdFuobiy/ybjfM36GExlAr9zgJIY=;
 b=OuQqWCh7DL3Ar91KbGCHaTZN4yqYdbt81zVoOH6Z5Tux9Cad1jxhA2WJa5R2bFp0hm
 HTVygr+nrsZ30UWSJ1aAhdi47SIcEE5tJfQafEqEBhPW8/3kRGfUIZst4j7afl7GlZN3
 lyOPj8cPoBFKBZqYUMtnQVuakwdtrK3p/FBCJ0AFC1gu+Cc8F0RVLrNTerTpfvytN8cv
 CctUL9jN6wAfdLn+eYQITNxHJJZJNuTWmDgS2yneU0Z2fyvTDt2QcZMO9j7VjR4MwiyR
 NP06YsDf/ut6xPHz8M6UGpbe5sPdU12ku6J5T6tw0+Ogtfch29mCmTBfqcDRMjTpwmpM
 cIBA==
X-Gm-Message-State: APjAAAW2J1FtiVcoC+6SzT9wPGPrCinJIIXVaMjTIa8aDIR/7KK1M1XT
 XeIMmbB18wrAgCmM6jsQmWI5aF0vRhYIKbEeVk4=
X-Google-Smtp-Source: APXvYqwIzZ8fzTqv0nBzRUnVyfr5ld3ZcfdHFyc1VhmkB6EBsdmyMrjymZ3LLtDSd4750cVSUgAQbZNuYgZVier8PcA=
X-Received: by 2002:a05:6830:4b:: with SMTP id
 d11mr20686835otp.106.1563916029544; 
 Tue, 23 Jul 2019 14:07:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190723133755.22677-1-linus.walleij@linaro.org>
 <20190723133755.22677-2-linus.walleij@linaro.org>
 <9c9b77b3b76e7a7e87c7c3d9076a8339362157bd.camel@redhat.com>
In-Reply-To: <9c9b77b3b76e7a7e87c7c3d9076a8339362157bd.camel@redhat.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 23 Jul 2019 23:06:58 +0200
Message-ID: <CAKMK7uHVudGdTzQS3Q6qVTZtDU-UsSQ2K04M9VvZHxzXo0DHOw@mail.gmail.com>
Subject: Re: [PATCH 1/3] RFT: drm/pl111: Support grayscale
To: Adam Jackson <ajax@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_140711_176289_D0294B75 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Fabian Vogt <fabian@ritter-vogt.de>, Daniel Tang <dt.tangr@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 7:25 PM Adam Jackson <ajax@redhat.com> wrote:
>
> On Tue, 2019-07-23 at 15:37 +0200, Linus Walleij wrote:
> > Migrating the TI nspire calculators to use the PL111 driver for
> > framebuffer requires grayscale support for the elder panel
> > which uses 8bit grayscale only.
> >
> > DRM does not support 8bit grayscale framebuffers in memory,
> > but by defining the bus format to be MEDIA_BUS_FMT_Y8_1X8 we
> > can get the hardware to turn on a grayscaling feature and
> > convert the RGB framebuffer to grayscale for us.
>
> What's wrong with DRM_FORMAT_R8? Yes the hardware is not really
> "redscale", but it's still a single color channel and there's not
> really any ambiguity.

Yeah, I think with a comment or an aliasing #define to _Y8 (or both)
this is good to go.

You probably still want to expose the rgb format since too much
userspace just assumes that xrgb8888 works. Same reason why the
tinydrm drivers do the sw conversion.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
