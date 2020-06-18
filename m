Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4511FEEA8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 11:29:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kGBvh1jYhpYdL7qq0S4tOWK0eDj+Ek3tA6hXwNoxG0k=; b=pBjF2BcpvLF9ZY
	LiUFTje00DzyykODewnVAHnHSrjCkcapXUzWWK10OQpXYB7pwj5U5mHZhG5JqlgAzge6C7e8Hu7Fs
	08ashsKrklQ1QeaM8L+GVKBgIIZUQvNtWgTs085WXJP8jxrdHgtRAB3Hj77kSzz4+o2aU4BQoeEhV
	j2oJ5zg6Rb9Izlj/Hjw49R46eUdXEnfnBaCRpJLRTa7THMVkGi80VWlhOYdpivmkHj30XNcAvOw+p
	opW3AAQ8TVC+k40ZLzKWaswIklBp8ZrhzL6U2tT+LUNgQMGo6gjzowgM7pbpyScM7Z34Mzp4LG41I
	2fPHb3MV+fx3JjvjO9XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlqrk-0005Hq-Gp; Thu, 18 Jun 2020 09:29:48 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqrb-0005H3-GD
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 09:29:41 +0000
Received: from mail-qt1-f175.google.com ([209.85.160.175]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Mt8cD-1isnEV0Ept-00tQwE for <linux-arm-kernel@lists.infradead.org>; Thu,
 18 Jun 2020 11:29:34 +0200
Received: by mail-qt1-f175.google.com with SMTP id v19so1417740qtq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 02:29:33 -0700 (PDT)
X-Gm-Message-State: AOAM531P1HbaRqaRpfhAOeXzQnpJMWmC/IAXHUzpJtEC6h5ps+8VdYDn
 q0pj0YjFHAywD++MlPuhsgK0d9RJPjlKGFnqP7I=
X-Google-Smtp-Source: ABdhPJzgdtQ0e15RU/B+VXyW0HKmnrk4ChsFiunlbGhEA/nSRl5iqi+DLHNRjiUEFWDMgOl/S3Q+Wjj/KNXfigA904g=
X-Received: by 2002:ac8:1844:: with SMTP id n4mr3356547qtk.142.1592472572907; 
 Thu, 18 Jun 2020 02:29:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200618080223.951737-1-lee.jones@linaro.org>
In-Reply-To: <20200618080223.951737-1-lee.jones@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 18 Jun 2020 11:29:16 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3iRmXC2jDj92QHKqyD+x_UJ7rWU_KcGt=MFOD9UW38RA@mail.gmail.com>
Message-ID: <CAK8P3a3iRmXC2jDj92QHKqyD+x_UJ7rWU_KcGt=MFOD9UW38RA@mail.gmail.com>
Subject: Re: [PATCH v3 1/1] mfd: Add I2C based System Configuaration (SYSCON)
 access
To: Lee Jones <lee.jones@linaro.org>
X-Provags-ID: V03:K1:EHCWY3FpYgRQxhnX/FbJBTA7kxGUEo3Iwkk2F8gfe0qBHXjeMw4
 GImyU8ahOgRd1vGwzsX+WdcaWQ/lX4hNZwkhpkwUEEsm/D8Qqh00gpHNgt/cVBrkxVmxZmz
 MLPnVLpaSwyeCFiYZ0SKdORULYpF+MLAQAoeK5n3H9gMPfDNf6WnpPRA/Di45ytqAEMO/VR
 s7BfGhB5hyYZ9OWVwptpg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3BQscTrdL+I=:i2leDL11C6eXiYXpPpevg6
 XPKVCGWCqE9n43GbJBpWJo7g84DEjQ7IlT89GAY6e/DsFBP0M/I4m1+Qv7Td8ZIJfhasoi9GU
 vyBa69OOuATegEXoUS+RpmMnyZLowMOBhAODSaq01+kfOdibKo/IxmVF1G95twH/0SYyWeRje
 I/5aYz6VcM1FFMZvy7If3gNuQMmc/rDf1uwIMbavPXAwgOn+jxrSLptkonlCkPX0tGHoX1TF8
 Y/x5yuyIWB/v5h5NqZ4XRgm1Mf8Y0GbNojo7u0Ae5GM1W+INZFvF/o4RH1x3j9PHHhjBAz30E
 asOlG0lCKz1VMigyeEPWnVVvNf0XtMMvSmGu0UyL+MWMfzu5U4jEkZvyr5hmtllWtFiD8q6s1
 XZodyPM/t/Z2/kUD6AH7UNu23oRvjFW4/PuGuZgI+X20wB8MGEn1O5Wx44lK0urbMsTFBpx34
 LBu6pu9fv4R8TCBQKnJIj1XjHkEqRQPUsWSkfYSAtVuQeSe+oDN6JOyWpmmAZICKpjzkq9WGD
 czacujtFIJgEm09MbKoDuVv9E/dNWIHLuMjzrQs3VJeVxKG6LgD/WMrkzAwgy+X60AuSdI96C
 t5+u65eUu3KvUQ0WUoAo0Vx89qJ14FFaitGI+5YL/IdMDuuLAjTsEqaP8N8r1nq5/gEAPZm6R
 2ji/c0wuRTru8EEj0O4hjkD3cxT/X74hNNGMQgcIo3AEdYLYxISuRVoDDraUkh1fF5s6W2Pzw
 Wvjec9HPh+cwicqQMqF7Dk23HfSK2/lTDluI+mkg7QS5ONwAtE32JqTxbnlA8W+Xq1uu7sn/j
 bJDIxUjKGFa8mUpMzRyqbnHBUiAPmUlYGeAN3kv6U2G8cAjh6w=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_022939_826744_613F9163 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
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
Cc: DTML <devicetree@vger.kernel.org>, gregkh <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, michael@walle.cc,
 Rob Herring <robh+dt@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 10:03 AM Lee Jones <lee.jones@linaro.org> wrote:
>
> The existing SYSCON implementation only supports MMIO (memory mapped)
> accesses, facilitated by Regmap.  This extends support for registers
> held behind I2C busses.
>
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

The implementation looks fine to me, but can you explain how this is going to
be used, and what the advantage is over open-coding the devm_regmap_init_i2c()
in each driver that would use this?

Is this about using proper locking through the regmap framework for
shared i2c clients, or to reduce memory consumption when lots of drivers
access the same regmap?

My impression of the existing syscon code is that the main value-add over
other ways of doing the same is the syscon_regmap_lookup_by_phandle()
interface that gives other drivers a much simpler way of getting the
regmap just based on the DT node. Are you planning to add something
like that here as well? An ideal driver interface might allow
syscon_regmap_lookup_by_phandle() to work for both mmio and i2c
based syscons, or additional ones as well, but implementing this would
be rather tricky when the i2c core is a loadable module.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
