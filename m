Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA71DF44E3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 11:45:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99GtQY2d3zkRjl0GKXNgo2NXhwScqFxp0ZhOVtiBEEE=; b=tH3d6q9Ndf0jQ9
	LGTLAAfq/Q0mALLpc0kIRunIVFbepYJ4LkKAGxA0Af6B6eClbaMmF3CjlAMBp4K5Gh9k46jia2t3f
	d4McVMhJmZFFIS3FkBHeaa8Zr7OITjqmF4DYEi6aENYRZK+W4m08YRc3JebUloBo+9F2xEtoD2u+n
	Meg5QCOr2oGZ7HDtBRlr5bhsZYN9oiJGKQvlHy53495dBAII+pzdytvFvBQoqRnbnPMox0ar+QqQY
	hCsZrwSftluF5WuM37Y7W/Hn21t/UwY+i1VQcOqzTpXhQ7axqG0+2xvJ9W7e2x7QSQymy7i/S/naq
	5NgkqcWQIu8kIfqbEMdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT1lT-0007ER-QP; Fri, 08 Nov 2019 10:45:15 +0000
Received: from mail1.bemta26.messagelabs.com ([85.158.142.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT1l9-0007Dk-Bk
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 10:44:58 +0000
Received: from [85.158.142.201] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-6.bemta.az-b.eu-central-1.aws.symcld.net id 3A/08-20077-F1745CD5;
 Fri, 08 Nov 2019 10:44:47 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA1WTf0wbZRjHeXs/2gLdboWlLw1sSWVmurVQp3j
 EYBYTZrXTuRklcdbtgIM2tkdtSwZjhsEggZEpUjaUpBSQLQNxblQEhG0G6UYZPwJjBXEFOooK
 6NAxcYqid1yZ+t/neb/f557v8+Y9ESK9i8tFdI6NtjCUUYGHovo4dJdy6/NuXXxb4VbytD+Ak
 999M4GTzp5BjPTf2kdO/eoG5PJoiYBsmfFi5NmxYQFZfLlHSP7wuWx3qKa5phloOqp9Qs1suV
 2oaWkqxTW3vV24xtWQr1lq2fKK8A3MwKRm5RzG9L6ZGoH5WlhO9Zk74Dj4VnwShIoAcRaB39/
 sFJwEYra4hsKR1QO84AJw5dTvOFegRC8CF6dKMa6QEqcF0FHjFfLFNID9p9pQrh8nSGjvnV5r
 iSQmAax3/4lyBUKUCWD5gEvIuSKI1+FEZTvgOJJIgYU3yoP8BKzwV+Eco0Qs7K3qWvNLCAr2e
 f4S8OOKABxx+hFOEBMa2Fo5KOSjx8D7BZ+snSOEDE4EnGsrQYKADV1DCM+b4dzMKsb7aegpHA
 f8+U44MBYIsgLWOHqCHMPOKgvyS3CorxFZ93vq3sd4JmFDWTG7pYjlWLjancsfm2HrYhnK86N
 waXY02BoNi2u9CLcLJOYw6CybBeUgrvo/sXneCWs77+E874Dn6haQ6rW72AQ9HwXQWoA2gcRU
 iyFTbzNRBqNSHR+vVKt3KROU6kS1ijqqTFXR2co0mrFZKFZVUUesKmuuKc2YrmJoWwtgn176O
 /jVdlD680+qbhAlEig2S+zQrZNuSM1Kz9VTVv0hS7aRtnaDaJFIASUFe1htk4XOpHMyDEb2Aa
 /LUBSuiJT0JbOyxGqmTFZDJi/1AaWofM5Rj0hRJouh5TJJ3nOsieBM+mzm4SfWf4MRECOPkIC
 QkBBpuJm2mAy2/+vzQCYCighJCJck3MDYHk6aZ0MI2BDx491cCBv1ryQ/LnhtNMXnzi0afspD
 HxweDxy7kNWmMNuRL3fsPThzV7fwQsNA0RmdOJ+pevLKbR1m/eLTlflbD3SuPSOrKa5OSX9U/
 t+LJb4pPJmZTfjqmHfjmx3ai0mZcVuMHUOPnN9/eLAAbW1ktCU3f7l/aLjfcv2xqxWFr2ZXzj
 VenKzb3trUfGHs2Y2Ol52xJ4rc25/Wfv22/L0r9snp3t1pldr9xe82Ldv+QD6wD4zciZ6QNWt
 jZAnm3Poj83XnEn3kjy/6Hb8lVeRRlzKWOnx7w/Ii2gqcYY3LBxYAlnQ+xXQi+UP0LVf8yj1f
 qt6Rob1Rc3nwepTmQcLkM0c/27ANLH18qV2cNKYhFahVT6kfRyxW6h9JkjthgQQAAA==
X-Env-Sender: Adam.Thomson.Opensource@diasemi.com
X-Msg-Ref: server-34.tower-246.messagelabs.com!1573209887!148495!1
X-Originating-IP: [104.47.4.51]
X-SYMC-ESS-Client-Auth: mailfrom-relay-check=pass
X-StarScan-Received: 
X-StarScan-Version: 9.44.22; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 13135 invoked from network); 8 Nov 2019 10:44:47 -0000
Received: from mail-am5eur02lp2051.outbound.protection.outlook.com (HELO
 EUR02-AM5-obe.outbound.protection.outlook.com) (104.47.4.51)
 by server-34.tower-246.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 8 Nov 2019 10:44:47 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KkvNCk5+FUU6ldZuTPKplO2coy/RVEQPADTsWtJWwA1p5yHuMyov+iL4KRKsSC5AGUf7BuWPDpdysOFEuMsj/atw8l5ADxxaWMrlmGuo7t8DmWz8sWOMl9GpFMKG9LRQNJ0mhi4Ux+CcaxC5MH/dPNxcFsWYxkyEZ6RAByaZNlQfWdDLIfMudkit7ecIixlea4B0h+lWavDL94oOSx4FImHTrYAurjFfshAlXN1+A6fshl4cBRKLrcoXsPF0cpp0VYxAmg6Sc5ai7NoLX7PknzGVomlT/rfix+S5nWvEp5IjNYp+qmkiHTwnUz2QSwbm5H+pefRKiCLYoE0PMpnUyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AvEowpLk6PJpD2ueBns2JYLWMCIhuVR7TLwhLtFgmJI=;
 b=kiuGNH+OzauWu+ODXpCJDfAwWT/TUBcK3fg1DfeffJd3cLQf9/lZH09jtlsW8wrWvm22bC40QNW68lp5jGj09DUsl5UncwdqV8hY0KrCqW9sbMVlUiNkOFcvIVszYn3FFv+nCs34EvL4F+eN/A7CY66hWSvV7vDkRL4IfC/zmpwUExgbl3JyA4nxj90BcT40y1qc97mzJMMRS+IIlVJU0IQqwH2VOwcYe2tfxgKL91kyAYM4WZ9S+SPNez10xbipGeKsSCN11dQdSCyf3UNNZENX2XjDtvnvN6BHgCDBR8Kv1BI30El4rU9hPosT/bVTJjn4T1EYrSAU6V6DRWNQmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=diasemi.com; dmarc=pass action=none header.from=diasemi.com;
 dkim=pass header.d=diasemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dialogsemiconductor.onmicrosoft.com;
 s=selector1-dialogsemiconductor-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AvEowpLk6PJpD2ueBns2JYLWMCIhuVR7TLwhLtFgmJI=;
 b=P/q29eDWZDf6Operj9kMaNHq378bXE6SGSezbbkrShoTZqnIEOm6HlWMg2RysD9fIk2c2jWwWNhtHYIkngmLXZzmhbCqhbWMP+cxJZxZm3jtIc3igQqN7DdA1DVuvOujlw8ogUrB53SnboMkLz1V2P1iiDGvcf6FxavXSiUBv0U=
Received: from AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM (10.169.154.136) by
 AM5PR1001MB1058.EURPRD10.PROD.OUTLOOK.COM (10.169.154.145) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.24; Fri, 8 Nov 2019 10:44:46 +0000
Received: from AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1b7:8cda:1411:fb7f]) by AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1b7:8cda:1411:fb7f%8]) with mapi id 15.20.2408.028; Fri, 8 Nov 2019
 10:44:46 +0000
