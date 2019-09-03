Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 505F0A61FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 08:56:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4yUt6vXP+bxk97VG17cU7Ujjf++gU8tXBogW+vWWJoA=; b=M5kqbs7QnF/wpB
	EdS2zC1GeGKH3s+mBMJ1pMAHOnJj8wODVA+XU22Lrul0UnfPJjQ2fgGdRpo0BACgxBmFGSFlCl0HP
	Ysdomv3SfY3doWCnqhbflp+bjeqmglC+o34A0Mxnk2r1MdcxXs/WsQsZxBEKG/mrG80UPiv9zGpys
	pSu+WVnUIyYIIFD7Uyw7cBzWYWV+uVpNTMmleaInGWbQBKELOeSp9DIp3V997XfuYKST4u+iqibmv
	6+jdgfM+DU8TyvlNT8uUa2JU8yRU/peU9bX99ppkIHn+0s3aRYDQI2WrCXCszPr4q77eFzh05gKBi
	p7gu2gF2ZJ4KIinVBJ7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i52k6-0002dk-N9; Tue, 03 Sep 2019 06:56:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i52je-0002WE-NM
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 06:56:16 +0000
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
 [209.85.208.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E1BC5217D7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  3 Sep 2019 06:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567493774;
 bh=3sxI0s+oxvZEwmlyZ2oRN49J3nzEeET20gk6oLCudlw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0UysHmBagUZCB5qKvYXEpMh82epCUGm9Cguvn6/oDoMSH8cPY3yJHDlxR6T1Hxi5l
 NB37aH/YJ0acHluKRkqQjHxGJTL9g2XJ8TL65telEIMm2lOatHodcYQuwi9EQTx8dL
 qvMHh/jbV/UbP7dh5om0BrKag5ph+aRv3kx1AA/s=
Received: by mail-lj1-f171.google.com with SMTP id l20so430368ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 23:56:13 -0700 (PDT)
X-Gm-Message-State: APjAAAVYf/buF4ZLqN6F6SdOgAIMy+EvrMeh+REXK+ztzxZgy4ENrxYO
 NzcRLuXuZLj6CtlA0/hjNZX2NLxEpOrbpK8Yr/Y=
X-Google-Smtp-Source: APXvYqz4xMsOKmhyg6cuLervTlR5/XHT78p4RB4Bf27lUDtBIzNf7Ohh70sRweO81HtYk/raa7wtGAApaev31g5N+QM=
X-Received: by 2002:a2e:9b13:: with SMTP id u19mr19115530lji.40.1567493772171; 
 Mon, 02 Sep 2019 23:56:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190725083433.6505-1-guillaume.gardet@arm.com>
 <20190830104502.7128-1-guillaume.gardet@arm.com>
 <20190830104502.7128-2-guillaume.gardet@arm.com>
 <20190902153146.GB9289@kozik-lap>
In-Reply-To: <20190902153146.GB9289@kozik-lap>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 3 Sep 2019 08:56:01 +0200
X-Gmail-Original-Message-ID: <CAJKOXPe8QDzDoM4sKva0qrVUA7EMTR7FO5jGut+Paw9mAcdfAw@mail.gmail.com>
Message-ID: <CAJKOXPe8QDzDoM4sKva0qrVUA7EMTR7FO5jGut+Paw9mAcdfAw@mail.gmail.com>
Subject: Re: [PATCH V3 1/5] dt-bindings: gpu: mali-midgard: Add samsung
 exynos5250 compatible
To: Guillaume Gardet <guillaume.gardet@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_235615_085901_0698128E 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2 Sep 2019 at 17:31, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Fri, Aug 30, 2019 at 12:44:58PM +0200, Guillaume Gardet wrote:
> > Add "samsung,exynos5250-mali" binding.
> >
> > Signed-off-by: Guillaume Gardet <guillaume.gardet@arm.com>
> >
> > Cc: Kukjin Kim <kgene@kernel.org>
> > Cc: Krzysztof Kozlowski <krzk@kernel.org>
> > Cc: Marek Szyprowski <m.szyprowski@samsung.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > ---
> > V3 changes:
> >   * add dt-bindings before node in device tree
> > V2 changes:
> >   * new file
> >
> >  Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt | 1 +
>
> Thanks, entire set applied (with re-ordering and minor description
> changes).

Hi Guillaume,

I applied yesterday entire patchset but this dt-bindings patch causes
big merge conflict which will not be reasonable to resolve by Linus.
Can you rebase this patch on top of latest linux-next? Basically you
would need to add respective entries to new YAML file:
Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml

Send it to regular dt-bindings maintainers (scripts/get_maintainers.pl).

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
