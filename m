Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B86D10C0BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 00:43:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Sf40NWYk1H/IVaDWA1aNnBMiqQgFMAZ9nnyeeK8Ggg=; b=YMgimKHtrthTg1
	2ebUv/kzIEJdor0GhBXDlIM0D+WPSKhH5OTuoQ60q5nWRconDAMVMId+THvZAb5qw27VszC1tHtZ4
	d5Ul9niA0mxXeQjJ+smo0HcN+9s3oFc0uZxNgfbOLE9zQusOXpyG/l9y7CkGA5M3BUf1m1cpinr1d
	OJw4eYD1eqMOTrb7eWps/RVHjYWG6y4UtM/8Bx6G0PsFXbK0ZDAixxU4joJA/Ox4Pe37JUM60YheU
	rZKtTTnq3oTOwIEBeezBVROR/Dn4KYqMofyjcDd0otLC2qjrGzIC4jphukkzZ0gdiXTEDwzKn9+u/
	PaqAf/dyL+0NwwKyOp0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia6xu-00021e-VL; Wed, 27 Nov 2019 23:43:23 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia6xi-000210-Sh
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 23:43:12 +0000
Received: by mail-vk1-xa44.google.com with SMTP id t184so5949174vka.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 15:43:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5V1U7K9kHqSmBC9GKmbu10OmsvEfDZWHZBAkdynx/3A=;
 b=PvBbnjafdCvEjlwAHLsw4Jkf5UKDz6s7witD5jd3/x70kOObX+EhN8IhEu1l0vMDao
 eyFB2VR6+BiVNsnhas396vPiie5zwGNVANUKDHufBAXVc0+9hKfbW030dFWNG3Cv/J7l
 hqmrKydCIurQVBzzegb3UutaspJwhtGXO/gKSvIA6Sq2HhXhwRAghpC1UbE1oDheTz8S
 qX4ZaH6B1tEQxHPimTogvOFaHeUSQzd1sKhIPU+fef2bGXQspLHe1EyC9nEza/asyLzJ
 b/YquzQ4e8aWWFpfl2u+fQMt+7m4lbuhnN1p9eHjdQdOaCsEYyXNqrWJj/1kRgyr8e+w
 v8Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5V1U7K9kHqSmBC9GKmbu10OmsvEfDZWHZBAkdynx/3A=;
 b=cfEyolYQ8e+BQ1+EgP44YeN07tMBrwNm7PtxwN3xE/XUrGhjixQNohoG/HGqPVDOMA
 p67/H3vpdcRvcI6BANcr/1QJIc0qoJWql2tbIYIkwRVS/cFJE2CZxri2llxaN4pDRTqb
 GeCItg8SZ6nEgI4v9Vd6FQC5nYDUop5jYD66VuQnEiYwiaQAnzXr8pU8/TWApLzoxV3Z
 htWyZxIipZdC8cJiU9klFR5QYCzY0wANEcUeypnI6hJi0jMYpBxyfZWkrDbc6ZRxBwDj
 tGcs5TLKZpRsUOUYx+0jues93+2yicYo3jbFCr1C4h6GeRIaDDKk/FrIrrQBQFYV3Ndd
 UAJA==
X-Gm-Message-State: APjAAAWAWOiNWec8/BwP+GKmvxIhKF/If+Q3yv03cpGCzvnepezTKf3R
 LrIVxtO+Qmb6nGOAg5iydZgwpw0QP2ZLr4CSURB54Q==
X-Google-Smtp-Source: APXvYqx1i0KATXqkxu2iu7n10l5sJYYFz7lSnecvNV9HWF093zCgA7YZz4hfleScYvfvsSSdbbjLOGlrCFIaftAte+A=
X-Received: by 2002:a1f:7d88:: with SMTP id y130mr4689848vkc.71.1574898185282; 
 Wed, 27 Nov 2019 15:43:05 -0800 (PST)
MIME-Version: 1.0
References: <20191112223046.176097-1-samitolvanen@google.com>
 <20191119201353.2589-1-samitolvanen@google.com>
 <20191127181940.GB49214@sol.localdomain>
In-Reply-To: <20191127181940.GB49214@sol.localdomain>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Wed, 27 Nov 2019 15:42:53 -0800
Message-ID: <CABCJKud-JRT8mNmP8yMobeFajk1gU_iwss9w43keZyX9jasPXw@mail.gmail.com>
Subject: Re: [PATCH v3] crypto: arm64/sha: fix function types
To: Eric Biggers <ebiggers@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_154310_927903_3EDD9111 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>,
 linux-crypto <linux-crypto@vger.kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 10:19 AM Eric Biggers <ebiggers@kernel.org> wrote:
>
> On Tue, Nov 19, 2019 at 12:13:53PM -0800, Sami Tolvanen wrote:
> > +static void __sha1_ce_transform(struct sha1_state *sst, u8 const *src,
> > +                             int blocks)
> > +{
> > +     return sha1_ce_transform(container_of(sst, struct sha1_ce_state, sst),
> > +                              src, blocks);
> > +}
> > +
>
> 'return' isn't needed in functions that return void.
>
> Likewise everywhere else in this patch.
>
> Otherwise this patch looks fine.

Thanks for taking a look, Eric. I'll send out v4 with this fixed.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
