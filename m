Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5AD1C191
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 06:51:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tip2hf4eTRMx3KP+yR4xbJTUQ9JTdqCMYe1kmYx248E=; b=LjFg5mL4v4rdz0
	ahiibVl5FCH4nYDUEqdknCy4MHScEHe1YY9rvvlGegjrYjHRuU9cYKIVk8FmTqncuRE4G6TrBbJuy
	reC8PgLokUywMfC56D072QznMyE4VhLBSyRxxQIeuXh/BEoUd8aTnCgxpOYXk+jUhSpMQ/wqapVuQ
	kKp1XFAqs2g60Kv2hgiAkJz5+kDlLKeG+dj2UrLFC8L466pbe40iM/+Z4lLOE3RRaw/yaMeKLrNtR
	Rj/Dr0Wp5E2PacCAjKsDZ/Fg3SOFGwqUlAwRYwxgIz8uZMvd2AfIdurnXGYaHS58NqiQd6Xr88ZSv
	8WwBYCtlTfayunwSDRmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQPPr-00042P-2E; Tue, 14 May 2019 04:51:51 +0000
Received: from mail-eopbgr720079.outbound.protection.outlook.com
 ([40.107.72.79] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQPPi-00041x-Br
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 04:51:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=infinera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ahY3PwDdvXvvZ3EwGRlFE5BFyjFOgSVg0fQHVXgQfc4=;
 b=ZMoyB01O2yYs7tKRHoQDbos461ACh2JQZZ6EJHApFP5EF0cVOmpy5soxX7NePP53R1/4gqai40ieFLp1DJhA2RC8SCd1Uriq+/Fttt4LntvJ+En81Lrp7UiZeX9u+yzQn+Ox3QBeKp02kOs/9YZYUMJJh8H/sGNJEDLIe51Oo7Q=
Received: from BYAPR10MB3541.namprd10.prod.outlook.com (20.179.62.206) by
 BYAPR10MB2648.namprd10.prod.outlook.com (52.135.217.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Tue, 14 May 2019 04:51:36 +0000
Received: from BYAPR10MB3541.namprd10.prod.outlook.com
 ([fe80::bda3:184c:7f59:f7ab]) by BYAPR10MB3541.namprd10.prod.outlook.com
 ([fe80::bda3:184c:7f59:f7ab%7]) with mapi id 15.20.1878.024; Tue, 14 May 2019
 04:51:35 +0000
From: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
To: "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "leoyang.li@nxp.com" <leoyang.li@nxp.com>,
 "roy.pledge@nxp.com" <roy.pledge@nxp.com>
Subject: Re: [PATCH v1 4/8] soc/fsl/qbman: Use index when accessing device
 tree properties
Thread-Topic: [PATCH v1 4/8] soc/fsl/qbman: Use index when accessing device
 tree properties
Thread-Index: AQHVCadY7pF1Pe9lUE2omDuEjFRsAaZqDhiA
Date: Tue, 14 May 2019 04:51:35 +0000
Message-ID: <6c97a9105fe35d2afdcd2e481d109521c7acb235.camel@infinera.com>
References: <1557763756-24118-1-git-send-email-roy.pledge@nxp.com>
 <1557763756-24118-5-git-send-email-roy.pledge@nxp.com>
 <1afd837287cebccfc1dd68365870d0f5d1cf27f7.camel@infinera.com>
 <DB6PR0402MB27278B23001A8965AE493CE3860F0@DB6PR0402MB2727.eurprd04.prod.outlook.com>
In-Reply-To: <DB6PR0402MB27278B23001A8965AE493CE3860F0@DB6PR0402MB2727.eurprd04.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Joakim.Tjernlund@infinera.com; 
x-originating-ip: [88.131.87.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 686b4a25-3963-426e-adf7-08d6d827d80d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BYAPR10MB2648; 
x-ms-traffictypediagnostic: BYAPR10MB2648:
x-microsoft-antispam-prvs: <BYAPR10MB26482D13BAFCC20A2997174BF4080@BYAPR10MB2648.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0037FD6480
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(39860400002)(346002)(396003)(366004)(189003)(199004)(486006)(2201001)(53936002)(66476007)(110136005)(446003)(54906003)(11346002)(14454004)(66066001)(66446008)(118296001)(8676002)(66556008)(2616005)(91956017)(73956011)(76116006)(476003)(66946007)(64756008)(86362001)(5660300002)(6512007)(2906002)(6436002)(36756003)(229853002)(53546011)(71190400001)(102836004)(71200400001)(186003)(5024004)(76176011)(256004)(8936002)(26005)(81166006)(14444005)(7736002)(6246003)(99286004)(316002)(478600001)(305945005)(25786009)(68736007)(4326008)(2501003)(6506007)(6486002)(72206003)(6116002)(3846002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR10MB2648;
 H:BYAPR10MB3541.namprd10.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: infinera.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4PRavAMl7Zjm13s/FrQqJX8g8RklWNI5dUJIyjva8xPZVYu94PyTLe5txwL+8DTjzrL/jWG7BPQXam2qAsnN0aZ4pzTyqHl9xHuiYYLl6Gb7bNCcKPcUYXA1zqWJ3udoh6YoJuQsIW+sBuwE+k286mmhRzTpSdBAARtKubYS46lLziZqFC3+hjKzdlyydeyT8gz5znlWHNwc/d9LEjAf/dM8a6VapntTeDyNt3aOOYPjfAAG5ihcG79jzQHUIwagiTypDhrUZqQqFGSsAVBF2uWcO+CxtmutVEge5bznGYH56uCvtBc2VOWFqwfUwaRLH6ZYN0l7bVyWufPniGE+GTE8ypnWi56f3zAs2ALhokyzthWz2iM7K7GSSF/1YS5BN9rtcucJcHyOkjFS7/gv1I7Crhn+4zxCIKM0k5DzUtY=
Content-ID: <1FCAA9E0AEB788468E4FCE14DAE4DCAD@namprd10.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: infinera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 686b4a25-3963-426e-adf7-08d6d827d80d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2019 04:51:35.6904 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 285643de-5f5b-4b03-a153-0ae2dc8aaf77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB2648
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_215142_502035_F4828FE8 
X-CRM114-Status: GOOD (  22.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "laurentiu.tudor@nxp.com" <laurentiu.tudor@nxp.com>,
 "madalin.bucur@nxp.com" <madalin.bucur@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-05-13 at 17:40 +0000, Roy Pledge wrote:
> CAUTION: This email originated from outside of the organization. Do not click links or open attachments unless you recognize the sender and know the content is safe.
> 
> 
> On 5/13/2019 12:40 PM, Joakim Tjernlund wrote:
> > On Mon, 2019-05-13 at 16:09 +0000, Roy Pledge wrote:
> > > The index value should be passed to the of_parse_phandle()
> > > function to ensure the correct property is read.
> > Is this a bug fix? Maybe for stable too?
> > 
> >  Jocke
> Yes this could go to stable.  I will include stable@vger.kernel.org when
> I send the next version.

I think you need to send this patch separately then. The whole series cannot go to stable.

 Jocke

> > > Signed-off-by: Roy Pledge <roy.pledge@nxp.com>
> > > ---
> > >  drivers/soc/fsl/qbman/dpaa_sys.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/soc/fsl/qbman/dpaa_sys.c b/drivers/soc/fsl/qbman/dpaa_sys.c
> > > index 3e0a7f3..0b901a8 100644
> > > --- a/drivers/soc/fsl/qbman/dpaa_sys.c
> > > +++ b/drivers/soc/fsl/qbman/dpaa_sys.c
> > > @@ -49,7 +49,7 @@ int qbman_init_private_mem(struct device *dev, int idx, dma_addr_t *addr,
> > >                         idx, ret);
> > >                 return -ENODEV;
> > >         }
> > > -       mem_node = of_parse_phandle(dev->of_node, "memory-region", 0);
> > > +       mem_node = of_parse_phandle(dev->of_node, "memory-region", idx);
> > >         if (mem_node) {
> > >                 ret = of_property_read_u64(mem_node, "size", &size64);
> > >                 if (ret) {
> > > --
> > > 2.7.4
> > > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
