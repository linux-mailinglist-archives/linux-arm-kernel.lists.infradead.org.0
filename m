Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29497FD3A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 05:26:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WSx0+0cFB9ABgbTbFLeNxMWW37qnQZ1Fc8atFnTewzg=; b=KbmbifnjoPALRX
	GDOkKE5oMiRf5sycxNvz/Xr0KLsu3jyaxMVupIHK0SuR7YXZGteyfRH515QqMyFQIQi8LXWRh6XBQ
	qd3foSct1+j/mN/nfuKxDG9VaDaGPehSmGgzz4WOaT6+/TSz/jQ5e3eYimResA4gNBn05Avk1T5D+
	n0tDzYiKuptdaG+plLUF1GOIjPX/M9B3a1PMpC4941imOifn83rpdy41CQnqmo5jAA3WTsGGG65A5
	HIfLx4kBWaE1aiB69M3XVVdRS4pu+2GUal7i7PAXbWT2X1xCt3dSdI/th2MIVrUqDGZZBM1lkWXLy
	FhyVu6XCtWzbt+s2s2iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVTBx-0006uR-AS; Fri, 15 Nov 2019 04:26:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVTBn-0006tx-B1
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 04:26:32 +0000
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 67C19206DC
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 04:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573791990;
 bh=9wOq687Qi/2lX8IlVmx3X62wxNLXabR/kcOYgP+5Zic=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=KRpj0jxqSegt9Nw4hWezOFc+3piXWWS0uzU6orlkh5W/H0zEhswSnT8XaLD7HuLtl
 7oHNud3SfJmDxTgZ33qFavoPYuHMwP59ZF93vdykTnucwKJyjd3s/0RUwBlDBMwson
 RMC9Epl151y4HMRqHoOmLSH2j+LfU+ftqc9i7S7w=
Received: by mail-qk1-f169.google.com with SMTP id e2so7117904qkn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 20:26:30 -0800 (PST)
X-Gm-Message-State: APjAAAU5blu6YukPtSmpqV0LcglvMsEZJJVtQrcw3aNW+jpLdSq9V7Tq
 HY6VTzsMG1RYddk/ELk4UIgFYd+huQdOwZBNpNI=
X-Google-Smtp-Source: APXvYqyLFzHjZ7tEQMeLkCQSkpPg0rZdqFl6WRIPEi5xIjuml+zSKU9pde3u+lplCRandR9s/b1zLnOoGmwvymczkds=
X-Received: by 2002:a37:9d44:: with SMTP id g65mr10614078qke.302.1573791989555; 
 Thu, 14 Nov 2019 20:26:29 -0800 (PST)
MIME-Version: 1.0
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-33-linux@rasmusvillemoes.dk>
In-Reply-To: <20191108130123.6839-33-linux@rasmusvillemoes.dk>
From: Timur Tabi <timur@kernel.org>
Date: Thu, 14 Nov 2019 22:25:52 -0600
X-Gmail-Original-Message-ID: <CAOZdJXVpDSk2AWT7pYjrsk5HUmAeosCNf8zWX1CEEtZshAh9Sw@mail.gmail.com>
Message-ID: <CAOZdJXVpDSk2AWT7pYjrsk5HUmAeosCNf8zWX1CEEtZshAh9Sw@mail.gmail.com>
Subject: Re: [PATCH v4 32/47] serial: ucc_uart: use of_property_read_u32() in
 ucc_uart_probe()
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_202631_402316_8283C220 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 lkml <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Scott Wood <oss@buserror.net>, linux-serial@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 7:03 AM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:
>
> +       if (of_property_read_u32(np, "cell-index", &val) &&
> +           of_property_read_u32(np, "device-id", &val)) {

I know that this is technically correct, but it's obfuscated IMHO.
'val' is set correctly only when of_property_read_u32(...) is "false",
which is doubly-weird because of_property_read_u32(...) doesn't
actually return a boolean.

I would rather you break this into two if-statements like the original code.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
