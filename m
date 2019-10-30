Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4A0E9939
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 10:34:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MjSlN56ClDHFVnEVWG9iQYr4jVK9a7b1+mQ/YnipvS8=; b=HpCCj8tnD3FFKL
	LcDYfhg02oeC+Tj5SW3EoAOPm3wNsCa1HZUT0vrQ6nzZVPLwxDFV2SmgHU/wGmCg8KKOkxUdI4uSL
	7+5+9xDAA4szAb1QPO7rQXBwZ5uxtZh1G56NgXezhIPzcIJRNQ7VuqaOEswNhywom2CGQpXb/YJvD
	NIYqX43GgYM0PMJZoCol7amT15H4uS8Irel2eJLprIo8/xPk+nA3/FU/ErmBut6uGKQOx/uNz0saq
	BEGKs4Eo/nyWhHdappRLVbBi87CLeJ2FTPE+3MWKb57h189Db6+31V2ZbHLyh6tZf0mKWSdWhsELG
	tlDTO7wALdgQ0s24C2CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPkMr-0001Ya-JC; Wed, 30 Oct 2019 09:34:17 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPkMb-0001Xv-81
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 09:34:02 +0000
Received: by mail-pl1-x642.google.com with SMTP id q21so720110plr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 02:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dHt8xmgIY1Zu8o3Odq810rQJYiQ3EDnuokPmILyCi40=;
 b=Q5NAYgao/jXfBsZ4i0cijFUPxE6TMxG8N+DDCvw3S0ypSp9Uhkclrt0C7ZyXQJkxMF
 B5Azo0yVgzK1Lm/HtVC1+P+8NLO3GeiOUYhY9n0iA19RIL9bEjRDd++5Y74jA/jFlBL6
 HJ6YOEtkuNRg/kvrxZrbYVXL1Qz4ifJYEhAEeeMnrMTbeGaWlVHQMuhXFGCJcHSavPwO
 0F0bO0uCvFr2GAJ+DFYT2fkQo6GlTX0kZ4qzg6ig6DH7KVJDNVYCkmxnWONGu/Zk1duS
 w3xqZ7lk0A633sBiDEluslRqG9O0RHKN+1Tdq+/wJGvD3Wz/Uqt75MFGjYNc+Au3jlI0
 hDTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dHt8xmgIY1Zu8o3Odq810rQJYiQ3EDnuokPmILyCi40=;
 b=sAY89GIrMVTEGFpy+E1VeiQ5QyMVTme5f7KDWGZn3F0h7ISg95rMyYaWhD7I4Wi7hR
 dIQhhHOcL/1Gibbzm94DwfTbOe069TVz5jqlWzXvQ+T60GzKDuNzAwuqjhHC6Wf627tW
 qM5Osn0/smFBS8Gdg4ekPIdySjAcNcRlYIXtZeoFgdfmgWzSKkrPQ/DsfWejxlzlb+U3
 hnKIx5f0YDjSRQmKvBZgEr1LE1L1d82LsxsSuR5dED+E7eebkyU3gU4ZgUGlyLjD+m3s
 //LCEGIkDDGj0T0NWLkfq7gXlPLeUe1g4412I4d2wG18O5rf5reYIBd9ULUyZPPHx87x
 X9XA==
X-Gm-Message-State: APjAAAWWIA7hgUYMz4qnNhOBF1adP37so+uq6iEGVSG8Sm+rZ/MwXOjm
 5jpJU0t6DXACO4VaFtQTYpcU
X-Google-Smtp-Source: APXvYqyB79vuui3L771+FWwAqgE5eWr71fvsNfKt24AA2PmRgygcBC0iGb+2exeZLjcTPu46alJzGw==
X-Received: by 2002:a17:902:a584:: with SMTP id
 az4mr3507150plb.74.1572428040369; 
 Wed, 30 Oct 2019 02:34:00 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:618e:77d9:c9fa:423a:3851:8df4])
 by smtp.gmail.com with ESMTPSA id i126sm2090862pfc.29.2019.10.30.02.33.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 30 Oct 2019 02:33:59 -0700 (PDT)
Date: Wed, 30 Oct 2019 15:03:51 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH v3 2/2] media: i2c: Add IMX296 CMOS image sensor driver
Message-ID: <20191030093351.GC11637@Mani-XPS-13-9360>
References: <20191025175908.14260-1-manivannan.sadhasivam@linaro.org>
 <20191025175908.14260-3-manivannan.sadhasivam@linaro.org>
 <20191029121320.GA5017@valkosipuli.retiisi.org.uk>
 <20191030062634.GA11637@Mani-XPS-13-9360>
 <20191030083544.GG5017@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030083544.GG5017@valkosipuli.retiisi.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_023401_290257_2906612F 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 robh+dt@kernel.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

On Wed, Oct 30, 2019 at 10:35:44AM +0200, Sakari Ailus wrote:
> On Wed, Oct 30, 2019 at 11:56:34AM +0530, Manivannan Sadhasivam wrote:
> > Hi Sakari,
> > 
> > Thanks for the review!
> 
> You're welcome!
> 
> > 
> > On Tue, Oct 29, 2019 at 02:13:20PM +0200, Sakari Ailus wrote:
> > > Hi Manivannan,
> > > 
> > > On Fri, Oct 25, 2019 at 11:29:08PM +0530, Manivannan Sadhasivam wrote:
> 
> ...
> 
> > > > +static struct i2c_driver imx296_i2c_driver = {
> > > > +	.probe_new  = imx296_probe,
> > > > +	.remove = imx296_remove,
> > > > +	.driver = {
> > > > +		.name  = "imx296",
> > > > +		.pm = &imx296_pm_ops,
> > > > +		.of_match_table = of_match_ptr(imx296_of_match),
> > > 
> > > No need for of_match_ptr here.
> > > 
> > 
> > AFAIK, of_match_ptr is needed for !OF case. Else we need to manually add
> > #ifdef clut to make it NULL. Does the situation changed now?
> 
> ACPI based systems can also make use of the compatible string for matching
> drivers with devices through of_match_table. This may sometimes be the most
> practical approach. I.e. you don't need ifdefs either.
> 

Oh okay, I'm not aware of this. Will remove of_match_ptr then.

Thanks,
Mani

> -- 
> Regards,
> 
> Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
