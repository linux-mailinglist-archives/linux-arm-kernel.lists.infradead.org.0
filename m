Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 422A91E0A96
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 11:31:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETAYIL1+rj9hoGKCEjfiuxwNPkj8dLBxcjkXX49Ma0U=; b=mgYWlvUJyVH+MI
	D84ZOBBJlRfouUiRWcNvHZX5u9g1DNZ+jgNsLic85D68EqON+fGTSQQa1zeLbLslJkk7z+ihqcJcl
	9qJ9b3mC2pdcP5JkRAb4XjwgfZW8h9+b+hoCvecEQEHsUnxHCv5IwlucK+zg/DfFhgniPJ1c5/MKS
	MCrTcc5T9wu2ztiV3yLn61ynxHsLgy2F0+2knVIKqMtBk/JOMBp4XrJgWqHA1Q/WEk1G+s/scyyxS
	xJikwuSYdHbo6Pu3NW0NcLzyZTNbNT4zMhSfXUHjzhf2Eeoxab6Rw2FoSySjJdqFXV6IyN2IvmaH6
	M3TpwbX3gYPHhJOcluVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9SG-00010F-6L; Mon, 25 May 2020 09:31:32 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9GC-0000Lj-FY
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 09:19:06 +0000
Received: by mail-lj1-x243.google.com with SMTP id m18so19972141ljo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 02:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ivv4U3PHcis2B80M8w+kgvcofnNEYSwN3GL3OCHkXLY=;
 b=C0OfrfuDAz6Y8SWn9kRPQRzJwTFuzjeUjeAv/8uYAsbDCC76OTiMRRB3ZH0+RQk5hf
 d6SKMlz8qVm52fq4TPs3/x8cC1HKxjsIszBfCqQPN9ReHPVBVX80sxUQmMTjLicxJ6Ll
 V2tEi+pOX1GvZcI9Gcusfy4292CKHUmgHILh4QOi5+Ch4uJ/EYM0+Cukfsnsm6sZoCsO
 PPB+R1yh4RELrSLsUgDkwJJst707f5SqvQ5zwLOOZwKpmQvphO63Q+vUOfrvr4BH1fGL
 YxpOQd0eW82OGV54YvnsLOwh1jtKvOQLiBnUTw9nU/Rj4dXFjmoEbCz3wwIE6Wk+Rxx1
 WPjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ivv4U3PHcis2B80M8w+kgvcofnNEYSwN3GL3OCHkXLY=;
 b=USd8IDSBZDom+JZ5qhqHnDphIim4A3jzUPpvsj/SOqGaLZIoCJv439UvPp8T6AzmMn
 s0oPymel5AOF2Ix7uX6i0L+2BK69yIxeD9OK5Ldzm0uZXyLffsoATj4quwLCjJ4fxJSS
 Dc21HztzcruEphffnkxymHzv2PfOoap79s5vnvJOaMf882v8h1AvmBzWifaH+VYAv/6T
 MNZaSGZV6mjOF/+EkfTBWn59bT95mtaA1Ag9BhudqVwTdGgXSTR452HPoMcCLk3x5pnM
 MAzIldwFchFVLj+tzFj2bD/1TW/bbhpJSSRXiGQexHcjn9Bjh3P2AXkiNjt9xo1fsRxX
 Iuog==
X-Gm-Message-State: AOAM530HTDhp67lVS+vCDxhtaNmfmVGwhxpvpC02IPiUm2F4UTa2dPDs
 XRANSU87O9nx4vD4i6Dsi9faqwBvIubi7xJXPuaz1AM6
X-Google-Smtp-Source: ABdhPJzt8IHf289hS0GsYDzZdfoPvoz1pPBM7421ky0044/8DIl8iWL3/ZWtvqH2cXFMUtCkODclOesP4RIwcw9FUP8=
X-Received: by 2002:a2e:8e91:: with SMTP id z17mr10498339ljk.144.1590398342470; 
 Mon, 25 May 2020 02:19:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200520120804.GI172354@mwanda>
In-Reply-To: <20200520120804.GI172354@mwanda>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 May 2020 11:18:51 +0200
Message-ID: <CACRpkda90y7p=5iBS0=WyYxDVRhMwdVUMWO3E5uvdwES=UZNrA@mail.gmail.com>
Subject: Re: [PATCH] bus: arm-integrator-lm: Fix an IS_ERR() vs NULL check
To: Dan Carpenter <dan.carpenter@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_021904_581007_948F8720 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: kernel-janitors@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dan,

On Wed, May 20, 2020 at 2:08 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:

> The of_find_matching_node() function returns NULL on error, it never
> returns error pointers.  This doesn't really impact runtime very much
> because if "syscon" is NULL then syscon_node_to_regmap() will return
> -EINVAL.  The only runtime difference is that now it returns -ENODEV.
>
> Fixes: ccea5e8a5918 ("bus: Add driver for Integrator/AP logic modules")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> The first patch which added this file doesn't give a good hint what the
> subsystem prefix should be so I just guessed "bus: arm-integrator-lm:".

I got a similar patch from Wei that I forwarded to the ARM SoC
maintainers that usually apply the bus patches for me.

Thanks anyway!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
