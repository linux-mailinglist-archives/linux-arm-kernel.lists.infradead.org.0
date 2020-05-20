Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4D71DC33B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 01:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6lBwYLVAhF4KxaAJqfV8gdVo/ZGsuqrqrm+V/cGe3lY=; b=g1nmwO0GWBwvMa
	K3prROuV6Q8o5/d7xeplEcvwj3vOsv/Tj3Wdafc4vRyigudv0L6uT3QGd3wG9X31Es3SbbmnYOhj9
	iL1oeZHh2j1vuUZfVJfp679ABko1dG7pBFoeG0hCG4qvEFSoAPJ0uVjdCEFl7EP5Pm+gMfZvATbBh
	f8y3SG77WbPqCab1yHVZ7aGH7RatBqk3Gm8hIK5kc6QVKNhgWdrhpP5U9dQ0ra63dX34MNWDVUB74
	iNjHW7z5dwm91t89M3JOYX0+DlzStriDkCXmeKPPcqzyp4Lc9pu8L2fPpkr3o4ms/DpL+7kUqy4kr
	bhj/owQKiwhVfyopJ/0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbYW6-0001BW-SH; Wed, 20 May 2020 23:52:54 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbYVy-0001Ac-5i
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 23:52:47 +0000
Received: by mail-io1-f66.google.com with SMTP id j8so5290812iog.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 16:52:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3dbkyD/cvpqM50H27FORebvzPzcKiAhshHA3jHU7b0g=;
 b=V/5v/fWmhYKuwx/cF6z+0gJZE7AGszjGcJdLuWRxepJGR8B/xWyCzPHDYWD3wU8Zby
 yQoDRyf1FUxuBuuhCRRcthbXTWvhze+C87rxhU9K+oX0CKfLcmgykdq92lb6iZwaMwyl
 d0mUn9h2K5yBNsyNenaEpHz8gGWJlw51q+8ToFfYFCP9lWUSp3lu+0K8SRbr0Ps9yuuT
 mOZo2WfPMl3eWC5g28z6r9VwyMr1v7L3fxj7p/iuTnf0Ksq3QdrNYAoiFjP5/bft8X67
 W4aFl+pkqzmfItpHnsvnC2KIDpYztyftMvcUtHFqr6vIMW6MsuSs6FRc10pxjPiCThCq
 qGag==
X-Gm-Message-State: AOAM532+6EF5o2O8tyDCZKm8Syc8nJRNRhAFV1jMp4VP3H2LUYTQmNA2
 7J/qcE0KyAIMWD0mzy3byqMZ+UYM
X-Google-Smtp-Source: ABdhPJzrOL/HaarsDcrsFKQa35+CkgETT9wtPMlmt+oT5HBY6hCWRK0l7vd5ZLdzipX4nnsCtY4jLA==
X-Received: by 2002:a02:394d:: with SMTP id w13mr1584459jae.58.1590018763372; 
 Wed, 20 May 2020 16:52:43 -0700 (PDT)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com.
 [209.85.166.54])
 by smtp.gmail.com with ESMTPSA id f9sm2154006ile.39.2020.05.20.16.52.43
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 May 2020 16:52:43 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id 79so5363893iou.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 16:52:43 -0700 (PDT)
X-Received: by 2002:a5e:8b4b:: with SMTP id z11mr5539177iom.78.1590018762757; 
 Wed, 20 May 2020 16:52:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200518221904.GA22274@embeddedor>
 <202005181529.C0CB448FBB@keescook>
