Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE92172B60
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 23:34:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PoFYBFnD/cEeGE73dclgRabQbcYKgU1z+r7pZtmV65Y=; b=WQz2rjQLMuB5+O
	aO7LIJ4Va49EaRgSSaThVy9jo+TPG8/uP9eozkCazKRLhKKYAq7YRYPDMcKybutbPUuqpbafCHJ0K
	45qB+ySP7pMxnUEwd456nUK8tir78smilfnnWwOVfAwUqXPRXuCXnqpQzqt2acxDktafCsCBTDEoB
	UdiEXGnUaiIghMaJzj8jzKYEMt0rILMESiLpBQDETVNv8eOgi0Uz1b2/aShKiaqilSuMjp5V34hrX
	Tqh8dZcNKCSRkBI+V9NKtGvqzh9Y+/nozZargEOkQKTMx2l/vXrlS9HfuJ66iDKIYlf7DOhwKohNu
	n9ruXxxtzCyV3VVDleng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Rjy-0003tr-4u; Thu, 27 Feb 2020 22:34:46 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Rjk-0003sl-Bs
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 22:34:33 +0000
Received: by mail-pf1-x444.google.com with SMTP id i13so597243pfe.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 14:34:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uEgm7G3Oorn2p+U3SUvjAXjrUbk1a/Mg7TANrk2b//4=;
 b=qBGk3y53fGrIoD9YVbCtRjk94Q6RcxNk2DSm3mh434SY+OeNEv+jBkV8dglcusUA+R
 L9mwI4MHxQNulbX/2XretJJFtukcDGzr2zLCBNAkiws90+uuoSKtuF1EROggBJffSdKA
 qgggk49UicheeH2QMRaXodHbyDiRh7P6/kHwp03Qgo9PQ24UR4jbyoqss3gfllwvQvVL
 xwPDxSBopjmtHJX5f74rVo97JgjI8Yitea1jHRJYWPIvIVzfbC6PC9a5X0IHms8IgMCK
 4WlJkdiWKYejSZSyCp9T8rIybyOSefTm2XK4DXMzvuRuMra5mVvzOdAJGX853Tdp2LWM
 Rx2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uEgm7G3Oorn2p+U3SUvjAXjrUbk1a/Mg7TANrk2b//4=;
 b=qSP3S4+82HblS3n0dmJbxkCWyawVa3hZ+ByPtoNWGq1edqlmMvvWVJ5ZUfJteObMwj
 6yCxFF7O2WY94vOIi9pjN6th6ayms9FbMPRZM45CnnO/cW5CyLwdZ3F+i+vR52ulYHwO
 jTMzI/cPdS+RqWfYPk6EgCMGiMmEzQS1nRqWUKtMxIvfEd3yVkqCjlM+/o7VM6udWLC8
 nXeqscLdlX1PaTJ+utSQzQL/sSDbEjR9GX1e+R9l6oEvwpHeOsXMwGJW1Tvwdp1sc9bJ
 9FFGmoRMaB9fmWxiKJklkH3q2euDVE880d05HisVGCDOwXTkBM52ClwPUJPHWIDgj0UA
 /kZw==
X-Gm-Message-State: APjAAAX7nEid1JBdLAjXCfbz65QLsCxH5wGipcx/IpykRiydH8ejgPtA
 KFPniP1BeqJO64fFMiq2aQA=
X-Google-Smtp-Source: APXvYqw5t5F5Y64xPWlPBKQeB1b3ZAolobkAyq2a30keMZ7QjMV3RtaaKUEDeVezZZN7BeyPxNi9EQ==
X-Received: by 2002:a62:6d01:: with SMTP id i1mr1237798pfc.94.1582842869095;
 Thu, 27 Feb 2020 14:34:29 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91 ([2620:10d:c090:500::4:d8f5])
 by smtp.gmail.com with ESMTPSA id y193sm5500583pgd.87.2020.02.27.14.34.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Feb 2020 14:34:28 -0800 (PST)
Date: Thu, 27 Feb 2020 14:34:25 -0800
From: Tao Ren <rentao.bupt@gmail.com>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH v4 6/7] ARM: dts: aspeed-g4: add vhub port and endpoint
 properties
Message-ID: <20200227223425.GB29420@taoren-ubuntu-R90MNF91>
References: <20200226230346.672-1-rentao.bupt@gmail.com>
 <20200226230346.672-7-rentao.bupt@gmail.com>
 <83d7b817234f99c92272f7950129c56a58f4de54.camel@kernel.crashing.org>
 <CACPK8XdkPLZVJTpAc2u3Q0W0KoRrC4hfHjy27VKpGDRF45JByg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPK8XdkPLZVJTpAc2u3Q0W0KoRrC4hfHjy27VKpGDRF45JByg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_143432_429308_4FB2F4EB 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 devicetree <devicetree@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, linux-usb@vger.kernel.org,
 Tao Ren <taoren@fb.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 05:54:34AM +0000, Joel Stanley wrote:
> On Thu, 27 Feb 2020 at 04:11, Benjamin Herrenschmidt
> <benh@kernel.crashing.org> wrote:
> >
> > On Wed, 2020-02-26 at 15:03 -0800, rentao.bupt@gmail.com wrote:
> > > From: Tao Ren <rentao.bupt@gmail.com>
> > >
> > > Add "aspeed,vhub-downstream-ports" and "aspeed,vhub-generic-
> > > endpoints"
> > > properties to describe supported number of vhub ports and endpoints.
> > >
> > > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> >
> > Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> 
> Reviewed-by: Joel Stanley <joel@jms.id.au>
> 
> I will take this patch through the aspeed tree for 5.7.
> 
> Cheers,
> 
> Joel

Thanks Joel for the continued support!

Cheers,

Tao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
