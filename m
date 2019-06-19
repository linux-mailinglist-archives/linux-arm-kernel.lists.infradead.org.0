Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5B34BCA2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 17:17:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=soeHyGVYwygUPZNZ85WIw08FaQAohh7JHu16NO3p9ow=; b=MOeLquXYZZmBEZ
	NHnFfQGm9hD1k1Cw61eTuCQLvqiq1pDld7wymhk2nAju/aWklNqI3ZuHBzeDzgYAxNu7woDP5iO/a
	g/vU0c1sOh7WPr3hEf6YNRUqZubJI9XNA90M87y5UXy1v54ZTDHxiv8cIa1UH4YHOz+8ZZXBv/Uo8
	axxJNwBBsGmrU4ixxr8QeZkItgIP9alQfRWT85SzcPovWuS/M3wtxbbhJBM51vTqDaQZJ1tzXtab/
	f+x/4uGYwyV/Ts+rh0sm3kfGgcxAEuUHSM7p4TThigZiPIHHxP2Et1pfhi++jPe41nnHq28Mf6tPW
	LI9FjjyuL/4ofl1+Kpug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdcLR-0000fr-9K; Wed, 19 Jun 2019 15:17:53 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdcLL-0000fK-4T
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 15:17:48 +0000
Received: by mail-ua1-x944.google.com with SMTP id j8so10223647uan.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 08:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y3W31eT4pjnEE9VumU700qhsrfgm3ej+hMlDN8GbJRU=;
 b=iyBAkwkWJj1+Aw13vY7fCF+blFJGykJyavfB2eMwITvxzAB144ff0wRE3tgEkNWEBF
 hxXtdJ1Qub7oJphAZ4nogBgMeM9uGHymppWIfKEbGHAYoVdouvQkgjOqfKDp6mj8iehQ
 OuywrdJFZlgN1p7KIULRqiw12TsvkbsUV3SA+EYRbng++P0/EoIB3b17k7O0lPdwwRc5
 KD2L4N1LAidT+01zEt0+/gs72VcZJlyG2r21IuJY7DnEEalr8NWoGlpml8EfRwTsKhqD
 L9n/REmLSyfE+BmiK4ex+kwTkqIMeH+Hosxo8zEeVJboON6PAMPS6w0rvrVJXoQbUp6K
 Ij6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y3W31eT4pjnEE9VumU700qhsrfgm3ej+hMlDN8GbJRU=;
 b=Ru5qfdz7NlOnUoicpWmAkbSv+qgmJxHIzVdfS/g1KFrlMNGWOxbeN7DMTazqyinW7v
 IV9R4wPNecPVTTThSOIC2iG1tK6b+Sys4La95QynwGNhgEKPBAfRy9S3fVMYJl/xQg5y
 HKfzZBTINLN53fiHD8EwOEsMYNNSK+YM0gp4uKPzfT843eOo+vqXJ3N+XrEgE8Ww7Mqv
 UREeFuNvxeshA9jR5z5iiZLND/trUCSQbmawqqeQYUE3i6YjyCLdO9ZToesZtHJa72YB
 jAkU55IbVx4XfutatDQCUsanqxe6KYzofzidyEN0nOnCCnKtOzaN8+OzybiL/WPjlbhN
 Wnqw==
X-Gm-Message-State: APjAAAVrzxYjb2Y6HxNSfCvubyCltIVSZMFdIAJ4Mc2ZOWmJWQpzH7LE
 m+/qcGXW18x74f2RgFiyN7OveHBcjFHIA8VK4Oc=
X-Google-Smtp-Source: APXvYqwQFXiKBQhKIgxQWpWN0iV3lA9cGQ+Hkpj2dsp1L/4TSPbcNmuVqNJnISoxxObtW2bKXn3xtrfX6S2seJNuz2E=
X-Received: by 2002:a67:320c:: with SMTP id y12mr827714vsy.30.1560957465295;
 Wed, 19 Jun 2019 08:17:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAOuPNLiBA9VjEoG_D2y2O5mKiqsDNW1VZXOk1eWXpGY+h86acg@mail.gmail.com>
 <CAOMZO5BcLaS0gXUPi6oN6vjqagS5yf+rHh+EUjmi-Wi1OX7vqQ@mail.gmail.com>
 <CAOuPNLgEEfDca4aeT1+q8GfUfGzbJ4x6JwGf-ROB1pgpXUBHSw@mail.gmail.com>
 <CAOMZO5BY8JcLNMCRCC_d=emy8HR6kE=dB9f5qfZ=ci_c+Jak0w@mail.gmail.com>
 <CAOuPNLjYhkP_kL+q-ZpiDZMMpOHrU88BFBc2agtnCzXt8dihOg@mail.gmail.com>
 <20190619150406.GB19346@kroah.com>
In-Reply-To: <20190619150406.GB19346@kroah.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Wed, 19 Jun 2019 20:47:34 +0530
Message-ID: <CAOuPNLgYN3FDvNsaWqom45h7aFz=HczDdL-QoHOc_Sreqf8T2g@mail.gmail.com>
Subject: Re: [IMX] [DRM]: suspend/resume support
To: Greg KH <greg@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_081747_197854_A34A56B3 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pintu.ping[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kernelnewbies <kernelnewbies@kernelnewbies.org>,
 Fabio Estevam <festevam@gmail.com>, open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 8:34 PM Greg KH <greg@kroah.com> wrote:
>
> On Wed, Jun 19, 2019 at 07:03:39PM +0530, Pintu Agarwal wrote:
> > You can think that the version I am using right now is almost 4.9 itself.
> > Upgrading again to higher kernel version is again difficult, also
> > customer does not want it.
>
> They don't want a secure and supported kernel over the lifetime of their
> device?  That sounds really odd.
No I mean to say, there are lots of features and customization already
done on this version and stabilized.
Upgrading again may require months of effort.
Of course upgrading is planned for later products.

> Never create a new device using the 4.9.y kernel tree unless you have someone else doing the support for it
> (i.e. a SoC vendor that you are paying support from).
>
Actually, this is not a new device. Its an older device itself.
This is an experimental activity.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
