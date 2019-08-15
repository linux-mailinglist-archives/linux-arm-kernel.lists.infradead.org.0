Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5C38E4D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 08:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OxGleFQeAyLQSATV0eR7HF/6hvFAoz5RcTKUmJ2RqRM=; b=tmYmDCnTJmdgpO
	Jm4qLL4OU6PLqHAXNh8DpFkSn1tVZQ7RsY6At4D40Zfwr69c7nm/TWEwEIyxRmfjJV8lStSv9cKZD
	4ZiUXzITkh6Fljp68sKhZxJD58CBjvy4dst+rOEc5lb+5PBkv3JYbRSVm09FAA22dxpZc91I3fllI
	1y1S/DNs49G1oC+ODnlpWtXxtuvqWJv1UZ3NEy4QdiWyy39TqqvjfmSikMHB1V3gqEeyHgzBJwfsv
	7GHZqSvWgjKDqG6w8jRfsC2gxAUTmB/gGIKr5SaujVVqYmOkzSUqf+qsDdELmhO+1sx0sngZZGmer
	PkiM1nFE9fLRDQwHg4hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy93S-0002LC-5H; Thu, 15 Aug 2019 06:16:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy93E-0002Ks-TU
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 06:15:58 +0000
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8F1F2171F
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 06:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565849756;
 bh=UdS63mi586+/lEO9WpbHVnhGDiXc8WFsWXVUrVKqli4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hyUFe4azQclyComi59PT8+Kby66Jv3PaMtN63HzWTHy4EWA/UfsV8YRNa/xUj0GL9
 1Bv68TTO26hdiNLdjYc74BncODUUcEeIMYPjzmXh0LS8HLH+/XHsaIMqbKY0/+FWUf
 QN30HeTeemMFAYLF+kh3XrtRPAhhPe+uOJrphYDc=
Received: by mail-lj1-f180.google.com with SMTP id t3so1261893ljj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 23:15:55 -0700 (PDT)
X-Gm-Message-State: APjAAAVB98UIXuhEDn2oThXW7HAmV7BtuJRT/cVCMh5h+Nm7ao/cFXhf
 b9BSPE7D2fi4hm1yRFV7NI3FlDg8ZzPO8djPDT4=
X-Google-Smtp-Source: APXvYqymA0m6g6FYEkt+jvTS/lHA6LXkadvpzAJfqn2n+NzLPIJ0NX5IscY500yE+VMSEdPLNeQTT4pSQY1UMVm/F7Q=
X-Received: by 2002:a2e:7818:: with SMTP id t24mr298678ljc.210.1565849753812; 
 Wed, 14 Aug 2019 23:15:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190815060914.3572-1-nishkadg.linux@gmail.com>
In-Reply-To: <20190815060914.3572-1-nishkadg.linux@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 15 Aug 2019 08:15:42 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfxV9SZrjpQ1=fRcRrkE_4vYRMKPzr3+GJ6cyktZeZtYw@mail.gmail.com>
Message-ID: <CAJKOXPfxV9SZrjpQ1=fRcRrkE_4vYRMKPzr3+GJ6cyktZeZtYw@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: samsung: samsung: Add of_node_put() before return
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_231556_978042_1BF84620 
X-CRM114-Status: GOOD (  12.37  )
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
Cc: linux-gpio@vger.kernel.org, linus.walleij@linaro.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Tomasz Figa <tomasz.figa@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 15 Aug 2019 at 08:09, Nishka Dasgupta <nishkadg.linux@gmail.com> wrote:
>
> Each iteration of for_each_child_of_node puts the previous node, but in
> the case of a return from the middle of the loop, there is no put, thus
> causing a memory leak. Hence add an of_node_put before the return in
> three places.
> Issue found with Coccinelle.
>
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/pinctrl/samsung/pinctrl-samsung.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)

This is already fixed. You can base your patches on top of linux-next
to avoid duplicating effort.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
