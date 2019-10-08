Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C18E1D032A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 00:01:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ozAGcJw+0AZpiDpzNvT8/oCnWrGVLzHjkznLMgitWew=; b=pEHBKjmL1rpp/F
	JHhKCydsJVYp2GEX0YkWh4wV+7/r+PIJEqOOIVGOPm7yX4zcoefIVgdtAU0kYwQHtTT4T5x111LEG
	vSYSey9YIZDmgoG04LfmDbh3mvMbbyjtHKGgf5P3hyoLwU6m7pQ41C5DGk8ckPgId1oTj40H8bqa3
	fNSpSNxy8ImodwsmgPZzXqihJQnqBLB8sRteDIwW+eVZvvZUJSKhALL7pkNrl8cYEd4XfPzr6Kmr7
	D0BH8gMya5TKXRjJKyUOtIAzUYfq9ZatfBFAXLPDBvyx0/PT6KZpFZcwNgsTGyMJGGeibAiptm8H1
	f+ocO19FZhga0KOmNVWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHxXg-0006gb-BF; Tue, 08 Oct 2019 22:01:16 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30]
 helo=mx0a-00082601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHxXY-0006g9-QA
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 22:01:10 +0000
Received: from pps.filterd (m0089730.ppops.net [127.0.0.1])
 by m0089730.ppops.net (8.16.0.42/8.16.0.42) with SMTP id x98Lxjcg002325;
 Tue, 8 Oct 2019 15:00:48 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=ABOZZdkqLm1L0q8tsiyHSpdiPstIbm3G9W6AzYXAqmY=;
 b=H2g3HLFdOujbXud5GohDzpy4rjcVCKHxxIciYQyRRE6th0eOoSLw9sGtSbnTTWB9TX18
 lYAtoHBowTNiwNLkkowK22DPUpuyL9qC+6W9RlNmdzhDboXFo3ioooKe1E4z2x+HVgim
 fby+V51cYEHvvzZOhbbv9w81Kn6n85SRsrk= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by m0089730.ppops.net with ESMTP id 2vgprk3xyq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Tue, 08 Oct 2019 15:00:48 -0700
Received: from ash-exhub203.TheFacebook.com (2620:10d:c0a8:83::5) by
 ash-exhub204.TheFacebook.com (2620:10d:c0a8:83::4) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Oct 2019 15:00:47 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.36.102) with Microsoft SMTP
 Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 8 Oct 2019 15:00:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FXhiTsw4tP7XV5JzVYkN6ps45zyiEC6SkDu15zFdkHxjp2pGTi8Spd2cSepZ7d0IItkW/L7oEcLLd/B2iu6DR1VpQQuAR4sbCPUhEDx+GIDsQE0s9Y4lufPZJIVhEh7XhCj8Ywpuj+9ksAvf5HIh6MVEUl/TC2fFiJSAVfZYxGqybehUiD8Th3DhWMAUhXZNVtRQrXPtdMtQPztq7K9ow0gQa/ULAQ60dA5bp3EXGYPlDie6LOiBIB2FkzgH0ihjKp7syZX94SnyCqdn5+vN2CRHgOXa8fWOu+7UQFbHMejdGaiM+QoaYWsba5Iv0mTUPRmM2wI/DsUzBDFUJJFd1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ABOZZdkqLm1L0q8tsiyHSpdiPstIbm3G9W6AzYXAqmY=;
 b=HyHeXxisZBEVHBSY0dgGS6eWO+lIN1WSnGzj9FSDQQAHtqVhP4LlCZZ5qd8cJc1pH5gQT8f6Nc9UfPRNvw/vVd+i/xnCqudb39hLwOzVe7eIGcf/7lg/tUclWyadm4ena/oi4tBO+XfFa7/gKWgjCFoKhDe8JgXMV4mshvSdsKMp2rjh0tVqQ1eaRcl1JWJkgeZ22mvUmks80pdVXH+Rc5bS6YBAJKVQgX23JGXNWr0LqwZpCp7cOiOLUOYRISOb61uK3aTAqOdiTywElp1vC2DXdKZ37kIKj4wlN2wCq4+q/Oi2ryliHg8NvNxyilCeBgHW5r3t69fgoBrbc9djug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector2-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ABOZZdkqLm1L0q8tsiyHSpdiPstIbm3G9W6AzYXAqmY=;
 b=goRwdHFMuU6gEWmXYRJ47oqKAPz5RMh2THQASX7iWFNwCqkI3ZggsDkI9/g47talx88XwJnTL0MNjjAUMqSojp76UXYbpUYyQNzKW3+0vJlCCi5dXeVJ+KUo/ZT5qP+LbVNcSOtvLEPyneyg83vorIrAT4JqTGpFsU21kMod7e0=
Received: from MWHPR15MB1216.namprd15.prod.outlook.com (10.175.2.17) by
 MWHPR15MB1535.namprd15.prod.outlook.com (10.173.234.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Tue, 8 Oct 2019 22:00:46 +0000
Received: from MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::24c9:a1ce:eeeb:9246]) by MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::24c9:a1ce:eeeb:9246%10]) with mapi id 15.20.2327.026; Tue, 8 Oct 2019
 22:00:46 +0000
