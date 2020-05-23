Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA5D1DF99F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 19:31:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VGdDJH+I+NEzcyUP2Zb2vuo7mi71+dZeILeC4pJVlcQ=; b=uZKiKRisQKJYos
	lg9mO/Oc55pAOwkVE3uy3+2uXOexYDQcIxDab9CJaOvz9D66BJowY5RAHU9Ao5g/QkoRwpcd3BrDO
	RpL2uwMnI4dIxzOEY2YBllXZrqcSpWiKmNgicbtr+yEPBgh4XISsbejNJFgOUsHQ8bZcp32fg3iXp
	GJzGCjXItGudLQFwJqNHo2RFgQY5rkd16j2mHlLin+A98UyGuWeLHlOy8gevqV2T+DPkLtr9rYbxF
	tB3fcEdIO0vziStgxjz9TH+hN7VsA2QfbS/gDknDE7UeYdtv5TG3cCD6CZWMepT/Lfm73lVhTgMWH
	SmrJ6e0iIbjWAqkFi6RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcXzD-0008L0-Qs; Sat, 23 May 2020 17:31:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcXvk-0002jC-R7
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 17:27:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C5FED1FB;
 Sat, 23 May 2020 10:27:27 -0700 (PDT)
Received: from bogus (unknown [10.37.12.95])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CEC733F305;
 Sat, 23 May 2020 10:27:24 -0700 (PDT)
Date: Sat, 23 May 2020 18:27:21 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 2/2] firmware: smccc: Add ARCH_SOC_ID support
Message-ID: <20200523172721.GC18810@bogus>
References: <20200522124951.35776-1-sudeep.holla@arm.com>
 <20200522124951.35776-3-sudeep.holla@arm.com>
 <CAK8P3a1t6BrB_Gti138VDRbmaiR_TjwR9d6qMstLBFDWxZ1kjQ@mail.gmail.com>
 <20200522165422.GA18810@bogus>
 <CAK8P3a33_5q1bNRrt+4sQ55QKrN12rOkuzmPH0BDujbug1RTyA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a33_5q1bNRrt+4sQ55QKrN12rOkuzmPH0BDujbug1RTyA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_102728_973615_5BC0AE59 
X-CRM114-Status: GOOD (  29.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 harb@amperecomputing.com, Sudeep Holla <sudeep.holla@arm.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 08:41:59PM +0200, Arnd Bergmann wrote:
> On Fri, May 22, 2020 at 6:54 PM Sudeep Holla <sudeep.holla@arm.com> wrote:

[...]

> >
> > Not sure if I understand your concerns completely here.
> >
> > Anyways I wanted to clarify that the jep106 encoding is applicable only
> > for manufacturer's id and not for SoC ID or revision. Not sure if that
> > changes anything about your concerns.
>
> The problem I see is that by looking at just the existing attributes,
> you have no way of telling what namespace the strings are in,
> and a script that tries pattern matching could confuse two
> hexadecimal numbers from a different namespace, such as
> pci vendor/device or usb vendor/device IDs that are similar
> in spirit to the jep106 codes.
>

Ah OK, understood.

> > > - I think we should have something unique in "family" just because
> > >   existing scripts can use that as the primary indentifier
>
> This is part of the same issue: If we put just "jep106 identified SoC"
> as the "family", it would be something a driver could match against.
>

I understand that and that's the reason I was introducing new field as
manufacture but I now see there is no point in adding that.

[...]

> > But this just indicates manufacturer id and nothing related to SoC family.
> > If it is jep106:043b, all it indicates is Arm Ltd and assigning it to
> > family doesn't sound right to me.
> >
> > I had requests for both of the above during the design of interface but
> > I was told vendors were happy with the interface. I will let the authors
> > speak about that.
>
> In most cases, the existing drivers put a hardcoded string into the
> family, such as
>
> "Samsung Exynos"
> "Freescale i.MX"
> "Amlogic Meson"
>
> or slightly more specific
>
> "R-Car Gen2"
>

Hmmm....

> Having a numeric identifier for the SoC manufacturer here is a
> bit more coarse than that, but would be similar in spirit.
>

Agreed.


[..]

> >
> > OK, I agree on ease part. But for me, we don't have any property in the
> > list to indicate the vendor/manufacturer's name. I don't see issue adding
> > one, name can be fixed as jep106_identification_code is too specific.
> >
> > How about manufacturer with the value in the format "jep106:1234" if
> > it is not normal string but jep106 encoding.
>
> I don't think we need a real name like "Arm" or "Samsung" here,
> but just a number is not enough, it should at least be something
> that can be assumed to never conflict with the name of a chip
> by another scheme.
>

Fair enough.

> jep106:5678 (the IMP_DEF_SOC_ID field in my example) would
> probably be sufficient to not conflict with a another soc_device
> driver, but is quite likely to clash with an ID used by another
> manufacturer.
>

IIUC, you are fine with "jep106:1234:5678" where 1234 is jep106 manufacture
id code and 5678 is soc_id as it may avoid all the conflicts across
the manufacture namespaces.

> jep106:1234 (the manufacturer ID) in turn seems too broad from
> the soc_id field, as that would include every chip made by one
> company.
>

I understand, and IIUC you prefer this to be embedded with soc_id
especially to avoid namespace conflicts which makes sense.

Thanks for all the discussion and valuable inputs. I am now bit nervous
to add SoC info from SMCCC ARCH_SOC_ID to sysfs yet as we need more info
especially "machine" and "serial_number" for elsewhere(OEM firmware mostly
from DT or ACPI).


TBH, the mix might be bit of a mess as there are soc drivers that rely
on DT completely today. Anyways, this SOC_ID can be added as library that
can be used by a *generic* soc driver once we define a standard way to
fetch other information("machine" and "serial_number"). I am happy to
get suggestions on that front especially from you and Francois as you
have got some context already.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
