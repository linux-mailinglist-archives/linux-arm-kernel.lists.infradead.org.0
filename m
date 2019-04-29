Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED041DBFB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 08:35:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/9SHGeKRRQDfrHwwHNoV1B2IgB+xN/rIR5DnK8k2G+4=; b=bkl/KRiHDvslcH
	hZZHOp86VI/skGmIa3DC15TDNyKkL/Ya/2ru/kN+TZiEelbNQcJfdu3hBrFSlXS+peukHe1LPZRC/
	86AkwakW0YdA7RwJv9uv487LFxz246MmuQVdTgOOZ0XhLGsYxzBVQW/hDi/8saEjkPCpTkYy4noja
	MEhJxjLBb/DPDNLhnrsb7CzpgCz8SwLrwI6z63j1VcSNaL2fysfwGwuDKa2J66Gx7eYCZS0YS20GE
	Zm9rnzJerB4GT8C1Gy0PtdUseg+pdxkH8meGjQ+tqnXJDhcUdnWcstvQ743QGoClsdyaZAKM15k3h
	dWTWXvmjw1PavdnkgoSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKzsG-0002iV-NE; Mon, 29 Apr 2019 06:34:48 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKzs9-0002i8-Mo
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:34:43 +0000
Received: by mail-qt1-x842.google.com with SMTP id f25so10714064qtc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Gl+VBxLR+GvLaPXntiUPaJTzvL30rd0oZ2WHgSedNcs=;
 b=RA8rRbG1034BWX7o4E1XRqbi+lga2VA0KM2tC+lbBBCvRzXpsOoOTXoak2ktUYXx3i
 mPlKfQGZyS1PpLgmgUT+NYxD5C9YkdzxxxC9o3fBSKPUEGLdn2VnEOnihBW9AfKADl2B
 3b3a+2m0IvZScTZRhHwa+0u5jjTOxViRNk6+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Gl+VBxLR+GvLaPXntiUPaJTzvL30rd0oZ2WHgSedNcs=;
 b=hopkqvrpzHYLddwNDVIuRa5MQ3j2EscUt3EiodtJLgJkYsetkgHPvVcp/2K/MRFgIG
 BSjjaXvc5yLb92/hkCOVvLJzOZ4HTDC6Zg331wN1YeHKgy5x3JfUplf9sFEh8b8gQ2Ig
 pMqCHLDEmITxb0nm9ot8ieMOksQS58pxoS/+mwjptXJFfK3spXtMi78qqsePeWgZnj3g
 UGtMY1j5FTonmVFtettFZ5G73Tj2twXuO48mhc0Tmg+vpvjVxBJr8haJuBT0cMxneG61
 HFmuvkZccxAHxe3WA36065yD2nDDtG3Fe3CT2hroA8rUXzzq5+ILQBpLyP4sTHUUp2Tv
 0Glw==
X-Gm-Message-State: APjAAAXLiOus8gjfpy8m8xDfk0qJ2QdU81T91VXgL85NPBmm0RRvCkbp
 cgmzr1rAZVR1efNH+GrCOWET4RSxZjimcHSmdA4=
X-Google-Smtp-Source: APXvYqytTy2fdLvUmYedjHrz9dNMdoWzxnrks4lCz9FIJWSQW1pppC/60NhYFajTRR6X45EF3TyuzhcRlVv5SRz/TIA=
X-Received: by 2002:a0c:948e:: with SMTP id j14mr17487089qvj.245.1556519679861; 
 Sun, 28 Apr 2019 23:34:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190426165655.218228-1-venture@google.com>
In-Reply-To: <20190426165655.218228-1-venture@google.com>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 29 Apr 2019 06:34:28 +0000
Message-ID: <CACPK8XcbSZCpR5tjAXTSuvhfTyeQ_dJTTDOqZVVP=VWCxkaV6g@mail.gmail.com>
Subject: Re: [PATCH] misc: aspeed-p2a-ctrl: fix mixed declarations
To: Patrick Venture <venture@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_233441_813307_B734675B 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, arm <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 26 Apr 2019 at 16:57, Patrick Venture <venture@google.com> wrote:
>
> Fix up mixed declarations and code in aspeed_p2a_mmap.
>
> Tested: Verified the build had the error and that this patch resolved it
> and there were no other warnings or build errors associated with
> compilation of this driver.
>
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Patrick Venture <venture@google.com>

Reviewed-by: Joel Stanley <joel@jms.id.au>

> ---
>  drivers/misc/aspeed-p2a-ctrl.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/misc/aspeed-p2a-ctrl.c b/drivers/misc/aspeed-p2a-ctrl.c
> index 9736821972ef..b60fbeaffcbd 100644
> --- a/drivers/misc/aspeed-p2a-ctrl.c
> +++ b/drivers/misc/aspeed-p2a-ctrl.c
> @@ -100,6 +100,7 @@ static void aspeed_p2a_disable_bridge(struct aspeed_p2a_ctrl *p2a_ctrl)
>  static int aspeed_p2a_mmap(struct file *file, struct vm_area_struct *vma)
>  {
>         unsigned long vsize;
> +       pgprot_t prot;
>         struct aspeed_p2a_user *priv = file->private_data;
>         struct aspeed_p2a_ctrl *ctrl = priv->parent;
>
> @@ -107,7 +108,7 @@ static int aspeed_p2a_mmap(struct file *file, struct vm_area_struct *vma)
>                 return -EINVAL;
>
>         vsize = vma->vm_end - vma->vm_start;
> -       pgprot_t prot = vma->vm_page_prot;
> +       prot = vma->vm_page_prot;
>
>         if (vma->vm_pgoff + vsize > ctrl->mem_base + ctrl->mem_size)
>                 return -EINVAL;
> --
> 2.21.0.593.g511ec345e18-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
