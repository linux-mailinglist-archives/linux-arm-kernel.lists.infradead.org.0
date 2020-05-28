Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 013941E5D2B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 12:29:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8I/bUe/dBWhOCxog9LCtTlusPcA3YDa9NeTSrungTTU=; b=e5fKpt6+m5vqa6
	+ZhQSwMfEj8OvW859ojBahpbZ7FYvy9R/aOUXFGptsYlwGexdEgZ8hkRhEEMjtb+o3sJQrIVZJMFt
	mRrEWbBmqix/g+ltSkNBonH6UzruC030OiloKWpfeOwdDK0Jx1vN4Gmz+8O0pHhkOPh261m92LRVa
	6C3+DEBctjJsN8yoNPcHv+CphiQn5Tz8c76AYQufnYeh3hJzBitzWAys5IP5QaHfOotq3tQICTGIH
	fiUBq11mc07CLKYqALsomLXH8NwPqCuVBR4R5s9lnVEYV+gtgYxdmni/MXBD5/W3GossTDm90GxV0
	I3aFejd6QCJltbxayvIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeFmu-0000RC-Ml; Thu, 28 May 2020 10:29:24 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeFmf-0000QR-BC
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 10:29:10 +0000
Received: from mail-qt1-f180.google.com ([209.85.160.180]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MWixU-1jXkRj3CMC-00X6Lq for <linux-arm-kernel@lists.infradead.org>; Thu,
 28 May 2020 12:29:03 +0200
Received: by mail-qt1-f180.google.com with SMTP id w90so3746366qtd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 03:29:03 -0700 (PDT)
X-Gm-Message-State: AOAM533IlNSBMvytjaBInWmNnScqIjDTPL17VB7enzD6PXEqEkq2BjJK
 HYi20V8PmTVy6IFe7NuSo9ckSExp2BEAkWYtS+w=
X-Google-Smtp-Source: ABdhPJz2a2WytWmIneIq2G9OpjaO/RzuEzD9ej4GIQPy/ppJNSDQ6lV/bFBZfFaxAIKkS/hUB94Bg+Cs4mG8X8OBWbA=
X-Received: by 2002:ac8:1844:: with SMTP id n4mr2210189qtk.142.1590661742672; 
 Thu, 28 May 2020 03:29:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200527112608.3886105-1-anders.roxell@linaro.org>
 <20200527112608.3886105-6-anders.roxell@linaro.org>
 <CAL_Jsq+bwnwQBpxf_Q5GNhCz8+-psH-ovpW80LMk=MK=zcbYcA@mail.gmail.com>
In-Reply-To: <CAL_Jsq+bwnwQBpxf_Q5GNhCz8+-psH-ovpW80LMk=MK=zcbYcA@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 28 May 2020 12:28:46 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3_5pHCc0WqDNt1Aim2M67cicyq27f0ggqPbJuu97i=Nw@mail.gmail.com>
Message-ID: <CAK8P3a3_5pHCc0WqDNt1Aim2M67cicyq27f0ggqPbJuu97i=Nw@mail.gmail.com>
Subject: Re: [PATCH 5/5] power: vexpress: make the reset driver a module
To: Rob Herring <robh@kernel.org>
X-Provags-ID: V03:K1:DuvYyYyWkSzyeS4CHLqL9CtxdKPGkK1HREENTyElwnez4ImOFiQ
 X1+PClRqwoC1rsRxYVvfJayZxM7wobpEWuSfbpB9Cw2WeTXk+//xT47XjGGblqIol3Pv7E/
 mZE2H18BM9Ohdbh2pp719S36LJK9cWdk2W8aAp3KQuqcni5/7KRMIYOZnnOlBGBcRXD3jzg
 J3145t24Uih1+Pr1M1MQA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vF6JpYfyaws=:6IGghFny8pJ53+bp0kFHvB
 xKCf/M2MiW61G+plRBiHwu4BnubUKJI3OB8vej3MgYqEhbxRzO9/rMAspVomy1C5LvZLg7MAe
 EoZQ0U7FAtfbqgrz/UKhFgvG5CKYlqj+rR54fR3QOXYWxQJpOP1Jnibx3v8mY9QvI5bXOaDJ3
 NX4WZqknllMn+hZfH6L2N/nJhcveHAGan7L3Qo3h+tvk3l4A77E21aE9aD7q3+YnRyz9i83q+
 dCLg6ceeoebYeJVj0UNO3sun9e5VP+iHUAOMQ2vXKEBBxAPsEJynt/YVABUvogBr6rZ1mNtCW
 8EnaNm0roLm2PmmlSgwZI1hhV0WHMsZx4m3v9yZDhiN96hXunTUtgPM/cLLYeONVZtYGeCABn
 TDvTIJwLQh+Arya1glSsPKAzP7ZjpjvWFI7/89CJa7iqsotlXWdDoIko/oLB5aDOiYawtqoI3
 /yylx3G4td4tDwgqkPZSPObgjmOPJ1ybXuwUirAYuhmnysdJvaqcYZZCdO0w3FpACzoqnArri
 reDvMNXULMFnW5C0l3SzTqDCUlI7dlsO0UBDozaUBeKCKWpdC4Lf94P8t7Avnck4uQ/styv2B
 jLd0j7YGFjsGJcdmAQb9oF9N7APHauXHIcklfQb2f6RYVFGWXfwco5wX3B3poCCEBhqYC0whv
 8/FG3GUO34wpuD4DGrJAnmJrpkAUkZUxTSIujt7oCIn4wv5Zy3530ZoM7nBuJ+tO8ETz/wh8j
 N5M7tSFx5HGd3hdMh3weO0uecI6t0zM2N5TSdvEPF1nk+WmwnrvqX/rFbXIhTtkMaqTeSPbqi
 Sreu5J9Xqi7uU9UX7Cjg+vIdQJAGyGw8UFX7LGn15BtGIJjw1Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_032909_678922_29247A73 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: SoC Team <soc@kernel.org>, Anders Roxell <anders.roxell@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 3:32 PM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, May 27, 2020 at 5:26 AM Anders Roxell <anders.roxell@linaro.org> wrote:
> >
> > Today the vexpress power driver can only be builtin.  Rework so it's
> > possible for the vexpress power driver to be a module.
>
> This is the same incomplete patch I did[1]. As a module, it needs to
> clean-up everything probe did like overwriting global variables.
>
> Rob
>
> [1] https://lore.kernel.org/linux-arm-kernel/20200419170810.5738-5-robh@kernel.org/

Your version was actually broken because it allowed unloading the
driver again. The version that Anders sent is a bit better because it
explicitly forbids unloading by having a module_init but not module_exit
function, so as long as the .suppress_bind_attrs flag is set, this will
not crash the kernel.

It would be nice to have a .remove callback, but for the merge window
I'm happy with a patch that fixes the build regression.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
