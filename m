Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B29BE1D02EA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 01:10:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0t4SrEXvsWpSoNXGxhxtquXhdSGQk2tAzwedywW0UFY=; b=sUGkOvJWlRSW6S
	TkWU3qsMeMb1k5hmMf24EdoBFz+yj5TMf0x/oeMea8dmYobGOhL9L0bA5pstRWRZlM8mNlqLVg+Mc
	b+YMJfIyUselk8/ywzcUPeKiC5zxrEEdR+x+Bdjdi+TkkKKZVwQQfLRknDWP2dekYu5oQt/r0nUiy
	wO59J4D/ZYLJk0h1vtV/QepQja3/cA2nYMQm761U7DG9er5m/1GfEtxBoucDKipV8F1xomeFu1Sin
	fs6F5PbmgW5nLCaST9cM9F1eCYlaYIbZnisndzfBo/NHYEquim7p7H/E9OssxAxDKyJ39c3DbKqJ4
	Td/su5dOrQUxPfV+N4vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYe2W-0000KI-Q3; Tue, 12 May 2020 23:10:20 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYe2A-0000Je-99
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 23:09:59 +0000
Received: by mail-oi1-f194.google.com with SMTP id 19so19792025oiy.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 16:09:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TjYd3leSKKn51ZfY7qRcr7llrPytDm0GdCIEZD2j8C0=;
 b=H7T8CK/cWDvmNg/AqRsfn+KpLtLlFl//6YGOmq92+ujdSiXZAjr33nTHqY+bIvDN5o
 g61JUi+6KmMlbJKI1nUmhgYuGsBLn08GqUwJgDbjy+cA5QPA79Cd+5/2LAJqxl0IX1YA
 tTEadlN2YLFszQWi9/ObCNMBhGjVw/yQqT50hK6qXMcesvyeMFL7dugRFXzgVUWwdNXn
 29JVDQfLwYJUxCI6+Y5NQhdLwbIben+TIorSVi6A/tJi7qtAGTWzb6j8MRqd8GVHR554
 bcB6O/gYBNzH+bPJbLJkUp0Ay/XygSpKVMxr3UZzqrnsYx1iP0t09zTvbXh8QBn1Yt7+
 D2jg==
X-Gm-Message-State: AGi0PuZJj77p5/T6j0XlnkQYUBxeHBeSgZdU61o+BCKzEO1+7uM/37TW
 QXvB8tEoKbP/f+XoWyGFew==
X-Google-Smtp-Source: APiQypIp6z6XpDyeSpU/MQIh4PPKcXp8UTWOTpvjD0Pwk05Fb3joF3Y1t4vigT4+SMH68vOz8q6/qQ==
X-Received: by 2002:aca:c68b:: with SMTP id w133mr23020989oif.27.1589324996924; 
 Tue, 12 May 2020 16:09:56 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 34sm385316otq.67.2020.05.12.16.09.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 16:09:56 -0700 (PDT)
Received: (nullmailer pid 16218 invoked by uid 1000);
 Tue, 12 May 2020 23:09:54 -0000
Date: Tue, 12 May 2020 18:09:54 -0500
From: Rob Herring <robh@kernel.org>
To: Prakhar Srivastava <prsriva@linux.microsoft.com>
Subject: Re: [RFC][PATCH 1/2] Add a layer of abstraction to use the memory
 reserved by device tree for ima buffer pass.
Message-ID: <20200512230954.GB2654@bogus>
References: <20200504203829.6330-1-prsriva@linux.microsoft.com>
 <20200504203829.6330-2-prsriva@linux.microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504203829.6330-2-prsriva@linux.microsoft.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_160958_319451_451AC471 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: kstewart@linuxfoundation.org, mark.rutland@arm.com,
 gregkh@linuxfoundation.org, benh@kernel.crashing.org, bhsharma@redhat.com,
 tao.li@vivo.com, zohar@linux.ibm.com, paulus@samba.org,
 vincenzo.frascino@arm.com, will@kernel.org, nramas@linux.microsoft.com,
 frowand.list@gmail.com, masahiroy@kernel.org, jmorris@namei.org,
 takahiro.akashi@linaro.org, linux-arm-kernel@lists.infradead.org,
 catalin.marinas@arm.com, serge@hallyn.com, devicetree@vger.kernel.org,
 pasha.tatashin@soleen.com, hsinyi@chromium.org, tusharsu@linux.microsoft.com,
 tglx@linutronix.de, allison@lohutok.net, christophe.leroy@c-s.fr,
 mbrugger@suse.com, balajib@linux.microsoft.com, dmitry.kasatkin@gmail.com,
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 james.morse@arm.com, mpe@ellerman.id.au, linux-integrity@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 01:38:28PM -0700, Prakhar Srivastava wrote:
> Introduce a device tree layer for to read and store ima buffer
> from the reserved memory section of a device tree.

But why do I need 'a layer of abstraction'? I don't like them.

> Signed-off-by: Prakhar Srivastava <prsriva@linux.microsoft.com>
> ---
>  drivers/of/Kconfig  |   6 ++
>  drivers/of/Makefile |   1 +
>  drivers/of/of_ima.c | 165 ++++++++++++++++++++++++++++++++++++++++++++

Who are the users of this code and why does it need to be here? Most 
code for specific bindings are not in drivers/of/ but with the user. It 
doesn't sound like there's more than 1 user.

>  include/linux/of.h  |  34 +++++++++
>  4 files changed, 206 insertions(+)
>  create mode 100644 drivers/of/of_ima.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
