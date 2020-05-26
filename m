Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EBB1E1C7F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 09:47:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=atZGy2pULALG1FQsLbKsdZDBqJFn44b6vp1mvU5QH8w=; b=VClODwOJ2XpWGW
	L7tPOOGvV+MrVfaFdMwFIjTD1saWiK/3XnNigTGrv5dUce3TW5ZDUKl+BuCiJ72/CE9Udqqz4+6pp
	zF0mNixeuTT7H8kuBB1Wg5u233gUA8eeYtn/G43ztA0tQ0YH6dP5/AnmZS7idH8DbX6kFGPO8uGqN
	omenpLJ8s2+tnyn8hQJjJK8GfnG8QLw1uvEfFVefslWkYrz8Ik9rxY3upk9Ccr6qg7LWXfeHGZCIW
	R8criqYgGkFNJi21SZd4hD6CJqY1m1Pl4fHpaFa0S/WydBCh2GFKnXsS5xt/k4eAjInkQUkHh3CVh
	SvQjpfKw7ObWDMvYPSgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdUIY-0001pF-SF; Tue, 26 May 2020 07:46:54 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdUIQ-0001oY-5T
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 07:46:47 +0000
Received: by mail-pg1-x541.google.com with SMTP id m1so3366163pgk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 00:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9hP2gJKDW99uKK2ci16iXnlfh+TatIfa89bbfH5MoI4=;
 b=IhzaWHQ1IZn6kk5fS4iMMRliwb3dMakoIny3kYQoKhPJfWBCrUDuqY1zF35nu+X3uM
 IIMZHSik2wI24wf1Rbv55Zfau50NYOZqwT5E3HJ44qFUyMAbvbwjtiMrX7FzQXecd9kx
 lGIyMAkM6o6NpxpWeGv6qArvRioOMHh8MYr9HAxc+AY0J3ndgjB/AAgwouQuApmwW/2x
 0i5kA8i2KdLS9Cry6afAJIVKO38W+8pxUNG0/aCJmn9FuhIrJGeaz0t9TNXu05wmWp60
 LvOyWZwuhdmVr8GBpjVVjopbyWV+x35/HsE+p0t5/nrUupNP/bELGe190S/g6BN5d+FF
 rd4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9hP2gJKDW99uKK2ci16iXnlfh+TatIfa89bbfH5MoI4=;
 b=Sv87qodn0p1YgcgEupCHy2MLS2YyRUcbY7Q4Ke4mZrl7kt74pIAofvW6eNTLFX+oEU
 EX9GDkgKX9w5lLZ+jt5ziZmc8VeGLARxkW06Fx1FxU0hZ+QA8NshXLWVAWQ0Yy7BqQhx
 hsczMlaW+0wzgT9KSEcYmNsdN0v4Z2RlWWJXRleRbGIEPcx8Ylh23ZxhAd+zYCsK1H2z
 pL7GvDL4x46Gqch17E7p2mISXpVihNdzmDu6KJCxmy33qj1vOm6WyFAtzj9zQj7xtQh5
 yXe0osMjbS6IiOrpKxY4wOclz6+FUgHR1rsqhb0QN+9QeLHS+pZ1+ZDvFy2NSQMnvovj
 TlCw==
X-Gm-Message-State: AOAM531JCohhapVFefLLGz96e/Pcyu/har3ZWy4X3dOgv2hOuCEXMSdy
 5pdYsYybMCdTw8inj7jVX7DlS3xwlGnAShMkskg=
X-Google-Smtp-Source: ABdhPJyxzAObFo2fGXgOG0DTaZEGiMDEiM/XhPzUWJLhBUpA9j5+1D9nbFN8JF/guHMeGKz5o2jOHBt1rP1W7jAGnnM=
X-Received: by 2002:aa7:99c8:: with SMTP id v8mr17942364pfi.36.1590479205218; 
 Tue, 26 May 2020 00:46:45 -0700 (PDT)
MIME-Version: 1.0
References: <1590378348-8115-1-git-send-email-dillon.minfei@gmail.com>
 <1590378348-8115-7-git-send-email-dillon.minfei@gmail.com>
In-Reply-To: <1590378348-8115-7-git-send-email-dillon.minfei@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 26 May 2020 10:46:33 +0300
Message-ID: <CAHp75VebSZa6mwAETnM0t42RQCp4iM6_SNjmy3TB48ixsGKV8g@mail.gmail.com>
Subject: Re: [PATCH v5 6/8] drm/panel: Add ilitek ili9341 panel driver
To: dillon.minfei@gmail.com,
 =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_004646_208367_8F2E6B87 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-spi <linux-spi@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 6:46 AM <dillon.minfei@gmail.com> wrote:
>
> From: dillon min <dillon.minfei@gmail.com>
>
>     This driver combine tiny/ili9341.c mipi_dbi_interface driver
>     with mipi_dpi_interface driver, can support ili9341 with serial
>     mode or parallel rgb interface mode by register configuration.

Noralf told once that this driver should be unified with mi0283qt.c.

So, what should we do here?

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
