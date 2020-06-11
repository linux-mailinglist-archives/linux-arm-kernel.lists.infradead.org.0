Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 810C71F676F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 14:05:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aGOA4ePXWYLe2ZYy68bh+yuMy/C08ZPOH0lfqp2QKhY=; b=RTjx3ttM9jBJHw
	PIBLj/fK3COaqwLNdDfGI/UfrXxmXFaI7wd4ZshdaV4GYGV8T0mA7uqzyx9NHXCDJVjM/4aYQYEH3
	epzxfcA3VYQKVDbLwPs/0GEWkC/lvou0V4M509fq93PrbVA7Q/aCtJQLhExIJFY7ydB1uLPZ4ChJq
	OHZfapZwlW+kRoe14m1o9F6UjMGL/gHHA0TROZw9qdPPC00K/F7XbWQRPrHgKz/deT104KxA8wA0j
	rZJBItPLQkBhi/hyiUh3MRvxcQ9ba4yLM3m7+6xONEkPv4lxTb1sqFGnQEt41O/4grNhGDNMpaMSU
	yszTNJjI3U2gKVVK6H2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjLxh-0005Ly-1S; Thu, 11 Jun 2020 12:05:37 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjLxY-0005L2-4u
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 12:05:29 +0000
Received: by mail-ej1-x643.google.com with SMTP id dr13so6185173ejc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 05:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bXfqD7gSvjz6LJbKoi0/E9CrX3G1dDgq7x+YbDEOdME=;
 b=NxTo1jQy5E3dUlcBdualrF+kOZmZ8ehdQqanHWK4t7CQcGWEe2xIGxroxIuHGXUcS0
 5cOIn3TsC9mL6OUHFTtYNN+58fdIhwTgKBpUAtOmnrB/MGuQexWyXk5/PfcXfdzB6ab/
 LyDoRHD/5u1KJ0LMcU8skNIvGrXqEu4sSf9Vo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bXfqD7gSvjz6LJbKoi0/E9CrX3G1dDgq7x+YbDEOdME=;
 b=NjPp3IT+PtzvRaHt4/yZQIt8e9fB6+7iaM1UWMKWFxbSRq1VvUPlfuFja3ssC59OK2
 u3CkXdFPiV2eGWPXmijJRc682JkT8LtyxvkE3572AMveDqoZvcV6wScn2/0+IiWtCFWz
 bQ1XG2oyzGkIEQrIUWmYg3FQAmRpjk7JINYEeG7K/GF/3TXn+23aI2XdTghN9zU7VF7X
 K7u3EX+/dJkiohrIFnQyg7kxiRsR1zDaz2bAa2FIAWLs3wNVQ8jND7RmUO/fYl0u66tO
 XbSo8lg4BzV20eQrWUWbAleSMRK6N/hX1aPH2lIGGNgajY6ei35OnHiTiRIaGnclMEoS
 WYUg==
X-Gm-Message-State: AOAM532DEimwSTRpjorqvKkuDHRMpRAwc6y2MWe4lGoWSyhOdRf8T/Oo
 8apzSrQl6KSKDzZj1hoyCwUifR18Bd96dHMBJGY=
X-Google-Smtp-Source: ABdhPJzUsNY6R4Fzc0QWGa0H2nbfLpgV3jjxAFbpDdyM/8hbo0xN8i0rnjvPBa9qfyxJ3vXqnHvTtkwBcmbS2ZBaWY0=
X-Received: by 2002:a17:906:9243:: with SMTP id
 c3mr7985996ejx.400.1591877124345; 
 Thu, 11 Jun 2020 05:05:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200429113711.13183-1-a.filippov@yadro.com>
 <20200610081500.GA27959@bbwork.lan>
In-Reply-To: <20200610081500.GA27959@bbwork.lan>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 11 Jun 2020 12:05:12 +0000
Message-ID: <CACPK8XeGPBYcaR-Y2AtGsqfK3P722qWUU+46Op0S600Ohf4H_A@mail.gmail.com>
Subject: Re: [PATCH v7] ARM: DTS: Aspeed: Add YADRO Nicole BMC
To: "Alexander A. Filippov" <a.filippov@yadro.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_050528_249789_D7B71BAB 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Patrick Williams <patrick@stwcx.xyz>, Rob Herring <robh+dt@kernel.org>,
 Andrew Geissler <geissonator@yahoo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 10 Jun 2020 at 08:15, Alexander A. Filippov
<a.filippov@yadro.com> wrote:
>
> On Wed, Apr 29, 2020 at 02:37:11PM +0300, Alexander Filippov wrote:
> > Nicole is an OpenPower machine with an Aspeed 2500 BMC SoC manufactured
> > by YADRO.
> >
> > Signed-off-by: Alexander Filippov <a.filippov@yadro.com>
> >
>
> ping

Reviewed-by: Joel Stanley <joel@jms.id.au>

This missed the merge window for 5.8. I will queue it up after -rc1 is
released for 5.9.

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
