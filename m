Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0712A94C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 12:45:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4XVUBmBCcLsO7FgAxgjbgKeaVSFmDuONZziOG+KGGo=; b=GcklPz24YaABQs
	aLYFVh30yK92w1WauZPkzIjeboyxsYxKJEqGeSw6Hvx0wUR05DTywJ8/HBByiOJB5+KcTtzimvCmt
	nMI/UyXcKCUVTR1mkOWzO+j2COzw9/0r4aQcZbejQheeawf1bQBivSVwv/oY2EsVbF7UVOksNN9Vo
	OtdgY+OlyEnW/uE8uDckEI2O8mX7abGybf0kh9uzQIU+tcgYJX1/tvvndyFg2AbQybd3RChhJzR8p
	ZEPNpzX2rg1G+xJ3aFFA3Cr9E5eRfMRri3tGXm0n+M79tzM1aw6e28UUXQr+teZvudaS0ewDkbp8c
	9rHPkWW9DoZczvMYxMhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUqeR-0004bL-Ru; Sun, 26 May 2019 10:45:15 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUqeL-0003k9-8E
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 10:45:10 +0000
Received: by mail-it1-x144.google.com with SMTP id a186so12776682itg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 03:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9fy8gWLtD7tKjEdQdS509f8xv6me4+FFE+am99zi0rI=;
 b=a9T0uzguTnCnlhbkVr9UzT4r+8a/gTzmLzrFtP+7rrJKD0GnyENIvYyb3qEgETGKpB
 kwAbe9XChuchkowsduTR1dAo0trFNQXTS/Xt3miMRBgXVWUxbrGIRu5S6SzF2Zp8rYtJ
 Q/5fzSrUIMOnQTHQKcQ4E4GdjcqBZP4nSZBkXFrq5fksfN2DlTkwLI/Oh71aCK1f5RzO
 wpjy1LCO19MzSSZg/UDYHj9q4CC+KT7fLegE5FFHyqH17w0xA+Otl/y0GjqR0x85TH3x
 B4kEnJXhGdhPQQbzgWjbtUhF4kTztoPlsNmEXu3C83LwSDN68y/4OYk7HjmDkHRbiLKV
 QOHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9fy8gWLtD7tKjEdQdS509f8xv6me4+FFE+am99zi0rI=;
 b=R0F+bxjHj4qStvfMIjG5r2Fra+Kjcb16n/zAwIXpaVLifAM2sYYkIgD9ZCFlLM+SkT
 YyW0tttJY/8Sbjkb0KAgKiu9l4y6f/UtQhCdn5h45LdWOukl0KwV8nOt/u79oOaDQpSo
 6fBApmYkTXG5KsZf/uq2hjffgRgA36oxorZZ9UcnH0w0rt8x7unL2PWHlbUbhJJ7u1Kw
 0VPaS4QymhSgLLbGkArn4/GVb01pcvm7tFXrSFDckjUwU7fMxcIwtZDbG24DKC6lDGq5
 1CMqNrs5BRwJeDVBoeEcpQcZbsJYTMFJ+mZoS5tkQQFHl4RO0GMktHJeAldxnP+7FjOe
 +Xvw==
X-Gm-Message-State: APjAAAUj1QHsbDT/EsI90OSaZOnqwlyAHXBebIj5bonb7ghbXIuksYhR
 5QMrsHRbACujMO2Bw6Jtc/VwDYJ7WH+akRxgZ9k=
X-Google-Smtp-Source: APXvYqz2GtYqwV2gwx+x0jxW5tmL1/nj2VLboXOndK+rGxzpVZjRwA8eUxvDTQsBObSIdpahkPn5eM6c1BpsaEuFgc8=
X-Received: by 2002:a24:29cd:: with SMTP id
 p196mr26570376itp.116.1558867504370; 
 Sun, 26 May 2019 03:45:04 -0700 (PDT)
MIME-Version: 1.0
References: <0ae6261e-96b3-cf8b-d523-a6b8851c951b@gmx.net>
In-Reply-To: <0ae6261e-96b3-cf8b-d523-a6b8851c951b@gmx.net>
From: =?UTF-8?B?QW50dGkgU2VwcMOkbMOk?= <a.seppala@gmail.com>
Date: Sun, 26 May 2019 13:44:28 +0300
Message-ID: <CAKv9HNaJg3OB3DrC_aJe0M97dFP9A0_Jew_wFqReHvzDoFF+sg@mail.gmail.com>
Subject: Re: usb: dwc2: RODATA_FULL_DEFAULT_ENABLED causes kernel oops
To: Stefan Wahren <wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_034509_330007_1061B926 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (a.seppala[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Artur Petrosyan <Arthur.Petrosyan@synopsys.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, Minas Harutyunyan <hminas@synopsys.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 26 May 2019 at 13:11, Stefan Wahren <wahrenst@gmx.net> wrote:
>
> Hi,
>
> i want to remind about an issue which was originally reported by Wayne
> Piekarski [1]. I'm able to reproduce this oops with Mainline Linux 5.0.2
> on a Raspberry Pi 3B+ (arm64/defconfig) and according to Jan Kratochvil
> [2] this applies to 5.1.0 and 5.2.0.
>
> The crash is reproducible since commit c55191e96ca ("arm64: mm: apply
> r/o permissions of VM areas to its linear alias as well"), but the root
> cause of the crash was introduced much earlier with commit 56406e017a88
> ("usb: dwc2: Fix DMA alignment to start at allocated boundary").
>
> I tested successfully the following workarounds with the RPi 3B+:
>
> 1) Disable RODATA_FULL_DEFAULT_ENABLED
>
> 2) revert commit 56406e017a88 ("usb: dwc2: Fix DMA alignment to start at
> allocated boundary")
>
> It would be nice if someone can come up with a proper solution.
>
> Regards
> Stefan
>
> [1] - https://marc.info/?l=linux-usb&m=155440243702650&w=2
> [2] - https://bugzilla.kernel.org/show_bug.cgi?id=203149
>

Hello.

This is just a shot in the dark but have you tried to apply DMA cache
alignment issue fix [1] as a third workaround alternative?
If it helps the fix should be merged upstream.

[1] - https://patchwork.kernel.org/patch/10817377/

Br,
-- 
Antti

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
