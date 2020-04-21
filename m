Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE6D1B2AC6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 17:13:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zs6UsDD8dk3mWIv9UAgarqeKdRCMThTOZV2+J8hg8pk=; b=dcEWlpRexgy5RB
	VXPKPMSNubK/lJyrXctIDeKShz6M7ZclTxsbqLoOYV+wT6cRDCR+NyDb0HEZ0sPKxGN4Tma++NFr9
	FvQeo9qclVA7XoYBkSh9Z5+9MpqPMOwlnRW/UYBLLcO+FWxiFzZVXUeDmxgvTHzyIPj0rR5MzJc0o
	QynZAi1ROucvtLdcxrt1AM5ER81uTcgNw3SywyDKlwe75Rzm3gOau5kElPPJhyHbqqtgSOqeaAs3F
	EDkI+l2Af/9NIPbk1jEtHJzEgdA93TSmSVkJPYcW3L7HE/Yt5voMJllModemaX+ScT8SXitA1fy0k
	oP9mqoq1iV30cqjrsBbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQuaj-0001HL-2U; Tue, 21 Apr 2020 15:13:41 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQuaX-0001EQ-HG
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 15:13:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587482009; x=1619018009;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=TQStC7ss8TEoZn1KIOwxSwyoJdK+2MJTBvwRxON8Q3o=;
 b=k+Wc2B4hYbUoUWA+2W9ssDQQSNbDEfjgGMMUb4ZB8sz2fnPfqhbCnUVZ
 Q5dd8EC2+e0bbHS+Rcfqzaq3+YlYbn5mDtOYiPkRYiOuwtw/aLtO4crnH
 QyeYYWIDctQG29bbc+Uml2TgpjYrpwCV07IH0ZSTY9uEB5y6jE9QSLpnB
 JJSzrMvepj731cYK1I8dtiulsKKJjxvZlAR3W1btm2nvHtnstC4VTO2Dp
 s2Yq0mzvM6wHSaYfvP74Krf5OVg4aQKN9WbOO2edJrl/RO7/rl7vpaDl9
 8E9l4G+qdJwovfRzLcm6qOtDs2UKXvXCD+g6v4Vw6ucRxLxA1F3sN8rNP w==;
IronPort-SDR: IKbQCtzae/2890WbdspcVqlsqcDbdu5WiGYLW+NLW0O9SIt7vJSdgUHK0sw6tPaPAierjBoAuS
 +muTDWZEqUKjaVsgitZa4L+NXMC+jTLZGJYEWjub9090utUMbE56eZ2X2NkZEOrOfBBlJhs0xG
 0nS/Uf47l3ZWqtNGULUWw75JOnSQ5NCSP41VWyXEs7r9+TBhjenUAj3Lt3TrQ/RMzXPhoARTFR
 iR6FBC8uyM8v67cBdhOO4LQgOLbNnIDbKaNslEkjalwDowANdtVKHIOW2066yCrlvcaFrewiGt
 yHo=
X-IronPort-AV: E=Sophos;i="5.72,410,1580799600"; d="scan'208";a="74059629"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Apr 2020 08:13:21 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Apr 2020 08:13:24 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 21 Apr 2020 08:13:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JSSCDaKGKllQelolxM1JG8suJogrUKCvPTd5PLvMQES1MFT1eIK4DFlAwlXoWnl+ITYWF9okMXMCi9CKHpi4LwzABKcJ2DSSwNc8wEt1LdjRHQph1bSm/o1Xl67RZm5OP8DEsl25cwPVKuoE85TDyi1TJvRW7g0MRsP688ZsoySwpxFI8ggdw0kL9rgwtLEy6ufg0U0hKgw5PO/luuIQs88s0tJol2i54bn15MlpTir0SFs+lpvZ7G9PArZyU22TeZYEhBf2mCP9YDV8eiG24QTgVu6NnmNVCHeJFHEF5kverFHHsyBVVylMI7du4pssYBVMKKNh7sOSqDT5wIftfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TQStC7ss8TEoZn1KIOwxSwyoJdK+2MJTBvwRxON8Q3o=;
 b=hYmHAcb9AaxJVOeAR3SocetAFE7OMlWTgKT+em2Z+3/+xHcMSrDgjs3PA0hwiMeovlYaykY+aKVLyxD/MO72ZUAt12EHiQbKPG8+v/SjAkVgg61ctaLyMX2a0mCtLkRG4ualsN/AVFk7x5ejGbFFMbjt7hGIlZmvgY/DyvFxQJRmyO6ETfmvfkpq0S24Mozza1bVD8ou5tPw1YZX9gAj/qfp0MZReXFBSgB68cN2opxdpVEEPVpQX9BY8OINXDx7IviBJWU/vdhVGS5b2Q9MMMBHKs5TizdZOp2y9FJsfmwzKQfcBig/oMsEN8x/Jw3A3W72fZsniC6XM/Ho1Z898Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TQStC7ss8TEoZn1KIOwxSwyoJdK+2MJTBvwRxON8Q3o=;
 b=Tyy2zbepV1zWRTmyCvxRWcES2Zt3y7M6SFo/N9Jsn8J/H4rN5+qzeHfWXy6FkrVKhKAX2OD3SXSqciAZEFEpULEM58MU44NtL0IH4LAKnhfMcSNCAQlYMjthffO/SyLPHE5Egw0r/NNhrhf3lE/4hpDCt/3NSFog7LD1Uj70T48=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM6PR11MB2699.namprd11.prod.outlook.com (2603:10b6:5:ce::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13; Tue, 21 Apr 2020 15:13:20 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa%7]) with mapi id 15.20.2921.027; Tue, 21 Apr 2020
 15:13:20 +0000
