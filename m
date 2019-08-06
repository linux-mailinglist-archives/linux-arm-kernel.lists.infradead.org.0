Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6584582D07
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 09:44:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5mdjTvjKLqZcYzuc2QQXFDoDH0Ntr+72a57FzsZsJy4=; b=SPrHh9ak05x1gb
	2XSpfAGJRzTE9zxcmvQTnmmeTeqSNiE3tm9Gcsv21ntrInmBuR8v8iaMsptvf5XMo/Nd5qq00p7LM
	3OBdcdv21Xq+jZdllD6+TP+Gh+fhEzwyWk9cj3POzXkh5PsZcZbYgtAFI34ZN2TzmaHXFMuR0eBkz
	IjS0LqiKq4ufwaGhuKaDK6YAweG7NtRkZB0L8wWHHcLTxKArexMVRZtFXgWPBoaBn/mtBdTJpIX3S
	y2csYO0ouKbN3gLF1f73DfYiHD1jRjtddWcqYScs9uha3xkeYt3WNeSwb2kjbyRa5yvd9svyh6BWm
	l8Fihujfi6gNi9qUiTTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huu8a-0002dn-1I; Tue, 06 Aug 2019 07:44:04 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huu8I-0002TC-0b
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 07:43:48 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x767a9Zg022307; Tue, 6 Aug 2019 09:43:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=/lTfM/jLt8aE0nH0z2vpcWD1oauUojVU8TyyofiaOh4=;
 b=M7SgaNdof/OSDLy1NSCYPxxv5gjgiKsYWxXOC7vPkQfatQpgaxVU9TWOXreXHnJJzm6m
 e8qShY0uKnLI1fK7sg/s35JU2A2f90fYsRkWzFFXswEM754M4chMlBhYB8yGfJWE5XAG
 TfSvhlgExPQ5Mhb822oVeQZl1d08EdJF01lLp2GorSNmPAoIzjXbtKMhr6+VWxJ5zv6e
 3Jb2QVhlL8d/gxZ/EGVx+ODPDIpiMRDZhzNLAEEy1HvgdFS56BbvAVO1tKN5pJ17TGtR
 ZMtoH8fn0k7G9tYGtAmBIBUP/vuad7INoW/lZZI7Nao6ZKXVK5v/5SkXXCWiZUJzwl7f lA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2u5sd1jkm0-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 06 Aug 2019 09:43:40 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8738A3D;
 Tue,  6 Aug 2019 07:43:38 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6804B2FF5E9;
 Tue,  6 Aug 2019 09:43:38 +0200 (CEST)
Received: from SFHDAG5NODE3.st.com (10.75.127.15) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 6 Aug
 2019 09:43:38 +0200
Received: from SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47]) by
 SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47%20]) with mapi id
 15.00.1473.003; Tue, 6 Aug 2019 09:43:38 +0200
From: Fabien DESSENNE <fabien.dessenne@st.com>
To: "s-anna@ti.com" <s-anna@ti.com>
Subject: RE: [PATCH 0/6] hwspinlock: allow sharing of hwspinlocks
Thread-Topic: [PATCH 0/6] hwspinlock: allow sharing of hwspinlocks
Thread-Index: AQHU2bSOZtnkIyxqbUq77/gp1YrMkqbnZZ+AgAWakoCAAJZugIABCeoQ
Date: Tue, 6 Aug 2019 07:43:37 +0000
Message-ID: <543ee96699164a3cb95fe6a9aab54eae@SFHDAG5NODE3.st.com>
References: <1552492237-28810-1-git-send-email-fabien.dessenne@st.com>
 <20190801191403.GA7234@tuxbook-pro>
 <1a057176-81ab-e302-4375-2717ceef6924@st.com>
 <20190805174659.GA23928@tuxbook-pro>
