Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 704452D687
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 09:39:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EHSAO0+QQvC6m+HAdu+/BAEaHkBAxdXECDNhCzkAGuU=; b=Qz9LXkvBJ+DUJK
	g46AUmHT/GqytNbxhGq5oOiO4jaiAAfXkipajkoKlbGSsQsj4cIiQWCh1LOJuTd5xPV6Yqg+qCBB/
	WTrdPzvwwpvPrTyE5Q8OODCPYzLcW/zVvDvU8hMeTdVC83bMoyTQNofgR6iXxuJW67zeIZ8a6CLh5
	napwjJ8iLhIY76AwFoRjFmFgrtz0d77gVU8UbY/tIQ5xdjrjm67iGnSbMrxBXtuoEIMb/Q+S1gJJO
	1X0GWPS2uG7sQ4UCSxphSn1K0s6UtVYPvFT8JyYcbMc9HSqAMhZiYnFAPUSHZjD77Han1Lo2emWEM
	nMd64XNXyMHqgUuO5+nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtAu-0003My-OL; Wed, 29 May 2019 07:39:04 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtAm-0003MN-EU
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 07:38:57 +0000
Received: by mail-it1-x142.google.com with SMTP id s16so2010078ita.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 00:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sYdxpoQyKFeDaQbdKIUrN5/Ag9haNiYupFVN0i2N9tI=;
 b=uHyaDhs+yuzAFqEYJAVKpxTifDtlQH1n+iiledygxDhAWUxN21+5LPjKLrF81HPxVo
 D2QplBvvzVVRjujCa1RP5wHv/+uAKXtTZ5OmkmzBcQtszNJdcxWqQmE5/dYAcRwOdGLa
 hk5uHYPHHFLmOcp2LQswEdJjF8bX4JE9p9d1fUtTXKT8+Mg+pzbxoBErHaDy4o3HvSHh
 lSwfGtAYobCEWGbtdyBYRaVaDyvFvGBw0MTy6b5KGP2Ztaho5GjxZmaAPHE2kv6hev4I
 SKVF9ybnj72MgdsN95OdzbVAdNC+hLmQ09GmAQy6XfGi+0fo5Scs3hLEws+LDqMcDULk
 IQTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sYdxpoQyKFeDaQbdKIUrN5/Ag9haNiYupFVN0i2N9tI=;
 b=T+P7GRv6+HHp61rYf28V+Bc2eJ/ynb7TAoVc+WzACPRDBCB6262fzkrlE2GGKEHTBY
 5vW/rVZLYTH4gPLz2YUuTRa2P0Y19spYGPZqXpsJoW+aPy4F399dWJR+8hKI51AOFsC7
 eFypp7aJLvaJ5qlbgtFhGPTO14i/zTNMQMyOMyPdIMc1o+48QkAKw6xdTf4EQW22gB+8
 Mu7MVeduwE91MxYNa6nIIxYERZVFXUbxi/33Ilx5PaOuzl8HXoEjpofh2yXO2C1kk6hZ
 Z1PF69gXJO64DVVfcUYD9X43el61HcosY9drT8JwVGF6m/mC9B4bsdy0KO2gNXdT+0wB
 xVgg==
X-Gm-Message-State: APjAAAXtcIV/arhJk4/uxpye1ZGs9jq2VKt9IpAc/oJw523+AP0zNn3i
 1qp63i6cO54HDNdLiY4aqkBIHnbiFqFRawpcoACm3w==
X-Google-Smtp-Source: APXvYqwJaWt8FOT5iYYwEp1+i82EfIFqj3p//Hr4qZtGOCamTO84O9sAgIaSczF1o/Ft+u1WfFjVLNDcfZybQ0ZTrP0=
X-Received: by 2002:a24:910b:: with SMTP id i11mr6751918ite.76.1559115535209; 
 Wed, 29 May 2019 00:38:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190528133647.3362-1-ard.biesheuvel@linaro.org>
 <20190528133647.3362-5-ard.biesheuvel@linaro.org>
 <20190529073129.GP2781@lahna.fi.intel.com>
In-Reply-To: <20190529073129.GP2781@lahna.fi.intel.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 29 May 2019 09:38:42 +0200
Message-ID: <CAKv+Gu_BJO9AYDicyd4hC7uSWP47ac12wPzi4kgCETwjGZQZOA@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] gpio: mb86s7x: enable ACPI support
To: Mika Westerberg <mika.westerberg@linux.intel.com>,
 Marc Zyngier <marc.zyngier@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_003856_491809_DDBB5C54 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Graeme Gregory <graeme.gregory@linaro.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Masahisa Kojima <masahisa.kojima@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 May 2019 at 09:31, Mika Westerberg
<mika.westerberg@linux.intel.com> wrote:
>
> On Tue, May 28, 2019 at 03:36:47PM +0200, Ard Biesheuvel wrote:
> > Make the mb86s7x GPIO block discoverable via ACPI. In addition, add
> > support for ACPI GPIO interrupts routed via platform interrupts, by
> > wiring the two together via the to_irq() gpiochip callback.
> >
> > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> > Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>
> Hmm, I thought I reviewed this already? Well anyway,
>
> Reviewed-by: Mika Westerberg <mika.westerberg@linux.intel.com>

Yes, you did. Apologies.

Marc, can you still incorporate this? Or is it too late?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