From: <Claudiu.Beznea@microchip.com>
To: <Nicolas.Ferre@microchip.com>, <linux-arm-kernel@lists.infradead.org>,
 <netdev@vger.kernel.org>, <harini.katakam@xilinx.com>
Subject: Re: [PATCH v2 6/7] net: macb: WoL support for GEM type of Ethernet
 controller
Thread-Topic: [PATCH v2 6/7] net: macb: WoL support for GEM type of Ethernet
 controller
Thread-Index: AQHWF+9j5K3nWa1mw0uwqci2frdKFQ==
Date: Tue, 21 Apr 2020 15:13:20 +0000
Message-ID: <299e181e-de7c-ec01-6214-c0bd3256df76@microchip.com>
References: <cover.1587463802.git.nicolas.ferre@microchip.com>
 <a0ba982bed5adcd7cdb5bd526855702bb8a1c8fd.1587463802.git.nicolas.ferre@microchip.com>
In-Reply-To: <a0ba982bed5adcd7cdb5bd526855702bb8a1c8fd.1587463802.git.nicolas.ferre@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Claudiu.Beznea@microchip.com; 
x-originating-ip: [86.120.235.162]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0ff399ef-e436-4e66-3b91-08d7e60686c3
x-ms-traffictypediagnostic: DM6PR11MB2699:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB2699141360047B36043CA6AD87D50@DM6PR11MB2699.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 038002787A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(81156014)(498600001)(5660300002)(8936002)(7416002)(8676002)(36756003)(54906003)(110136005)(53546011)(6506007)(2906002)(71200400001)(31696002)(6512007)(2616005)(4326008)(31686004)(86362001)(76116006)(26005)(91956017)(6486002)(66946007)(186003)(66446008)(64756008)(66556008)(66476007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X1Q3eEiu/BtGPldBQIsemOcTGulV5PPV4IoHPFdht6YFLLyFjeuwxTFFVXTkumEUCT0ugrwYJqy7tFn9U/G+W53mTcie4Vu4AnJbUE/Hz3SeMsLQfLPgIkuwCCNe5V9khjuqgjL/bLXhlzn/uSZAC1S8nGlaGjw2GDe1lHwU1EKOSEuiNOlCm5Re1KzlWLezXUK/YVF2w9SjbPYVTsMwJ1aBfzGzAA/jbklmt/BIRoTlkPzRBo17I4Akr+Gr88/iaW2Z5K+h6bCWGJw4eQd5hSK14FsZlfDm/C/yCtmwW4fWLUMEU4zVzzw1HbCOykW1qLk6aZTMRS1v8pB/GDl4RnHKWNe4Bh9R8GaP7yR6UskyloaTsGqOwkWojHJ1BAsTWvhkTNab7w0rJdo/fpbtrJzrGy6wchKwqfljRhK6HC0tprTB9FQMEpbp7vsIH0+T
x-ms-exchange-antispam-messagedata: 2hvTCbyX+0wztxdPCspJN7xA6EflNVbD+JwkhE7RtDOUBXv8VrKbuovuZOcTB7Twf29m48IRIq7IqUEN/gV42jK5ArzHuP6Nx88kmHH6Y2T5pHkLDVnzf3RCSeEsfix5sk/jWnlZ+y1rBvCJWf+R/g==
Content-ID: <7F304F3EE27D424B96B7024FA49E5BFD@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ff399ef-e436-4e66-3b91-08d7e60686c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2020 15:13:20.0868 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7j+J9JksGy5dSTCRwGTWfVL7Xm4NkrVrfZbS24eC3crkQDpRYjTdE8s5ReBf/7PVBotnSrqwYf5rZ30kPziwkE3sPAAhJPCpIC69Pl/2Ey8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2699
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_081329_629707_C9F478AE 
X-CRM114-Status: GOOD (  25.52  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andrew@lunn.ch, alexandre.belloni@bootlin.com, f.fainelli@gmail.com,
 sergio.prado@e-labworks.com, antoine.tenart@bootlin.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On 21.04.2020 13:41, nicolas.ferre@microchip.com wrote:
> From: Nicolas Ferre <nicolas.ferre@microchip.com>
> 
> Adapt the Wake-on-Lan feature to the Cadence GEM Ethernet controller.
> This controller has different register layout and cannot be handled by
> previous code.
> We disable completely interrupts on all the queues but the queue 0.
> Handling of WoL interrupt is done in another interrupt handler
> positioned depending on the controller version used, just between
> suspend() and resume() calls.
> It allows to lower pressure on the generic interrupt hot path by
> removing the need to handle 2 tests for each IRQ: the first figuring out
> the controller revision, the second for actually knowing if the WoL bit
> is set.
> 
> Queue management in suspend()/resume() functions inspired from RFC patch
> by Harini Katakam <harinik@xilinx.com>, thanks!
> 
> Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
> Cc: Harini Katakam <harini.katakam@xilinx.com>
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> ---
> Changes in v2:
> - Addition of pm_wakeup_event() in WoL IRQ
> - In macb_resume(), removal of setting the MPE bit in NCR register which is not
>   needed in any case: IP is reset on the usual path and kept alive if WoL is used
> - In macb_resume(), complete reset of the controller is kept only for non-WoL
>   case. For the WoL case, we only replace the usual IRQ handler.
> 
>  drivers/net/ethernet/cadence/macb.h      |   3 +
>  drivers/net/ethernet/cadence/macb_main.c | 134 ++++++++++++++++++++---
>  2 files changed, 119 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/net/ethernet/cadence/macb.h b/drivers/net/ethernet/cadence/macb.h
> index ab827fb4b6b9..4f1b41569260 100644
> --- a/drivers/net/ethernet/cadence/macb.h
> +++ b/drivers/net/ethernet/cadence/macb.h
> @@ -90,6 +90,7 @@
>  #define GEM_SA3T		0x009C /* Specific3 Top */
>  #define GEM_SA4B		0x00A0 /* Specific4 Bottom */
>  #define GEM_SA4T		0x00A4 /* Specific4 Top */
> +#define GEM_WOL			0x00b8 /* Wake on LAN */
>  #define GEM_EFTSH		0x00e8 /* PTP Event Frame Transmitted Seconds Register 47:32 */
>  #define GEM_EFRSH		0x00ec /* PTP Event Frame Received Seconds Register 47:32 */
>  #define GEM_PEFTSH		0x00f0 /* PTP Peer Event Frame Transmitted Seconds Register 47:32 */
> @@ -396,6 +397,8 @@
>  #define MACB_PDRSFT_SIZE	1
>  #define MACB_SRI_OFFSET		26 /* TSU Seconds Register Increment */
>  #define MACB_SRI_SIZE		1
> +#define GEM_WOL_OFFSET		28 /* Enable wake-on-lan interrupt */
> +#define GEM_WOL_SIZE		1
>  
>  /* Timer increment fields */
>  #define MACB_TI_CNS_OFFSET	0
> diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
> index 8cf8e21fbb07..56ce39dd1cc0 100644
> --- a/drivers/net/ethernet/cadence/macb_main.c
> +++ b/drivers/net/ethernet/cadence/macb_main.c
> @@ -1513,6 +1513,35 @@ static void macb_tx_restart(struct macb_queue *queue)
>  	macb_writel(bp, NCR, macb_readl(bp, NCR) | MACB_BIT(TSTART));
>  }
>  
> +static irqreturn_t gem_wol_interrupt(int irq, void *dev_id)
> +{
> +	struct macb_queue *queue = dev_id;
> +	struct macb *bp = queue->bp;
> +	u32 status;
> +
> +	status = queue_readl(queue, ISR);
> +
> +	if (unlikely(!status))
> +		return IRQ_NONE;
> +
> +	spin_lock(&bp->lock);
> +
> +	if (status & GEM_BIT(WOL)) {
> +		queue_writel(queue, IDR, GEM_BIT(WOL));
> +		gem_writel(bp, WOL, 0);
> +		netdev_vdbg(bp->dev, "GEM WoL: queue = %u, isr = 0x%08lx\n",
> +			    (unsigned int)(queue - bp->queues),
> +			    (unsigned long)status);
> +		if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
> +			queue_writel(queue, ISR, GEM_BIT(WOL));
> +		pm_wakeup_event(&bp->pdev->dev, 0);
> +	}
> +
> +	spin_unlock(&bp->lock);
> +
> +	return IRQ_HANDLED;
> +}
> +
>  static irqreturn_t macb_interrupt(int irq, void *dev_id)
>  {
>  	struct macb_queue *queue = dev_id;
> @@ -3306,6 +3335,8 @@ static const struct ethtool_ops macb_ethtool_ops = {
>  static const struct ethtool_ops gem_ethtool_ops = {
>  	.get_regs_len		= macb_get_regs_len,
>  	.get_regs		= macb_get_regs,
> +	.get_wol		= macb_get_wol,
> +	.set_wol		= macb_set_wol,
>  	.get_link		= ethtool_op_get_link,
>  	.get_ts_info		= macb_get_ts_info,
>  	.get_ethtool_stats	= gem_get_ethtool_stats,
> @@ -4534,20 +4565,54 @@ static int __maybe_unused macb_suspend(struct device *dev)
>  	struct macb_queue *queue = bp->queues;
>  	unsigned long flags;
>  	unsigned int q;
> +	int err;
>  
>  	if (!netif_running(netdev))
>  		return 0;
>  
>  	if (bp->wol & MACB_WOL_ENABLED) {
> -		macb_writel(bp, IER, MACB_BIT(WOL));
> -		macb_writel(bp, WOL, MACB_BIT(MAG));
> -		enable_irq_wake(bp->queues[0].irq);
> -		netif_device_detach(netdev);
> -	} else {
> -		netif_device_detach(netdev);
> +		spin_lock_irqsave(&bp->lock, flags);
> +		/* Flush all status bits */
> +		macb_writel(bp, TSR, -1);
> +		macb_writel(bp, RSR, -1);
>  		for (q = 0, queue = bp->queues; q < bp->num_queues;
> -		     ++q, ++queue)
> -			napi_disable(&queue->napi);
> +		     ++q, ++queue) {
> +			/* Disable all interrupts */
> +			queue_writel(queue, IDR, -1);
> +			queue_readl(queue, ISR);
> +			if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
> +				queue_writel(queue, ISR, -1);
> +		}
> +		/* Change interrupt handler and
> +		 * Enable WoL IRQ on queue 0
> +		 */
> +		if (macb_is_gem(bp)) {

Couldn't this starting here:

> +			devm_free_irq(dev, bp->queues[0].irq, bp->queues);
> +			err = devm_request_irq(dev, bp->queues[0].irq, gem_wol_interrupt,
> +					       IRQF_SHARED, netdev->name, bp->queues);
> +			if (err) {
> +				dev_err(dev,
> +					"Unable to request IRQ %d (error %d)\n",
> +					bp->queues[0].irq, err);
> +				return err;
> +			}

ending ^ (and the equivalent in resume function) be avoided by moving the
content of gem_wol_interrupt:

+	if (status & GEM_BIT(WOL)) {
+		queue_writel(queue, IDR, GEM_BIT(WOL));
+		gem_writel(bp, WOL, 0);
+		netdev_vdbg(bp->dev, "GEM WoL: queue = %u, isr = 0x%08lx\n",
+			    (unsigned int)(queue - bp->queues),
+			    (unsigned long)status);
+		if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
+			queue_writel(queue, ISR, GEM_BIT(WOL));
+		pm_wakeup_event(&bp->pdev->dev, 0);
+	}

at the beginning of macb_interrupt() and issuing a return after
pm_wakeup_event()?

Instead of these:

> +			queue_writel(bp->queues, IER, GEM_BIT(WOL));
> +			gem_writel(bp, WOL, MACB_BIT(MAG));
> +		} else {
> +			queue_writel(bp->queues, IER, MACB_BIT(WOL));
> +			macb_writel(bp, WOL, MACB_BIT(MAG));
> +		}

You could use:
		queue_writel(bp->queues, IER, GEM_BIT(WOL));
		macb_or_gem_writel(bp, WOL, MACB_BIT(MAG))

> +		spin_unlock_irqrestore(&bp->lock, flags);
> +
> +		enable_irq_wake(bp->queues[0].irq);
> +	}
> +
> +	netif_device_detach(netdev);
> +	for (q = 0, queue = bp->queues; q < bp->num_queues;
> +	     ++q, ++queue)
> +		napi_disable(&queue->napi);
> +
> +	if (!(bp->wol & MACB_WOL_ENABLED)) {
>  		rtnl_lock();
>  		phylink_stop(bp->phylink);
>  		rtnl_unlock();
> @@ -4575,7 +4640,9 @@ static int __maybe_unused macb_resume(struct device *dev)
>  	struct net_device *netdev = dev_get_drvdata(dev);
>  	struct macb *bp = netdev_priv(netdev);
>  	struct macb_queue *queue = bp->queues;
> +	unsigned long flags;
>  	unsigned int q;
> +	int err;
>  
>  	if (!netif_running(netdev))
>  		return 0;
> @@ -4584,29 +4651,60 @@ static int __maybe_unused macb_resume(struct device *dev)
>  		pm_runtime_force_resume(dev);
>  
>  	if (bp->wol & MACB_WOL_ENABLED) {
> -		macb_writel(bp, IDR, MACB_BIT(WOL));
> -		macb_writel(bp, WOL, 0);
> +		spin_lock_irqsave(&bp->lock, flags);
> +		/* Disable WoL */
> +		if (macb_is_gem(bp)) {
> +			queue_writel(bp->queues, IDR, GEM_BIT(WOL));
> +			gem_writel(bp, WOL, 0);
> +		} else {
> +			queue_writel(bp->queues, IDR, MACB_BIT(WOL));
> +			macb_writel(bp, WOL, 0);
> +		}
> +		/* Clear ISR on queue 0 */
> +		queue_readl(bp->queues, ISR);
> +		if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
> +			queue_writel(bp->queues, ISR, -1);
> +		/* Replace interrupt handler on queue 0 */
> +		devm_free_irq(dev, bp->queues[0].irq, bp->queues);
> +		err = devm_request_irq(dev, bp->queues[0].irq, macb_interrupt,
> +				       IRQF_SHARED, netdev->name, bp->queues);
> +		if (err) {
> +			dev_err(dev,
> +				"Unable to request IRQ %d (error %d)\n",
> +				bp->queues[0].irq, err);
> +			return err;
> +		}
> +		/* Enable interrupts */
> +		for (q = 0, queue = bp->queues; q < bp->num_queues;
> +		     ++q, ++queue)
> +			queue_writel(queue, IER,
> +				     bp->rx_intr_mask |
> +				     MACB_TX_INT_FLAGS |
> +				     MACB_BIT(HRESP));
> +		spin_unlock_irqrestore(&bp->lock, flags);
> +
>  		disable_irq_wake(bp->queues[0].irq);
> -	} else {
> -		macb_writel(bp, NCR, MACB_BIT(MPE));
> +	}
> +
> +	for (q = 0, queue = bp->queues; q < bp->num_queues;
> +	     ++q, ++queue)
> +		napi_enable(&queue->napi);
>  
> +	if (!(bp->wol & MACB_WOL_ENABLED)) {
>  		if (netdev->hw_features & NETIF_F_NTUPLE)
>  			gem_writel_n(bp, ETHT, SCRT2_ETHT, bp->pm_data.scrt2);
>  
>  		if (!(bp->caps & MACB_CAPS_USRIO_DISABLED))
>  			macb_or_gem_writel(bp, USRIO, bp->pm_data.usrio);
>  
> -		for (q = 0, queue = bp->queues; q < bp->num_queues;
> -		     ++q, ++queue)
> -			napi_enable(&queue->napi);
> +		macb_init_hw(bp);
> +		macb_set_rx_mode(netdev);
> +		macb_restore_features(bp);

Even WoL may not be available in backup and self-refresh mode (present on
SAMA5D2 devices), switching to BSR mode while WoL is enabled may lead to
ethernet being unavailable after resuming. Did you manage to test this
scenario?

>  		rtnl_lock();
>  		phylink_start(bp->phylink);
>  		rtnl_unlock();
>  	}
>  
> -	macb_init_hw(bp);
> -	macb_set_rx_mode(netdev);
> -	macb_restore_features(bp);
>  	netif_device_attach(netdev);
>  	if (bp->ptp_info)
>  		bp->ptp_info->ptp_init(netdev);
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
