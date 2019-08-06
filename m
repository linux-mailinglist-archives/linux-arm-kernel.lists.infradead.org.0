Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D03E82B6D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 08:04:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p9qmEnvPLf9o6EKx+beSRfeI2rm+JiO4Rs+z5onn6VA=; b=ZsDDe+n5E+X2/+
	a6rTTuYtUNox4Ic7zCMWDuZHNCzcr5/9UyUeOQ10brczhHis6+qw7jQ9w4gPX+ZeWt3/a0QIdgTs0
	A8eJJpcTW/KaCslTHiSkgR6ax16vhjJKK6TCqkz0IMtJJ5Rj0/jmV+CVkOGgZyyxzTstJOh/bAPoS
	UFugdJ42a+TSHITzvbDIbg5xsZ6knql/lxKWCufW5VEaY8cqG2R3oPyX2Nk4aJUz1mfC5MVJU8DJx
	AfoLWNRO2UbgF3zky6lyfuapKB+RUKiFgktQGLWJeZ3zjr3yxhyWxvz52rRCkrDfUqCK/LwbApT8O
	otrtHeRJl36lVySshOHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1husaR-00030E-T6; Tue, 06 Aug 2019 06:04:44 +0000
Received: from mail-eopbgr150074.outbound.protection.outlook.com
 ([40.107.15.74] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1husaK-0002zl-He
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 06:04:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RZEKZpLRDCHaf13I2N1hmyZQutVPjdswmBamX8Ct/Y6c4/5JHqRAdZgkQuPuxrAJTmfs62pEhuK8148RBMHgbV8Tjp6VtObmP8/TjwQIb7284WjfBXNU6aIZvsK9+WSIems0CTvCGYuJlGUVZAhurYkE765y9rTr2tEsHatZ0D8VBJnScZSw0tBtInpJR33dciZ88cX98gOBTThP9BtUHrfjaSTtHCyIXlrQvIUSiHRsB1/jCn2tCAA50XBzW/tYKZIy/AQHIYbtEYqbaaEQv5VkOAn/UOBoxkTHxoaRjR/kmepHfDIhtqyUM0krf7+PK+fNcJ3B76Sm0/2Bzdi8DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OcR+wvYqi7wJDAkHQtna5mtBINHjjR+wcb7pKqHsOEE=;
 b=kh8+8BGzXdmZXCtX8zy6btjNrubhhMLKQkNgKtxzMvfpuGrBpex9AslGmLGy/KqokZbpEWrBQOrgicGzGYDcN4fkN6tzFSEkImbseDGcUZl7QqYaXSfHuY5/8qp0cnU6ocMeTy8IEIAPWMhp0KtdBvajjkjcUsx+DVC9QTU2kvZfxOwa9j00pkxZoZFVyWYYmVjLGBKKZKL1YxgBKgtHKBaFO2QrnhiamqxsZF4NEBErHkkos7d3ySd2Rjjug/3WFHj9ScCE213abMVuwjh93UOeQ8dX2YL33OAPnHHD0ljvDK/EFjI/NvWAyCa9FSQIaYdXM/fk1/jBXB02gH9XSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OcR+wvYqi7wJDAkHQtna5mtBINHjjR+wcb7pKqHsOEE=;
 b=U9QwyRGITwjNZroc1VnWwZA/pBWa74YwUakb85o4jTUf7/tElZPZJTh9UuV2e6eV7dR6q1DcOF99M8e6wg7vPwYBBYjWEm8UM9sIHM7fw5aPTHWiynFXfaDOwru9XR0eBwkG/7PO0wyGQeXBKHdMgqRb/X9W+xhTxeO1fplEu+c=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3642.eurprd04.prod.outlook.com (52.134.65.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.13; Tue, 6 Aug 2019 06:04:32 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2136.018; Tue, 6 Aug 2019
 06:04:32 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Marco Felsch <m.felsch@pengutronix.de>
Subject: RE: [PATCH V3] soc: imx-scu: Add SoC UID(unique identifier) support
Thread-Topic: [PATCH V3] soc: imx-scu: Add SoC UID(unique identifier) support
Thread-Index: AQHVMKtuuPFHSCY26k2sG80ZDaRX1qbQInuAgB21jFA=
Date: Tue, 6 Aug 2019 06:04:32 +0000
Message-ID: <DB3PR0402MB39163E3E626256B22634EFE7F5D50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190702074545.48267-1-Anson.Huang@nxp.com>
 <20190718082216.GO3738@dragon>
In-Reply-To: <20190718082216.GO3738@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1a91fddb-f051-4c64-cfd0-08d71a33f382
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3642; 
x-ms-traffictypediagnostic: DB3PR0402MB3642:
x-microsoft-antispam-prvs: <DB3PR0402MB36428C9AE2B3F92222B9AC30F5D50@DB3PR0402MB3642.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(396003)(366004)(39860400002)(199004)(189003)(64756008)(66446008)(54906003)(71190400001)(71200400001)(44832011)(486006)(7696005)(476003)(74316002)(11346002)(446003)(68736007)(86362001)(14454004)(4326008)(478600001)(25786009)(316002)(6246003)(6436002)(76116006)(33656002)(305945005)(7736002)(26005)(3846002)(5660300002)(110136005)(55016002)(186003)(9686003)(6116002)(66946007)(66556008)(76176011)(229853002)(2906002)(66066001)(99286004)(53936002)(102836004)(52536014)(66476007)(8676002)(81156014)(81166006)(6506007)(256004)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3642;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wcje9bPQj/eStg5kncDu4omLAhuMsNG/5S+SVn+pkUYyVLml8jaEhRDKHA3tPj45soBBhUmmeLTLaVL/r+/7ljfV4nYgUR/xowO/WqJjmHNyp2ZBMOrxno4RMdgkI2Ij2qC53dBC3SAzmZq/ARiFnR8WouN8vbQ7ZgGMyOff0eGfIPXxqgI1ouAmIQbl6tG3dA77jYNUitRkS3T9+meIeLEvJdSTS+Jm6vsihcu3u3tRWYHzGG+zSPIe3+QYS6W0+uVeTvdCxojah3bpG0T+7u3cRpoeEwrHH2VzgwpW41BeRqBTL9HK9RkzlsdtCEWz93CuMpKsNV87ge+kmSbcXh9UE1ZkxlkLGqQ2nIcJ1yQNVrc8X1FTYQHnHZGLdeVl4LH8XCdCaPlGVAF6HClvv3n+/IFKK2onwLVTW0OguO0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a91fddb-f051-4c64-cfd0-08d71a33f382
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 06:04:32.5786 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3642
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_230436_590015_D90ED0CD 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.74 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Marco
	Are you OK with this patch?

Thanks,
Anson.

> On Tue, Jul 02, 2019 at 03:45:45PM +0800, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > Add i.MX SCU SoC's UID(unique identifier) support, user can read it
> > from sysfs:
> >
> > root@imx8qxpmek:~# cat /sys/devices/soc0/soc_uid
> > 7B64280B57AC1898
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
> 
> @Marco, are you happy with it?
> 
> Shawn
> 
> > ---
> > Change since V2:
> > 	- The SCU FW API for getting UID does NOT have response, so we
> should set
> > 	  imx_scu_call_rpc()'s 3rd parameter as false and still can check the
> returned
> > 	  value, and comment is no needed any more.
> > ---
> >  drivers/soc/imx/soc-imx-scu.c | 39
> > +++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 39 insertions(+)
> >
> > diff --git a/drivers/soc/imx/soc-imx-scu.c
> > b/drivers/soc/imx/soc-imx-scu.c index 676f612..50831eb 100644
> > --- a/drivers/soc/imx/soc-imx-scu.c
> > +++ b/drivers/soc/imx/soc-imx-scu.c
> > @@ -27,6 +27,40 @@ struct imx_sc_msg_misc_get_soc_id {
> >  	} data;
> >  } __packed;
> >
> > +struct imx_sc_msg_misc_get_soc_uid {
> > +	struct imx_sc_rpc_msg hdr;
> > +	u32 uid_low;
> > +	u32 uid_high;
> > +} __packed;
> > +
> > +static ssize_t soc_uid_show(struct device *dev,
> > +			    struct device_attribute *attr, char *buf) {
> > +	struct imx_sc_msg_misc_get_soc_uid msg;
> > +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > +	u64 soc_uid;
> > +	int ret;
> > +
> > +	hdr->ver = IMX_SC_RPC_VERSION;
> > +	hdr->svc = IMX_SC_RPC_SVC_MISC;
> > +	hdr->func = IMX_SC_MISC_FUNC_UNIQUE_ID;
> > +	hdr->size = 1;
> > +
> > +	ret = imx_scu_call_rpc(soc_ipc_handle, &msg, false);
> > +	if (ret) {
> > +		pr_err("%s: get soc uid failed, ret %d\n", __func__, ret);
> > +		return ret;
> > +	}
> > +
> > +	soc_uid = msg.uid_high;
> > +	soc_uid <<= 32;
> > +	soc_uid |= msg.uid_low;
> > +
> > +	return sprintf(buf, "%016llX\n", soc_uid); }
> > +
> > +static DEVICE_ATTR_RO(soc_uid);
> > +
> >  static int imx_scu_soc_id(void)
> >  {
> >  	struct imx_sc_msg_misc_get_soc_id msg; @@ -102,6 +136,11 @@
> static
> > int imx_scu_soc_probe(struct platform_device *pdev)
> >  		goto free_revision;
> >  	}
> >
> > +	ret = device_create_file(soc_device_to_device(soc_dev),
> > +				 &dev_attr_soc_uid);
> > +	if (ret)
> > +		goto free_revision;
> > +
> >  	return 0;
> >
> >  free_revision:
> > --
> > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
