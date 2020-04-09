Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC281A2ED4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 07:39:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P34DOcOyY0sz/oXa62rMp1jQPAsCPgxh+plEpZ/lkPI=; b=sI+4PAyaLA4BMD
	pKGkI973cKMvisXjmQgGR42aUPCGLSDa7ghpI5sRpexspLZzO/HFhawccaZraox3BlCokQMD4H1Tv
	JzB/AmJmDJ2IYIkvV14aWHw3JxPv4gON91wESYShZuoIUTQyiPpaOsAjRkJ5M23NmoEKn32Q+oXkl
	Yq//VxOEenxSdkI1YyGZZQThZ2472jMmcn8Q3fuDp0OrhYgigDrtP1Mi6p3LXnAqp6M5zjFhzbR9T
	WWXyO8P4cPOJ+ZdmKtK2w08+5ZTmwUJ46SkKAPOsWASaEC6uA+D0fuQERdSehS0f5DQBaqTJM4VIC
	lw6PJ2Sbxosh30wFkAyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMPuW-0006gx-9s; Thu, 09 Apr 2020 05:39:32 +0000
Received: from mail-dm6nam12on2082.outbound.protection.outlook.com
 ([40.107.243.82] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMPuO-0006g9-VV
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 05:39:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=av8KWoeZp2Cif+QKdiLwtWUb7rHncJNlesgTcwEQsRCDFlULO1BICs4I+Nczwe7viAU88tFaycSOpEezXYG8QS1T44+mkPGJ7+unDFn21G9DwfrJXZ0ttRrWSrYBXSeKUwIyJd1XfA2SS/fkO+qkYxMkBSdDYFr9WAkN7+2+vCJOxTz7rknqi3nDv7kgTAZy20s7CGJ5XiNGQ86sjwj9dVORd6w9kHRZbb+33QaYmONWF2kIGgdGwnKrj1BfhDR4NwYZ5lK5gDR7rwAHgKRKq4xv0dQJq7kGztF8sSZgyRLO9MuptD04gPqoMfKvc8w8UPTxScJHakJIxGgsBO3VUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A9xaEK/87C76ykRRp7etPBrNdJP/aGkZcw1gxsXliCE=;
 b=RqZ8hIhCfRO6QyZoYyJgnOLWgnK3F63kOnfMsDpY79//EmkuiL1eV590/eqUFDjA/CCioJlkTwucneU8I9iwTEBgqXKnYvTcAJVFDSyG8brtyeTme2owV5BNGVczDur1/SmvK14L/82EIlY6GHFtqmnk5mn9KkH6UAFQVR1CMHjMd+1rJ3C6FLLvc19O+AY0Ig6sOB8/durvq4OBPipu9tHYmezb41n1mCps4A5ywLOYrg6Deofbg31LQREbByqlzAa2mVoxqZi1gFguMgvvXAmpjolj23DmEJIR19mpvk5984jPR+yElnvl6IHt5QYdqosWa3xMlkhpOFb6I4ZfdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A9xaEK/87C76ykRRp7etPBrNdJP/aGkZcw1gxsXliCE=;
 b=r2lQzTZchyuX9KM8tusa5lJUbq73RDajQd0A5HWhWoUnkgS8ZZFkHVDGpqpxi40ckGJ6w5fzh0DzfErKffAOfDmTEB35DKYTPukA5S3z/oYduxKl+xgpYt2ja9tLSyxRqscsPyZEiXq/I03LCNzDx5hm9FMDwlhenVLki9YQeH4=
Received: from SN4PR0201MB3486.namprd02.prod.outlook.com
 (2603:10b6:803:51::12) by SN4PR0201MB3549.namprd02.prod.outlook.com
 (2603:10b6:803:44::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.21; Thu, 9 Apr
 2020 05:39:18 +0000
Received: from SN4PR0201MB3486.namprd02.prod.outlook.com
 ([fe80::61b6:6bad:266b:d0da]) by SN4PR0201MB3486.namprd02.prod.outlook.com
 ([fe80::61b6:6bad:266b:d0da%5]) with mapi id 15.20.2900.015; Thu, 9 Apr 2020
 05:39:18 +0000
From: Raviteja Narayanam <rna@xilinx.com>
To: Maarten Brock <m.brock@vanmierlo.com>
Subject: RE: [PATCH] serial: uartps: Wait for tx_empty in console setup
Thread-Topic: [PATCH] serial: uartps: Wait for tx_empty in console setup
Thread-Index: AQHWDP0l3OgsBXnKvUufxZn7tcNQPqhvYOQAgADmX/A=
Date: Thu, 9 Apr 2020 05:39:18 +0000
Message-ID: <SN4PR0201MB3486FECBFEA2271F2C6D0EA9CAC10@SN4PR0201MB3486.namprd02.prod.outlook.com>
References: <1586278391-9061-1-git-send-email-raviteja.narayanam@xilinx.com>
 <396bcf8a0068fc05e70cc439a4843b61@vanmierlo.com>
In-Reply-To: <396bcf8a0068fc05e70cc439a4843b61@vanmierlo.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is ) smtp.mailfrom=rna@xilinx.com; 
x-originating-ip: [106.212.235.169]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4a76024f-5864-400c-8c38-08d7dc485929
x-ms-traffictypediagnostic: SN4PR0201MB3549:|SN4PR0201MB3549:
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN4PR0201MB3549AA4F433B32E768611F45CAC10@SN4PR0201MB3549.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0368E78B5B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN4PR0201MB3486.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(366004)(346002)(396003)(478600001)(26005)(186003)(81156014)(71200400001)(8936002)(6506007)(52536014)(9686003)(53546011)(55016002)(64756008)(66556008)(6916009)(66476007)(316002)(66446008)(5660300002)(54906003)(7696005)(81166007)(8676002)(76116006)(86362001)(2906002)(4326008)(33656002)(66946007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bOqGNC9Eh53IVVJ6PBqOH+F813uXl1hcnSrY47De9RFhMrSLYlpDYIYrW66lQ3VVyNfgZcuCoKNZS+J/VkvHmUDnpBx+dx24LoBTEtu8iuzRbTXI3IACU0Tw6ReSfuCsrQDCDwy2IRg1u5G7IJdwN/w4Sin2SlXeaMHsxs0ghClmSnssRyJHsFPHwtgQc4goIdGmY3qEpZ/x0o+tDtb6JXFauNQw+Crc3LlUYHkF5LCYHxequYFDcuiCwQihuxQyQTmNLBtezOsOJfqmJ/Ff3Mm2QDtQUmHfvOAc3g1QoP8JnFziRA6I/E8qPbCbRZtuv1e3G+3JipmMs8owqpU/Ckw0kTIwkb1JMD5Jga6pM85JIM6bqd2ZP5pbmb4/FiYELwgWod5cGzXKTSq1R0ghwaCJhnTpy3Cc76hKJzaEyvcD+b843xd+FOsgLg2INg+Z
x-ms-exchange-antispam-messagedata: ZD6Tvup16IKzhLXrNoTKkjMXCI7g2DDO0w8annylY+7mN1DNmV/f8/Ep2PDuwTQECoH9QnIg1Bc7jBv7be62bjIFwpyxrccMVGLspVMO0Zg6z4Dssf/h/Lc/lNYmb/mgk1V1j7MKYruaH6Ym6LHkBg==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a76024f-5864-400c-8c38-08d7dc485929
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 05:39:18.5886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1qEgUUZoSiOCSIt1bGY3A8RQrBUZ1bw93FRzpOSoTfebEZv6XRa+NFYUl0gATTqS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR0201MB3549
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_223925_015805_4A316E8E 
X-CRM114-Status: GOOD (  19.48  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.82 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.82 listed in wl.mailspike.net]
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
Cc: "linux-serial-owner@vger.kernel.org" <linux-serial-owner@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michal Simek <michals@xilinx.com>, git <git@xilinx.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maarten,

Thanks for the review.

> -----Original Message-----
> From: linux-serial-owner@vger.kernel.org <linux-serial-
> owner@vger.kernel.org> On Behalf Of Maarten Brock
> Sent: Wednesday, April 8, 2020 9:21 PM
> To: Raviteja Narayanam <rna@xilinx.com>
> Cc: linux-serial@vger.kernel.org; gregkh@linuxfoundation.org;
> jslaby@suse.com; Michal Simek <michals@xilinx.com>; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; git <git@xilinx.com>;
> linux-serial-owner@vger.kernel.org
> Subject: Re: [PATCH] serial: uartps: Wait for tx_empty in console setup
> 
> On 2020-04-07 18:53, Raviteja Narayanam wrote:
> > On some platforms, the log is corrupted while console is being
> > registered. It is observed that when set_termios is called, there are
> > still some bytes in the FIFO to be transmitted.
> >
> > So, wait for tx_empty inside cdns_uart_console_setup before calling
> > set_termios.
> >
> > Signed-off-by: Raviteja Narayanam <raviteja.narayanam@xilinx.com>
> > ---
> >  drivers/tty/serial/xilinx_uartps.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> >
> > diff --git a/drivers/tty/serial/xilinx_uartps.c
> > b/drivers/tty/serial/xilinx_uartps.c
> > index 6b26f76..23468ff 100644
> > --- a/drivers/tty/serial/xilinx_uartps.c
> > +++ b/drivers/tty/serial/xilinx_uartps.c
> > @@ -1260,6 +1260,8 @@ static int cdns_uart_console_setup(struct
> > console *co, char *options)
> >  	int bits = 8;
> >  	int parity = 'n';
> >  	int flow = 'n';
> > +	unsigned long time_out = jiffies + usecs_to_jiffies(TX_TIMEOUT);
> > +	int status;
> >
> >  	if (!port->membase) {
> >  		pr_debug("console on " CDNS_UART_TTY_NAME "%i not
> present\n", @@
> > -1270,6 +1272,14 @@ static int cdns_uart_console_setup(struct console
> > *co, char *options)
> >  	if (options)
> >  		uart_parse_options(options, &baud, &parity, &bits, &flow);
> >
> > +	/* Wait for tx_empty before setting up the console */
> > +	while (time_before(jiffies, time_out)) {
> > +		status = cdns_uart_tx_empty(port);
> > +		if (status == TIOCSER_TEMT)
> > +			break;
> > +		cpu_relax();
> > +	}
> > +
> >  	return uart_set_options(port, co, baud, parity, bits, flow);  }
> > #endif /* CONFIG_SERIAL_XILINX_PS_UART_CONSOLE */
> 
> You could do without the status variable. You could even combine the while
> and if conditions.
> 
> And while you're at it, you might as well also rewrite the lines
> 1236-1238 to also use cdns_uart_tx_empty() for clarity.

Will send v2, addressing these.
> 
> Maarten

Regards,
Raviteja N

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
