Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5571BBAEBB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 09:53:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TaCE8WFakjkoKHttFEFuxY1CtsFN+Iik68FNKXEdKuM=; b=QiwrIEoEOiIDA0
	ofj3S9KSgiZnTZXicMKoLB/AsFwXy0TRptmgLyNIRd09l0sH05avYSFZLY2dgkX9WruA4ryDYsV8k
	XQ51lnaMxiG7kGQzVBkNhsiycDjZdGEDuIVT11dUOQdttZia4cJ742b05gp7U7azA5z6vVkwl6vco
	izrNJmK/ritrONqsjUe0jILQF1i1nnIouF12F6pd9lE4AfllYnwFVeM5njhnaFTPNAXtAmsO5vl97
	dhrSrSSaKjqvHP12Rmx8Y61//EOV9gOX0y4jebNLJ3f51IMbpYZsQIp+Cruh0FCKwZMdYhXTv1lh6
	aRTCg8K2Kp7SRcsbsVZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJAH-00072K-Bv; Mon, 23 Sep 2019 07:53:45 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJA1-00071x-0B
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 07:53:30 +0000
Received: by mail-wm1-x343.google.com with SMTP id v17so8087031wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 00:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UpxK2Urn4a9eY/kYII4628rmtr2h95p2aQmCQljgxpY=;
 b=mqA8fY2+eWN+vcKQziUdBV9fHCdd+vWnip0ZQdaztG9Sg8wT8RdOyBUEKNJFPBuOV4
 +YvY28Z8AOIqHUHSdGfFOhN52CHc0nVd/za9X0Gpq3PWd3YcSQdRrCqMEGz6j1JB5VlE
 R8GE8E4Ubg1comHkA2SKsdsGcInoqIjqdgXLetveYddXwl3xlGDTBla9U0nQLDztfAdE
 7bNM/1FZZmQIYKe1AmBRj3SP0FVRcyyHmszsPvj+DbF6e7lBxLqAgrIARwW8eLQEd45h
 QRFP749ZqiRw/agThbNzldYi47qw6MJMVWfcEotR5NPg7taV0jqXNUhO8U8rrs0dAuVx
 yZuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UpxK2Urn4a9eY/kYII4628rmtr2h95p2aQmCQljgxpY=;
 b=idtWkd4KBEpEwrZ+GrQpND9JeLe/6Tc4hkDMJoOhYtFrTrvVM2NpxitBtngfrwjs2f
 siSwZJUiwmfHil0r5xQ5Vq4YjAbDbG46OpLOfM3CmU8+vdw0iW4xW5hwVGiyrNNDfmcv
 kYO5Z0CtOepmRtKc/wo+5GZcW0rqba5Gs26/yBYVyhwXiD9ThQwiznjF5ypL65uDYaA9
 0k4j36YIBeIvpS1qVmhQxZpbfMl7vEqj9tdH4QaPdFjoUPVtz+FenaYv130gTylc1eFp
 9gF8nnbn8BhtxZAwBLhxUeEjhYe1Prgkgg8m4TwgGw3vhjpUtx3Aq/2n23OopjTUUdzB
 BBmg==
X-Gm-Message-State: APjAAAUTLVRfN1sg8ulME8Ww+NLy1BDKsp/S51s6JeizfuuaVV4hD9oh
 Bt6vvskgqv6w1K6JN9G6DZQ=
X-Google-Smtp-Source: APXvYqzHqDXmLy6DqjIE9EP+6gqb0JSKrhT9t4CpwFD0zLjZCG+9y75TadrJV0ce3050t0e0mrFKDg==
X-Received: by 2002:a1c:9956:: with SMTP id b83mr12316396wme.63.1569225207034; 
 Mon, 23 Sep 2019 00:53:27 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id 189sm22166938wma.6.2019.09.23.00.53.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Sep 2019 00:53:26 -0700 (PDT)
Date: Mon, 23 Sep 2019 09:53:24 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v2 2/2] crypto: sun4i-ss: enable pm_runtime
Message-ID: <20190923075324.GA1599@Red>
References: <20190919051035.4111-1-clabbe.montjoie@gmail.com>
 <20190919051035.4111-3-clabbe.montjoie@gmail.com>
 <20190919165559.e7xyapggcwp2ukdt@gilmour>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919165559.e7xyapggcwp2ukdt@gilmour>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_005329_065415_D195FBA9 
