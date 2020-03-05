Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCA217A42B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 12:25:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qGuiBY82gqrVok+IpSYPfgs9RZyNsbRBQqdh+aITWPQ=; b=OW6tqY4sdIsBlv
	y/CYruG+lnhIDcBe7eohfJ2KecdkbOZpLOjEHlRxQijPPPVw5ia0qySj7eaax6lvQ/Rmb6Ebk0Gge
	85dqyzwbvAO6yqXlDc3zoioWWqkb7id4TDJnlUozXCzFUkk2kpO29UHEzUdLXeoJuAQnNLlsAi2kM
	iwiaRzeNd1QI54Q09XK/Yl6kTMJsISvnY029B+t+UfvYw+FlnE0ghZxd1nNP5XI2ebSXzctg30w0G
	qev/ES2nMk4z+NP0gZeoXEONtDpuXoVjpscWBCEfr+OjVx+A/BCUWNQsyQ0f3uCjaAkjVJwHXzGyA
	g75FPnbe+acVnvYq0W9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9odR-0001ps-P1; Thu, 05 Mar 2020 11:25:49 +0000
Received: from mail-eopbgr70058.outbound.protection.outlook.com ([40.107.7.58]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9odL-0001p2-0c
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 11:25:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kwvtASk4IEZNlrRDYBL5smT+74YEsaukDxwgrmbZ3u6ezednUNsjhPXJc/0QeTiZM2JsW/eVPe3TNT0TwRKrdX6YY7DC+TernHkYcFYtb9oyIfoc+KtXRHASogprCbArBz+AP7FXaYL7+Db8QtMyscCB4toJu9ABb/fSXH4CYQaRoQ4pyKm8WEib09Cw/Lv9YSh3jlJ3Udj2+BhJ6MSE9x3Eq22MrZqvw0e886GtGtchftWNWsRPu9wd8kAZn4SJZkj4Z22aGfpWWGQbt4+ppCXBiyFr2/VNAaI9Gf1/blHgMj3OWhdpx9VeZ3Ct+Qn3I2KCJDTavlVHXog1tWixiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2zyuX7GS44k1j/89jhil6W6IOkMqYrFsP1t/zvuqWbY=;
 b=b4hc1Q14K8pR4ixZhFzczU0R776tJcjm8AEqFSfldpVAs7YLQlRZDaG3gcvgWX0aaAFwOEEMTdtvcZp+BFXXCNf5J5k/rpiWid+NZ5A02Ak8a/lnanfrPkGmmVG8tvXFRNLdnHY1c0zlPTh5SN7yy5kvrRlkl+J0HwRjeJ7rxrh8foM7APe5ZF0ak4ycsfdkCXsbEQeegCBCwwoNFp9hAaP0LF+Mob9s+ASD3XV4JMbQYUW+I7/GD7dgYTW11BMXfnc2Nvrx/yEwYEchAgk8suxn9/Rg5gOJsoIkWgy/wpOJu3tmm6CmMyNJa/id4BGxl1LrW6pt11E5vhoaPCvvag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2zyuX7GS44k1j/89jhil6W6IOkMqYrFsP1t/zvuqWbY=;
 b=ThGijMu/rC5nnTE2IdYmg8qAeYHbQ/eUoadr3sH7rOnwwMvXjZMrUvGwvQoPDDQwRKsdKKb+6xeJlF8oJJOZ8hsDTG5Vve6Ap4N43PBZtlk293Q5qpjYrX6xAJMGJzzsjI+o9HAZLYUnb3rPnJVPVtLzK0pFDFW6TaK8EvJ33LI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6930.eurprd04.prod.outlook.com (52.132.214.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.16; Thu, 5 Mar 2020 11:25:35 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Thu, 5 Mar 2020
 11:25:35 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [PATCH V4 2/2] firmware: arm_scmi: add smc/hvc transport
Thread-Topic: [PATCH V4 2/2] firmware: arm_scmi: add smc/hvc transport
Thread-Index: AQHV8QFMuMBBDfh8hE244PoeMX235qg4QIWAgAAijkCAAAqsUIAAPdoAgAEztyA=
Date: Thu, 5 Mar 2020 11:25:35 +0000
Message-ID: <AM0PR04MB4481B90D03D1F68573B05BE088E20@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1583201219-15839-1-git-send-email-peng.fan@nxp.com>
 <1583201219-15839-3-git-send-email-peng.fan@nxp.com>
 <20200304103954.GA25004@bogus>
 <AM0PR04MB4481A6DB7339C22A848DAFC988E50@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <AM0PR04MB44814B71E92C02956F4BED4588E50@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200304170319.GB44525@bogus>
In-Reply-To: <20200304170319.GB44525@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4d1a6af1-95ac-4dde-10f2-08d7c0f7ecae
x-ms-traffictypediagnostic: AM0PR04MB6930:|AM0PR04MB6930:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6930AA1B451CFAC457AC6FA788E20@AM0PR04MB6930.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03333C607F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(39860400002)(346002)(376002)(136003)(189003)(199004)(64756008)(66946007)(316002)(66556008)(66446008)(54906003)(66476007)(33656002)(478600001)(8676002)(86362001)(81156014)(81166006)(8936002)(76116006)(26005)(2906002)(186003)(44832011)(52536014)(6916009)(5660300002)(55016002)(7696005)(71200400001)(4326008)(6506007)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6930;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +fN6WjvnKEZd/FK4F9D9DB06+QfsEmS/MBMqikj9Zaa3mN18/5nyy+dLjxvsyDEAQKbn464Rl6LEJ0Q+0/q2HiLuY0P1Bmq/cJOpz9kIJqiIl4rT3B1ERc1IrNSqgzjqHspsl400mzpkwQnNsAvOJor737A8gy6BYC8hcqZBNPx3BFYScS+KLFvgJpbTnWY7qqQEH2NugEpcd4gBtayROmjmOJwFekKSl0y9bIFu5hbKq3cj7+I8lvk6O7B8gHs1azF0JdjNPdLUfGs4reY+1SrsGy2gfaFqvBX21njt3CWlrXkibSTGRCIed1oD5FulFuXBHeFVuZ4dNaakpJJb9rG5mhGCvWtzBhVmTbR9PP2Y7bIu0dJlW2fSAhfpPAvra1+stVOpowaMFbm5zM242GDsXuI6Oq9DlJLbd/g4ZLkrCTqFE01r35TDDF560904
x-ms-exchange-antispam-messagedata: 0hIVHkmDmQHnpdgGBikfLjTMd8aqEGQq0uR9Gli4FkC9Pd2Q2nTPo9N3R3SFwk5upOmiiyrkoqPG95BosqHaRvoAMC9XWlOBFiu++FrhakUfDtNHtGWjlF9NPcOBDeDiWv5Kdvu6Swl1t0LCbNx5tw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d1a6af1-95ac-4dde-10f2-08d7c0f7ecae
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2020 11:25:35.5230 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hl9AulB+pKSE1awOq/YP3G2MxDS93Z/GdLmYUeuuXhKvS/le0IKLBYLhisHlq98a+EawYtUgx432XJQDEe6fVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6930
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_032543_121785_FB4E5396 
X-CRM114-Status: GOOD (  26.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

> Subject: Re: [PATCH V4 2/2] firmware: arm_scmi: add smc/hvc transport
> 
> Hi Peng,
> 
> On Wed, Mar 04, 2020 at 02:16:00PM +0000, Peng Fan wrote:
> > > Subject: RE: [PATCH V4 2/2] firmware: arm_scmi: add smc/hvc
> > > transport
> > >
> > > Hi Sudeep,
> > >
> > > > Subject: Re: [PATCH V4 2/2] firmware: arm_scmi: add smc/hvc
> > > > transport
> > > >
> > > > On Tue, Mar 03, 2020 at 10:06:59AM +0800, peng.fan@nxp.com wrote:
> > > > > From: Peng Fan <peng.fan@nxp.com>
> > > > >
> > > > > Take arm,smc-id as the 1st arg, leave the other args as zero for now.
> > > > > There is no Rx, only Tx because of smc/hvc not support Rx.
> > > > >
> > > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > >
> > > > [...]
> > > >
> > > > > +static int smc_send_message(struct scmi_chan_info *cinfo,
> > > > > +			    struct scmi_xfer *xfer)
> > > > > +{
> > > > > +	struct scmi_smc *scmi_info = cinfo->transport_info;
> > > > > +	struct arm_smccc_res res;
> > > > > +
> > > > > +	shmem_tx_prepare(scmi_info->shmem, xfer);
> > > >
> > > > How do we protect another thread/process on another CPU going and
> > > > modifying the same shmem with another request ? We may need notion
> > > > of channel with associated shmem and it is protected with some lock.
> > >
> > > This is valid concern. But I think if shmem is shared bwteen
> > > protocols, the access to shmem should be protected in
> > > drivers/firmware/arm_scmi/driver.c: scmi_do_xfer, because
> > > send_message and fetch_response both touches shmem
> > >
> > > The mailbox transport also has the issue you mentioned, I think.
> 
> No, it doesn't. I hope you realised that now based on your statement below.
> 
> >
> > Ignore my upper comments. How do think the following diff based on
> current patch?
> >
> > If ok, I'll squash it with current patch and send out v5.
> >
> > diff --git a/drivers/firmware/arm_scmi/smc.c
> > b/drivers/firmware/arm_scmi/smc.c index 88f91b68f297..7d770112f339
> > 100644
> > --- a/drivers/firmware/arm_scmi/smc.c
> > +++ b/drivers/firmware/arm_scmi/smc.c
> > @@ -29,6 +29,8 @@ struct scmi_smc {
> >         u32 func_id;
> >  };
> >
> > +static DEFINE_MUTEX(smc_mutex);
> > +
> >  static bool smc_chan_available(struct device *dev, int idx)  {
> >         return true;
> > @@ -99,11 +101,15 @@ static int smc_send_message(struct
> scmi_chan_info *cinfo,
> >         struct scmi_smc *scmi_info = cinfo->transport_info;
> >         struct arm_smccc_res res;
> >
> > +       mutex_lock(&smc_mutex);
> > +
> >         shmem_tx_prepare(scmi_info->shmem, xfer);
> >
> >         arm_smccc_1_1_invoke(scmi_info->func_id, 0, 0, 0, 0, 0, 0, 0,
> &res);
> >         scmi_rx_callback(scmi_info->cinfo,
> > shmem_read_header(scmi_info->shmem));
> >
> > +       mutex_unlock(&smc_mutex);
> > +
> >         return res.a0;
> >  }
> >
> 
> Yes, this may fix the issue. However I would like to know if we need to support
> multiple channels/shared memory simultaneously. It is fair requirement and
> may need some work which should be fine. 

Do you have any suggestions? Currently I have not worked out an good
solution.

Thanks,
Peng.

I just want to make sure we don't
> need anything more from DT or if we need to add more to DT bindings, we
> need to ensure it won't break single channel. I will think about that, but I
> would like to hear from other users of this SMC for SCMI.
> 
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
