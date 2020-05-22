Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1561DE99C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 16:49:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zOuF5Yi7fM7ZDXQBiv1VoRzfSRK2LJLMXhRmdKT6owg=; b=CV6PVdrlPeZOi9
	ZzvvuwnM6Lkc8nyF/gFifahfHv/xn1DcvyM/DarBxZW1XQ310j/oCSPWH8nnzwxg/Z+YfDlmWEFlx
	9a7KefS3aNL8XXmoye1zeiJQ9fYyE9kz2PqgFM4Za68nJu1sEevfP07sxrsckM0bQjPLlorhJPGSJ
	twrGjYUfv2XZM+SiuRoxD8N2vlsI0pi6ObgaxcEzMxlh6QPdeoj+XVswwx+NdbR2cWsq2W4v3aqoA
	fXmqpoFGLuLcCm6IvExzHJjbpJ6qGtKHYHH3bMls2r652y9UxKOkfkRhWTT2a2ale2fSpZwn5WNTc
	xRRpKwZMDTsR8sqP9R8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8zO-0006yz-3Z; Fri, 22 May 2020 14:49:34 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8wV-0004MI-9w
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 14:46:40 +0000
Received: from mail-qk1-f173.google.com ([209.85.222.173]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MA7Su-1jmZLR1nA2-00BfBu for <linux-arm-kernel@lists.infradead.org>; Fri,
 22 May 2020 16:46:31 +0200
Received: by mail-qk1-f173.google.com with SMTP id z80so10983229qka.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 07:46:31 -0700 (PDT)
X-Gm-Message-State: AOAM532FsYLclOoq9RzLa20cFLQ+Htce31hIHh1qPcwe9xL7elg/qMoZ
 gjWZtEMyKoBBv1bnnebEqN1rRByCY2/ry0aV5aQ=
X-Google-Smtp-Source: ABdhPJwmy6G1wj6rGXkLGjuBlUbBUGagMMbZcrCm8GJrsSSbymy5nqhhK5vv/LW4p6M6tI7x1VRfvM/WVypzvcohCls=
X-Received: by 2002:a37:434b:: with SMTP id q72mr16186729qka.352.1590158790247; 
 Fri, 22 May 2020 07:46:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200522124951.35776-1-sudeep.holla@arm.com>
 <20200522124951.35776-3-sudeep.holla@arm.com>
In-Reply-To: <20200522124951.35776-3-sudeep.holla@arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 22 May 2020 16:46:12 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1t6BrB_Gti138VDRbmaiR_TjwR9d6qMstLBFDWxZ1kjQ@mail.gmail.com>
Message-ID: <CAK8P3a1t6BrB_Gti138VDRbmaiR_TjwR9d6qMstLBFDWxZ1kjQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] firmware: smccc: Add ARCH_SOC_ID support
To: Sudeep Holla <sudeep.holla@arm.com>
X-Provags-ID: V03:K1:dXE+jkM7WFEoc7Qpjg3XcsTTXrFzLK4Eelg2fDvrbTeIBiHwxkE
 aAnJjkoAiCzmTd+O8rzds5hkEQaUsZG0zg/wjGBmwM8HK3tq1LZV4O+NSQ2j4bCICxhv74S
 tF0yHRNmSD+FGDOaO7WhomR1P9YnNjRoJu17MbWsbL/4L4AyUAMEuLU82hbftRaqr25eUMt
 9jQN1ugho3QfASELsdBdg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:txbMU2VMqDk=:+YMFdLqiqpW/6fHmDuBtrf
 G0nFN4oJH9nqXfDWil8hctZdo3qviYPC8XPS85CSSSJrLi7l+Uv2i9xzsrzzCHFzDuNQPTXL1
 TSbkSZNKIDD46/iv541/Syiyb4NB8CMIlrLoF7BwbU+f6QTIMCGm7rsl3dTrNr8FHvtvKLZht
 zZRH/5mZGdoWDYcjPJ7HdaI9FaeKEhlvFQiLjhUyv8iv9DwsWx7iXtkJ4shrnXdnzw4GxuFkp
 txJAi8ZeCb1PjK2WWnjtv+ZpG4iDXjp7UdYgrbynjGnitiUxSZiTRPZUro85LJEiP3mQ529or
 aKpdXc4P0810+CUN3ArJ2hFxj6h74ti6/7YKycoEtfVmQjKPcV3r8HdEgo0ThX3nbM/zd1B6s
 bOa56UKgFDRPKRCtfmQ74bJmPDFkgALtw7KL3zedNbQIycyVPS13913jsgXYVjd65Q+vzGx32
 LTdln9vRyhsfgjHo6k4Higpl2SQV9kxIo9oVSJoAwBNsaKJ0L00zDf0dHHZkcAyDdzSpPcGKc
 eJK6lHlo0EW9mO/eN2ySF9xJP33y5A8lXi/6DWQPqoq/Hzy+G30JPtY7DRfpQe6qwoEPitDRF
 Kis/gJW4/Z+AIBPiqsxQSBJCxORZH3HL3Yw9MX2plqR1if3V1RZF/4ppGaKH/IyvzkyyPhySn
 YuppsbOZ6g1jLz2SvRQG7uYdZw/InsQwv5qlN3nhHU1LH4XuJfeftw3zgo59pbl74Ex6ujS0N
 BLQf5BBx66bxZRJH8I/jvx37SDtW9rsXSVlcEFE0RxUvEHBkX5YL6kuQ6CVZHthKGjtJR1FKo
 QWNVm05O4m5q8mukmngcuMXOfwbUVH4jXUP8MPIoj71eQIejrg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_074638_817203_222633AB 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.24 listed in wl.mailspike.net]
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
 Francois Ozog <francois.ozog@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 harb@amperecomputing.com, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 2:50 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> +
