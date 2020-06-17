Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F37FD1FCF06
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 16:02:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pbJeScdqzy5wp5V26YlqcsyHeTejnc57q36cn1P5sMM=; b=nm4jyCizYrgEKs
	HsB/Ek5PaQGRc4K+4KR7TiEyTYutc8wBg0wOkF6WWAb4/r2TvyXFA1opmOULnL44zOGAKRtSyQLxc
	6hLIYF5FbPDxiRpf+OuZ6lPknBz0e9O/J2yz7LUXo6jKB93a8Ia36vkRYdZf/JeaE2Cz0k0k38TTe
	WTL53HwI4BYIfhle1dj1Gsrf0+huIxytj+T8yeHywUjtAyGrtLRfJU9nKu9NT7Ebv1BjL3mjkZJqV
	dIxfY4wEjkuDRyWYsenu/JFaShf5n37T7+ZBeqvGLmuiL3a87xlRIAMS/H+fga6243AzWtOvACFO4
	p7AbZwtNbVETpS4TKb1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlYeC-0001tQ-Gu; Wed, 17 Jun 2020 14:02:36 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlYe1-0001sG-F8
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 14:02:27 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05HE08Fc010663; Wed, 17 Jun 2020 10:02:17 -0400
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2176.outbound.protection.outlook.com [104.47.55.176])
 by mx0a-00128a01.pphosted.com with ESMTP id 31q670an67-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 17 Jun 2020 10:02:15 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HOD7d2odE9IVu2z1yX5QgVvjNkhy2aPlBptQsrD693nDorzXo4fpZN3NXVLpKmww5S4BXw7TQGHtSkspMOUill9zBrq7nOy1Bwoj0DELg1S7SzFj4IuS4QM5JrCHpWt201/LY9dHpyNNMSgTrxiA+I2pjZkY1fobYu/QBJLK5R42rybePXSFvCxO3f9s4xmkmiRPF9t1Y8GcMYSlz/ZAkDMlazBeGTYZhtKZxtzXtv7ON1I4/SMdAAGTTUmjrDgQclxkLRUVa5BwojWFRKcfCePrrCXHA5roE5NFC9MMSt5HB8/bfF0cZ1DgPB2cckaAAmp21mvYql33/TY2t/V0sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3xjQe+tqOGgLUdpxo6+HdDeQ8yN42v5nyQsbj8jfR9M=;
 b=daS0v6DAfoVROi7DPhZouGxOMc1UpQ5kJ8L2fwPYwM/PvpXwqxuRPuKgl0nsqAOWxrZh6sqAYGSPTkzG6lB8XZ/UTtRcONaD8LrN5SRyHLv4X11Q1IUQqUUlnuJ/ISpYtaGhpT/SOmeos+baTafVnvdv4h1JDIBzJLfETcJswbyFeBxZ412HWvFE+3BlIZxrsah93BdYPIKOx0XNc8c/5pVGcH/hg3gWBe9LGEifa+YFjXLmQqjJYiZeqvom5dIHKAzVOgiN1BKd5lmwchxSy8ZGL60dG64KyotdgSR9MQe3YFWdMToppOuvIrHhQgIWrGVgSfc0DjNUl1V6Z95V1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3xjQe+tqOGgLUdpxo6+HdDeQ8yN42v5nyQsbj8jfR9M=;
 b=cIZxt9/mZfDTKJ/jg334tRm3dVvOQ2VHNwqcuHxm4FTx4x0Ktqe8qKdc6/XZQDxbcKuTUJ4Qtn6fJmwOipCRYNX4YKD68h3jCTEntjC6jPvN0A383DjhhHyJHCFR8lR5i57uRRGapR1iRn7N7nDDpdMRYBOWp3YuFyLu3s518o0=
