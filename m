Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA121DC19F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 23:52:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BnpJlDDxd7PB+0lEnEB/ewUTtHzN4NFCkziF0B+wy48=; b=sofejSHWy7ywcP
	jTiZJ4IT7oo+CFA4FLZQSJt1m2/3odtYFTjMDMitqVWBKOA/gI+fX/WooeTQVqLpDL8QbJDuv7q2b
	ZLgkhDj3FyrNZhojdbJdXwxY/9ee9RKF5+g0jl57qqrEJINUbAzm6AKHpbjfCTATpFrY/8k3tEvhy
	Z4/+ebDWJNAFERXGDQHmdLFgyZLKOcDkNlHIt1/ILHtVhYcEmhNIsS05w+SYVkrOOVTZtwjcdZsdi
	3Ocp+pURUzFyZajgulWMiamVAC7DTARqi78xux6vVtuD/AcwOeDsBCmzKreU868hS6fd8aX9ZMM6n
	LE+K5fhBPBbwV1AMFJVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbWdP-0002XJ-3H; Wed, 20 May 2020 21:52:19 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbWdF-0002WJ-15
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 21:52:10 +0000
Received: from mail-qk1-f180.google.com ([209.85.222.180]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MUok5-1jSUEu2ouP-00Qgvc for <linux-arm-kernel@lists.infradead.org>; Wed,
 20 May 2020 23:52:05 +0200
Received: by mail-qk1-f180.google.com with SMTP id b6so5223963qkh.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 14:52:04 -0700 (PDT)
X-Gm-Message-State: AOAM532nwJ5S0P92V9ncQRewSC5Rluk+GCLqFygFjK+XTl9oy62TVjhh
 pIWu3pX2Xp7hph+10K3xZANQH7/u7fp1B8oE1vI=
X-Google-Smtp-Source: ABdhPJxRbi0MiQo5LHl7IsWyHK1uuyEIhLaUVN+AuiR50+YI5y03MH2otO1L7nuScC6ChfjLJivuQ626xbz3vZftMA0=
X-Received: by 2002:a37:434b:: with SMTP id q72mr7329549qka.352.1590011523351; 
 Wed, 20 May 2020 14:52:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200518091222.27467-1-sudeep.holla@arm.com>
 <20200518091222.27467-8-sudeep.holla@arm.com>
 <CAK8P3a20R+H6m5GZj2_0w3s-xF+J_qSVrQH8EjyQXe6+9WTYxw@mail.gmail.com>
 <20200518115546.GB16262@bogus>
In-Reply-To: <20200518115546.GB16262@bogus>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 20 May 2020 23:51:47 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3bOEL5wYFc1Fjg1vAT51NumzO0iUSroHQLSUt8WpZL7g@mail.gmail.com>
Message-ID: <CAK8P3a3bOEL5wYFc1Fjg1vAT51NumzO0iUSroHQLSUt8WpZL7g@mail.gmail.com>
Subject: Re: [PATCH v4 7/7] firmware: smccc: Add ARCH_SOC_ID support
To: Sudeep Holla <sudeep.holla@arm.com>
X-Provags-ID: V03:K1:8SFf20+AzaRTEewL13Pbco8lcCdEmzv+g+dV3KaaTdIxxS0IygT
 tYvhnxvIxyy0oSAzS7wtA34A2nWLWGYerInPl31VXgc8xUuBl1IyfLTQLStF8HLRvemykeM
 s7T8l/M1//s69yCDZ6sDcHkD7iRyzDqmebm1UbESrW10C5TdNCgsmtVf9q6+pQ+D+JvtKg+
 MX/0lF1iQ/lh90j3On2Ww==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AN0jD9qMhKU=:R1Hh1nhygGUYjzcE4ngNiY
 oCfbzX0wD7LMkF2IKVhn3r9/KigEuZU6GFOZhHE3dn5FrJeiaJ7Nvj8g7W3MgAaAK2bHOTj70
 Bk/RRI5a3AxTgJ+lhVEm8XcrzaKeMTrNJvcjMWkT7DEbXgw6cwLzqkiQnkZxWOh8hM8VV+PZU
 sksHDYQscfH1MXfjdOAeI5EoRszHx/cJaT7ClXLPJGBDBl9DV6H6ie/D+P2kKzCIqIDim6LOu
 20c6g0KNz5/BZSoZ7EWzaSWAm3VOQls5svfrQgX40VuwXl+KrZvo3T9CXWc/gbDZOVG5MTxuI
 TfI8xcPWHUCWIX1uMxYmW90xUettmWRbaWC6g3/iwVBX0olLf6cHsXrU9dI5DdxC85FTQm3Uy
 gww64Gn2Fl7Ok4xyxPK+2yJfWtYUH2XpNE6rHIVHeIfEAnSKWMB6RDpvnJDVPIRb5TjqW0tfG
 qmAAlD32FW0NVFC9788/8JctmHOpodNlYof+02++1yjMcfMlEScuHsQHCtJAsB3lnlXUrqSzA
 vF1n+W02oQHJM5FqOeriITdqKsugfKx4hQlfcB8AA2WVOXfoOx9hDuc4hlNO1jWEMMJniUgxz
 DytqF5s70nCoIOx0oE5F4qrfm5/hnySDZAGXJctMQelsSBm+tE+yO2TuFMSEf1+zeacwFYEkR
 GS3jcfw5rCWFuoEfHtH2jBZ7ENmHXeBMupomw03Z6YW6m/t0odHaRGy7szbSGXx+bd8u9nfKO
 y9pQNOM4iuCkNpOR+slP3CgYXVPIKGcgtGOryELLgxrKShamXmFoLloEXUlH2JoaYEEgAE0Xs
 R8gMx8WH7oVpH+Q+4kBHCVcQVA9hPY6OwH6W0ywiBkYjM7IIHY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_145209_364081_B88AD1E1 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven Price <steven.price@arm.com>, harb@amperecomputing.com,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 1:55 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Mon, May 18, 2020 at 11:30:21AM +0200, Arnd Bergmann wrote:
> > On Mon, May 18, 2020 at 11:12 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > > +static ssize_t
> > > +jep106_cont_bank_code_show(struct device *dev, struct device_attribute *attr,
> > > +                          char *buf)
> > > +{
> > > +       return sprintf(buf, "0x%02x\n", JEP106_BANK_CONT_CODE(soc_id_version));
> > > +}
> > > +
> > > +static DEVICE_ATTR_RO(jep106_cont_bank_code);
> > > +
> > > +static ssize_t
> > > +jep106_identification_code_show(struct device *dev,
> > > +                               struct device_attribute *attr, char *buf)
> > > +{
> > > +       return sprintf(buf, "0x%02x\n", JEP106_ID_CODE(soc_id_version));
> > > +}
> >
> > I think we should try hard to avoid nonstandard attributes for the soc device.
> >
>
> I agree with that in general but this is bit different for below mentioned
> reason.
>
> > Did you run into a problem with finding one of the existing attributes
> > that can be used to hold the fields?
> >
>
> Not really! The 2 JEP106 codes can be used to derive the manufacturer which
> could match one of the existing attributes. However doing so might require
> importing the huge JEP106 list as it needs to be maintained and updated
> in the kernel. Also that approach will have the compatibility issue and
> that is the reason for introducing these attributes representing raw
> values for userspace.

I was thinking they codes could just be part of the normal strings rather
than get translated. Can you give an example what they would look like
with your current code?

If  you think they should be standard attributes, how about adding them
to the default list, and hardcoding them in the other soc device drivers
based on the information we have available there?

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
