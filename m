Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2169FE120F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 08:24:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TNByZ5LSQ2tNxDJ84Ovt0XUH9+IU+OMKYaMjEJwzUkU=; b=AQFmIPNpWRtNXC
	LHnHW8uHHFa3WGKiWx5xFzj6UvKKBvUXMPkaqbGnApDGbf7j/50KmbD/g4EtmMIoZ534dGmb646LA
	w1PXx9F9wNU/WXSFAEAkH6CASMLYD0KFqQITD/+r+47e+TN7jRA3rRNxMr7Cr/R9YpG8BDhsS1LFU
	nmoxYgGUoPpOYaxMX43JeZS/fwUhPXYT01h41CKV3Ng0SwWyaTq89qoihBA5feAZRu8aN5Q6xSGMt
	A0sHSeojMLw1WSgDy6ZQwt+md2Tr71DCfk9nQAS/rin4FM8vrE60Fx40KBdQp/NeB/z6iEUkpI0xl
	+4bHwWWrgYxc1wekLhhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNA4E-0006At-5G; Wed, 23 Oct 2019 06:24:22 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNA42-00069y-To
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 06:24:12 +0000
Received: by mail-qk1-x742.google.com with SMTP id 71so14906267qkl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 23:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Yi1p/5AgQUValFkbegnxonQlGe9ds008uEI8GJ+OXbo=;
 b=AuCfw9OIu+7nH6ya75fRfE9wSSXOEJme4h+b4Jl8lqE3QhpBP0wyip4SbHdD89k+dU
 YXkDowI6+oNJdoRgFSF8ON+KH+nGnv9PS7lTmPjLzsl0n3+c81FqncBaSpb91bkTBQeu
 W7CouiNjm3HxMmcdVYt1E1lY3fcVggMLerrJk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Yi1p/5AgQUValFkbegnxonQlGe9ds008uEI8GJ+OXbo=;
 b=pn3rGsGdK9+BAB5fQ9b3PnAFJhKzrelArV4c/1aOmIHlby9RQL+3OrB8ZmbkC9SI3E
 bh7yM1a+bmBCAbwbBVd5nTWPA0tKaon1oY5DmL7+X38CW8C2hlZUGkcpAgsNUrQYF3Km
 pQeknwviIrBJe28M+vqo8XAKqZ9rOq6vV6VV24IkqqDZzqtCnVoWJOB3cPWDSm/5KqcG
 esHdpMKTAfe1i804NcOH9oEfN5pmjJbd0qwaWUvsl/MeKDUif3iEZ0OfFcBIWV31Pa8B
 WEiAtgNZ9vgNCMsjfJSnBZZXeXqQa7BZ1ZN6RkoAyUNNcSEmH578rHSxohI6iKI261D3
 Tj0Q==
X-Gm-Message-State: APjAAAWRmSfDSmutPXwh4i68ziWZbMojocRMlxQIARIzuNE7docTMPI/
 liS7rogVRqzjUhuKsLDFdmykXbf0In0j8562SmU=
X-Google-Smtp-Source: APXvYqzVR5Etz/Es4HiMMf1UU0Ef58kwEksY2/0I7PJeRjGUW1kKtmEKe5E3i1zok0d9FQ5uFZGtdYzcPByiBOb1fvE=
X-Received: by 2002:a37:aa07:: with SMTP id t7mr7032088qke.414.1571811845300; 
 Tue, 22 Oct 2019 23:24:05 -0700 (PDT)
MIME-Version: 1.0
References: <baabb9e9-a1b2-3a04-9fb6-aa632de5f722@web.de>
In-Reply-To: <baabb9e9-a1b2-3a04-9fb6-aa632de5f722@web.de>
From: Joel Stanley <joel@jms.id.au>
Date: Wed, 23 Oct 2019 06:23:53 +0000
Message-ID: <CACPK8XfUJ5VGpTS3gwxSVZbdWZKPH6PwT2JKGGJ2yzoXYKdtZg@mail.gmail.com>
Subject: Re: [PATCH] EDAC: Aspeed: Use devm_platform_ioremap_resource() in
 aspeed_probe()
To: Markus Elfring <Markus.Elfring@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_232410_968243_D1173F6E 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Tony Luck <tony.luck@intel.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Stefan Schaeckeler <sschaeck@cisco.com>, Borislav Petkov <bp@alien8.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 21 Sep 2019 at 16:47, Markus Elfring <Markus.Elfring@web.de> wrote:
>
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Sat, 21 Sep 2019 18:32:46 +0200
>
> Simplify this function implementation by using a known wrapper function.
>
> This issue was detected by using the Coccinelle software.
>
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>

Acked-by: Joel Stanley <joel@jms.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
