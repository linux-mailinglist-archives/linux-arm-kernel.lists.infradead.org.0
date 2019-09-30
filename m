Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6D7C1FD9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 13:14:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k22DT9kQlAZxL4NmCUa4SOQ1bg0UcfIfOx1e5+A04tI=; b=vA3aG/kol4RfQG
	Po0enflsDVK2IUtJV+671NcX01h7mNU/S1qHbmr3wMnabdSWzoZlqjfhPD1eeqEmZKuFKC1yx3esa
	qtjwhwbKFXWmc0QZvK1L0VwuN4bnoT0Ys9Z5NwV8/9KW234YQGMgVhs0xsqpGr0m5uMHlPkg2ie2a
	WuRvjCW/7TsPmg/65VZ97DUH3INHbXaiUnqMsyKgM7IWZNz0ghqbqLv71JOWq4DcSc2OrB62z0sYS
	hlhHTTgWOXAfOg3XmHj3oZb6dhIHjyMD8Ifex3w3hCbGbuQyDRSUkSQisXQaJpb4RN4Az+RxfQSdg
	MGzHCsG1d0Lb+U6pqYSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEtdY-00052J-Fx; Mon, 30 Sep 2019 11:14:40 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEtdN-00051T-CI
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 11:14:31 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id DDB6620274;
 Mon, 30 Sep 2019 13:14:25 +0200 (CEST)
Received: from [192.168.108.37] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id A199D20187;
 Mon, 30 Sep 2019 13:14:25 +0200 (CEST)
Subject: Re: France didn't want GSM encryption
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-19-ard.biesheuvel@linaro.org>
 <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
 <CH2PR20MB29680F87B32BBF0495720172CA860@CH2PR20MB2968.namprd20.prod.outlook.com>
 <CAHk-=wgR_KsYw2GmZwkG3GmtX6nbyj0LEi7rSqC+uFi3ScTYcw@mail.gmail.com>
 <MN2PR20MB297317D9870A3B93B5E506C9CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAHk-=wjr1w7x9Rjre_ALnDLASYNjsEHxu6VJpk4eUwZXN0ntqw@mail.gmail.com>
 <MN2PR20MB2973A696B92A8C5A74A738F1CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAHk-=wj9BSMzoDD31R-ymjGpkpt0u-ndX6+p0ZWsrJFDTAN+zg@mail.gmail.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <3e5347a2-9aa7-bffb-2343-42eda87a6c83@free.fr>
Date: Mon, 30 Sep 2019 13:14:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAHk-=wj9BSMzoDD31R-ymjGpkpt0u-ndX6+p0ZWsrJFDTAN+zg@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Mon Sep 30 13:14:25 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_041429_564825_81EED645 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Trimming recipients list ]

On 27/09/2019 18:23, Linus Torvalds wrote:

> It's not the crypto engine that is part of the untrusted hardware.
> It's the box itself, and the manufacturer, and you having to trust
> that the manufacturer didn't set up some magic knocking sequence to
> disable the encryption.
> 
> Maybe the company that makes them is trying to do a good job. But
> maybe they are based in a country that has laws that require
> backdoors.
> 
> Say, France. There's a long long history of that kind of thing.
> 
> It's all to "fight terrorism", but hey, a little industrial espionage
> is good too, isn't it? So let's just disable GSM encryption based on
> geographic locale and local regulation, shall we.
> 
> Yeah, yeah, GSM encryption wasn't all that strong to begin with, but
> it was apparently strong enough that France didn't want it.

Two statements above have raised at least one of my eyebrows.

1) France has laws that require backdoors.

2) France did not want GSM encryption.


The following article claims that it was the British who demanded that
A5/1 be weakened (not the algorithm, just the key size; which is what
the USgov did in the 90s).

https://www.aftenposten.no/verden/i/Olkl/Sources-We-were-pressured-to-weaken-the-mobile-security-in-the-80s


Additional references for myself

https://lwn.net/Articles/368861/
https://en.wikipedia.org/wiki/Export_of_cryptography_from_the_United_States
https://gsmmap.org/assets/pdfs/gsmmap.org-country_report-France-2017-06.pdf
https://gsmmap.org/assets/pdfs/gsmmap.org-country_report-France-2018-06.pdf
https://gsmmap.org/assets/pdfs/gsmmap.org-country_report-France-2019-08.pdf


As for your first claim, can you provide more information, so that I could
locate the law(s) in question? (Year the law was discussed, for example.)

I've seen a few propositions ("projet de loi") but none(?) have made it into
actual law, as far as I'm aware.

https://www.nextinpact.com/news/98039-loi-numerique-nkm-veut-backdoor-dans-chaque-materiel.htm
https://www.nextinpact.com/news/107546-lamendement-anti-huawei-porte-pour-backdoors-renseignement-francais.htm

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
