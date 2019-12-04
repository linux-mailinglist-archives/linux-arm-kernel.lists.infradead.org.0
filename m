Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB5E1126F9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 10:20:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HkpqdRzg+qtFqg15v/GFvaQ5fgflKV9doU+jLtSEBkk=; b=B872PD4O47BxHR
	nOG/sdLeRpQGiVnumFcOYdVF/3rFwnCH46Fr1oEnl/+mMQlFKfyazQYUCFviuiK5YAZ3xp9xFUgn5
	9d2z+YpxbUwk20ADFJ9kYEgl3ZNwAPAsTJ3Iui0TlcLzTL/9lSGAKc8OSdll9lN99ugoPHxOLmpQ/
	nsjcV3BnAxOGt+JA2aP0Gkz2d+hUxYmGJmuOAQ+XRYNiWIDQgE0NZy5BDyruUvGK1RCcsxRwC3r5h
	G/2TGNoVRNrnN8IiVoZTWPfVghMrWATuzWa3VeT2qzajKWmlrx6UvVzxTxkTm9huFsFc9UgmXYRnZ
	67m9t69pKUg5HZv+Bh0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQpT-0003as-Tr; Wed, 04 Dec 2019 09:20:15 +0000
Received: from mail-eopbgr20073.outbound.protection.outlook.com ([40.107.2.73]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQpI-0003Xg-OL
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 09:20:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ellcuqNu/Jy7Eaav6mjOgR6dVMucSadJUblpUKdT84Se1flGGF/JYlCgCBLHRoJPAvIUq/92/FLjmkkrBjFaR3+oKCkn5yCkuQmJWks4wZhanGN2lAT7hMckAUKj0j4ZGupdwxKPNZdPvWzVE4x1AYsg7jh3f+P2M09y2CmhNPYe7q1mq9MFoQXWjOWmcSvfZMTARvEkFCKfAkknBJrzp9fBAYL/6MJOd/rdqmrUR/WjA3/SRx5Pwv5lK/qLQy5irWggkfgKvFaCyH3nEjfHFN/FfaBHzl1mJnNGvAHIzirJpzXKLnGZD/fG+zdMxnRVhg/gQ+J6g9ZEobvhTGlXAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qZVyHOgk7TYJe2eRsgGmRu9EdrfHo3xF1bFy1m0FNtU=;
 b=GfzxvPKZ22KM5OInCZLJV3gU+V/VRsT/6Zq2OylRtYxpZKkGeEIJpBWAwlDROefWBpshFYwvWPnlNXr2nCPIfIQ2WKqNDhGAbaGxbVTfvTLG+wkRav90HnvnMBBoTgL+TzCuNqszPGfO8zUK3+zw5PnTI14/22cJMc+OXVrLpnIVZEuq0doFTJ+cbcGTyI70mxmsAGCobWAgXwyG2Mr05xMuAt3pHOmtlfSSkgbQjhORxwojLE33JBa2TkTnhW2judg/vXG0/L6+tjjPwodopFmkTCcKzkAeF24RhLf0h56+DAR40SMM14r3/ssT3t9YdpgsBrCbTN3bLWUqgzkn9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qZVyHOgk7TYJe2eRsgGmRu9EdrfHo3xF1bFy1m0FNtU=;
 b=ji6VCDz9QlNDv1Pf3/2Gg1AQ/owNit8VgByAmu58rbDCRW89FB+gHXDgAob+qiCIFwFUaLMXd7uN5W/JfVPSs4ThzG8Y4iouRBDs8xecl5ksXrWwfLOjmyOfkLvvXsruwQU810i94cDzgIwlwp/mDDGGanBOJIF3MtbmzOhzzPI=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6350.eurprd04.prod.outlook.com (20.179.234.91) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18; Wed, 4 Dec 2019 09:19:59 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::100:f42b:82a1:68c2]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::100:f42b:82a1:68c2%7]) with mapi id 15.20.2495.014; Wed, 4 Dec 2019
 09:19:59 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Philipp Puschmann <philipp.puschmann@emlix.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v5 1/3] dmaengine: imx-sdma: fix buffer ownership
Thread-Topic: [PATCH v5 1/3] dmaengine: imx-sdma: fix buffer ownership
Thread-Index: AQHVchby6WsIv+QhqUqHYVdym6wSTaeqHbhA
Date: Wed, 4 Dec 2019 09:19:59 +0000
Message-ID: <VE1PR04MB6638A9E882D40FB7F8CB7F14895D0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20190923135808.815-1-philipp.puschmann@emlix.com>
 <20190923135808.815-2-philipp.puschmann@emlix.com>
