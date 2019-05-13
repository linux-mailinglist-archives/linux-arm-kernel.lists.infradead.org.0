Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3041BB25
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 18:40:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTLW7mb+mmO2vxCAUHQB6yi1cznl82YYJyQnwFniOrc=; b=BcUJZu3C3eLFof
	7Pjv9XiIjEisGY6vnZS1ngWzDALNzd0TJTvps7FFRxgXR2hEhRPq4GHeN3Xu07xjwvEN5mWuFhjkM
	eJMA8zyCbYlti1jSJ+FU3uZszXaG2cNnXnbU8ca/U9GCSgMu2q5GNzRt1TyPkx05e8vfdRff5Zrgo
	PPfn3DsXnlPX4bdQBs5PqUBrBqsdxsQdqPX9sfDoz6s2txCarwmK8jlsoC8aeHlOkyWpy0yE9OibS
	N7HtBRp3UZ/aaBt1GhY0SnstCzHN1zaNt0OBW5545tfeF8R1q7pGvk9AF2oDMLvydahwD7PIq3QtQ
	432w+dXGeODtHfZ8+/zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQE0O-0003bc-4d; Mon, 13 May 2019 16:40:48 +0000
Received: from mail-eopbgr820074.outbound.protection.outlook.com
 ([40.107.82.74] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQE0E-0003aG-W3
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 16:40:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=infinera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l/iAmHKB5HOp50e9yMvGnt3MYRpcQk4vsw0oVUTgzCg=;
 b=FraIFcYEJvDnrAxURCgaoLh6K0bdqFU9bbUoYXTFO8YTOWXgP2NvjH+/mWdnr3ZTxXC+3EJ+3vAlHjexMbuHCmyIWNJah0/3c9esERJMsIWu9ESxTLXZ9iDUIvejUwoOAYz/11VRVGbgVOKFjht7duleQ0vXyO7ffRjq5coK7Wk=
Received: from BN8PR10MB3540.namprd10.prod.outlook.com (20.179.78.205) by
 BN8PR10MB3219.namprd10.prod.outlook.com (20.179.138.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Mon, 13 May 2019 16:40:37 +0000
Received: from BN8PR10MB3540.namprd10.prod.outlook.com
 ([fe80::24c5:ea68:cff3:4a16]) by BN8PR10MB3540.namprd10.prod.outlook.com
 ([fe80::24c5:ea68:cff3:4a16%7]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 16:40:37 +0000
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
Thread-Index: AQHVCadY7pF1Pe9lUE2omDuEjFRsAaZpQd6A
Date: Mon, 13 May 2019 16:40:36 +0000
Message-ID: <1afd837287cebccfc1dd68365870d0f5d1cf27f7.camel@infinera.com>
References: <1557763756-24118-1-git-send-email-roy.pledge@nxp.com>
 <1557763756-24118-5-git-send-email-roy.pledge@nxp.com>
In-Reply-To: <1557763756-24118-5-git-send-email-roy.pledge@nxp.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Joakim.Tjernlund@infinera.com; 
x-originating-ip: [88.131.87.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fe32ae2f-f61f-4c12-e2ba-08d6d7c1ba1b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BN8PR10MB3219; 
x-ms-traffictypediagnostic: BN8PR10MB3219:
x-microsoft-antispam-prvs: <BN8PR10MB32191C4D15B5F73E163563E4F40F0@BN8PR10MB3219.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(136003)(346002)(366004)(396003)(189003)(199004)(4326008)(7736002)(256004)(102836004)(6246003)(6436002)(73956011)(6486002)(76116006)(66946007)(66556008)(64756008)(66446008)(66476007)(2501003)(2906002)(6506007)(91956017)(81156014)(229853002)(8676002)(81166006)(8936002)(71190400001)(71200400001)(36756003)(6116002)(3846002)(118296001)(5660300002)(53936002)(110136005)(478600001)(72206003)(486006)(4744005)(6512007)(54906003)(14454004)(2201001)(186003)(26005)(11346002)(476003)(2616005)(68736007)(446003)(316002)(86362001)(66066001)(99286004)(25786009)(305945005)(14444005)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN8PR10MB3219;
 H:BN8PR10MB3540.namprd10.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: infinera.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YGMhfspaPplJ+Kut85Y/tVRjWe+YPzHNvLIKD/8FyHlovAoozvlAhEpkVWmAIR9R/Jfz18sG3PHNPC30ePg1bMIk7NheUaOhHJ3jgzXdsBv2gUSVw3Fd7B5rBHg6FIWjEBhxHy7emw4vyqqFYe6dePSxMnDRJkzVVXwp1nZ6V3wPOeGxYFK+RZB/807Zs+eGW/PUra+jX+gFjhbSzjhRms+7BmYbIiQipZosmcdA1qK+1g1PerqcvFcwyRcITLjEYZeuYx1GBSFuZjjSN9pz6nR90f2dT0NyTlUH2ZP9Ua5h9qe/0+yx5DCaZtyCqj5sup0RYuO8TzfzMuvs6fenkt6+h4ojfWWFOcRlDlVCpTAirZJHH+MFw366X64WCdSLmkfQAshIBntVIsDjmb4tT/pf+OggP6DLBSuTq65P2Dk=
Content-ID: <30C6854288C3D8458564DBB4CDD4EDB4@namprd10.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: infinera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe32ae2f-f61f-4c12-e2ba-08d6d7c1ba1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 16:40:36.9214 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 285643de-5f5b-4b03-a153-0ae2dc8aaf77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR10MB3219
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_094039_110702_97DE6534 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.74 listed in list.dnswl.org]
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

On Mon, 2019-05-13 at 16:09 +0000, Roy Pledge wrote:
> 
> The index value should be passed to the of_parse_phandle()
> function to ensure the correct property is read.

Is this a bug fix? Maybe for stable too?

 Jocke

> 
> Signed-off-by: Roy Pledge <roy.pledge@nxp.com>
> ---
>  drivers/soc/fsl/qbman/dpaa_sys.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/fsl/qbman/dpaa_sys.c b/drivers/soc/fsl/qbman/dpaa_sys.c
> index 3e0a7f3..0b901a8 100644
> --- a/drivers/soc/fsl/qbman/dpaa_sys.c
> +++ b/drivers/soc/fsl/qbman/dpaa_sys.c
> @@ -49,7 +49,7 @@ int qbman_init_private_mem(struct device *dev, int idx, dma_addr_t *addr,
>                         idx, ret);
>                 return -ENODEV;
>         }
> -       mem_node = of_parse_phandle(dev->of_node, "memory-region", 0);
> +       mem_node = of_parse_phandle(dev->of_node, "memory-region", idx);
>         if (mem_node) {
>                 ret = of_property_read_u64(mem_node, "size", &size64);
>                 if (ret) {
> --
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
