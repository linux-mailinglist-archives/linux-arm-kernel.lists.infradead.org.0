Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E58C91327D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 18:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xmw7Md2u/g/EjwbzSskX/DSK+bPV4+lztIrHdmYBO/w=; b=pDsBKTGt+gy2YW
	PKA9znxyEySQf4wcgTGA2frlBsiQqkWKAdYhST/iee/EmZS0IbOcxVY1m6/ux03fXjQa/yR/KEUEA
	4gI8BukeEuJLcud5brNz1gJENDRr3SkGhaM29fjMK85nhsv4GqJvd/ZioEPPTkxx3E/Q+7UgDBUDF
	y447hale+4m6DDNJW0ocRs6SuQrhStv+R+DYVwgw+rwq6BmNFKRyjhGz/R2+Qx4x7vzI5eBmRK3Xe
	l6Ly2ZK0fZXaNtxWN6O/AQ48pYeeZjxichT4F+GSU/D/sqlchhXE1ivFOGZXA+DN6831Ml6qNgwCh
	maB7qYyL5o3x5MRWUrEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMbNJ-0005iG-GY; Fri, 03 May 2019 16:49:29 +0000
Received: from mail-eopbgr710063.outbound.protection.outlook.com
 ([40.107.71.63] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMbNC-0005hq-Dz
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 16:49:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nwWAfMhRk3TfVww9pLUC/U7seE6HUj8w8mFr2/Aswag=;
 b=spbiCAnFxTSnLoDSKGE5Kzt3QsSPSAJBcttuMl5V24rTs7/nZAQHnNjdLDLN4uGNSTn9qHzYklu6r3ivxioOSbXOkg0Fa1s2QWEIGTDYDlAERLB5kxMTjAAlv8JMgKYAKXUR63J+rJEObgtlg2iU1xQiTz8lqHHzbDwg8Clvm4g=
Received: from BL0PR02MB5681.namprd02.prod.outlook.com (20.177.241.92) by
 BL0PR02MB5412.namprd02.prod.outlook.com (20.177.240.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Fri, 3 May 2019 16:49:19 +0000
Received: from BL0PR02MB5681.namprd02.prod.outlook.com
 ([fe80::6cde:f726:b36e:752d]) by BL0PR02MB5681.namprd02.prod.outlook.com
 ([fe80::6cde:f726:b36e:752d%5]) with mapi id 15.20.1856.012; Fri, 3 May 2019
 16:49:19 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH V3 07/12] misc: xilinx_sdfec: Add ability to configure LDPC
Thread-Topic: [PATCH V3 07/12] misc: xilinx_sdfec: Add ability to configure
 LDPC
Thread-Index: AQHU/UVPnT63WxPZjkKYaNOUADJ+zqZYHgSAgAGG/0A=
Date: Fri, 3 May 2019 16:49:19 +0000
Message-ID: <BL0PR02MB5681D386363988CB2CA4D040CB350@BL0PR02MB5681.namprd02.prod.outlook.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
 <1556402706-176271-8-git-send-email-dragan.cvetic@xilinx.com>
 <20190502172713.GD1874@kroah.com>
In-Reply-To: <20190502172713.GD1874@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9d7b0bf3-1c86-4547-abc5-08d6cfe74937
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:BL0PR02MB5412; 
x-ms-traffictypediagnostic: BL0PR02MB5412:
x-microsoft-antispam-prvs: <BL0PR02MB5412C25FE7D1D400B65F825ACB350@BL0PR02MB5412.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(39860400002)(346002)(136003)(366004)(13464003)(189003)(199004)(99286004)(76176011)(71190400001)(8936002)(66066001)(71200400001)(25786009)(3846002)(81156014)(81166006)(305945005)(6116002)(107886003)(53936002)(2906002)(316002)(4326008)(8676002)(6246003)(68736007)(102836004)(7736002)(11346002)(476003)(446003)(7696005)(9686003)(6506007)(55016002)(14454004)(86362001)(73956011)(66946007)(478600001)(26005)(76116006)(52536014)(53546011)(6436002)(64756008)(66446008)(66476007)(66556008)(54906003)(486006)(6916009)(33656002)(186003)(74316002)(5660300002)(229853002)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB5412;
 H:BL0PR02MB5681.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qo+gsKJzxC6o7eckHF0QCjN0zBgZbwxLSyAQl8oIeRm8m8/RQYP1xRXRlJyJGpUOCA59WTc28BfkYD+5h/7rkZ4Fj1rtHtTzZS1vkPw+Uaz8AooFcGlEWyahI5akJMCToDV5q0Lgb24WizkTLINMwm196kJLIQ6dEZwX5no6OdkPVd+ZPEzJFi28XCy176y6l52j7lN8v9lkeFx23yYxD4C6DPpl1UETbYwNO7Fo77FY6Va92kBg0LeXLPjHjOCYzoGp4QmPKKqE7YzVRnIWCc6ucUjCKpO9rScoHsncpC+zEeAgQ+zR4B6cXgNqyDhNk2RBBTJtIQMpusybE4QtmlmcgYpWjW+joKb5nW+mdPJFWtxtlcw8B+ytBD7tO2ysO9w7cnhf1gAhE5HCCsh0cbnYMai78hMwhKmjUG73j0c=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d7b0bf3-1c86-4547-abc5-08d6cfe74937
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 16:49:19.0395 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB5412
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_094922_476069_697DA2A4 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.71.63 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 Derek Kiernan <dkiernan@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

Please find inline comments below.

Regards
Dragan


> -----Original Message-----
> From: Greg KH [mailto:gregkh@linuxfoundation.org]
> Sent: Thursday 2 May 2019 18:27
> To: Dragan Cvetic <draganc@xilinx.com>
> Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> Subject: Re: [PATCH V3 07/12] misc: xilinx_sdfec: Add ability to configure LDPC
> 
> On Sat, Apr 27, 2019 at 11:05:01PM +0100, Dragan Cvetic wrote:
> > --- a/include/uapi/misc/xilinx_sdfec.h
> > +++ b/include/uapi/misc/xilinx_sdfec.h
> 
> <snip>
> 
> > +/**
> > + * xsdfec_calculate_shared_ldpc_table_entry_size - Calculates shared code
> > + * table sizes.
> > + * @ldpc: Pointer to the LPDC Code Parameters
> > + * @table_sizes: Pointer to structure containing the calculated table sizes
> > + *
> > + * Calculates the size of shared LDPC code tables used for a specified LPDC code
> > + * parameters.
> > + */
> > +inline void
> > +xsdfec_calculate_shared_ldpc_table_entry_size(struct xsdfec_ldpc_params *ldpc,
> > +	struct xsdfec_ldpc_param_table_sizes *table_sizes)
> > +{
> > +	/* Calculate the sc_size in 32 bit words */
> > +	table_sizes->sc_size = (ldpc->nlayers + 3) >> 2;
> > +	/* Calculate the la_size in 256 bit words */
> > +	table_sizes->la_size = ((ldpc->nlayers << 2) + 15) >> 4;
> > +	/* Calculate the qc_size in 256 bit words */
> > +	table_sizes->qc_size = ((ldpc->nqc << 2) + 15) >> 4;
> > +}
> 
> Why do you have an inline function in a user api .h file?  That's really
> not a good idea.

This is just a Helper function for users aligning the calculations.
Please advise, is this acceptable?

> 
> thanks,
> 
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
