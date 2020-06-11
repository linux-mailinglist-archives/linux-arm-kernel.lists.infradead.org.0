Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4D21F633D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 10:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rh5IwiRGJ+VMsK/td1QOxM3er1eR7uWlhc6RWs2a+AE=; b=hu6DSVNjUah+5J
	KVX06RoxU3WgZSa/wRedERW73yiV72Ky+QMs3PvkP7M0pWnIST7bVaxnGKyGmFMWRpovxiCAueGGQ
	gk3THW64hRfheRWdTWYjqYeLTeLsygAjZTJs9YzOB7TRzC7i/IrmK2YPDc3tngJMnYy/TzEPNqefr
	c9j5p4e7IsH/BpV0rdGKXvqy4hVZAs+KrQYUcLnNO6adz5TrjuNHp0QjIyIuljdf6bzhGj7hLtva/
	4yC2Bv7b8gHsX8E5hdpXAMeFDafb0tFQQusAGtjzdCOKTPtZh3MCXw2gvRU+4fTWppR5ZSB5aVAQA
	2cxwvNxY6DMcErxo2jJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjIBm-0002ZD-F6; Thu, 11 Jun 2020 08:03:54 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjIBb-0002XX-Sv; Thu, 11 Jun 2020 08:03:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1591862623; x=1623398623;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NEcL4d2++IVWwGevoKJDGpdw490Go3O3xjp4hCYLbG0=;
 b=Qdxa/Gb4+d8/sbEeHsAO/TSPqHSYaYiCL5k8dx07pbOCtiqatHVv9Edt
 9cwTJ6LvrTmriq4xKcueUtgi2QPFIwXJI7gZUDpunhYIFIcygZTfJ4fDo
 YCNlpbekkjRJuDS7XKZm5G0Lj8FSJgf/0rEPIQD5Lf/10fGJ7rMxvjGkU
 xMwKij2PNvRImXUpWVt01X6h1I/oY1HGBqCbb2Q7YBiAYmP9RAj2/zASb
 JlORo4CzGO+LiX/HGFgpmry+D5SeWTc0drvU8h7d1STvnZ4uDoPeLaJJi
 8qi+K6vmX176DOKi+lC2XRmxuFPbIlkvDxZzq11+3MQov71XLFj+RtbrN g==;
IronPort-SDR: oBIbuDpW/CUFvPlcNDPK257QBt6t1Mpd1sHcuklF4sTmwEy9hX/Vh1P60d7JLY/J7rbi/fzNZq
 A6w5wLBjy9XAi9rFoiklxyHFLjkNf9XovGA6GmWRpXFzfVP/UtmGMzxyEC2DLQ7iORnKTr4+6v
 7Ag+xM7m1GQZHHvuUWhLLebXNi4LbeJrQqum4rfrBwzW3OVY2n4lUaaYaqpAdNF3hlYZLucLCd
 w0DrBRfc7l8XV3Tm+Ux/TGLcExIzvp0oFUPCJGMkuE6B8UWHlJBmgAtK3hXfYIUrr+S5Y2dJZc
 lpU=
X-IronPort-AV: E=Sophos;i="5.73,499,1583164800"; d="scan'208";a="248862632"
Received: from mail-co1nam11lp2173.outbound.protection.outlook.com (HELO
 NAM11-CO1-obe.outbound.protection.outlook.com) ([104.47.56.173])
 by ob1.hgst.iphmx.com with ESMTP; 11 Jun 2020 16:03:36 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aPrBssdPNzQ95ycyxwWgs0ervQYM/dt63xiSdZ6Wx110BAEunXO+iJzgV1RysrCyGy8UpY6dPwqRdqlaYpt+E/yU8NtMSijwvkeHgHNFpHXV3h6gH3ivb33bXBZzr1eREu/1lfjaKKCK4SGyMLv/bDxPG6HV9kzSx8zpWF641jKDsogf/77BQNZIpEByN1GVZyI47e4itqq4wjB4yEaaZRaMLVkyUdXUaWY+yXWOu3xvmzErNVetm9Ad7A111eDoEiuWxrhDvNUo3shoph9RA073SHhYiwVD0A57wFnx8/OfTEHIzZ8b5RXTHNXFDw6NF4KaxL99yLb+7pqwJlkbXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZCRSvKap+8i7/2s1GuRnKGGMjkRTojG3JltGvtVwqfo=;
 b=a1fLfDMwFcbezGf1N+X5qTUOzo1biTZJBvsQsd7YngZlpIQKBHHIY7ylQuZcTLtZbaUXNRLz8fmYOgG9ze1b28x1vtYVzlLknFM8EFbWQTudJmi7WiwuwsGlau+GfonsmetPsRiHmuA2p0E0gLZSpW6QjCuI68EXwnvR5ytl6a1LtCJnUhri2djb6QMLITnBqYEOlS3KmsQOklBKaecSY0CrnjsqVbAMmmaSMiqCX8YXQwww3vozsssX7X06qkvd+9ig/jCgSaHD/gCPYz28Baj/VrvWn+5fSH2AfKIWwk2qZFMeyPOF5rCsEQl+L/Isukcr/Ut1m3JREhmID8RTpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZCRSvKap+8i7/2s1GuRnKGGMjkRTojG3JltGvtVwqfo=;
 b=jYGlDYkhdI2mAWWgb/kp6MWVKzcgxZg9JFJouz2/CFC30ODKYda/LOGj4TGbMD6S+U14YT/Rh/EVCox4MaZuJB6LMSj/p2orcohQF51Dds2JeWrPvJGkFPCQ1CDdmhBK8FRawnMYw08ryOf97YTQkaejNHFYwf89zXoZeaVRe3U=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB5311.namprd04.prod.outlook.com (2603:10b6:805:104::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Thu, 11 Jun
 2020 08:03:35 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288%6]) with mapi id 15.20.3088.018; Thu, 11 Jun 2020
 08:03:35 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Subject: RE: [PATCH v4] scsi: ufs: Fix imprecise load calculation in devfreq
 window
