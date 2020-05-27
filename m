Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 635911E3D64
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 11:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=utD4mm7k3vfE2YAdG4PE8fNBvAhGk9Ji9skq6bWGOkg=; b=mzW7xIqjkck5V2
	BEXVMouGujICsQTFyK0FqpN8M2nrLK/zya94nk5KIA36if7CE61QeMrwSW669XAepe2NHS9y4kVoF
	M+aMIfHVdSFoq8vGBXD6zbWIp6SBuQS2STbCOW/v18cuRyPYHTXuqI5tei0mYg5/QwLRZfqB6O8dT
	jF57FhcUcaOjkqjBBC1NKZtyn/bhbIVnWyL/IAsnwSbfUOhBCQ4ELRTTDOJs96fxC8HHgc6mDoITE
	U1YNmTcmr+FXGG2gf8CrDubqrT3qMyiyJsiP5+O3nRMEp9gMX45lOPe9Dw1/6AW/0g9wtTZ/FQqrS
	sw/G8vtNK5KlNIPpymew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdsA1-0000v6-6Y; Wed, 27 May 2020 09:15:41 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jds9n-0000tz-7H
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 09:15:28 +0000
Received: by mail-qk1-x743.google.com with SMTP id b6so23598929qkh.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 02:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=idtnrQWeAURzpQW+RLs00G+O8A4gS3L+K9UkeXCQe20=;
 b=kaep8FtjTBescBuh/DTMipJrlsUmsVVNCeoJaIoHjvFY3aLX/ypieDP9Eq0bg2Z8Fy
 mfEtfW6eHGq4NWtk78hJA1GrV3b34qvVN1y21NxIWuPsmIIXM3kXfejRW4UodWTNTGQt
 YABx6/a5Ku1L3BTkJ0r9WGY0xs/SJ+8CxmdNMGjb3/7hEkYvKlwFZQmAKkojuQcYbqHm
 wfcdyvs6+MwWQTqgRRzcFX/xcVW3zkg99aMg/449QxobkNDo8rTRYi2IYoVyuomDKqhv
 sBoGhIIszOrZDFM6DGvgkQHYND20PdHpwXfvfZuf9WzJSYFFV0iDQC1JNV1jMqjJ2VlQ
 tvhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=idtnrQWeAURzpQW+RLs00G+O8A4gS3L+K9UkeXCQe20=;
 b=FVOaarArOluJUqm0ial911JEQspnEYtaNV31rFaSD+91vA9omUmIvoN7fKl4Og5O+I
 tYT5Fh8pfiLAEjs6tHu4Vw0Ua33X83rAF7+ocyHYraTvV3E2hhY8jQstpf3n9Y5P2TrS
 ROlFpJpo5dO8BXJBsAHsNVU+gEMiiRXXQIPsxDpnbGq84dTwF3sd5SgEDxFnK4FZPTBL
 MfyvtSw3jyesXG+TbhP5J1Mny9co485m/tGl0KPaMY7y/eTatNbJz/scvyjuBw9w8ges
 wjqBqr3hH1sYLqfUerUDFqlcpspVneW5X8oKBjIXGeS/YxKt63p8adk4pKiObadEwhnl
 jdXQ==
X-Gm-Message-State: AOAM530zn9IuokBVcF1TgzKjgUS5aJWn+TK74oZUBU5KpbtPJXLL/2Dh
 rtamgUnPuQjkjc7t7gq2mzY71cie+FX3z5nrmSwQdA==
X-Google-Smtp-Source: ABdhPJz2rYXRknrAa47G5ZoicHWOBJaEnkLv8Z2pCeyzrLZa3p9k5mhYAvQMKK0N2KMt5GCFK7O6dYRm2sJ476AKlKA=
X-Received: by 2002:a37:6851:: with SMTP id d78mr2994513qkc.86.1590570923313; 
 Wed, 27 May 2020 02:15:23 -0700 (PDT)
MIME-Version: 1.0
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
 <20200427072342.5499-1-jian-hong@endlessm.com>
 <20200428162152.ztsqp7nxqbwqrm6r@gilmour.lan>
 <CAPpJ_efvtVzb_hvoVOeaePh7UdE13wOiiGaDBH38cToB-yhkUg@mail.gmail.com>
 <20200507172158.cybtakpo6cxv6wcs@gilmour.lan>
 <CAPpJ_efxenmSXt2OXkhkQ1jDJ59tyWBDUvmpyOB-bfPMDENQZg@mail.gmail.com>
 <CAPpJ_ed9TMJjN8xS1_3saf5obQhULJSLNgQSAFxgiWM2QX9A7Q@mail.gmail.com>
 <20200526102018.kznh6aglpkqlp6en@gilmour.lan>
 <CAD8Lp467DiYWLwH6T1Jeq-uyN4VEuef-gGWw0_bBTtmSPr00Ag@mail.gmail.com>
 <20200527091335.7wc3uy67lbz7j4di@gilmour.lan>
In-Reply-To: <20200527091335.7wc3uy67lbz7j4di@gilmour.lan>
From: Daniel Drake <drake@endlessm.com>
Date: Wed, 27 May 2020 17:15:12 +0800
Message-ID: <CAD8Lp45ucK-yZ5G_DrUVA7rnxo58UF1LPUy65w2PCOcSxKx_Sg@mail.gmail.com>
Subject: Re: [PATCH v2 00/91] drm/vc4: Support BCM2711 Display Pipelin
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_021527_319584_FE9076B9 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org,
 devicetree <devicetree@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Jian-Hong Pan <jian-hong@endlessm.com>,
 Linux Upstreaming Team <linux@endlessm.com>, linux-clk@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 5:13 PM Maxime Ripard <maxime@cerno.tech> wrote:
> I'm about to send a v3 today or tomorrow, I can Cc you (and Jian-Hong) if you
> want.

That would be great, although given the potentially inconsistent
results we've been seeing so far it would be great if you could
additionally push a git branch somewhere.
That way we can have higher confidence that we are applying exactly
the same patches to the same base etc.

Thanks
Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
