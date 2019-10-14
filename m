Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA0ED64D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 16:12:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FN/UciTH6NKD6nAyI03OY8JOWIyy/YAgsofPg14lXPE=; b=FQKBVN6MmjvsK9
	cxbCieLb+uzMTfAVdRN/wU5dm3GJlLwNplBav64Qfpchfxiui+4yBeht0+8QcGMTg3RcqnQ779d37
	Ap0Udl4PjXLzrQpvO1TfkaheAcTQPs8mWpOwWXB6zU7Zmd/B+E3S8HaRjcdi1erZgftyaQHbguYVF
	MMdPnNDFr0okIO401M49J4SanJOXCbktwe/6BhZBQLyUUaEHX5E2SjiD3FaM+53qur7F36HXix6KR
	kb/jMYrKYrJOo5nO3+mx2BUGkqwP51J2Z09ATyV6/tKgSxiM+5bC9D9amP1w0ouWtSKFdZqiIM8gy
	a6KAkmlDfOfPvjnurlbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK14x-0000Gd-5K; Mon, 14 Oct 2019 14:12:07 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK14k-0000F7-Ng
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 14:11:56 +0000
Received: by mail-qt1-x842.google.com with SMTP id m61so25600032qte.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 07:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=IvIenCJzHo+g6OuA9cd9X9mP9xzIp/N5yCxiJYUBY1E=;
 b=IKeG2jczIn2/hbGefzwpalyXwOL8I+IESSyz5oZ01wurpwW2JDCrN4F/0afk8J0ICv
 x1Jln5cdJNzG+zcDKpTfDcARI48mI/w3twXA2UfxL7uboKEegSKBC8rYgI1cwq/Z9Dwj
 zeiwXie7Jk+bgfZucCxYe2J3hZwv86IqqE0v0d4lf/RnDH2MzKMKaNd57qSEuw13OV9q
 6uQUvOvuJaq1frTPCkrQSrK3+k8uePioSqhhIf5vn9rblfzNF/5TlyodPDjrSEgn8DTf
 35hWJ5qnW2h1CXcNLNDNA3elqgdoRB1BbEueSd+dLvA9/ROKf+tQ/nVzL0rjsedbjt9Y
 bTwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IvIenCJzHo+g6OuA9cd9X9mP9xzIp/N5yCxiJYUBY1E=;
 b=SRbBWVhmrUFrx8kJqiwaTm97caG3/vjz28QqVPoOUL2PLCnEJPHHPVywWsrdCWEwLm
 1a0+bZC7r1cxc8IOoAov2HPkMP6tw3t+/yY6PwY037pBTDUP4wFScbTkD5MxPNYl2Cdc
 jFYr8G3UZGYtzZWGkg5PeSFlib1DAJLy4LFgkw1Ej1v60BSgBoGRodghpvMPTIohNo1g
 h2CazEDlebx7q3dpcgVYlNEGLlfBzqeOQ91dzxlwtpeAuogNiT4nWimNKmLx7FYs3Et6
 s1A/mPSNvvl1vIh5DPV0kjhnUO8+SKCrqUhc+xAMdN8WCJDAkU8Q7ium5jZIrF9xz+Px
 iiXA==
X-Gm-Message-State: APjAAAXKz9zVdtGIGd123frcvWnenh7AjTcPHhRHVckjP8olnVbibkmp
 OQMmnP75ZVZ9LVO7shFBXDCFmg==
X-Google-Smtp-Source: APXvYqwXMuAgZT5Grv+lwbM536hV1aSfFcio2x7Rt1wCSc7KtXRsEK1CgTF9G8o1bR+6eWoKeEuNzQ==
X-Received: by 2002:a0c:e5c1:: with SMTP id u1mr31058635qvm.206.1571062312767; 
 Mon, 14 Oct 2019 07:11:52 -0700 (PDT)
Received: from soleen.tm1wkky2jk1uhgkn0ivaxijq1c.bx.internal.cloudapp.net
 ([40.117.208.181])
 by smtp.gmail.com with ESMTPSA id x19sm8223186qkf.26.2019.10.14.07.11.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 07:11:51 -0700 (PDT)
Date: Mon, 14 Oct 2019 14:11:50 +0000
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v6 02/17] arm64: hibernate: pass the allocated pgdp to
 ttbr0
Message-ID: <20191014141150.xt6z3gs3cu3rl3go@soleen.tm1wkky2jk1uhgkn0ivaxijq1c.bx.internal.cloudapp.net>
References: <20191004185234.31471-1-pasha.tatashin@soleen.com>
 <20191004185234.31471-3-pasha.tatashin@soleen.com>
 <bb937db3-f23a-809b-4ad8-ca86f689554d@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bb937db3-f23a-809b-4ad8-ca86f689554d@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_071154_774861_1B9663BB 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, marc.zyngier@arm.com, catalin.marinas@arm.com,
 bhsharma@redhat.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 jmorris@namei.org, linux-mm@kvack.org, ebiederm@xmission.com,
 matthias.bgg@gmail.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-10-11 19:17:22, James Morse wrote:
> > Fixes: 0194e760f7d2 ("arm64: hibernate: avoid potential TLB conflict")
> 
> (That was a 'break before make' fix, the affected code comes from:
>  82869ac57b5d (""arm64: kernel: Add support for hibernate/suspend-to-disk))
> 
> But, it works in all one circumstances its used: we know all the top bits will be zero.
> I agree its by accident and we should fix it.
> 
> I don't think we should send it to stable.
> Please drop the fixes tag, with that:

OK

> Reviewed-by: James Morse <james.morse@arm.com>
Thank you!

Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