Received: from DM6PR03MB4411.namprd03.prod.outlook.com (2603:10b6:5:10f::14)
 by DM5PR03MB3097.namprd03.prod.outlook.com (2603:10b6:4:3c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21; Wed, 17 Jun
 2020 14:02:14 +0000
Received: from DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::e02f:b3c0:d1e9:5eaf]) by DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::e02f:b3c0:d1e9:5eaf%3]) with mapi id 15.20.3109.021; Wed, 17 Jun 2020
 14:02:13 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "Eugen.Hristev@microchip.com" <Eugen.Hristev@microchip.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Subject: Re: [PATCH] iio: at91-sama5d2_adc: remove usage of iio_priv_to_dev()
 helper
Thread-Topic: [PATCH] iio: at91-sama5d2_adc: remove usage of iio_priv_to_dev()
 helper
Thread-Index: AQHWMoLBi2/hPBTYk0i6VuKiVW+38ajCTXUAgBqjH4CAAApaAA==
Date: Wed, 17 Jun 2020 14:02:13 +0000
Message-ID: <8c4c05458e32f56a5d8492482f9f5403feda1894.camel@analog.com>
References: <20200525105341.137945-1-alexandru.ardelean@analog.com>
 <20200531153908.47ccbc37@archlinux>
 <8caaa1f8-ebbe-50ab-a655-d5c487c9a751@microchip.com>