> +       soc_id_rev = res.a0;
> +
> +       soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
> +       if (!soc_dev_attr)
> +               return -ENOMEM;
> +
> +       sprintf(soc_id_str, "0x%04x", IMP_DEF_SOC_ID(soc_id_version));
> +       sprintf(soc_id_rev_str, "0x%08x", soc_id_rev);
> +       sprintf(soc_id_jep106_id_str, "0x%02x%02x",
> +               JEP106_BANK_CONT_CODE(soc_id_version),
> +               JEP106_ID_CODE(soc_id_version));
> +
> +       soc_dev_attr->soc_id = soc_id_str;
> +       soc_dev_attr->revision = soc_id_rev_str;
> +       soc_dev_attr->jep106_id = soc_id_jep106_id_str;

Ok, let me try to understand how this maps the 64-bit ID into the
six strings in user space:

For a chip that identifies as

JEP106_BANK_CONT_CODE = 12
JEP106_ID_CODE = 34
IMP_DEF_SOC_ID = 5678
soc_id_rev = 9abcdef0

the normal sysfs attributes contain these strings:

machine = ""
family = ""
revision = "0x9abcdef0
serial_number = ""
soc_id = "0x5678"

and the new attribute is

jep106_identification_code = "0x1234"

This still looks like a rather poorly designed interface to me, with a
number of downsides:

- Nothing in those strings identifies the numbers as using jep106
  numbers rather than some something else that might use strings
  with hexadecimal numbers.

- I think we should have something unique in "family" just because
  existing scripts can use that as the primary indentifier

- It seems odd that there is no way to read the serial number through
  the same interface and publish it the usual way. Francois Ozog
  recently asked for a generic way to find out a serial number for
  inventory management, and this would be the obvious place to have it.
  It can of course be added later when the next revision of the spec
  is there, it just seems like a surprising omission.

How about making the contents:

machine = "" /* could be a future addition, but board specific */
family = "jep106:1234"
revision = "0x9abcdef0
serial_number = "0xfedcba987654321" /* to be implemented later */
soc_id = "jep106:1234:5678" /* duplicates family but makes it unique*/

That would work without any new properties, dropping the other patch,
and be easier to use for identification from user space.

    Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
