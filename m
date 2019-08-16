Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE969001D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 12:38:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V46KeHi6xkXdH8o00QJT1LPotNIWNrDkYZuCgtDw0+I=; b=ZU9/KUk05+MOai
	9E09RxpHTF0d3DxzuHSNiIaQBUUeJncFA+s+kLpXjdUl6oD8q3JhJxcD1i3A8yN4eFS2UojUBEPQe
	rjvZhgLUX2G1ZbrR+SkhEU+aGvS8hiYQnHdZ/p8yzAehwN3GtDVMfHxIyblb4wd6ZH8knXk/OvrLU
	YuyZyB0EELFQqNVdOpJuBAz/kv+dRGicL1mvyYK4xJJOB+OrBA/80sIUQ3NWYYGYafD9UrhT9TVTd
	dsxXs/yrt0asEgsWbWg785odsve/n+1OwBQQygmTq5xvNHV+FGkuX/68lpLDqevAb/Etg/lC1jZki
	e8HcK+3XmXHDRzhB/gLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyZc0-0000XN-22; Fri, 16 Aug 2019 10:37:36 +0000
Received: from mail-eopbgr150088.outbound.protection.outlook.com
 ([40.107.15.88] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyZbT-0000Wg-DC
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 10:37:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YUdhFUog4v1OpGaaAvvCnLuj1+nAhSCRfqW5Vgxn23ZU3knHylRH6E3w4PoxbTCWJAXYHmfjx9pFMIicoQ8truxb4VNaEAhlwz+A2X1aIOzkSG/fvT0tg/xIAVNQcmqpMvKys8ETMOx+bTndC3+H+kbqzq950jvLgd686+BIvXt0Rl4E6U8nCi+bTX98qkcAayzYMuh+ebEoT+3NcmEwCaItQyl2ad+ZwiwtIuNx2J7Mhczu+Cf4aYcSJXEfgohSX6AKCpmipot6NI0yakynmuYoyI8/sr7CUks/k02zT2QAjlwbfCs+e7YxBZEGDl6XJXGLqndVXiTTa2eyGniYNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u6LJlZ0JnW7dUXYTcFvX7tDyU6rxHRWbenOVAhulxAc=;
 b=O3Z0t223wYC2vw0toetbLFyNUL2PmH8IBxVMmP5B2q9yfJGrHaPnNbWlZK4qOiU913UEQcki9dV10ET/+7BmGiT3ZgcVwVvXq2i6MJHvQgV6Ud/wOVzLJQJ43cm//egX2lt6Ie87uYOVry9uc7IJP/jOZTAckB2WaGZV8Ee8tf0lOEKwiPdU/ixOdRSKbhZMT2znn6yCfel1+/ODv84eZmBtsGDiE3WJLg3EDRrM9jRpIbFt1orJvKSzWFUz+g3Htjt2VvvaiG53TTpDzrwB/whmLxvT/sJ/kQLXRT4sobHQ1SRCOzWLpAtJbm7l1TggaEDNfKYniNDEl4FscprHyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u6LJlZ0JnW7dUXYTcFvX7tDyU6rxHRWbenOVAhulxAc=;
 b=c9fmETtYhC3WyzPeLpowDTI7dpPW/PbUVKNtjGFMKDVy+KiNvEAEAjOa5GWwmbX80auJh0MVInIC8TyCmFOQxukwc6EjBYaw6p1eMCBaXk+vkerrSr2urYz2nBlqc9U4qHlazpyHh6J+7aGoZP4GKFoxR8kVYnMcKSeasKzUxow=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3883.eurprd04.prod.outlook.com (52.134.71.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Fri, 16 Aug 2019 10:37:00 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2178.016; Fri, 16 Aug 2019
 10:37:00 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "tglx@linutronix.de"
 <tglx@linutronix.de>, Leonard Crestez <leonard.crestez@nxp.com>, Daniel
 Baluta <daniel.baluta@nxp.com>, Jacky Bai <ping.bai@nxp.com>, Jun Li
 <jun.li@nxp.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Abel
 Vesa <abel.vesa@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>, "angus@akkea.ca"
 <angus@akkea.ca>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V6 4/4] arm64: dts: imx8mm: Enable cpu-idle driver
Thread-Topic: [PATCH V6 4/4] arm64: dts: imx8mm: Enable cpu-idle driver
Thread-Index: AQHVU82SFvIqTYVX002fkrtVdPy2g6b9ix+AgAABRwCAAAd0UA==
Date: Fri, 16 Aug 2019 10:37:00 +0000
Message-ID: <DB3PR0402MB3916E00B69BD67098F1875FBF5AF0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1565915925-21009-1-git-send-email-Anson.Huang@nxp.com>
 <1565915925-21009-4-git-send-email-Anson.Huang@nxp.com>
 <e62d26b9-8c9b-644f-d2b3-485586e07e35@linaro.org>
 <DB3PR0402MB3916E469219C7CC68D55C90AF5AF0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916E469219C7CC68D55C90AF5AF0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 76210fc9-a0db-4f3c-eda3-08d72235aba2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3883; 
x-ms-traffictypediagnostic: DB3PR0402MB3883:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB388326E0D0814CE25CC38124F5AF0@DB3PR0402MB3883.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0131D22242
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(366004)(136003)(376002)(39860400002)(199004)(189003)(316002)(81156014)(81166006)(229853002)(478600001)(55016002)(110136005)(966005)(33656002)(6306002)(4326008)(66066001)(6246003)(8676002)(305945005)(6436002)(74316002)(99286004)(2501003)(7736002)(25786009)(53936002)(476003)(66446008)(2201001)(11346002)(6116002)(256004)(5660300002)(66946007)(9686003)(2906002)(52536014)(66556008)(446003)(44832011)(8936002)(486006)(7416002)(3846002)(186003)(6506007)(102836004)(2940100002)(14454004)(64756008)(66476007)(76116006)(86362001)(71190400001)(7696005)(53546011)(26005)(76176011)(71200400001)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3883;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7clrDBKXyTkFPU3VU0fIzDDJvxjGZc3t5oo0oVQaiy2kyHpb+3wQK90Fk4wSgaXy35wg0MX+tjf3CKVbe7bwTXmaYgB5bcq8vlCFNvGXSlscp9I4pJkWM/HmrJACuGa6q4UQwra+NzNr64Adq89JHPpJxZ4iqkDZAm2koaU8a8fQxcDm5P+Pp9/TlEPkVXLYtCCdw6gdvR2LJLzzInjpSbaItocxuw+ZUTqwl3zBWluHn/PKGdurvneuvrjKv4riCM0jUuxLnh9eDUuAo3F19OqBg/oW1VA53c2WLFD4t7NofSknq8JJT0DIeAdq3BZ2DcKSbw981ZCGjCMCLdDM/jua7ie43Q7xgUaCCgQwGJXk1+WCiqYmqj5ANLocuZFHrkZFs+CEIdp0N0JN8Uhvjdv5vLhSMPjz9dr3fRx+SnY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76210fc9-a0db-4f3c-eda3-08d72235aba2
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2019 10:37:00.2628 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2UnOVPqSd/D9bzT/6vKFsshJq6G7dqj5tA2sJZZx1vUvQcO0KxIxc5HC9FwpczMNfZHVUfPVbcNMXrZr0qKztw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3883
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_033703_456641_102E9984 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> > On 16/08/2019 02:38, Anson Huang wrote:
> > > Enable i.MX8MM cpu-idle using generic ARM cpu-idle driver, 2 states
> > > are supported, details as below:
> > >
> > > root@imx8mmevk:~# cat
> > /sys/devices/system/cpu/cpu0/cpuidle/state0/name
> > > WFI
> > > root@imx8mmevk:~# cat
> > > /sys/devices/system/cpu/cpu0/cpuidle/state0/usage
> > > 3973
> > > root@imx8mmevk:~# cat
> > /sys/devices/system/cpu/cpu0/cpuidle/state1/name
> > > cpu-pd-wait
> > > root@imx8mmevk:~# cat
> > > /sys/devices/system/cpu/cpu0/cpuidle/state1/usage
> > > 6647
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> >
> > Hi Anson,
> >
> > I've applied the patches 1-3 but this one does not apply.
> 
> Thanks.
> 
> >
> > You can either respin it against tip/timers/core and take it through
> > Shawn's tree. If the later, you can add my Acked-by.
> 
> Hi, Shawn
> 	Can you take this patch and add below Acked-by? It should can be
> applied to your tree directly.
> 
> 	Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>

Sorry that I just found this patch can NOT be applied to your for-next tree neither, so
I redo the patch against your for-next tree, so you can just skip this patch series now
(as Daniel already picked the rest 3 patches) and take that patch I just sent, link as below:

https://patchwork.kernel.org/patch/11097471/

Thanks,
Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
