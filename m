Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E795387195
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 07:37:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HmK73SY/qkgbVsSBvb+ZGkjPB4/xdo+FiXujc6d1yIg=; b=dZ1SHDPyfoy0tM
	d3ppwpPLKnPR6xypv6Qleljqxt0YithgQwl4ZIT7Jcy+4bRc5vGhg3W9WIPI2GZLkdxilhcw+DRkm
	zyTiMNKSeJfw0n7bxhb94jUK3NRbzrciK0SFcIPKzNIswtLHQCvPD+GQuSmGsN4mD020J9SRuxQNt
	9wIbh9FS+jM9f33+j5oMj+7FcDq5ZDHBGtnvg46RUrg9Xs9JtVafhvZeihFaQSP5NRhNnJQe3eSKq
	grnFXEvyfUVdHnWr7uv8CoFPFzK/Tw+L8FmWEq8SIqcZXuQCVw5h1WoOvyxBOvH9YoAl1bhA8vLuV
	Sqcob4ICEQ9v952eENrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvxa9-00032g-6X; Fri, 09 Aug 2019 05:36:53 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvxZv-00031o-PO
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 05:36:41 +0000
Received: by mail-lj1-x243.google.com with SMTP id t28so90984551lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 22:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tkESspP4zbr99ojw52v1cXFMI0dDrn0lXHnV6ilVC5Q=;
 b=atU7IHWXmtnksMrbQ1k8BhvgynR/4zyE9OG6rt3PbzKxYem2YQ+LktsQVrdVxU9YLC
 6YS80Puii0arAAtUnabMIGV3zOeVA3ApszU4i/8p8wffKinEejM0dX7NX0PIEsTgMwvO
 TLzlf48b35qwzLFYgJMSx7ys1Tf0RN+OG8QBquU8whFJhPaB1FkUd42OD9c0OyIJsSHJ
 KiLi5JgnoeFZjOcc1P0sXibjDkKRUkLk7IMYnOeem0uchFACJ8+T4ZID/+da8ANX2BVu
 Ko5uHliRhM4w0sAseDx2oJ+M853EwbV2INgH2yf6WehmFBIkH027WuZ/eSEYYm1W4a3G
 FllQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tkESspP4zbr99ojw52v1cXFMI0dDrn0lXHnV6ilVC5Q=;
 b=c15O4odq7dY8bAQtob3VR9mWw9Uy2TR4L3SwMdLaqenpX4oOjna3zhJbdpigMIX9NI
 VM6Mk/rG4Ydwr/rIou5PNqJX73miC0QpfdKRMIkLYNmRKYB0QonR0poOsGfgObrUMQ2N
 kKndR/uTivpcZjf2KotW/DOh3pgoHgVQTgbnd3fU7+tnTA4B8AvX2BWvpMY8UZRbZK4p
 RkbPkuRBMok/EPvqJwx/p5MJLtafWuwUEC/1DWV4F14uubFmXZPCFd5cbdkEgcvAiX8w
 AN8hFYlu275nv2JLR22FPCvRA0jU88XOUe4W200U/UcBqtGzdAQwomETv46o/lD4Z/n0
 hyUA==
X-Gm-Message-State: APjAAAVcLuEDKrx9Ct9vBU8+08ptZyXHaitsTvP0Eja1kxlrEaWjm4Db
 m/VIVxabsWgXf4HIs6atxI9Rg4NIhakZv36ofTqtdA==
X-Google-Smtp-Source: APXvYqxxy1TTV6QUfZHgTqMprUtqV1APmZ3PZFtZk65sg1r/cmrL6x9y1rC58d2HxqSp7BbfYHFxOnFanGeQ7Y6xGlk=
X-Received: by 2002:a2e:301a:: with SMTP id w26mr10098807ljw.76.1565328996305; 
 Thu, 08 Aug 2019 22:36:36 -0700 (PDT)
MIME-Version: 1.0
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
 <1564489420-677-3-git-send-email-sumit.garg@linaro.org>
 <99777010-db74-096a-ce1a-da30539d6fb5@arm.com>
In-Reply-To: <99777010-db74-096a-ce1a-da30539d6fb5@arm.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Fri, 9 Aug 2019 11:06:24 +0530
Message-ID: <CAFA6WYPUEUVJqk9E2F6z9oBW3VpC+xeqqpY4YrU9KPL1s0DTyA@mail.gmail.com>
Subject: Re: [Tee-dev] [RFC v2 2/6] tee: enable support to register kernel
 memory
To: Stuart Yoder <stuart.yoder@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_223639_891729_29CF34E9 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dhowells@redhat.com, Daniel Thompson <daniel.thompson@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, jejb@linux.ibm.com,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mimi Zohar <zohar@linux.ibm.com>,
 "tee-dev @ lists . linaro . org" <tee-dev@lists.linaro.org>,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 Casey Schaufler <casey@schaufler-ca.com>, linux-integrity@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 9 Aug 2019 at 03:57, Stuart Yoder <stuart.yoder@arm.com> wrote:
>
>
>
> On 7/30/19 7:23 AM, Sumit Garg wrote:
>
> > @@ -264,7 +266,17 @@ struct tee_shm *tee_shm_register(struct tee_context *ctx, unsigned long addr,
> >               goto err;
> >       }
> >
> > -     rc = get_user_pages_fast(start, num_pages, FOLL_WRITE, shm->pages);
> > +     if (flags & TEE_SHM_USER_MAPPED) {
> > +             rc = get_user_pages_fast(start, num_pages, FOLL_WRITE,
> > +                                      shm->pages);
> > +     } else {
> > +             const struct kvec kiov = {
> > +                     .iov_base = (void *)start,
> > +                     .iov_len = PAGE_SIZE
> > +             };
> > +
> > +             rc = get_kernel_pages(&kiov, num_pages, 0, shm->pages);
>
> Passing a single kvec struct is temporary I assume?  Because as currently
> written this will only work with num_pages==1.
>

Ah, thanks Stuart for pointing this out. It should rather be an array
of kvec struct. Will fix it in next version.

-Sumit

> Stuart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