X-CRM114-Status: GOOD (  25.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, wens@csie.org, linux-crypto@vger.kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 19, 2019 at 06:55:59PM +0200, Maxime Ripard wrote:
> Hi,
> 
> On Thu, Sep 19, 2019 at 07:10:35AM +0200, Corentin Labbe wrote:
> > This patch enables power management on the Security System.
> >
> > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > ---
> >  drivers/crypto/sunxi-ss/sun4i-ss-cipher.c |  9 +++
> >  drivers/crypto/sunxi-ss/sun4i-ss-core.c   | 94 +++++++++++++++++++----
> >  drivers/crypto/sunxi-ss/sun4i-ss-hash.c   | 12 +++
> >  drivers/crypto/sunxi-ss/sun4i-ss-prng.c   |  9 ++-
> >  drivers/crypto/sunxi-ss/sun4i-ss.h        |  2 +
> >  5 files changed, 110 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c b/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
> > index fa4b1b47822e..c9799cbe0530 100644
> > --- a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
> > +++ b/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
> > @@ -480,6 +480,7 @@ int sun4i_ss_cipher_init(struct crypto_tfm *tfm)
> >  	struct sun4i_tfm_ctx *op = crypto_tfm_ctx(tfm);
> >  	struct sun4i_ss_alg_template *algt;
> >  	const char *name = crypto_tfm_alg_name(tfm);
> > +	int err;
> >
> >  	memset(op, 0, sizeof(struct sun4i_tfm_ctx));
> >
> > @@ -497,13 +498,21 @@ int sun4i_ss_cipher_init(struct crypto_tfm *tfm)
> >  		return PTR_ERR(op->fallback_tfm);
> >  	}
> >
> > +	err = pm_runtime_get_sync(op->ss->dev);
> > +	if (err < 0)
> > +		goto error_pm;
> >  	return 0;
> 
> Newline here
> 
> > +error_pm:
> > +	crypto_free_sync_skcipher(op->fallback_tfm);
> > +	return err;
> >  }
> >
> >  void sun4i_ss_cipher_exit(struct crypto_tfm *tfm)
> >  {
> >  	struct sun4i_tfm_ctx *op = crypto_tfm_ctx(tfm);
> > +
> >  	crypto_free_sync_skcipher(op->fallback_tfm);
> > +	pm_runtime_put(op->ss->dev);
> >  }
> >
> >  /* check and set the AES key, prepare the mode to be used */
> > diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-core.c b/drivers/crypto/sunxi-ss/sun4i-ss-core.c
> > index 6c2db5d83b06..311c2653a9c3 100644
> > --- a/drivers/crypto/sunxi-ss/sun4i-ss-core.c
> > +++ b/drivers/crypto/sunxi-ss/sun4i-ss-core.c
> > @@ -44,7 +44,8 @@ static struct sun4i_ss_alg_template ss_algs[] = {
> >  				.cra_blocksize = MD5_HMAC_BLOCK_SIZE,
> >  				.cra_ctxsize = sizeof(struct sun4i_req_ctx),
> >  				.cra_module = THIS_MODULE,
> > -				.cra_init = sun4i_hash_crainit
> > +				.cra_init = sun4i_hash_crainit,
> > +				.cra_exit = sun4i_hash_craexit
> 
> You should add a comma at the end to prevent having to modify it again
> 
> >  			}
> >  		}
> >  	}
> > @@ -70,7 +71,8 @@ static struct sun4i_ss_alg_template ss_algs[] = {
> >  				.cra_blocksize = SHA1_BLOCK_SIZE,
> >  				.cra_ctxsize = sizeof(struct sun4i_req_ctx),
> >  				.cra_module = THIS_MODULE,
> > -				.cra_init = sun4i_hash_crainit
> > +				.cra_init = sun4i_hash_crainit,
> > +				.cra_exit = sun4i_hash_craexit
> 
> Ditto
> 
> >  			}
> >  		}
> >  	}
> > @@ -262,6 +264,61 @@ static int sun4i_ss_enable(struct sun4i_ss_ctx *ss)
> >  	return err;
> >  }
> >
> > +/*
> > + * Power management strategy: The device is suspended unless a TFM exists for
> > + * one of the algorithms proposed by this driver.
> > + */
> > +#if defined(CONFIG_PM)
> > +static int sun4i_ss_pm_suspend(struct device *dev)
> > +{
> > +	struct sun4i_ss_ctx *ss = dev_get_drvdata(dev);
> > +
> > +	sun4i_ss_disable(ss);
> > +	return 0;
> > +}
> > +
> > +static int sun4i_ss_pm_resume(struct device *dev)
> > +{
> > +	struct sun4i_ss_ctx *ss = dev_get_drvdata(dev);
> > +
> > +	return sun4i_ss_enable(ss);
> > +}
> > +#endif
> > +
> 
> Why not just have the suspend and resume function and the enable /
> disable functions merged together, you're not using them directy as
> far as I can see.
> 
> > +const struct dev_pm_ops sun4i_ss_pm_ops = {
> > +	SET_RUNTIME_PM_OPS(sun4i_ss_pm_suspend, sun4i_ss_pm_resume, NULL)
> > +};
> > +
> > +/*
> > + * When power management is enabled, this function enables the PM and set the
> > + * device as suspended
> > + * When power management is disabled, this function just enables the device
> > + */
> > +static int sun4i_ss_pm_init(struct sun4i_ss_ctx *ss)
> > +{
> > +	int err;
> > +
> > +	pm_runtime_use_autosuspend(ss->dev);
> > +	pm_runtime_set_autosuspend_delay(ss->dev, 2000);
> > +
> > +	err = pm_runtime_set_suspended(ss->dev);
> > +	if (err)
> > +		return err;
> > +	pm_runtime_enable(ss->dev);
> > +#if !defined(CONFIG_PM)
> > +	err = sun4i_ss_enable(ss);
> > +#endif
> > +	return err;
> > +}
> 
> This looks nicer:
> https://elixir.bootlin.com/linux/latest/source/drivers/spi/spi-sun4i.c#L492
> 
> Or, just make it depend on CONFIG_PM, we should probably do it anyway
> at the ARCH level anyway.
> 

Hello

I usually prefer to give choice (PM vs not PM), but it simplify a lot the code to depend on PM, so I will go for it.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
