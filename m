Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D31476C0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 22:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r9k0DTlu13t3BWvFBtKT/RDtK/UxT+RZvrbDbT+M1Ss=; b=VOnbsl5aiN2VXW
	cq5t7xRUTv/gVBN3kD0JupaEEA1S6Y2M+unQja7Qwe3cvref9Eck3n0x4WP/4bC0b1LOP167mw8aO
	oFFfpuq0tNN49K5Xk8JpPTa6ut2TSCg4zTY8a6ItDtYBBVnpVixJrc2sLK4ucDtHs0qN0kjQrV/XC
	oX/b7Il6SJQeMoLjUvtlV3VlpeM6ylFc25m9oGVuu1mSqisqwWh61zDeq/7DZLxOHx2FZkTBHcpon
	hSQtlNoA8+ANWTwiH8CVHfYt44UJtLKMmewFhXSAZWLdKTMf5xC+JZMrBS2YvXHveU8yLzpo6beb8
	JqUVe3F+OMpas0KtJ22A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcbqf-0000cu-RR; Sun, 16 Jun 2019 20:33:57 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcbqQ-0000c3-4f
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 20:33:43 +0000
Received: by mail-io1-xd42.google.com with SMTP id u19so16815330ior.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Jun 2019 13:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=M9+4VVBd+T5Xj5kGHR/e/gLAxhBTm0928MJ16aKtOpc=;
 b=sGR9rHebaH3Vb5oA8ZPWZVQxSmVuw17TO/g6uUYznLtnVAbgpQ6Q+PuaHI1kl2XYvd
 irt7lnUzZnWGBnTYcH1L14PqoSZ8EE0NGplMTiU+uYbnWcVh7fW4d3a3w5j++YrL6vQp
 IT1da+QAb7DdCoBRHyaIyy5nSLmK+9Si3QW/G81BfTJCsmoCP3dyt4QyG+w9rCJGf9nq
 ImGKN4U0kEixIv388oTgaOThcSacXvbh+BJhhcoGKhpTLFNB6LACqOGghBtQ0daEtA9d
 MLg+JPq8zMoILuU5p2cMDdA7rSAr2bKUcNQP3dhz6dm4RJWjq5FzQyIl8WsAyxxMSbGC
 rYtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M9+4VVBd+T5Xj5kGHR/e/gLAxhBTm0928MJ16aKtOpc=;
 b=gX7f+PcpbsLkNjigVmndVSe/3abze8bq7KpSKy+egQqYKYyPdFQB6gQTrNZC1UuZo9
 d8neGqntRRpG3t6TMGGRMaLyYRMhyUvu8k1NxGzigKiSbsPQlkaQa578pIYV1+tmg65e
 b9LWIc2kDv7DsmFUa39fuaM1LQiXCf0z0hjMOIHjcnbx4KEsT/Tr8/fGhMH2JP5ls8l/
 TT0ctIrqOMICyEQER4NwC6j1uKsyXkz8q8f8Tz0nqIf9x3c+cABpPZ2cFfllbwLIiEsD
 aF3f/A7AKggrELss6xtbg6TV7shiFtessEYEG5tLTm6r4UI5MjlAWDES16ynm9uGe4J9
 SVYg==
X-Gm-Message-State: APjAAAVvk3ytxDJU/9oSTA2azFAEKEFgIL37rns6bBH4qyp5uOvAj5Jf
 5f8uP7VbPE3veUhbI5tceEiVfl/ErC3HUvs6oLFOdA==
X-Google-Smtp-Source: APXvYqwvZIQdjcTx1rT8R2zPdjrHgDY9ajzwO9fGIB0/BS7DevjiGIMXFBVZ5/+ajaE1pOpcjhu7AtPay3iJFRkVZd4=
X-Received: by 2002:a02:1146:: with SMTP id 67mr81597016jaf.10.1560717221562; 
 Sun, 16 Jun 2019 13:33:41 -0700 (PDT)
MIME-Version: 1.0
References: <4db84007-8271-05f1-ba29-4d7cb2440eac@ti.com>
In-Reply-To: <4db84007-8271-05f1-ba29-4d7cb2440eac@ti.com>
From: Olof Johansson <olof@lixom.net>
Date: Sun, 16 Jun 2019 13:33:30 -0700
Message-ID: <CAOesGMgwmCmOPxbWM090jSngr8qO90N-+QVq1rcMdmwF5LLWgQ@mail.gmail.com>
Subject: Re: [GIT PULL] DaVinci fixes for v5.2
To: Sekhar Nori <nsekhar@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_133342_190250_28094C22 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 7:28 AM Sekhar Nori <nsekhar@ti.com> wrote:
>
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
>
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/nsekhar/linux-davinci.git tags/davinci-fixes-for-v5.2
>
> for you to fetch changes up to 68f2515bb31a664ba3e2bc1eb78dd9f529b10067:
>
>   ARM: davinci: da8xx: specify dma_coherent_mask for lcdc (2019-06-14 16:20:34 +0530)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
