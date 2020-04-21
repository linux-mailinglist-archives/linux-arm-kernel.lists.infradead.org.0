Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 256141B2540
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 13:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H98uZxiq+ff8eT3smIfgTCWUVQ1KOSp1YCrllNE8TrM=; b=XhRrX2ce3TNWUi
	TV8Goo0Qgp9n572+gyPT5OZ0bvd7UJCjRtNJac3TbUdim2hJcrCXES+PElhIRV2HjNcDx7NGXSQ0m
	pPcUEUNBfh1H5JYX04X9Hr9NoOT3CZ94jEUVgPCx6llPqohfPu53uLYGgkydMXNxhaKzR3MzTZg0a
	kLtCuPmA2cly+uZEi3uhvjUdqjGAIa9ht6x6cw1p9u894jiu0EADHTMjFVl+OfiG1k4mW3vBXzXzy
	QH4QoSuLw7AoC3Kg2DukeaaWuAUid7F7s6s4BNh1Ij6MGGG8WnCgperh16B8i+yO8BJdVuOTjtyp8
	aNInqamEZZr1OyYZVbLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQrFe-0000oU-PR; Tue, 21 Apr 2020 11:39:42 +0000
Received: from mail-bn7nam10on2067.outbound.protection.outlook.com
 ([40.107.92.67] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQrFS-0000nh-UE
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 11:39:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ddsx8cBYmxVklB2NXklQKgQiNgmc8QsOvrFILprOjBFtKKPKDxQ97RFH8uPZ6D/hJDasIXyokC43ht2i8jwLJwzWiRE4IS1S9opkD3i48uhfNPPuNC3nIimly93PP07miTYAghQoteN0e4ju+H0JYEXO0hDkzsplkPAvkbxqSqJaPWqGWvBPNi3izKnntVL7ksXbQQ2ub9bpXPNwy8M9Vnw72zhOD+8HgFYdBuynjq1B05HnyuPZ80skZBml4an2bmy2+oIPJ564wgM/nzKEyASCYbQVIjmlUxku3nQnysN1sr44Nyph6XTnk5EVuuaeIxXwO1NfQ0PgUYd+GMQgCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FZhQkh693RD1ITuIVj3+UmgF9ULxuNJReocRdCLXH7s=;
 b=GSgXMNCqUI2LY3b5WsdcMEEM/+xxQ0k53ia9c3z2qWwvsQOM8ySoq7mIiZCgzjJiD0UHVsVPwQNU5xFVvRd6ZZYBQoNz50JD4s42F5kyegbEOFxvnc3rPmXA4DHUAnGB6wHV1I+1sFq9N/cStB/ghKjKCDY8V49fEcM3ELok8jUtZ9Zg2LlBNd0emZscf7unkx4DZuN99J6sGH/E0BEbvb8I3I+cgg5KSgKwXSxRf6kb0En1VUfi3WwxirJ/6A7rGoTysF12A8BDsiyB1j717x15FF9G0jCuUcYnfioWigH3ltxuM/be6kGGX0eyDhjQrcw02/nXQe7mrg6H6ds/jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FZhQkh693RD1ITuIVj3+UmgF9ULxuNJReocRdCLXH7s=;
 b=RH2P/OK02BMEOgrVZiN0DWL2VtWnYCpLmAVOpZTSOfEb9DGQIz6VQD7ScXa1Dvpl1fDIfgB765WrqMX6jmlQOYgHs4l5iiIsqAWvPZfE+BoXRtieFEPcIQhbv1/mXRw7CHhvzT2sS6h8M953KQn87PJp+ctTS1S2jg9da+7xVlc=
Received: from DM6PR02MB6876.namprd02.prod.outlook.com (2603:10b6:5:22c::11)
 by DM6PR02MB6682.namprd02.prod.outlook.com (2603:10b6:5:214::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Tue, 21 Apr
 2020 11:39:28 +0000
Received: from DM6PR02MB6876.namprd02.prod.outlook.com
 ([fe80::ad68:d392:e519:f671]) by DM6PR02MB6876.namprd02.prod.outlook.com
 ([fe80::ad68:d392:e519:f671%8]) with mapi id 15.20.2921.030; Tue, 21 Apr 2020
 11:39:28 +0000
From: Vishal Sagar <vsagar@xilinx.com>
To: Luca Ceresoli <luca@lucaceresoli.net>, "laurent.pinchart@ideasonboard.com"
 <laurent.pinchart@ideasonboard.com>
Subject: RE: [PATCH v11 2/2] media: v4l: xilinx: Add Xilinx MIPI CSI-2 Rx
 Subsystem driver
Thread-Topic: [PATCH v11 2/2] media: v4l: xilinx: Add Xilinx MIPI CSI-2 Rx
 Subsystem driver
Thread-Index: AQHWDqdoYfHJZJ7yyEOpsMzdPA1DraiDckYAgAAR72A=
Date: Tue, 21 Apr 2020 11:39:28 +0000
Message-ID: <DM6PR02MB687640292EFB844B4BF9DA0DA7D50@DM6PR02MB6876.namprd02.prod.outlook.com>
References: <20200409194424.45555-1-vishal.sagar@xilinx.com>
 <20200409194424.45555-3-vishal.sagar@xilinx.com>
 <4331afd6-3891-2dd5-b5b8-2ffc5d1cbed5@lucaceresoli.net>
In-Reply-To: <4331afd6-3891-2dd5-b5b8-2ffc5d1cbed5@lucaceresoli.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vsagar@xilinx.com; 
x-originating-ip: [149.199.50.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9ef2c99e-03ba-4d63-b078-08d7e5e8a69d
x-ms-traffictypediagnostic: DM6PR02MB6682:|DM6PR02MB6682:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR02MB6682C92C101C437674579EF0A7D50@DM6PR02MB6682.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 038002787A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR02MB6876.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(39860400002)(136003)(396003)(376002)(366004)(4326008)(26005)(110136005)(6506007)(53546011)(7696005)(316002)(54906003)(66476007)(5660300002)(7416002)(186003)(66556008)(66446008)(64756008)(33656002)(76116006)(52536014)(66946007)(478600001)(71200400001)(2906002)(8936002)(55016002)(8676002)(81156014)(86362001)(9686003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VW6IaMoMrlMthq0FNAn3ZfbA7UzlsSUJXW/8Nbzw4TdNrmfVfjUPGRp/jYm/ukbmGaRxtCGwwVVPEPZzOS4QRnJOMXknZbvGTSSTw+evkOT0qQafF16b+3eLVfWxT/lhAooj4wlQnq3d6WF6cLM+XWc9W6XrtX9pWCN64zQeR/Hck2avsjhHj/Bvx41PWGw3fUdwQvKFwA5b6kCUZQMJN1NF2CuDkJFL18h6Q5LFlG9ufpVNdySYDbUgM4IOHxEs234GFJKtIgOoDkx9gGmxYwSNyn1aSHO7N5+KluEf4MIBJVRSYkG3vprZK0P8FTIJs08jIo86txBURTY1eEDhCjtOFfbC7l/S0yZaJ9Y8yHETH8k38qnttRq4jGg6tRVwhT+MD+mNaENxTe9lJF/sCc0MIapeV41AfmqNwO1z7bMGwz3swudf2tV0LUXNBQAP
x-ms-exchange-antispam-messagedata: pdl4Q/18hzPetSI2extfW2BoXKW4E49/BjC6Jjvm7cXjIbIjXkOyytABMXyKKP9TxN43BL7ODQTqIC+KVgnhZpANkCI9CzQFhaq0tdUNC2IUXaP99dO2vzbwfS+fUe4Xxg47zfvo8jJcHPEkUazTCw==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ef2c99e-03ba-4d63-b078-08d7e5e8a69d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2020 11:39:28.5515 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FTzMrjaCe0QE7l8D3RGwWNX3xJg6dxHQRwxx6EowyldY14p4BqwTYRmi4/gMVi0c4cIAUnqBeG9LLVx7ChHizg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB6682
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_043931_038069_A42CAA6E 
X-CRM114-Status: GOOD (  23.24  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.92.67 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jacopo Mondi <jacopo@jmondi.org>, Dinesh Kumar <dineshk@xilinx.com>,
 Hyun Kwon <hyunk@xilinx.com>, Sandip Kothari <sandipk@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Luca,

Thanks for going through the patch and providing your feedback.

> -----Original Message-----
> From: Luca Ceresoli <luca@lucaceresoli.net>
> Sent: Tuesday, April 21, 2020 4:00 PM
> To: Vishal Sagar <vsagar@xilinx.com>; Hyun Kwon <hyunk@xilinx.com>;
> laurent.pinchart@ideasonboard.com; mchehab@kernel.org;
> robh+dt@kernel.org; mark.rutland@arm.com; Michal Simek
> <michals@xilinx.com>; linux-media@vger.kernel.org;
> devicetree@vger.kernel.org; hans.verkuil@cisco.com; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Dinesh Kumar
> <dineshk@xilinx.com>; Sandip Kothari <sandipk@xilinx.com>; Jacopo Mondi
> <jacopo@jmondi.org>
> Cc: Hyun Kwon <hyunk@xilinx.com>
> Subject: Re: [PATCH v11 2/2] media: v4l: xilinx: Add Xilinx MIPI CSI-2 Rx
> Subsystem driver
> 
> Hi Vishal,
> 
> thanks for having resumed this patchset!
> 
> On 09/04/20 21:44, Vishal Sagar wrote:
> [...]
> > +static int xcsi2rxss_parse_of(struct xcsi2rxss_state *xcsi2rxss) {
> > +	struct xcsi2rxss_core *core = &xcsi2rxss->core;
> > +	struct device_node *node = xcsi2rxss->core.dev->of_node;
> 
> Can be simplified as:
> 
> 	struct device_node *node = core.dev->of_node;
> 

Got it. Will update in next version.
struct device_node *node = core->dev->of_node

> > +	unsigned int nports, irq;
> > +	bool en_csi_v20, vfb;
> > +	int ret;
> > +
> > +	en_csi_v20 = of_property_read_bool(node, "xlnx,en-csi-v2-0");
> > +	if (en_csi_v20)
> > +		core->en_vcx = of_property_read_bool(node, "xlnx,en-vcx");
> > +
> > +	core->enable_active_lanes =
> > +		of_property_read_bool(node, "xlnx,en-active-lanes");
> > +
> > +	ret = of_property_read_u32(node, "xlnx,csi-pxl-format",
> > +				   &core->datatype);
> > +	if (ret < 0) {
> > +		dev_err(core->dev, "missing xlnx,csi-pxl-format property\n");
> > +		return ret;
> > +	}
> > +
> > +	switch (core->datatype) {
> > +	case XCSI_DT_YUV4228B:
> > +	case XCSI_DT_RGB444:
> > +	case XCSI_DT_RGB555:
> > +	case XCSI_DT_RGB565:
> > +	case XCSI_DT_RGB666:
> > +	case XCSI_DT_RGB888:
> > +	case XCSI_DT_RAW6:
> > +	case XCSI_DT_RAW7:
> > +	case XCSI_DT_RAW8:
> > +	case XCSI_DT_RAW10:
> > +	case XCSI_DT_RAW12:
> > +	case XCSI_DT_RAW14:
> > +		break;
> > +	case XCSI_DT_YUV42210B:
> > +	case XCSI_DT_RAW16:
> > +	case XCSI_DT_RAW20:
> > +		if (!en_csi_v20) {
> > +			ret = -EINVAL;
> > +			dev_dbg(core->dev, "enable csi v2 for this pixel
> format");
> > +		}
> > +		break;
> > +	default:
> > +		ret = -EINVAL;
> > +	}
> > +	if (ret < 0) {
> > +		dev_err(core->dev, "invalid csi-pxl-format property!\n");
> > +		return ret;
> > +	}
> > +
> > +	vfb = of_property_read_bool(node, "xlnx,vfb");
> > +	if (!vfb) {
> > +		dev_err(core->dev, "failed as VFB is disabled!\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	for (nports = 0; nports < XCSI_MEDIA_PADS; nports++) {
> > +		struct fwnode_handle *ep;
> > +		struct v4l2_fwnode_endpoint vep = {
> > +			.bus_type = V4L2_MBUS_CSI2_DPHY
> > +		};
> > +
> > +		ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(core-
> >dev),
> > +						     nports, 0,
> > +
> FWNODE_GRAPH_ENDPOINT_NEXT);
> > +		if (!ep)
> > +			break;
> > +		/*
> > +		 * since first port is sink port and it contains
> > +		 * all info about data-lanes and cfa-pattern,
> > +		 * don't parse second port but only check if exists
> > +		 */
> > +		if (nports == XVIP_PAD_SOURCE) {
> > +			dev_dbg(core->dev, "no need to parse source port");
> > +			fwnode_handle_put(ep);
> > +			continue;
> > +		}
> > +
> > +		ret = v4l2_fwnode_endpoint_parse(ep, &vep);
> > +		if (ret) {
> > +			dev_err(core->dev, "error parsing sink port");
> > +			fwnode_handle_put(ep);
> > +			return ret;
> > +		}
> > +
> > +		dev_dbg(core->dev, "port %d bus type = %d\n", nports,
> > +			vep.bus_type);
> > +
> > +		if (vep.bus_type == V4L2_MBUS_CSI2_DPHY) {
> > +			dev_dbg(core->dev, "base.port = %d base.id = %d\n",
> > +				vep.base.port, vep.base.id);
> > +
> > +			dev_dbg(core->dev, "mipi number lanes = %d\n",
> > +				vep.bus.mipi_csi2.num_data_lanes);
> > +
> > +			core->max_num_lanes =
> > +				vep.bus.mipi_csi2.num_data_lanes;
> > +		}
> > +		fwnode_handle_put(ep);
> > +	}
> > +
> > +	if (nports != XCSI_MEDIA_PADS) {
> > +		dev_err(core->dev, "invalid number of ports %u\n", nports);
> > +		return -EINVAL;
> > +	}
> > +
> > +	/* Register interrupt handler */
> > +	irq = irq_of_parse_and_map(node, 0);
> > +	ret = devm_request_irq(core->dev, irq, xcsi2rxss_irq_handler,
> > +			       IRQF_SHARED, "xilinx-csi2rxss", xcsi2rxss);
> > +	if (ret) {
> > +		dev_err(core->dev, "Err = %d Interrupt handler reg
> failed!\n",
> > +			ret);
> > +		return ret;
> > +	}
> 
> When using this driver I have changed this to a threaded IRQ, moving most of
> the management out of interrupt context. The patch is super simple and it
> works fine, for my use case at least. Do you think a strict IRQ is really needed
> for some reason?
> 

Agree I should have moved this to a threaded IRQ. I will update it in next version.

> > +	xcsi2rxss_log_ipconfig(xcsi2rxss);
> > +
> > +	return 0;
> 
> This function references 'core->dev' a lot of times, so I'd rather add at the
> top of the function:
> 
>   struct device * const dev = &pdev->dev;
> 
> and then use simply 'dev' everywhere. This would keep lines shorter and
> more readable. It is also handy when copying/moving a line of code from
> one function to another if all of them have 'dev' called the same way so I
> tend to do use this pattern often.
> 

Agree with  you. It will be updated in next version.

> > +}
> > +
> > +static int xcsi2rxss_probe(struct platform_device *pdev) {
> > +	struct v4l2_subdev *subdev;
> > +	struct xcsi2rxss_state *xcsi2rxss;
> > +	struct xcsi2rxss_core *core;
> > +	struct resource *res;
> > +	int num_clks = ARRAY_SIZE(xcsi2rxss_clks);
> > +	int ret;
> > +
> > +	xcsi2rxss = devm_kzalloc(&pdev->dev, sizeof(*xcsi2rxss),
> GFP_KERNEL);
> > +	if (!xcsi2rxss)
> > +		return -ENOMEM;
> > +
> > +	core = &xcsi2rxss->core;
> > +	core->dev = &pdev->dev;
> 
> This function references 'dev' many times, sometimes as &pdev->dev, thers
> as 'core->dev', thus as above why not adding at the top of the
> function:
> 
>   struct device * const dev = &pdev->dev;
> 
> and simplify code using 'dev' always?
> 

True. I will do the change in next version.

> > +	core->clks = devm_kmemdup(core->dev, xcsi2rxss_clks,
> > +				  sizeof(xcsi2rxss_clks), GFP_KERNEL);
> > +	if (!core->clks)
> > +		return -ENOMEM;
> > +
> > +	/* Reset GPIO */
> > +	core->rst_gpio = devm_gpiod_get_optional(core->dev, "reset",
> > +						 GPIOD_OUT_HIGH);
> > +	if (IS_ERR(core->rst_gpio)) {
> > +		if (PTR_ERR(core->rst_gpio) != -EPROBE_DEFER)
> > +			dev_err(core->dev, "Video Reset GPIO not setup in
> DT");
> > +		return PTR_ERR(core->rst_gpio);
> > +	}
> > +
> > +	mutex_init(&xcsi2rxss->lock);
> 
> There are 3 'return' statements after this call, and mutex_destroy() won't be
> called if they trigger. Ok, probably no real effect as
> mutex_init() is just initializing data, but for the sake of well-written code you
> can simply move mutex_init()...
> 
> > +	ret = xcsi2rxss_parse_of(xcsi2rxss);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +	core->iomem = devm_ioremap_resource(core->dev, res);
> > +	if (IS_ERR(core->iomem))
> > +		return PTR_ERR(core->iomem);
> > +
> > +	ret = clk_bulk_get(core->dev, num_clks, core->clks);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = clk_bulk_prepare_enable(num_clks, core->clks);
> > +	if (ret)
> > +		goto err_clk_put;
> 
> ...here.
>

Good idea. This will be updated in next version.
 
> > +	if (core->rst_gpio) {
> > +		gpiod_set_value_cansleep(core->rst_gpio, 1);
> > +		/* minimum of 40 dphy_clk_200M cycles */
> > +		usleep_range(1, 2);
> > +		gpiod_set_value_cansleep(core->rst_gpio, 0);
> > +	}
> 
> 
> --
> Luca

Regards
Vishal Sagar


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
