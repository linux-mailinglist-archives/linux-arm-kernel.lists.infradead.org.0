Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CF147046
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 15:59:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QhRvsZrk1MdzAIBm1+CLxM7lZqhCWTfXfXKc42hHLXk=; b=qv+6i0UiGti3XK
	s9rNCNMh0GpLqJFOSlGjPQFF2PrDce/7rs6ky8CLQcHDpgxDOFnSJslY6JqfQJtfKyEBc0FSm3kTW
	QwYrlTd9m7cacsofWuSd8bx3l2NQ43KkCeg8FiFYP+1Bm/piDFe3cKbVRdbZ6N4OEvriMppl09n6m
	3LV7t9CajLxDAB/RdfZ1tVvN0Kzvhd7x4jDKjFP4NGQ8zBu9cJqQg27Q/hmkJqkJuJJTT5figRidz
	ERz23uijqWNmDAlyHamI5/C4OyjiU7TPsJcJZqiv+lbapow6ZSljqIDVLIZZ6zDZH3qiBmW1rwil9
	q3464r9H+SSCQOCkXnfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc9Df-0005A4-1A; Sat, 15 Jun 2019 13:59:47 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc9DV-00059R-3g
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 13:59:38 +0000
Received: by mail-pg1-x544.google.com with SMTP id f25so3176758pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Jun 2019 06:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=kJzT+l+OO8n7EwqnrkDiquC/ywPXGBmvTdfRsOHf0Hs=;
 b=UGeCBSBInFsZbVoakbF5FAzrgs/2dJXEhyelWiWKzi5DAuY6acxFfpLNy1YCB09WqL
 ya7HACESBLUB2LwsNh5c1185X7xTWyGC6Rc0Q2XQWWRj41dkRfJGG+r09q96hLma0cHI
 6wvqNIS7byjkB4dM18vDS/A59EiMyBk3MtoIY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kJzT+l+OO8n7EwqnrkDiquC/ywPXGBmvTdfRsOHf0Hs=;
 b=JQicookpBBNe+rj63wFlxLcujYUw9hv6SqUewZEYG8NQUIE5LO1kDoPqn9W7i7xhcz
 FA7wXfp6iVtK+03mhLfXTbRfqkVyWqwxt2/dMRKrO2OdspK+0OBYs5U9054fNzLwfF7n
 HUJmUIgNhdVci+kgTs4g/xJ13b3DIxr+ol+TZR05vlIMMK2sfCL7/sie0r+Xoue24ceS
 cZwBRa7vle5KIoZdL04MTplASFtq3PgMf13Sdbi3YlofgluaY/VW+00BBfWfloGVg0SG
 Ge/PGJboDFOkb3euDCbhM8Uv0N81hiKCtarCgH0kdFJrGqAo8zsPi8F1NuCx71moI4m+
 6Kzw==
X-Gm-Message-State: APjAAAUsRXvs+b2f6VnDw2gSiA/zZj/0vVT6ey3MK8CHhGW2y+lqFJGA
 Kxm+9GwpcXzQCdpwSVsazdbNjA==
X-Google-Smtp-Source: APXvYqwLdXHp3JRB1CMRTIRlwcqnZowh9M3CVRPn206dvAaR65wDYVCfeSsmPH6ijlNC+WfgoUMszQ==
X-Received: by 2002:a65:63d2:: with SMTP id n18mr29109647pgv.278.1560607175951; 
 Sat, 15 Jun 2019 06:59:35 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id s12sm5323358pji.30.2019.06.15.06.59.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 15 Jun 2019 06:59:35 -0700 (PDT)
Date: Sat, 15 Jun 2019 06:59:33 -0700
From: Kees Cook <keescook@chromium.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [RFC] Disable lockref on arm64
Message-ID: <201906150654.FF4400F7C8@keescook>
References: <CAKv+Gu9U9z3iAuz4V1c5zTHuz1As8FSNGY-TJon4OLErB8ts8Q@mail.gmail.com>
 <20190522160417.GF7876@fuggles.cambridge.arm.com>
 <20190612040933.GA18848@dc5-eodlnx05.marvell.com>
 <20190612093151.GA11554@brain-police>
 <20190614070914.GA21961@dc5-eodlnx05.marvell.com>
 <20190614095846.GC10506@fuggles.cambridge.arm.com>
 <CAKv+Gu_Kdq=UPijjA84FpmO=ZsdEO9EyyF7GeOQ+WmfqtO_hMg@mail.gmail.com>
 <20190614103850.GG10659@fuggles.cambridge.arm.com>
 <201906142026.1BC27EDB1E@keescook>
 <CAKv+Gu_XuhgUCYOeykrbaxJz-wL1HFrc_O+HeZHqaGkMHd2J9Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu_XuhgUCYOeykrbaxJz-wL1HFrc_O+HeZHqaGkMHd2J9Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_065937_180072_5B5E76F7 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 15, 2019 at 10:47:19AM +0200, Ard Biesheuvel wrote:
> remaining question Will had was whether it makes sense to do the
> condition checks before doing the actual store, to avoid having a time
> window where the refcount assumes its illegal value. Since arm64 does
> not have memory operands, the instruction count wouldn't change, but
> it will definitely result in a performance hit on out-of-order CPUs.

What do the races end up looking like? Is it possible to have two
threads ordered in a way that a second thread could _un_saturate a
counter?

CPU 1                   CPU 2
inc()
  load INT_MAX-1
  about to overflow?
  yes
                        dec()
                          load INT_MAX-1
  set to INT_MAX
                          set to INT_MAX-2

Or would you use the same INT_MIN/2 saturation point done on x86?

As for performance, it should be easy to measure with the LKDTM test
to find out exactly the differences.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
