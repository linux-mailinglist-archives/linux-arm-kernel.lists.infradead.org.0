Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBA61A086
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 17:51:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IoUJaYF5HtWMr/qTwvpkh+oaJHGzVakgO9mMEZnQlHw=; b=Eco9LC5lDlsOMy
	nManpcKy7jNWLcIFLQ04hQz0Ipfhdp7/AYLgkh+Q+IMsf8sZ4trDym/ZyamrUBvyTeGh7T0jVb7Uf
	HN8K1oUT9t0Mv1NQoWOz3irq5SCUBvOV/fL54yoi46JAwpqIwr9KoEu4msbkzRudYB/gvZnmCC1rP
	cL3F/JRJA/8k4rrY5/HpC0TRu9gbOEqDduop7v8s1g9QaPwaiWyexKBhqm0LZmWShgfK70HroZphE
	SCmnn8luMXTGVMLcn5C0CcThs/oatCPlgPMOvbDac+xDFkXAYyj11pnwTl3U270tPb+YyqO6QbTd+
	5BxjJ+N3P5AFvG45rGiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP7oQ-000876-PI; Fri, 10 May 2019 15:51:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP7oI-00086R-F7
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 15:51:47 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B383E216C4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 15:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557503505;
 bh=jjJN9MCI2/bJQYJD0A6H8bv3bdJi3Q/PurxoIoi1bLc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LFbRHLkQumOEJR0QML+NE/Dlx3jQ6C6mXckZ6o/H18WK018Tm7s1TH9ZiRjkY6qxC
 AvIQg21IbE7EAgEdM3O+kbiHPqqnhHQW7WuXCaEPtJ5nDJlnMMqS+fkyrgHNjngC+W
 V79pPqZ162SsEPoNUPJia0lru3wFAdbrvl66Xn2A=
Received: by mail-qt1-f170.google.com with SMTP id k24so2160616qtq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 08:51:45 -0700 (PDT)
X-Gm-Message-State: APjAAAX4rKgF78xw53Nk97JLJN3nD+r9bDxpu/XxR3qNmMjOBE5eQPpe
 3tjr7dCL2VIw9G5/trE2CqS9YRzQyjG2GlLsug==
X-Google-Smtp-Source: APXvYqzCtiDrvSidyJ1Y6HHqXiZAob0e8QJkkwye5sqCJHrQXA7SekK8d+4LASnRxReen63o7QlSe27+zyjO89A4fJs=
X-Received: by 2002:a0c:fe65:: with SMTP id b5mr9797177qvv.106.1557503504974; 
 Fri, 10 May 2019 08:51:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190507045433.542-1-hsinyi@chromium.org>
 <CAL_Jsq+rGeFKAPVmPvv_Z+G=BppKUK-tEUphBajZVxFtbRBJvQ@mail.gmail.com>
 <CAJMQK-i-0RgdQEniqaKubdjF-dpd1JOCWy7DOPDfN33EqgL5iA@mail.gmail.com>
In-Reply-To: <CAJMQK-i-0RgdQEniqaKubdjF-dpd1JOCWy7DOPDfN33EqgL5iA@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 10 May 2019 10:51:33 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLHGobOQg-j=8e=ivCBWh6f+xy43zTzdXBQ-U86AOg-6w@mail.gmail.com>
Message-ID: <CAL_JsqLHGobOQg-j=8e=ivCBWh6f+xy43zTzdXBQ-U86AOg-6w@mail.gmail.com>
Subject: Re: [PATCH] arm64: add support for rng-seed
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_085146_523745_2E2BD1AC 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Thu, May 9, 2019 at 11:27 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> On Wed, May 8, 2019 at 3:47 AM Rob Herring <robh+dt@kernel.org> wrote:
>
> > >  Documentation/devicetree/bindings/chosen.txt | 14 +++++++++
> >
> > Actually, this file has been converted to json-schema and lives
> > here[1]. I need to remove this one (or leave it with a reference to
> > the new one).
> >
>
> Hi Rob,
> I can't find where the new document is. Can you help point it again? Thanks.

Sorry, forgot to add that:

https://github.com/devicetree-org/dt-schema/blob/master/schemas/chosen.yaml

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
