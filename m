Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C1F1687F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 20:56:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W8RtfVK7xMBbOEYBgV5mjB4oCTkXZR8wQF+qQzj4jNA=; b=LdgOqgZJ3F0pd0
	fgUUbPdPAW21RKakpa/ucQ7rumaZZeNOUDh72Ebt4K6Euj9ZUC/dryqVKqK3WbFdqbvbvI/F5qNaJ
	R8r1grspV1BgRqWs+5f9dvY1/9vOTfG0Jd6jYi3ZXe5y2zABFJK0M3z13BZhTKSfrZkkXcc8kfORX
	4iRta+LZ89vOBT3mT/xcpjmyQ+WRzwujHw4mZNK8zqjRJDZsK/UcD7kf9IGYfoaCJJCsEYWG9dVs6
	KKndeyQn2b/oRoy7jjTm+sIm42v9WZWHjeXLfg/ieQ/FWGLPU3Z4T28wq2UqoMh2jZwwaRj3NLgqW
	Xc0bzQsiuxFdPZ5whv9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5EP6-0000Ic-MS; Fri, 21 Feb 2020 19:56:04 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5EOw-0000Hr-K3
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 19:55:56 +0000
Received: by mail-wr1-x443.google.com with SMTP id y11so3357643wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 11:55:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/RkItNieDgV0spCBrAvgEKW6jVdvnCXvHYuZAXnr8OA=;
 b=x5u940o4PeMZz2zVQ/GgLDPvzLJ6lEY39zGpB6qUtCALbWWKmQaVV3Y3/YnyXXOW4q
 wz98PZAHt6fk9wghSdnefuCgGUaxGVKrVYqf2hxKyBzO77vsiPIlqBDmrDh7XNgoFFok
 W8k1IeN+CgHIlCXZMyBtbWARspburRc0CAe3AtIO78A3BNELLFeh/r22R9UZja2npkHR
 KLCC0KryrADvmUm8J5b7HXXWJpeWRK+jMDJn7C1cE+TxpqUfpevGO5EKtWObGYp+97Si
 daBjhDePFtR5sLz4BDDshyr+KTaS+pqcYssnMGixj3kj/VhFvMLeFfKHBvbLqcCSlsbW
 UOkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/RkItNieDgV0spCBrAvgEKW6jVdvnCXvHYuZAXnr8OA=;
 b=dHHHwGsheHx4+l5SlkmjW4vdow5WY0tdQDt6ZuXsnJZPOl0iSyyZrnCHA1Qd36ZSZV
 9UHkhXbMb/thWyj6kyLyjjTrDsT8vg5AeehHdbUE0yb9NrLoDDpi204CIRkZHgknef9S
 dfoqNwNcrAjkLdDQW4X2SkeDBBCR/7DSQdzEyN4ozDxY7FkzrodAcAcAiDnKSJyXL0jD
 8WsvObxMRAKdPirNKbFpcFlbTlGfxY1veaHnUqcu0vj3xLC3/XfS/5bRUYJCfakmZQOE
 eWelz+fv3D9qQGdgWlJlru0LT5b9+ijgysOrtGp/S+zhQRiwtkgDI3DzK7sS8NGWImlg
 HyBA==
X-Gm-Message-State: APjAAAViqBVo/CBQEjd/Yxh1peg+Z9eA3lb3gqmRCw97oLF6ST3omC/Q
 rrLg5ZVfiKn4U5LNAIxdR2RcqA==
X-Google-Smtp-Source: APXvYqzuKtU50Hh3qFOFhMh2kC8UV6DBRqImeOmDnHM6EvrvnQ2IZngIOzQKoWMqRuLAwslEHRLoXA==
X-Received: by 2002:a5d:4acb:: with SMTP id y11mr21913792wrs.111.1582314952493; 
 Fri, 21 Feb 2020 11:55:52 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id y12sm5130730wmj.6.2020.02.21.11.55.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 11:55:51 -0800 (PST)
Date: Fri, 21 Feb 2020 20:55:49 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [PATCH] crypto: arm64: CE: implement export/import
Message-ID: <20200221195549.GA29499@Red>
References: <1582128037-18644-1-git-send-email-clabbe@baylibre.com>
 <20200219181654.GB2312@sol.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219181654.GB2312@sol.localdomain>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_115554_717317_D3B8A3F6 
X-CRM114-Status: GOOD (  17.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: herbert@gondor.apana.org.au, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-crypto@vger.kernel.org, will@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 10:16:54AM -0800, Eric Biggers wrote:
> On Wed, Feb 19, 2020 at 04:00:37PM +0000, Corentin Labbe wrote:
> > When an ahash algorithm fallback to another ahash and that fallback is
> > shaXXX-CE, doing export/import lead to error like this:
> > alg: ahash: sha1-sun8i-ce export() overran state buffer on test vector 0, cfg=\"import/export\"
> > 
> > This is due to the descsize of shaxxx-ce larger than struct shaxxx_state off by an u32.
> > For fixing this, let's implement export/import which rip the finalize
> > variant instead of using generic export/import.
> > 
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  arch/arm64/crypto/sha1-ce-glue.c | 20 ++++++++++++++++++++
> >  arch/arm64/crypto/sha2-ce-glue.c | 23 +++++++++++++++++++++++
> >  2 files changed, 43 insertions(+)
> > 
> > diff --git a/arch/arm64/crypto/sha1-ce-glue.c b/arch/arm64/crypto/sha1-ce-glue.c
> > index 63c875d3314b..dc44d48415cd 100644
> > --- a/arch/arm64/crypto/sha1-ce-glue.c
> > +++ b/arch/arm64/crypto/sha1-ce-glue.c
> > @@ -91,12 +91,32 @@ static int sha1_ce_final(struct shash_desc *desc, u8 *out)
> >  	return sha1_base_finish(desc, out);
> >  }
> >  
> > +static int sha1_ce_export(struct shash_desc *desc, void *out)
> > +{
> > +	struct sha1_ce_state *sctx = shash_desc_ctx(desc);
> > +
> > +	memcpy(out, sctx, sizeof(struct sha1_state));
> > +	return 0;
> > +}
> > +
> > +static int sha1_ce_import(struct shash_desc *desc, const void *in)
> > +{
> > +	struct sha1_ce_state *sctx = shash_desc_ctx(desc);
> > +
> > +	memcpy(sctx, in, sizeof(struct sha1_state));
> > +	sctx->finalize = 0;
> > +	return 0;
> > +}
> 
> Can you use '&sctx->sst' instead of 'sctx' so that we aren't relying on the
> 'struct sha1_state' being located at the beginning of the struct?
> 
> Likewise for SHA-2.

Yes, I will do that, it is better.
thanks

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
