Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 840D51B5427
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 07:24:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jm5dxTQxLErRVE2CNZqqm2+VoJyQB2obs8o5r3VpH1o=; b=bc0yNiIByBTzdO
	2ppLizExRsgidUgbdTFr/DVmaSpvQhvMp7KzEvaIBWvDTqPnT/Osv3K9eHoZhvwsI7SWfpjo089xm
	FiwNeJHuR4msQ28mvluywf7B55m8PTd4vE2pfqRIiGc0oeCaD9rEDmVu+q5cC/4PS4nE/lMrbWGyr
	pTaVuVnSM7VpMFNMFz4ZRyxRMXyyX3RXvTJXyucsXuCIsViVzIJ1DDym+PBj7th7JdOAoVV+T2Eew
	6dqwo4Runj4jXKQP0a/oTckYzIa0QTOLDTEBnawIvXO1jTo9GTpV/wWgGedbw9spjAfZWQQ4IiM8G
	aOoyZtr+sS3GysnG/4JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRULM-0003b6-UJ; Thu, 23 Apr 2020 05:24:12 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRULE-0003aZ-EP
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 05:24:05 +0000
Received: by mail-pg1-x542.google.com with SMTP id r4so2330578pgg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 22:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=lEVdnd8EWeQZgsT9ppcu9Jy5EeI1fMWvBp6M+DR99hQ=;
 b=kQY8ewMuRx6utXx9z5qFH+eTWEbWI04gFeiaHLd9L+sbKysrrKlNGh8U5OzQ4EDCbF
 8n4K9BE1hF7dOxzkE9EuDf7QQ34nq1nnULKRG99nWC9inbw3UJFXYuQALQrshY77uyMD
 l8H/Z3PI6IBbrGOhowqvVL5dKviS48T2lxwX7JEU1d6sPaVpP6gFgvZywsI6MpMn36QB
 1ONxFcxh1w2viXPOBE5z7QXCPVWN7UiRndeOVQr/E6CPFqzWqSvA9HKpUJyfIWFbErIL
 qBPMlheEH72AUe/KvKVF+l0zyQ8jUG+prsEN/7s4bfX0t5JChog/GzMlBMIUyLhcPf2w
 QKLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=lEVdnd8EWeQZgsT9ppcu9Jy5EeI1fMWvBp6M+DR99hQ=;
 b=UbIha59m5mXs1XHNke6KDA6oE+9GD9pH/8zK4yxf6EXT7RQI0MtoYbs+WJf4Zl29rh
 fs8DH72ZV1H5J5E7HbVScUNqeN/jgUG49wSFk3UzGiEahD55+Tug+8k3BcFE8T1gTsLd
 HtQNE4oUkiJ3UtqfMMVSL7k16AqrGNG4HXp/usAbNboIcBRwyE+3EOmIx64Bp8p5SC6Y
 Igv1DqwwMxO+gLU9q+Zypnnp2r5AxtGQ87zcU+JCQiHWLz6PVy35Z8chLs6c30nRFPTf
 GHhvTYR8XtK4REAwkTQKTxJCHNrfJZbn/gQNhS1UD/G+B5PCYNOfH8lVNln8VcUwXyW0
 p6wQ==
X-Gm-Message-State: AGi0PuY7NZH9t65Qntnv2zFEzyYQNIfuN0IQH0azDF3WAdjhpQ3JXxa6
 YjkBS73+FpIf3dqI+fOXWpI=
X-Google-Smtp-Source: APiQypLR2/06UhIEsqhcv1dfYIqMq3kQEseREtteSWLWzX3fhIbeYEsVOhzx1kidIEIB+RGi3xOm1g==
X-Received: by 2002:a63:354:: with SMTP id 81mr2374158pgd.304.1587619443386;
 Wed, 22 Apr 2020 22:24:03 -0700 (PDT)
Received: from gmail.com ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id b140sm1305741pfb.119.2020.04.22.22.24.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 22:24:02 -0700 (PDT)
Date: Wed, 22 Apr 2020 22:23:57 -0700
From: Andrei Vagin <avagin@gmail.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 3/6] arm64/vdso: Add time napespace page
Message-ID: <20200423052357.GA967113@gmail.com>
References: <20200416052618.804515-1-avagin@gmail.com>
 <20200416052618.804515-4-avagin@gmail.com>
 <20200416104527.GD4987@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416104527.GD4987@lakrids.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_222404_510399_10CE3B9A 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dmitry Safonov <dima@arista.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 11:45:27AM +0100, Mark Rutland wrote:
> Hi Andrei,
> 
> On Wed, Apr 15, 2020 at 10:26:15PM -0700, Andrei Vagin wrote:
> > diff --git a/arch/arm64/include/asm/vdso.h b/arch/arm64/include/asm/vdso.h
> > index 07468428fd29..351c145d3808 100644
> > --- a/arch/arm64/include/asm/vdso.h
> > +++ b/arch/arm64/include/asm/vdso.h
...
> > +#ifdef CONFIG_TIME_NS
> > +static __always_inline const struct vdso_data *__arch_get_timens_vdso_data(void)
> > +{
> > +	const struct vdso_data *ret;
> > +
> > +	ret = _timens_data;
> > +	OPTIMIZER_HIDE_VAR(ret);
> > +
> > +	return ret;
> > +}
> > +#endif
> 
> Sorry for the confusion here, but please either:
> 
> * Add a preparatory patch making __arch_get_vdso_data() use
>   OPTIMIZER_HIDE_VAR(), and use OPTIMIZER_HIDE_VAR() here.
> 
> * Use the same assembly as __arch_get_vdso_data() currently does.
> 
> ... and either way add a comment here:
> 
> 	/* See __arch_get_vdso_data() */
> 
> ... so taht the rationale is obvious.
> 
> [...]
> 
> > +enum vvar_pages {
> > +	VVAR_DATA_PAGE_OFFSET = 0,
> > +#ifdef CONFIG_TIME_NS
> > +	VVAR_TIMENS_PAGE_OFFSET = 1,
> > +#endif /* CONFIG_TIME_NS */
> > +	VVAR_NR_PAGES = __VVAR_PAGES,
> > +};
> 
> Pet peeve, but we don't need the initializers here, as enums start from
> zero. The last element shouldn't have a trailing comma as we don't
> expect to add elements after it in future.
> 
> Rather than assigning to VVAR_NR_PAGES, it'd be better to use a
> BUILD_BUG_ON() to verify that it is the number we expect:
> 
> enum vvar_pages {
> 	VVAR_DATA_PAGE,
> #ifdef CONFIG_TIME_NS
> 	VVAR_TIMENS_PAGE,
> #endif
> 	VVAR_NR_PAGES
> };
> 
> BUILD_BUG_ON(VVAR_NR_PAGES != __VVAR_PAGES);

Hi Mark,

Thank you for the review. I have sent a fixed version of this patch in
replay to the origin patch.

Thanks,
Andrei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
