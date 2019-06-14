Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F0245331
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:57:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iMsZ384etBGJ37OxsR7U9juB9mAlzKIeBF82IDzENto=; b=jYDhQ/gewPf/HV
	FxOoyyGji6n82PZcVuOhZXuCKqMnt9icVSEfqrRgpXpgPb7leaQChk9d2+HG8fSUSM5uztcWIRqeS
	JV9e5Ohb097F+TABl7hIeSDrACNcamcw6gq6TyPBl3dBHiFfnvLLxeXoNGnkzLa7bmIJhr1m2xW/f
	MUk70y8VruzuKI0o2npAjkJsYddsCUWw7HIEy3wDgE+d2NcL4srugiIcEWiCoU4kTsElLxJiPpEmu
	JclRe8LdeodZDRjZ2HoIGOIOJWhGD8ALQMUHPx7v/n5PHwfsB0mttHScpB14tpqxORG7RYMusW7EY
	+ozvQ2eRgwjeFqE1gJCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbdLd-0008H7-A0; Fri, 14 Jun 2019 03:57:53 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbdLR-0008GU-RT
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:57:43 +0000
Received: by mail-ed1-x544.google.com with SMTP id k8so1374993edr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gDNeDNC6IhsxAfX1pCDhnGOlsLviHqkXzki8BiuCzfE=;
 b=pcbjuSreld4Y706hdj8M6kKp4kLTEsk7/zmxxGr/PyJ4Q63Evk+mFr05ZIUVlmh+xk
 +0sSwQJsJ3jl8VYasKac8A3nGlVpbTvobhzfAiK9jP8FOJMCcOUv8sOB66NZKQ2jc1ck
 GvR1DksaU4g55K+AlRMkee6MvlDCf7T7s4cjPBY5LeQTIxuG1Ff18gGqyPfQJUkqLLbq
 INWo7KBa6PX+s490TnOJjOoqdA+X/uqRhysLgQWo1Fsn7nqPJy+Pgx/UrGrn4Pw5b9jD
 R3nbCobM8hgSagh2KXO9ItEJz9DkEBVoe3ICfHdk6TImZ5kG7CFqaccEAYkebncKR1Ao
 klMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gDNeDNC6IhsxAfX1pCDhnGOlsLviHqkXzki8BiuCzfE=;
 b=byRsnQIDjZQnGfD+qP1O+mrvJlCHuC90bigz+NQCYukq+rGv9Gh+6Ekq5YDo6EsPxj
 Kfn0ltIOF0T7CbgSZx/voUt5jzfth+h8UfuRW5PhA+iNTkHh8ugd/RDshCuDZ6T9drL7
 JCmXTQvJVBtLx5YY+VDZH9gtKGI4+OO/H5qzZx5wE/6aM4ZMqpJjJURiS20j7Afdx+tp
 5H5Zd1ESjyRPyr54dc4tPpj3cyDHoMBtl2Z7IFLdYNDRdAsT4WU1phoHaA5ztpHf6vQT
 7wYfQWvVzsFWdngYA8bzgmMLZJWIJOsU47haDeqipyvNm4IUtB+jAhHyjyp41TU1zn0P
 6nOA==
X-Gm-Message-State: APjAAAUi5qBa2Gaf+CUXY/pkdys+VVhob46/Ct1rW57S7Ck3Ksk/Hs3i
 x4/m8tPiYw/DPUAEbCGWu+w=
X-Google-Smtp-Source: APXvYqzJURQRQFhk+6yXhETpK9HjQuPFeyc8sNjYHpDFcm1C735qDO8j/cj2/Vadm8ArJoVnhREYtQ==
X-Received: by 2002:a50:ac24:: with SMTP id v33mr72538475edc.30.1560484660031; 
 Thu, 13 Jun 2019 20:57:40 -0700 (PDT)
Received: from archlinux-epyc ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id m19sm332256eje.30.2019.06.13.20.57.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 20:57:39 -0700 (PDT)
Date: Thu, 13 Jun 2019 20:57:36 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH] mfd: stmfx: Fix macro definition spelling
Message-ID: <20190614035736.GA57346@archlinux-epyc>
References: <20190511012301.2661-1-natechancellor@gmail.com>
 <20190513073059.GH4319@dell> <20190514183900.GA7559@archlinux-i9>
 <20190514185404.GP4319@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514185404.GP4319@dell>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_205741_899461_2FDD8A39 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Amelie Delaunay <amelie.delaunay@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 07:54:04PM +0100, Lee Jones wrote:
> On Tue, 14 May 2019, Nathan Chancellor wrote:
> 
> > On Mon, May 13, 2019 at 08:30:59AM +0100, Lee Jones wrote:
> > > On Fri, 10 May 2019, Nathan Chancellor wrote:
> > > 
> > > > Clang warns:
> > > > 
> > > > In file included from drivers/mfd/stmfx.c:13:
> > > > include/linux/mfd/stmfx.h:7:9: warning: 'MFD_STMFX_H' is used as a
> > > > header guard here, followed by #define of a different macro
> > > > [-Wheader-guard]
> > > > 
> > > > Fixes: 06252ade9156 ("mfd: Add ST Multi-Function eXpander (STMFX) core driver")
> > > > Link: https://github.com/ClangBuiltLinux/linux/issues/475
> > > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > > > ---
> > > >  include/linux/mfd/stmfx.h | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > Applied, thanks.
> > > 
> > 
> > Hi Lee,
> > 
> > Thanks for picking it up. It seems this didn't make it into your MFD
> > pull request for 5.2, was that intentional? It would be nice to avoid
> > this warning.
> 
> Hmm... no it was not intentional.  Not sure what happened there.
> 
> I will pick it up for the -rcs.

Hi Lee,

Have you picked this up yet? I don't see it in -next or your public
tree.

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
