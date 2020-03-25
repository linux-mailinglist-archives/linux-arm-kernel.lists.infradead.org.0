Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0973E192DA2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 17:01:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZhhGbhDlV8DV6wK7prGCSyHS/DduLNczWCLS7y4WiDI=; b=f3zkYrdO4tH8QX
	P6cEHT0UQPeXGkH1SYEXKFia4tdt3EtKPEkvMk2tIXGvl4tHcf4zv5oZH29gHCTADirp7mSwUaMeF
	R4zw6+MQ5TegwpZeaWgh1cIPoyjlqHRN/Rxhxc9lDj8IngdmlPI3JlsEz/Fw4NCEFDPDj7ziPqGP1
	u/ghAHw0vmsZJ4YMCxoxiu5cmCHe+xE9mlJjFs7Qimx5ARLtX3OGy0ysGqMAYCKcLMDEmgXaQUgbu
	UZhjVXWXmUe7wSmBDSaNmK3nKzQow8zoc4ebIB8No4f7kFYhEf+TQWysaQZAWJLQAaYp7kazj+kxK
	qotwp67LObRGttuC3flw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH8T9-0002bS-Si; Wed, 25 Mar 2020 16:01:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH8T1-0002au-0k
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 16:01:20 +0000
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
 [209.85.166.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C59120409
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 16:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585152078;
 bh=r/oObLrDMZ3JrcgcvqwRJGnXD9NqHTQStgZUmVh4zqY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=TfqbsERxZ9f7b9iZhjhcgNITvW/6eZxtC/SsnCR/fOFfNIL8zr4W8w5d0WO8cM7k7
 31zPREJ4G464cBNslweQsxJXZ2myC+w3M+5JaiV7xaDsTAC1QKu2xMci0548vhQUWS
 Euxlo01/IyHoWqnEhh/uIf3HfBDiflw2TU5Bnv1M=
Received: by mail-io1-f47.google.com with SMTP id a24so2149833iol.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 09:01:18 -0700 (PDT)
X-Gm-Message-State: ANhLgQ218Dbtljg9E6wkv9nsdJOqxvUgy8CtTiVG7Jkgs6ELoU7SraXd
 IyZJYXBDKJBTQdZ1sa0CLmCtjeRuIaum3B8+Dys=
X-Google-Smtp-Source: ADFU+vvZi1/bh1TXJoWFrdebLRX9gzthf/8XNnlz+UUNpphsQiUYlQ3Pduo0v77Yr5BONht3+oPq92weGro9g4iRzN0=
X-Received: by 2002:a02:c85a:: with SMTP id r26mr3681833jao.74.1585152069745; 
 Wed, 25 Mar 2020 09:01:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200325135522.7782-1-broonie@kernel.org>
In-Reply-To: <20200325135522.7782-1-broonie@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 25 Mar 2020 17:00:58 +0100
X-Gmail-Original-Message-ID: <CAMj1kXGGTvn0r_jLuUxXJmuO+nvV0o_K=kZ++csZJ1Z6rU+a+g@mail.gmail.com>
Message-ID: <CAMj1kXGGTvn0r_jLuUxXJmuO+nvV0o_K=kZ++csZJ1Z6rU+a+g@mail.gmail.com>
Subject: Re: [PATCH 0/2] arm64: Make extension enablement consistent
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_090119_081629_FC7D5EB6 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Eric Biggers <ebiggers@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 25 Mar 2020 at 14:55, Mark Brown <broonie@kernel.org> wrote:
>
> Currently we use a mix of .arch and .cpu to enable architecture
> extensions, make things consistent by converting the two instances of
> .cpu to .arch which is more common and a bit more idiomatic for our
> goal.
>
> Mark Brown (2):
>   arm64: crypto: Consistently enable extension
>   arm64: lib: Consistently enable crc32 extension
>

Acked-by: Ard Biesheuvel <ardb@kernel.org>

>  arch/arm64/crypto/crct10dif-ce-core.S | 2 +-
>  arch/arm64/lib/crc32.S                | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