In-Reply-To: <20190805174659.GA23928@tuxbook-pro>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.46]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-06_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_004346_419290_11A10B9B 
X-CRM114-Status: GOOD (  42.69  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Mark
 Rutland <mark.rutland@arm.com>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Jonathan Corbet <corbet@lwn.net>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suman,

Could you please let us know your thoughts or comments?

BR

Fabien


> -----Original Message-----
> From: Bjorn Andersson <bjorn.andersson@linaro.org>
> Sent: lundi 5 ao=FBt 2019 19:47
> To: Fabien DESSENNE <fabien.dessenne@st.com>
> Cc: Ohad Ben-Cohen <ohad@wizery.com>; Rob Herring <robh+dt@kernel.org>;
> Mark Rutland <mark.rutland@arm.com>; Maxime Coquelin
> <mcoquelin.stm32@gmail.com>; Alexandre TORGUE
> <alexandre.torgue@st.com>; Jonathan Corbet <corbet@lwn.net>; linux-
> remoteproc@vger.kernel.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-stm32@st-md-mailman.stormreply.com; linux-a=
rm-
> kernel@lists.infradead.org; linux-doc@vger.kernel.org; Benjamin GAIGNARD
> <benjamin.gaignard@st.com>
> Subject: Re: [PATCH 0/6] hwspinlock: allow sharing of hwspinlocks
> =

> On Mon 05 Aug 01:48 PDT 2019, Fabien DESSENNE wrote:
> =

> >
> > On 01/08/2019 9:14 PM, Bjorn Andersson wrote:
> > > On Wed 13 Mar 08:50 PDT 2019, Fabien Dessenne wrote:
> > >
> > >> The current implementation does not allow two different devices to
> > >> use a common hwspinlock. This patch set proposes to have, as an
> > >> option, some hwspinlocks shared between several users.
> > >>
> > >> Below is an example that explain the need for this:
> > >> 	exti: interrupt-controller@5000d000 {
> > >> 		compatible =3D "st,stm32mp1-exti", "syscon";
> > >> 		interrupt-controller;
> > >> 		#interrupt-cells =3D <2>;
> > >> 		reg =3D <0x5000d000 0x400>;
> > >> 		hwlocks =3D <&hsem 1>;
> > >> 	};
> > >> The two drivers (stm32mp1-exti and syscon) refer to the same hwlock.
> > >> With the current hwspinlock implementation, only the first driver
> > >> succeeds in requesting (hwspin_lock_request_specific) the hwlock.
> > >> The second request fails.
> > >>
> > >>
> > >> The proposed approach does not modify the API, but extends the DT
> 'hwlocks'
> > >> property with a second optional parameter (the first one identifies
> > >> an
> > >> hwlock) that specifies whether an hwlock is requested for exclusive
> > >> usage (current behavior) or can be shared between several users.
> > >> Examples:
> > >> 	hwlocks =3D <&hsem 8>;	Ref to hwlock #8 for exclusive usage
> > >> 	hwlocks =3D <&hsem 8 0>;	Ref to hwlock #8 for exclusive (0) usage
> > >> 	hwlocks =3D <&hsem 8 1>;	Ref to hwlock #8 for shared (1) usage
> > >>
> > >> As a constraint, the #hwlock-cells value must be 1 or 2.
> > >> In the current implementation, this can have theorically any value b=
ut:
> > >> - all of the exisiting drivers use the same value : 1.
> > >> - the framework supports only one value : 1 (see implementation of
> > >>    of_hwspin_lock_simple_xlate())
> > >> Hence, it shall not be a problem to restrict this value to 1 or 2
> > >> since it won't break any driver.
> > >>
> > > Hi Fabien,
> > >
> > > Your series looks good, but it makes me wonder why the hardware
> > > locks should be an exclusive resource.
> > >
> > > How about just making all (specific) locks shared?
> >
> > Hi Bjorn,
> >
> > Making all locks shared is a possible implementation (my first
> > implementation was going this way) but there are some drawbacks we
> > must be aware of:
> >
> > A/ This theoretically break the legacy behavior (the legacy works with
> > exclusive (UNUSED radix tag) usage). As a consequence, an existing
> > driver that is currently failing to request a lock (already claimed by
> > another
> > user) would now work fine. Not sure that there are such drivers, so
> > this point is probably not a real issue.
> >
> =

> Right, it's possible that a previously misconfigured system now successfu=
lly
> probes more than one device that uses a particular spinlock. But such sys=
tem
> would be suffering from issues related to e.g.
> probe ordering.
> =

> So I think we should ignore this issue.
> =

> > B/ This would introduce some inconsistency between the two 'request'
> > API which are hwspin_lock_request() and hwspin_lock_request_specific().
> > hwspin_lock_request() looks for an unused lock, so requests for an
> > exclusive usage. On the other side, request_specific() would request sh=
ared
> locks.
> > Worst the following sequence can transform an exclusive usage into a
> > shared
> >
> =

> There is already an inconsistency in between these; as with above any sys=
tem
> that uses both request() and request_specific() will be suffering from in=
termittent
> failures due to probe ordering.
> =

> > one:
> >  =A0 -hwspin_lock_request() -> returns Id#0 (exclusive)
> >  =A0 -hwspin_lock_request() -> returns Id#1 (exclusive)
> >  =A0 -hwspin_lock_request_specific(0) -> returns Id#0 and makes Id#0
> > shared Honestly I am not sure that this is a real issue, but it's
> > better to have it in mind before we take ay decision
> =

> The case where I can see a
> problem with this would be if the two clients somehow would nest their lo=
cking
> regions.
> =

> But generally I think this could consider this an improvement, because the
> request_specific() would now be able to acquire its hwlock, with some add=
itional
> contention due to the multiple use.
> =

> > I could not find any driver using the hwspin_lock_request() API, we
> > may decide to remove (or to make deprecated) this API, having
> > everything 'shared without any conditions'.
> >
> =

> It would be nice to have an upstream user of this API.
> =

> >
> > I can see three options:
> > 1- Keep my initial proposition
> > 2- Have hwspin_lock_request_specific() using shared locks and
> >  =A0=A0 hwspin_lock_request() using unused (so 'initially' exclusive) l=
ocks.
> > 3- Have hwspin_lock_request_specific() using shared locks and
> >  =A0=A0 remove/make deprecated hwspin_lock_request().
> >
> > Just let me know what is your preference.
> >
> =

> I think we should start with #2 and would like input from e.g. Suman rega=
rding #3.
> =

> Regards,
> Bjorn
> =

> > BR
> >
> > Fabien
> >
> > >
> > > Regards,
> > > Bjorn
> > >
> > >> Fabien Dessenne (6):
> > >>    dt-bindings: hwlock: add support of shared locks
> > >>    hwspinlock: allow sharing of hwspinlocks
> > >>    dt-bindings: hwlock: update STM32 #hwlock-cells value
> > >>    ARM: dts: stm32: Add hwspinlock node for stm32mp157 SoC
> > >>    ARM: dts: stm32: Add hwlock for irqchip on stm32mp157
> > >>    ARM: dts: stm32: hwlocks for GPIO for stm32mp157
> > >>
> > >>   .../devicetree/bindings/hwlock/hwlock.txt          | 27 +++++--
> > >>   .../bindings/hwlock/st,stm32-hwspinlock.txt        |  6 +-
> > >>   Documentation/hwspinlock.txt                       | 10 ++-
> > >>   arch/arm/boot/dts/stm32mp157-pinctrl.dtsi          |  2 +
> > >>   arch/arm/boot/dts/stm32mp157c.dtsi                 | 10 +++
> > >>   drivers/hwspinlock/hwspinlock_core.c               | 82 ++++++++++=
+++++++-
> ----
> > >>   drivers/hwspinlock/hwspinlock_internal.h           |  2 +
> > >>   7 files changed, 108 insertions(+), 31 deletions(-)
> > >>
> > >> --
> > >> 2.7.4
> > >>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
