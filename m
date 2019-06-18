Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D17F4A4CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 17:09:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sX8y0NomWSENcejhbElV9sMNcczaRpS9n4tIVXR4pYQ=; b=l9nzc2aAKXeBke
	bsWKe3KtBpahc0gIgiwNQ8YGnWiHLQ0VdUiIM6Cbnruvi+DXUd3gDTtl5WbMnBTGmI2/iPGW0LSP2
	VmzA1hxtg6OKYHZuceoVYbX5VvhRRkT+xBxwdZd+x3bc9GKphr2ujvhBVY5xsoeCQGwIWJBc3Fg0o
	mGYj+0DkA43hU4BiH/CnXCRfbLyz/vKNIbEyZQoZxJMrUS1b1NRqCJ6N0vi1j0UYgJRZdIK3HNZsJ
	t4UF++j0FWPED0SxSL4m6POhhPOOwsCZn0kxLTgB/dFaMg62oW22f86fkzW/FBjqCDBYHnPzl20hq
	1ZnQe+FwPjvCvz3U/Vwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFjh-0006PU-RH; Tue, 18 Jun 2019 15:09:26 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFjW-0006Oa-4X
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 15:09:15 +0000
Received: by mail-lf1-x142.google.com with SMTP id r15so9557508lfm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 08:09:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E3z4ooMqqLKD/hzgGGQWs+ev7PXuSayk0SXXm5Gk74A=;
 b=YTSpVpVP1wJifrXotuGKFrWnUobbeYF1bpGOYnUcWWtAlAkm2yyUzaOJzEYmwd1Fvx
 XdYJgqrEkXfQ8QzUmfgvcBHfLVvr0/pCQtDtxWgxSqN2McdLMMNETqTqJTB5blwFdYJg
 ZLCvexoMxK0ZpFP7cM9LySFPJNeEmNXbObOtGxkKTWbiwBJDOAnGC1VA80A9Wa2sQDf1
 sQrNGbuvvMWEJDsV84Q1W/FMyzLrvPiweWXCiJ6h+5yam95dDNslkMn13w5tcTz5tqYY
 XUkrUaIRCu8bA9lgl9/qDkIBrNobZCY2R66bHhBKiiFRZke5qijXoZGxYiwD8fr8tPrV
 1icg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E3z4ooMqqLKD/hzgGGQWs+ev7PXuSayk0SXXm5Gk74A=;
 b=pC0NsYbfgrPiMMfmwkxkXr6r6XYA6gDBM/5ePEYuCz3y2B1WVvtN0iKEJ677FDZBx1
 ydFJFQd246aapygUfgAcKm1WXV+TH3FExL2GvGB2IS4d+NMWm79j8pWkcdstKepk/iPU
 Iu7P2icIXTy6K0GgqaRbpZ4VmA063bkMd7UH8OLSqFKHACPtqGmab1S5nvqMrTD+n4lc
 e86ED21qPtdXxkE4LwC1cmspuUphsxT3f4aWLmqqUr2RGF0Mx0qGA+rhc9RupNkwP0YE
 dNBn062QRKOvI8rn3veN7qAVS3s7v0BXk4QTsVfs7Mw7TXk/tGYcPNOr2yYwJHkpegpy
 U0EA==
X-Gm-Message-State: APjAAAWk6LQPb3v9N/XNLgdHbRKvcwDJOttDaewx8wXQ9VyA3m1kXrqN
 Gk0m9q/RefH8glMVbU5XGLZnT0I8wucwbAGiBJY=
X-Google-Smtp-Source: APXvYqwxRVNdPswQrYbmP28S6ZDttANal0lK2TpOrbDM3rh2zMCAKn/QlFl23W8/UMawrYywzOnHNSt2tnbomQmGAOU=
X-Received: by 2002:ac2:5a5e:: with SMTP id r30mr16092246lfn.12.1560870552439; 
 Tue, 18 Jun 2019 08:09:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAOuPNLiBA9VjEoG_D2y2O5mKiqsDNW1VZXOk1eWXpGY+h86acg@mail.gmail.com>
 <CAOMZO5BcLaS0gXUPi6oN6vjqagS5yf+rHh+EUjmi-Wi1OX7vqQ@mail.gmail.com>
 <CAOuPNLgEEfDca4aeT1+q8GfUfGzbJ4x6JwGf-ROB1pgpXUBHSw@mail.gmail.com>
In-Reply-To: <CAOuPNLgEEfDca4aeT1+q8GfUfGzbJ4x6JwGf-ROB1pgpXUBHSw@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 18 Jun 2019 12:09:23 -0300
Message-ID: <CAOMZO5BY8JcLNMCRCC_d=emy8HR6kE=dB9f5qfZ=ci_c+Jak0w@mail.gmail.com>
Subject: Re: [IMX] [DRM]: suspend/resume support
To: Pintu Agarwal <pintu.ping@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_080914_175901_67D505A9 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pm@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Kernelnewbies <kernelnewbies@kernelnewbies.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 11:46 AM Pintu Agarwal <pintu.ping@gmail.com> wrote:

> Thank you so much for your reply.
> Yes, I already checked the latest mainline kernel changes until 5.2-**.
> I see that there are many cleanup related changes, but still I see
> that suspend/resume functions are missing in dw_hdmi-imx driver.

Please see this recently submitted patch:
https://lore.kernel.org/patchwork/patch/1084057/

> So, I am trying to implement myself.
> Also, I see that suspend/resume is missing even in :
> drivers/gpu/drm/imx/ipuv3-crtc.c
> I am trying this also (not sure if we need this as well).
>
> Can you point out some specific patches which can be helpful ?
>
> Currently, what I observed is that hdmi bind() functions are not getting called.
> Not sure who is responsible for triggering this bind function.
> Or, irq remains disabled after resume, and we need to enable it back
> again (but how ?)
> Or, we may need to enable vblank events and thus irqs can be enabled.
>
> So, I am exploring many possibilities.
> If you have any suggestions please let me know.

The suggestion I have is to try to use latest mainline kernel. If you
see any issues with it, please report.

The combination you mentioned in a prior thread (kernel 3.10 +
backported drm patches 4.9) is not really something the community can
help you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
