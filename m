Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E11071DFABB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 21:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IFhT/6gA7Elg6Ao8K/o9nVItSFIqfbKZAoCQM2VB9bI=; b=teK9SVdvFI7KtP
	MpPinfueUat5zMr1jaQDnLxAkNq4ZMi59AdhqjXHEGvSvO7LmOoCbwlE2O5lnHEi79TVt4TUCT4w3
	wEa6gVl3f0EFx3xojwx9SLzxBMvuPA9S3PEdrwzzic0Aj+F0bY1a+J2IVK0UY2iveJrdBrcgvqQLq
	rbQIyPxAeXECyy6Q8SoplpICKqHeha5BQUpTPd1rsU7kLjHLOfMQ0gyOxiFzQvi9hYH/lFuVD5lPT
	n0o+B3WyrBlEg32i7s9OOJnvG0s1yt4z9/vq4ye6UMkPkIjA2C9+RYj8xnoSnT/o1SlYah81HPhKu
	scL+O8NQE68WKlGO5pjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jca0n-0005Jq-0w; Sat, 23 May 2020 19:40:49 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jca0d-0005JE-L6
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 19:40:41 +0000
Received: from mail-qk1-f174.google.com ([209.85.222.174]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MzCMN-1iqVtJ1gLT-00wCn3 for <linux-arm-kernel@lists.infradead.org>; Sat,
 23 May 2020 21:40:34 +0200
Received: by mail-qk1-f174.google.com with SMTP id s1so14120779qkf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 May 2020 12:40:34 -0700 (PDT)
X-Gm-Message-State: AOAM531zTUYe9sjsfwxaNwOg4QtrTPftz7qoTeqnMasqt9vGeLxzcubk
 Y6EgxH9+rPG8rpDQjXLUDHDlpO4gHqk6lrHfw0Q=
X-Google-Smtp-Source: ABdhPJxdmk1QexqtMHGdeu7MjmgSEmO7EE3boE5eJeGCXiRwjdR/yqCPJLcX8W0/EipJ3GhWH9ul/Jj6wMwUoHLjl90=
X-Received: by 2002:a37:bc7:: with SMTP id 190mr20341230qkl.286.1590262833137; 
 Sat, 23 May 2020 12:40:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200522124951.35776-1-sudeep.holla@arm.com>
 <20200522124951.35776-3-sudeep.holla@arm.com>
 <CAK8P3a1t6BrB_Gti138VDRbmaiR_TjwR9d6qMstLBFDWxZ1kjQ@mail.gmail.com>
 <20200522165422.GA18810@bogus>
 <CAK8P3a33_5q1bNRrt+4sQ55QKrN12rOkuzmPH0BDujbug1RTyA@mail.gmail.com>
 <20200523172721.GC18810@bogus>
In-Reply-To: <20200523172721.GC18810@bogus>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 23 May 2020 21:40:17 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1+jjgOyJcRQm60RULjwtvWzvYK1QwrjOX_aRAbDGKuJg@mail.gmail.com>
Message-ID: <CAK8P3a1+jjgOyJcRQm60RULjwtvWzvYK1QwrjOX_aRAbDGKuJg@mail.gmail.com>
Subject: Re: [PATCH 2/2] firmware: smccc: Add ARCH_SOC_ID support
To: Sudeep Holla <sudeep.holla@arm.com>
X-Provags-ID: V03:K1:2ZUPzU7cWbvhIqaYigeXAY6oWog4FrqBgMzOqv+mFiTjjzquEoa
 N/TP1KhLPot2cVUV4zdq4ZiR/xR1x2mvVf97ZGjRSaIRmz+LOXum7nN12xJuSnImUvYSeoS
 k/mpRdr5QY+qrznU8waqLBWnDvIceH7SbpVVkURstYiKXlejVB82T2YWaBBA77CEyZuX7xi
 +0J1wjIgJFG7EzpEdEtaQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:slDnUAcRQjA=:AkliYeSIrwua6IvhxzBx52
 ikv47I0mJuhGytqhM0EdxxAh8G7P+3RfU5iTIypq1byTacYN8LATwVwBpfyClsbNrJZ+HD0Yb
 UpHzQLGqEdCI4rQ+3/TpOBY1iyYnfp7OnA3JI0pgklWK760ma3BVT4myOVpQMOEL4PnMqg+HH
 CFVtTCNk/+jg/GB4/AXdG2HSu3INvKfmOboMxYEVTih2IIEFZqZJ8UCJLdz/wCBn7mLccJMTx
 +deFb++pilf3Kgzvpy77pikYyoVPQmXeJ4wd5E3913qNU5RYtoDBjfbfkrVoFExDWanFp9UB4
 OYJJnmE7T9x9gmMHSScOOlmp2uitQzvBtVdqUppIjIIs5Rl1fI5DGM6yP1mYm4KCiypxpf4PK
 JLv+QrBY9BXgQ5qPftUkHncZFUUuoJUSHLWCqE4aNmGyiX+duay5ap3cLip8Dz+T0PJC4dgk3
 BmOoNDm2HOIhYfk1LOJu9UyAndPrOPI8mQ6BA42JFEfl53sE2vfwmI9JJFZt8qe68dRp4mnBD
 DhsTSbpHm/QsunKmVUSyiQprwjMNttqAOJ8HflMtALBgSVFxhW09XRYpgsxMPs9QNHNAYyj4p
 l7waApcJdFiap9dog11CONjeKhg6dbNwEcAhNAfm6oZWrn0oBnny2KeQqvJ5kcoeTTzfAVWwG
 iBNgPvi4kemJ4tgOJLFTQFRqmHWZQeV431Ng8ud2oBde2QWELtnvbb97+HLCzMQ+0KAAsl1U6
 xbkFIN11HyQawCf7JxIXunEpK/wtBmAHgVgdqiF9xlhP+/gXDkpeMQMwIAcv0MkPYuEi9B8cC
 TtWSKjJmupHs6gHvgO5me1ej1wvXSYO9jmFyzO625H4jAZeqG8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_124039_984109_401B158B 
X-CRM114-Status: GOOD (  18.61  )
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

On Sat, May 23, 2020 at 7:27 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> On Fri, May 22, 2020 at 08:41:59PM +0200, Arnd Bergmann wrote:
> > On Fri, May 22, 2020 at 6:54 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> > jep106:5678 (the IMP_DEF_SOC_ID field in my example) would
> > probably be sufficient to not conflict with a another soc_device
> > driver, but is quite likely to clash with an ID used by another
> > manufacturer.
> >
>
> IIUC, you are fine with "jep106:1234:5678" where 1234 is jep106 manufacture
> id code and 5678 is soc_id as it may avoid all the conflicts across
> the manufacture namespaces.

I think either jep106:5678 or jep106:1234:5678 (or some variation with
different field separators if you prefer) would be fine here.

> > jep106:1234 (the manufacturer ID) in turn seems too broad from
> > the soc_id field, as that would include every chip made by one
> > company.
> >
>
> I understand, and IIUC you prefer this to be embedded with soc_id
> especially to avoid namespace conflicts which makes sense.
>
> Thanks for all the discussion and valuable inputs. I am now bit nervous
> to add SoC info from SMCCC ARCH_SOC_ID to sysfs yet as we need more info
> especially "machine" and "serial_number" for elsewhere(OEM firmware mostly
> from DT or ACPI).

I probably wouldn't mix those in with the same driver. If machine and
serial_number have no smccc interface, then they should be left out,
but there could be a separate soc_device that gets that information
by other means, usually using one of the existing hardware id register
drivers.

> TBH, the mix might be bit of a mess as there are soc drivers that rely
> on DT completely today. Anyways, this SOC_ID can be added as library that
> can be used by a *generic* soc driver once we define a standard way to
> fetch other information("machine" and "serial_number"). I am happy to
> get suggestions on that front especially from you and Francois as you
> have got some context already.

Well, I suppose we could have the entire data from the smccc interface
in a central place somewhere, such as (to stay with my example)
"1234:5678:9abcdef0" in an attribute of any soc_device driver that
adds a call to a library function for the jep106 ID, or possibly in
/sys/firmware or even a field added to /proc/cpuinfo.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