In-Reply-To: <202005181529.C0CB448FBB@keescook>
From: Li Yang <leoyang.li@nxp.com>
Date: Wed, 20 May 2020 18:52:21 -0500
X-Gmail-Original-Message-ID: <CADRPPNR-Croux9FgnrQJJmdF2jNnuAmC+2xMJSgSbkbRv9u8Mw@mail.gmail.com>
Message-ID: <CADRPPNR-Croux9FgnrQJJmdF2jNnuAmC+2xMJSgSbkbRv9u8Mw@mail.gmail.com>
Subject: Re: [PATCH] soc: fsl: qe: Replace one-element array and use
 struct_size() helper
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_165246_214235_DAE4A440 
X-CRM114-Status: GOOD (  30.33  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pku.leo[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 lkml <linux-kernel@vger.kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 5:57 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Mon, May 18, 2020 at 05:19:04PM -0500, Gustavo A. R. Silva wrote:
> > The current codebase makes use of one-element arrays in the following
> > form:
> >
> > struct something {
> >     int length;
> >     u8 data[1];
> > };
> >
> > struct something *instance;
> >
> > instance = kmalloc(sizeof(*instance) + size, GFP_KERNEL);
> > instance->length = size;
> > memcpy(instance->data, source, size);
> >
> > but the preferred mechanism to declare variable-length types such as
> > these ones is a flexible array member[1][2], introduced in C99:
> >
> > struct foo {
> >         int stuff;
> >         struct boo array[];
> > };
> >
> > By making use of the mechanism above, we will get a compiler warning
> > in case the flexible array does not occur last in the structure, which
> > will help us prevent some kind of undefined behavior bugs from being
> > inadvertently introduced[3] to the codebase from now on. So, replace
> > the one-element array with a flexible-array member.
> >
> > Also, make use of the new struct_size() helper to properly calculate the
> > size of struct qe_firmware.
> >
> > This issue was found with the help of Coccinelle and, audited and fixed
> > _manually_.
> >
> > [1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
> > [2] https://github.com/KSPP/linux/issues/21
> > [3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")
> >
> > Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> > ---
> >  drivers/soc/fsl/qe/qe.c | 4 ++--
> >  include/soc/fsl/qe/qe.h | 2 +-
> >  2 files changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
> > index 447146861c2c1..2df20d6f85fa4 100644
> > --- a/drivers/soc/fsl/qe/qe.c
> > +++ b/drivers/soc/fsl/qe/qe.c
> > @@ -448,7 +448,7 @@ int qe_upload_firmware(const struct qe_firmware *firmware)
> >       unsigned int i;
> >       unsigned int j;
> >       u32 crc;
> > -     size_t calc_size = sizeof(struct qe_firmware);
> > +     size_t calc_size;
> >       size_t length;
> >       const struct qe_header *hdr;
> >
> > @@ -480,7 +480,7 @@ int qe_upload_firmware(const struct qe_firmware *firmware)
> >       }
> >
> >       /* Validate the length and check if there's a CRC */
> > -     calc_size += (firmware->count - 1) * sizeof(struct qe_microcode);
> > +     calc_size = struct_size(firmware, microcode, firmware->count);
> >
> >       for (i = 0; i < firmware->count; i++)
> >               /*
> > diff --git a/include/soc/fsl/qe/qe.h b/include/soc/fsl/qe/qe.h
> > index e282ac01ec081..3feddfec9f87d 100644
> > --- a/include/soc/fsl/qe/qe.h
> > +++ b/include/soc/fsl/qe/qe.h
> > @@ -307,7 +307,7 @@ struct qe_firmware {
> >               u8 revision;            /* The microcode version revision */
> >               u8 padding;             /* Reserved, for alignment */
> >               u8 reserved[4];         /* Reserved, for future expansion */
> > -     } __attribute__ ((packed)) microcode[1];
> > +     } __packed microcode[];
> >       /* All microcode binaries should be located here */
> >       /* CRC32 should be located here, after the microcode binaries */
> >  } __attribute__ ((packed));
> > --
> > 2.26.2
> >
>
> Hm, looking at this code, I see a few other things that need to be
> fixed:
>
> 1) drivers/tty/serial/ucc_uart.c does not do a be32_to_cpu() conversion
>    on the length test (understandably, a little-endian system has never run
>    this code since it's ppc specific), but it's still wrong:
>
>         if (firmware->header.length != fw->size) {
>
>    compare to the firmware loader:
>
>         length = be32_to_cpu(hdr->length);
>
> 2) drivers/soc/fsl/qe/qe.c does not perform bounds checking on the
>    per-microcode offsets, so the uploader might send data outside the
>    firmware buffer. Perhaps:

We do validate the CRC for each microcode, it is unlikely the CRC
check can pass if the offset or length is not correct.  But you are
probably right that it will be safer to check the boundary and fail
quicker before we actually start the CRC check.  Will you come up with
a formal patch or you want us to deal with it?

>
>
> diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
> index 447146861c2c..c4e0bc452f03 100644
> --- a/drivers/soc/fsl/qe/qe.c
> +++ b/drivers/soc/fsl/qe/qe.c
> @@ -451,6 +451,7 @@ int qe_upload_firmware(const struct qe_firmware *firmware)
>         size_t calc_size = sizeof(struct qe_firmware);
>         size_t length;
>         const struct qe_header *hdr;
> +       void *firmware_end;
>
>         if (!firmware) {
>                 printk(KERN_ERR "qe-firmware: invalid pointer\n");
> @@ -491,19 +492,39 @@ int qe_upload_firmware(const struct qe_firmware *firmware)
>                 calc_size += sizeof(__be32) *
>                         be32_to_cpu(firmware->microcode[i].count);
>
> -       /* Validate the length */
> +       /* Validate total length */
>         if (length != calc_size + sizeof(__be32)) {
>                 printk(KERN_ERR "qe-firmware: invalid length\n");
>                 return -EPERM;
>         }
>
>         /* Validate the CRC */
> -       crc = be32_to_cpu(*(__be32 *)((void *)firmware + calc_size));
> +       firmware_end = (void *)firmware + calc_size;
> +       crc = be32_to_cpu(*(__be32 *)firmware_end);
>         if (crc != crc32(0, firmware, calc_size)) {
>                 printk(KERN_ERR "qe-firmware: firmware CRC is invalid\n");
>                 return -EIO;
>         }
>
> +       /* Validate ucode lengths and offsets */
> +       for (i = 0; i < firmware->count; i++) {
> +               const struct qe_microcode *ucode = &firmware->microcode[i];
> +               __be32 *code;
> +               size_t count;
> +
> +               if (!ucode->code_offset)
> +                       continue;
> +
> +               code = (void *)firmware + be32_to_cpu(ucode->code_offset);
> +               count = be32_to_cpu(ucode->count) * sizeof(*code);
> +
> +               if (code < firmware || code >= firmware_end ||
> +                   code + count < firmware || code + count >= firmware_end) {
> +                       printk(KERN_ERR "qe-firmware: invalid ucode offset\n");
> +                       return -EIO;
> +               }
> +       }
> +
>         /*
>          * If the microcode calls for it, split the I-RAM.
>          */
>
>
> I haven't tested this.
>
>
> --
> Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
