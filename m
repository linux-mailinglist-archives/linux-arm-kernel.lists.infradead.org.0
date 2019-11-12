Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D02F8947
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 08:03:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JC8KGWYtoRwZ4gG5/wwyvCPpJqlRkLoxxQZUkBWuL50=; b=ZUFUTKZlIV+GKi
	WpMXNe1DgakT5ShYM5d1sku67ttmIDOlaVYjCWmK53/42SynyuEvs9Z/YT/hjtVI7bMrnL47IJz1V
	4tBOzm8DlodRsKlMVG4MVDix8ZrO4bAuK1dokH9ozovn3h5wt5j8dpHbPzrFOih16Smkx34kC7sG1
	CJGoclMfueEsmP3wYANpORATtuA/MOhaOwtJ+81AVFEn0ZIappby9r37m5IbuiDRSyOgaBsRW94No
	++6FMOYmDq1mg3myvpSNngKuG7NvNxfGsC6wrm6dcaDq0bl3L3t8hxyWoLTsbpfgg6DJLRkkbkQ0d
	oBBXKd0RRVhTZ1fBCLgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUQCw-0002kE-TL; Tue, 12 Nov 2019 07:03:22 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUQCo-0002je-41
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 07:03:15 +0000
Received: by mail-wm1-x334.google.com with SMTP id c22so1715298wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 23:03:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yTR9SpBETxhgAVOiN0j4Rh91KHn3K/Qcw71sv13EcbY=;
 b=p0RHmG6yAijKKxnWizQhJ4V63eZhn1njPOyKlPsvetXBs82tKA3ErPZPccBVL2LyzM
 tDs8XlfXmSrQGa1Y9jUwfRphyZGfieol2StuFK7l1HtlxUrtM7TSjfb0kzuKhWcIYFok
 QMbCUShFhdkeKSumCk7kOCjHShI7d5SkqIKkKUlgxpt/rzTasCLEKAC54lL/KCO9rWTD
 1Cr0U/8o+JbdXKAzqyBt3np81hnob7ismNM2/ads1GSqZQwIBMEHSHq4/6PHzvzwyJV8
 fOYBQqXcNoJY7Nkayo4v90A0LE1bW/EGPSRCzyq790b7ZnzHd0kyx1RDd2c6a6VeICnJ
 fdUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yTR9SpBETxhgAVOiN0j4Rh91KHn3K/Qcw71sv13EcbY=;
 b=Xbjq8DLFBZLZZ6+zLJcFTOcYZGArBCFDjaH1KwLYr6RCxTM2cSCoySkQLL83t68r0Z
 +iLZk+JWAYvYHEdxvKgblk7yFnqc3vzyvZgKQs3FAymEsxcfjPRs14pxTnAKovySC+lR
 tx2BI9W10Mo6EFVq28FF/ip72e5pP6VGQR82F472jkE5iQ52vy+rs6vZDaZnSp6ue2lv
 8W2kw2ls/opF28OtXDN5uK9B5NWqMR3rWZn8Gd3i3I5LohpSpXhNpr10EZz8oDzVnAn9
 xf8ZVMwJQisOwAqW5bxDg6Fs8anA/ItnJxWJVdEazD4ca5cj/V6CLEE42gD2nJ1VoTbU
 kHNQ==
X-Gm-Message-State: APjAAAUWqqoOUCpyIVGxczLL2IlwWNGXs1K9IeT9aJtMpmq/AFGm/wEK
 qAD80iaToilPWZ7oB0qX574=
X-Google-Smtp-Source: APXvYqzGzN3OrxY4U+oStPBlfyGr9UT5SCvqRPCXsmMdPu0Tl40a7Q5VFOOBMC/wiYvMdyqnhSGhOA==
X-Received: by 2002:a7b:cd86:: with SMTP id y6mr2355744wmj.163.1573542192369; 
 Mon, 11 Nov 2019 23:03:12 -0800 (PST)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id s11sm1252875wrr.43.2019.11.11.23.03.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 23:03:11 -0800 (PST)
Date: Tue, 12 Nov 2019 08:03:09 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] crypto: sun8i-ss - Fix memdup.cocci warnings
Message-ID: <20191112070309.GA18647@Red>
References: <20191109024403.47106-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191109024403.47106-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_230314_192438_96ECF4CE 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:334 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 09, 2019 at 02:44:03AM +0000, YueHaibing wrote:
> Use kmemdup rather than duplicating its implementation
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---

Hello

Thanks but the patch was already sent by kbuild robot and merged.

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
