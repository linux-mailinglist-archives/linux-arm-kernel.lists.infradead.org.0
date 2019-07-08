Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC0662A02
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 21:58:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kBZFBayK69VyEV1r3e8VrwTb+L74td0djKSRuDQ+mjM=; b=hJCE27bpDMVRof
	jG3LCpo2TaSMPiEW4mVXAIM9T5uUSDnvnu2xe2mV+FPsXaa79/mxbTfkiWUmdS9SYsIGzsDpbUH1T
	r1mmb4/fksliup73OU+gmkjJnV6MkgTdmQsYuhXeM9JYV6cK/zc5AvxxCAk5mCpJKahev3eWQ2PrB
	ebNexkXnChpU9LpOWXtp0owERyzTOUeAmtxZLUL3UovQPOZjEoZgjKdSAXErUv+zdznWu/LpjK7Ua
	DvywbnF6wRqZh5kWo0ecBFKMhQLP+gwsb5v6qOJk+fjrlI/r7fsKOe8nE/rfBTYIamKeXs6pcSt4V
	+jNl5VxfrfvmiFUe9aKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkZmD-0001r9-Fi; Mon, 08 Jul 2019 19:58:17 +0000
Received: from mail-eopbgr70095.outbound.protection.outlook.com ([40.107.7.95]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkZm2-0001po-Qt
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 19:58:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=do5tchcgQqrhAd0gndHcHpjuoKMSQNn75mRRQmTtDQ8=;
 b=dndaIGp6Mi5szT+wfR/nq9Nz1e/AcdwlVzPpeRjqcxkTjur/11JB6Eega7fUBMJQq6MxKFJCg4pXj35bOL3pDyKopoF3x1it0VWt/52nNV29NwYWch88oijVmza7Sbb+ntJ++n94fqcQh/ojMX1YBUlnYaN2VFWQT9XZVui1pAY=
Received: from AM6PR0202MB3432.eurprd02.prod.outlook.com (52.133.10.143) by
 AM6PR0202MB3558.eurprd02.prod.outlook.com (52.133.11.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.17; Mon, 8 Jul 2019 19:58:00 +0000
Received: from AM6PR0202MB3432.eurprd02.prod.outlook.com
 ([fe80::a5ae:7e54:4baf:5614]) by AM6PR0202MB3432.eurprd02.prod.outlook.com
 ([fe80::a5ae:7e54:4baf:5614%5]) with mapi id 15.20.2052.020; Mon, 8 Jul 2019
 19:58:00 +0000
From: Peter Rosin <peda@axentia.se>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>, I2C <linux-i2c@vger.kernel.org>, 
 linux-media <linux-media@vger.kernel.org>,
 GPIO <linux-gpio@vger.kernel.org>
Subject: Re: [RFC] SW connection between DVB Transport Stream demuxer and
 I2C-based frontend
Thread-Topic: [RFC] SW connection between DVB Transport Stream demuxer and
 I2C-based frontend
Thread-Index: AQHVNX2EygZRmX9hhEelw/IUg3pXeqbBI+SA
Date: Mon, 8 Jul 2019 19:58:00 +0000
Message-ID: <7d47a978-5307-a2c8-acc2-f29ce7567bd5@axentia.se>
References: <5e35b4fb-646d-6428-f372-ee47d7352cd6@free.fr>
In-Reply-To: <5e35b4fb-646d-6428-f372-ee47d7352cd6@free.fr>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
x-originating-ip: [213.112.138.100]
x-clientproxiedby: HE1PR0401CA0072.eurprd04.prod.outlook.com
 (2603:10a6:3:19::40) To AM6PR0202MB3432.eurprd02.prod.outlook.com
 (2603:10a6:209:25::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b2778f7e-2872-4815-6e73-08d703de9454
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM6PR0202MB3558; 
x-ms-traffictypediagnostic: AM6PR0202MB3558:
x-microsoft-antispam-prvs: <AM6PR0202MB3558DE72F62B6DEA541078D1BCF60@AM6PR0202MB3558.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00922518D8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39830400003)(396003)(366004)(346002)(376002)(136003)(53754006)(51444003)(199004)(189003)(53546011)(71190400001)(386003)(71200400001)(52116002)(99286004)(6246003)(68736007)(14454004)(2906002)(76176011)(6506007)(66066001)(65956001)(65806001)(31686004)(486006)(7736002)(64126003)(256004)(446003)(476003)(305945005)(4326008)(54906003)(110136005)(25786009)(11346002)(2616005)(74482002)(3846002)(36756003)(102836004)(316002)(229853002)(8676002)(53936002)(26005)(73956011)(81156014)(7416002)(65826007)(66946007)(66476007)(66556008)(64756008)(66446008)(86362001)(6486002)(6512007)(5660300002)(186003)(6436002)(81166006)(6116002)(58126008)(31696002)(8936002)(508600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR0202MB3558;
 H:AM6PR0202MB3432.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: evuHRH3FobKhca0Q9TKfyXlml0ayD5H+0l+dQxRXovpjovlXU13rHGYnw05bWAmKGbMxMOBQ6X7Nbpr2gr3k3O5bkcFp7vVwMEtx3FrqdSpEKbduIucP8KTrAxZjkdeHBP/heChXZqVl9cQjkeLZgW3FI6Z2z+Yvkt33/FhLyZmCQr1wxSAEXfd/+TbNcThfZCCOqX7JG5u+y6SbSW/Eds2y4F+2fuijlH9QFOVO+6AEOhnkhiwiLR+xHePnr+kNWrbM0vaqw+0Y25U+WZbnZfvn81PUKyLKJLZB2aotNz1zC8nBjpezBukC4N+w9y1s0Qdq7lGeSUFfgN3FYPAM5Etd6MPMZ9Oenx051cvsDjlrTK+jITu5XcKqe45BQ4eujQgfAJtMwevrLayqvzsYgEVrAY6PTTtHUt+i7/Cq1+A=
Content-ID: <244EAA9C120ED040B960C66140CF270D@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: b2778f7e-2872-4815-6e73-08d703de9454
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2019 19:58:00.3957 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peda@axentia.se
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0202MB3558
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_125807_077682_AB6F1421 
X-CRM114-Status: GOOD (  21.08  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.95 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: axentia.se]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: axentia.se]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peter Korsgaard <peter@korsgaard.com>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, Wolfram Sang <wsa@the-dreams.de>,
 Linus Walleij <linus.walleij@linaro.org>, Brad Love <brad@nextdimension.cc>,
 =?utf-8?B?Sm9uYXRoYW4gTmV1c2Now6RmZXI=?= <j.neuschaefer@gmx.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Antti Palosaari <crope@iki.fi>,
 Simon Horman <horms+renesas@verge.net.au>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Olli Salonen <olli.salonen@iki.fi>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-07-08 13:08, Marc Gonzalez wrote:
> Hello everyone,

*snip*

Focusing on #2...

> PROBLEM #2
> 
> The tuner (si2157) is not on the i2c5 bus, instead it is on a private
> i2c bus *behind* si2168, which routes requests to the proper client.
> For the time being, I don't know how to model this relationship in DT.
> (TODO: check i2c_slave_cb_t slave_cb in struct i2c_client)
> I have initialized si2157 in the si2168 driver, but this doesn't feel
> right. (Though it seems all(?) users pair 2168 with 2157.)
> 
> 
> It would really help if I could get some guidance from media and i2c
> people for these two issues. (I'd like to upstream the driver in time
> for 5.3)
> 
> Regards.
> 
> 
> 
> diff --git a/arch/arm64/boot/dts/qcom/apq8098-batfish.dts b/arch/arm64/boot/dts/qcom/apq8098-batfish.dts
> index 29d59ecad138..9353e62375a7 100644
> --- a/arch/arm64/boot/dts/qcom/apq8098-batfish.dts
> +++ b/arch/arm64/boot/dts/qcom/apq8098-batfish.dts
> @@ -30,6 +30,28 @@
>  	status = "ok";
>  };
>  
> +&blsp1_i2c5 {
> +	status = "ok";
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c5_default>;
> +
> +	dvb_demod: si2168@64 {
> +		compatible = "silabs,si2168";
> +		reg = <0x64>;
> +		reset-gpios = <&tlmm 84 GPIO_ACTIVE_LOW>;


In principle, I think you should be able to add something like this here:

		i2c-gate {
			#address-cells = <1>;
			#size-cells = <0>;

			tuner@60 {
				compatible = "silabs,si2157";
				reg = <0x60>;
				/* whatever else is needed */
			};
		};

But in practice, I don't know if the si2157 driver understands that or
if there is anything else that gets in the way. Totally untested...

The i2c-gate child node is examined when you call i2c_mux_add_adapter
if you have provided the correct struct device in the second argument
when you called i2c_mux_alloc (I think that is already the case). You
also need to set the I2C_MUX_GATE flag in the i2c_mux_alloc call, but
I do not see a problem with that since I think only one child adapter
is added. If it is a problem to add the I2C_MUX_GATE flag, then you
can just adjust the above i2c-gate node according to the bindings in
Documentation/devicetree/bindings/i2c/i2c-mux.txt. I.e. add this
instead of the above i2c-gate node:

		i2c-mux {
			#address-cells = <1>;
			#size-cells = <0>;

			i2c@0 {
	                        #address-cells = <1>;
        	                #size-cells = <0>;
                	        reg = <0>;

				tuner@60 {
					compatible = "silabs,si2157";
					reg = <0x60>;
					/* whatever else is needed */
				};
			};
		};

But it feels *right* to add the I2C_MUX_GATE flag, because a gate is
what you have. I think?

Cheers,
Peter

> +	};
> +};
> +
> +&tsif {
> +	demod = <&dvb_demod>;
> +};
> +
> +&i2c5_default {
> +	drive-strength = <2>;
> +	bias-disable;
> +};
> +
>  &qusb2phy {
>  	status = "ok";
>  	vdda-pll-supply = <&vreg_l12a_1p8>;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
