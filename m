Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA9FA6A90
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 15:57:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QVSoW31FqOCxDtWOxWiCeR0c53Gg0DBrQprTy3SSP9U=; b=nNZV5r5Nx6/ZjE
	E9XjKfjHu0s0PQNdgZ+77Ob7lmK2bwHKFkUMew0Txo15FDXMCLhRfpc5PisjudQnAbW5FzPAoJRFT
	kzGG/Ktnas659SFZe6/MRe5qJ6RIzDbtzzGi+AJpLg6zlsr0DjyR954/yiFr7syigt/FDMmWrBpOx
	Sv5UnDQPSczJkq4NP2cy56/Ii2hUjDWrwOptF84VrqqMVM3GaJ3JILCUWZr7B00AUO6S3r0enoP64
	EVBdS7MeDecFG+5LPsVydbWeKi2cPrevJhJUxiq2acZZ/ZrDWl62XoxDiFC7YY6TwxiEsxK9dmhCe
	1cWTPwkBn1fVQCx1Z8pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59JP-0007NW-QP; Tue, 03 Sep 2019 13:57:35 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59JD-0007Mw-0a
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 13:57:24 +0000
Received: by mail-qt1-f196.google.com with SMTP id a13so20041465qtj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 06:57:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ykwxDb7CCp5hvE8+NK25PGRymuxgBNyvLf/A2ycvMd0=;
 b=oQlFMq+9RXsK6DQEpI6cO0L4boHV/Q7+cfb+2+FkSPOojNIfk6E8+HprnUwG+33szt
 K+Qb8/pZ9akghJgmm2Rbj7VjDotxq/KaN1pP+fhxqtIsE5pkbXjnZWrEAAmmz2U0UIdE
 fHEF9bag/0zsr+sc3P9eUP56aejk9HNsfgZsvF1qryjclkhcpeQMYK7T5NtJeSINepZf
 B2eiNk7gytvijFu26htWQhmhxCGQ0b7beE/F1Li8xvLuUfZ3o1AoYWL/SxfeoOq2tGuu
 gud8dLDsquvo0KMJd/+pHU64Iidh0g8XKMH2WjGe35bOWzxXGHWwDsir+MhCmXlJofYe
 /78g==
X-Gm-Message-State: APjAAAU+58cIVwmrcqPqR/RgM1nQ4zZPvBVoCMAY74Xaeg4lnyIN00bV
 rCzjblUT318fSNiMoiWdoUS6cWjjXmXAY8UljvY=
X-Google-Smtp-Source: APXvYqywVbgHzNA/ETOHIbsNPrfgNotltien64npZnIjX0eSnWvkloQkzfpWUGCmNZyYZyyPSRMVpkWwq9srjkuu1jg=
X-Received: by 2002:ac8:6b1a:: with SMTP id w26mr10059712qts.304.1567519040941; 
 Tue, 03 Sep 2019 06:57:20 -0700 (PDT)
MIME-Version: 1.0
References: <d97e6252-9dd7-4cf5-a3cf-56f78b0ca455.lettre@localhost>
In-Reply-To: <d97e6252-9dd7-4cf5-a3cf-56f78b0ca455.lettre@localhost>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 15:57:04 +0200
Message-ID: <CAK8P3a1Vsai-vNK05PE1T1=YK7D67_Jxh=A2RM7mjmj=i+CggQ@mail.gmail.com>
Subject: Re: [GIT PULL] Allwinner Device Tree Changes for 5.4
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_065723_068207_44E41F63 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 4:38 PM Maxime Ripard <mripard@kernel.org> wrote:

> ----------------------------------------------------------------
> Allwinner DT changes for 5.4
>
> Our usual pile of patches for the next release, which include mostly:
>   - More fixes thanks to the DT validation using the YAML bindings
>   - IR receiver support on the H6
>   - SPDIF support on the H6
>   - I2C Support on the H6
>   - CSI support on the A20
>   - RTC support on the H6
>   - New Boards: Lichee Zero Plus, Tanix TX6, A64-Olinuxino-eMMC

Pulled into arm/dt, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
