Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D94E11DEF69
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 20:42:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rkbSpOYHHu6Ako8KRJ1oJtcDz5VPnu4GIhy9watEz+U=; b=oqnZeZYo8yDFJB
	T+9W1FdVSX+MNGgM8lAjg28S83DYqShLeuL67Y4q7ZX6ZDBuMwyRjoMu0SkWRJbTgBo9/e68XnfSU
	loA/u8Y9qiu4+UbW8QP27BgUAYix/pE2TLRS6V+RwM3mAMjvQfLekmO+aIkrlJHQsLfli2r2ccAFm
	BB4uGArl38KuML7gvvjahBIliKYP/dY4UwsOXT8BRaR+k2szV8tuqidqed7bWEhhn6LRg4bDxMNGw
	bamFNPBfk6844pyrI430Fgym4737mwjgum4BpS6s8th9od9T5eYgpsRe0pmrRgoucWuOM/c6CA8C8
	SPTIorUgPFEd5f779EKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcCcp-00019h-S9; Fri, 22 May 2020 18:42:31 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcCce-000191-Ch
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 18:42:22 +0000
Received: from mail-qv1-f45.google.com ([209.85.219.45]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MTRdK-1jSOTk2xy8-00TkDV for <linux-arm-kernel@lists.infradead.org>; Fri,
 22 May 2020 20:42:16 +0200
Received: by mail-qv1-f45.google.com with SMTP id l3so5187285qvo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 11:42:16 -0700 (PDT)
X-Gm-Message-State: AOAM533hOeDDC2EWZxibUA+8TMyoFYcQzOFykESKGUYIvXYJXEf3BjD/
 k6K9W8efEXI6O7LnmAtqpK5/yE2XXfCQo72pazU=
X-Google-Smtp-Source: ABdhPJzFVnkf+PvpPEzApe1Xh6QwmCJUxAiArf1NkHnRleJW+eTmbotFp5kg3dtkbzDv0h+b8Lx2AAmQGRf7PAZOxxQ=
X-Received: by 2002:a05:6214:370:: with SMTP id
 t16mr5130521qvu.197.1590172935518; 
 Fri, 22 May 2020 11:42:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200522124951.35776-1-sudeep.holla@arm.com>
 <20200522124951.35776-3-sudeep.holla@arm.com>
 <CAK8P3a1t6BrB_Gti138VDRbmaiR_TjwR9d6qMstLBFDWxZ1kjQ@mail.gmail.com>
 <20200522165422.GA18810@bogus>
In-Reply-To: <20200522165422.GA18810@bogus>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 22 May 2020 20:41:59 +0200
X-Gmail-Original-Message-ID: <CAK8P3a33_5q1bNRrt+4sQ55QKrN12rOkuzmPH0BDujbug1RTyA@mail.gmail.com>
Message-ID: <CAK8P3a33_5q1bNRrt+4sQ55QKrN12rOkuzmPH0BDujbug1RTyA@mail.gmail.com>
Subject: Re: [PATCH 2/2] firmware: smccc: Add ARCH_SOC_ID support
To: Sudeep Holla <sudeep.holla@arm.com>
X-Provags-ID: V03:K1:iQpc3DRYjjLtbqgywcJWbURmY5RTd+Ey6jydw1NIxJQJC/F0CLM
 1Sis4g776hcul7u4NQFJiN3btHwWCy2T2j6S+hBQLG6S2Le5HXkd/9LyTsWhmVRxRvoSYyI
 BlUrv36SXYgI05PDkw556SpQBKtX71GsHpOYswna5sPAAFxw6khr12eSd2X0hWUT1GZHT/W
 YPwaLdRu35LUoiKAoI9pA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uUvF+mAU/1w=:sk9WSrd3pDKAG55JPotRMp
 TdlNib/jwqkTdAITgF7S3NKPEH6J00atC/y/P1tLkr9LBK8kCOSOfLfIFXTuhfgg7c7jo33qK
 DfPLRf0xwdL/LOp7zv1T5Tacs8uqdRKjvQVfzIOMbNkbGkGnCI3+g/UWsvFqf21mifEYvMb73
 CnufrgVA4PHEdBNgpwv+JDD13K37LCGkkgwXEHL2o9XgDK6HXoF3djLZ++NnsHDjBecI0Q7P9
 r5+r2cPfwManxEumd/FT75pmlYuwI2d10dO5km7RIYgXpBndwhUtm0J/DK3d+7/Anueu7KbkV
 9lB2Spt/vEEw5KSWSBq1C6UPI/bD9jWj/9BwgP7A+20NiOZXwNOSIOXUEA0WZiHl7ugm7Umt7
 pTjN2P3wjF0G5ga6frGZ9H9cjdHVOEDxGZBLuhglEdilYw1f1GNTaEKKB0QkDKX+VkIeMMFXh
 6hO5X1+2wevNBo0AJJE420/ltaSwXSb3KDCs49rgEraAr9fAg5Fhb2bYbRVrOuS8ByGpxQVjh
 Fx0rYDbDM0izkwu1Xj9o+kbJB8WQDzNmyG7G/ZfwpxO/h+YYqkWhBCYix9dTvdvafcJHxQbuf
 Z5jye/fzec8sPOZalZ4VhfLMtVV8/FyzDeuzxlIi5Y0RbyB/3S7ca2yYyViTpTVgXv3Z+aijl
 wEMQwvNnx8a7Uv8WM+CaPZFvMYcbVrYxZKIwdbcVlheRoSJloQn5a8smSW3uUWmSfYHqMp6vt
 7yB4G1K5FwGCrl1JifWOqYdwZ7G4cVtlBiRBu7wv+5ZS8o45rjV5CQhcM5p8GmyQQqIK0mPL6
 aDZvudnMcpI80q9tEjx7iP51aSBB+grW0DAKHqTIyb4L8Cym0s=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_114220_731828_5B5CB64F 
X-CRM114-Status: GOOD (  28.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.73 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Francois Ozog <francois.ozog@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jose.Marinho@arm.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 harb@amperecomputing.com, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 6:54 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> (+ Jose (SMCCC Spec author))
>
> On Fri, May 22, 2020 at 04:46:12PM +0200, Arnd Bergmann wrote:
> > On Fri, May 22, 2020 at 2:50 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > +
> > > +       soc_id_rev = res.a0;
> > > +
> > > +       soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
> > > +       if (!soc_dev_attr)
> > > +               return -ENOMEM;
> > > +
> > > +       sprintf(soc_id_str, "0x%04x", IMP_DEF_SOC_ID(soc_id_version));
> > > +       sprintf(soc_id_rev_str, "0x%08x", soc_id_rev);
> > > +       sprintf(soc_id_jep106_id_str, "0x%02x%02x",
> > > +               JEP106_BANK_CONT_CODE(soc_id_version),
> > > +               JEP106_ID_CODE(soc_id_version));
> > > +
> > > +       soc_dev_attr->soc_id = soc_id_str;
> > > +       soc_dev_attr->revision = soc_id_rev_str;
> > > +       soc_dev_attr->jep106_id = soc_id_jep106_id_str;
> >
> > Ok, let me try to understand how this maps the 64-bit ID into the
> > six strings in user space:
> >
> > For a chip that identifies as
> >
> > JEP106_BANK_CONT_CODE = 12
> > JEP106_ID_CODE = 34
> > IMP_DEF_SOC_ID = 5678
> > soc_id_rev = 9abcdef0
> >
> > the normal sysfs attributes contain these strings:
> >
> > machine = ""
> > family = ""
> > revision = "0x9abcdef0
> > serial_number = ""
> > soc_id = "0x5678"
> >
> > and the new attribute is
> >
> > jep106_identification_code = "0x1234"
> >
> > This still looks like a rather poorly designed interface to me, with a
> > number of downsides:
> >
> > - Nothing in those strings identifies the numbers as using jep106
> >   numbers rather than some something else that might use strings
> >   with hexadecimal numbers.
> >
>
> Not sure if I understand your concerns completely here.
>
> Anyways I wanted to clarify that the jep106 encoding is applicable only
> for manufacturer's id and not for SoC ID or revision. Not sure if that
> changes anything about your concerns.

The problem I see is that by looking at just the existing attributes,
you have no way of telling what namespace the strings are in,
and a script that tries pattern matching could confuse two
hexadecimal numbers from a different namespace, such as
pci vendor/device or usb vendor/device IDs that are similar
in spirit to the jep106 codes.

> > - I think we should have something unique in "family" just because
> >   existing scripts can use that as the primary indentifier

This is part of the same issue: If we put just "jep106 identified SoC"
as the "family", it would be something a driver could match against.

> > How about making the contents:
> >
> > machine = "" /* could be a future addition, but board specific */
> > family = "jep106:1234"
>
> But this just indicates manufacturer id and nothing related to SoC family.
> If it is jep106:043b, all it indicates is Arm Ltd and assigning it to
> family doesn't sound right to me.
>
> I had requests for both of the above during the design of interface but
> I was told vendors were happy with the interface. I will let the authors
> speak about that.

In most cases, the existing drivers put a hardcoded string into the
family, such as

"Samsung Exynos"
"Freescale i.MX"
"Amlogic Meson"

or slightly more specific

"R-Car Gen2"

Having a numeric identifier for the SoC manufacturer here is a
bit more coarse than that, but would be similar in spirit.

> > soc_id = "jep106:1234:5678" /* duplicates family but makes it unique*/
>
> Not sure again.

> > That would work without any new properties, dropping the other patch,
> > and be easier to use for identification from user space.
> >
>
> OK, I agree on ease part. But for me, we don't have any property in the
> list to indicate the vendor/manufacturer's name. I don't see issue adding
> one, name can be fixed as jep106_identification_code is too specific.
>
> How about manufacturer with the value in the format "jep106:1234" if
> it is not normal string but jep106 encoding.

I don't think we need a real name like "Arm" or "Samsung" here,
but just a number is not enough, it should at least be something
that can be assumed to never conflict with the name of a chip
by another scheme.

jep106:5678 (the IMP_DEF_SOC_ID field in my example) would
probably be sufficient to not conflict with a another soc_device
driver, but is quite likely to clash with an ID used by another
manufacturer.

jep106:1234 (the manufacturer ID) in turn seems too broad from
the soc_id field, as that would include every chip made by one
company.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
