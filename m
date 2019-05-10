Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A9D19788
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 06:27:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4FAGhmoRpM+gmhrOzYhy112k4AeW9f6oG6SQSHSAK2Q=; b=B+EACPDX6TLjay
	otL9fieqObkIFCpZHkxFwQ8fSAv+SKqa6acb37mGC0oceRIdSF7mrIJnFJLFQ7ZzlTKJhsbfEkJNv
	G/lZwvnTQYtT8UQnGIMQT1Nbk8kJNLKnqKUTgvTzmHgiYXIZYe6XQIyP3UVsWbV6x/qIUD0/f3BB+
	zc00MPBQUc8VfA0I3UC1EyDxcbCdHuj/eqTYwXJWfrTqI/BVr4VSkjIeVxCJOwOyr6AiTlkateGyP
	XQnPga3x7H/SsyEjIxr6XM0B47/uzSjBDvBNdarBh46iVhKYM3kT0b7DsXOIXGUQ5LJKiAdFrwv9Q
	FZXrYidJZGKrQIcPVQKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOx8E-0005TQ-IR; Fri, 10 May 2019 04:27:38 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOx87-0005SZ-Ly
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 04:27:33 +0000
Received: by mail-qt1-x844.google.com with SMTP id d13so5156718qth.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 21:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ngq08Wlyg2H31lwwSV/j8xQrFKwzvO2qP6ztkd7Nr28=;
 b=fuMNIjVG7c7hl9TqmLZaCgk9uw8zCqNkHPHTQf2dgfrBbILw0WaZg9/92di/69XTYw
 mEL0Bk2U3l/9dTL8S03K1TeKwNrvGPhaqPYYhh6U9R3UWp9e00qH5XiAYyvKTbK2nCU3
 sS43C8EHGgEYjTPYiSnIPhJod4FG7Rk+TYhGI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ngq08Wlyg2H31lwwSV/j8xQrFKwzvO2qP6ztkd7Nr28=;
 b=ebDfBuGYVIP2GyHAvwGvByIWwGw55Qe/53pMVfUMnnkHIXnMSLP8ipE1FdblimJFIB
 u4s2tb2AHlvVTVWA6vYDGSNscT897HyxQW8AZwknsfnBxz4R1GZqxZNXZIoGv9GFe95j
 wvdqbPDAepidyEB9LO6FmiRRYTicKv4fnW4rofNcSiZAiXDjbswe1iH4bi+upUM4dqUx
 BzBe2r+IWOCOfy8bc7NqWkJ3iOWdypxVzb5GdsNXAzeTnAcGPGO4WYE8kmfP8o5Ux2Hw
 THoxqmWRxT/3dYZr74F1NXU+SrfhQlr6yr3V1XtQrOP56mzLw2D35pmHWZ4RnqSCpPfl
 L6lA==
X-Gm-Message-State: APjAAAX3uAzfwXVZVWLRIWtGQMA0d91I9I6VEbbeWbhbqlQyT6bzqa3T
 08JQ+6pvyOnbo1VStux/Ncf3CWwqY+pKD+/F6m3y0A==
X-Google-Smtp-Source: APXvYqwwzIn/YJ/0P0Vb+0s8M37PUufsc0Gp9hafSnPJ9qzKi2oOspaUm7VkSvnkEjICaSYyxOJsDM038OFvfuU0Nho=
X-Received: by 2002:a0c:d985:: with SMTP id y5mr7230641qvj.80.1557462448871;
 Thu, 09 May 2019 21:27:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190507045433.542-1-hsinyi@chromium.org>
 <CAL_Jsq+rGeFKAPVmPvv_Z+G=BppKUK-tEUphBajZVxFtbRBJvQ@mail.gmail.com>
In-Reply-To: <CAL_Jsq+rGeFKAPVmPvv_Z+G=BppKUK-tEUphBajZVxFtbRBJvQ@mail.gmail.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Fri, 10 May 2019 12:27:02 +0800
Message-ID: <CAJMQK-i-0RgdQEniqaKubdjF-dpd1JOCWy7DOPDfN33EqgL5iA@mail.gmail.com>
Subject: Re: [PATCH] arm64: add support for rng-seed
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_212731_741973_D1366208 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Architecture Mailman List <boot-architecture@lists.linaro.org>,
 Michal Hocko <mhocko@suse.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Stephen Boyd <swboyd@chromium.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 8, 2019 at 3:47 AM Rob Herring <robh+dt@kernel.org> wrote:

> >  Documentation/devicetree/bindings/chosen.txt | 14 +++++++++
>
> Actually, this file has been converted to json-schema and lives
> here[1]. I need to remove this one (or leave it with a reference to
> the new one).
>

Hi Rob,
I can't find where the new document is. Can you help point it again? Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
