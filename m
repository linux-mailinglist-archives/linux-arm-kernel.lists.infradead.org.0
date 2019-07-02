Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E9A5C9E6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 09:23:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sEXp6TCf4wyKjhIOsL6u22Wuw5F7Tf1Ui1rdWJPwKAg=; b=TQ9N/g+7o8I+32
	7FkKFwW4v61VKgxEajptcg1ffvSDMRSJ3Cf2M1bcK5gOUfG8pHtFtph6knhz13LzQKMl600FF2Otk
	hJD/Sn8TD5dk280mnt06sgR//QePlePRw8brVxCzSFLGbm2RclclB5iGRtBL+NWUg2HSMiR4g20di
	p2Y9aLRR2TBtuySQE73jwZ2sLoRqbR8NLUeqF45qdIb5vPi+cKbnwCSu6TYwZ7h+0/nA3Tt5A/+20
	mSXhYzKkwBPJyVf9G+OgjBKwmSSNegsEYcfll4MLt/07mSU2hOnlNwIDPjpw6HzyKhFKb9ZuznR4C
	2e787OQCclyVcJgGdx1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiD8X-00005f-NS; Tue, 02 Jul 2019 07:23:33 +0000
Received: from mail-he1eur04on0629.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::629]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiD8K-00005D-7V
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 07:23:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4phgZ0oXJW3NebKtTOHR7O8YFRECprhDvSWrn6tFXOE=;
 b=bT3Jpw+fo80aWn1reu6UV5SziZkpvhMAeT2sRJX9YOAR7RvF9kG8cYMIkXEmtfJCVuOduedqKjEMGfiUigLjxfIjjxi5Txdt/RV+BYMK4hdd+b4TX5hpp5xweiKc/m8gpZTjxvczfy5gwOqURRpe2sDnYFTJEwC+g6igzm1plMA=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3818.eurprd04.prod.outlook.com (52.134.71.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Tue, 2 Jul 2019 07:23:16 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 07:23:16 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: RE: [PATCH] soc: imx-scu: Add SoC UID(unique identifier) support
Thread-Topic: [PATCH] soc: imx-scu: Add SoC UID(unique identifier) support
Thread-Index: AQHVK+2BIBe0XayoFkyLTDr8gJYgQqat4TYAgADJtNCAAGSDAIAABGlggAfW5ACAAAm1EA==
Date: Tue, 2 Jul 2019 07:23:16 +0000
Message-ID: <DB3PR0402MB39160FC8EA2B5BAC56375D99F5F80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190626070706.24930-1-Anson.Huang@nxp.com>
 <CAEnQRZBsT=KY3-Gk8p1byJOqx1_y_EX-KqiBs6WnroWkT5oe_Q@mail.gmail.com>
 <DB3PR0402MB3916A4093CFB363B51523AA7F5FD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAEnQRZDzFBzgwugaK-CihQNaa=1SPPNsKm6QKOh9LqWACeFGTg@mail.gmail.com>
 <DB3PR0402MB3916DFE339C802871F18F9ABF5FD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190702064218.25vzkxds3bjfzy3m@pengutronix.de>
In-Reply-To: <20190702064218.25vzkxds3bjfzy3m@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: deaf0fc2-a521-4fd5-c140-08d6febe267b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3818; 
x-ms-traffictypediagnostic: DB3PR0402MB3818:
x-microsoft-antispam-prvs: <DB3PR0402MB3818FDB69D3B2E2CDBB95B31F5F80@DB3PR0402MB3818.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(376002)(396003)(366004)(136003)(199004)(189003)(74316002)(14444005)(11346002)(478600001)(476003)(256004)(66066001)(76116006)(2906002)(52536014)(7736002)(33656002)(446003)(86362001)(66446008)(64756008)(66946007)(73956011)(305945005)(68736007)(66556008)(44832011)(486006)(76176011)(5660300002)(6116002)(6916009)(3846002)(102836004)(53936002)(8676002)(54906003)(55016002)(9686003)(7696005)(14454004)(316002)(6436002)(6506007)(4326008)(71200400001)(26005)(25786009)(99286004)(71190400001)(6246003)(53546011)(229853002)(66476007)(81166006)(8936002)(186003)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3818;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: U9OQXpWLJclApDN34zv1Ax9O+CRdC2uON42pgE9JlxZ/wBSgPlKLWB1gaftm2R28c5H7i9SGKhY9lNRqDnm/hmFImQQI9S7vCtU2thDHv+U0V+arqgCZPSekoLKBDKQnYrKE0vFzoBJcCTBbDkduUfgDmMbksWq/TcwiI5qnZPRLMxaSR9KpQY5m2Lfr9qcqh3AtcqzKbyeUl69/WMOAy7AH2fSfaT1g0nGv1X/6ZTRcYw/agKtXqqH1roio4sg6pQCTfvAD83IWMWPwn12VH+M6hj/FbJYVqQfkn423TP9v2PLPw4p4amdWyJ6mcn9qPuvle3lAUnbeGwsXde9i3tYC3C1ifmQ+u2CxNX3sqa/4d4GsdbApePCuNsGm5m1jaSIIaDyqo0Bjc1nuGKtNE3MAZSp0JI4/yjdU9EpDYqA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: deaf0fc2-a521-4fd5-c140-08d6febe267b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 07:23:16.1020 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3818
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_002320_276130_255AFCE8 
X-CRM114-Status: GOOD (  30.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:629 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Daniel Baluta <daniel.baluta@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Abel Vesa <abel.vesa@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Marco

> Hi Anson,
> 
> On 19-06-27 07:01, Anson Huang wrote:
> > Hi, Daniel
> >
> > > On Thu, Jun 27, 2019 at 3:48 AM Anson Huang <anson.huang@nxp.com>
> > > wrote:
> > > >
> > > > Hi, Daniel
> > > >
> > > > > On Wed, Jun 26, 2019 at 10:06 AM <Anson.Huang@nxp.com> wrote:
> > > > > >
> > > > > > From: Anson Huang <Anson.Huang@nxp.com>
> > > > > >
> > > > > > Add i.MX SCU SoC's UID(unique identifier) support, user can
> > > > > > read it from sysfs:
> > > > > >
> > > > > > root@imx8qxpmek:~# cat /sys/devices/soc0/soc_uid
> > > > > > 7B64280B57AC1898
> > > > > >
> > > > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > > > ---
> > > > > >  drivers/soc/imx/soc-imx-scu.c | 35
> > > > > > +++++++++++++++++++++++++++++++++++
> > > > > >  1 file changed, 35 insertions(+)
> > > > > >
> > > > > > diff --git a/drivers/soc/imx/soc-imx-scu.c
> > > > > > b/drivers/soc/imx/soc-imx-scu.c index 676f612..8d322a1 100644
> > > > > > --- a/drivers/soc/imx/soc-imx-scu.c
> > > > > > +++ b/drivers/soc/imx/soc-imx-scu.c
> > > > > > @@ -27,6 +27,36 @@ struct imx_sc_msg_misc_get_soc_id {
> > > > > >         } data;
> > > > > >  } __packed;
> > > > > >
> > > > > > +struct imx_sc_msg_misc_get_soc_uid {
> > > > > > +       struct imx_sc_rpc_msg hdr;
> > > > > > +       u32 uid_low;
> > > > > > +       u32 uid_high;
> > > > > > +} __packed;
> > > > > > +
> > > > > > +static ssize_t soc_uid_show(struct device *dev,
> > > > > > +                           struct device_attribute *attr,
> > > > > > +char
> > > > > > +*buf) {
> > > > > > +       struct imx_sc_msg_misc_get_soc_uid msg;
> > > > > > +       struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > > > > > +       u64 soc_uid;
> > > > > > +
> > > > > > +       hdr->ver = IMX_SC_RPC_VERSION;
> > > > > > +       hdr->svc = IMX_SC_RPC_SVC_MISC;
> > > > > > +       hdr->func = IMX_SC_MISC_FUNC_UNIQUE_ID;
> > > > > > +       hdr->size = 1;
> > > > > > +
> > > > > > +       /* the return value of SCU FW is in correct, skip
> > > > > > + return value check */
> > > > >
> > > > > Why do you mean by "in correct"?
> > > >
> > > > I made a mistake, it should be "incorrect", the existing SCFW of
> > > > this API returns an error value even this API is successfully
> > > > called, to make it work with current SCFW, I have to skip the
> > > > return value check for this API for now. Will send V2 patch to fix this
> typo.
> > >
> > > Thanks Anson! It makes sense now. It is a little bit sad though
> > > because we won't know when there is a "real" error :).
> > >
> > > Lets update the comment to be more specific:
> > >
> > > /* SCFW FW API always returns an error even the function is
> > > successfully executed, so skip returned value */
> >
> > OK, as for external users, the SCFW formally released has this issue,
> > so for now I have to skip the return value check for this API, once
> > next SCFW release has this issue fixed, I will add a patch to check the return
> value.
> 
> Do you really keep track of that? Please can you add a FIXME: or TODO:
> tag and add the firmware version containing that bug?

Thanks for reminder, I just double checked the SCU FW code, it is actually a mistake, the SCU FW
API of sc_misc_unique_id() is actually a void function, which means it does NOT return anything.
While in our internal kernel tree, we make SCU IPC call to sc_misc_unique_id() with return value
check, and the return value is failure (-5) always. When I clean up the code for upstream, I did NOT notice it.
So the correct comment should be, this API does NOT return anything, no need to check the returned value.
I will fix the comment in next version.

void sc_misc_unique_id(sc_ipc_t ipc, uint32_t *id_l, uint32_t *id_h)

Thanks,
Anson

> 
> Regards,
>   Marco
> 
> > Thanks,
> > Anson.
> > >
> > >
> > > > > > +       imx_scu_call_rpc(soc_ipc_handle, &msg, true);
> > > > > > +
> > > > > > +       soc_uid = msg.uid_high;
> > > > > > +       soc_uid <<= 32;
> > > > > > +       soc_uid |= msg.uid_low;
> > > > > > +
> > > > > > +       return sprintf(buf, "%016llX\n", soc_uid);
> > > > >
> > > > > snprintf?
> > > >
> > > > The snprintf is to avoid buffer overflow, which in this case, I
> > > > don't know the size of "buf", and the value(u64) to be printed is
> > > > with fixed length of 64, so I think sprint is just OK.
> > >
> > > Ok.
> 
> --

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