Thread-Topic: [PATCH v4] scsi: ufs: Fix imprecise load calculation in devfreq
 window
Thread-Index: AQHWP7Al3AIqrrCrYk65auU9x8ZVS6jTDYNg
Date: Thu, 11 Jun 2020 08:03:35 +0000
Message-ID: <SN6PR04MB46405CE4B375BA3134D64A99FC800@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200611052109.22700-1-stanley.chu@mediatek.com>
In-Reply-To: <20200611052109.22700-1-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a6047aa5-633d-4494-48d9-08d80dddf103
x-ms-traffictypediagnostic: SN6PR04MB5311:
x-microsoft-antispam-prvs: <SN6PR04MB53117BDAF04D0CB954985DC9FC800@SN6PR04MB5311.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0431F981D8
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rN5IqtLpBkt0pgDk25m8p18v4YrTfc+riKmn92B/aYyJBlloEu5LMzvF5AcdMBFKVYrTbhyfUw1zesqrNa9gDIlmZZXq2FRQo8gQTI23TI7kv+sJQmLrGBEFxxpV2bSyoEE+Il47AS+/Bpyc+I0RacH9+w3D130MZ62R8oqM1g2hrcRV9nPOfNS2SLaMWj+a7GCJzHRUuSQhmsEBebPiWxogRCTLZbpT0B4zumS0jyDsi7rDoz180aEXx/73zfAskxSrBZFcm8sSy9A6nHxPjPx1uIkrnjwhTku3Q9euVIRNLG2EtWbCsV/Wdw+rvGwFonWvDz/t/zeNe/PLBYaV+Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(136003)(39860400002)(396003)(366004)(52536014)(478600001)(110136005)(4326008)(7416002)(7696005)(33656002)(2906002)(54906003)(316002)(71200400001)(5660300002)(8936002)(64756008)(8676002)(55016002)(66946007)(9686003)(66556008)(6506007)(66476007)(26005)(186003)(66446008)(86362001)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: rVzxia82fibGJAjOYG/xi560AXLEfJlhClKlpmqZP2EQJWhP9apPWLKAqmVQSCGcRMvFmJyeowVIFv8vNkqy9C2zcHE0EB3qeaz14OrBcd80LsJ9wYKIHG0nFI9Tqmxyx90SANlj1+kaNksZpRQzER0HoQZ3xbxsQb73HChaiqSlh5++0GR6Wm8bGecQ2oHNPsz2Hq0TX95p0Rxay82eHdm2Rk5tGYyEqqvM/mH1Wt97IcXwho8jZ0fndw/b/syjut6PZFJc10OrcGdFULtXm/wZhZyFyPYdEczeEJjg1iGWLRq4FUTuMz9l/iq5muN6Usu6a6SzVbT5c3hO98sGvMhJmhB52fK1kAySjefzCqZJw21JIWsIlL5b+VoVKMIywSe3NmkTEO7gOk26tMnrdpw01UrrauVi1cEfcQtnvu88hy5zjh9BvgfxakOPnHKzuHP1hzY5xHMjkpa9FaHe0WcDHYEn6e2Hvq40RZcv5t8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6047aa5-633d-4494-48d9-08d80dddf103
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2020 08:03:35.4603 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IUE6UhcLjP+AbV20WkuXLglIM+yBjLWwPzMqOln4Pp7tT4sru9B8C9NspmroWIQfggCF0vCzGj3qKpRHlGSA6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5311
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_010344_001173_7F90405B 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "bvanassche@acm.org" <bvanassche@acm.org>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "cc.chou@mediatek.com" <cc.chou@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "chaotian.jing@mediatek.com" <chaotian.jing@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> 
> The UFS load calculation is based on "total_time" and "busy_time" in a
> devfreq window. However, the source of time is different for both
> parameters: "busy_time" is assigned from "jiffies" thus has different
> accuracy from "total_time" which is assigned from ktime_get().
> 
> Besides, the time of window boundary is not exactly the same as
> the starting busy time in this window if UFS is actually busy
> in the beginning of the window. A similar accuracy error may also
> happen for the end of busy time in current window.
> 
> To guarantee the precision of load calculation, we need to
> 
> 1. Align time accuracy of both devfreq_dev_status.total_time and
>    devfreq_dev_status.busy_time. For example, use "ktime_get()"
>    directly.
> 
> 2. Align below timelines,
>    - The beginning time of devfreq windows
>    - The beginning of busy time in a new window
>    - The end of busy time in the current window
> 
> Fixes: a3cd5ec55f6c ("scsi: ufs: add load based scaling of UFS gear")
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>

Just a small nit.

> -       stat->total_time = jiffies_to_usecs((long)jiffies -
> -                               (long)scaling->window_start_t);
> +       stat->total_time = ktime_to_us(curr_t) - scaling->window_start_t;
ktime_sub ?

Thanks,
Avri

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