From: Tao Ren <taoren@fb.com>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>, Brendan Higgins
 <brendanhiggins@google.com>, Benjamin Herrenschmidt
 <benh@kernel.crashing.org>, Joel Stanley <joel@jms.id.au>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Andrew Jeffery
 <andrew@aj.id.au>
Subject: Re: [PATCH 3/5] i2c: aspeed: fix master pending state handling
Thread-Topic: [PATCH 3/5] i2c: aspeed: fix master pending state handling
Thread-Index: AQHVfWTbblC7pbX04kW4ywPkkt70vadRTOAA
Date: Tue, 8 Oct 2019 22:00:46 +0000
Message-ID: <422eea61-7cb9-e471-83fb-3f554ff5e079@fb.com>
References: <20191007231313.4700-1-jae.hyun.yoo@linux.intel.com>
 <20191007231313.4700-4-jae.hyun.yoo@linux.intel.com>
In-Reply-To: <20191007231313.4700-4-jae.hyun.yoo@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MW2PR2101CA0027.namprd21.prod.outlook.com
 (2603:10b6:302:1::40) To MWHPR15MB1216.namprd15.prod.outlook.com
 (2603:10b6:320:22::17)
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:200::3:5686]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 858c3dd0-e475-4058-b31b-08d74c3af8e5
x-ms-traffictypediagnostic: MWHPR15MB1535:
x-microsoft-antispam-prvs: <MWHPR15MB153571D3D7344177BBA0174AB29A0@MWHPR15MB1535.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:568;
x-forefront-prvs: 01842C458A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(346002)(376002)(396003)(39860400002)(189003)(199004)(6116002)(316002)(8676002)(31696002)(5660300002)(110136005)(7416002)(6486002)(52116002)(65956001)(71200400001)(71190400001)(65806001)(186003)(8936002)(81156014)(81166006)(66476007)(229853002)(86362001)(31686004)(76176011)(58126008)(102836004)(54906003)(66556008)(64756008)(66446008)(66946007)(6246003)(6512007)(53546011)(6506007)(386003)(99286004)(6436002)(36756003)(46003)(486006)(7736002)(14454004)(25786009)(2616005)(476003)(14444005)(11346002)(4326008)(2906002)(256004)(478600001)(305945005)(446003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR15MB1535;
 H:MWHPR15MB1216.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vy4JP0gszCjoyrF+27kDDVgGKcZE/snOAvP7KFxqS/7O3vLSfEk24Ddw0N/IwO1iy/sX+fxHTwnY7fFbnCl7fylIwTShqVVi+pwUVHOIM2mfQW720C4BlTIeDdvX9fW3t/eDwSG0NaxIZjXXSstv5s8Hcokzem1k7HAECLgjeCXj9cP0jsg3h6UtN2ls+8jMFWe6Z03C/77VLC6WbxFAeCklIqLNJDcb49uTJ0rGhPzr8hfuiUYUkt2zXxB94iPKbag1glRwxEbSJRjAo9kIB8CG9ECF31XaHJXHKlynf5c9OgrVQt2dwGBew1FLYndRdBmDaiolt/2xaTfHlBqWVPWFD5MwvT7kJizGKAz4fMw9+zeQ1xCJqVEw8AreNbx94d7zJpTPDgAtRzex+1MvbwYT6GECjp3ORvFF48/8XTY=
x-ms-exchange-transport-forked: True
Content-ID: <F304E12DA9821C4995799DE8ABF9051C@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 858c3dd0-e475-4058-b31b-08d74c3af8e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2019 22:00:46.7660 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bmRhZBzQJGZDYMGQHqejoolpcUM5mjVyzpfdWA7kqRoW7X4z+k+C9ozzRt0crWQQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1535
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-08_08:2019-10-08,2019-10-08 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 bulkscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 phishscore=0 mlxscore=0
 mlxlogscore=999 impostorscore=0 spamscore=0 clxscore=1011 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1910080171
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_150108_975152_33E1AB28 
X-CRM114-Status: GOOD (  23.49  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [67.231.153.30 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On 10/7/19 4:13 PM, Jae Hyun Yoo wrote:
> In case of master pending state, it should not trigger the master
> command because this H/W is sharing the same data buffer for slave
> and master operations, so this commit fixes the issue with making
> the master command triggering happen when the state goes to active
> state.
> 
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> ---
>  drivers/i2c/busses/i2c-aspeed.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-aspeed.c b/drivers/i2c/busses/i2c-aspeed.c
> index fa66951b05d0..40f6cf98d32e 100644
> --- a/drivers/i2c/busses/i2c-aspeed.c
> +++ b/drivers/i2c/busses/i2c-aspeed.c
> @@ -336,18 +336,19 @@ static void aspeed_i2c_do_start(struct aspeed_i2c_bus *bus)
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
> @@ -432,7 +433,7 @@ static u32 aspeed_i2c_master_irq(struct aspeed_i2c_bus *bus, u32 irq_status)
>  		if (bus->slave_state != ASPEED_I2C_SLAVE_INACTIVE)
>  			goto out_no_complete;
>  
> -		bus->master_state = ASPEED_I2C_MASTER_START;
> +		aspeed_i2c_do_start(bus);
>  	}

Shall we move the restart-master logic from master_irq to bus_irq? The reason being:
master transaction cannot be restarted when aspeed-i2c is running in slave state and
receives STOP interrupt, because aspeed_i2c_master_irq won't be called in this case.


Cheers,

Tao
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
