Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CA31898F9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 11:10:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQzJYfHb1iv2DDm/BaMH88HZ4E40DQl1z3lOAQdCPpo=; b=kIy2SlRHs05Kct
	dOVOUq2Zl0lpq74ubwMYyuN6bn2L18gp9PqtA4T2I5GHpp/4sO1KsS1EyTB32HzitOBTeNEjabcyq
	lmma6xbUWjLioqIm3/zCxGXx0rURV5m53U+fQmwkMDZ8n6Pe/NB64tqIa9sYDpbWwg+zcZ0MGRbC5
	/RlGCL1fvUtDjNnC5VWG04TmWO44pXkcHcneGZB52sdVK7TXt/hYk/d8h0pYH8469EuXL4/inEPZI
	2UzXnXI0eo9a1Yjyyg8z0jEVAjq+sgw451RXjP0k3ndG98qntOY5nQeDJWP8bihr1YHAf0Wisj7UB
	5I/vyOHGbHheAydlmuQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEVem-0004Kh-9l; Wed, 18 Mar 2020 10:10:36 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEVec-0004Jx-BU
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 10:10:28 +0000
Received: from mail-qk1-f180.google.com ([209.85.222.180]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MXYEr-1inAye3J5L-00Ywwa for <linux-arm-kernel@lists.infradead.org>; Wed,
 18 Mar 2020 11:10:24 +0100
Received: by mail-qk1-f180.google.com with SMTP id f3so37685570qkh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 03:10:23 -0700 (PDT)
X-Gm-Message-State: ANhLgQ2/vxX/CJvZ5Tx7POkkVXm1s4L+D2U3osP+KUiu36Bl/EUz3PY/
 mC0UUKAqohzK8viCIkgMGlzV9UjXtT2wzhcUc0E=
X-Google-Smtp-Source: ADFU+vvAakuOMd3ErCSUomMX8z0py4x5kF0p1NXkPKJUf0Yfay59WpIhVqcU89UsHhxlAYx4b/h6YAwzOwru6S0xj2Q=
X-Received: by 2002:a37:6455:: with SMTP id y82mr3173930qkb.286.1584526222619; 
 Wed, 18 Mar 2020 03:10:22 -0700 (PDT)
MIME-Version: 1.0
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-2-git-send-email-mikelley@microsoft.com>
 <CAK8P3a1GFDUY4mXzst4Ds+S-4SGXso6-jfpsYyy-eHyceAC1Zg@mail.gmail.com>
 <MW2PR2101MB10524879CD685710A51AB740D7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
In-Reply-To: <MW2PR2101MB10524879CD685710A51AB740D7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 18 Mar 2020 11:10:06 +0100
X-Gmail-Original-Message-ID: <CAK8P3a02EULGxyuKFq8YnbG8BQ_m-RKciaNEc9ZbdP2yz9dt+Q@mail.gmail.com>
Message-ID: <CAK8P3a02EULGxyuKFq8YnbG8BQ_m-RKciaNEc9ZbdP2yz9dt+Q@mail.gmail.com>
Subject: Re: [PATCH v6 01/10] arm64: hyperv: Add core Hyper-V include files
To: Michael Kelley <mikelley@microsoft.com>
X-Provags-ID: V03:K1:dmGeueDb4eFLabCe4yzkZCNvZCXxRO1+0ReA/M2UGagZnOYA7fp
 hB/DeVHN2I08EGQ6gBXZ2LHnskxvXfTlEtklJwiwYh7QvYh9upcO7VgkCcBvK/PCOtgxhey
 9+S9jBC1YKgmEbcbfI/nN94oG5qR2V82i+E5NR019nWB1x+OVgfprUebC1aGNBLdh/K1lkg
 0eLcc8t4mRPhWpmN+tUwQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FQw1w5UNPrY=:nScC1uIlWUkv6keIVFzEcG
 QbRravINvMqByfD8xyGFOPh3Lue7t9Sto++97H56wZtonRx78I6X+/i775IRSqgIMWZHeKS3j
 jf14n9bYrF8WA4iQTIREQbCqZJjzJOolZ8vU9sV/sLZ1u12O5nnnEXiri+md8NXcieVlVso96
 nb1zaPlbQd/aFT6IxG30boxIgLP/NzbBW/jwCW1AqyBXVM/njSFmTEu3zpS87OJxLpRpGswRb
 C+QsSHmGbWOCssiBUUYkJW1LK7xJS8AnkjXpeyOBcEjOkVhmcZZM1MKSCorvOpl3roCmSP86f
 +hMN7wzEg/JOZis0ZIEA3Vh6VGbtO8qjqsIfF0M8Inm4ObuCQ8IVp9VBJ/T2Ee+np+5R7uBTD
 u8LSVZ4MaadNJ2XqzcDO7ykAbwKInypdczfe8EVdMjUFvkUw05p59SDwDomkjLtJFHDFLOXEB
 zlIpVlG80Wp4MGeS46rEYT5t1Xh2j5SOHFIDZ65bt78mt4WwNM4erxGkUwnGYSzvAPN7Q9Dyk
 +dIFDKn9932fIQ2lJwGYsZYt/R5UY4x4rNdOcjogDRY5HLCy2pQirCoKgwlK6DzJukeovNzQa
 IhOqW8Ru8OXWR39/BkEzH5zyYXcCshZbokgdXBouX+pxAfZFERYtra+ADu/FJula9En+RPdG5
 2wIlGzgBcUJZkfAc4j3zYa7BIj9w5onDbPb1176RbKxeKPvoncK/rY9a3PDaiFUA7V9Z+Py6w
 2eqULF2L7Y4h/Bb+0JBWRwfVA/7OEEDl5jiDQ67Ryfd8nBLjtkyqnDgotuJe+AUqV90JXpvjs
 S+CZmaaDrJj6T8xeNrwD6hcLqcDN/oVz+tDZn7pZBrlQPx+Wto=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_031026_693658_842862D5 
X-CRM114-Status: GOOD (  31.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-arch <linux-arch@vger.kernel.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 linux-efi <linux-efi@vger.kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 gregkh <gregkh@linuxfoundation.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Jason Wang <jasowang@redhat.com>, Sunil Muthuswamy <sunilmut@microsoft.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>, Marc Zyngier <maz@kernel.org>,
 Andy Whitcroft <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 KY Srinivasan <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 1:12 AM Michael Kelley <mikelley@microsoft.com> wrote:
> From: Arnd Bergmann <arnd@arndb.de> Sent: Monday, March 16, 2020 1:48 AM
> > On Sat, Mar 14, 2020 at 4:36 PM Michael Kelley <mikelley@microsoft.com> wrote:
> >
> > > +
> > > +/* Define input and output layout for Get VP Register hypercall */
> > > +struct hv_get_vp_register_input {
> > > +       u64 partitionid;
> > > +       u32 vpindex;
> > > +       u8  inputvtl;
> > > +       u8  padding[3];
> > > +       u32 name0;
> > > +       u32 name1;
> > > +} __packed;
> >
> > Are you sure these need to be made byte-aligned according to the
> > specification? If the structure itself is aligned to 64 bit, better mark only
> > the individual fields that are misaligned as __packed.
> >
> > If the structure is aligned to only 32-bit addresses instead of
> > 64-bit, mark it as "__packed __aligned(4)" to let the compiler
> > generate better code for accessing it.
>
> None of the fields are misaligned and it will always be aligned to 64-bit
> addresses, so there should be no padding needed or added.  There was
> a discussion of __packed and the Hyper-V data structures in general on
> LKML here:  https://lkml.org/lkml/2018/11/30/848.  Adding __packed was
> done as a preventative measure, not because anything was actually
> broken.  Marking as __aligned(8) here would indicate the correct intent,
> though the use of the structure always ensures 64-bit alignment.

Just drop the __packed annotations then, they just confuse the compiler
in this case. In particular, when the compiler thinks that a structure is
misaligned, it tries to avoid using load/store instructions on it that are
inefficient or trap with misaligned code, so having default alignment
produces better object code.

> > Also, in order to write portable code, it would be helpful to mark
> > all the fields as explicitly little-endian, and use __le32_to_cpu()
> > etc for accessing them.
>
> There's an opening comment in this file stating that all data
> structures shared between Hyper-V and a guest VM are little
> endian.  Is there some other marking to consider using?

Yes, device drivers should generally define data structures using
the __le32, __le64 etc types, and use the conversion functions
to access them. Building with 'make C=1' usually tells you when
you have mismatched annotations.

> We have definitely not allowed for the case of Hyper-V running on
> a big endian architecture.  There are a *lot* of messages and data
> structures passed between the guest and Hyper-V, and coding
> to handle either endianness is a big project.  I'm doubtful
> of the value until and unless we actually have a need for it.

In general, the use of big-endian software on Linux is declining, however

- arm64 as an architecture is meant to support both endian types,
  and we still try to ensure it works either way as long as there are
  users that depend on it.

- The remaining users of big-endian software are probably
  more likely to run on virtual machines than on real hardware

- Any device driver should generally be written against portable
  interfaces, even if you think you know how it will be used. As
  driver writers tend to look at existing code for new drivers, it's
  better to have them all be portable. (This is a similar argument
  to the irqchip interface).

Even if you don't convert any of the existing architecture independent
code to run both ways, I see no reason to not do it for new drivers.

> > > +/* Define synthetic interrupt controller message flags. */
> > > +union hv_message_flags {
> > > +       __u8 asu8;
> > > +       struct {
> > > +               __u8 msg_pending:1;
> > > +               __u8 reserved:7;
> > > +       } __packed;
> > > +};
> >
> > For similar reasons, please avoid bit fields and just use a
> > bit mask on the first member of the union.
>
> Unfortunately, changing to a bit mask ripples into
> architecture independent code and into the x86
> implementation.  I'd prefer not to drag that complexity
> into this patch set.

How so? If this file is arm64 specific, there should be no need to make
x86 do the same change.

> > > + * Use the Hyper-V provided stimer0 as the timer that is made
> > > + * available to the architecture independent Hyper-V drivers.
> > > + */
> > > +#define hv_init_timer(timer, tick) \
> > > +               hv_set_vpreg(HV_REGISTER_STIMER0_COUNT + (2*timer), tick)
> > > +#define hv_init_timer_config(timer, val) \
> > > +               hv_set_vpreg(HV_REGISTER_STIMER0_CONFIG + (2*timer), val)
> > > +#define hv_get_current_tick(tick) \
> > > +               (tick = hv_get_vpreg(HV_REGISTER_TIME_REFCOUNT))
> >
> > In general, we prefer inline functions over macros in header files.
>
> I can change the "set" calls to inline functions.  As you can see, the "get"
> functions are coded and used in architecture independent code and on
> the x86 side in a way that won't convert to inline functions.

Ok.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
