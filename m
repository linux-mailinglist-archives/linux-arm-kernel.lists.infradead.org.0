Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D09B83AEBE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 07:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2PxBRlKza51pCvxH1VSFb2Zkm0Oq77nLPzquPS09BY=; b=Sa4/O+/upm0sQA
	XKCj2FhPerQ7lteTvhhD/f+xVUHrXCyWv96siSh7Bf8+uQqpAVty/7NPEIdpfimVheklqx/0/SY9e
	Y5fNznRbVnTHGsmyYqokFu2UG9mdfOrGhknAdwvcrGiKq6NLrKQTVbALXfLNC70trqmy6Plgh4e50
	n06U5x2YSoONMrKmn0dudbdb3fx1IUEqs5jaaIWjzsOQSelB/on78I3XFjIJrQ9poGxTUYP3TbXjy
	ArVuIot9luZdMu9Rg1eMw9Jl9mrkk2vR4MhlF8PXfu753fZ9xBICf0uKrJDeuEYoLAFHKdXxrrbGL
	UrNF44teK7IXApDj/nPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haDEH-0001vT-3J; Mon, 10 Jun 2019 05:52:25 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haDE3-0001uz-6H
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 05:52:12 +0000
Received: by mail-pl1-x643.google.com with SMTP id bh12so3185309plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Jun 2019 22:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :user-agent:message-id:content-transfer-encoding;
 bh=yYBt1hcQRQ0spSrpHXNNQXBu1ZghSIdq4bfDYf+JhQs=;
 b=ap3P9Rv1D8aQHfClkdMrAIz0lJEB90foHbKNELFbvjYgglPGaYhZZDEGactmqxDbB3
 i+m5J8ngAGhJZb11iW+5E/vyO7uT254K24ZGbAxYTF7kz8oo6GsGkNjAKS++f130U4UR
 UUbpTGlCkup21/YPprv1FmY2NFCj/Zkl1wv0sV69bIiM8DgpcagIQO+vQGgQO8/2r7AN
 ZcZYFC0bQfmpDEP9Hc9VA/8BQKHEy9UviztpTRgHAfrNzLiuj0WS59rfT1892jQBYNk6
 /Xn43QCihdD3QMiH3u0Xv0VsizSFc1kAVU0z5uCFs1IvO2bJKtZnzNfvUepQZoQDkA0i
 Xa+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:user-agent:message-id:content-transfer-encoding;
 bh=yYBt1hcQRQ0spSrpHXNNQXBu1ZghSIdq4bfDYf+JhQs=;
 b=P9ZWWTJNh/g3wZPcXc/nQ3gQn0QXlZ0g897+VR3xvBrAl4Va8zutzM6p4Lvzy9qUIc
 u3AncxtBBDtIAkFmvPFBKXIeUDBbv4V+uoqpoATJWoW8BNg0DW8J8egFTsO4rjFj5Un+
 ScUcFdQ+8PvYS3rTqvrTpDOCtCdSiEuP11EURxshzMwmG00tU1bfLLYQDGuOCPhU20LV
 Ic5ASEbjIWxBKnWDk1w357n/f9rVCJluznK3QrK/eN4I6cHAC+BuEX/IfnT+u8UVFufq
 5Z+ojBCccssX7GIWS3W/QEEJslZVCs/WawGwx0A1bGSxOuI4ktIdTI31dAd+KWQ3y5Jx
 ObMg==
X-Gm-Message-State: APjAAAXbSIXJmr5UyWJDqAmWYyBr1k0IGBAJvPHCr6ZJv985W4yO7GQa
 rjlQ9Y8v9C7ZLUVkH48uoRL9vsI2
X-Google-Smtp-Source: APXvYqwEoxXM5FQzuBBvwT6FbXqtViBTtkOAbbFjME16dv8NldZlQjn3iDQ3dOMqqHq0nrc6FYbq4Q==
X-Received: by 2002:a17:902:2983:: with SMTP id
 h3mr24952866plb.45.1560145930521; 
 Sun, 09 Jun 2019 22:52:10 -0700 (PDT)
Received: from localhost (60-241-56-246.tpgi.com.au. [60.241.56.246])
 by smtp.gmail.com with ESMTPSA id k1sm8446233pjp.2.2019.06.09.22.52.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 09 Jun 2019 22:52:09 -0700 (PDT)
Date: Mon, 10 Jun 2019 15:49:48 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH 4/4] mm/vmalloc: Hugepage vmalloc mappings
To: linux-mm@kvack.org
References: <20190610043838.27916-1-npiggin@gmail.com>
 <20190610043838.27916-4-npiggin@gmail.com>
In-Reply-To: <20190610043838.27916-4-npiggin@gmail.com>
MIME-Version: 1.0
User-Agent: astroid/0.14.0 (https://github.com/astroidmail/astroid)
Message-Id: <1560145722.obq2bpepl8.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_225211_257483_7F6DDEF8 
X-CRM114-Status: UNSURE (   5.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Nicholas Piggin's on June 10, 2019 2:38 pm:
> +static int vmap_hpages_range(unsigned long start, unsigned long end,
> +			   pgprot_t prot, struct page **pages,
> +			   unsigned int page_shift)
> +{
> +	BUG_ON(page_shift != PAGE_SIZE);
> +	return vmap_pages_range(start, end, prot, pages);
> +}

That's a false positive BUG_ON for !HUGE_VMAP configs. I'll fix that
and repost after a round of feedback.

Thanks,
Nick


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
