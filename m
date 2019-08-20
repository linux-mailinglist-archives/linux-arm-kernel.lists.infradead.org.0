Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F0D953D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 03:52:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/xLpUl0za1v8S3DfmqkiJflaM+cu7+uzSyF5HjSpkk=; b=cqdoxdfBcpWscv
	QvNva1iDDUm8wqQ45umZZi8RPKzqWp+yg88kllkCdGg3YohF8DrnwCmGDQ/i60EUSzaZbZcs9JFtW
	o7R8K0p9m3S/+rhPbYGZKLShcZfnE77YMlLBcZpUf1jX5fk2CJ+luTqu4+JU89WobPbTdgA1oHSGL
	Dh9hs9d0t3tOtfZtRCzXVHS6E/pc4cL9Kqgh7q+NzHNvqdycpSSw4PjBkol3KyTbJkbByj0Rjdd0u
	Lsi7H1MQNKLjk50biLL/IhwfxKrLjbTQXrIv6f7japBwXGGkjarQHHOOYN0h0R01Hc93xNPU4M7ws
	+9HHVvz4AM0KhGYH/wRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hztJp-0002VX-MB; Tue, 20 Aug 2019 01:52:17 +0000
Received: from mail-eopbgr820075.outbound.protection.outlook.com
 ([40.107.82.75] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hztJV-0002R6-4g
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 01:51:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ak4dIrMwIxHAQRkwI8EICZNWfaJx0uKosS/wWNNPzGgm2/bBIckHMZeLA8HQvMWkWGlzIDqOJdUXOjfX+P2gzfgXdi6KRRc6Gh0aZkREddL8CTPB1d7caOoI5RrmbUS1Mzb0IZNwT3Lr1wmC1a1zarRWbcJg9THvfCI+xL/ms8jgh+Lkx6omsLy84eoncUyiE2mxllF6jdnLcjEU9RVZm5wlhK8uyMq+OGrVVuqnOqAdNOHegXFM7E0MwqKcQqsBEOUFXHXU6xycWXCZHEd7I7zMPFv2tU+Ss36MGxOuiWsYrpnrNzvhVFn8h+ciFqrBBVAfvkgn9lIhGqU4A4fAlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bpw4V+QcHiY7OKM83+PXT+nZRYTlHkfnTY6HW4l9taQ=;
 b=dPsjYIDLIXVVKrEFiW1UcG5BVjUYZt8L6bovvYgS9npmrc+yCaRSsbR9PFZei/+XtT+6w7IHmbx+fVtBiQEYhmsWf02QsXVuuoKBE1TFUWENoHRufIzKLPeH+QegcE8kGdMEDN/Jth8MgAftENVY8wbCxfrsEWqC7NGCHDBt+zACtz/l75q1BFWEIf6qigxsmHd1/SesFeWBYbvagYmA7GtU7tiazN7R30/h4nDz3acOZnBxxItYr44VGDEntDT3KkxVipKkh1RE1NefTEgG+yXyQ3yz8d+OAnwK52hi3evB8SZgW1OwZm8+uxlMgRCfJfHHDUN/z9ODlynrl5Vksg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bpw4V+QcHiY7OKM83+PXT+nZRYTlHkfnTY6HW4l9taQ=;
 b=DkRCG5r50CL+Ht/5umrByyx7YAWRO1rNezkloYyxBflTjPm7leDLtitceZozRDlMYnhb43Odq0RV/XCdPnUxoxgOPfbY8iYn+G50nyDOjkpVcFf8nSZzjjBZxK3D3PSwMxjt4sDBp6rZs2JZcalotGfJvWxfE7N3NS/qaoNqIfM=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB3463.namprd03.prod.outlook.com (52.135.212.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Tue, 20 Aug 2019 01:51:52 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88%7]) with mapi id 15.20.2157.022; Tue, 20 Aug 2019
 01:51:52 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>
Subject: Re: [PATCH 1/4] kprobes: adjust kprobe addr for KPROBES_ON_FTRACE
Thread-Topic: [PATCH 1/4] kprobes: adjust kprobe addr for KPROBES_ON_FTRACE
Thread-Index: AQHVVoJFk8X59Zi3AUirAcI9pTWKbqcCrVAAgACWOIA=
Date: Tue, 20 Aug 2019 01:51:52 +0000
Message-ID: <20190820094041.7072d90b@xhacker.debian>
References: <20190819192422.5ed79702@xhacker.debian>
 <20190819192505.483c0bf0@xhacker.debian>
 <1566232801.derqq08wxh.naveen@linux.ibm.com>
