Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6D5179225
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 15:16:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8s6kYVPxmTg1NKfqf4eZXreA/rTLC6fQ9RYKeiva4dY=; b=p89v3LF2EhHL0r
	DL7MM8SJAQ9G06E6CYWiUnzyL15WtclrBhCLQlE1Og9Mcauyca5Mvbh9RbZoJ1VOp0sAs73eE5SzS
	jtHn/Pq5vFYgOYqFEivKjMPLYxxYdMB8DhrDSv+arM7haIzkr8ZcLeNN5K1TiCNbVr2aX3/mK8yHW
	GNhiIf1dLd8/Jk4v14qSWIKTSdNdwq5ikpfgVS2nEsEqZLucIKbrZ7vOZkdixrYxLEt8lZq6Mqr4i
	1Qur1JtqMX2Gdij0A/WGBUeZAwr4ysKakEqVaNxceO1MzIFMx6QeiZJtIt8kG4P2iEStnCac7lZDt
	s+H3wgbmXDHA6ApfKXmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Uon-000287-L0; Wed, 04 Mar 2020 14:16:13 +0000
Received: from mail-am6eur05on2056.outbound.protection.outlook.com
 ([40.107.22.56] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Uod-00027T-NQ
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 14:16:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gX1sDZyBJYyMfRaiCIzK0JxX92n82SpAgPVK/mSgKTQlbXzSs+vTEyPrll1iKa+0pXpuBOsKZwObWTTBk3ZMZjEf8+6IGLoP6ydVgKGU8Z84F4nq0H14J6RbTr84hIV7MEBqPh7XqGNoz5A7dUPLhJF9oBT7bcxTGyyp38U0tcD+MFI4oMcXwXUaLVf5aQxbjdN4cyuYFgQV0iTGZ8IR7+ROdoNg8TOHcgrphbN6fl8knD43Z2YBEwy9I/ttu8hP44HuVBGye8mTMVLLCn/ZzXCmjEQmZ/jqfgo8IkpIBfmdsN6tmVGY91vLWrXYR7Jth6Xorb6AacrTpzB3bk59Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LYEZF/Dk4RB8mG91OLaollSQFUObqC8+dnIcTKibZW0=;
 b=as3ihf5peZJG8d/yCBrPNv60SHCM79TUev5Z+aL4bo7eKUgwsN8gCec7qdkkgwhgcPneY5k8QQQcXdrGys0oLhMETtPI6JXiterA1Pf7IEsvMYat6Flu8jtD4G7WVF/2QZB1Lhtm5T+0qiOhHMANBafyycNWP9XW4W8Ea1Mh41KP/Af8sP/wUeADy9lCmyhWLzBqt4XC8zWymRETXgjUGa478byJ75z7aSoOEKdsnbfmuGOY01S6iI8ObrHhzRPmNEZUVPK5owFFgbQOs0aVxaYygxPW/qI5yXwVj9elcouDuEq6DmSXOmp/0yK3ghYsHl8Lzn2oE5HVNeZ1IU+wxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LYEZF/Dk4RB8mG91OLaollSQFUObqC8+dnIcTKibZW0=;
 b=rWX4kZl6K5y9ZQn6es08VclwW8zwjZbsfgAMDQzrS4hzCJbmZcEB0c/r4SSm5tc/LcJeWqPUluQOyMt5iuVn6PjtND4E7xwP1sEu8EkE1Ms6XAq0xNcJe1++y1csK5+ta/Pf1Y5mOn5zQdcLdAH7eFg6OBvY8mB6BvdBb0VwTQA=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7075.eurprd04.prod.outlook.com (10.186.131.72) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Wed, 4 Mar 2020 14:16:00 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Wed, 4 Mar 2020
 14:16:00 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [PATCH V4 2/2] firmware: arm_scmi: add smc/hvc transport
Thread-Topic: [PATCH V4 2/2] firmware: arm_scmi: add smc/hvc transport
Thread-Index: AQHV8QFMuMBBDfh8hE244PoeMX235qg4QIWAgAAijkCAAAqsUA==
Date: Wed, 4 Mar 2020 14:16:00 +0000
Message-ID: <AM0PR04MB44814B71E92C02956F4BED4588E50@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1583201219-15839-1-git-send-email-peng.fan@nxp.com>
 <1583201219-15839-3-git-send-email-peng.fan@nxp.com>
 <20200304103954.GA25004@bogus>
 <AM0PR04MB4481A6DB7339C22A848DAFC988E50@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB4481A6DB7339C22A848DAFC988E50@AM0PR04MB4481.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a1de24b3-9306-445a-2b10-08d7c04690ed
x-ms-traffictypediagnostic: AM0PR04MB7075:|AM0PR04MB7075:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB707534B28C7B054838227BE788E50@AM0PR04MB7075.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0332AACBC3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(136003)(376002)(39860400002)(366004)(189003)(199004)(5660300002)(8676002)(4326008)(54906003)(7696005)(8936002)(81166006)(81156014)(186003)(6506007)(478600001)(76116006)(9686003)(55016002)(2940100002)(33656002)(66946007)(2906002)(71200400001)(26005)(316002)(66476007)(86362001)(66556008)(6916009)(52536014)(66446008)(44832011)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7075;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pD/eesiQVXXVShduK1Dp4ecAN/vgpoPSf6oixwuulqqpcHQq9qN+gnirlkN9SKXwAVv2jgTMW/i+Wbbv2SIhe18BjdiWdcvMvfFUljWrmehdFxGUag65gR7rI6z5/BPms353equ4RVVGCzgT0/OEPpRfECRNGugIHNTzTU91UMP5e3wTpq9KdQZl6omnIFTRIEa5b9z5I2vpTxy3io9cL04LXgbDRIFrjB8MC4p2mjIFsFRrhyR4y2LHqnM424ita55dj6v0szbEcN0hOIHpcqzquzLjD0zIeeq65jyPBLvNioqJCFJ/C6eRywbB6m42DiNOwodmY5/EvoorFXLSLQds5AirPcXWDu74I7v4E+JKREiE+lYkbkw/BAr7tx+YcAtfnyoZnByzbDch+KL3ZNJ55r9KDly98QwdaSaGToAYv9jyIGTBq3jN0CmaLm6v
x-ms-exchange-antispam-messagedata: YQsb/pa3n07Q4ApAqom4/nB96wv+PPfDooGv8z5lFEqUvi24i1oVcEPlph+gQYN7ubBwqpL70cS9r+Sc0M+X0HefQxYdlyz2QOG6c6qdfqknn6RvcOGyzh8WueY3XpfdgZAsFyefKU03uh356UElwg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1de24b3-9306-445a-2b10-08d7c04690ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2020 14:16:00.7000 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leVOVCv+K0T4y1pOlC+Q8CfbSc3EORCsE1ehaqkFLf/YeeyYsDG+gEniwHB3KDDE5r7Hq/bn40zy/O04zCZLdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_061603_874282_9FEEA4EE 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: RE: [PATCH V4 2/2] firmware: arm_scmi: add smc/hvc transport
> 
> Hi Sudeep,
> 
> > Subject: Re: [PATCH V4 2/2] firmware: arm_scmi: add smc/hvc transport
> >
> > On Tue, Mar 03, 2020 at 10:06:59AM +0800, peng.fan@nxp.com wrote:
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > Take arm,smc-id as the 1st arg, leave the other args as zero for now.
> > > There is no Rx, only Tx because of smc/hvc not support Rx.
> > >
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> >
> > [...]
> >
> > > +static int smc_send_message(struct scmi_chan_info *cinfo,
> > > +			    struct scmi_xfer *xfer)
> > > +{
> > > +	struct scmi_smc *scmi_info = cinfo->transport_info;
> > > +	struct arm_smccc_res res;
> > > +
> > > +	shmem_tx_prepare(scmi_info->shmem, xfer);
> >
> > How do we protect another thread/process on another CPU going and
> > modifying the same shmem with another request ? We may need notion of
> > channel with associated shmem and it is protected with some lock.
> 
> This is valid concern. But I think if shmem is shared bwteen protocols, the
> access to shmem should be protected in
> drivers/firmware/arm_scmi/driver.c: scmi_do_xfer, because send_message
> and fetch_response both touches shmem
> 
> The mailbox transport also has the issue you mentioned, I think.

Ignore my upper comments. How do think the following diff based on current patch?

If ok, I'll squash it with current patch and send out v5.

diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
index 88f91b68f297..7d770112f339 100644
--- a/drivers/firmware/arm_scmi/smc.c
+++ b/drivers/firmware/arm_scmi/smc.c
@@ -29,6 +29,8 @@ struct scmi_smc {
        u32 func_id;
 };

+static DEFINE_MUTEX(smc_mutex);
+
 static bool smc_chan_available(struct device *dev, int idx)
 {
        return true;
@@ -99,11 +101,15 @@ static int smc_send_message(struct scmi_chan_info *cinfo,
        struct scmi_smc *scmi_info = cinfo->transport_info;
        struct arm_smccc_res res;

+       mutex_lock(&smc_mutex);
+
        shmem_tx_prepare(scmi_info->shmem, xfer);

        arm_smccc_1_1_invoke(scmi_info->func_id, 0, 0, 0, 0, 0, 0, 0, &res);
        scmi_rx_callback(scmi_info->cinfo, shmem_read_header(scmi_info->shmem));

+       mutex_unlock(&smc_mutex);
+
        return res.a0;
 }

Thanks,
Peng.

> 
> Thanks,
> Peng.
> >
> > --
> > Regards,
> > Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
