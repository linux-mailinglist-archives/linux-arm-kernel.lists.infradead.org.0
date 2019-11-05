Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6F7F0A66
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 00:47:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ggFqNviODzEiCMK3N78TgtidWd0h6TaZXEPShJQMeUI=; b=mGynHeW2ayawZR
	CdLc5T0cOVxQqIS1WXzq47WwhFEdObqHuSs01DS7iLCugQ4BgoQYsTkuwdj0venXDdyCq4wy2p/rH
	kbYIY/IHXTDBlTnUoK+gttI/pwAxWHQdp3Bf7H8wURFgZfhXhndlDGocnwpBZGORUEmmaMGkk935n
	Eql70wbX77X7jdbGcQ3raBexzfbCnr03C5o9lDpulSU0LM9LF/Dbgr7nI1q6G61dZ5DWNdbbWwDl5
	hjt6YeYrzFVKOk1AE8Yy9wllIRBm9MSK3kR5Mur1Ipa4N4ill9+AtNdjfXmhSHGhD+yQcqm59tM9V
	yXohWplEkcdbOP9Wmxig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS8XO-0003vf-JE; Tue, 05 Nov 2019 23:47:02 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS8XF-0003uz-Og
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 23:46:55 +0000
Received: by mail-oi1-f196.google.com with SMTP id y194so19321768oie.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 15:46:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iUouFbp90DaJNrdZUlRPbAF1tArrEhWp17DotmP+0tk=;
 b=Z9Ir2M7N7QhQht7n0AAU4gPcxX3UjCQsaIcZTrzb45Ykid7y6mjcHyhCxdSw7k5CJi
 fa3QiGtBBMj6zDS2rjY2zCXmlBcIhVXNzF+Ib2ee7V+89QQz75C3s+KVi4soMTTtqxWt
 fp5hlLLu1zMMC6gIN7ogHTlLmgcMjMg+PU3Lz74IzywkO8vwn+Y2qtSBZUvVzXpV/9tJ
 5Ke/pOkPn9pi+TFWX4lb3X+a5bBpL07JL0sHhFXklvdLuqslfApWzvF2vmKXTm8SHktC
 v5ToIfJUO+iUhHez6FxMeQCLt9ZV/zi5wfrsfSy1kgGJQFvjzwY7qv51AaYo2IBWGcW1
 t3sg==
X-Gm-Message-State: APjAAAV2vzNQ6cv0xDRp4uZX0wldbE3b5wFr3Vkxf5tFtG7WAW4FqTOB
 7COwA65t+5AILCB6vJijRFRuZAYF
X-Google-Smtp-Source: APXvYqwVY6NGWjp3DzBoXjfAH+zMQiQoFQl5sWxj15LJg9SPt0Xgg1UeBZI+Pca1XA6GOSxGYzjBNg==
X-Received: by 2002:aca:4945:: with SMTP id w66mr1503352oia.98.1572997611739; 
 Tue, 05 Nov 2019 15:46:51 -0800 (PST)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com.
 [209.85.167.178])
 by smtp.gmail.com with ESMTPSA id n9sm6827804otn.4.2019.11.05.15.46.51
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 Nov 2019 15:46:51 -0800 (PST)
Received: by mail-oi1-f178.google.com with SMTP id k2so19265183oij.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 15:46:51 -0800 (PST)
X-Received: by 2002:aca:4891:: with SMTP id v139mr1318447oia.175.1572997610943; 
 Tue, 05 Nov 2019 15:46:50 -0800 (PST)
MIME-Version: 1.0
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-36-linux@rasmusvillemoes.dk>
 <4e2ac670-2bf4-fb47-2130-c0120bcf0111@c-s.fr>
 <VE1PR04MB6687D4620E32176BDC120DBA8F620@VE1PR04MB6687.eurprd04.prod.outlook.com>
 <24ea27b6-adea-cc74-f480-b68de163f531@rasmusvillemoes.dk>
 <CADRPPNQ4dq1pnvNU71vNEgk1V5ovrT9O2=UMJxG45=ZSRdJ4ig@mail.gmail.com>
 <f48df0c7-77f1-268f-8588-7eff5e9fd7c5@rasmusvillemoes.dk>
In-Reply-To: <f48df0c7-77f1-268f-8588-7eff5e9fd7c5@rasmusvillemoes.dk>
From: Li Yang <leoyang.li@nxp.com>
Date: Tue, 5 Nov 2019 17:46:39 -0600
X-Gmail-Original-Message-ID: <CADRPPNQ0dR4GkGNmi2dEepJFpULD8DW7_FiYzJZ-er2=UtZ8nA@mail.gmail.com>
Message-ID: <CADRPPNQ0dR4GkGNmi2dEepJFpULD8DW7_FiYzJZ-er2=UtZ8nA@mail.gmail.com>
Subject: Re: [PATCH v3 35/36] net/wan: make FSL_UCC_HDLC explicitly depend on
 PPC32
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_154653_803068_D5E57B58 
X-CRM114-Status: GOOD (  19.56  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Scott Wood <oss@buserror.net>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 5, 2019 at 4:47 PM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:
>
> On 04/11/2019 21.56, Li Yang wrote:
>
> >> No, this patch cannot be dropped. Please see the kbuild complaints for
> >> v2,23/23 about use of IS_ERR_VALUE on not-sizeof(long) entities. I see
> >> kbuild has complained about the same thing for v3 since apparently the
> >> same thing appears in ucc_slow.c. So I'll fix that.
> >
> > When I made this comment I didn't notice you have removed all the
> > architectural dependencies for CONFIG_QUICC_ENGINE.  If the
> > QUICC_ENGINE is only buidable on powerpc, arm and arm64, this change
> > will not be needed.
> >
> > BTW, I'm not sure if it is a good idea to make it selectable on these
> > unrelavent architectures.  Real architectural dependencies and
> > COMPILE_TEST dependency will be better if we really want to test the
> > buildability on other platforms.
>
> Well, making QUICC_ENGINE depend on PPC32 || ARM would certainly make
> things easier for me. Once you include ARM64 or any other 64 bit
> architecture the buildbot complaints start rolling in from the
> IS_ERR_VALUEs. And ARM64 should be supported as well, so there really
> isn't much difference between dropping all arch restrictions and listing
> the relevant archs in the Kconfig dependencies.

I agree that it will be good to have the driver compile for all
architectures for compile test.  But list all the relevant
architectures and CONFIG_COMPILE_TEST as dependencies will make it not
really selected for these irrelevant architectures in real system.

Regards,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
