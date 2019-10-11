Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A249AD3AC3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 10:20:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hk7/NBjghAGQNExUUxVGN1aKj5lMT6FCN9lNP9YSEbw=; b=B9KLzFWJGHqNEx
	fmQhA6YM5FuhBTg1vTx64KHNo2hQ8pl1DXD9xpGqdDSUxrkEE3HdU/NOCuUY0H10k0l4xuyvqmwNQ
	PSDK28gD2khiDkTmGmEo4Oa1FqLJBLO2SUnQYC0jihbGpfCUrj/Jnu63QAf9Zr+rgBBCo1GjVFBTf
	ZG1OPlgRKubHA7vdQjrGuNki/DdWnIHCQMisJ2lsNvDl2FXTL0FWY9x7bpj2ThD3ih/7t3sqj7v8X
	KwyL+qrY5u6MjGQo8BwufVXnM+JdB8E7BNjvlSHLZ0vd88fLPcuTGvcLPbmQusrR1prBYnBgSyMT5
	QnOPzb9vubyZ7MqvmLyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIq9r-0003DY-Po; Fri, 11 Oct 2019 08:20:19 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIq9i-0003Bo-DO
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 08:20:11 +0000
Received: by mail-wr1-x442.google.com with SMTP id j11so10847065wrp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 01:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=iY3VbFT46lw+lo2paBwupDTtrpw99cdmsvZfo9TjTQU=;
 b=SmkwSbfvxqDKQwKKDk5EWy2klDAogSzP3rzKKTLnMiF9wnXzUJgSCUH6AGsYpLNWDL
 NrVQTzA7aYIwU9/oHM0YuzVdhp+A0xWxAZ4rWMiX8BEljjJNkqBgZRbVUS1n12s3IDeS
 qDXqQzq0xHDLjUR5wWlgTLQjFg9QHl21UKY+muIzQ97ljNKPnMoqhRGw2CfpOUWAH8b0
 ZINz6BwjakkMasDWtmhP0hLvFSfBxaPLBsT5TkeOyYwXx4kKvyL4NIYXhyVdoO2KRs5V
 3NO4iNVI7saRskIYnZq1n3ucrUNWYSgf2QvLKTJ+kiLmasrP1TcqzDS+64tzJkrrPI9Z
 KVcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iY3VbFT46lw+lo2paBwupDTtrpw99cdmsvZfo9TjTQU=;
 b=pUJBYPreXSB540KCI/oHp4f1ZADS+WodzVuV1ULaoI+gS/KDfwHRu98C5dWY4z/hV4
 RdoeMuFDzLPduvlwG0R1mVaeBZbGTNorZvZRXK6Gh3qUlOlZkwAdPZoDUQqnNgbVuAmP
 2Ewd4tUKkfM4a4Fn3SLwCzhFlxAN0u3iaFuGBIee9QQMRk5MC8lB57CDqWd3NaDwqqkc
 6eH6/ESYAWAxGzAKIwNV2jguSCZKQETGiBWJ4WA/HAXHu6j6CHxcBoI4TLAVE7my5OmK
 zHeN1JtpV6yCAf+oBZus65EwMxpQ7SoqYvWXC0pCHXQwelzf3zXykkqL7wlHZ2INNOjN
 jMZA==
X-Gm-Message-State: APjAAAW8bSrypXvG6eEu6ChT4JMQs+ZmaSCPgGczkXxXdPdPBOcBSYfA
 atKbrN2tDv1mmJdqDNjoccw=
X-Google-Smtp-Source: APXvYqx4BP+NACn/f0HWVAabhBN703zVanaofrdx1aXskPCoLsynKeocseYiViIe4gyYbkJjTss6aw==
X-Received: by 2002:adf:f0c8:: with SMTP id x8mr12614050wro.206.1570782009029; 
 Fri, 11 Oct 2019 01:20:09 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id f3sm7531556wrq.53.2019.10.11.01.20.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 11 Oct 2019 01:20:08 -0700 (PDT)
Date: Fri, 11 Oct 2019 10:20:05 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v3 02/11] crypto: Add Allwinner sun8i-ce Crypto Engine
Message-ID: <20191011082005.GA4641@Red>
References: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
 <20191010182328.15826-3-clabbe.montjoie@gmail.com>
 <20191011075705.j5bqw2w6jmcrv5dz@gilmour>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011075705.j5bqw2w6jmcrv5dz@gilmour>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_012010_476423_228F91F6 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, catalin.marinas@arm.com,
 linux-sunxi@googlegroups.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, will@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 09:57:05AM +0200, Maxime Ripard wrote:
> On Thu, Oct 10, 2019 at 08:23:19PM +0200, Corentin Labbe wrote:
> > +	ce->reset = devm_reset_control_get_optional(&pdev->dev, "bus");
> > +	if (IS_ERR(ce->reset)) {
> > +		if (PTR_ERR(ce->reset) == -EPROBE_DEFER)
> > +			return PTR_ERR(ce->reset);
> > +		dev_err(&pdev->dev, "No reset control found\n");
> > +		return PTR_ERR(ce->reset);
> > +	}
> 
> There's only one reset so you don't need that name.
> 
> And I'm not sure why you're using the optional variant, it's required
> by your binding.
> 


Hello

It will be fixed

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
