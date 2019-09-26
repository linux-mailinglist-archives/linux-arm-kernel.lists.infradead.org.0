Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79570BEC12
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 08:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fIDu9l+klUq8yZl1wnhRaovSDRN68LUKQBJv09C5hTk=; b=Srw7cdrPF69sBW
	twJRbRwlBPkr7FERNajzmcn9bl7CPGt8nBtQz8HI9nDuZ/hGg3wbhDHejole8iT9bYsPbvmSVKIOu
	UsKEQos3qxU6r+MdiIT6/iPi8XoagyvO4fSpez7s3k3+qPrMiRvf9XNNt2jj+9tIkCB7n9T6NzVlt
	ICa/ozS8YcTz2atz0hmZc5q8xdVrVcarIGkGdycKukA5hbqsrzpU1zVfTtcfnLH3ClvPvCdpF1Zm6
	oFj/kYBnmill8otoYnpGYzp9fhuPnnMT5oOwT6Zj0hbB9d2j67zGBb2abA/+5H4N3p2hUFmfAWpzs
	rpUfg31bbbcIABmEBU3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDNPV-0005pm-QU; Thu, 26 Sep 2019 06:37:53 +0000
Received: from mx0b-00128a01.pphosted.com ([148.163.139.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDNPG-0005nP-AR
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 06:37:40 +0000
Received: from pps.filterd (m0167091.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8Q6Wjdl028027; Thu, 26 Sep 2019 02:37:26 -0400
Received: from nam01-bn3-obe.outbound.protection.outlook.com
 (mail-bn3nam01lp2051.outbound.protection.outlook.com [104.47.33.51])
 by mx0b-00128a01.pphosted.com with ESMTP id 2v6hku6tmx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 26 Sep 2019 02:37:26 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cRYZSGfppIjX55u4cuYahaRKNewKu8/uJ+v6S/RVX6p0HWDqzDZfZxy0HMXj0zi1JezWN179MzYJqdnyOrhHDG8YMmLksZYBaNhSzHx08OJH6SxQ/By84LQujh31MN1vJ4QFBH3kgLEBBNnN/vyFyG5EjYamsgRrjksSYnsQzWgwoUuKsQMoE3xvnvx6QMFOyNcrwyIfjAYhmPjJmeJfwSsSWLtqDki8Hh/PBjkgx8Img4OLQvJbWnYKzLIOOCS2S8BpH9SejsLuvTj6KBYfObfw1eiddW9/KyX3h/mFnWBrlD+XwIUT4beclMgiosDcaVms4OAkzGTHq6bKR+fnNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j7Al48ngK5LbGh5I1oBglufmugHCDj2MABdEpLBNy08=;
 b=KRN5z4PUlN968z81rQgXFE5gzq5ylAa7YNBExJKx1aIL5Y5Nc9dyO0RLRyeTal7I3ThGet3czvNqEL60/FmegtvkYKIOZq1/lyvpMxW0qXSjEpC4Ti0aq9YvTGnZDPSQTi2dz0eOugeIwUSVy17dGd1KtDrnQwfrXJB1Fq5dfLQCbiD2ai0+mPYov/z+Kv/1tud12VA9GPm4zImwfQkIj+VKUm2NoySCEYlbZr2Msn/wKDQZrzqbOJzvRF7o0fWsUMdi70SnR/YDXm89lLirJ/oa+rZXzxuKB1uQhH4SkPC0HcSAYseJoLFxCMBi5s2mYGZThHSbmhwYbWcJvhn3zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j7Al48ngK5LbGh5I1oBglufmugHCDj2MABdEpLBNy08=;
 b=tV2gii4KNfXRd6cr35n4Hh2S1e4y/qV0vXtArVYONS1ydyha41PMuklNyR3YgGeISsnoBJwvKiTqFTE65WUoPs7NzSN+dnKwfSzb/IhV6Ohfg1AzujurOS79RQdyn/Jv3M1vVo/vLVG1dm6iqkJp57ssfIsYaPdbPqJqyGyxL5g=
Received: from MN2PR03MB5200.namprd03.prod.outlook.com (10.186.144.199) by
 MN2PR03MB5165.namprd03.prod.outlook.com (10.186.145.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Thu, 26 Sep 2019 06:37:24 +0000
Received: from MN2PR03MB5200.namprd03.prod.outlook.com
 ([fe80::ec7e:6072:f008:1406]) by MN2PR03MB5200.namprd03.prod.outlook.com
 ([fe80::ec7e:6072:f008:1406%3]) with mapi id 15.20.2284.028; Thu, 26 Sep 2019
 06:37:24 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "aford173@gmail.com" <aford173@gmail.com>, "philipp.puschmann@emlix.com"
 <philipp.puschmann@emlix.com>
Subject: Re: [EXT] [PATCH v3] serial: imx: adapt rx buffer and dma periods
Thread-Topic: [EXT] [PATCH v3] serial: imx: adapt rx buffer and dma periods
Thread-Index: AQHVc7Pyon1UJp4qYUCz9u18XQgc86c9gksA
Date: Thu, 26 Sep 2019 06:37:24 +0000
Message-ID: <15be848facd5e80222e5db30c61fe72f82a85713.camel@analog.com>
References: <20190919145114.13006-1-philipp.puschmann@emlix.com>
 <VI1PR0402MB3600CA068AEBAC63D3CE6A4CFF880@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <ac67f010-1b2c-6996-f542-ab955ca86489@emlix.com>
 <CAHCN7xL0BKmt8xrhuB4rrvOqkCM5AUJ6YAzbcU8eNDXbzj4fZg@mail.gmail.com>
In-Reply-To: <CAHCN7xL0BKmt8xrhuB4rrvOqkCM5AUJ6YAzbcU8eNDXbzj4fZg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7b29ce82-c511-4a9a-ff52-08d7424bfde7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR03MB5165; 
x-ms-traffictypediagnostic: MN2PR03MB5165:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR03MB516587D444AF7C3BD4DEE52DF9860@MN2PR03MB5165.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0172F0EF77
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(376002)(366004)(136003)(346002)(51914003)(54534003)(189003)(199004)(36756003)(99286004)(6116002)(8676002)(3846002)(76116006)(91956017)(7736002)(305945005)(118296001)(76176011)(54906003)(14454004)(5660300002)(2906002)(110136005)(81166006)(316002)(81156014)(71190400001)(966005)(256004)(14444005)(66476007)(66946007)(71200400001)(66446008)(64756008)(66556008)(102836004)(8936002)(11346002)(2616005)(4326008)(186003)(86362001)(66066001)(6486002)(6436002)(476003)(6506007)(7416002)(26005)(229853002)(6306002)(2501003)(446003)(53546011)(6512007)(486006)(478600001)(6246003)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR03MB5165;
 H:MN2PR03MB5200.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: z+XHWqkv7oj0nINpIbXcvEdyXWVPb5MGhebBRSG6z7uBZSlwI2Sr9977vuU7xQ60Btei5Nrl4/siy9uOUAl4EePHLEBkAGuxqdUvecsOhAn0+0RnDl1afzv6/KX9aVqY4/rEBokRKF+myoHdKyFlRi3cnUoXMlbvuiK/Rur60GRovB7t4mSKSMn3hlFEOdEgVke/dqGHvzibX+J/gYGO1+KVeEjx3gBiQC/Zljr4WjMDH6kJ/usmzJR914hzpHsLgDpRmXgZFO2wMHgymik9LMPBpGITVY3Xc7xZNqT8tcv5LvpG2zfpOBe2GHDF7ZAVWDkC+4Rd8nnOIJ0d3kpj2AmdWqIbtXbPy+IacgRTJa/zB4Z1sg5XFpIIYUCMWLgww6Ui831FscmBp0CvERovvr5lPEIYFk7L3RZ1CbWalknPwoZI/KArOD2eddZ70xjYkiqabaaepxYd/7VpBd0XoQ==
x-ms-exchange-transport-forked: True
Content-ID: <2B1FC44150C12F4780866DD289A67B7E@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b29ce82-c511-4a9a-ff52-08d7424bfde7
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2019 06:37:24.3973 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D6QuPDr6SRrEvF4vBGQi6IgfbYOuh5r45f0exYGqhWCJviLRnnAN5dhH9CSdCcGWyDstAHw/o+WJ31wzx9y6XzWqEWu5N8lxcBAS+MCPCX4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR03MB5165
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-09-26_02:2019-09-25,2019-09-26 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 clxscore=1011
 adultscore=0 spamscore=0 mlxlogscore=999 mlxscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909260064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_233738_639048_B7B7860D 
X-CRM114-Status: GOOD (  33.90  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.139.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "fugang.duan@nxp.com" <fugang.duan@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "yibin.gong@nxp.com" <yibin.gong@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-09-25 at 10:14 -0500, Adam Ford wrote:
> [External]
> 
> On Fri, Sep 20, 2019 at 2:06 AM Philipp Puschmann
> <philipp.puschmann@emlix.com> wrote:
> > Hi Andy,
> > 
> > Am 20.09.19 um 05:42 schrieb Andy Duan:
> > > From: Philipp Puschmann <philipp.puschmann@emlix.com> Sent: Thursday,
> > > September 19, 2019 10:51 PM
> > > > Using only 4 DMA periods for UART RX is very few if we have a high
> > > > frequency
> > > > of small transfers - like in our case using Bluetooth with many
> > > > small packets
> > > > via UART - causing many dma transfers but in each only filling a
> > > > fraction of a
> > > > single buffer. Such a case may lead to the situation that DMA RX
> > > > transfer is
> > > > triggered but no free buffer is available. When this happens dma
> > > > channel ist
> > > > stopped - with the patch
> > > > "dmaengine: imx-sdma: fix dma freezes" temporarily only - with the
> > > > possible
> > > > consequences that:
> 
> I have an i.MX6Q with Wl1837MOD on UART 2 with flow control, and I am
> getting Bluetooth transfer timeouts.
> (see imx6-logicpd-som.dtsi)
> 
> On top of 5.3.1, I have installed:
> 
> dmaengine: imx-sdma: fix buffer ownership
> dmaengine: imx-sdma: fix dma freezes
> dmaengine: imx-sdma: drop redundant variable
> dmaengine: imx-sdma: fix kernel hangs with SLUB slab allocator
> serial: imx: adapt rx buffer and dma periods
> 
> and I still get timeouts:
> 
> [   66.632006] Bluetooth: hci0: command 0xff36 tx timeout
> [   76.790499] Bluetooth: hci0: command 0x1001 tx timeout
> [   87.110488] Bluetooth: hci0: command 0xff36 tx timeout
> [   97.270507] Bluetooth: hci0: command 0x1001 tx timeout
> [  107.590457] Bluetooth: hci0: command 0xff36 tx timeout
> [  117.750477] Bluetooth: hci0: command 0x1001 tx timeout
> [  226.390499] Bluetooth: hci0: command 0xfe38 tx timeout
> [  231.590735] Bluetooth: hci0: command tx timeout
> 
> I did a bisect and found the start of my problems came from
> 
> 361deb7243d2 ("dmaengine: dmatest: wrap src & dst data into a struct")

That commit only touches `drivers/dma/dmatest.c` 
Are you using that module?

It's a "unit-test" module for testing DMAengine drivers.
The only way that can break anything [from what I can tell], is if it is
being run. It will probably put the DMA into a weird state (it is a test-
module after-all), and it may require some DMAs to be reset.
I admit it would be nice that the test-module would put the DMA back into a
normal-working state, but that effort could be big for some cases.


> 
> This happened sometime between v5.0 and v5.1
> 
> Is there a patch I missed somewhere?  Do I need to change my device
> tree configuration somehow to allocate the proper DMA memory?
> 
> 
> 
> > > > with disabled hw flow control:
> > > >   If enough data is incoming on UART port the RX FIFO runs over and
> > > >   characters will be lost. What then happens depends on upper
> > > > layer.
> > > > 
> > > > with enabled hw flow control:
> > > >   If enough data is incoming on UART port the RX FIFO reaches a
> > > > level
> > > >   where CTS is deasserted and remote device sending the data stops.
> > > >   If it fails to stop timely the i.MX' RX FIFO may run over and
> > > > data
> > > >   get lost. Otherwise it's internal TX buffer may getting filled to
> > > >   a point where it runs over and data is again lost. It depends on
> > > >   the remote device how this case is handled and if it is
> > > > recoverable.
> > > > 
> > > > Obviously we want to avoid having no free buffers available. So we
> > > > decrease
> > > > the size of the buffers and increase their number and the total
> > > > buffer size.
> > > > 
> > > > Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
> > > > Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> > > > ---
> > > > 
> > > > Changelog v3:
> > > >  - enhance description
> > > > 
> > > > Changelog v2:
> > > >  - split this patch from series "Fix UART DMA freezes for iMX6"
> > > >  - add Reviewed-by tag
> > > > 
> > > >  drivers/tty/serial/imx.c | 5 ++---
> > > >  1 file changed, 2 insertions(+), 3 deletions(-)
> > > > 
> > > > diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
> > > > index
> > > > 87c58f9f6390..51dc19833eab 100644
> > > > --- a/drivers/tty/serial/imx.c
> > > > +++ b/drivers/tty/serial/imx.c
> > > > @@ -1034,8 +1034,6 @@ static void imx_uart_timeout(struct
> > > > timer_list *t)
> > > >         }
> > > >  }
> > > > 
> > > > -#define RX_BUF_SIZE    (PAGE_SIZE)
> > > > -
> > > >  /*
> > > >   * There are two kinds of RX DMA interrupts(such as in the MX6Q):
> > > >   *   [1] the RX DMA buffer is full.
> > > > @@ -1118,7 +1116,8 @@ static void imx_uart_dma_rx_callback(void
> > > > *data)  }
> > > > 
> > > >  /* RX DMA buffer periods */
> > > > -#define RX_DMA_PERIODS 4
> > > > +#define RX_DMA_PERIODS 16
> > > > +#define RX_BUF_SIZE    (PAGE_SIZE / 4)
> > > > 
> > > Why to decrease the DMA RX buffer size here ?
> > > 
> > > The current DMA implementation support DMA cyclic mode, one SDMA BD
> > > receive one Bluetooth frame can
> > > bring better performance.
> > > As you know, for L2CAP, a maximum transmission unit (MTU) associated
> > > with the largest Baseband payload
> > > is 341 bytes for DH5 packets.
> > > 
> > > So I suggest to increase RX_BUF_SIZE along with RX_DMA_PERIODS to
> > > feasible value.
> > 
> > I debugged and developed this patches on a system with a 4.15 kernel.
> > When prepared for upstream i have adapted
> > some details and missed a important thing here. It should say:
> > 
> > +#define RX_BUF_SIZE    (RX_DMA_PERIODS * PAGE_SIZE / 4)
> > 
> > Yes, i wanted to increase the total buffer size too, even wrote it in
> > the description.
> > I will prepare a version 4, thanks for the hint.
> > 
> > Just for info: A single RX DMA period aka buffer can be filled with
> > mutliple packets in regard of the upper layer, here BT.
> > 
> > 
> > Regards,
> > Philipp
> > > Andy
> > > 
> > > >  static int imx_uart_start_rx_dma(struct imx_port *sport)  {
> > > > --
> > > > 2.23.0
> > 
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
