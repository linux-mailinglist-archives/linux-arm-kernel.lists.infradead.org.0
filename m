Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF8411819B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 08:56:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=+jX2n1FTS04RPs27cYQ8m/GZmP9+OuT9FOFzfPzrF7U=; b=odlMx1KIcywtxH
	O5ZaPH4x37b1HAUzp2Xqh6IxCJrSAsE/Qam9BCZ0Dfhdr7mvy08in/PDWS0LFAJ+3d6Lj0YJnIJs+
	+Xk33WMK5+BTmwy5Xq+kxGlsV0eE7VsDJs23IckoVKCxXsi+up7UV2vEBQYTlHHxFZ0fW7QmFGMCO
	KW9OIwXQVp/VO1WsPr7LGqjj0qBov0Qc/4ECoOhphHbjU4DNJAbgPeVou8vf9427yRzhQgo3fPcFD
	NP+5qN8hwTIW5Hw/eeIRk6sWqS5SbByhe0+Cr1xqm7EKzib3TL8bJIGZH+fMjmiM2AtkeJL/4jx3n
	othb7sU8YPeTuu3qvoDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieaNg-00020A-5u; Tue, 10 Dec 2019 07:56:28 +0000
Received: from mail-eopbgr140088.outbound.protection.outlook.com
 ([40.107.14.88] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieaNQ-0001zV-Vd
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 07:56:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EGZlOIQTvcO2GvWk/Ag359FIUyhaO/qJh/gF46Z9Y15PAMc73CK+6mjT5WbCMzLJUiUXf+5zIT8lE/UPG7zLW16thF6WADSSTwkOyIF5kopjlXiobeUA0tNVt/+8wVrFPMO3y+SkGQyEAPE/mbmSmV4E7GrG7h1EIx9GitofPG2JTiVO3678gY6rXVT2JkUZMQNe5sMR2tlM9FWTIR7l7Palw/25nLSHzZPooneZKNSGhn9gd/9P5YR3xWCAIhR8EjJ4SfQ9Mgnj3fTQanP4K81ZVVO+8hunJronPfTQpvbxRw5cVgMLwvtvrvEb/gdzUSq6qC0pnNubvsUffWNM+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ivKuD0VO4RjzlVM4+Z4wnDsyPr6leurFbvVLFdmvRXw=;
 b=VXmPCw7CSmP6g1vnHnZbHowmrQVc+BjSi6oCEI4Irkjdo7UWRhjOQlfzVzrIPVhMV3ETkT+3cTsbXfm8dYWwHiCoCFG2No9GZQ2EdBUAOWG7fGdmCrxlXQW6ZipPjSF6aWPOB2bOyLz0hyFMC/Ztyq9QXHRrKcV+LWjL/azaqN+7mn8ma4i0tfNBB6cyAVAlnZK/Amje9URWDMzZ/vYZxgMin3lrmXWtALLwhIS1OCRoVlXIqm3C3/ebGmhi8KrlT8BF764nrYJWum6vWwDTiJdyuXFxUTKI5OCaXQOX/SjsTWdTTwDYFO7iaOTV20YqIEJoxltR30KJPC/SVazQmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ivKuD0VO4RjzlVM4+Z4wnDsyPr6leurFbvVLFdmvRXw=;
 b=mW3sQxHrb1Qj+F7Gaex3qqx0d+KxLnLohNzO6kSwUrEWxv3/2q3rqRZ0cX2Xtt/+KRwmf51xEoIJwY4pjw8lkBrudxdk17O4PFLkC/5XVqSqVTwGZrICWZoTlv9JGmcR8D2VLIQfPKXlTcjwm8Xel3AMRMZPLeeB44JUfq3+8Do=
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com (52.134.3.153) by
 VI1PR0402MB2814.eurprd04.prod.outlook.com (10.172.255.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.14; Tue, 10 Dec 2019 07:56:09 +0000
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::64c8:fba:99e8:5ec4]) by VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::64c8:fba:99e8:5ec4%6]) with mapi id 15.20.2516.018; Tue, 10 Dec 2019
 07:56:09 +0000
From: Horia Geanta <horia.geanta@nxp.com>
To: Adam Ford <aford173@gmail.com>, Schrempf Frieder
 <frieder.schrempf@kontron.de>
Subject: Re: [PATCH 1/2] crypto: caam: Change the i.MX8MQ check support all
 i.MX8M variants
Thread-Topic: [PATCH 1/2] crypto: caam: Change the i.MX8MQ check support all
 i.MX8M variants
Thread-Index: AQHVp9DLhD4655goh0SoqF8mEBltdw==
Date: Tue, 10 Dec 2019 07:56:09 +0000
Message-ID: <VI1PR0402MB34857B8C5560B912B34674AB985B0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
References: <20191130225153.30111-1-aford173@gmail.com>
 <e8e429dd-4508-9835-fd01-825d2de8871e@kontron.de>
 <CAHCN7xLkV1WC=9ACj1Mi8+uE8kRCEjCEe+Y36pXwkNeNrgrNVg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=horia.geanta@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7de3bd68-2464-4c47-6a37-08d77d466b59