From: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
To: Christoph Fritz <chf.fritz@googlemail.com>, Fabio Estevam
 <festevam@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Shawn Guo
 <shawnguo@kernel.org>
Subject: RE: [PATCH 3/4] dt-bindings: regulator: describe da906x buck
 regulator modes
Thread-Topic: [PATCH 3/4] dt-bindings: regulator: describe da906x buck
 regulator modes
Thread-Index: AQHVlVLo1Frm2UChSEKt5YQUKrDpnqeBF8/A
Date: Fri, 8 Nov 2019 10:44:46 +0000
Message-ID: <AM5PR1001MB0994F0AEC04288CEE2585858807B0@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
References: <1573121050-4728-1-git-send-email-chf.fritz@googlemail.com>
 <1573121050-4728-4-git-send-email-chf.fritz@googlemail.com>
In-Reply-To: <1573121050-4728-4-git-send-email-chf.fritz@googlemail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.225.80.228]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e068bda2-8685-4e27-ea45-08d76438ac10
x-ms-traffictypediagnostic: AM5PR1001MB1058:
x-ms-exchange-sharedmailbox-routingagent-processed: True
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR1001MB1058DD97438A1EBCD109AF7DA77B0@AM5PR1001MB1058.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0215D7173F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(396003)(366004)(136003)(189003)(199004)(55016002)(26005)(7416002)(186003)(110136005)(6246003)(74316002)(7736002)(6116002)(8676002)(229853002)(64756008)(76116006)(66446008)(6436002)(8936002)(486006)(33656002)(305945005)(476003)(2906002)(81156014)(81166006)(102836004)(14454004)(4326008)(86362001)(99286004)(52536014)(9686003)(256004)(66066001)(71200400001)(25786009)(3846002)(71190400001)(5660300002)(66946007)(66476007)(66556008)(7696005)(53546011)(316002)(55236004)(54906003)(76176011)(478600001)(446003)(6506007)(11346002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR1001MB1058;
 H:AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: diasemi.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: o18daoh8eE0SEKH9R+d746G0ET3nFzaM6fn2HcXxrGnGfcZKuYccQVtm9BQyDGZcsDawVqptDIuE1rvSP94ULNjPGSLIalFyOLXfiQfYuepUOBjN/HpX4WldFHRYUpgRm+WyMHQcVy8Pw6Ht6lMIpV8OtJd67gTjUe3Og6vczk1nteQmUMNQftzWMYcTE/SyJGBTwJsgs0nhn3O0oowZ3VdsvkoenD2wt4jOoGcRUBWhhrk8W52NZD2QV2VUFMQyaBkPtK+Cmo063SXVpPKrE5b2efikTNGRr7m7HSCDlQDxuNiF7ckNBW5AqnDGB2+sV7/+T0z0Tf2JT+ZkdYE5fVJ962jjO6ofZD45SW2+GO/Y7w4mT5L4NBgJJLIoF/L7HFygnV2ntCLQHwjJ2OIcrJgSILwlQB9Kd4Oo2GjkykL8gf1TRZk9vWwuTtjEbLta
MIME-Version: 1.0
X-OriginatorOrg: diasemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e068bda2-8685-4e27-ea45-08d76438ac10
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2019 10:44:46.2491 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 511e3c0e-ee96-486e-a2ec-e272ffa37b7c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fNzMAd+5hLjnvaf/xX70mk9tw+gYahKqNvbt8pg8YCT+z+j5McXDCbJVaAqr3/3nkpEnVrTVV4X64hwfuUvikz/ry5tqosGFVQHF/KUkbL0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR1001MB1058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_024457_314012_6BBB7A02 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [85.158.142.117 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [85.158.142.117 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Lee Jones <lee.jones@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Support Opensource <Support.Opensource@diasemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07 November 2019 10:04, Christoph Fritz wrote:

> This patch adds DT description of da906x buck regulator modes.

Just the renames from da906x to da9063 required as per 01 patch comments

> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> ---
>  Documentation/devicetree/bindings/mfd/da9062.txt | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/da9062.txt
> b/Documentation/devicetree/bindings/mfd/da9062.txt
> index edca653..5989411 100644
> --- a/Documentation/devicetree/bindings/mfd/da9062.txt
> +++ b/Documentation/devicetree/bindings/mfd/da9062.txt
> @@ -66,6 +66,9 @@ Sub-nodes:
>    details of individual regulator device can be found in:
>    Documentation/devicetree/bindings/regulator/regulator.txt
> 
> +  regulator-initial-mode may be specified for buck regulators using mode values
> +  from include/dt-bindings/regulator/dlg,da906x-regulator.h.
> +
>  - rtc : This node defines settings required for the Real-Time Clock associated
>    with the DA9062. There are currently no entries in this binding, however
>    compatible = "dlg,da9062-rtc" should be added if a node is created.
> @@ -96,6 +99,7 @@ Example:
>  				regulator-max-microvolt = <1570000>;
>  				regulator-min-microamp = <500000>;
>  				regulator-max-microamp = <2000000>;
> +				regulator-initial-mode =
> <DA906X_BUCK_MODE_SYNC>;
>  				regulator-boot-on;
>  			};
>  			DA9062_LDO1: ldo1 {
> --
> 2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
