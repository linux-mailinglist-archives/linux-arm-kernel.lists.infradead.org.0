Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D5749171
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 22:36:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qK9y9lsc207oSiRAqO4fibQuN9ylNQkqP7Q9wFyU818=; b=WRTgyRTsA4vQwE
	T/+R+rIfI6h1d0cWPPJ3M/M+8zbV+qraJ9qRrrUUNyCTZ9o+u4lAteyrs8Jz9lumNqxLkqcPJDREE
	nw5mICqWNgxhOwIaMnWE36qqZjpJ6PWefC48aY9clFWE5Yj+vrB4FEQH5QFYRSo+K1hnQNREjjAVH
	rZfWYnuFH6joo6+C7kh0UkHbgS8iS83uU9WxRYU3M2fLbRpWcX8u0CSg8HoVSoqKF6PMwuXKLKZXe
	9iXpSWt8bGVn/I0ZbtKVtbEiAjzkjcqJ8Vy407KOH9lWLZPhqP5SP7cA6sjy/PnRaBMDV92pLUox7
	zExTauJYJATOcZKnhMHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcyMO-0003DP-MT; Mon, 17 Jun 2019 20:36:12 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcyLg-0002lo-2y
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 20:35:30 +0000
Received: by mail-lf1-x141.google.com with SMTP id r15so7532978lfm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 13:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C+8Y29ORRYleLlB1wrUfstrrAJFwd+4SQzBtYD68a5k=;
 b=eiWbnC3YqbxlnQ6QVYe16X3jCmoH/I2ilfDs5tuXeOO74w702gqAECyRiJXC994mAl
 hwTT2er3ChKzRciIpiy2DxxinA478wV4VllxuousIR07kFRcFIIj2Tn03IKY3wAU0Xnr
 KmgxsxyXlqVOOBtef7uGUudzRUKMtf1S3rR8oqvbkcaD/BiuiF8iHqIRVs+ZyIhw4Ekg
 fM+J7dgabjeK2OOjHiIhTifRvibgPEMJtWoTJQYIpkN8/qBeIBo5Ye0wNXbIhwlhvJ6M
 xwl+BbX4A1ian+HMJu5QgDay+cFWBJ3VFuixbQ6zw1SS3tb3LsFoY9rAF1C+pV6NGY96
 JoVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C+8Y29ORRYleLlB1wrUfstrrAJFwd+4SQzBtYD68a5k=;
 b=LlnJBfLOlOFWXcgPgtQqb+VNF7ITd8BxRTJb+/YkENFWtKD5/LRM9ES3JKuRdEwlDp
 /afCtJzB/VfP9b947PO8H3x+4Pz1GRGXcTxQacYmtDI1TbvSuhpoobP7Wx6NilKHw7tO
 VvYQmzYpsWjGuUDr+AbjQMP5vYOhdGlLGP7gCTUEWT1mYqzeuypjrW4CdPJO2Ywirtmo
 qs8Tc2A5KuAvkhA4vK5U2ihxGIccCuPDu01DCMi9EuN44E9FT3CmxWfEG0i20K+MrBkg
 TMHTVHDeDatEB2q4y3xoGajE981EOaIhGNHbetcrSu/4nf+Zd0KhDk2TfjF0qGrRe/zz
 Nm6Q==
X-Gm-Message-State: APjAAAUvUhVqtQbkb8nYOLW7maOk5xTNgtwfKCoCA+n8R4OOdDQXRlcY
 UVOmNjuNeT5Tse4drrzjqDmzIPN4brePZuQjOZAWb+7T
X-Google-Smtp-Source: APXvYqxjmIaUtYRRRZvjNXkdaqy6N1U75oVZVYWxFSCI5aaknnw3cDujGi/BnjigqUNNzYB4I1//kAQWF9RpvQbVp8I=
X-Received: by 2002:a19:7616:: with SMTP id c22mr1912269lff.115.1560803726241; 
 Mon, 17 Jun 2019 13:35:26 -0700 (PDT)
MIME-Version: 1.0
References: <CACRpkdYTgA1i_uFC7NVYVmXf4WhoPHucC11-SrTRYFDUWLtXNw@mail.gmail.com>
 <20190617121124.hkzmwesac64utguo@localhost>
In-Reply-To: <20190617121124.hkzmwesac64utguo@localhost>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 17 Jun 2019 22:35:14 +0200
Message-ID: <CACRpkdZeV72GdbsYmKBB16e_voYMFJfLkLpmGDjdt8ontxQfDA@mail.gmail.com>
Subject: Re: [GIT PULL] Delete the mach-netx machine
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_133528_128832_8EB3D0FD 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 3:05 PM Olof Johansson <olof@lixom.net> wrote:
> On Tue, May 28, 2019 at 01:21:20PM +0200, Linus Walleij wrote:

> > for you to fetch changes up to ceb02dcf676f41d281af84c9d6000fe27651ebb0:
> >
> >   ARM: delete netx machine (2019-05-22 13:55:50 +0200)
> >
> > ----------------------------------------------------------------
> > This deletes the NetX 100/500 machine support.
>
> Merged. You get a C- grade for your tag though -- I brought forward the patch
> description into the merge commit too. :)

Damned my kids get better grades than me this year :(

They will be much better with this, once I get them to do
kernel code.

Thanks!
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