In-Reply-To: <20190923135808.815-2-philipp.puschmann@emlix.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f160f391-13ae-403e-f335-08d7789b22c9
x-ms-traffictypediagnostic: VE1PR04MB6350:|VE1PR04MB6350:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB63509C5B616A63AE92B97C9B895D0@VE1PR04MB6350.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(396003)(39860400002)(376002)(346002)(54534003)(189003)(199004)(86362001)(4001150100001)(6506007)(8936002)(7736002)(81166006)(76116006)(2906002)(66446008)(9686003)(71190400001)(6116002)(71200400001)(33656002)(478600001)(5660300002)(305945005)(52536014)(99286004)(14454004)(26005)(2501003)(7696005)(3846002)(81156014)(74316002)(76176011)(102836004)(14444005)(11346002)(66946007)(66556008)(8676002)(186003)(229853002)(7416002)(256004)(446003)(25786009)(4326008)(110136005)(54906003)(64756008)(6246003)(316002)(66476007)(6436002)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6350;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DqRbV/VNwT0dJeGLtRISVBiy2xibEFS8vrKif1RMiP6FQodk9R1wiFNgkmNL8uj7bPb02snlETBZEg0wmf0Ezva80CTwKcbxI0OaXY2VsmGLmrcGik/1EcivKqRMZ+JBP4jesXnXOZtD9HTO8SddcMsmeOQOrfmvH8MscXa6hdkb3B88LkAioF+SDVrDZ7y6RTlVmwG5vlL0sjZ6LXKapLlbSsE1/H1TCrkm5fAJjeVKnjIC3l2YpsWWAhNTA8jtilgycnrqRts01qtOkUqFLNH5Fji540q+oHySFYwokX/8Q+KQJBlPUGInahSNCbNHPBnjRgUyk72XCTxH2CpyMpqFAOW+Obekkzt/6Cw9gohfEEi8vuIUxP3a6K50ScTHav261orUMyZ9mkh+wiN3ZJv/pFoI3MB4M5eAD3INVTfN6QlFr0djufPO3lM1wFtYVa/Ym3fgQ5Pal5ZTZIlwqoUvbPOyFRBhgNeCNxXjG86a70Q99vTlL8KB+QYeNpES
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f160f391-13ae-403e-f335-08d7789b22c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2019 09:19:59.3749 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PL+N9ws3Zt9VOmqrwTRm7mkdqaM3Whjr79+TdTMjCche7qQXX7temTU4G0rwKnX1EjL3dDPLiRmvPN84gpD8iQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6350
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_012004_899722_34218336 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Andy Duan <fugang.duan@nxp.com>, "jlu@pengutronix.de" <jlu@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "vkoul@kernel.org" <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-9-23 Philipp Puschmann <philipp.puschmann@emlix.com> wrote:
> BD_DONE flag marks ownership of the buffer. When 1 SDMA owns the buffer,
> when 0 ARM owns it. When processing the buffers in
> sdma_update_channel_loop the ownership of the currently processed buffer
> was set to SDMA again before running the callback function of the buffer and
> while the sdma script may be running in parallel. So there was the possibility to
> get the buffer overwritten by SDMA before it has been processed by kernel
Does this patch need indeed? I don't think any difference here move done flag
before callback or after callback, because callback never care this flag and actually
done flag is setup for next time rather than this time. Basically, this flag should be
set to 1 quickly asap so that sdma could use this bd asap. If delay the flag may cause
sdma channel stop since all BDs consumed. Could you try again your case without
this patch?
> leading to kind of random errors in the upper layers, e.g. bluetooth.
> 
> Fixes: 1ec1e82f2510 ("dmaengine: Add Freescale i.MX SDMA support")
> Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
> ---
> 
> Changelog v5:
>  - no changes
> 
> Changelog v4:
>  - fixed the fixes tag
> 
> Changelog v3:
>  - use correct dma_wmb() instead of dma_wb()
>  - add fixes tag
> 
> Changelog v2:
>  - add dma_wb()
> 
>  drivers/dma/imx-sdma.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c index
> 9ba74ab7e912..b42281604e54 100644
> --- a/drivers/dma/imx-sdma.c
> +++ b/drivers/dma/imx-sdma.c
> @@ -802,7 +802,6 @@ static void sdma_update_channel_loop(struct
> sdma_channel *sdmac)
>  		*/
> 
>  		desc->chn_real_count = bd->mode.count;
> -		bd->mode.status |= BD_DONE;
>  		bd->mode.count = desc->period_len;
>  		desc->buf_ptail = desc->buf_tail;
>  		desc->buf_tail = (desc->buf_tail + 1) % desc->num_bd; @@ -817,6
> +816,9 @@ static void sdma_update_channel_loop(struct sdma_channel
> *sdmac)
>  		dmaengine_desc_get_callback_invoke(&desc->vd.tx, NULL);
>  		spin_lock(&sdmac->vc.lock);
> 
> +		dma_wmb();
> +		bd->mode.status |= BD_DONE;
> +
>  		if (error)
>  			sdmac->status = old_status;
>  	}
> --
> 2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
