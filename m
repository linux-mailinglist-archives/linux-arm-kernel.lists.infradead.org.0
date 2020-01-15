Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0DE13BC61
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 10:22:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILGr6RJ8JZenw80NsNKhHDckKapQ+O12OTZnu2mN0XM=; b=m71s71yakWheNY
	djcrObvgeopLW4W+f2L3Kyd7yHP24Bttl2GvJdoqGAqYttl8mUMkONwuzSqV9jMV/olNCpdo91QVj
	3IWq6fV0J3VaWAzSWETWDZrjbY2yudQd6FutrIqcaCq+62UsjvksWvXa/4bc0oQGke/IqlsZjwIbk
	TLtX/8g7fNiijgawLotIlLmbNDEzaAgWBf2otB94YHR2o28OcKc9z5ckqXCx7DaFozECw+S26ZuDq
	xskMqqC95uDLrihl4dIvinXanenObQRuT/g3anA+3ezPpcSbCBqpeqFEz9BdUYZ9h8/uNSVhAt02e
	OyS+d0N3XABb3UWEtfxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iresk-0004fd-N0; Wed, 15 Jan 2020 09:22:34 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iresS-0004er-Ru
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 09:22:21 +0000
Received: by mail-wm1-x342.google.com with SMTP id b19so16967558wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 01:22:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2NioKeZtBMGmQq42dQ7mU02YW1pmqEsr7pSup03whQg=;
 b=Wmyebgox1hPn5YdEiioKtVGOBsAs00vpmoF4b7BWhfdwPrqHnpgLfFOj9XoE9b/8IE
 5wXRHAycQz2HFwnpFx5CeswLz7zK7S++UICvCCG1WpVtH8kJCo6oEVgGmMyP3WVbjKPH
 621BO7NYaPAZwHjaAnkFfzBe/0m4vQ9DFKUOqhx904uprmttC3Yv4WiZQrm6OT6D1Dt8
 laYKqLxNTVU9ytFGyj8m7nfH+yiTmhhBErvm9TvBMVVsxX1YxXfkofnKj8iDTM2VUvDI
 aqw37Sh4zA3mCcdOWjiiQKn8UadhQxecS4FN7AUzyE/o0odQk/x67kWiXLDWLXEzu/MW
 Hw1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2NioKeZtBMGmQq42dQ7mU02YW1pmqEsr7pSup03whQg=;
 b=hpQI+ue5Wrxk4d1EWT+r4Jjv+hBSuvevtYNTd0jgwnn9k+pezCHnyBTJxciDZThtsX
 ixIkh+hIMB1uOxWHkGgP2HEu2ylpwdMtTNg4wzWpW3iu3evEZ2MqRmyMkZvFFpUTALD7
 OmBD6/BKuBEQvJbxuNFr5ZGSWw8oG8jAdxYiSZc+ITVwtDbTQUsEFbqTq31dogF2bHYJ
 aZP1UPFYvCTtStC5cHfKLSrnRnaQXCfxyW8Uq1CK4WCb38ehZ7tfpJRg9syP0fjGtBpt
 0uEmADC8vTWjAcyUbFxDb+nk/q6U6aMgVtAXilaLAZcGzBYFAEopvceb8B/PqhKXf7as
 r9kg==
X-Gm-Message-State: APjAAAUdmiCTtG1n9U2j7YghC8yYEpTyq75QGrG9NexrSP7l/9XSEzyr
 MJ+0l+QwsPjP/+2uWjKMEn9VcA5JCM3QoPGOB0vJmQ==
X-Google-Smtp-Source: APXvYqwkavqLZfkeI2+PDVkGXlezN0UmcqWgb0g+qWdK44o8R6jH+9Jwige1+nSB1O4bIv7BEiqY+nC0WGRt1KL+i9Y=
X-Received: by 2002:a1c:3dc3:: with SMTP id k186mr31385654wma.95.1579080134926; 
 Wed, 15 Jan 2020 01:22:14 -0800 (PST)
MIME-Version: 1.0
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-3-broonie@kernel.org>
 <CAKv+Gu8He-SmqH3cTOCReOntFaOWvdKmEAfxxAy7QW6GzHd=Pg@mail.gmail.com>
 <20200115091615.GA21692@willie-the-truck>
In-Reply-To: <20200115091615.GA21692@willie-the-truck>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 15 Jan 2020 10:22:03 +0100
Message-ID: <CAKv+Gu9=L6hPSHbvf1qHa7N9hyJ7m7KSYJHBf1em8E0Db_Lghw@mail.gmail.com>
Subject: Re: [PATCH v10 2/3] arm64: random: Add data to pool from setup_arch()
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_012217_114985_D7CEE7B7 
X-CRM114-Status: GOOD (  22.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Jan 2020 at 10:16, Will Deacon <will@kernel.org> wrote:
>
> On Wed, Jan 15, 2020 at 08:48:46AM +0100, Ard Biesheuvel wrote:
> > On Fri, 10 Jan 2020 at 13:23, Mark Brown <broonie@kernel.org> wrote:
> > >
> > > Since the arm64 ARCH_RANDOM implementation is not available until
> > > cpufeature has determined the system capabilities it can't be used by
> > > the generic random code to initialize the entropy pool for early use.
> > > Instead explicitly add some data to the pool from setup_arch() if the
> > > boot CPU supports v8.5-RNG, this is the point recommended by the generic
> > > code.
> > >
> > > Note that we are only adding data here, it will be mixed into the pool
> > > but won't be credited as entropy. There are currently no suitable
> > > interfaces for that at present - extending the random code to provide
> > > those will be done as a future step. Providing data is better than not
> > > doing so as it will still provide an increase in variation in the output
> > > from the random code and there will be no impact on the rate at which
> > > entropy is credited compared to what we have without this patch.
> > >
> >
> > This is slightly unfortunate, as this way, we lose the ability to use
> > random.trust_cpu=1 to get the entropy credited and initialize CRNG
> > early.
>
> Agreed. Do you think we should wait for that support before merging the
> series? Given that I don't know of any CPUs implementing this extension,
> we can probably afford not to rush this in.
>

In a previous iteration, we did have a functional
arch_get_random_seed_long() early on, which would solve this issue
without even needing a patch like this.

Perhaps Mark (Rutland) can give a recap of his concerns at the time?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
