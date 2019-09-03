Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7DCA622E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 09:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mIf4BzO5+CJEmZPQ28tG0NsDd7PpOH5t9SfhyqwKvAM=; b=Up9wdkVyR94Wo8
	ns9Rk2LKoXhboFggdxFE2CrCW4Ato+rKL4QEx+C/wPDPr55Rw/kSIykzzApA5HMUIAzshVAiRv5OF
	PyVhOpI5/e/rX6K0R5GSZTi6mfpQwKYG7SSDQTL6LFcb8fhQq+jdbNGPs6yY4bpN/hNW9HJDcZBN7
	LtqxyPdIg3zy8Ma/oYhJeN48SSEqdmvEk56rx7fFwqGkZ2PDuB8g186D3jIaezWi9dIdhAa4nTcUL
	i9+/VcCjLt9Y55maYmtJ4BHADdVcZWOPLZne9uaUZAJQS+s2sIn/CDFQx6lv8JkzCOyVtjSHuXXow
	QFw2ZXVZV1jUSNWnjIrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i52sT-0005Iu-SF; Tue, 03 Sep 2019 07:05:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i52rl-0005Gj-8a
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 07:04:40 +0000
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6FEE223400
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  3 Sep 2019 07:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567494276;
 bh=WLp1f5cOEPDmKPiQ5B8TdG9marHgUtMjLyqWzoyLoak=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=BOeZSnkTCv3RQZoNxDU7FrTWt/DHvyBdNzheXUDLi/OmM8rD6PljhNP4hkXMenhvW
 uo6lhzkvilKDHo1PJ2R5rFjKeC7C1SI/4Tv8GpeBEF7IjItlC7CLOcVOQPmwdHmY3M
 U02hKehsPSSAfT4XnheusEy6UQE87u3s0AcN2xjM=
Received: by mail-lj1-f174.google.com with SMTP id j16so8738050ljg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 00:04:36 -0700 (PDT)
X-Gm-Message-State: APjAAAWjhL3bPxWEW29GqUlOxGOwOG5R8gqC0O4JIp73c6uYcM9l2ikY
 i39EWG4gWUfrCAYny8pMLbUUXhzjZx9OTnozOQ4=
X-Google-Smtp-Source: APXvYqzlx4zOoEstk7bgo2PL8WlITlAaTRYZlw9X32d9v0ngNpQZSUt5tsE6Eb2leZlHXBIi9hvvD1GUknbRnU3nJuA=
X-Received: by 2002:a2e:9a18:: with SMTP id o24mr7259269lji.123.1567494274643; 
 Tue, 03 Sep 2019 00:04:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190725083433.6505-1-guillaume.gardet@arm.com>
 <20190830104502.7128-1-guillaume.gardet@arm.com>
 <20190830104502.7128-2-guillaume.gardet@arm.com>
 <20190902153146.GB9289@kozik-lap>
 <CAJKOXPe8QDzDoM4sKva0qrVUA7EMTR7FO5jGut+Paw9mAcdfAw@mail.gmail.com>
 <VE1PR08MB468570F2B6851C4CD3E80A5083B90@VE1PR08MB4685.eurprd08.prod.outlook.com>
In-Reply-To: <VE1PR08MB468570F2B6851C4CD3E80A5083B90@VE1PR08MB4685.eurprd08.prod.outlook.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 3 Sep 2019 09:04:23 +0200
X-Gmail-Original-Message-ID: <CAJKOXPcYv_7s9wJQQL7Z7BYLCKmADG_h37yU1Z4e=Qv7vAxosw@mail.gmail.com>
Message-ID: <CAJKOXPcYv_7s9wJQQL7Z7BYLCKmADG_h37yU1Z4e=Qv7vAxosw@mail.gmail.com>
Subject: Re: [PATCH V3 1/5] dt-bindings: gpu: mali-midgard: Add samsung
 exynos5250 compatible
To: Guillaume Gardet <Guillaume.Gardet@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_000438_232745_00A4D1EF 
X-CRM114-Status: GOOD (  18.72  )
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
 Kukjin Kim <kgene@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 3 Sep 2019 at 09:03, Guillaume Gardet <Guillaume.Gardet@arm.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Krzysztof Kozlowski <krzk@kernel.org>
> > Sent: 03 September 2019 08:56
> > To: Guillaume Gardet <Guillaume.Gardet@arm.com>
> > Cc: linux-samsung-soc@vger.kernel.org; Kukjin Kim <kgene@kernel.org>;
> > Marek Szyprowski <m.szyprowski@samsung.com>; linux-arm-
> > kernel@lists.infradead.org
> > Subject: Re: [PATCH V3 1/5] dt-bindings: gpu: mali-midgard: Add samsung
> > exynos5250 compatible
> >
> > On Mon, 2 Sep 2019 at 17:31, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > >
> > > On Fri, Aug 30, 2019 at 12:44:58PM +0200, Guillaume Gardet wrote:
> > > > Add "samsung,exynos5250-mali" binding.
> > > >
> > > > Signed-off-by: Guillaume Gardet <guillaume.gardet@arm.com>
> > > >
> > > > Cc: Kukjin Kim <kgene@kernel.org>
> > > > Cc: Krzysztof Kozlowski <krzk@kernel.org>
> > > > Cc: Marek Szyprowski <m.szyprowski@samsung.com>
> > > > Cc: linux-arm-kernel@lists.infradead.org
> > > > ---
> > > > V3 changes:
> > > >   * add dt-bindings before node in device tree
> > > > V2 changes:
> > > >   * new file
> > > >
> > > >  Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt | 1 +
> > >
> > > Thanks, entire set applied (with re-ordering and minor description
> > > changes).
> >
> > Hi Guillaume,
>
> Hi,
>
> >
> > I applied yesterday entire patchset but this dt-bindings patch causes big
> > merge conflict which will not be reasonable to resolve by Linus.
> > Can you rebase this patch on top of latest linux-next? Basically you would
> > need to add respective entries to new YAML file:
> > Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
> >
> > Send it to regular dt-bindings maintainers (scripts/get_maintainers.pl).
>
> IIUC, I just need to resend this patch (1/5) rebased to use yaml, instead of txt, no need to resend other patches, right?

Yes, correct. Just remember to send it to proper maintainers (previous
one skipped DT guys).

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
