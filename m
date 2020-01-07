Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04877132E11
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 19:13:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gvTtH7gdEfL+0ZHI11hkyHcUp4jd8yGm813LeqJ02l8=; b=L1a/A0eWwS+GRS
	3gqrCAM81wVugg1HinLO6EiA56lRyce/taA3gf+u01q7TCLLosQ+xdUCAnFdF2Fk6DMuYlmIth5ga
	34UfKFiHBoQKQECTyY9Skh/puioLOSEn9eniJ9Sr5wvM8ggMP/2c2LpfecxUEhMWZlUG5WtQIn8C2
	0a/Zi1/FHcg19S3yCHS/YtEH2ZfyQ6ZnO1dctjQ38C1lk64i9j+pieqsVn7siWGVluNIsf29o805N
	ID9ltPuiY95KddUYA7Q5NhG8XWeMB6GTOGhw68T9XxOeFWGaFCNVtPmZ+WZg7+rsSIYaZ0gGo//lt
	6hCZ3tMfjN2brJUodlEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iotLX-00016u-Gs; Tue, 07 Jan 2020 18:12:51 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iotLO-00016J-In
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 18:12:43 +0000
Received: by mail-pg1-x541.google.com with SMTP id a33so249719pgm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 10:12:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=otNEfPZRhfkH889yZruDaz8ZPdXQW2OeMKDCutsW3ng=;
 b=EGIHk2y8X43q+dSv8uJDGfXbIXgfrsvaXk3EkCjao8JZyS6xL3yyYa/IPsSxKx7I/8
 OZLFuBfwTr+9/eEGtHS7pPYUOArjVm9BVeCqWXH460W3KfIdq00ZZnwox4+RJdvlEP5X
 pUm+kxpQ6C9u3/4s26HyNZoDVnj1J0J8D05Wc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=otNEfPZRhfkH889yZruDaz8ZPdXQW2OeMKDCutsW3ng=;
 b=KH2UAynivCl05ticFSsivhNaqkC8acAskbSF+9QcKmCQ8pPweeXFpj/NTc0aJea1iQ
 Jsr4/1JOoTAwaiLdgBg4o631i88BMRkVG4fpYUttwT7CPSpKw1cCEjwPJ2M2K9bzP8dw
 AwdXe5gEHk7k2x5O0AJcVq9Pq/IEzy9lTG7YITxRKQihXZ+hLoLTjC9+2lJ22eDxSoMy
 CmOA3cV4siQJJChSgv3nefhBEO+p/mNlYP9EJTuJecieR3/WcHoNLQ2lhEJ5d1QmVxba
 MRQcqiUrEk30BWg+knfOrWuxXBkn5PMLx4Q+6u9T56beePyjeJtATTJtWj17SdtRNArZ
 yhzw==
X-Gm-Message-State: APjAAAWIhdrtEgWS8x2NiYrNH5C1iiVKS/ylyNEQGkvlff9O2oodfSUj
 zF/g7dW7tWH5lQ7Zvof8SkkzkA==
X-Google-Smtp-Source: APXvYqwOo+HzjTqist30x982uq+NRP2n7KSTQc6r6187ME5VXodlSE2JU9i1b2bbt/FBtxQZvAtBqw==
X-Received: by 2002:a63:184d:: with SMTP id 13mr790298pgy.132.1578420761599;
 Tue, 07 Jan 2020 10:12:41 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id u7sm200377pfh.128.2020.01.07.10.12.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 10:12:40 -0800 (PST)
Date: Tue, 7 Jan 2020 10:12:39 -0800
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 2/7] arm64: Implement copy_thread_tls
Message-ID: <202001071011.9517D9C0D@keescook>
References: <20200102172413.654385-1-amanieu@gmail.com>
 <20200102172413.654385-3-amanieu@gmail.com>
 <20200102180130.hmpipoiiu3zsl2d6@wittgenstein>
 <20200106173953.GB9676@willie-the-truck>
 <CA+y5pbSBYLvZ46nJP0pSYZnRohtPxHitOHPEaLXq23-QrPKk2g@mail.gmail.com>
 <20200107090219.jl4py4u2zvofwnbh@wittgenstein>
 <20200107174508.GC32009@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107174508.GC32009@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_101242_642985_A96B9696 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Amanieu d'Antras <amanieu@gmail.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, "# 3.4.x" <stable@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-kselftest@vger.kernel.org,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 05:45:09PM +0000, Will Deacon wrote:
> On Tue, Jan 07, 2020 at 10:02:27AM +0100, Christian Brauner wrote:
> > [Cc Kees in case he knows something about where arch specific tests live
> >  or whether we have a framework for this]
> > [...]
> > It feels like we must've run into the "this is architecture
> > specific"-and-we-want-to-test-this issue before... Do we have a place
> > where architecture specific selftests live?
> 
> For arch-specific selftests there are tools/testing/selftests/$ARCH
> directories, although in this case maybe it's better to have an #ifdef
> in a header so that architectures with __builtin_thread_pointer can use
> that.

Yup, I agree: that's the current best-practice for arch-specific
selftests.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
