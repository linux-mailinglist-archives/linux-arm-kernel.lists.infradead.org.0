Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD111569FC
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Feb 2020 12:36:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWOo2jNWz/tEBe0rMpQLb4foDb6XZCffSpoyrjJTXC8=; b=rAb4hmRnpd+67s
	iPpEx1Xlv3LG+C8QvF2fPtY6MwKjylGZsFGcY3MwrLUFGQixxNiUB1K9zAuBavH7iqQYZKWr/uPVv
	nzfV8o8XQZa6aMaGn6LP0Izx/BtD/SrYxUqr3XytgWScfE/ubzW7ZhBVQp2adU6kxLOvq5zRomnya
	Oyy0QWFwndulCQvba8O6MqC9bUnrjBAwI8ZlIS7ClbpZeCBJhjuR6eZNH9EbqySeIqayqnCmQwL+H
	Nik8dkylQdfwhSAxZ2DWsFeknSIyD4esf1mp5KDNQ5y7URSELXZYwRTzQfGYyWNA4N/lEJY4B4HHi
	1bC2edtBLP6Z3lDJQ17Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0ksY-0006qI-9q; Sun, 09 Feb 2020 11:35:58 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0ksR-0006pk-S6
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Feb 2020 11:35:53 +0000
Received: by mail-wm1-x344.google.com with SMTP id b17so7446291wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Feb 2020 03:35:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B0IdXZltvvU3REYmb4R5iXSctuV1F7mmZGfNkNXsTGQ=;
 b=oqwUw25QDsnczj0ffV1lgqOR9ummqiOBmmJVUv+PwjDYcp9/9TtJJ1L4SXVli4DSaU
 VrJc5H28RBQNglcoTCexAUZfzd7TKkPytR4mwFbhyR96K+v3RfcnNactz1chjjxsVHdu
 KgadqaKNZ25jqh/j+ttkUB62atGbSYltdJcRRAAATds0zJydBX3EPAF5glBYOqFD1QBY
 jIOQtiinuht5uAM5wKXnPZ2y1TFeMyBuC58JhV/Qac5i+xPsm2/j4E6kvGEEFAE5v/DS
 4PIrVLMKMlKJcuIWNoc+n8FcwLfo0aISGX99CZ1tTok19HfI4Du9zq/SYf48g4EuNzjh
 GC9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B0IdXZltvvU3REYmb4R5iXSctuV1F7mmZGfNkNXsTGQ=;
 b=bFpWwltDggUtdaVOyLcQcVyHUZc8rtxyLnDTSnZcoAWoRFsnaFWBm4ZDRjnfqYLi5P
 lc8CXxmByFKwJiTVnu1cKOBV4n3IgEEvhTkZvEYsItTOeByfK6yxM0fuhGNwGoFyx4cP
 dp3NNa4wgS7LNLSuRYK7PYix0wmqwrurPk017Ix1aN7oa4qStejEInafccfuTrp6VTsI
 5beHCJmdsi9GFoTsWvKeUPH2j+0oqDcTdU5cc1ItMOi4IU1brs1wTqLjGc4jnw0y7XEN
 D70u6IvlVjTcfSzlJ86Gnn6HrzyxgQHzofTaeVB+SHH/VRBn6NBlb4TDwmTEdW0DXBQV
 527A==
X-Gm-Message-State: APjAAAXdCdYEGBlZPW+WsY+CgmM/062L7LHLBQWBT2Z5tugj/07VXGA5
 tKRToYS9Qe6XSqEX73kIDLbSlosp10wzuK1jBoelKg==
X-Google-Smtp-Source: APXvYqya0smYjoKAUL0KrnH+vxJTYrcEJsBqPunbsV7AjIOwR3KkMPb6XPpVGk4o58xfE9zr1zXzsWz6IeFW0bbAR2Y=
X-Received: by 2002:a1c:bc46:: with SMTP id m67mr9277922wmf.40.1581248144864; 
 Sun, 09 Feb 2020 03:35:44 -0800 (PST)
MIME-Version: 1.0
References: <20200206140352.6300-1-ardb@kernel.org>
 <20200206140352.6300-2-ardb@kernel.org>
 <20200209063907.fcwmwtiz2tjhjmol@wunner.de>
In-Reply-To: <20200209063907.fcwmwtiz2tjhjmol@wunner.de>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Sun, 9 Feb 2020 12:35:33 +0100
Message-ID: <CAKv+Gu-aV4REfOUpn7Ap2G6Rza9QFzfPRYU9d5hXvsJozDQNHw@mail.gmail.com>
Subject: Re: [PATCH 1/2] efi/libstub: add support for loading the initrd from
 a device path
To: Lukas Wunner <lukas@wunner.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_033551_972346_B5615D25 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Alexander Graf <agraf@csgraf.de>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Daniel Kiper <daniel.kiper@oracle.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Matthew Garrett <mjg59@google.com>, Peter Jones <pjones@redhat.com>,
 Leif Lindholm <leif@nuviainc.com>, Laszlo Ersek <lersek@redhat.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 9 Feb 2020 at 07:50, Lukas Wunner <lukas@wunner.de> wrote:
>
> On Thu, Feb 06, 2020 at 02:03:51PM +0000, Ard Biesheuvel wrote:
> > --- a/drivers/firmware/efi/libstub/efistub.h
> > +++ b/drivers/firmware/efi/libstub/efistub.h
> > @@ -566,6 +566,14 @@ union efi_load_file_protocol {
> >       } mixed_mode;
> >  };
> >
> > +struct efi_vendor_dev_path {
> > +     u8              type;
> > +     u8              sub_type;
> > +     u16             length;
> > +     efi_guid_t      vendorguid;
> > +     u8              vendordata[];
> > +} __packed;
>
> In commit 46cd4b75cd0e ("efi: Add device path parser") I introduced a
> struct efi_dev_path with a union for the type-specific data.  Maybe
> you can make use of it instead of introducing a new type?
>

That would make sense, but how do you take the size then? Perhaps it
would be better to have a generic struct definition for the shared
fields, struct definitions for the different types that use the
generic type as the first fields, and a separate union that ties them
altogether for the parser.

>
> > --- a/drivers/firmware/efi/libstub/efi-stub-helper.c
> > +++ b/drivers/firmware/efi/libstub/efi-stub-helper.c
> > @@ -323,3 +323,68 @@ void efi_char16_printk(efi_char16_t *str)
> >       efi_call_proto(efi_table_attr(efi_system_table(), con_out),
> >                      output_string, str);
> >  }
> > +
> > +static const struct {
> > +     struct efi_vendor_dev_path      vendor;
> > +     struct efi_generic_dev_path     end;
> > +} __packed initrd_devpath = {
>
> Nit:  Can we consistently stick to "dev_path" in lieu of "devpath"?
>

Sure.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
