Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A74D3342
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 23:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3TA7g0ToPBWiWW0ZdzM6XrOAEVTwa04wCL/OIyQbX4=; b=gKIvfoL10jNoEX
	atWtjVNz3ZWjW0CjbySLejhg2mklRhHRhjkla0gMwaR/3UVTPfpfFzQxgJKPnK758YApHVn4IvSUE
	rAtHF51SKmMJdqtOlH+IyeNyyy3pTZJwefbkDsm1TBmkWBACBzqXfZ1e3dpu1l7ogH0RDkH1YlBqY
	EpxIHxxyscrYGvWK3/AdQpbbU8eYpqvS2gmza/POZHFJt3iu8/QO6vIpJWYV97oaQhTuRARxbrrvv
	f6I6QGZQluoaJI2mc4bg54sFMf7W4wkBezZH1S4itg4jqFauKqg58L3aRdwag5pqkT3NNI6VE/BTx
	82SFVir2orBzigg+b8Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIftM-0004XR-42; Thu, 10 Oct 2019 21:22:36 +0000
Received: from mx0a-00082601.pphosted.com ([67.231.145.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIftC-0004Wu-OT
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 21:22:28 +0000
Received: from pps.filterd (m0044010.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9ALFYRh029405; Thu, 10 Oct 2019 14:21:00 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=y78Czm1x9bfyRxlNHwf2RE2JgReMlA8xZbpff7ElI7o=;
 b=qsjJvFMDT68k3tEke6xFhO0hI6oHFDdeKlA0/2ZQ4/lHUzpiW8O693dxo00Dn9WGJsTt
 Keclyqt4dHTLhi45VjwgTzKuDiLI0qvSJB4e0MLqOeb4G8R52MQRboeNJngFM0KM3yyW
 142zC4CVWb0ATwo/g1ChC2IC6rg1oc1GM14= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by mx0a-00082601.pphosted.com with ESMTP id 2vj65eadym-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Thu, 10 Oct 2019 14:21:00 -0700
Received: from ash-exhub103.TheFacebook.com (2620:10d:c0a8:82::c) by
 ash-exhub203.TheFacebook.com (2620:10d:c0a8:83::5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 10 Oct 2019 14:20:57 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.174) with Microsoft SMTP
 Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 10 Oct 2019 14:20:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EtG9CJhnu54Rz+JtiPtS6Mf8auMH5rN38PBc62qEkLFh/90ncIChN7TE/rjR+65UMU4IV+feet/chl6bJnmd2XKZLfaP7TCUBG/OBLP2QqbDWZ4oJp8r2qFJ9cUUA/dk0pa0D159vaLTaYOpVt84+DY7Jiqm5E62bBQxbhXqtpSWQuJ5Y8JiPuc/WxkScXyEvBrLeGNIV5WwU4QRZ2wchRewLB7hzG6ochnQVo/+SR51hOIWEFUxB0YA/5nud7X7ssI8U2Wc/kxPqgbIuRHVHteYPVHbAU20c1fh4wgYuBCSSmxizKcgE0AxxbWJS3YIX5QqcArehXcDcw/Xv90Zdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y78Czm1x9bfyRxlNHwf2RE2JgReMlA8xZbpff7ElI7o=;
 b=lmUWnignFXNlFHGjdPAXvrhIERYLmE95OoaazAqYaQz2T7JwSanr9fR/njdaos62PDj3kRlz+PPlGcFUyYbMwpUY2i9crsgFFPkymrcI26VeEeHbSt8tsUFFp8ZMm5cfZQ091iqm9OC6m9AYTKcEMjBt9LAOv6Zu2YTX+t7x2Kn8KctFaqkVb+uT/C7T5Nkk7XmlaCtyarfa0o9MrVxaMCNxufdeEBmg7b42EFiUVJWR2uvy5311ZWLrEAPxt5KhEuAEbV08M9A7A+tF22ZVd7YoDlkEKtIJR+Vm+2XbEUjZ9Kvyj+j6cfQa1km8w9CKvLigJwfvfICkHp6HT2xR/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector2-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y78Czm1x9bfyRxlNHwf2RE2JgReMlA8xZbpff7ElI7o=;
 b=VtgNsq6Va2FxXhV1iPeG3HcR0d+ZS8ONZH32VCurHoQrdTzEcCRtP24ToQfnRTxAB30qyl2Jm3nANJPNsQM3ywPKc+yLzCWjHpMFw05q1z4KNflGkHcj0SlSLRbrCv904dmlQrYbeoWKwv+666RDRtD61Bxzbom78omXOJ91qL4=
Received: from MWHPR15MB1216.namprd15.prod.outlook.com (10.175.2.17) by
 MWHPR15MB1344.namprd15.prod.outlook.com (10.175.2.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Thu, 10 Oct 2019 21:20:57 +0000
Received: from MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::24c9:a1ce:eeeb:9246]) by MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::24c9:a1ce:eeeb:9246%10]) with mapi id 15.20.2347.016; Thu, 10 Oct
 2019 21:20:57 +0000
