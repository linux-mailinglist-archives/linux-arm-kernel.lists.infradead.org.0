Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4BD65612
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 13:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1qGQY4+7lJHNGNPVrL7TLegHR8jnslV4eOMNzPoRhM=; b=DZBpK8HIQnQ+st
	eLtER81tOvNprmt3NT2upX3LONnebRc6J2eyhTQY5rCRFKe2TQ7/7KlN7IprUVFlZpbrGmKMrZLo0
	+x5SzCK0uQmWOV23l9d9efJl4QhfXG0b4dDYzfGFgHEWzwsCtLF44jlZHhxy4tp4O9QodXFC3ulHj
	2r+EXyRBLowny2FUGRFzAQ1KTxinYf1lF8PQWix1jiN2mbHAfhKZxgN8AoiNWIQptWtIXN+fTAJGZ
	RbR3PlJ+sY7e4Bzkdz/dEo1fZGESHZEcNhZOn/EfLQpQUah+tQU0DmD/4tm0ihbeguGpRjaTppEET
	HPKuLqXGlQMkpkFD3ZJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlXbk-0006kl-9Q; Thu, 11 Jul 2019 11:51:28 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlXbd-0006je-6f
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 11:51:22 +0000
Received: by mail-pl1-x644.google.com with SMTP id w24so2921461plp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 04:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YADbvn2K6/u8nqZ8q9ZPF7M9RWPIMSzuiJIm7lkbc3Y=;
 b=dR8W5eRiA/e3yOi4FOC4uHJMU1ECzIkaS4bxgdBNsa6BXDCrKbvda7odCkmQbvNdcH
 YZoMSxJR0BYz3/xfoJkaYuvvI1fPrP/ynaRDty9gWT67FWK53dMGLMMlKD/njJJnwG/2
 ev4GNOw3od3Y/XeE6wdIhqYSrJSNF5oqRiVH634uOV7zxQMZMoJ71+aXW0u3rmgbG0OL
 92E9bCnNpG9Ool9BikbAnYOLXmoUL1PxCXFNTVbkxD19su5nmpC3Vjiv1unpY8nDw+zF
 k7FSnjPt3kEPNECLpxet7RvOHLPYL8wx5xQ8ETIxs3tM5xk8hgLMIr9b/A2K6AIpD8Zm
 J8BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YADbvn2K6/u8nqZ8q9ZPF7M9RWPIMSzuiJIm7lkbc3Y=;
 b=HyytsVz1Vn7/+kNBx3bc2bLXcZi6vB1GoZn7B3iRP+824IMkp7lSYMoUcPG5uZEzPY
 ppfwZpoFrrsc0u2/hdRbryoDzkPBX76UOyA1+9sOB5sufPBLtwLh1FLrwQYDMKqMPhWd
 PwjRVewO5qb8ROY6N5PW+XLo8kOlT00JEk9sh9RNPh7OUssTQXPTjwKg7zelPnbogfg5
 YaF1cJCvgSeVLWM+mPw9yuznV7l/n6y27q2ArZhDyioGOzxaypjhTlRf3jWqjf6Qrpg9
 Hj7rbeHTY12DoaNwsxVfxhUsRR6kzo5g8MC88+7qpYQVSxa2bFataO2/pSfnzm8AOYLV
 xbLg==
X-Gm-Message-State: APjAAAUlYNOb2nvidR87y7s8i8SkTzk90D+c2vvRopP7tXmY92suD5EU
 UNnDeIhY9py/gtTDlSPhfKY=
X-Google-Smtp-Source: APXvYqxcGYiazPJSNg+VJyMqpy0EBBHqn2dYQ4xvLYGpGoGXyLLw8DgEU53NFyfiW27LNl5svYK7jQ==
X-Received: by 2002:a17:902:9a85:: with SMTP id
 w5mr4200056plp.221.1562845879704; 
 Thu, 11 Jul 2019 04:51:19 -0700 (PDT)
Received: from icarus ([2001:268:c144:cf11:d03e:81be:e250:5da0])
 by smtp.gmail.com with ESMTPSA id a21sm6426357pfi.27.2019.07.11.04.51.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 11 Jul 2019 04:51:18 -0700 (PDT)
Date: Thu, 11 Jul 2019 20:50:59 +0900
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Benjamin Gaignard <benjamin.gaignard@st.com>, jic23@kernel.org
Subject: Re: [PATCH] IIO: stm32: Remove quadrature related functions from
 trigger driver
Message-ID: <20190711115059.GA7778@icarus>
References: <20190507091224.17781-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507091224.17781-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_045121_271378_D3ABFAF8 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: lars@metafoo.de, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 11:12:24AM +0200, Benjamin Gaignard wrote:
> Quadrature feature is now hosted on it own framework.
> Remove quadrature related code from stm32-trigger driver to avoid
> code duplication and simplify the ABI.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>

What is the status of this patch? Are there any objections currently for
its inclusion?

William Breathitt Gray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
