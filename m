Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 020FA1DC347
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 01:57:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AdaI3bwy9XUonDc9ozhvxeTQ2F/Q94cl/N1WegMiWCA=; b=S+aBBhzd/IBpIj
	mkBfI2iHjegjgAzEwnlWcYBaqhLSd6PdhDQ6uAy/75+ogteisOlqr9LR0RHo0KD86ZaRY4/tsS9XG
	b3y6NdVy8P9VMWojLE18r0s5YlPNXm3HS+Qy4RRYDeC8qP2g3466xNDi457RSW4HFl7khXOa2C9xM
	wEKwI7feibBFqKNNTSc4krUBvHQ2cW7F7vuM7lIOtFcYIo0YX9WfILhnazWhJpzT4l+LmVLpcdQpv
	w2Jlk/DrWJhJE1gJn822xuhj+9BSsOPgI4V2/sKjYBWoY/7g+x3gwjmBcV8tNSsypXkaifR37OdTJ
	wP+TvBfdimwHH2QNRyFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbYaI-0004Nu-3B; Wed, 20 May 2020 23:57:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbYa8-0004Li-Ay
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 23:57:06 +0000
Received: from embeddedor (unknown [189.207.59.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 166D220708;
 Wed, 20 May 2020 23:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590019023;
 bh=v7XRAei6caMUt9mwpfUP/znAL4BWZg9yJ5pZUd0ePA4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X+PjX1NeHzxgy1u1aRrGaac3+4gOvVnDCtLRxCQYkA2MoltG6ntk4otgzbtsPep9U
 5Qc6nY6RQ4ZyDRlp+16zZ8NOSdLASr/003a4i4GFeEpS8AJfeFUJRZ16e/Gc/CG93f
 /xsVyU16tOqa4srbecAXhwSooqflWlLhtuJaK4Nw=
Date: Wed, 20 May 2020 19:01:52 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH] soc: fsl: qe: Replace one-element array and use
 struct_size() helper
Message-ID: <20200521000152.GC14138@embeddedor>
References: <20200518221904.GA22274@embeddedor>
 <202005181529.C0CB448FBB@keescook>
 <CADRPPNR-Croux9FgnrQJJmdF2jNnuAmC+2xMJSgSbkbRv9u8Mw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADRPPNR-Croux9FgnrQJJmdF2jNnuAmC+2xMJSgSbkbRv9u8Mw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_165704_419978_D6CED48F 
X-CRM114-Status: GOOD (  33.93  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 lkml <linux-kernel@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 06:52:21PM -0500, Li Yang wrote:
> On Mon, May 18, 2020 at 5:57 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Mon, May 18, 2020 at 05:19:04PM -0500, Gustavo A. R. Silva wrote:
> > > The current codebase makes use of one-element arrays in the following
> > > form:
> > >
> > > struct something {
> > >     int length;
> > >     u8 data[1];
> > > };
> > >
> > > struct something *instance;
> > >
> > > instance = kmalloc(sizeof(*instance) + size, GFP_KERNEL);
> > > instance->length = size;
> > > memcpy(instance->data, source, size);
> > >
> > > but the preferred mechanism to declare variable-length types such as
> > > these ones is a flexible array member[1][2], introduced in C99:
> > >
> > > struct foo {
> > >         int stuff;
> > >         struct boo array[];
> > > };
> > >
> > > By making use of the mechanism above, we will get a compiler warning
> > > in case the flexible array does not occur last in the structure, which
> > > will help us prevent some kind of undefined behavior bugs from being
> > > inadvertently introduced[3] to the codebase from now on. So, replace
> > > the one-element array with a flexible-array member.
> > >
> > > Also, make use of the new struct_size() helper to properly calculate the
> > > size of struct qe_firmware.
> > >
> > > This issue was found with the help of Coccinelle and, audited and fixed
> > > _manually_.
> > >
> > > [1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
> > > [2] https://github.com/KSPP/linux/issues/21
> > > [3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")
> > >
> > > Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> > > ---
> > >  drivers/soc/fsl/qe/qe.c | 4 ++--
> > >  include/soc/fsl/qe/qe.h | 2 +-
> > >  2 files changed, 3 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
> > > index 447146861c2c1..2df20d6f85fa4 100644
> > > --- a/drivers/soc/fsl/qe/qe.c
> > > +++ b/drivers/soc/fsl/qe/qe.c
> > > @@ -448,7 +448,7 @@ int qe_upload_firmware(const struct qe_firmware *firmware)
> > >       unsigned int i;
> > >       unsigned int j;
> > >       u32 crc;
> > > -     size_t calc_size = sizeof(struct qe_firmware);
> > > +     size_t calc_size;
> > >       size_t length;
> > >       const struct qe_header *hdr;
> > >
> > > @@ -480,7 +480,7 @@ int qe_upload_firmware(const struct qe_firmware *firmware)
> > >       }
> > >
> > >       /* Validate the length and check if there's a CRC */
> > > -     calc_size += (firmware->count - 1) * sizeof(struct qe_microcode);
> > > +     calc_size = struct_size(firmware, microcode, firmware->count);
> > >
> > >       for (i = 0; i < firmware->count; i++)
> > >               /*
> > > diff --git a/include/soc/fsl/qe/qe.h b/include/soc/fsl/qe/qe.h
> > > index e282ac01ec081..3feddfec9f87d 100644
> > > --- a/include/soc/fsl/qe/qe.h
> > > +++ b/include/soc/fsl/qe/qe.h
> > > @@ -307,7 +307,7 @@ struct qe_firmware {
> > >               u8 revision;            /* The microcode version revision */
> > >               u8 padding;             /* Reserved, for alignment */
> > >               u8 reserved[4];         /* Reserved, for future expansion */
> > > -     } __attribute__ ((packed)) microcode[1];
> > > +     } __packed microcode[];
> > >       /* All microcode binaries should be located here */
> > >       /* CRC32 should be located here, after the microcode binaries */
> > >  } __attribute__ ((packed));
> > > --
> > > 2.26.2
> > >
> >
> > Hm, looking at this code, I see a few other things that need to be
> > fixed:
> >
> > 1) drivers/tty/serial/ucc_uart.c does not do a be32_to_cpu() conversion
> >    on the length test (understandably, a little-endian system has never run
> >    this code since it's ppc specific), but it's still wrong:
> >
> >         if (firmware->header.length != fw->size) {
> >
> >    compare to the firmware loader:
> >
> >         length = be32_to_cpu(hdr->length);
> >
> > 2) drivers/soc/fsl/qe/qe.c does not perform bounds checking on the
> >    per-microcode offsets, so the uploader might send data outside the
> >    firmware buffer. Perhaps:
> 
> We do validate the CRC for each microcode, it is unlikely the CRC
> check can pass if the offset or length is not correct.  But you are
> probably right that it will be safer to check the boundary and fail
> quicker before we actually start the CRC check.  Will you come up with
> a formal patch or you want us to deal with it?
> 

Li,

I will send a proper patch for this.

Thanks
--
Gustavo

> >
> >
> > diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
> > index 447146861c2c..c4e0bc452f03 100644
> > --- a/drivers/soc/fsl/qe/qe.c
> > +++ b/drivers/soc/fsl/qe/qe.c
> > @@ -451,6 +451,7 @@ int qe_upload_firmware(const struct qe_firmware *firmware)
> >         size_t calc_size = sizeof(struct qe_firmware);
> >         size_t length;
> >         const struct qe_header *hdr;
> > +       void *firmware_end;
> >
> >         if (!firmware) {
> >                 printk(KERN_ERR "qe-firmware: invalid pointer\n");
> > @@ -491,19 +492,39 @@ int qe_upload_firmware(const struct qe_firmware *firmware)
> >                 calc_size += sizeof(__be32) *
> >                         be32_to_cpu(firmware->microcode[i].count);
> >
> > -       /* Validate the length */
> > +       /* Validate total length */
> >         if (length != calc_size + sizeof(__be32)) {
> >                 printk(KERN_ERR "qe-firmware: invalid length\n");
> >                 return -EPERM;
> >         }
> >
> >         /* Validate the CRC */
> > -       crc = be32_to_cpu(*(__be32 *)((void *)firmware + calc_size));
> > +       firmware_end = (void *)firmware + calc_size;
> > +       crc = be32_to_cpu(*(__be32 *)firmware_end);
> >         if (crc != crc32(0, firmware, calc_size)) {
> >                 printk(KERN_ERR "qe-firmware: firmware CRC is invalid\n");
> >                 return -EIO;
> >         }
> >
> > +       /* Validate ucode lengths and offsets */
> > +       for (i = 0; i < firmware->count; i++) {
> > +               const struct qe_microcode *ucode = &firmware->microcode[i];
> > +               __be32 *code;
> > +               size_t count;
> > +
> > +               if (!ucode->code_offset)
> > +                       continue;
> > +
> > +               code = (void *)firmware + be32_to_cpu(ucode->code_offset);
> > +               count = be32_to_cpu(ucode->count) * sizeof(*code);
> > +
> > +               if (code < firmware || code >= firmware_end ||
> > +                   code + count < firmware || code + count >= firmware_end) {
> > +                       printk(KERN_ERR "qe-firmware: invalid ucode offset\n");
> > +                       return -EIO;
> > +               }
> > +       }
> > +
> >         /*
> >          * If the microcode calls for it, split the I-RAM.
> >          */
> >
> >
> > I haven't tested this.
> >
> >
> > --
> > Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