In-Reply-To: <1566232801.derqq08wxh.naveen@linux.ibm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TY2PR01CA0059.jpnprd01.prod.outlook.com
 (2603:1096:404:10a::23) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fbe1173c-2227-4a0e-9397-08d72510f8ea
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB3463; 
x-ms-traffictypediagnostic: BYAPR03MB3463:
x-microsoft-antispam-prvs: <BYAPR03MB34636D1A445C4EC90F4A640CEDAB0@BYAPR03MB3463.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(39850400004)(136003)(346002)(376002)(199004)(189003)(43544003)(2906002)(86362001)(476003)(256004)(14444005)(6506007)(386003)(66476007)(66556008)(64756008)(66446008)(66946007)(5024004)(486006)(6436002)(9686003)(6512007)(5660300002)(53936002)(6246003)(446003)(26005)(11346002)(102836004)(186003)(7736002)(50226002)(1076003)(66066001)(6916009)(71200400001)(99286004)(81156014)(14454004)(81166006)(8936002)(305945005)(8676002)(6116002)(3846002)(7416002)(478600001)(4326008)(25786009)(229853002)(316002)(71190400001)(6486002)(76176011)(54906003)(52116002)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB3463;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3NHRwGzMrfDae1rGvWCCGz3UtVq04qqP0eF7NUNqWKCw25kugyxzJVavmEv8R8+RSon2cv8QrRB9V6n+wGs6wjH2k79R94D1c0baeolWMl8y5tzwSpfDkG57l/cwcnINPrledOmwlIUL4zSbKStDP137OBW3QAoC3Phl3G/X2gPKWQhWij1J3x3CL2/WLZFy/tbmgPp+0Hr9MyWA5+9YlSQp5JgKi1UdPYbtsJ1cokoH/o83pHp3lpEMVnBMTdb7PH2Sii0QrelwZ1XJcAQQcWnFeL0oD6bMIPNFv3+zltIakNAKRm7d5yAlmuvRhxLGWpIL6DaX+Jhyh46J8oKi1dGjO+DSuiwDgtjYDx+G/MFVaY1wDuJURQWU0yAPW/PTGFLi2CFt+Z1o46tiEcpz+3MVg1GLMaCHd7+V9/mM+ig=
x-ms-exchange-transport-forked: True
Content-ID: <AEBA496DE4C2C64AB0CBDEF3409E623E@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbe1173c-2227-4a0e-9397-08d72510f8ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 01:51:52.4470 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ryGGrf5vJoBX2+T14QlbD6gaGoogsIfqlnGXoxPB2Fpj7zVA4JAXoJ+PpnjLGISvwsZKSOM6219izaDy7Q4kIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3463
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_185158_061301_63F1AF85 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Masami Hiramatsu <mhiramat@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Steven Rostedt <rostedt@goodmis.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 19 Aug 2019 22:13:02 +0530 "Naveen N. Rao"  wrote:

> CAUTION: Email originated externally, do not click links or open attachments unless you recognize the sender and know the content is safe.
> 
> 
> Jisheng Zhang wrote:
> > For KPROBES_ON_FTRACE case, we need to adjust the kprobe's addr
> > correspondingly.
> >
> > Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> > ---
> >  kernel/kprobes.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/kernel/kprobes.c b/kernel/kprobes.c
> > index 9873fc627d61..f8400753a8a9 100644
> > --- a/kernel/kprobes.c
> > +++ b/kernel/kprobes.c
> > @@ -1560,6 +1560,9 @@ int register_kprobe(struct kprobe *p)
> >       addr = kprobe_addr(p);
> >       if (IS_ERR(addr))
> >               return PTR_ERR(addr);
> > +#ifdef CONFIG_KPROBES_ON_FTRACE
> > +     addr = (kprobe_opcode_t *)ftrace_call_adjust((unsigned long)addr);
> > +#endif
> >       p->addr = addr;  
> 
> I'm not sure what this is achieving, but looks wrong to me.

Indeed, I didn't take care of non-ftrace addr when KPROBES_ON_FTRACE, will
update in next version.

thanks

> 
> If you intend to have kprobes default to using ftrace entry for probing
> functions, consider over-riding kprobe_lookup_name() -- see powerpc
> variant for example.
> 
> 
> - Naveen
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
