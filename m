Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F67B15CEE5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 01:13:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egbX5Eq1wdBfzqbXgTrmJahOk22VDhJYMj7zxZOTGdU=; b=u6DzGdrSL9xP6r
	LNefDXGfZS5yhqQc9VnEovM6rpuRG5ruvQbx9RPLqV86B5QX8EayFuHvvhoZ++sLS3+WHc7Wao8V7
	aYrSz1EB0eUAf4WeD7Tsy24L3wC1bAxvTrAzAM2ccONG6CGDSeX94tHOhROmLD1IDnkvYMolH4EEt
	LFqh50dIMt7sQcFSzcs9LYsEYbQ+M9ZH3DgQdCLMm28Ic8hW5gwhCujLgVm7XvIJ79F9AkUN0p0O6
	aZ2H2Z3XOKHS+a7u02oLqXO3QA6eW4XwB2aAzWS7MaBHp1/8rsNhOSfP6sYQzc1TZWuyrdNV3B+Uj
	nofKxMA/hfH5Lc5J2Qcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ObV-0007CD-HB; Fri, 14 Feb 2020 00:13:09 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ObM-0007Bj-Pf
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 00:13:02 +0000
Received: by mail-qt1-x841.google.com with SMTP id c5so5830661qtj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 16:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=U2uxh4cJsZDeQkDsJrMsdoCY2KIVy1rPr4keDyaSDXM=;
 b=YRKZVX8PMmQU9cU15U3HR+LuxuSdQ7O9wlhZFbzGwaaNFgRE1XgdHZs1kUwYleVGU3
 Kr2+fQnEOuj1p1mjtNvAVGPF+oP0i7C7O7PpYjvwfFuyFKR0V/bEIqOnnam93vz8oYT4
 OC9Prb/5NFO2S2u6+NDsAVCiuPVqipSZzLUhbv5eDRucgiN6tTJ9Ni0SdcnpDpi/i89k
 kFzMRIqzMGGZ9tgdgmbxe2tAkiQatCe2ZgBZvyUJ00ntK1ilCsPetO+4NvAZfuk+FAi6
 9kynapw5hzIpbWvQWxGNOi7k2JXzJSNUabd+L4qP6mazhSwIcKgMA3Pf50quFu5Yua5d
 Q8iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=U2uxh4cJsZDeQkDsJrMsdoCY2KIVy1rPr4keDyaSDXM=;
 b=ZeA5Rts3xzcPDs9txytqHliz259uV8pbnBFVDgQqq2L7FZBNlvRXPnd8wmm6DFoU5X
 TpmN5uwK0UUr1NNQCkiaBYe6IIkHyoeaEwBQfnmJNc3mtlezEoanmlv+2xdfcQZXUWbq
 HTl3n3IsyiPZagfAKzgR223bU34zRNfp+LlC3VxP2axDXRa3Fhmo0Dg2xm3Uk9n+iIk6
 TFqq7zTsxC8Os5eLRUpWrFm66kNywkMoK4HwgAGv++yPaHgNsTMLYaZ/gIvRgQe7z5oV
 XMPxPOv/sRfOUo8bodv/Q3OYn3ZacEvYgaTd+RjPXtmcFMuxrH0DVln82N+qqhlwFy5K
 +cAA==
X-Gm-Message-State: APjAAAUow4qeFZ8W2EEYdYvhgEJfNdRfJbbQzLhu/52Emb5dh/2XoRhr
 9Sofl5G0t5+eoWr4v5yN3P8=
X-Google-Smtp-Source: APXvYqy3086oi1D+oGgCHhgBu7bWRlwhFonU6wdS6ywe/LTVnELLQMhFT96nu4gmNs7VNZe7tIExMQ==
X-Received: by 2002:aed:2783:: with SMTP id a3mr575335qtd.284.1581639179551;
 Thu, 13 Feb 2020 16:12:59 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id v80sm2175993qka.15.2020.02.13.16.12.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 16:12:59 -0800 (PST)
From: Arvind Sankar <nivedita@alum.mit.edu>
X-Google-Original-From: Arvind Sankar <arvind@rani.riverdale.lan>
Date: Thu, 13 Feb 2020 19:12:57 -0500
To: Arvind Sankar <nivedita@alum.mit.edu>
Subject: Re: [RFC PATCH 0/3] efi/x86: add support for generic EFI mixed mode
 boot
Message-ID: <20200214001257.GB3054227@rani.riverdale.lan>
References: <20200213145928.7047-1-ardb@kernel.org>
 <20200213175317.GC1400002@rani.riverdale.lan>
 <CAKv+Gu-78w=gs+D-eS5iBX7e3zL57XBOe1vdW=Bkk=EcA+_FQA@mail.gmail.com>
 <20200213184752.GA1424509@rani.riverdale.lan>
 <CAKv+Gu9Azn9oGHaTqv+-Foj4=b5Y-JradERq4NC5V9XOaVjSKQ@mail.gmail.com>
 <20200214001048.GA3054227@rani.riverdale.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200214001048.GA3054227@rani.riverdale.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_161300_832416_A6DBF87C 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [niveditas98[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [niveditas98[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ingo Molnar <mingo@kernel.org>, linux-efi <linux-efi@vger.kernel.org>,
 Alexander Graf <agraf@csgraf.de>, Daniel Kiper <daniel.kiper@oracle.com>,
 Matthew Garrett <mjg59@google.com>, Michael Brown <mbrown@fensystems.co.uk>,
 Hans de Goede <hdegoede@redhat.com>, Peter Jones <pjones@redhat.com>,
 Leif Lindholm <leif@nuviainc.com>, Laszlo Ersek <lersek@redhat.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 07:10:49PM -0500, Arvind Sankar wrote:
> On Thu, Feb 13, 2020 at 10:36:14PM +0000, Ard Biesheuvel wrote:
> > On Thu, 13 Feb 2020 at 19:47, Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > On Thu, Feb 13, 2020 at 05:55:44PM +0000, Ard Biesheuvel wrote:
> > > > On Thu, 13 Feb 2020 at 18:53, Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > > > > As an alternative to the new section, how about having a CONFIG option
> > > > > to emit the 64-bit kernel with a 32-bit PE header instead, which would
> > > > > point to efi32_pe_entry? In that case it could be directly loaded by
> > > > > existing firmware already. You could even have a tool that can mangle an
> > > > > existing bzImage's header from 64-bit to 32-bit, say using the newly
> > > > > added kernel_info structure to record the existence and location of
> > > > > efi32_pe_entry.
> > > > >
> > > >
> > > > That wouldn't work with, say, signed distro kernels.
> > >
> > > No, the idea would be that the distro would distribute two signed
> > > images, one 32-bit and one 64-bit, which are identical except for the
> > > header. At install time, the installer chooses based on the system's
> > > firmware bit-ness.
> > >
> > 
> > I guess it would be possible, but then we'd need two different images
> > while today, we can run the same image on both kinds of firmwares. The
> > only thing I am trying to do is remove all the quirky bootparams stuff
> > from the loader so that we can switch to LoadImage
> 
> Yeah, but doing that will allow you to boot directly from firmware on
> existing machines, and only one image needs to be chosen at install
> time, so it just adds a few MiB to the package. I guess most people will
> still use a boot manager or loader that can be easily enhanced to use
> LoadImage and the new section, but it would be nice to have the option
> to avoid that.

Also not quite today, right? You still need this patchset and the
modifications to bootloaders to get away with one image.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