x-ms-traffictypediagnostic: VI1PR0402MB2814:|VI1PR0402MB2814:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB281482D0A7ED7FD6E10208A8985B0@VI1PR0402MB2814.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:332;
x-forefront-prvs: 02475B2A01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(376002)(39860400002)(396003)(366004)(51444003)(189003)(199004)(8936002)(8676002)(5660300002)(6506007)(81166006)(81156014)(55016002)(305945005)(33656002)(52536014)(7416002)(66556008)(64756008)(66476007)(229853002)(7696005)(186003)(66446008)(91956017)(2906002)(54906003)(71200400001)(66946007)(4326008)(86362001)(71190400001)(478600001)(53546011)(9686003)(26005)(76116006)(316002)(110136005)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2814;
 H:VI1PR0402MB3485.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mjwf0v/HF7m5b76gwOZIf4LJfctT4j0II6ipyQf07G/rg/mVl6HyEgfg+sMtrrYH7uT2cl43DWKjgoVvZF0cBI2X+oMj7HAUA+jU2drRmYIHNQdKffJuH6vzVxFW5khcQJ9o8Kqokz1rCWtY2vrlxIP8bS7oHfe+hbWwi9WeFCSaEtmd8ZegZOxsOOi5sxOMGbsCJk9l6jFo+dvGnlQhdDhryV4h49sMEcgl3EiY7XxcW6DQNFuRk6wkbHKWIDCQjZzSKwqrcfnzjdLsSsEHth1CSI8iBCJItqh3t4w1qhFV599SOrIP+Oc4FwNRftpiIlLfJclagjESGYNbiiiuYoOPTS9kz/I1vMPpCEvv09f/8UMCmkuEiZi4gG9Pv9Dddw7TQ5ysr3uCkEUaE/H94iON3cp4rw1FHBc83G/VyeRMsUOW8Thec+QEZx4o3n+JPsQCqPRGpnNk0OpDM7F94kibHedU9OjIF796d/FlVvh7X4DCpAxtA1JUbqeWJO7r
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7de3bd68-2464-4c47-6a37-08d77d466b59
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2019 07:56:09.6700 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gbJcbrGvW2+1DRqLoh1k2zYbBPPOX7SXXBEu4Fza2IKT0B1S1AFou7RbOI72rpg02kkqp1TCgGe2xEEciB2PMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2814
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_235613_022646_CB798794 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.88 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/6/2019 9:55 PM, Adam Ford wrote:
> On Wed, Dec 4, 2019 at 5:38 AM Schrempf Frieder
> <frieder.schrempf@kontron.de> wrote:
>>
>> Hi Adam,
>>
>> On 30.11.19 23:51, Adam Ford wrote:
>>> The i.MX8M Mini uses the same crypto engine as the i.MX8MQ, but
>>> the driver is restricting the check to just the i.MX8MQ.
>>>
>>> This patch lets the driver support all i.MX8M Variants if enabled.
>>>
>>> Signed-off-by: Adam Ford <aford173@gmail.com>
>>
>> What about the following lines in run_descriptor_deco0()? Does this
>> condition also apply to i.MX8MM?
> 
> I think that's a question for NXP.  I am not seeing that in the NXP
> Linux Release, and I don't have an 8MQ to compare.
> 
IIRC the i.MX BSP releases use the JRI for initializing the RNG,
and not the DECO register interface.

> I was able to get the driver working on the i.MXMM with the patch.
> 
You are probably using a newer U-boot, which includes
commit dfaec76029f2 ("crypto/fsl: instantiate all rng state handles")

> NXP  Team,
> 
> Do you have any opinions on this?
> 
Since current U-boot initializes both RNG state handles, practically
instantiate_rng() is a no-op.

A simple experiment is to "lie" about the state_handle_mask, to exercise
the DECO acquire code (or, as mentioned above, to run with an older U-boot):

@@ -268,12 +272,19 @@ static int instantiate_rng(struct device *ctrldev, int state_handle_mask,
        struct caam_ctrl __iomem *ctrl;
        u32 *desc, status = 0, rdsta_val;
        int ret = 0, sh_idx;
+       static int force_init = 1;

        ctrl = (struct caam_ctrl __iomem *)ctrlpriv->ctrl;
        desc = kmalloc(CAAM_CMD_SZ * 7, GFP_KERNEL);
        if (!desc)
                return -ENOMEM;

+       if (force_init && (state_handle_mask == 0x3)) {
+               dev_err(ctrldev, "Forcing reinit of RNG state handle 0!\n");
+               force_init = 0;
+               state_handle_mask = 0x2;
+       }
+
        for (sh_idx = 0; sh_idx < RNG4_MAX_HANDLES; sh_idx++) {
                /*
                 * If the corresponding bit is set, this state handle

In this case boot log confirms the DECO cannot be acquired:
[    2.137101] caam 30900000.crypto: Forcing reinit of RNG state handle 0!
[    2.172293] caam 30900000.crypto: failed to acquire DECO 0
[    2.177786] caam 30900000.crypto: failed to instantiate RNG

To sum up, writing to DECORSR is mandatory.

Horia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
