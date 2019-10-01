Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64599C409C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 21:02:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MmwfSDhicrZlrp4bIDWJ/qNP+EFJ4NxQcvVEIEaA7eo=; b=uTTC+skuhdG71m
	9++YEQWu5SQF1+g2qSR4/X0vKZTgQTgpA75ZCZc+GmbrQDeHlxit2kfMf0Y/B3k26nugA1VMWuu72
	XbizQkhNDsbXpjN9gCoopyeUkuTnJUTTZnZbc/LqHlK4Xz6ipNw6yX1jgDbLS8jbZKUKZ7pLenIhC
	ON1KRlI6Z8sLXmooOKcBIBe32enMNoZ7bHeHfYmuDwfjWCd2ZU54G45qrZau7kDCWMwMPxtp3wbIC
	k+8YUdvL1krrcu9PZHV1O4Y7UKheHpHrlRMh6TisTzgMXJrSheKr8E9isfWPesX7FtMUa4toBc20r
	jGhOCjPcuTQdD2g/ZYEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFNQ6-0008J9-5d; Tue, 01 Oct 2019 19:02:46 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFNPz-0008Ij-G7
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 19:02:40 +0000
Received: by mail-qk1-f193.google.com with SMTP id u186so12348660qkc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 12:02:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RtRzWD7zEbjJ2A4VYjRF/6/NQuaf29B5zVdZT4/GSfc=;
 b=s6iw77oHJHE0tkc/A8FQ11leWWdRsnPqNE3GsnvTYkGSdwiXnltRP3Unk26VhpAmky
 JXyZtjA65IGCBMfaON8S0dPUNVFtaydqsB4A96R4VSdMv+jOpl54zwE1sZ7Q4cPT6yso
 WXV5rNFbsJ55TNOVvpucEMnuHjeiC0EC6uG3i/BLNqmDOuk4CyUtFS3pSlN8fkYCD2Qm
 4V0vxU5r3Ifdhb6/M8SF3fRBItZ5rcds15oEv+1EjvhUgOEZUh3Fp+9CMTOrVLu49wKp
 i/BZjBoA1p8v8BlXQuEkbWAjk0qKASMwVbF0Pqyzfo8TWILoNiL+Ko2818bOcn9fyvaC
 NSYg==
X-Gm-Message-State: APjAAAU40NcNujSm7tjTinu5jN4lA8yhSadHI47HgAoVAZ1ZkeoxLEUg
 L1CJ6TVp0Nbsz95brWVzNEhyKBMxx70Y8543NfU=
X-Google-Smtp-Source: APXvYqyKVBTpwzORgepB82eF9G6BF0XWbuGMTxfsXAs4ovRtl9RXDG3EDKzynC6mRl7lAXlZww4fFPocBSuw3EMLKmw=
X-Received: by 2002:a37:a858:: with SMTP id r85mr7757595qke.394.1569956558234; 
 Tue, 01 Oct 2019 12:02:38 -0700 (PDT)
MIME-Version: 1.0
References: <20191001142116.1172290-1-arnd@arndb.de>
 <20191001175501.GA14762@sirena.co.uk>
In-Reply-To: <20191001175501.GA14762@sirena.co.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 1 Oct 2019 21:02:22 +0200
Message-ID: <CAK8P3a2idD4as-9ns0NrLjYGYSEc0=6A67VaNXDacA3-tJEr0Q@mail.gmail.com>
Subject: Re: [PATCH] ASoC: atmel: fix atmel_ssc_set_audio link failure
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_120239_537442_32F1114A 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 1, 2019 at 7:55 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Tue, Oct 01, 2019 at 04:20:55PM +0200, Arnd Bergmann wrote:
> > The ssc audio driver can call into both pdc and dma backends.  With the
> > latest rework, the logic to do this in a safe way avoiding link errors
> > was removed, bringing back link errors that were fixed long ago in commit
> > 061981ff8cc8 ("ASoC: atmel: properly select dma driver state") such as
>
> This doesn't apply against current code, please check and resend.

I looked at "git://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git
for-next"
as well as the for-linus branch in the same place, but found no
conflicting changes
in there compared to v5.4-rc1. Am I looking at the right tree?

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