From: Tao Ren <taoren@fb.com>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>, Brendan Higgins
 <brendanhiggins@google.com>, Wolfram Sang <wsa@the-dreams.de>, "Benjamin
 Herrenschmidt" <benh@kernel.crashing.org>,
 Joel Stanley <joel@jms.id.au>, "Rob Herring" <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 "Andrew Jeffery" <andrew@aj.id.au>, Cedric Le Goater <clg@kaod.org>
Subject: Re: [PATCH] i2c: aspeed: fix master pending state handling
Thread-Topic: [PATCH] i2c: aspeed: fix master pending state handling
Thread-Index: AQHVfud35WuTlVbA0UqacW6NAtrttKdUY2MA
Date: Thu, 10 Oct 2019 21:20:56 +0000
Message-ID: <3ea1c0d5-47f1-bf8c-6b2d-2ea8d3f93471@fb.com>
References: <20191009212034.20325-1-jae.hyun.yoo@linux.intel.com>
In-Reply-To: <20191009212034.20325-1-jae.hyun.yoo@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR1401CA0012.namprd14.prod.outlook.com
 (2603:10b6:301:4b::22) To MWHPR15MB1216.namprd15.prod.outlook.com
 (2603:10b6:320:22::17)
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:200::2:1271]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 56a53730-77d8-45a3-2904-08d74dc7bd51
x-ms-traffictypediagnostic: MWHPR15MB1344:
x-microsoft-antispam-prvs: <MWHPR15MB1344916908FEF7E4DEA1B9BAB2940@MWHPR15MB1344.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 018632C080
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(346002)(39860400002)(366004)(396003)(376002)(199004)(189003)(7736002)(11346002)(8936002)(6506007)(52116002)(64756008)(76176011)(5660300002)(386003)(316002)(102836004)(53546011)(66446008)(478600001)(14454004)(305945005)(66476007)(66556008)(66946007)(6246003)(2616005)(446003)(46003)(256004)(476003)(486006)(71200400001)(4326008)(71190400001)(25786009)(6512007)(6116002)(6486002)(31696002)(229853002)(36756003)(2906002)(86362001)(6436002)(186003)(58126008)(8676002)(14444005)(7416002)(31686004)(54906003)(81156014)(81166006)(99286004)(65806001)(110136005)(65956001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR15MB1344;
 H:MWHPR15MB1216.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zfqAk/vAlnH0Ch3xKFcTggHsX8I96mesnHcEaSU/w/BJlPdugesKtKFZc3MDpcwP+SHi4UNyTUiPDsQUZv6Sx72v+kTjHZ6LArsLMQPaWZC2F4mcQ4DyO2EyiV27vkXm87ljc85wFEx0as1+Zk/1BOtpetsa9n3Qe/kK8vi6KQXvRa+j+0Xrg4z8iHqgJs5zlw9zLzvhdn7VG9uEp1MnQUrnvY/8LfitEKqe2Do2kr5u06j5pLKRQ6TG6YXqwmboiZBz2SvuQgiOsUEVx46PuEbw4e2O2WMoDPVQDbvumJfWFzfP6RfIYfmjoI0PZQJUKiXfNXsK6xTcetdgxfjVxjQ8+0C79pM/LExoj1nqhK8dLGl8xjGoThZO8qpKdbcNeKOmZbPJQfKZbOpk6LNBquvji167DuKc8NccOiJzuYU=
x-ms-exchange-transport-forked: True
Content-ID: <A053BE086CCCF6439AB4C13CF4C23ADE@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 56a53730-77d8-45a3-2904-08d74dc7bd51
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2019 21:20:56.8406 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /60/uixXVNWlJDSaSZYU/qCi3oyJF6vWHVt4Rui1vYdsYqBdndFFMn5YyQPyvPe9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1344
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-10_07:2019-10-10,2019-10-10 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 malwarescore=0
 phishscore=0 spamscore=0 adultscore=0 clxscore=1015 impostorscore=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 bulkscore=0
 mlxscore=0 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1910100182
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_142226_854396_A2CA4C56 
X-CRM114-Status: GOOD (  31.07  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.145.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [67.231.145.42 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/9/19 2:20 PM, Jae Hyun Yoo wrote:
> In case of master pending state, it should not trigger a master
> command, otherwise data could be corrupted because this H/W shares
> the same data buffer for slave and master operations. It also means
> that H/W command queue handling is unreliable because of the buffer
> sharing issue. To fix this issue, it clears command queue if a
> master command is queued in pending state to use S/W solution
> instead of H/W command queue handling. Also, it refines restarting
> mechanism of the pending master command.
> 
> Fixes: 2e57b7cebb98 ("i2c: aspeed: Add multi-master use case support")
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> ---
>  drivers/i2c/busses/i2c-aspeed.c | 54 +++++++++++++++++++++------------
>  1 file changed, 34 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-aspeed.c b/drivers/i2c/busses/i2c-aspeed.c
> index fa66951b05d0..7b098ff5f5dd 100644
> --- a/drivers/i2c/busses/i2c-aspeed.c
> +++ b/drivers/i2c/busses/i2c-aspeed.c
> @@ -108,6 +108,12 @@
>  #define ASPEED_I2CD_S_TX_CMD				BIT(2)
>  #define ASPEED_I2CD_M_TX_CMD				BIT(1)
>  #define ASPEED_I2CD_M_START_CMD				BIT(0)
> +#define ASPEED_I2CD_MASTER_CMDS_MASK					       \
> +		(ASPEED_I2CD_M_STOP_CMD |				       \
> +		 ASPEED_I2CD_M_S_RX_CMD_LAST |				       \
> +		 ASPEED_I2CD_M_RX_CMD |					       \
> +		 ASPEED_I2CD_M_TX_CMD |					       \
> +		 ASPEED_I2CD_M_START_CMD)
>  
>  /* 0x18 : I2CD Slave Device Address Register   */
>  #define ASPEED_I2CD_DEV_ADDR_MASK			GENMASK(6, 0)
> @@ -336,18 +342,19 @@ static void aspeed_i2c_do_start(struct aspeed_i2c_bus *bus)
>  	struct i2c_msg *msg = &bus->msgs[bus->msgs_index];
>  	u8 slave_addr = i2c_8bit_addr_from_msg(msg);
>  
> -	bus->master_state = ASPEED_I2C_MASTER_START;
> -
>  #if IS_ENABLED(CONFIG_I2C_SLAVE)
>  	/*
>  	 * If it's requested in the middle of a slave session, set the master
>  	 * state to 'pending' then H/W will continue handling this master
>  	 * command when the bus comes back to the idle state.
>  	 */
> -	if (bus->slave_state != ASPEED_I2C_SLAVE_INACTIVE)
> +	if (bus->slave_state != ASPEED_I2C_SLAVE_INACTIVE) {
>  		bus->master_state = ASPEED_I2C_MASTER_PENDING;
> +		return;
> +	}
>  #endif /* CONFIG_I2C_SLAVE */
>  
> +	bus->master_state = ASPEED_I2C_MASTER_START;
>  	bus->buf_index = 0;
>  
>  	if (msg->flags & I2C_M_RD) {
> @@ -422,20 +429,6 @@ static u32 aspeed_i2c_master_irq(struct aspeed_i2c_bus *bus, u32 irq_status)
>  		}
>  	}
>  
> -#if IS_ENABLED(CONFIG_I2C_SLAVE)
> -	/*
> -	 * A pending master command will be started by H/W when the bus comes
> -	 * back to idle state after completing a slave operation so change the
> -	 * master state from 'pending' to 'start' at here if slave is inactive.
> -	 */
> -	if (bus->master_state == ASPEED_I2C_MASTER_PENDING) {
> -		if (bus->slave_state != ASPEED_I2C_SLAVE_INACTIVE)
> -			goto out_no_complete;
> -
> -		bus->master_state = ASPEED_I2C_MASTER_START;
> -	}
> -#endif /* CONFIG_I2C_SLAVE */
> -
>  	/* Master is not currently active, irq was for someone else. */
>  	if (bus->master_state == ASPEED_I2C_MASTER_INACTIVE ||
>  	    bus->master_state == ASPEED_I2C_MASTER_PENDING)
> @@ -462,11 +455,15 @@ static u32 aspeed_i2c_master_irq(struct aspeed_i2c_bus *bus, u32 irq_status)
>  #if IS_ENABLED(CONFIG_I2C_SLAVE)
>  		/*
>  		 * If a peer master starts a xfer immediately after it queues a
> -		 * master command, change its state to 'pending' then H/W will
> -		 * continue the queued master xfer just after completing the
> -		 * slave mode session.
> +		 * master command, clear the queued master command and change
> +		 * its state to 'pending'. To simplify handling of pending
> +		 * cases, it uses S/W solution instead of H/W command queue
> +		 * handling.
>  		 */
>  		if (unlikely(irq_status & ASPEED_I2CD_INTR_SLAVE_MATCH)) {
> +			writel(readl(bus->base + ASPEED_I2C_CMD_REG) &
> +				~ASPEED_I2CD_MASTER_CMDS_MASK,
> +			       bus->base + ASPEED_I2C_CMD_REG);

Sorry for the late comments (just noticed this line while testing the patch):

I assume this line is aimed at stopping the running master commands, but as per
AST2500 datasheet, it's NOP to write 0 to MASTER_STOP/MASTER_RX/MASTER_TX bits.
Maybe all we need is writing 1 to MASTER_STOP field?


Cheers,

Tao 

>  			bus->master_state = ASPEED_I2C_MASTER_PENDING;
>  			dev_dbg(bus->dev,
>  				"master goes pending due to a slave start\n");
> @@ -629,6 +626,14 @@ static irqreturn_t aspeed_i2c_bus_irq(int irq, void *dev_id)
>  			irq_handled |= aspeed_i2c_master_irq(bus,
>  							     irq_remaining);
>  	}
> +
> +	/*
> +	 * Start a pending master command at here if a slave operation is
> +	 * completed.
> +	 */
> +	if (bus->master_state == ASPEED_I2C_MASTER_PENDING &&
> +	    bus->slave_state == ASPEED_I2C_SLAVE_INACTIVE)
> +		aspeed_i2c_do_start(bus);
>  #else
>  	irq_handled = aspeed_i2c_master_irq(bus, irq_remaining);
>  #endif /* CONFIG_I2C_SLAVE */
> @@ -691,6 +696,15 @@ static int aspeed_i2c_master_xfer(struct i2c_adapter *adap,
>  		     ASPEED_I2CD_BUS_BUSY_STS))
>  			aspeed_i2c_recover_bus(bus);
>  
> +		/*
> +		 * If timed out and the state is still pending, drop the pending
> +		 * master command.
> +		 */
> +		spin_lock_irqsave(&bus->lock, flags);
> +		if (bus->master_state == ASPEED_I2C_MASTER_PENDING)
> +			bus->master_state = ASPEED_I2C_MASTER_INACTIVE;
> +		spin_unlock_irqrestore(&bus->lock, flags);
> +
>  		return -ETIMEDOUT;
>  	}
>  
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