In-Reply-To: <8caaa1f8-ebbe-50ab-a655-d5c487c9a751@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: microchip.com; dkim=none (message not signed)
 header.d=none;microchip.com; dmarc=none action=none header.from=analog.com;
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9e809979-d358-407e-3ba7-08d812c7097c
x-ms-traffictypediagnostic: DM5PR03MB3097:
x-microsoft-antispam-prvs: <DM5PR03MB3097C81264F15C665E315815F99A0@DM5PR03MB3097.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: E8JjahJ0TGODSe9+Xae7TG04gu3ecWU0ATAkYeOtbD1xudXZc+hGaKAkgl49DGqcGb4pHnhYR45i2psKpJoJ3m/yfCGy/JqAO/uQ24bXXlAcPPniOT7PBrgoDN6hBwA/Dw38O9oa7IWexuRUKG8vh5dJZhj5n7+sf4sXylYLCNwH82fp/1ktSImrtbwA3YsYzfMeREXKCdm2JyHebADprFdRplir54lY7xEQS0dp0mdMJeZH6F/qvvoaoj4Q3VcnXX69uRUf0YXu0OD6+jBl+Lv+3PiopfdfSHDP3bmdqKK/UKJRmbiMMFK87uLzwuI1PwnAoZp0nBAJkknoYb5Y8x7QontS8EdL0ydA59NbbAKAJnNufgwKk22lpFxbGletWi7yvw271sJKwNwRNl8duA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR03MB4411.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(396003)(39860400002)(136003)(346002)(376002)(2616005)(54906003)(8676002)(83380400001)(316002)(71200400001)(8936002)(36756003)(91956017)(110136005)(86362001)(66476007)(186003)(76116006)(66946007)(64756008)(66446008)(66556008)(6486002)(26005)(6512007)(2906002)(966005)(478600001)(5660300002)(53546011)(4326008)(6506007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: HWDpfXsvNaOKtum8Rp6hlDSaqvIuz7OKdl+czpVu1N/YGXz//OZaSuxf/mx/38Q1GYQM1mgc8CkOKbybCSs73hspWzUKOiONyQOF3EmQV9c+aS0BGLJmmQLiw9u6bYRANuYApkhv34S1vRb5MSuwAIGcsDsmRHHztYcjLUGZCsUzaegero4YNGRmBN2+nlQr+z2T4d+VnUdlv7GzwAnzzuryl5EpP33PzT8vdT7pJbet81VCPaxrbCm+a35OVfRlZItjUxzpdxC4zuFhVmkpBrwy8PfskLEzg5CQlKTIl02koQVzNrG/PAUHIQemBs5E+ILIZ4prpd0QqfbEphXg4i9XF/Lc2OwxIihv8JdDBE3JGbkw+9rdVi/VC+WLhPto3/RYoIhfbUAmmJ3X74OBKdcq5SIpE4MjBMbXX1KG3iSE6l859CSlMq6wu2+/hrXE2rQT+NmOPs7h7GlDzyxAkHvW3zD9vqc8aO67N7SOta8=
x-ms-exchange-transport-forked: True
Content-ID: <E981A68ADE3150438EA2FF96D110D1C1@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e809979-d358-407e-3ba7-08d812c7097c
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 14:02:13.8414 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W6QOVVX6CovPIijSkrM4CPSq3SIpjgv9Da1lvfHDAH16+BB04Ku/014Lesj9FPmPND0pgC6ZQ7CE/vFMxIIkKujhI5IDXKSp3Xx/5VhFb7o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR03MB3097
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-17_04:2020-06-17,
 2020-06-17 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxlogscore=999
 clxscore=1015 cotscore=-2147483648 spamscore=0 malwarescore=0
 impostorscore=0 priorityscore=1501 phishscore=0 mlxscore=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006170109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_070225_522045_E9FF1B18 
X-CRM114-Status: GOOD (  32.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.135.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_L4      RBL: Bad reputation (-4)
 [148.163.135.77 listed in bl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
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
Cc: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Ludovic.Desroches@microchip.com" <Ludovic.Desroches@microchip.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-06-17 at 13:25 +0000, Eugen.Hristev@microchip.com wrote:
> On 31.05.2020 17:39, Jonathan Cameron wrote:
> 
> > On Mon, 25 May 2020 13:53:41 +0300
> > Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:
> > 
> > > We may want to get rid of the iio_priv_to_dev() helper. The reason is that
> > > we will hide some of the members of the iio_dev structure (to prevent
> > > drivers from accessing them directly), and that will also mean hiding the
> > > implementation of the iio_priv_to_dev() helper inside the IIO core.
> > > 
> > > Hiding the implementation of iio_priv_to_dev() implies that some fast-
> > > paths
> > > may not be fast anymore, so a general idea is to try to get rid of the
> > > iio_priv_to_dev() altogether.
> > > The iio_priv() helper won't be affected by the rework, as the iio_dev
> > > struct will keep a reference to the private information.
> > > 
> > > For this driver, not using iio_priv_to_dev(), means reworking some paths
> > > to
> > > pass the iio device and using iio_priv() to access the private
> > > information,
> > > and also keeping a reference to the iio device for some quirky paths.
> > > 
> > > One [quirky] path is the at91_adc_workq_handler() which requires the IIO
> > > device & the state struct to push to buffers.
> > > Since this requires the back-ref to the IIO device, the
> > > at91_adc_touch_pos() also uses it. This simplifies the patch a bit. The
> > > information required in this function is mostly for debugging purposes.
> > > Replacing it with a reference to the IIO device would have been a slightly
> > > bigger change, which may not be worth it (for just the debugging purpose
> > > and given that we need the back-ref to the IIO device anyway).
> > 
> > That workq is indeed quirky.  This looks fine to me in general. I'll
> > want an appropriate ack from the at91 side of things if possible so
> > let's leave this on the list for a while longer.
> 
> Hi,
> 
> I am available to test this patch,
> Can you tell me on which branch to apply it. On 5.8-rc1 it fails for me
> (or maybe it needs rebasing ?)
> 

Hmm, weird.
I rebased the patches on Jonathan's iio/testing.
It seemed to work.
https://github.com/commodo/linux/commits/iio-priv-to-dev

As for which branch to test/apply. Not sure.
Maybe Jonathan's iio/testing as base?
Looks like it's based on 5.8.


> Eugen
> 
> > Poke me if no action in a few weeks.
> > 
> > Thanks,
> > 
> > Jonathan
> > 
> > > Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> > > ---
> > >   drivers/iio/adc/at91-sama5d2_adc.c | 30 +++++++++++++++++-------------
> > >   1 file changed, 17 insertions(+), 13 deletions(-)
> > > 
> > > diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-
> > > sama5d2_adc.c
> > > index 9abbbdcc7420..7bce18444430 100644
> > > --- a/drivers/iio/adc/at91-sama5d2_adc.c
> > > +++ b/drivers/iio/adc/at91-sama5d2_adc.c
> > > @@ -402,6 +402,7 @@ struct at91_adc_state {
> > >        wait_queue_head_t               wq_data_available;
> > >        struct at91_adc_dma             dma_st;
> > >        struct at91_adc_touch           touch_st;
> > > +     struct iio_dev                  *indio_dev;
> > >        u16                             buffer[AT91_BUFFER_MAX_HWORDS];
> > >        /*
> > >         * lock to prevent concurrent 'single conversion' requests through
> > > @@ -642,13 +643,13 @@ static u16 at91_adc_touch_pos(struct at91_adc_state
> > > *st, int reg)
> > >        /* first half of register is the x or y, second half is the scale
> > > */
> > >        val = at91_adc_readl(st, reg);
> > >        if (!val)
> > > -             dev_dbg(&iio_priv_to_dev(st)->dev, "pos is 0\n");
> > > +             dev_dbg(&st->indio_dev->dev, "pos is 0\n");
> > > 
> > >        pos = val & AT91_SAMA5D2_XYZ_MASK;
> > >        result = (pos << AT91_SAMA5D2_MAX_POS_BITS) - pos;
> > >        scale = (val >> 16) & AT91_SAMA5D2_XYZ_MASK;
> > >        if (scale == 0) {
> > > -             dev_err(&iio_priv_to_dev(st)->dev, "scale is 0\n");
> > > +             dev_err(&st->indio_dev->dev, "scale is 0\n");
> > >                return 0;
> > >        }
> > >        result /= scale;
> > > @@ -1204,9 +1205,9 @@ static unsigned at91_adc_startup_time(unsigned
> > > startup_time_min,
> > >        return i;
> > >   }
> > > 
> > > -static void at91_adc_setup_samp_freq(struct at91_adc_state *st, unsigned
> > > freq)
> > > +static void at91_adc_setup_samp_freq(struct iio_dev *indio_dev, unsigned
> > > freq)
> > >   {
> > > -     struct iio_dev *indio_dev = iio_priv_to_dev(st);
> > > +     struct at91_adc_state *st = iio_priv(indio_dev);
> > >        unsigned f_per, prescal, startup, mr;
> > > 
> > >        f_per = clk_get_rate(st->per_clk);
> > > @@ -1275,9 +1276,9 @@ static void at91_adc_pen_detect_interrupt(struct
> > > at91_adc_state *st)
> > >        st->touch_st.touching = true;
> > >   }
> > > 
> > > -static void at91_adc_no_pen_detect_interrupt(struct at91_adc_state *st)
> > > +static void at91_adc_no_pen_detect_interrupt(struct iio_dev *indio_dev)
> > >   {
> > > -     struct iio_dev *indio_dev = iio_priv_to_dev(st);
> > > +     struct at91_adc_state *st = iio_priv(indio_dev);
> > > 
> > >        at91_adc_writel(st, AT91_SAMA5D2_TRGR,
> > >                        AT91_SAMA5D2_TRGR_TRGMOD_NO_TRIGGER);
> > > @@ -1297,7 +1298,7 @@ static void at91_adc_workq_handler(struct
> > > work_struct *workq)
> > >                                        struct at91_adc_touch, workq);
> > >        struct at91_adc_state *st = container_of(touch_st,
> > >                                        struct at91_adc_state, touch_st);
> > > -     struct iio_dev *indio_dev = iio_priv_to_dev(st);
> > > +     struct iio_dev *indio_dev = st->indio_dev;
> > > 
> > >        iio_push_to_buffers(indio_dev, st->buffer);
> > >   }
> > > @@ -1318,7 +1319,7 @@ static irqreturn_t at91_adc_interrupt(int irq, void
> > > *private)
> > >                at91_adc_pen_detect_interrupt(st);
> > >        } else if ((status & AT91_SAMA5D2_IER_NOPEN)) {
> > >                /* nopen detected IRQ */
> > > -             at91_adc_no_pen_detect_interrupt(st);
> > > +             at91_adc_no_pen_detect_interrupt(indio);
> > >        } else if ((status & AT91_SAMA5D2_ISR_PENS) &&
> > >                   ((status & rdy_mask) == rdy_mask)) {
> > >                /* periodic trigger IRQ - during pen sense */
> > > @@ -1486,7 +1487,7 @@ static int at91_adc_write_raw(struct iio_dev
> > > *indio_dev,
> > >                    val > st->soc_info.max_sample_rate)
> > >                        return -EINVAL;
> > > 
> > > -             at91_adc_setup_samp_freq(st, val);
> > > +             at91_adc_setup_samp_freq(indio_dev, val);
> > >                return 0;
> > >        default:
> > >                return -EINVAL;
> > > @@ -1624,8 +1625,10 @@ static int at91_adc_update_scan_mode(struct iio_dev
> > > *indio_dev,
> > >        return 0;
> > >   }
> > > 
> > > -static void at91_adc_hw_init(struct at91_adc_state *st)
> > > +static void at91_adc_hw_init(struct iio_dev *indio_dev)
> > >   {
> > > +     struct at91_adc_state *st = iio_priv(indio_dev);
> > > +
> > >        at91_adc_writel(st, AT91_SAMA5D2_CR, AT91_SAMA5D2_CR_SWRST);
> > >        at91_adc_writel(st, AT91_SAMA5D2_IDR, 0xffffffff);
> > >        /*
> > > @@ -1635,7 +1638,7 @@ static void at91_adc_hw_init(struct at91_adc_state
> > > *st)
> > >        at91_adc_writel(st, AT91_SAMA5D2_MR,
> > >                        AT91_SAMA5D2_MR_TRANSFER(2) |
> > > AT91_SAMA5D2_MR_ANACH);
> > > 
> > > -     at91_adc_setup_samp_freq(st, st->soc_info.min_sample_rate);
> > > +     at91_adc_setup_samp_freq(indio_dev, st->soc_info.min_sample_rate);
> > > 
> > >        /* configure extended mode register */
> > >        at91_adc_config_emr(st);
> > > @@ -1718,6 +1721,7 @@ static int at91_adc_probe(struct platform_device
> > > *pdev)
> > >        indio_dev->num_channels = ARRAY_SIZE(at91_adc_channels);
> > > 
> > >        st = iio_priv(indio_dev);
> > > +     st->indio_dev = indio_dev;
> > > 
> > >        bitmap_set(&st->touch_st.channels_bitmask,
> > >                   AT91_SAMA5D2_TOUCH_X_CHAN_IDX, 1);
> > > @@ -1829,7 +1833,7 @@ static int at91_adc_probe(struct platform_device
> > > *pdev)
> > >                goto vref_disable;
> > >        }
> > > 
> > > -     at91_adc_hw_init(st);
> > > +     at91_adc_hw_init(indio_dev);
> > > 
> > >        ret = clk_prepare_enable(st->per_clk);
> > >        if (ret)
> > > @@ -1945,7 +1949,7 @@ static __maybe_unused int at91_adc_resume(struct
> > > device *dev)
> > >        if (ret)
> > >                goto vref_disable_resume;
> > > 
> > > -     at91_adc_hw_init(st);
> > > +     at91_adc_hw_init(indio_dev);
> > > 
> > >        /* reconfiguring trigger hardware state */
> > >        if (!iio_buffer_enabled(indio_dev))
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
