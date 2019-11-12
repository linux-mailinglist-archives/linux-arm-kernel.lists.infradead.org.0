Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CCDF87BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 06:18:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7rmYbmgtA/sFoVHGjkOQPdYXsGAaVjwC+q6wwOSw+ko=; b=NbdW7z3CqT/LIK
	NUZ6qsJ5PRK1EyzNOh7lnn1lJWloihblqoLx1nGwGpsS8tB8GfQgnFSbXcW2qkpjLW9S9cImFE4jH
	hQAME4z9ZuTL5i2VqA7vyqScNrrD3apG7ZkOwq46Xm8ZF0ZTZ4OsZ+M5Dv89AGcbzlis6qTjI5nJa
	+CtVJhVT2aJWZPJckVcueI9Ne37f8tfriQznNVxW3Kh323RheccAQQLaexzoDGM3tjufAeyQDSR3K
	hwxcDDS/sfPv6mGUsvFlEePcdJLpeYKkGeNU7AiduGLrgQo7FPkc8sxxMFFMuT/So752IprKVXJe2
	IA2jxX5rYXmKV8Y6Sa8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUOZ7-000892-U7; Tue, 12 Nov 2019 05:18:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUOZ0-00088S-8j
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 05:18:03 +0000
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
 [209.85.219.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 732FF21D7F
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 05:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573535878;
 bh=+sjdYVv8CDJT89mCUOL1IQ+FuBUStP5YIxV+BRhizMI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=AwabfAw/3h3DTKe7ptAw21A+aiLqSS9Yxtb7Av60cvCyaX4JpmVRVRr8OsqAf4lNV
 QEz7Mq+KHshF2+zP6/N541Gce1O1w8RSqjiJso4xEz746D4OsJ0PWU9AL+EsC4yve/
 7mPCYSMKbwQdGzxYkXiLnR/LlvpOcRHS0co25vjo=
Received: by mail-qv1-f43.google.com with SMTP id v16so5896484qvq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 21:17:58 -0800 (PST)
X-Gm-Message-State: APjAAAVh1i+JZORCqXE7TO3/asyb9tyNiJgHPCxxCyEA2L6YF/tge3l3
 LR/5etGjUi1psEtDyIVWbIA8hTLMk6ev/+9LDOY=
X-Google-Smtp-Source: APXvYqyRMq8MPHBbv10LcomZfNYFYesotjA4C4S3ZUC/cErDRyyFxBF01/9DX6UFwCBG6keYQ/6e7NX4CI4hPzjyXJo=
X-Received: by 2002:ad4:462d:: with SMTP id x13mr7948364qvv.105.1573535877525; 
 Mon, 11 Nov 2019 21:17:57 -0800 (PST)
MIME-Version: 1.0
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-5-linux@rasmusvillemoes.dk>
In-Reply-To: <20191108130123.6839-5-linux@rasmusvillemoes.dk>
From: Timur Tabi <timur@kernel.org>
Date: Mon, 11 Nov 2019 23:17:19 -0600
X-Gmail-Original-Message-ID: <CAOZdJXU35+G5CMrS3247mgMjQH7__MxP8wpW6yjn1_MLD-sGqw@mail.gmail.com>
Message-ID: <CAOZdJXU35+G5CMrS3247mgMjQH7__MxP8wpW6yjn1_MLD-sGqw@mail.gmail.com>
Subject: Re: [PATCH v4 04/47] soc: fsl: qe: introduce qe_io{read,
 write}* wrappers
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_211802_330090_736BCB14 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 7:03 AM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:
>
> The QUICC engine drivers use the powerpc-specific out_be32() etc. In
> order to allow those drivers to build for other architectures, those
> must be replaced by iowrite32be(). However, on powerpc, out_be32() is
> a simple inline function while iowrite32be() is out-of-line. So in
> order not to introduce a performance regression on powerpc when making
> the drivers work on other architectures, introduce qe_io* helpers.

Isn't it also true that iowrite32be() assumes a little-endian platform
and always does a byte swap?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
